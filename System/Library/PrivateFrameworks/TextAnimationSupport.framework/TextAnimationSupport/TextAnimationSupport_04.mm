void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized static Text.Effect.Markers.MarkerType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    return a4 & (a1 == a3);
  }

  if (a4)
  {
    return 0;
  }

  _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(a1, a3);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = Dictionary<>.underlineStyle.getter(a1);
  v10 = v9;
  v11 = Dictionary<>.underlineStyle.getter(a3);
  if (v10)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v14 = MEMORY[0x1E69DB650];
    v15 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB650]);
    v16 = Dictionary<>.foregroundColor.getter(a3, v14);
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_19;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      goto LABEL_21;
    }

    v19 = MEMORY[0x1E69DB648];
    v15 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB648]);
    v20 = Dictionary<>.foregroundColor.getter(a3, v19);
    v17 = v20;
    if (v15)
    {
      if (v20)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
LABEL_24:
          v22 = MEMORY[0x1E69DB750];
          v23 = Dictionary<>.foregroundColor.getter(a1, MEMORY[0x1E69DB750]);
          v24 = Dictionary<>.foregroundColor.getter(a3, v22);
          v25 = v24;
          if (v23)
          {
            if (v24)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
              v26 = static NSObject.== infix(_:_:)();

              return v26 & 1;
            }
          }

          else
          {
            if (!v24)
            {
              return 1;
            }
          }
        }

        return 0;
      }

LABEL_19:

      return 0;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_21:

    return 0;
  }

  v13 = v11;
  result = 0;
  if ((v12 & 1) == 0 && v8 == v13)
  {
    goto LABEL_10;
  }

  return result;
}

double outlined copy of Text.Effect.Markers.MarkerType(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void type metadata accessor for RangeSet<Int><>.IndexSequence(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Int and conformance Int(0, a2, a3);
    v7 = a3(a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6570], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<Text.Effect.Markers>(0, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines, &type metadata for Text.Effect.RenderSegmentation.StaticLines, MEMORY[0x1E69E6CF0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines);
  }

  return result;
}

double outlined consume of Text.Effect.Markers.MarkerType(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Range<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E66A8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Text.Effect.MarkerLayoutInfo.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for Text.Effect.MarkerLayoutInfo.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Markers.Marker(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Markers.Marker(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Path?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>)
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(255, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>);
    }
  }
}

unint64_t type metadata accessor for (_:_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<JitterTextEffect>, lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect, &type metadata for JitterTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:_:);
  if (!lazy cache variable for type metadata for (_:_:_:))
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>, lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect, &type metadata for ScaleRippleTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:_:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect;
  if (!lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplodeTextEffect and conformance ExplodeTextEffect);
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect;
  if (!lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JitterTextEffect and conformance JitterTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Effect.Configuration<BigTextEffect>.StyleModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, a3, a4, a5, type metadata accessor for Text.Effect.Configuration.StyleModifier);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect;
  if (!lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect;
  if (!lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SomersaultTextEffect and conformance SomersaultTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect;
  if (!lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect and conformance BloomTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect;
  if (!lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect and conformance SmallTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect;
  if (!lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect and conformance BigTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect;
  if (!lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BounceTextEffect and conformance BounceTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect;
  if (!lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquishTextEffect and conformance SquishTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect;
  if (!lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StretchTextEffect and conformance StretchTextEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect;
  if (!lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.BaseContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.BaseContent>)
  {
    type metadata accessor for Text.Effect.BaseContent(255);
    lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent(&lazy protocol witness table cache variable for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent, type metadata accessor for Text.Effect.BaseContent, &protocol conformance descriptor for Text.Effect.BaseContent);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.BaseContent>);
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.Markers.MarkerType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Markers.MarkerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo;
  if (!lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.MarkerLayoutInfo> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, a2, lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo, &type metadata for Text.Effect.MarkerLayoutInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.Markers>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.MarkerLayoutInfo> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Slice<Text.Effect.MarkerLayoutInfo>, lazy protocol witness table accessor for type Text.Effect.MarkerLayoutInfo and conformance Text.Effect.MarkerLayoutInfo, &type metadata for Text.Effect.MarkerLayoutInfo, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.RenderSegmentation.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.OnOffAnimatorPhase and conformance Text.Effect.OnOffAnimatorPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NoTextEffectState and conformance NoTextEffectState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState;
  if (!lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState;
  if (!lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoTextEffectState and conformance NoTextEffectState);
  }

  return result;
}

uint64_t closure #1 in GradientForegroundTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Color.RGBColorSpace();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;

  GraphicsContext.opacity.setter();
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) init];
  LODWORD(v10) = *MEMORY[0x1E69C7138];
  LODWORD(v11) = -1.0;
  LODWORD(v12) = -1.0;
  [v9 addConditionWithFillColor:1 colorSpace:{v11, v12, 0.0, v10}];
  GraphicsContext.drawingState.getter();
  RBDrawingStateAddPredicateStyle();
  (*(v6 + 104))(v8, *MEMORY[0x1E69814C8], v5);
  Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
  v17 = *(a2 + 8);
  v18 = *a2;
  v19 = *(a2 + 32);
  v29[0] = *(a2 + 16);
  v29[1] = v19;
  v29[2] = *(a2 + 48);
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = v13 | (v14 << 32);
    v22 = v15 | (v16 << 32);
    v23 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v23 + 72);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v29, v21, v22, 0, &v28, v18);
      v24 += v25;
      --v20;
    }

    while (v20);
  }
}

unint64_t instantiation function for generic protocol witness table for GradientForegroundTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect;
  if (!lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect;
  if (!lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect);
  }

  return result;
}

uint64_t specialized GradientForegroundTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47 = type metadata accessor for GraphicsContext.Shading();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v14 = *(a1 + 32);
  v50[0] = *(a1 + 16);
  v50[1] = v14;
  v50[2] = *(a1 + 48);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v19 = *(v13 + 16);
  if (v19)
  {
    v20 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v22 = *(v13 + 16);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v20, v12);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v50);
      v57.origin.x = v23;
      v57.origin.y = v24;
      v57.size.width = v25;
      v57.size.height = v26;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v52 = CGRectUnion(v51, v57);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      outlined destroy of Text.Effect.ResolvedDrawing.Operation(v12);
      v20 += v21;
      --v22;
    }

    while (v22);
  }

  if (*(a2 + 64) && (type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>(0, v9, v10), (v27 = swift_dynamicCastClass()) != 0))
  {
    v28 = *(v27 + 16);
    if (!*(a2 + 80))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v28 = 0;
    if (!*(a2 + 80))
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>(0, v9, v10);
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v28 == v30)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_12:
  if (v28)
  {
    LOBYTE(v30) = 0;
LABEL_14:
    if ((*(a2 + 56) & 0xFE) == 2)
    {
      v31 = *(a2 + 48);
      v32 = *(a2 + 24) - *(a2 + 16);
      if (v32 >= 0.0)
      {
        v37 = v32 / v31;
        v34 = 0.0;
        if (v37 >= 0.0)
        {
          if (v37 <= 1.0)
          {
            v34 = v37;
          }

          else
          {
            v34 = 1.0;
          }
        }
      }

      else
      {
        v33 = 0.0;
        v34 = 0.0 / v31;
        if (0.0 / v31 < 0.0 || (v33 = 1.0, v34 > 1.0))
        {
          v35 = 0.0;
          if (v30)
          {
LABEL_30:
            v38 = v35 + v33 * 0.5 + v35 + v33 * 0.5 + -1.0;
            v36 = 1.0 - v38 * v38;
            if (!v19)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

LABEL_29:
          v35 = 0.5;
          goto LABEL_30;
        }
      }

      v35 = 0.0;
      v33 = v34;
      if (v30)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_20:
    v36 = 1.0;
    if (v30)
    {
      goto LABEL_22;
    }
  }

  v36 = 0.0;
LABEL_22:
  if (!v19)
  {
    goto LABEL_33;
  }

LABEL_31:
  v39 = *a1;
  v40 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v41 = *(v8 + 72);
  do
  {
    Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v50, 0, 0, 1, a3, v39);
    v40 += v41;
    --v19;
  }

  while (v19);
LABEL_33:
  v48 = *a3;
  MEMORY[0x1EEE9AC00](v48);
  *(&v45 - 2) = v36;
  *(&v45 - 1) = a1;

  GraphicsContext.clipToLayer(opacity:options:content:)();
  Path.init(_:)();
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_195CC8D70;
  *(v42 + 32) = static Color.red.getter();
  *(v42 + 40) = static Color.green.getter();
  MEMORY[0x19A8BD450](v42);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  CGRectGetMinX(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  CGRectGetMinY(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  CGRectGetMaxX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  CGRectGetMaxY(v56);
  v43 = v45;
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v49);
  (*(v46 + 8))(v43, v47);
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<Color>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Color>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>);
    }
  }
}

void type metadata accessor for Text.Effect.ConcretePhase<GradientForegroundTextEffect>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for Text.Effect.ConcretePhase<GradientForegroundTextEffect>)
  {
    v4 = lazy protocol witness table accessor for type GradientForegroundTextEffect and conformance GradientForegroundTextEffect(0, a2, a3);
    v6 = type metadata accessor for Text.Effect.ConcretePhase(a1, &type metadata for GradientForegroundTextEffect, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GradientForegroundTextEffect>);
    }
  }
}

uint64_t Text.Effect.ClusterTransformMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(result), (v7 & 1) == 0))
  {
    v9 = 1;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    goto LABEL_7;
  }

  v8 = *(*(a3 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a2 + 16))
  {
    v9 = 0;
    v10 = (a2 + (v8 << 6));
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
LABEL_7:
    *a4 = v11;
    *(a4 + 16) = v12;
    *(a4 + 32) = v13;
    *(a4 + 48) = v14;
    *(a4 + 64) = v9;
    return result;
  }

  __break(1u);
  return result;
}

char *specialized static Text.Effect.ClusterTransformMap.byWords(fragment:)(uint64_t a1)
{
  v94 = type metadata accessor for Text.Layout.Cluster();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v77 - v6;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v77 - v12;
  v80 = a1;
  v14 = *(a1 + 24);
  v15 = *(v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString);
  (*(v5 + 16))(v7, v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v4, v11);
  v16 = v15;
  RangeSet.ranges.getter();
  (*(v5 + 8))(v7, v4);
  if (RangeSet.Ranges.count.getter() == 1)
  {
    RangeSet.Ranges.subscript.getter();
    v17 = *&v99[0];
    RangeSet.Ranges.subscript.getter();
    v18 = v98 - v97;
    if (__OFSUB__(v98, v97))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v18 = 0;
    v17 = -1;
  }

  v19 = CFAttributedStringGetString(v16);
  if (!v19)
  {
    goto LABEL_80;
  }

  v20 = v19;
  v102.location = v17;
  v102.length = v18;
  v21 = specialized Text.Effect.Tokenizer.init(_:range:)(v19, v102);

  v22 = *(v21 + 2);
  if (v22)
  {
    v23 = *(v14 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    v24 = *(v23 + 16);
    v79 = v21 + 32;
    v91 = v90 + 8;
    v92 = v90 + 16;
    v96 = v23;

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC8];
    v28 = v22;
    v81 = v21;
    v78 = v22;
    v83 = v24;
    do
    {
      if (v25 >= v28)
      {
        goto LABEL_73;
      }

      if (v25 == v22)
      {
        goto LABEL_74;
      }

      if (v24)
      {
        v85 = v27;
        v84 = v25;
        v29 = &v79[16 * v25];
        v30 = 0;
        v32 = *v29;
        v31 = *(v29 + 1);
        *&v89 = v32;
        v87 = v31;
        v82 = v26;
        v86 = *(v26 + 2);
        *&v95 = v96 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v33 = v24;
        do
        {
          v34 = v30 + (v33 >> 1);
          if (__OFADD__(v30, v33 >> 1))
          {
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
            __break(1u);
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
            goto LABEL_79;
          }

          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v34 >= *(v96 + 16))
          {
            goto LABEL_65;
          }

          v35 = v90;
          v36 = *(v90 + 72);
          v37 = v94;
          v38 = *(v90 + 16);
          v39 = v93;
          v38(v93, v95 + v36 * v34, v94);
          v40 = Text.Layout.Cluster.characterRange.getter();
          v41 = *(v35 + 8);
          v41(v39, v37);
          if (v40 >= v89)
          {
            v33 >>= 1;
          }

          else
          {
            v33 += ~(v33 >> 1);
          }

          if (v40 < v89)
          {
            v30 = v34 + 1;
          }
        }

        while (v33 > 0);
        v42 = 0;
        v43 = v83;
        v88 = v30;
        do
        {
          v44 = v42 + (v43 >> 1);
          if (__OFADD__(v42, v43 >> 1))
          {
            goto LABEL_66;
          }

          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          if (v44 >= *(v96 + 16))
          {
            goto LABEL_68;
          }

          v45 = v94;
          v46 = v93;
          v38(v93, v95 + v44 * v36, v94);
          v47 = Text.Layout.Cluster.characterRange.getter();
          v48 = v45;
          v49 = v88;
          v41(v46, v48);
          if (v47 >= v87)
          {
            v43 >>= 1;
          }

          else
          {
            v43 += ~(v43 >> 1);
          }

          if (v47 < v87)
          {
            v42 = v44 + 1;
          }
        }

        while (v43 > 0);
        v27 = v85;
        if (v49 >= v42)
        {
          v21 = v81;
          v22 = v78;
          v26 = v82;
          v24 = v83;
          v25 = v84;
        }

        else
        {
          v50 = *(v80 + 48);
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          v21 = v81;
          v22 = v78;
          v24 = v83;
          v25 = v84;
          if (v51)
          {
            goto LABEL_75;
          }

          v53 = v42 + v50;
          if (__OFADD__(v42, v50))
          {
            goto LABEL_76;
          }

          if (v53 < v52)
          {
            goto LABEL_77;
          }

          v54 = v42 + v50;
          Text.Effect.BaseFragment.typographicBounds(for:)(v52, v53, v99);
          v89 = v99[1];
          v95 = v99[0];
          v55 = v100;
          v56 = v101;
          v26 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          }

          v58 = *(v26 + 2);
          v57 = *(v26 + 3);
          v27 = v85;
          if (v58 >= v57 >> 1)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v26);
            v59 = v54;
            v27 = v85;
            v26 = v75;
          }

          else
          {
            v59 = v54;
          }

          *(v26 + 2) = v58 + 1;
          v60 = &v26[64 * v58];
          *(v60 + 4) = v52;
          *(v60 + 5) = v59;
          v61 = v89;
          *(v60 + 3) = v95;
          *(v60 + 4) = v61;
          *(v60 + 10) = v55;
          *(v60 + 11) = v56;
          if (__OFSUB__(v59, v52))
          {
            goto LABEL_78;
          }

          if (v59 != v52)
          {
            v62 = v42 - v88;
            while (1)
            {
              if (v52 >= v59)
              {
                goto LABEL_69;
              }

              v63 = v27;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v97 = v63;
              v66 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
              v67 = v63[2];
              v68 = (v65 & 1) == 0;
              v69 = v67 + v68;
              if (__OFADD__(v67, v68))
              {
                goto LABEL_70;
              }

              v70 = v65;
              if (v63[3] >= v69)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v27 = v97;
                  if ((v65 & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v27 = v97;
                  if ((v70 & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
                v71 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
                if ((v70 & 1) != (v72 & 1))
                {
                  goto LABEL_81;
                }

                v66 = v71;
                v27 = v97;
                if ((v70 & 1) == 0)
                {
LABEL_54:
                  v27[(v66 >> 6) + 8] |= 1 << v66;
                  *(v27[6] + 8 * v66) = v52;
                  *(v27[7] + 8 * v66) = v86;
                  v73 = v27[2];
                  v51 = __OFADD__(v73, 1);
                  v74 = v73 + 1;
                  if (v51)
                  {
                    goto LABEL_72;
                  }

                  v27[2] = v74;
                  goto LABEL_56;
                }
              }

              *(v27[7] + 8 * v66) = v86;
LABEL_56:
              if (__OFSUB__(v54, v52 + 1))
              {
                goto LABEL_71;
              }

              v59 = v54;
              ++v52;
              if (!--v62)
              {
                v25 = v84;
                v21 = v81;
                break;
              }
            }
          }
        }
      }

      ++v25;
      v28 = *(v21 + 2);
    }

    while (v25 != v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v26;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterTransformMap.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterTransformMap.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterTransformMap(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterTransformMap(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EditKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditKind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

Swift::Int Edit<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Edit<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for Edit(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((((v6 + 1) | v6) + ((v7 + v6) & ~v6) + v7) & ~v6) + ((v7 + v6) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v16 = *a1;
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

uint64_t getEnumTagSinglePayload for EditKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for EditKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EditKind and conformance EditKind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EditKind and conformance EditKind;
  if (!lazy protocol witness table cache variable for type EditKind and conformance EditKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditKind and conformance EditKind);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Edit<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void one-time initialization function for swiftUI()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x19A8BD5F0](0xD000000000000011, 0x8000000195CDF100);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.swiftUI = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StretchTextEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StretchTextEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DefaultAnimatorPhase and conformance Text.Effect.DefaultAnimatorPhase);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = type metadata accessor for Text.Effect.DrawableContent;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - v6);
  type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v7, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  v11 = *v7;
  v12 = v7[1];
  v13 = v7[2];
  swift_beginAccess();
  if (*(*(v11 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v14 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v7, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    v15 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    swift_beginAccess();
    v18 = *(v15 + 48);
    if (*(v18 + 16))
    {
      v4 = 0;
      do
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        if (*(v21 + 16) == v4)
        {
          goto LABEL_21;
        }

        swift_beginAccess();
        v22 = *(v15 + 48);
        v23 = *(v22 + 16);

        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = *(*(v22 + 56) + 16 * v24);
        swift_endAccess();
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v27 = *(v26 + 32 + 8 * v4);
        if (v4)
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(*(v26 + 32 + 8 * v28) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v31 = __OFADD__(v29, v30);
            v29 += v30;
            if (v31)
            {
              break;
            }

            if (v4 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          swift_endAccess();
          __break(1u);
LABEL_26:
          swift_endAccess();
          __break(1u);
          goto LABEL_27;
        }

LABEL_14:
        swift_beginAccess();
        v32 = *(*(v15 + 48) + 16);

        if (!v32)
        {
          goto LABEL_25;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        swift_endAccess();
        swift_beginAccess();
        v34 = *(v15 + 48);
        if (!*(v34 + 16))
        {
          goto LABEL_26;
        }

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

        v37 = *(*(v34 + 56) + 16 * v35);
        swift_endAccess();
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_24;
        }

        ++v4;
        v38 = (v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
        Width = CGRectGetWidth(*(v27 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
        v40 = CGRectGetWidth(*v38);

        a2 = a2 + Width / v40;
        swift_beginAccess();
        v18 = *(v15 + 48);
      }

      while (*(v18 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_21:
    *(v10 + *(v43 + 36)) = v4;
    return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v10, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>);
  }

  else
  {
LABEL_27:
    swift_endAccess();
    __break(1u);
LABEL_28:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  v4 = type metadata accessor for FragmentRangeSequence(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FragmentRangeSequence.Iterator(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  outlined init with copy of FragmentRangeSequence.Iterator(a1, v7, type metadata accessor for FragmentRangeSequence);
  v15 = *(v5 + 32);
  v16 = &v7[*(v5 + 28)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v20 = *&v7[v15];
  v19 = *&v7[v15 + 8];
  outlined init with take of Text.Effect.Timing.GlyphTiming(v7, v14, type metadata accessor for Text.Effect.BaseContent);
  v21 = &v14[v9[7]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v14[v9[8]];
  v56 = v14;
  v57 = v20;
  *v22 = v20;
  *(v22 + 1) = v19;
  v54 = v19;
  v55 = v17;
  v23 = &v14[v9[9]];
  *v23 = v17;
  *(v23 + 1) = v18;
  while (1)
  {
    if (v17 >= v57)
    {
      if (__OFSUB__(v57, v17))
      {
        goto LABEL_53;
      }

      if (v57 != v17 || v18 >= v54)
      {
        return outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v56, type metadata accessor for FragmentRangeSequence.Iterator);
      }
    }

    outlined init with copy of FragmentRangeSequence.Iterator(v56, v11, type metadata accessor for FragmentRangeSequence.Iterator);
    v24 = *v11;
    v25 = v11[1];
    v26 = v11[2];
    swift_beginAccess();
    v27 = *(v24 + 48);
    v28 = *(v27 + 16);

    if (!v28)
    {
      goto LABEL_57;
    }

    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
    if ((v30 & 1) == 0)
    {
      goto LABEL_57;
    }

    v31 = *(*(v27 + 56) + 16 * v29);
    swift_endAccess();
    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v31 + 16))
    {
      goto LABEL_44;
    }

    v32 = *(v31 + 32 + 8 * v17);
    if (v17)
    {
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v35 = *(*(*(v31 + 32 + 8 * v33) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v43 = __OFADD__(v34, v35);
        v34 += v35;
        if (v43)
        {
          break;
        }

        if (__OFSUB__(v17, ++v33))
        {
          goto LABEL_42;
        }

        if (v17 == v33)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      break;
    }

    v34 = 0;
LABEL_17:

    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v11, type metadata accessor for Text.Effect.BaseContent);
    if (__OFSUB__(v57, v17))
    {
      goto LABEL_45;
    }

    if (v57 == v17)
    {
      v36 = v54;
      if (v54 < v18)
      {
        goto LABEL_55;
      }

      v37 = v23;
      v38 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
      v39 = *(v38 + 16);
      v40 = v34 + v39;
      v41 = __OFADD__(v34, v39);
    }

    else
    {
      v38 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
      v42 = *(v38 + 16);
      v43 = __OFADD__(v34, v42);
      v40 = v34 + v42;
      v41 = __OFADD__(v34, v42);
      if (v43)
      {
        goto LABEL_54;
      }

      v44 = v40 < v34 || v40 < v18;
      if (v44)
      {
        goto LABEL_56;
      }

      v37 = v23;
      v36 = v40;
    }

    if (v41)
    {
      goto LABEL_46;
    }

    if (v40 < v34)
    {
      goto LABEL_47;
    }

    *(v37 + 1) = v40;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_48;
    }

    *v37 = ++v17;
    if (__OFSUB__(v36, v18))
    {
      goto LABEL_49;
    }

    v45 = *(v38 + 16);
    v43 = __OFADD__(v34, v45);
    v46 = v34 + v45;
    if (v43)
    {
      goto LABEL_50;
    }

    v47 = __OFSUB__(v46, v34);
    v44 = v46 < v34;
    v48 = v46 - v34;
    if (v44)
    {
      goto LABEL_51;
    }

    if (v47)
    {
      goto LABEL_52;
    }

    v49 = (v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
    v50 = (v36 - v18) / v48 * CGRectGetWidth(*(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
    Width = CGRectGetWidth(*v49);

    v3 = v3 + v50 / Width;
    v18 = v40;
  }

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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for spring()
{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static StretchTextEffect.spring);
  __swift_project_value_buffer(v0, static StretchTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BloomTextEffect.spring);
  __swift_project_value_buffer(v0, static BloomTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SquishTextEffect.spring);
  __swift_project_value_buffer(v0, static SquishTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static ShakeVerticalTextEffect.spring);
  __swift_project_value_buffer(v0, static ShakeVerticalTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SomersaultTextEffect.spring);
  __swift_project_value_buffer(v0, static SomersaultTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BounceTextEffect.spring);
  __swift_project_value_buffer(v0, static BounceTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static BigTextEffect.spring);
  __swift_project_value_buffer(v0, static BigTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static SmallTextEffect.spring);
  __swift_project_value_buffer(v0, static SmallTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static ShakeHorizontalTextEffect.spring);
  __swift_project_value_buffer(v0, static ShakeHorizontalTextEffect.spring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

void _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD07StretchcF0V_Tt3g5Tm(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t (*a10)(void, __n128), double (*a11)(uint64_t, double), void (*a12)(__int128 *__return_ptr, _OWORD *), uint64_t (*a13)(void), double (*a14)(uint64_t, double))
{
  LODWORD(v143) = a3;
  v142 = a2;
  v122 = a9;
  v140 = a11;
  v141 = a12;
  v20 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v130 = (&v118 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v129 = (&v118 - v27);
  v126 = a6;
  v127 = a7;
  v128 = a8;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a6, a7, a8, type metadata accessor for Text.Effect.DrawableContent);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v124 = (&v118 - v30);
  v123 = a10(0, v29);
  MEMORY[0x1EEE9AC00](v123);
  v131 = (&v118 - v31);
  v32 = 0.0;
  v33 = v140(a5, 0.0);
  v34 = Text.Effect.ChunkingFunction.chunk(_:)(a5, *(a1 + 120), *(a1 + 128), *(a1 + 136));
  v121 = a1;
  v145 = a1;
  v146 = a4;
  v125 = a5;
  v147 = a5;
  v120 = v34;
  v138 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO15ChunkCollectionV_AK6TimingV0J033_363E424B8D24CACCD5AAF4ADF34E118BLLVs5NeverOTg5(v141, v144, v34);
  v35 = *(v138 + 16);
  if (!v35)
  {
    goto LABEL_9;
  }

  if (v35 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 & 0x7FFFFFFFFFFFFFFELL;
    v37 = (v138 + 88);
    v38 = v35 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v39 = *(v37 - 4);
      v40 = *v37;
      v37 += 8;
      v32 = v32 + v39 + v40;
      v38 -= 2;
    }

    while (v38);
    if (v35 == v36)
    {
      goto LABEL_9;
    }
  }

  v41 = v35 - v36;
  v42 = (v138 + 32 * v36 + 56);
  do
  {
    v43 = *v42;
    v42 += 4;
    v32 = v32 + v43;
    --v41;
  }

  while (v41);
LABEL_9:
  if (v143)
  {
    v44 = v32;
  }

  else
  {
    v44 = *&v142;
  }

  Spring.settlingDuration.getter();
  v134 = v45;
  if (v35)
  {
    v119 = v33;
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v137 = v138 + 32;
    v48 = 0.0;
    v49 = MEMORY[0x1E69E7CC0];
    v132 = v32 / v44;
    v133 = v44;
    v135 = v35;
    v136 = a4;
    while (v46 < *(v138 + 16))
    {
      v141 = v46;
      v50 = v137 + 32 * v46;
      v51 = *(*v50 + 16);
      v52 = *(v49 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_87;
      }

      v54 = *(v50 + 8);
      v55 = *(v50 + 16);
      v56 = *(v50 + 24);
      v143 = *v50;

      v142 = v54;

      v140 = v55;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v53 > *(v49 + 3) >> 1)
      {
        if (v52 <= v53)
        {
          v58 = v52 + v51;
        }

        else
        {
          v58 = v52;
        }

        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v58, 1, v49);
        v49 = isUniquelyReferenced_nonNull_native;
      }

      v59 = v142;
      a4 = v136;
      if (*(v143 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v51)
        {
          goto LABEL_89;
        }

        isUniquelyReferenced_nonNull_native = swift_arrayInitWithCopy();
        if (v51)
        {
          v60 = *(v49 + 2);
          v61 = __OFADD__(v60, v51);
          v62 = v60 + v51;
          if (v61)
          {
            goto LABEL_100;
          }

          *(v49 + 2) = v62;
        }
      }

      else if (v51)
      {
        goto LABEL_88;
      }

      v63 = *(v59 + 2);
      if (v63)
      {
        v139 = v49;
        v64 = v132 * v56;
        v65 = v132 * v48;
        v66 = (v59 + 40);
        do
        {
          v67 = *(v66 - 1);
          v68 = *v66;
          MEMORY[0x19A8BD3C0](isUniquelyReferenced_nonNull_native);
          Spring.dampingRatio.getter();
          Spring.init(response:dampingRatio:)();
          *v23 = v65 + v64 * v67;
          v23[1] = v64 * v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          }

          v70 = v47[2];
          v69 = v47[3];
          if (v70 >= v69 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v47);
          }

          v47[2] = v70 + 1;
          isUniquelyReferenced_nonNull_native = outlined init with take of Text.Effect.Timing.GlyphTiming(v23, v47 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v70, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          v66 += 2;
          --v63;
        }

        while (v63);

        v44 = v133;
        v49 = v139;
      }

      else
      {
      }

      v46 = v141 + 1;

      v48 = v48 + v56;
      if (v46 == v135)
      {
        v139 = v49;

        v33 = v119;
        goto LABEL_40;
      }
    }

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
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v47 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v71 = v124;
  v72 = v126;
  v73 = v127;
  v74 = v128;
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v125, v124, v126, v127, v128, type metadata accessor for Text.Effect.DrawableContent);
  v75 = v131;
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v71, v131, v72, v73, v74, type metadata accessor for Text.Effect.DrawableContent);
  v77 = *v71;
  v76 = v71[1];
  v78 = v71[2];
  swift_beginAccess();
  if (!*(*(v77 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v76, v78), (v79 & 1) == 0))
  {
LABEL_102:
    swift_endAccess();
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v80 = *(v123 + 36);
  swift_endAccess();
  outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v71, v126, v127, v128, type metadata accessor for Text.Effect.DrawableContent);
  *(v80 + v75) = 0;
  v81 = *v75;
  v82 = v75[1];
  v143 = v75[2];
  v83 = Text.Effect.Keyframes.subscript.getter(v82, v143, v81);
  if (!v83)
  {
    goto LABEL_103;
  }

  v84 = *(v83 + 16);

  if (v84)
  {
    v135 = v80;
    v85 = 0;
    v140 = a14;
    *&v86 = MEMORY[0x1E69E7CC0];
    v138 = v81;
    v137 = v82;
    while (1)
    {

      v87 = v143;

      v88 = Text.Effect.Keyframes.subscript.getter(v82, v87, v81);
      if (!v88)
      {
        goto LABEL_104;
      }

      if ((v85 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (v85 >= *(v88 + 16))
      {
        goto LABEL_91;
      }

      v89 = (v88 + 32);
      v90 = *(v88 + 32 + 8 * v85);
      v91 = 0;
      if (v85)
      {
        break;
      }

LABEL_52:

      v94 = (v140)(v85);
      v95 = *(*(v90 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v96 = v91 + v95;
      if (__OFADD__(v91, v95))
      {
        goto LABEL_92;
      }

      if (v96 < v91)
      {
        goto LABEL_93;
      }

      if (__OFSUB__(v96, v91))
      {
        goto LABEL_94;
      }

      if (v96 == v91)
      {
        goto LABEL_95;
      }

      v141 = v90;
      v142 = v86;
      if (v91 >= v96)
      {
        goto LABEL_82;
      }

      if (v91 < 0)
      {
        goto LABEL_96;
      }

      if (v91 >= v47[2])
      {
        goto LABEL_97;
      }

      v85 = v94;
      v97 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v98 = *(v21 + 72);
      v99 = v130;
      outlined init with copy of FragmentRangeSequence.Iterator(v47 + v97 + v98 * v91, v130, type metadata accessor for Text.Effect.Timing.GlyphTiming);
      v101 = *v99;
      v100 = v99[1];
      outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v99, type metadata accessor for Text.Effect.Timing.GlyphTiming);
      v102 = v101 + v100;
      if (v101 > v101 + v100)
      {
        goto LABEL_98;
      }

      v103 = v91 + 1;
      if (v96 != v103)
      {
        v104 = v95 - 1;
        v105 = v47 + v97 + v98 * v103;
        v106 = v129;
        while (v103 < v96)
        {
          if (v103 >= v47[2])
          {
            goto LABEL_83;
          }

          outlined init with copy of FragmentRangeSequence.Iterator(v105, v106, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          v107 = *v106;
          v108 = v106[1];
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v106, type metadata accessor for Text.Effect.Timing.GlyphTiming);
          if (v107 > v107 + v108)
          {
            goto LABEL_84;
          }

          if (v107 < v101)
          {
            v101 = v107;
          }

          if (v102 <= v107 + v108)
          {
            v102 = v107 + v108;
          }

          if (v101 > v102)
          {
            goto LABEL_85;
          }

          v105 += v98;
          ++v103;
          if (!--v104)
          {
            goto LABEL_71;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_71:
      v86 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v86 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86));
      }

      v75 = v131;
      v81 = v138;
      v110 = *(v86 + 2);
      v109 = *(v86 + 3);
      if (v110 >= v109 >> 1)
      {
        *&v86 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v86));
      }

      v111 = v143;

      *(v86 + 2) = v110 + 1;
      v112 = &v86[16 * v110];
      *(v112 + 4) = v101;
      *(v112 + 5) = v102;
      v82 = v137;
      v113 = Text.Effect.Keyframes.subscript.getter(v137, v111, v81);
      if (!v113)
      {
        goto LABEL_101;
      }

      v114 = *(v113 + 16);

      if (__OFSUB__(v114, v85))
      {
        goto LABEL_99;
      }

      if (v114 == v85)
      {
        outlined destroy of Text.Effect.Timing.Configuration(v121);
        *(v135 + v75) = v85;
        goto LABEL_80;
      }
    }

    v92 = v85;
    while (1)
    {
      v93 = *(*(*v89 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v61 = __OFADD__(v91, v93);
      v91 += v93;
      if (v61)
      {
        break;
      }

      ++v89;
      if (!--v92)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  outlined destroy of Text.Effect.Timing.Configuration(v121);
  *&v86 = MEMORY[0x1E69E7CC0];
LABEL_80:
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v75, a13);

  outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v125, v126, v127, v128, type metadata accessor for Text.Effect.DrawableContent);
  v115 = type metadata accessor for Spring();
  (*(*(v115 - 8) + 8))(a4, v115);

  v116 = v122;
  *v122 = v44;
  v116[1] = v33;
  *(v116 + 2) = v139;
  v116[3] = *&v86;
  v117 = v120;
  *(v116 + 4) = v47;
  *(v116 + 5) = v117;
}

uint64_t closure #1 in StretchTextEffect.configuration(_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a2, v27, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD07StretchcF0V_Tt2g5(a2, a3, 1, v27);
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v13 = swift_allocObject();
  v14 = *(a4 + 16);
  *(v13 + 16) = *a4;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a4 + 32);
  *(v13 + 56) = *a1;
  *(v13 + 72) = v9;
  *(v13 + 80) = v10;
  *(v13 + 88) = v11;
  *(v13 + 96) = v12;
  v15 = swift_allocObject();
  v16 = v27[3];
  *(v15 + 48) = v27[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v27[4];
  v17 = v28;
  v18 = v27[1];
  *(v15 + 16) = v27[0];
  *(v15 + 32) = v18;
  *(v15 + 96) = v17;
  *(v15 + 104) = partial apply for closure #1 in closure #1 in StretchTextEffect.configuration(_:);
  *(v15 + 112) = v13;
  v19 = MEMORY[0x1E69E6F90];
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v15;
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v19);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_195CC8D00;
  *(v21 + 32) = inited;
  v22 = MEMORY[0x1E69E62F8];
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v29, v26, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E62F8], type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v30, v26, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment, v22, type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v31, v26, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming], type metadata accessor for Text.Effect.Timing.GlyphTiming, MEMORY[0x1E69E62F8], type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(&v32, v26);
  specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v21);
  v24 = v23;
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v21 + 32);
  return v24;
}

void closure #1 in closure #1 in StretchTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v74 - v12;
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v74 - v22;
  v24 = *(a2 + 64);
  v25 = *(a2 + 40) - *(a2 + 32);
  if (v25 >= 0.0)
  {
    v26 = v25 / v24;
    if (v25 / v24 < 0.0)
    {
      v27 = a3[1].f64[1];
      v28 = 0.0;
      if (v27 <= 0.0)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v28 = 0.0;
  v26 = 0.0 / v24;
  if (0.0 / v24 >= 0.0)
  {
LABEL_8:
    v28 = 1.0;
    if (v26 <= 1.0)
    {
      v27 = a3[1].f64[1];
      if (v26 < v27)
      {
        v29 = v26 / v27;
LABEL_14:
        *&v21 = 1.0;
        if (v29 == 1.0)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      v28 = v26;
    }

    else
    {
      v27 = a3[1].f64[1];
      if (v27 > 1.0)
      {
        *&v21 = 1.0;
        v29 = 1.0 / v27;
        if (1.0 / v27 == 1.0)
        {
          goto LABEL_20;
        }

LABEL_15:
        *&v21 = 1.0 - exp2(v29 * -10.0);
        goto LABEL_20;
      }
    }

    goto LABEL_17;
  }

  v27 = a3[1].f64[1];
  if (v27 > 0.0)
  {
LABEL_7:
    v29 = 0.0 / v27;
    goto LABEL_14;
  }

LABEL_17:
  v30 = (v28 - v27) / a3[2].f64[0];
  v5 = 1.0;
  v31 = 1.0;
  if (v30 != 1.0)
  {
    v31 = 1.0 - exp2(v30 * -10.0);
  }

  *&v21 = 1.0 - v31;
LABEL_20:
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v32 = *(a4 + 16);
  if (*(v32 + 16) <= a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(*(a4 + 32) + 16) > a1)
  {
    v5 = *(v32 + 32 * a1 + 32);
    v80 = *a3;
    v81 = v21;
    v6 = a3[1].f64[0];
    a3 = *a2;
    v4 = *(a2 + 8);
    v82 = *(a2 + 256);
    if (one-time initialization token for spring == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_24:
  v33 = type metadata accessor for Spring();
  v83 = __swift_project_value_buffer(v33, static StretchTextEffect.spring);
  v34 = 0;
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  if (__OFSUB__(a3, a1))
  {
    __break(1u);
  }

  else
  {
    v35 = fabs(v5 + -0.5);
    v36 = *&v81;
    __asm { FMOV            V6.2D, #1.0 }

    v80 = vaddq_f64(vmulq_n_f64(vmulq_n_f64(v80, 1.0 - (v35 + v35)), *&v81), _Q6);
    v42 = 1.0;
    v43 = 0.0;
    v44 = 0;
    v45 = 0.0;
    v46 = 0.0;
    if (_ZF)
    {
      v74 = _Q6;
      v75 = a3;
      v76 = v16;
      v77 = v19;
      v78 = v14;
      v47 = *&v81 * v6 + 1.0;
      v95[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v95[1] = v4;
      v95[2] = a1;
      v95[3] = 0;
      v96 = 1;
      v97 = 0;
      v98 = 1;
      v91[0] = &type metadata for Text.Effect.WidthMultiplierAttribute;
      v91[1] = v4;
      *&v81 = a1;
      v91[2] = a1;
      v91[3] = 0;
      v92 = 1;
      v93 = 0;
      v94 = 1;
      *v84 = v36 * v6 + 1.0;
      v48 = v82;
      swift_beginAccess();
      if (*(*(v48 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v95), (v49 & 1) != 0) && (type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v50 = swift_dynamicCastClass()) != 0))
      {
        outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v50 + *(*v50 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      }

      else
      {
        v51 = *(*(v33 - 8) + 56);
        v52 = v79;
        v51(v79, 1, 1, v33);
        *v23 = v74;
        *(v23 + 2) = 0;
        v53 = v78;
        v54 = *(v78 + 44);
        v51(&v23[v54], 1, 1, v33);
        v55 = &v23[*(v53 + 48)];
        v56 = &v23[*(v53 + 52)];
        outlined assign with take of Spring?(v52, &v23[v54]);
        *v55 = 0;
        v55[8] = 1;
        *v56 = 0;
        v56[8] = 1;
      }

      swift_endAccess();
      v57 = v83;
      if (Spring.isValid.getter())
      {
        v58 = specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v57, v47, v25);
        v59 = &v23[*(v78 + 48)];
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v58, v60, v61);
        Spring.update<A>(value:velocity:target:deltaTime:)();
        *v59 = v25;
        v59[8] = 0;
      }

      else
      {
        outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
        v62 = *(v33 - 8);
        v63 = v79;
        (*(v62 + 16))(v79, v57, v33);
        v64 = *(v62 + 56);
        v64(v63, 0, 1, v33);
        *v23 = v47;
        *(v23 + 1) = v47;
        *(v23 + 2) = 0;
        v65 = v78;
        v66 = *(v78 + 44);
        v64(&v23[v66], 1, 1, v33);
        v67 = &v23[*(v65 + 48)];
        v68 = &v23[*(v65 + 52)];
        outlined assign with take of Spring?(v63, &v23[v66]);
        *v67 = 0;
        v67[8] = 1;
        *v68 = 0;
        v68[8] = 1;
      }

      v69 = v77;
      outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v23, v77, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v70 = v76;
      outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(v69, v76, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      swift_beginAccess();
      specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v70, v91);
      swift_endAccess();
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v69, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v42 = *(v23 + 1);
      outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
      v34 = *(a2 + 208);
      v43 = *(a2 + 216);
      v44 = *(a2 + 224);
      v45 = *(a2 + 232);
      v46 = *(a2 + 240);
      a1 = v81;
      a3 = v75;
    }

    v71 = v43 - v45;
    v72 = v45 + v46;
    MidX = CGRectGetMidX(*&v34);
    memset(v85, 0, sizeof(v85));
    v86 = MidX;
    v87 = v43;
    v88 = vextq_s8(v80, v80, 8uLL);
    v89 = 0x3FF0000000000000;
    v90 = 0;
    Text.Effect.TransformContext.record(target:for:spring:)(v85, a1, v83, v84);
    Text.Effect.TransformContext.draw(state:keyPath:)(v84, 0, 0, 0, 1);
    if (a3 == a1)
    {
      *(a2 + 136) = v42 * *(a2 + 136);
    }
  }
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance StretchTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized StretchTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for StretchTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v38 = a5;
  v34 = a1;
  v35 = a7;
  v37 = a4;
  v12 = type metadata accessor for FragmentRangeSequence(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Spring();
  v19 = *(v36 - 8);
  v20 = MEMORY[0x1EEE9AC00](v36);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a6, v20);
  outlined init with copy of FragmentRangeSequence.Iterator(v35, v18, type metadata accessor for Text.Effect.BaseContent);
  v39 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v42 = 0;
  outlined init with copy of FragmentRangeSequence.Iterator(v18, v15, type metadata accessor for Text.Effect.BaseContent);
  v23 = &v15[*(v13 + 28)];
  *v23 = a1;
  v23[1] = a2;
  v24 = a2;
  v25 = &v15[*(v13 + 32)];
  v26 = a3;
  v27 = v37;
  *v25 = a3;
  *(v25 + 1) = v27;
  v28.n128_u64[0] = 0;
  specialized Sequence.reduce<A>(_:_:)(v15, v28);
  v30 = v29;
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v15, type metadata accessor for FragmentRangeSequence);
  v31 = v38;
  Text.Effect.Timing.Chunk.computeInfos(configuration:chunk:content:)(v38, v34, v24, v26, v27, v18);
  v32 = v39;
  Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(v31, v30, v22, v39);
  outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(v18, type metadata accessor for Text.Effect.BaseContent);
  (*(v19 + 8))(v22, v36);

  return v32;
}

uint64_t specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, __n128 a6@<Q0>)
{
  result = specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(*a1, a1[1], a1[2], a1[3], a2, a3, a4, a6);
  if (!v6)
  {
    *a5 = result;
    a5[1] = v9;
    a5[2] = v10;
    a5[3] = v11;
  }

  return result;
}

double specialized StretchTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 1;
  v21 = xmmword_195CCB130;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v26 = xmmword_195CCB140;
  v27 = 0;
  v28 = 1;
  v29 = xmmword_195CCB150;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = 0;
  v33 = xmmword_195CCB160;
  v34 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static StretchTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD07StretchcF0V_Tt3g5Tm(&v21, a2, a3 & 1, v14, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, v19, type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>, specialized Sequence.reduce<A>(_:_:), partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:), type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>, specialized RandomAccessCollection<>.index(after:));
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

uint64_t specialized StretchTextEffect.configuration(_:)()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in StretchTextEffect.configuration(_:);
  *(v3 + 24) = v1;

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[2 * v6];
  v7[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v7[5] = v3;
  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  v8 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v8;
  v15 = *(a3 + 32);
  v9 = a1[1];
  v11[0] = *a1;
  v11[1] = v9;
  v11[2] = a1[2];
  result = v6(v11, v12, v14);
  *a4 = result;
  return result;
}

uint64_t outlined init with copy of [Text.Effect.Timing.GlyphTiming](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [Text.Effect.Timing.GlyphTiming](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute;
  if (!lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined assign with take of Spring?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<StretchTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<StretchTextEffect>, lazy protocol witness table accessor for type StretchTextEffect and conformance StretchTextEffect, &type metadata for StretchTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<StretchTextEffect>>);
    }
  }
}

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of FragmentRangeSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SquishTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SquishTextEffect>, lazy protocol witness table accessor for type SquishTextEffect and conformance SquishTextEffect, &type metadata for SquishTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SquishTextEffect>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, a2, a3, a4, type metadata accessor for Text.Effect.DrawableContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BounceTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BounceTextEffect>, lazy protocol witness table accessor for type BounceTextEffect and conformance BounceTextEffect, &type metadata for BounceTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BounceTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BigTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SmallTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SmallTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<BloomTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<BloomTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<SomersaultTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect, &type metadata for SomersaultTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<SomersaultTextEffect>>);
    }
  }
}

uint64_t partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  return specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(a1, v3[2], v3[3], v3[4], a2, a3);
}

{
  return partial apply for specialized closure #2 in Text.Effect.Timing.init<A>(configuration:duration:spring:content:)(a1, a2, a3);
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ShakeVerticalTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeVerticalTextEffect>, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeVerticalTextEffect>>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ShakeHorizontalTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ShakeHorizontalTextEffect>>);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>)
  {
    type metadata accessor for Text.Effect.DrawableFragment<StretchTextEffect>(255, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableContent);
    lazy protocol witness table accessor for type Text.Effect.DrawableContent<StretchTextEffect> and conformance Text.Effect.DrawableContent<A>(&lazy protocol witness table cache variable for type Text.Effect.DrawableContent<ExplodeTextEffect> and conformance Text.Effect.DrawableContent<A>, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.DrawableContent<ExplodeTextEffect>>);
    }
  }
}

uint64_t Text.Effect.SegmentInteraction.Element.displacement(type:time:context:layer:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v74 = a6;
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v72 = a1;
  LODWORD(v79) = a1;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = v62 - v11;
  v12 = type metadata accessor for Text.Effect.Composition.Run(0);
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v15 = (v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LayoutDirection();
  v75 = *(v22 - 8);
  v76 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v78 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v62 - v27;
  v77 = v7;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v62 - v27);
  v29 = (v26 + 8);
  if (v79 == 1)
  {
    v30 = specialized RangeSet.upperBound.getter();
  }

  else
  {
    v30 = specialized RangeSet.lowerBound.getter();
  }

  v79 = v30;
  v32 = v31;
  result = (*v29)(v28, v25);
  if ((v32 & 1) == 0)
  {
    v65 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
    v34 = v77;
    v64 = *(v77 + *(v65 + 20));
    v36 = v75;
    v35 = v76;
    v37 = v78;
    (*(v75 + 104))(v78, *MEMORY[0x1E697E7D0], v76);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v34, v21, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of Text.Effect.InteractionMetrics(v21, v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v38 = *(v16 + 24);
      v39 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
      v40 = v74;
      swift_beginAccess();
      v41 = *(v40 + v39);
      if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v64), (v43 & 1) != 0))
      {
        outlined init with copy of Text.Effect.SegmentInteraction.Element(*(v41 + 56) + *(v71 + 72) * v42, v15, type metadata accessor for Text.Effect.InteractionMetrics);
        swift_endAccess();
      }

      else
      {
        v62[1] = v39;
        v63 = v18;
        v44 = &v18[v38];
        v45 = swift_endAccess();
        *v15 = MEMORY[0x1E69E7CC0];
        v46 = v73;
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v45, v47, v48);
        RangeSet.init()();
        *(v15 + *(v46 + 24)) = MEMORY[0x1E69E7CD0];
        v49 = (v15 + *(v46 + 28));
        v50 = type metadata accessor for Text.Effect.Composition(0);
        *v49 = 0;
        v49[1] = 0;
        v51 = *(v44 + *(v50 + 24));
        v52 = *(v51 + 16);
        v53 = v67;
        v54 = v15;
        v56 = v68;
        v55 = v69;
        v57 = v80;
        if (v52)
        {
          v58 = v51 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
          v59 = *(v66 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v58, v57, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v54, v44, a2, v53, v56, v55, a7);
            v57 = v80;
            outlined destroy of Text.Effect.SegmentInteraction.Element(v80, type metadata accessor for Text.Effect.Composition.Operation);
            v58 += v59;
            --v52;
          }

          while (v52);
        }

        v60 = v70;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v54, v70, type metadata accessor for Text.Effect.InteractionMetrics);
        (*(v71 + 56))(v60, 0, 1, v73);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v60, v64);
        swift_endAccess();
        v35 = v76;
        v15 = v54;
        v18 = v63;
        v36 = v75;
      }

      v61 = v78;
      Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v79, v72, v78);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v15, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v36 + 8))(v61, v35);
      return outlined destroy of Text.Effect.SegmentInteraction.Element(v18, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    }

    else
    {
      (*(v36 + 8))(v37, v35);
      return outlined destroy of Text.Effect.SegmentInteraction.Element(v21, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    }
  }

  return result;
}

void Text.Effect.SegmentInteraction.Element.displacement(for:type:time:context:layer:)(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v123 = a8;
  v116 = a7;
  v115 = a6;
  v114 = a5;
  v113 = a4;
  v129 = a3;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v111 - v13;
  v14 = type metadata accessor for Text.Effect.Composition.Run(0);
  v112 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LayoutDirection();
  v127 = *(v19 - 8);
  v128 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v133 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v26 = v25;
  v132 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - v30;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v24, MEMORY[0x1E69E7BE0]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v111 - v35;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(&v111 - v35);
  RangeSet.ranges.getter();
  (*(v34 + 8))(v36, v33);
  v37 = *(v132 + 16);
  v130 = v31;
  v37(v28, v31, v26);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB8]);
  dispatch thunk of Sequence.makeIterator()();
  v38 = *(v133 + 11);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  v133 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v23[v38] == v136)
    {
      break;
    }

    v39 = dispatch thunk of Collection.subscript.read();
    v41 = *v40;
    v42 = v40[1];
    v39(&v136, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if (v41 <= a1)
    {
      v41 = a1;
    }

    if (v42 >= a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = v42;
    }

    if (v41 < v43)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v133;
      }

      else
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v133 + 2) + 1, 1, v133);
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      v47 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        v133 = (v46 + 1);
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
        v47 = v133;
        v44 = v49;
      }

      *(v44 + 2) = v47;
      v133 = v44;
      v48 = &v44[16 * v46];
      *(v48 + 4) = v41;
      *(v48 + 5) = v43;
    }
  }

  outlined destroy of Text.Effect.SegmentInteraction.Element(v23, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
  (*(v132 + 8))(v130, v26);
  v50 = *(v133 + 2);
  if (v50 > 1)
  {

    v51 = static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    v52 = static Log.internalErrorsLog;
    type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_195CC8CF0;
    v136 = 0;
    v137 = 0xE000000000000000;
    v54 = v52;
    _StringGuts.grow(_:)(45);

    v136 = 0xD00000000000002BLL;
    v137 = 0x8000000195CDF1C0;
    v135 = v50;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v55);

    v57 = v136;
    v58 = v137;
    v59 = MEMORY[0x1E69E6158];
    *(v53 + 56) = MEMORY[0x1E69E6158];
    v62 = lazy protocol witness table accessor for type String and conformance String(v56, v60, v61);
    *(v53 + 64) = v62;
    *(v53 + 32) = v57;
    *(v53 + 40) = v58;
    v63 = StaticString.description.getter();
    *(v53 + 96) = v59;
    *(v53 + 104) = v62;
    *(v53 + 72) = v63;
    *(v53 + 80) = v64;
    v136 = 103;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v53 + 136) = v59;
    *(v53 + 144) = v62;
    *(v53 + 112) = v65;
    *(v53 + 120) = v66;
    os_log(_:dso:log:_:_:)(v51, &dword_195BC6000, v54, "%s %s:%s", v111, v112, v113);

    type metadata accessor for _ContiguousArrayStorage<Any>();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_195CC8D00;
    v136 = 0;
    v137 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v136 = 0;
    v137 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v136 = 0xD00000000000002BLL;
    v137 = 0x8000000195CDF1C0;
    v135 = v50;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v68);

    MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
    v69 = StaticString.description.getter();
    MEMORY[0x19A8BD680](v69);

    MEMORY[0x19A8BD680](58, 0xE100000000000000);
    v135 = 103;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8BD680](v70);

    MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
    v71 = v136;
    v72 = v137;
    *(v67 + 56) = v59;
    *(v67 + 32) = v71;
    *(v67 + 40) = v72;
    print(_:separator:terminator:)();
    goto LABEL_24;
  }

  if (!v50)
  {
LABEL_24:

    return;
  }

  v73 = *(v133 + 4);
  v74 = *(v133 + 5);

  v75 = v131;
  Text.Effect.RenderSegmentation.Segment.characterIndex(for:type:)(v73, v74, v129);
  v77 = v76;
  v78 = type metadata accessor for Text.Effect.SegmentInteraction.Element(0);
  v79 = *(v75 + *(v78 + 20));
  v81 = v126;
  v80 = v127;
  v82 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x1E697E7D0], v128);
  v83 = v125;
  outlined init with copy of Text.Effect.SegmentInteraction.Element(v75, v125, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v84 = v83;
    v85 = v122;
    outlined init with take of Text.Effect.InteractionMetrics(v84, v122, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
    v132 = *(v118 + 24);
    v86 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
    v87 = v123;
    swift_beginAccess();
    v133 = v86;
    v88 = *&v86[v87];
    if (*(v88 + 16) && (v89 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v90 & 1) != 0))
    {
      v91 = *(v88 + 56) + *(v119 + 72) * v89;
      v92 = v120;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v91, v120, type metadata accessor for Text.Effect.InteractionMetrics);
      swift_endAccess();
    }

    else
    {
      v124 = v79;
      v125 = v77;
      v130 = v78;
      v93 = v85 + v132;
      v94 = swift_endAccess();
      v95 = v120;
      *v120 = MEMORY[0x1E69E7CC0];
      v96 = v121;
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v94, v97, v98);
      RangeSet.init()();
      *(v95 + *(v96 + 24)) = MEMORY[0x1E69E7CD0];
      v99 = (v95 + *(v96 + 28));
      v100 = type metadata accessor for Text.Effect.Composition(0);
      *v99 = 0;
      v99[1] = 0;
      v101 = *(v93 + *(v100 + 24));
      v102 = *(v101 + 16);
      v103 = v116;
      v104 = v115;
      v105 = v114;
      v106 = v113;
      v107 = v134;
      if (v102)
      {
        v108 = v101 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v109 = *(v112 + 9);
        do
        {
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v108, v107, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v95, v93, v106, v105, v104, v103, a9);
          v107 = v134;
          outlined destroy of Text.Effect.SegmentInteraction.Element(v134, type metadata accessor for Text.Effect.Composition.Operation);
          v108 += v109;
          --v102;
        }

        while (v102);
      }

      v110 = v117;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v95, v117, type metadata accessor for Text.Effect.InteractionMetrics);
      (*(v119 + 56))(v110, 0, 1, v121);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v110, v124);
      swift_endAccess();
      v92 = v95;
      v85 = v122;
      v80 = v127;
      v82 = v128;
      v77 = v125;
      v81 = v126;
    }

    Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v77, v129, v81);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v92, type metadata accessor for Text.Effect.InteractionMetrics);
    (*(v80 + 8))(v81, v82);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v85, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
  }

  else
  {
    (*(v80 + 8))(v81, v82);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v83, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }
}

void Text.Effect.RenderSegmentation.Segment.characterIndex(for:type:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_10;
    }

    Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)(a2 - 1, &v21 - v11);
    v14 = (*(v7 + 88))(v12, v6);
    if (v14 != *MEMORY[0x1E697E7D0] && v14 != *MEMORY[0x1E697E7D8])
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      if (!__OFSUB__(v13, a1))
      {
        if (v13 != a1)
        {
          type metadata accessor for _ContiguousArrayStorage<Any>();
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_195CC8D00;
          v25 = 0;
          v26 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v25 = 0;
          v26 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v25 = 0xD000000000000025;
          v26 = 0x8000000195CDF1F0;
          v23 = a2;
          v24 = a1;
          v21 = 0;
          v22 = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x19A8BD680](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x19A8BD680](v21, v22);

          MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
          v17 = StaticString.description.getter();
          MEMORY[0x19A8BD680](v17);

          MEMORY[0x19A8BD680](58, 0xE100000000000000);
          v21 = 80;
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x19A8BD680](v18);

          MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
          v19 = v25;
          v20 = v26;
          *(v16 + 56) = MEMORY[0x1E69E6158];
          *(v16 + 32) = v19;
          *(v16 + 40) = v20;
          print(_:separator:terminator:)();
        }

        return;
      }

LABEL_15:
      __break(1u);
    }
  }

  else
  {
    Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)(a1, v9);
    v15 = (*(v7 + 88))(v9, v6);
    if (v15 != *MEMORY[0x1E697E7D0] && v15 != *MEMORY[0x1E697E7D8])
    {
      goto LABEL_9;
    }
  }
}

uint64_t Array<A>.trailingSegment.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;

  specialized MutableCollection<>.sort(by:)(&v14);
  v3 = v14;
  v4 = *(v14 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
    v13 = *(v6 - 8);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t Text.Layout.Line.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v43 = a2;
  v3 = type metadata accessor for LayoutDirection();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Text.Layout.Run();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - v9;
  v10 = type metadata accessor for Text.Layout.Line();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Line>(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v39 = &v37 - v22;
  (*(v11 + 16))(v13, v2, v10, v21);
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981050]);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v15 + 44);
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981058]);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v17[v23] == v49[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.SegmentInteraction.Element(v17, type metadata accessor for IndexingIterator<Text.Layout.Line>);
    v24 = 1;
    v25 = v39;
  }

  else
  {
    v45 = (v44 + 16);
    v46 = (v44 + 32);
    v26 = (v44 + 8);
    v27 = v47;
    while (1)
    {
      v28 = dispatch thunk of Collection.subscript.read();
      (*v45)(v27);
      v28(v49, 0);
      v29 = v10;
      dispatch thunk of Collection.formIndex(after:)();
      v30 = *v46;
      (*v46)(v7, v27, v5);
      if (Text.Layout.Run.characterRange.getter() <= v48 && v31 > v48)
      {
        break;
      }

      (*v26)(v7, v5);
      v10 = v29;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v23] == v49[0])
      {
        goto LABEL_2;
      }
    }

    outlined destroy of Text.Effect.SegmentInteraction.Element(v17, type metadata accessor for IndexingIterator<Text.Layout.Line>);
    v25 = v39;
    v30(v39, v7, v5);
    v24 = 0;
  }

  v32 = v44;
  (*(v44 + 56))(v25, v24, 1, v5);
  v33 = v40;
  outlined init with copy of Text.Effect.InteractionMetrics?(v25, v40, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
  if ((*(v32 + 48))(v33, 1, v5) == 1)
  {
    v34 = MEMORY[0x1E6981028];
    outlined destroy of Text.Effect.InteractionMetrics?(v25, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
    outlined destroy of Text.Effect.InteractionMetrics?(v33, &lazy cache variable for type metadata for Text.Layout.Run?, v34);
    return (*(v41 + 104))(v43, *MEMORY[0x1E697E7D0], v42);
  }

  else
  {
    v36 = v38;
    Text.Layout.Run.layoutDirection.getter();
    outlined destroy of Text.Effect.InteractionMetrics?(v25, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
    (*(v32 + 8))(v33, v5);
    return (*(v41 + 32))(v43, v36, v42);
  }
}

uint64_t Text.Effect.RenderSegmentation.StaticLines.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for Text.Layout.Line();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v27 = &v26 - v11;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = *(v28 + 16);
    v14 = *v2 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v15 = (v28 + 8);
    v16 = *(v28 + 72);
    v13(v6, v14, v4, v10);
    while (Text.Layout.Line.characterRange.getter() > a1 || v18 <= a1)
    {
      (*v15)(v6, v4);
      v14 += v16;
      if (!--v12)
      {
        goto LABEL_8;
      }

      v13(v6, v14, v4, v17);
    }

    v20 = v28 + 32;
    v19 = *(v28 + 32);
    v21 = v26;
    v19(v26, v6, v4);
    v22 = v27;
    v19(v27, v21, v4);
    Text.Layout.Line.layoutDirection(for:)(a1, v29);
    return (*(v20 - 24))(v22, v4);
  }

  else
  {
LABEL_8:
    v24 = *MEMORY[0x1E697E7D0];
    v25 = type metadata accessor for LayoutDirection();
    return (*(*(v25 - 8) + 104))(v29, v24, v25);
  }
}

uint64_t Text.Effect.RenderSegmentation.Segment.layoutDirection(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.SegmentInteraction.Element(v3, v14, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Text.Effect.InteractionMetrics(v14, v11, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      Text.Layout.Line.layoutDirection(for:)(a1, a2);
      v16 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
      v17 = v11;
    }

    else
    {
      outlined init with take of Text.Effect.InteractionMetrics(v14, v8, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      Text.Layout.Line.layoutDirection(for:)(a1, a2);
      v16 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
      v17 = v8;
    }

    return outlined destroy of Text.Effect.SegmentInteraction.Element(v17, v16);
  }

  else
  {
    v18 = *(v14 + 1);
    v20[0] = *v14;
    v20[1] = v18;
    v20[2] = *(v14 + 2);
    v21 = *(v14 + 6);
    Text.Effect.RenderSegmentation.StaticLines.layoutDirection(for:)(a1, a2);
    return outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v20);
  }
}

uint64_t Range<>.relative(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 textLayoutFragment];
  if (!v5)
  {
    return a2;
  }

  v6 = v5;
  v7 = [v5 rangeInElement];

  NSTextRange.textRange.getter();
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    return a2;
  }

  result = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a3 - a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2 = Text.Layout.CharacterIndex.init(_:)();
  result = Text.Layout.CharacterIndex.init(_:)();
  if (result >= a2)
  {
    return a2;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t NSTextLocation.characterIndex(relativeTo:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB848]) initWithLocation_];
  NSTextRange.textRange.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    return 0;
  }

  result = v5 - a1;
  if (__OFSUB__(v5, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v7, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v7 - v5, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = Text.Layout.CharacterIndex.init(_:)();
  v12 = Text.Layout.CharacterIndex.init(_:)();
  result = v11;
  if (v12 < v11)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Text.Effect.RangeCoordinateSpace.xrange(using:)(uint64_t a1)
{
  v53 = type metadata accessor for LayoutDirection();
  v3 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.InteractionMetrics?(a1, v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return outlined destroy of Text.Effect.InteractionMetrics?(v12, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  }

  outlined init with take of Text.Effect.InteractionMetrics(v12, v16, type metadata accessor for Text.Effect.InteractionMetrics);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *(type metadata accessor for Text.Effect.RangeCoordinateSpace(0) + 24);
  v22 = *v16;
  v23 = *(*v16 + 16);
  v24 = v53;
  v50 = v21;
  if (v23)
  {
    v25 = (v22 + 48);
    v26 = v23;
    while (v20 < *(v25 - 2) || v20 >= *(v25 - 1))
    {
      v25 += 12;
      if (!--v26)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_20;
  }

LABEL_10:
  (*(v3 + 16))(v9, v1 + v21, v53);
  v28 = (*(v3 + 88))(v9, v24);
  if (v28 != *MEMORY[0x1E697E7D0])
  {
    if (v28 == *MEMORY[0x1E697E7D8])
    {
      if (v23)
      {
        v25 = (v22 + 48);
      }

      else
      {
        v25 = &v16[*(v13 + 28)];
      }

LABEL_20:
      v30 = *v25;
      goto LABEL_21;
    }

    (*(v3 + 8))(v9, v24);
  }

  v29 = &v16[*(v13 + 28)];
  v30 = *v29;
  if (*v29 == 0.0 && v29[1] == 0.0)
  {
    v31 = *(v22 + 16);
    if (!v31)
    {
      goto LABEL_30;
    }

    v25 = (v22 + 96 * v31 - 48);
    goto LABEL_20;
  }

LABEL_21:
  v32 = *(v22 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = *(v1 + 24);
    v35 = (v22 + 88);
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= *(v35 - 7) && v34 < *(v35 - 6))
      {
        v44 = *(v35 - 5) - *v35 + v35[4];
        v39 = *(v3 + 16);
        v43 = *MEMORY[0x1E697E7D0];
        goto LABEL_42;
      }

      v35 += 12;
      ++v33;
      if (v36 == v32)
      {
        v38 = 0;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_30:
  v38 = 1;
LABEL_31:
  v39 = *(v3 + 16);
  v40 = v1 + v21;
  v41 = v51;
  v39(v51, v40, v24);
  v42 = (*(v3 + 88))(v41, v24);
  v43 = *MEMORY[0x1E697E7D0];
  if (v42 != *MEMORY[0x1E697E7D0])
  {
    if (v42 == *MEMORY[0x1E697E7D8])
    {
      if (v38)
      {
        v44 = *&v16[*(v13 + 28)];
      }

      else
      {
        v44 = *(v22 + 48);
      }

      goto LABEL_42;
    }

    (*(v3 + 8))(v51, v24);
  }

  v45 = &v16[*(v13 + 28)];
  v44 = *v45;
  if (*v45 != 0.0)
  {
LABEL_42:
    v46 = v52;
    goto LABEL_43;
  }

  v46 = v52;
  if (v45[1] == 0.0)
  {
    v47 = *(v22 + 16);
    if (v47)
    {
      v44 = *(v22 + 96 * v47 - 48);
    }
  }

LABEL_43:
  v39(v46, v1 + v50, v24);
  v48 = (*(v3 + 88))(v46, v24);
  if (v48 == v43)
  {
    v49 = v44;
    v44 = v30;
  }

  else
  {
    v49 = v30;
    if (v48 != *MEMORY[0x1E697E7D8])
    {
LABEL_50:
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDF1A0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  result = outlined destroy of Text.Effect.SegmentInteraction.Element(v16, type metadata accessor for Text.Effect.InteractionMetrics);
  if (v18 + v44 > v19 + v49)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

uint64_t outlined destroy of Text.Effect.SegmentInteraction.Element(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v130 = a4;
  v109 = a1;
  v6 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v8 = v7;
  v9 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v99 - v12;
  v13 = type metadata accessor for Text.Effect.Composition.Run(0);
  v102 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  v106 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v99 - v21;
  v105 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  v129 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v99 - v27;
  v127 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v127);
  v108 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v122 = &v99 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v126 = (&v99 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v128 = &v99 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v125 = &v99 - v37;
  v100 = a2;
  if (a3 == a2)
  {
    return;
  }

  v119 = *v130;
  v110 = *(v36 + 72);
  v123 = (v24 + 8);
  v124 = (v9 + 8);
  v130 = v8;
LABEL_7:
  v101 = a3;
  v38 = a3;
  v39 = v129;
  while (1)
  {
    v40 = v38 - 1;
    v41 = v119;
    v42 = v110;
    v117 = v119 + v110 * v38;
    v43 = v125;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v117, v125, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v118 = v40;
    v116 = v41 + v40 * v42;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v116, v128, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v43, v126, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v47 = v112;
      if (EnumCaseMultiPayload == 1)
      {
        v48 = v104;
        outlined init with take of Text.Effect.InteractionMetrics(v126, v104, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        Text.Layout.Line.characterRanges(runIndices:)();
        outlined destroy of Text.Effect.SegmentInteraction.Element(v48, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      }

      else
      {
        v58 = v107;
        v59 = outlined init with take of Text.Effect.InteractionMetrics(v126, v107, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v60 = v58 + *(v106 + 24);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v59, v61, v62);
        RangeSet.init()();
        v63 = *(v60 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = v63 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
          v66 = *(v102 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v65, v18, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v60, v47);
            outlined destroy of Text.Effect.SegmentInteraction.Element(v18, type metadata accessor for Text.Effect.Composition.Operation);
            v65 += v66;
            --v64;
          }

          while (v64);
        }

        outlined destroy of Text.Effect.SegmentInteraction.Element(v107, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v39 = v129;
        v8 = v130;
      }

      goto LABEL_23;
    }

    v49 = *v126;
    v50 = v126[1];
    lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(EnumCaseMultiPayload, v45, v46);
    v47 = v112;
    RangeSet.init()();
    v51 = *(v49 + 16);
    v121 = v49;
    v120 = v50;
    if (v51)
    {
      break;
    }

LABEL_22:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v8 = v130;
LABEL_23:
    v67 = v111;
    RangeSet.ranges.getter();
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
    v68 = v67;
    v69 = dispatch thunk of Collection.isEmpty.getter();
    v70 = v113;
    if (v69)
    {
      (*v124)(v68, v8);
      (*v123)(v47, v39);
LABEL_5:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v128, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v125, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
LABEL_6:
      a3 = v101 + 1;
      if (v101 + 1 == v100)
      {
        return;
      }

      goto LABEL_7;
    }

    dispatch thunk of Collection.endIndex.getter();
    v114 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v71 = dispatch thunk of Collection.subscript.read();
    v115 = *(v72 + 8);
    v71(&v133, 0);
    v120 = *v124;
    v120(v68, v8);
    v73 = *v123;
    (*v123)(v47, v39);
    outlined init with copy of Text.Effect.SegmentInteraction.Element(v128, v122, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v74 = swift_getEnumCaseMultiPayload();
    v121 = v73;
    if (v74)
    {
      if (v74 == 1)
      {
        v77 = v104;
        outlined init with take of Text.Effect.InteractionMetrics(v122, v104, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
        v78 = v136;
        Text.Layout.Line.characterRanges(runIndices:)();
        v79 = v77;
        v80 = v78;
        outlined destroy of Text.Effect.SegmentInteraction.Element(v79, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      }

      else
      {
        v83 = v103;
        v84 = outlined init with take of Text.Effect.InteractionMetrics(v122, v103, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v85 = v83 + *(v106 + 24);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v84, v86, v87);
        v80 = v136;
        RangeSet.init()();
        v88 = *(v85 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
        v89 = *(v88 + 16);
        if (v89)
        {
          v90 = v88 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
          v91 = *(v102 + 72);
          do
          {
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v90, v15, type metadata accessor for Text.Effect.Composition.Run);
            Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v85, v80);
            v80 = v136;
            outlined destroy of Text.Effect.SegmentInteraction.Element(v15, type metadata accessor for Text.Effect.Composition.Operation);
            v90 += v91;
            --v89;
          }

          while (v89);
        }

        outlined destroy of Text.Effect.SegmentInteraction.Element(v103, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v39 = v129;
        v8 = v130;
        v70 = v113;
      }
    }

    else
    {
      v81 = *(v122 + 16);
      v134[0] = *v122;
      v134[1] = v81;
      v134[2] = *(v122 + 32);
      v135 = *(v122 + 48);
      v82 = v136;
      Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter(v74, v75, v76);
      v80 = v82;
      outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v134);
    }

    v92 = v80;
    RangeSet.ranges.getter();
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      v120(v70, v8);
      v121(v80, v39);
      goto LABEL_5;
    }

    v93 = v70;
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of BidirectionalCollection.index(before:)();
    v94 = dispatch thunk of Collection.subscript.read();
    v96 = *(v95 + 8);
    v94(&v133, 0);
    v120(v93, v8);
    v121(v92, v39);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v128, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v125, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    if (v115 < v96)
    {
      if (!v119)
      {
        goto LABEL_39;
      }

      v97 = v108;
      outlined init with take of Text.Effect.InteractionMetrics(v117, v108, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v98 = v116;
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Text.Effect.InteractionMetrics(v97, v98, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v38 = v118;
      if (v118 != v109)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  v52 = *(type metadata accessor for Text.Layout.Line() - 8);
  v53 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v54 = *(v52 + 72);

  while (1)
  {
    v55 = Text.Layout.Line.characterRange.getter();
    v131 = v55;
    v132 = v56;
    if (__OFSUB__(v56, v55))
    {
      break;
    }

    if (v56 != v55)
    {
      v57 = RangeSet._ranges.modify();
      RangeSet.Ranges._insert(contentsOf:)();
      v57(&v133, 0);
      v39 = v129;
    }

    v53 += v54;
    if (!--v51)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (**a1)(uint64_t a1), uint64_t a2, char **a3, int64_t a4)
{
  v282 = a4;
  v287 = a1;
  v5 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v7 = v6;
  v331 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v281 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v289 = &v281 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v299 = &v281 - v16;
  v17 = type metadata accessor for Text.Effect.Composition.Run(0);
  v297 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v337 = &v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v281 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v336 = &v281 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v340 = &v281 - v25;
  v309 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v309);
  v300 = &v281 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v301 = &v281 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v288 = &v281 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v292 = &v281 - v32;
  v308 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v308);
  v307 = &v281 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v5, MEMORY[0x1E69E7BE0]);
  v341 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v339 = &v281 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v281 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v291 = &v281 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v335 = &v281 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v281 = &v281 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v284 = &v281 - v47;
  v48 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v302 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v290 = &v281 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v303 = &v281 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v327 = (&v281 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v329 = (&v281 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v334 = &v281 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v328 = &v281 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v298 = &v281 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v316 = (&v281 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v317 = &v281 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v315 = &v281 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v283 = &v281 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v286 = &v281 - v72;
  v312 = a3;
  v73 = a3[1];
  if (v73 < 1)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_170:
    v77 = *v287;
    if (!*v287)
    {
      goto LABEL_212;
    }

    v12 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v314;
    if (isUniquelyReferenced_nonNull_native)
    {
      v276 = v12;
LABEL_173:
      v352 = v276;
      v12 = *(v276 + 2);
      if (v12 < 2)
      {
LABEL_181:

        return;
      }

      while (*v312)
      {
        v277 = *&v276[16 * v12];
        v278 = v276;
        v279 = *&v276[16 * v12 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v312)[*(v302 + 72) * v277], &(*v312)[*(v302 + 72) * *&v276[16 * v12 + 16]], &(*v312)[*(v302 + 72) * v279], v77);
        if (v76)
        {
          goto LABEL_181;
        }

        if (v279 < v277)
        {
          goto LABEL_198;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v278 = specialized _ArrayBuffer._consumeAndCreateNew()(v278);
        }

        if (v12 - 2 >= *(v278 + 2))
        {
          goto LABEL_199;
        }

        v280 = &v278[16 * v12];
        *v280 = v277;
        *(v280 + 1) = v279;
        v352 = v278;
        specialized Array.remove(at:)(v12 - 1);
        v276 = v352;
        v12 = *(v352 + 2);
        if (v12 <= 1)
        {
          goto LABEL_181;
        }
      }

LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

LABEL_205:
    v276 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    goto LABEL_173;
  }

  v332 = v7;
  v74 = 0;
  v333 = (v35 + 8);
  v75 = MEMORY[0x1E69E7CC0];
  ++v331;
  v305 = v9;
  v310 = v12;
  v311 = v21;
  v76 = v339;
  v338 = v39;
  v330 = v71;
  while (2)
  {
    v77 = v74 + 1;
    v304 = v75;
    v313 = v74;
    if (v74 + 1 >= v73)
    {
      v87 = v337;
      v88 = v330;
      goto LABEL_64;
    }

    v78 = v74;
    v79 = *v312;
    v80 = *(v302 + 72);
    v318 = v74 + 1;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(&v79[v80 * v77], v286, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v322 = v80;
    v319 = v79;
    v81 = v283;
    outlined init with copy of Text.Effect.SegmentInteraction.Element(&v79[v80 * v78], v283, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v82 = v284;
    Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v284);
    v83 = specialized RangeSet.upperBound.getter();
    v12 = v84;
    v85 = *v333;
    v86 = v341;
    (*v333)(v82, v341);
    *&v320 = v73;
    v324 = v85;
    if (v12)
    {
      LODWORD(v321) = 0;
      v87 = v337;
      v88 = v330;
    }

    else
    {
      v89 = v281;
      Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v281);
      v12 = specialized RangeSet.upperBound.getter();
      v91 = v90;
      (v85)(v89, v86);
      LODWORD(v321) = (v91 & 1) == 0 && v83 < v12;
      v87 = v337;
      v88 = v330;
      v73 = v320;
    }

    outlined destroy of Text.Effect.SegmentInteraction.Element(v81, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v286, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    v77 = v318;
    v92 = v322;
    v93 = v322 * v318;
    v94 = v322 * (v313 + 2);
    do
    {
      v96 = v77;
      *&v326 = v93;
      v95 = v94;
      v318 = ++v77;
      v323 = v96;
      if (v77 >= v73)
      {
        break;
      }

      v325 = v94;
      v97 = v319;
      v98 = v319 + v77 * v92;
      v77 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
      v99 = v315;
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v98, v315, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v97 + v96 * v92, v317, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined init with copy of Text.Effect.SegmentInteraction.Element(v99, v316, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v103 = v307;
          outlined init with take of Text.Effect.InteractionMetrics(v316, v307, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v104 = v335;
          Text.Layout.Line.characterRanges(runIndices:)();
          outlined destroy of Text.Effect.SegmentInteraction.Element(v103, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          v105 = v341;
        }

        else
        {
          v115 = v292;
          v116 = outlined init with take of Text.Effect.InteractionMetrics(v316, v292, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v117 = v115 + *(v309 + 24);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v116, v118, v119);
          RangeSet.init()();
          v120 = *(v117 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
          v121 = *(v120 + 16);
          v122 = v340;
          if (v121)
          {
            v123 = v120 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
            v124 = *(v297 + 72);
            v104 = v335;
            do
            {
              outlined init with copy of Text.Effect.SegmentInteraction.Element(v123, v122, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v117, v104);
              v122 = v340;
              outlined destroy of Text.Effect.SegmentInteraction.Element(v340, type metadata accessor for Text.Effect.Composition.Operation);
              v123 += v124;
              --v121;
            }

            while (v121);
          }

          else
          {
            v104 = v335;
          }

          outlined destroy of Text.Effect.SegmentInteraction.Element(v292, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v105 = v341;
          v76 = v339;
        }
      }

      else
      {
        v106 = *v316;
        v107 = v316[1];
        v296 = v316[2];
        v306 = *(v316 + 5);
        v295 = *(v316 + 3);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(EnumCaseMultiPayload, v101, v102);
        RangeSet.init()();
        v108 = *(v106 + 16);
        if (v108)
        {
          v109 = *(type metadata accessor for Text.Layout.Line() - 8);
          v110 = v106 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
          v111 = *(v109 + 72);

          v112 = v108;
          v76 = v332;
          while (1)
          {
            v12 = v110;
            v113 = Text.Layout.Line.characterRange.getter();
            v348 = v113;
            v349 = v114;
            if (__OFSUB__(v114, v113))
            {
              break;
            }

            if (v114 != v113)
            {
              v77 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              (v77)(&v342, 0);
            }

            v110 += v111;
            if (!--v112)
            {
              goto LABEL_30;
            }
          }

LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

LABEL_30:
        v342 = v106;
        v343 = v107;
        v344 = v296;
        v345 = v295;
        v346 = v306;
        v347 = v108;
        outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v342);

        v105 = v341;
        v39 = v338;
        v76 = v339;
        v104 = v335;
      }

      v125 = v299;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
      v126 = v332;
      v127 = dispatch thunk of Collection.isEmpty.getter();
      v128 = v324;
      if ((v127 & 1) == 0)
      {
        dispatch thunk of Collection.endIndex.getter();
        *&v295 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v129 = dispatch thunk of Collection.subscript.read();
        v131 = *(v130 + 8);
        v129(&v342, 0);
        *&v306 = *v331;
        (v306)(v125, v126);
        (v128)(v104, v105);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v317, v298, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v88 = v330;
        v132 = swift_getEnumCaseMultiPayload();
        v135 = v126;
        v296 = v131;
        if (v132)
        {
          v136 = v291;
          if (v132 == 1)
          {
            v137 = v105;
            v138 = v307;
            outlined init with take of Text.Effect.InteractionMetrics(v298, v307, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v138, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            goto LABEL_38;
          }

          v140 = v288;
          v141 = outlined init with take of Text.Effect.InteractionMetrics(v298, v288, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v142 = v140 + *(v309 + 24);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v141, v143, v144);
          RangeSet.init()();
          v145 = *(v142 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
          v146 = *(v145 + 16);
          v147 = v336;
          if (v146)
          {
            v148 = v145 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
            v149 = *(v297 + 72);
            v136 = v291;
            v92 = v322;
            do
            {
              outlined init with copy of Text.Effect.SegmentInteraction.Element(v148, v147, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v142, v136);
              v147 = v336;
              outlined destroy of Text.Effect.SegmentInteraction.Element(v336, type metadata accessor for Text.Effect.Composition.Operation);
              v148 += v149;
              --v146;
            }

            while (v146);
          }

          else
          {
            v136 = v291;
            v92 = v322;
          }

          outlined destroy of Text.Effect.SegmentInteraction.Element(v288, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v137 = v341;
          v88 = v330;
        }

        else
        {
          v139 = *(v298 + 16);
          v350[0] = *v298;
          v350[1] = v139;
          v350[2] = *(v298 + 32);
          v351 = *(v298 + 48);
          v137 = v105;
          v136 = v291;
          Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter(v132, v133, v134);
          outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v350);
LABEL_38:
          v92 = v322;
        }

        v150 = v289;
        RangeSet.ranges.getter();
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v306)(v150, v135);
          (v324)(v136, v137);
          v12 = 0;
        }

        else
        {
          dispatch thunk of Collection.endIndex.getter();
          dispatch thunk of BidirectionalCollection.index(before:)();
          v151 = dispatch thunk of Collection.subscript.read();
          v153 = *(v152 + 8);
          v151(&v342, 0);
          (v306)(v150, v135);
          (v324)(v136, v137);
          v12 = v296 < v153;
        }

        v39 = v338;
        v76 = v339;
        goto LABEL_14;
      }

      (*v331)(v125, v126);
      (v128)(v104, v105);
      v12 = 0;
      v88 = v330;
      v92 = v322;
LABEL_14:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v317, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v315, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      v93 = v326 + v92;
      v95 = v325;
      v94 = &v325[v92];
      v87 = v337;
      v77 = v318;
      v73 = v320;
    }

    while (v321 == v12);
    if (!v321)
    {
      goto LABEL_63;
    }

    if (v77 < v313)
    {
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v313 >= v77)
    {
LABEL_63:
      v21 = v311;
      goto LABEL_64;
    }

    v12 = v313 * v92;
    v154 = v313;
    v155 = v326;
    v156 = v323;
    do
    {
      if (v154 != v156)
      {
        v323 = v156;
        v158 = *v312;
        if (!*v312)
        {
          goto LABEL_210;
        }

        v159 = v95;
        outlined init with take of Text.Effect.InteractionMetrics(&v158[v12], v290, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v12 < v155 || &v158[v12] >= &v159[v158])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 != v155)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        outlined init with take of Text.Effect.InteractionMetrics(v290, &v158[v155], type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v88 = v330;
        v95 = v159;
        v156 = v323;
      }

      ++v154;
      v155 -= v92;
      v95 -= v92;
      v12 += v92;
    }

    while (v154 < v156--);
    v21 = v311;
    v76 = v339;
    v77 = v318;
LABEL_64:
    v160 = v312[1];
    if (v77 >= v160)
    {
      goto LABEL_118;
    }

    if (__OFSUB__(v77, v313))
    {
      goto LABEL_202;
    }

    if (v77 - v313 >= v282)
    {
      goto LABEL_118;
    }

    v161 = (v313 + v282);
    if (__OFADD__(v313, v282))
    {
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    if (v161 >= v160)
    {
      v161 = v312[1];
    }

    if (v161 < v313)
    {
      goto LABEL_204;
    }

    if (v77 == v161)
    {
      goto LABEL_118;
    }

    v324 = *v312;
    *&v306 = *(v302 + 72);
    v285 = v161;
    while (2)
    {
      v318 = v77;
      v162 = v77;
      while (2)
      {
        v163 = v39;
        v164 = v162 - 1;
        v165 = v324;
        v166 = v306;
        v77 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
        v322 = &v324[v306 * v162];
        v167 = v328;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v322, v328, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v323 = v164;
        v321 = &v165[v164 * v166];
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v321, v334, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v167, v329, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v168 = swift_getEnumCaseMultiPayload();
        if (v168)
        {
          v39 = v163;
          if (v168 == 1)
          {
            v171 = v307;
            outlined init with take of Text.Effect.InteractionMetrics(v329, v307, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v171, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v172 = v310;
            v173 = v341;
          }

          else
          {
            v183 = v88;
            v184 = v301;
            v185 = outlined init with take of Text.Effect.InteractionMetrics(v329, v301, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v186 = v184 + *(v309 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v185, v187, v188);
            RangeSet.init()();
            v189 = *(v186 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v190 = *(v189 + 16);
            if (v190)
            {
              v191 = v189 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
              v192 = *(v297 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v191, v21, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v186, v163);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v21, type metadata accessor for Text.Effect.Composition.Operation);
                v191 += v192;
                --v190;
              }

              while (v190);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v301, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v87 = v337;
            v173 = v341;
            v172 = v310;
            v88 = v183;
          }

          goto LABEL_92;
        }

        v174 = *v329;
        v175 = v329[1];
        v325 = v329[2];
        v326 = *(v329 + 5);
        v320 = *(v329 + 3);
        lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v168, v169, v170);
        RangeSet.init()();
        v176 = *(v174 + 16);
        if (v176)
        {
          v177 = *(type metadata accessor for Text.Layout.Line() - 8);
          v178 = v174 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
          v179 = *(v177 + 72);

          v180 = v176;
          v76 = v332;
          while (1)
          {
            v12 = v178;
            v181 = Text.Layout.Line.characterRange.getter();
            v348 = v181;
            v349 = v182;
            if (__OFSUB__(v182, v181))
            {
              break;
            }

            if (v182 != v181)
            {
              v77 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              (v77)(&v342, 0);
            }

            v178 += v179;
            if (!--v180)
            {
              goto LABEL_91;
            }
          }

          __break(1u);
          goto LABEL_183;
        }

LABEL_91:
        v342 = v174;
        v343 = v175;
        v344 = v325;
        v345 = v320;
        v346 = v326;
        v347 = v176;
        outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v342);

        v172 = v310;
        v87 = v337;
        v173 = v341;
        v39 = v338;
        v88 = v330;
LABEL_92:
        v193 = v173;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
        v12 = v172;
        v194 = v332;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (*v331)(v172, v194);
          (*v333)(v39, v193);
          v21 = v311;
LABEL_74:
          outlined destroy of Text.Effect.SegmentInteraction.Element(v334, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined destroy of Text.Effect.SegmentInteraction.Element(v328, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          goto LABEL_75;
        }

        dispatch thunk of Collection.endIndex.getter();
        v319 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v195 = dispatch thunk of Collection.subscript.read();
        v197 = *(v196 + 8);
        v195(&v342, 0);
        v325 = *v331;
        (v325)(v172, v194);
        v198 = v193;
        *&v326 = *v333;
        (v326)(v39, v193);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v334, v327, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v199 = v88;
        v200 = swift_getEnumCaseMultiPayload();
        *&v320 = v197;
        if (v200)
        {
          if (v200 == 1)
          {
            v203 = v307;
            outlined init with take of Text.Effect.InteractionMetrics(v327, v307, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v204 = v339;
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v203, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v205 = v305;
            v76 = v332;
          }

          else
          {
            v215 = v300;
            v216 = outlined init with take of Text.Effect.InteractionMetrics(v327, v300, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v217 = v215 + *(v309 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v216, v218, v219);
            RangeSet.init()();
            v220 = *(v217 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v221 = *(v220 + 16);
            if (v221)
            {
              v222 = v220 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
              v223 = *(v297 + 72);
              v204 = v339;
              v76 = v332;
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v222, v87, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v217, v204);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v87, type metadata accessor for Text.Effect.Composition.Operation);
                v222 += v223;
                --v221;
              }

              while (v221);
            }

            else
            {
              v204 = v339;
              v76 = v332;
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v300, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v198 = v341;
            v199 = v330;
            v205 = v305;
          }
        }

        else
        {
          v207 = *v327;
          v206 = v327[1];
          v294 = v327[2];
          v295 = *(v327 + 5);
          v293 = *(v327 + 3);
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v200, v201, v202);
          RangeSet.init()();
          v208 = *(v207 + 16);
          v296 = v206;
          if (v208)
          {
            v209 = *(type metadata accessor for Text.Layout.Line() - 8);
            v77 = v207 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
            v210 = *(v209 + 72);

            v211 = v208;
            v76 = v332;
            while (1)
            {
              v12 = v77;
              v212 = Text.Layout.Line.characterRange.getter();
              v348 = v212;
              v349 = v213;
              if (__OFSUB__(v213, v212))
              {
                break;
              }

              if (v213 != v212)
              {
                v214 = RangeSet._ranges.modify();
                RangeSet.Ranges._insert(contentsOf:)();
                v214(&v342, 0);
                v87 = v337;
              }

              v77 += v210;
              if (!--v211)
              {
                goto LABEL_107;
              }
            }

LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          v76 = v332;
LABEL_107:
          v342 = v207;
          v343 = v296;
          v344 = v294;
          v345 = v293;
          v346 = v295;
          v347 = v208;
          outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(&v342);

          v205 = v305;
          v198 = v341;
          v204 = v339;
          v199 = v330;
        }

        RangeSet.ranges.getter();
        v12 = v205;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v325)(v205, v76);
          (v326)(v204, v198);
          v21 = v311;
          v88 = v199;
          v39 = v338;
          goto LABEL_74;
        }

        dispatch thunk of Collection.endIndex.getter();
        dispatch thunk of BidirectionalCollection.index(before:)();
        v224 = dispatch thunk of Collection.subscript.read();
        v12 = *(v225 + 8);
        v224(&v342, 0);
        (v325)(v205, v76);
        (v326)(v204, v198);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v334, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v328, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v320 < v12)
        {
          v21 = v311;
          v39 = v338;
          if (!v324)
          {
            goto LABEL_207;
          }

          v88 = v199;
          v12 = v303;
          outlined init with take of Text.Effect.InteractionMetrics(v322, v303, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v226 = v321;
          swift_arrayInitWithTakeFrontToBack();
          outlined init with take of Text.Effect.InteractionMetrics(v12, v226, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v162 = v323;
          if (v323 == v313)
          {
            goto LABEL_75;
          }

          continue;
        }

        break;
      }

      v21 = v311;
      v88 = v199;
      v39 = v338;
LABEL_75:
      v77 = v318 + 1;
      if (v318 + 1 != v285)
      {
        continue;
      }

      break;
    }

    v77 = v285;
    v76 = v339;
LABEL_118:
    v227 = v313;
    if (v77 < v313)
    {
      goto LABEL_201;
    }

    v228 = swift_isUniquelyReferenced_nonNull_native();
    v318 = v77;
    if (v228)
    {
      v75 = v304;
    }

    else
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v304 + 2) + 1, 1, v304);
    }

    v77 = *(v75 + 2);
    v229 = *(v75 + 3);
    v12 = v77 + 1;
    if (v77 >= v229 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v12;
    v230 = &v75[16 * v77];
    v231 = v318;
    *(v230 + 4) = v227;
    *(v230 + 5) = v231;
    v232 = *v287;
    if (*v287)
    {
      if (!v77)
      {
LABEL_3:
        v73 = v312[1];
        v74 = v318;
        v21 = v311;
        if (v318 >= v73)
        {
          goto LABEL_170;
        }

        continue;
      }

      while (2)
      {
        v233 = v12 - 1;
        if (v12 >= 4)
        {
          v238 = &v75[16 * v12 + 32];
          v239 = *(v238 - 64);
          v240 = *(v238 - 56);
          v244 = __OFSUB__(v240, v239);
          v241 = v240 - v239;
          if (v244)
          {
            goto LABEL_188;
          }

          v243 = *(v238 - 48);
          v242 = *(v238 - 40);
          v244 = __OFSUB__(v242, v243);
          v236 = v242 - v243;
          v237 = v244;
          if (v244)
          {
            goto LABEL_189;
          }

          v245 = &v75[16 * v12];
          v247 = *v245;
          v246 = *(v245 + 1);
          v244 = __OFSUB__(v246, v247);
          v248 = v246 - v247;
          if (v244)
          {
            goto LABEL_191;
          }

          v244 = __OFADD__(v236, v248);
          v249 = v236 + v248;
          if (v244)
          {
            goto LABEL_194;
          }

          if (v249 >= v241)
          {
            v267 = &v75[16 * v233 + 32];
            v269 = *v267;
            v268 = *(v267 + 1);
            v244 = __OFSUB__(v268, v269);
            v270 = v268 - v269;
            if (v244)
            {
              goto LABEL_200;
            }

            if (v236 < v270)
            {
              v233 = v12 - 2;
            }
          }

          else
          {
LABEL_138:
            if (v237)
            {
              goto LABEL_190;
            }

            v250 = &v75[16 * v12];
            v252 = *v250;
            v251 = *(v250 + 1);
            v253 = __OFSUB__(v251, v252);
            v254 = v251 - v252;
            v255 = v253;
            if (v253)
            {
              goto LABEL_193;
            }

            v256 = &v75[16 * v233 + 32];
            v258 = *v256;
            v257 = *(v256 + 1);
            v244 = __OFSUB__(v257, v258);
            v259 = v257 - v258;
            if (v244)
            {
              goto LABEL_196;
            }

            if (__OFADD__(v254, v259))
            {
              goto LABEL_197;
            }

            if (v254 + v259 < v236)
            {
              goto LABEL_152;
            }

            if (v236 < v259)
            {
              v233 = v12 - 2;
            }
          }
        }

        else
        {
          if (v12 == 3)
          {
            v234 = *(v75 + 4);
            v235 = *(v75 + 5);
            v244 = __OFSUB__(v235, v234);
            v236 = v235 - v234;
            v237 = v244;
            goto LABEL_138;
          }

          v260 = &v75[16 * v12];
          v262 = *v260;
          v261 = *(v260 + 1);
          v244 = __OFSUB__(v261, v262);
          v254 = v261 - v262;
          v255 = v244;
LABEL_152:
          if (v255)
          {
            goto LABEL_192;
          }

          v263 = &v75[16 * v233];
          v265 = *(v263 + 4);
          v264 = *(v263 + 5);
          v244 = __OFSUB__(v264, v265);
          v266 = v264 - v265;
          if (v244)
          {
            goto LABEL_195;
          }

          if (v266 < v254)
          {
            goto LABEL_3;
          }
        }

        v77 = v233 - 1;
        if (v233 - 1 >= v12)
        {
          goto LABEL_185;
        }

        if (!*v312)
        {
          goto LABEL_208;
        }

        v271 = v75;
        v12 = *&v75[16 * v77 + 32];
        v272 = *&v75[16 * v233 + 40];
        v273 = v314;
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v312)[*(v302 + 72) * v12], &(*v312)[*(v302 + 72) * *&v75[16 * v233 + 32]], &(*v312)[*(v302 + 72) * v272], v232);
        v314 = v273;
        if (v273)
        {
          goto LABEL_181;
        }

        if (v272 < v12)
        {
          goto LABEL_186;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v271 = specialized _ArrayBuffer._consumeAndCreateNew()(v271);
        }

        if (v77 >= *(v271 + 2))
        {
          goto LABEL_187;
        }

        v274 = &v271[16 * v77];
        *(v274 + 4) = v12;
        *(v274 + 5) = v272;
        v352 = v271;
        specialized Array.remove(at:)(v233);
        v75 = v352;
        v12 = *(v352 + 2);
        v76 = v339;
        if (v12 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v216 = a4;
  v209 = a3;
  v6 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v221 = v7;
  v217 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v192 = v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v205 = v189 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v196 = v189 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v206 = v189 - v14;
  v15 = type metadata accessor for Text.Effect.Composition.Run(0);
  v197 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v189[0] = v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v189 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v189 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v189 - v24;
  v203 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v203);
  v190 = v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = v189 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v193 = v189 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v200 = v189 - v32;
  v202 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v202);
  v201 = v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v191 = v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v189 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v195 = v189 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v189 - v44;
  v219 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v219);
  v204 = (v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47);
  v212 = (v189 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v213 = (v189 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v211 = v189 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v207 = v189 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v208 = (v189 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v218 = v189 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v215 = v189 - v60;
  v210 = *(v61 + 72);
  if (!v210)
  {
    goto LABEL_120;
  }

  if (a2 - a1 == 0x8000000000000000 && v210 == -1)
  {
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    return;
  }

  v62 = &v209[-a2];
  if (&v209[-a2] == 0x8000000000000000 && v210 == -1)
  {
    goto LABEL_122;
  }

  v220 = v35;
  v63 = (a2 - a1) / v210;
  v231 = a1;
  v64 = v216;
  v226 = v216;
  if (v63 >= v62 / v210)
  {
    v68 = v62 / v210 * v210;
    v69 = v210;
    if (v216 < a2 || a2 + v68 <= v216)
    {
      swift_arrayInitWithTakeFrontToBack();
      v70 = v209;
    }

    else
    {
      v70 = v209;
      if (v216 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v124 = v64 + v68;
    if (v68 < 1)
    {
      v128 = v64 + v68;
    }

    else
    {
      v125 = -v69;
      v209 = (v217 + 8);
      v208 = (v36 + 8);
      v126 = v64 + v68;
      v214 = a1;
      v127 = v220;
      v128 = v124;
      v206 = v125;
      v200 = v40;
      do
      {
        v193 = v128;
        v129 = a2;
        v130 = a2 + v125;
        v217 = v130;
        v207 = v129;
        while (1)
        {
          if (v129 <= a1)
          {
            v231 = v129;
            v225 = v193;
            goto LABEL_117;
          }

          v210 = v70;
          v199 = v128;
          v215 = v126;
          v131 = v126 + v125;
          v218 = v126 + v125;
          v132 = v211;
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v131, v211, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v130, v213, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined init with copy of Text.Effect.SegmentInteraction.Element(v132, v212, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v136 = v201;
              outlined init with take of Text.Effect.InteractionMetrics(v212, v201, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
              Text.Layout.Line.characterRanges(runIndices:)();
              outlined destroy of Text.Effect.SegmentInteraction.Element(v136, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            }

            else
            {
              v146 = v194;
              v147 = outlined init with take of Text.Effect.InteractionMetrics(v212, v194, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
              v148 = v146 + *(v203 + 24);
              lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v147, v149, v150);
              RangeSet.init()();
              v151 = *(v148 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
              v152 = *(v151 + 16);
              if (v152)
              {
                v153 = v151 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
                v154 = *(v197 + 72);
                do
                {
                  outlined init with copy of Text.Effect.SegmentInteraction.Element(v153, v19, type metadata accessor for Text.Effect.Composition.Run);
                  Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v148, v40);
                  outlined destroy of Text.Effect.SegmentInteraction.Element(v19, type metadata accessor for Text.Effect.Composition.Operation);
                  v153 += v154;
                  --v152;
                }

                while (v152);
              }

              outlined destroy of Text.Effect.SegmentInteraction.Element(v194, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
              a1 = v214;
            }
          }

          else
          {
            v138 = *v212;
            v137 = v212[1];
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(EnumCaseMultiPayload, v134, v135);
            RangeSet.init()();
            v139 = *(v138 + 2);
            v198 = v137;
            if (v139)
            {
              v140 = *(type metadata accessor for Text.Layout.Line() - 8);
              v141 = &v138[(*(v140 + 80) + 32) & ~*(v140 + 80)];
              v142 = *(v140 + 72);

              do
              {
                v143 = Text.Layout.Line.characterRange.getter();
                v222 = v143;
                v223 = v144;
                if (__OFSUB__(v144, v143))
                {
                  goto LABEL_119;
                }

                if (v144 != v143)
                {
                  v145 = RangeSet._ranges.modify();
                  RangeSet.Ranges._insert(contentsOf:)();
                  v145(&v224, 0);
                  v127 = v220;
                }

                v141 += v142;
                --v139;
              }

              while (v139);
            }

            else
            {
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v130 = v217;
          }

          v155 = v205;
          RangeSet.ranges.getter();
          lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
          v156 = v221;
          if (dispatch thunk of Collection.isEmpty.getter())
          {
            v157 = v40;
            v158 = v130;
            (*v209)(v155, v156);
            (*v208)(v157, v127);
            v159 = 0;
          }

          else
          {
            dispatch thunk of Collection.endIndex.getter();
            v195 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
            dispatch thunk of BidirectionalCollection.index(before:)();
            v160 = dispatch thunk of Collection.subscript.read();
            v196 = *(v161 + 8);
            v160(&v224, 0);
            v198 = *v209;
            v198(v155, v156);
            v162 = v40;
            v163 = *v208;
            (*v208)(v162, v127);
            outlined init with copy of Text.Effect.SegmentInteraction.Element(v213, v204, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v164 = swift_getEnumCaseMultiPayload();
            if (v164)
            {
              v167 = v191;
              if (v164 == 1)
              {
                v168 = v201;
                outlined init with take of Text.Effect.InteractionMetrics(v204, v201, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
                Text.Layout.Line.characterRanges(runIndices:)();
                outlined destroy of Text.Effect.SegmentInteraction.Element(v168, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
              }

              else
              {
                v171 = v190;
                v172 = outlined init with take of Text.Effect.InteractionMetrics(v204, v190, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                v173 = v171 + *(v203 + 24);
                lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v172, v174, v175);
                RangeSet.init()();
                v176 = *(v173 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
                v177 = *(v176 + 16);
                v178 = v189[0];
                if (v177)
                {
                  v179 = v176 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
                  v180 = *(v197 + 72);
                  do
                  {
                    outlined init with copy of Text.Effect.SegmentInteraction.Element(v179, v178, type metadata accessor for Text.Effect.Composition.Run);
                    Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v173, v167);
                    outlined destroy of Text.Effect.SegmentInteraction.Element(v178, type metadata accessor for Text.Effect.Composition.Operation);
                    v179 += v180;
                    --v177;
                  }

                  while (v177);
                }

                outlined destroy of Text.Effect.SegmentInteraction.Element(v190, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                a1 = v214;
              }

              v170 = v167;
            }

            else
            {
              v169 = v204[1];
              v227 = *v204;
              v228 = v169;
              v229 = v204[2];
              v230 = *(v204 + 6);
              v170 = v191;
              Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter(v164, v165, v166);
              outlined destroy of Text.Effect.RenderSegmentation.StaticLines(&v227);
            }

            v181 = v192;
            v182 = v220;
            RangeSet.ranges.getter();
            v183 = v221;
            if (dispatch thunk of Collection.isEmpty.getter())
            {
              v198(v181, v183);
              v163(v170, v182);
              v159 = 0;
            }

            else
            {
              dispatch thunk of Collection.endIndex.getter();
              dispatch thunk of BidirectionalCollection.index(before:)();
              v184 = dispatch thunk of Collection.subscript.read();
              v186 = *(v185 + 8);
              v184(&v224, 0);
              v198(v181, v183);
              v163(v170, v182);
              v159 = v196 < v186;
            }

            v127 = v182;
            v158 = v217;
          }

          v125 = v206;
          v187 = v210;
          v70 = &v206[v210];
          outlined destroy of Text.Effect.SegmentInteraction.Element(v213, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          outlined destroy of Text.Effect.SegmentInteraction.Element(v211, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if (v159)
          {
            break;
          }

          v128 = v218;
          if (v187 < v215 || v70 >= v215)
          {
            swift_arrayInitWithTakeFrontToBack();
            v130 = v158;
          }

          else
          {
            v188 = v187 == v215;
            v130 = v158;
            if (!v188)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v126 = v128;
          v129 = v207;
          v40 = v200;
          if (v218 <= v216)
          {
            a2 = v207;
            goto LABEL_116;
          }
        }

        if (v187 < v207 || v70 >= v207)
        {
          a2 = v158;
          swift_arrayInitWithTakeFrontToBack();
          v128 = v199;
          v126 = v215;
        }

        else
        {
          v188 = v187 == v207;
          v128 = v199;
          v126 = v215;
          a2 = v158;
          if (!v188)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v200;
      }

      while (v126 > v216);
    }

LABEL_116:
    v231 = a2;
    v225 = v128;
  }

  else
  {
    v65 = v63 * v210;
    v66 = v216;
    if (v216 < a1 || a1 + v65 <= v216)
    {
      swift_arrayInitWithTakeFrontToBack();
      v67 = v220;
    }

    else
    {
      v67 = v220;
      if (v216 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v211 = v66 + v65;
    v225 = v66 + v65;
    if (v65 >= 1 && a2 < v209)
    {
      v213 = (v217 + 8);
      v212 = (v36 + 8);
      v194 = v22;
      while (1)
      {
        v71 = v215;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(a2, v215, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v66, v218, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v72 = v71;
        v73 = v208;
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v72, v208, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v74 = swift_getEnumCaseMultiPayload();
        v217 = a2;
        if (v74)
        {
          if (v74 == 1)
          {
            v77 = v73;
            v78 = v201;
            outlined init with take of Text.Effect.InteractionMetrics(v77, v201, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v78, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          }

          else
          {
            v216 = v66;
            v88 = a1;
            v89 = v200;
            v90 = outlined init with take of Text.Effect.InteractionMetrics(v73, v200, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v91 = v89 + *(v203 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v90, v92, v93);
            RangeSet.init()();
            v94 = *(v91 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v95 = *(v94 + 16);
            if (v95)
            {
              v96 = v94 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
              v97 = *(v197 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v96, v25, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v91, v45);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v25, type metadata accessor for Text.Effect.Composition.Operation);
                v96 += v97;
                --v95;
              }

              while (v95);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v200, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            a1 = v88;
            v66 = v216;
            v67 = v220;
          }
        }

        else
        {
          v216 = v66;
          v214 = a1;
          v79 = *v73;
          v80 = v73[1];
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v74, v75, v76);
          RangeSet.init()();
          v81 = *(v79 + 16);
          v205 = v80;
          if (v81)
          {
            v82 = *(type metadata accessor for Text.Layout.Line() - 8);
            v83 = v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
            v84 = *(v82 + 72);

            while (1)
            {
              v85 = Text.Layout.Line.characterRange.getter();
              v222 = v85;
              v223 = v86;
              if (__OFSUB__(v86, v85))
              {
                break;
              }

              if (v86 != v85)
              {
                v87 = RangeSet._ranges.modify();
                RangeSet.Ranges._insert(contentsOf:)();
                v87(&v224, 0);
                v67 = v220;
              }

              v83 += v84;
              if (!--v81)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_33:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          a1 = v214;
          v66 = v216;
        }

        v98 = v206;
        RangeSet.ranges.getter();
        lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
        v99 = v221;
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          break;
        }

        dispatch thunk of Collection.endIndex.getter();
        v198 = lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v100 = dispatch thunk of Collection.subscript.read();
        v199 = *(v101 + 8);
        v100(&v224, 0);
        v204 = *v213;
        (v204)(v98, v99);
        v205 = *v212;
        (v205)(v45, v67);
        outlined init with copy of Text.Effect.SegmentInteraction.Element(v218, v207, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v102 = swift_getEnumCaseMultiPayload();
        v214 = a1;
        if (v102)
        {
          v105 = v194;
          v106 = v195;
          if (v102 == 1)
          {
            v107 = v201;
            outlined init with take of Text.Effect.InteractionMetrics(v207, v201, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            Text.Layout.Line.characterRanges(runIndices:)();
            outlined destroy of Text.Effect.SegmentInteraction.Element(v107, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
          }

          else
          {
            v216 = v66;
            v109 = v193;
            v110 = outlined init with take of Text.Effect.InteractionMetrics(v207, v193, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v111 = v109 + *(v203 + 24);
            lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v110, v112, v113);
            RangeSet.init()();
            v114 = *(v111 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v115 = *(v114 + 16);
            if (v115)
            {
              v116 = v114 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
              v117 = *(v197 + 72);
              do
              {
                outlined init with copy of Text.Effect.SegmentInteraction.Element(v116, v105, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v111, v106);
                outlined destroy of Text.Effect.SegmentInteraction.Element(v105, type metadata accessor for Text.Effect.Composition.Operation);
                v116 += v117;
                --v115;
              }

              while (v115);
            }

            outlined destroy of Text.Effect.SegmentInteraction.Element(v193, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v66 = v216;
            v67 = v220;
            v99 = v221;
          }
        }

        else
        {
          v108 = *(v207 + 16);
          v227 = *v207;
          v228 = v108;
          v229 = *(v207 + 32);
          v230 = *(v207 + 48);
          v106 = v195;
          Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter(v102, v103, v104);
          outlined destroy of Text.Effect.RenderSegmentation.StaticLines(&v227);
        }

        v118 = v196;
        RangeSet.ranges.getter();
        if (dispatch thunk of Collection.isEmpty.getter())
        {
          (v204)(v118, v99);
          (v205)(v106, v67);
          a1 = v214;
          goto LABEL_46;
        }

        dispatch thunk of Collection.endIndex.getter();
        dispatch thunk of BidirectionalCollection.index(before:)();
        v120 = dispatch thunk of Collection.subscript.read();
        v122 = *(v121 + 8);
        v120(&v224, 0);
        (v204)(v118, v99);
        (v205)(v106, v67);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v218, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.SegmentInteraction.Element(v215, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v123 = v199 < v122;
        a2 = v217;
        a1 = v214;
        v119 = v210;
        if (v123)
        {
          if (v214 < v217 || v214 >= v217 + v210)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v214 != v217)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v119;
          goto LABEL_53;
        }

LABEL_47:
        if (a1 < v66 || a1 >= v66 + v119)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v66)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v226 = v66 + v119;
        v66 += v119;
LABEL_53:
        a1 += v119;
        v231 = a1;
        if (v66 >= v211 || a2 >= v209)
        {
          goto LABEL_117;
        }
      }

      (*v213)(v98, v99);
      (*v212)(v45, v67);
LABEL_46:
      outlined destroy of Text.Effect.SegmentInteraction.Element(v218, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v215, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      a2 = v217;
      v119 = v210;
      goto LABEL_47;
    }
  }

LABEL_117:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v231, &v226, &v225);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized Text.Effect.SegmentInteraction.isEndOfFragment(for:range:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v36 = a3;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  type metadata accessor for Text.Effect.InteractionMetrics?(0, &lazy cache variable for type metadata for Text.Effect.RenderSegmentation.Segment?, type metadata accessor for Text.Effect.RenderSegmentation.Segment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.trailingSegment.getter(a4, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of Text.Effect.InteractionMetrics?(v18, &lazy cache variable for type metadata for Text.Effect.RenderSegmentation.Segment?, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    return 0;
  }

  result = outlined init with take of Text.Effect.InteractionMetrics(v18, v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(a4 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v15);
  v24 = Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v12);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v24, v25, v26);
  v27 = static RangeSet.== infix(_:_:)();
  v28 = *(v8 + 8);
  v28(v12, v7);
  v28(v15, v7);
  if ((v27 & 1) == 0)
  {
    outlined destroy of Text.Effect.SegmentInteraction.Element(v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    return 0;
  }

  v29 = v37;
  Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v37);
  v30 = specialized RangeSet.upperBound.getter();
  v32 = v31;
  v28(v29, v7);
  outlined destroy of Text.Effect.SegmentInteraction.Element(v22, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  if (v32)
  {
    return 0;
  }

  return v30 <= v35 && v30 < v36;
}

BOOL specialized Text.Effect.SegmentInteraction.matches(range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v20 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = a3;
  v21 = *(a3 + 16);
  v16 = (v7 + 8);
  do
  {
    v17 = v14;
    if (v21 == v14)
    {
      break;
    }

    outlined init with copy of Text.Effect.SegmentInteraction.Element(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v9);
    if (specialized RangeSet.overlaps(_:)(a1, a2))
    {
      (*v16)(v9, v20);
      outlined destroy of Text.Effect.SegmentInteraction.Element(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      return v21 != v17;
    }

    ++v14;
    v18 = specialized RangeSet.contains(_:)(a1, a2);
    (*v16)(v9, v20);
    outlined destroy of Text.Effect.SegmentInteraction.Element(v13, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  }

  while (!v18);
  return v21 != v17;
}

uint64_t outlined init with copy of Text.Effect.SegmentInteraction.Element(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Text.Effect.InteractionMetrics?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Text.Effect.InteractionMetrics?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Text.Effect.InteractionMetrics?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Text.Effect.InteractionMetrics?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Text.Effect.InteractionMetrics?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Text.Effect.SegmentInteraction.Element(uint64_t a1)
{
  type metadata accessor for Text.Effect.RenderSegmentation.Segment(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Text.Effect.RangeCoordinateSpace(uint64_t a1)
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
  if (v1 <= 0x3F)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(319, &lazy cache variable for type metadata for Range<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E66A8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LayoutDirection();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.InteractionMetrics.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.InteractionMetrics.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

double Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(*v3 + 16);
  if (v13)
  {
    v14 = (v12 + 88);
    for (i = *(*v3 + 16); i; --i)
    {
      v18 = *(v14 - 7);
      v17 = *(v14 - 6);
      if (a2 == 2)
      {
        if (v18 <= a1 && v17 >= a1)
        {
          result = *(v14 - 5);
          return result - *v14 + v14[4];
        }
      }

      else if (v18 <= a1 && v17 > a1)
      {
        result = *(v14 - 5);
        if (a2 - 1 > 1)
        {
          return result;
        }

        return result - *v14 + v14[4];
      }

      v14 += 12;
    }
  }

  (*(v8 + 16))(v11, a3, v7, v9);
  v21 = (*(v8 + 88))(v11, v7);
  if (v21 != *MEMORY[0x1E697E7D0])
  {
    if (v21 == *MEMORY[0x1E697E7D8])
    {
      if (v13)
      {
        return *(v12 + 48);
      }

      else
      {
        return *(v3 + *(type metadata accessor for Text.Effect.InteractionMetrics(0) + 28));
      }
    }

    (*(v8 + 8))(v11, v7);
  }

  v22 = (v3 + *(type metadata accessor for Text.Effect.InteractionMetrics(0) + 28));
  result = *v22;
  if (*v22 == 0.0 && v22[1] == 0.0)
  {
    v23 = *(v12 + 16);
    if (v23)
    {
      return *(v12 + 96 * v23 - 48);
    }
  }

  return result;
}

CGPoint __swiftcall Text.Effect.InteractionMetrics.displacedPoint(from:activeOrigin:)(CGPoint from, CGPoint activeOrigin)
{
  y = from.y;
  x = from.x;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = activeOrigin.y;
    v8 = activeOrigin.x;
    v9 = 0;
    v10 = (v5 + 120);
    while (1)
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);
        return from;
      }

      v11 = *(v10 - 9);
      v12 = *v10;
      v13 = *(v10 - 4);
      v14 = *(v10 - 2) + *(v10 - 3);
      v26.origin.x = v8;
      v26.origin.y = v7;
      v26.size.width = *v10;
      v26.size.height = v14;
      v25.x = x;
      v25.y = y;
      if (CGRectContainsPoint(v26, v25))
      {
        break;
      }

      ++v9;
      v8 = v8 + v12;
      v10 += 12;
      if (v6 == v9)
      {
        goto LABEL_6;
      }
    }

    v27.origin.x = v8;
    v27.origin.y = v7;
    v27.size.width = v12;
    v27.size.height = v14;
    v22 = x - CGRectGetMinX(v27);
    v28.origin.x = v8;
    v28.origin.y = v7;
    v28.size.width = v12;
    v28.size.height = v14;
    v20 = v22 / CGRectGetWidth(v28);
    if (v20 >= 0.0 && v20 <= 1.0)
    {
      x = v13 * v20 + x - v11 - v12 * v20;
      goto LABEL_8;
    }

    type metadata accessor for [Text.Effect.InteractionMetrics.Element](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_195CC8D00;
    _StringGuts.grow(_:)(38);

    v16 = 0x8000000195CDF220;
    v17 = 0xD000000000000011;
  }

  else
  {
LABEL_6:
    type metadata accessor for [Text.Effect.InteractionMetrics.Element](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_195CC8D00;
    _StringGuts.grow(_:)(38);

    v16 = 0x8000000195CDF240;
    v17 = 0xD00000000000001BLL;
  }

  v23 = v17;
  v24 = v16;
  v18 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v18);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v19);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 32) = v23;
  *(v15 + 40) = v24;
  print(_:separator:terminator:)();

LABEL_8:
  from.x = x;
  from.y = y;
  return from;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.FlatPath.Elements(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + v3 + 32);
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance Text.Effect.FlatPath.Elements(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }
}