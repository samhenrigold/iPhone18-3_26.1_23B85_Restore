char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _ss23_ContiguousArrayStorageCySiGMaTm_0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, &type metadata for TextEffectsAnimationController.Timing);
  v43 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 120 * v20;
      if (v43)
      {
        v24 = *v22;
        v23 = *(v22 + 8);
        v47 = *(v22 + 16);
        v25 = *(v22 + 24);
        v45 = *(v22 + 40);
        v46 = *(v22 + 25);
        v48 = *(v22 + 48);
        v49 = *(v22 + 64);
        v26 = *(v22 + 80);
        v52 = *(v22 + 96);
        v53 = *(v22 + 88);
        v50 = *(v22 + 32);
        v51 = *(v22 + 104);
        v44 = *(v22 + 112);
      }

      else
      {
        v28 = *(v22 + 32);
        v27 = *(v22 + 48);
        v29 = *v22;
        v56 = *(v22 + 16);
        v57 = v28;
        v55 = v29;
        v31 = *(v22 + 80);
        v30 = *(v22 + 96);
        v32 = *(v22 + 64);
        v62 = *(v22 + 112);
        v60 = v31;
        v61 = v30;
        v58 = v27;
        v59 = v32;
        v52 = v30;
        v53 = *(&v31 + 1);
        v44 = v62;
        v26 = v31;
        v48 = v27;
        v49 = v32;
        v50 = v57;
        v51 = *(&v30 + 1);
        v45 = BYTE8(v57);
        v46 = BYTE9(v56);
        v47 = v56;
        v25 = BYTE8(v56);
        v23 = *(&v55 + 1);
        v24 = v55;
        outlined init with copy of TextEffectsAnimationController.Timing(&v55, v54);
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      v33 = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v55) = v25;
      v54[0] = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 120 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v47;
      *(v16 + 24) = v25;
      *(v16 + 25) = v46;
      *(v16 + 32) = v50;
      *(v16 + 40) = v45;
      *(v16 + 48) = v48;
      *(v16 + 64) = v49;
      *(v16 + 80) = v26;
      *(v16 + 88) = v53;
      *(v16 + 96) = v52;
      *(v16 + 104) = v51;
      *(v16 + 112) = v44;
      ++*(v7 + 16);
      v5 = v42;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E7560]);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Double, Text.Effect.BaseFragment>, MEMORY[0x1E69E63B0], &type metadata for Text.Effect.BaseFragment, MEMORY[0x1E69E63D0]);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v41 = *(v22 + 32);
      v40 = *(v22 + 48);
      if ((v39 & 1) == 0)
      {
      }

      if (v21 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v21;
      }

      v28 = MEMORY[0x19A8BDE40](*(v7 + 40), *&v27);
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      *(v16 + 32) = v41;
      *(v16 + 48) = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>, lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex, &type metadata for Text.Effect.GlyphIndex, MEMORY[0x1E69E7560]);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Int>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E7560]);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>, type metadata accessor for Text.Effect.AttributeTracker.AnyValue, lazy protocol witness table accessor for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key, &type metadata for Text.Effect.AttributeTracker.Key);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_38;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v2;
        if (v36 >= 64)
        {
          bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v41 = *(v23 + 24);
      v43 = *(v23 + 32);
      v40 = *(v23 + 40);
      v42 = *(v23 + 48);
      v27 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v39 = v27;
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v24);
      MEMORY[0x19A8BDE60](v25);
      MEMORY[0x19A8BDE60](v26);
      if (v43)
      {
        Hasher._combine(_:)(0);
        if (!v42)
        {
          goto LABEL_19;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x19A8BDE60](v41);
        if (!v42)
        {
LABEL_19:
          Hasher._combine(_:)(1u);
          MEMORY[0x19A8BDE60](v40);
          goto LABEL_22;
        }
      }

      Hasher._combine(_:)(0);
LABEL_22:
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v16 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v16 = v39;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 56 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v41;
      *(v17 + 32) = v43;
      *(v17 + 40) = v40;
      *(v17 + 48) = v42;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v37;
    }
  }

LABEL_38:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<TextRenderLayer.SegmentIdentifierKey, Text.Effect.InteractionMetrics>(0);
  v37 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        outlined init with take of Text.Effect.InteractionMetrics(v24, v38);
      }

      else
      {
        outlined init with copy of Text.Effect.InteractionMetrics(v24, v38);
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v22);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      outlined init with take of Text.Effect.InteractionMetrics(v38, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Key, Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.Key and conformance Text.Effect.Key, &type metadata for Text.Effect.Key, &type metadata for Text.Effect.KeyframeLayout);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v25);
      (*(*v24 + 88))(v40);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v25;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>(0);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v20);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>, type metadata accessor for AnyTextEffect);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>, type metadata accessor for AnyTextAnimation);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>, type metadata accessor for Text.Effect.AnyLayoutState);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.Drawable);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>, MEMORY[0x1E69E6530], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6540]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = MEMORY[0x19A8BDE40](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.RelativeIdentifierKey, CGFloat>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E7DE0]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      MEMORY[0x19A8BDE60](v23);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, FragmentIdentifierOffsetMap.Entry>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, &type metadata for FragmentIdentifierOffsetMap.Entry);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = v22[1];
      v36 = v22[2];
      v24 = *v22;
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v5 = v35;
      v16[2] = v36;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>, type metadata accessor for Text.Effect.AnyStateSnapshot);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.BasePhaseConfiguration>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, &type metadata for Text.Effect.BasePhaseConfiguration);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, a3, a4, a5, MEMORY[0x1E69E6530]);
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v8;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      Hasher.init(_seed:)();
      a6(v24);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_31;
    }

    v34 = 1 << *(v9 + 32);
    v7 = v6;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_31:
  *v7 = v11;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, a3, a4, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, a3, a4, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier);
  v34 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
        v24 = v23;
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v4;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v32 = v5;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v3;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + 120 * result;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    *(v21 + 32) = a1[2];
    *(v21 + 48) = v24;
    *v21 = v22;
    *(v21 + 16) = v23;
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[6];
    *(v21 + 112) = *(a1 + 112);
    *(v21 + 80) = v26;
    *(v21 + 96) = v27;
    *(v21 + 64) = v25;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 120 * result;

  return outlined assign with take of TextEffectsAnimationController.Timing(a1, v20);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>, type metadata accessor for Text.Effect.AnyAnimationInfo);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = v19[6] + 56 * v9;
    v21 = *(a2 + 16);
    *v20 = *a2;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a2 + 32);
    *(v20 + 48) = *(a2 + 48);
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    v21 = v19[7] + 56 * result;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    *(v21 + 48) = *(a1 + 6);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 56 * result;

  return outlined assign with take of Text.Effect.BaseFragment(a1, v20);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for Text.Effect.InteractionMetrics(0) - 8) + 72) * v10;

    return outlined assign with take of Text.Effect.InteractionMetrics(a1, v18);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = v23[7] + 16 * v13;
  *v26 = a1;
  *(v26 + 8) = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>, type metadata accessor for AnyTextAnimation);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>, type metadata accessor for AnyTextEffect);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v10 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a3 & 1) != 0)
  {
LABEL_8:
    v25 = *v10;
    if (v21)
    {
      *(v25[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a2;
    *(v25[7] + 8 * result) = a1;
    v26 = v25[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      v25[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    v23 = result;
    a4();
    result = v23;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, a5, a6);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v21 & 1) == (v24 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>, type metadata accessor for Text.Effect.AnyStateSnapshot);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>, type metadata accessor for TextAnimator);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
    *(v21[7] + 8 * result) = a4;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a1;
      v24[1] = a2;
      v24[2] = a3;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 120 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  *(v4 + 112) = *(a3 + 112);
  v7 = *(a3 + 96);
  *(v4 + 80) = *(a3 + 80);
  *(v4 + 96) = v7;
  *(v4 + 64) = *(a3 + 64);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  result = outlined init with take of Text.Effect.InteractionMetrics(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *specialized TextFilterEffect.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  LODWORD(v51) = a8;
  v52 = a7;
  v54 = a5;
  v55 = a6;
  v56 = a1;
  v16 = *v12;
  v17 = *(*(*v12 + 128) + 8);
  v18 = *(*v12 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = v45 - v20;
  v22 = type metadata accessor for Text.Effect.DrawableContent(0, v18, v17, v21);
  v46 = *(v22 - 8);
  v47 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - v23;
  v25 = *(v16 + 152);
  type metadata accessor for Text.Effect.AttributeTracker();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CC8];
  *(v26 + 16) = MEMORY[0x1E69E7CC8];
  *(v26 + 24) = v27;
  *(v26 + 32) = 0;
  *(v26 + 40) = v27;
  *(v26 + 48) = 0;
  *(v26 + 56) = MEMORY[0x1E69E7CD0];
  v57 = v12;
  *&v12[v25] = v26;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, v18, v17, v28);
  v29 = (*(v17 + 128))(v18, v17);
  v30 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v29);
  v31 = Text.Effect.Keyframes.subscript.getter(a2, v30, a11);
  if (!v31)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v32 = v31;
  v45[2] = a9;
  v53 = a12;
  Text.Effect.BaseContext.content<A>(for:key:)(v18, a2, v30, a9, a10, a11);
  v33 = *(v17 + 136);
  v34 = v48;
  v35 = v52;
  v52 = v18;
  v33(v24, a3, a4, v54, v55, v35, v51 & 1);
  (*(v49 + 4))(&v57[*(*v57 + 144)], v34, v50);
  v36 = *(v32 + 16);
  if (v36)
  {
    v45[1] = v30;
    v48 = a11;
    v49 = v24;
    v50 = a3;
    v51 = a4;
    v58 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v58;
    v38 = *(v32 + 16);
    v39 = *(v58 + 16);
    v40 = 32;
    v41 = v52;
    while (1)
    {
      v42 = *(*(*(v32 + v40) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v58 = v37;
      v43 = *(v37 + 24);
      if (v39 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v39 + 1, 1);
        v37 = v58;
      }

      *(v37 + 16) = v39 + 1;
      *(v37 + 8 * v39 + 32) = v42;
      if (!v38)
      {
        break;
      }

      --v38;
      v40 += 8;
      ++v39;
      if (!--v36)
      {

        (*(*(v41 - 8) + 8))(v56, v41);
        (*(v46 + 8))(v49, v47);

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  (*(*(v52 - 8) + 8))(v56);
  (*(v46 + 8))(v24, v47);
  v37 = MEMORY[0x1E69E7CC0];
LABEL_10:
  result = v57;
  *(v57 + 2) = v37;
  return result;
}

void *specialized TextFilterEffect.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for TextFilterEffect.AnimationInfo(0, a13, a14, a4);
  swift_allocObject();
  return specialized TextFilterEffect.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v41 = a8;
  v40 = a7;
  v43 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v42 = a1;
  v12 = *MEMORY[0x1E69E7D40] & *v11;
  v13 = *(v12 + 0xE8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v18 = *&v11[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  if (*(*(a11 + 80) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v18), (v19 & 1) != 0))
  {
    swift_endAccess();
    v20 = *(v12 + 240);
  }

  else
  {
    v31 = v18;
    v36 = a9;
    swift_endAccess();
    (*(v14 + 16))(v16, &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0xF8)], v13);
    v35 = *&v11[v17];
    v20 = *(v12 + 240);
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v33 = v23;
    v34 = v22;
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v25 = v24;
    v32 = v26;

    v27 = v41;

    v28 = specialized TextFilterEffect.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(v16, v35, v34, v33, v25, v32, v43, v40 & 1, v27, v36, a10, a11, v13, v20);
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

  type metadata accessor for TextFilterEffect.AnimationInfo(0, v13, v20, v21);
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized TextFilterEffect.defaultDrawingState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 8);
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, a1, v5, a4);
  v6 = (*(v5 + 128))(a1, v5);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v6);
}

uint64_t outlined assign with take of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = type metadata accessor for _DictionaryStorage();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[Path?]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[Path?]>)
  {
    type metadata accessor for _ContiguousArrayStorage<[Path]>(255, &lazy cache variable for type metadata for [Path?], &lazy cache variable for type metadata for Path?, MEMORY[0x1E69E6720], MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Path?]>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[Path]>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _ss23_ContiguousArrayStorageCySiGMaTm_0(255, a3, MEMORY[0x1E6980F80], a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void Text.Effect.BaseFragment.typographicBounds(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Text.Layout.Line();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Layout.RunSlice();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Text.Layout.Cluster();
  v74 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v80 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 48);
  v20 = __OFSUB__(a1, v19);
  v21 = a1 - v19;
  if (v20)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v22 = v10;
  v23 = a2 - v19;
  if (__OFSUB__(a2, v19))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v23 < v21)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v21 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v71 = *(v3 + 24);
  v24 = *(v71 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v25 = *(v24 + 16);
  if (v25 < v21 || v25 < v23)
  {
    goto LABEL_54;
  }

  if (v21 != v23)
  {
    v69 = v7;
    v70 = a3;
    v33 = v74;
    v79 = v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v78 = v74 + 16;
    v77 = v74 + 8;
    v83 = (v22 + 16);
    v34 = (v22 + 8);
    v68[1] = v24;

    LODWORD(v84) = 1;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v76 = v23;
    while (v21 < v23)
    {
      v35 = *(v33 + 72);
      v82 = v21;
      v36 = v79 + v35 * v21;
      v37 = *(v33 + 16);
      v38 = v80;
      v37(v80, v36, v16);
      v37(v15, v38, v16);
      v39 = *(v81 + 36);
      lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
      dispatch thunk of Collection.startIndex.getter();
      (*(v33 + 8))(v38, v16);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v15[v39] != v88[0])
      {
        v85 = v32;
        v75 = v31;
        v86 = v29;
        v87 = v28;
        v40 = dispatch thunk of Collection.subscript.read();
        v41 = *v83;
        (*v83)(v12);
        v40(v88, 0);
        dispatch thunk of Collection.formIndex(after:)();
        Text.Layout.RunSlice.typographicBounds.getter();
        v42 = *v34;
        (*v34)(v12, v9);
        v43 = v89;
        v45 = v91;
        v44 = v92;
        v46 = v90 - v92;
        v47 = v93;
        v95.origin.x = v89;
        v95.origin.y = v90 - v92;
        v95.size.width = v91;
        v95.size.height = v92 + v93;
        MinX = CGRectGetMinX(v95);
        v96.origin.x = v43;
        v96.origin.y = v46;
        v96.size.width = v45;
        v96.size.height = v44 + v47;
        MaxX = CGRectGetMaxX(v96);
        if (MinX > MaxX)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          break;
        }

        if (LOBYTE(v84))
        {
          v31 = MinX;
          v32 = MaxX;
        }

        else
        {
          v31 = v75;
          if (MinX < v75)
          {
            v31 = MinX;
          }

          v32 = v85;
          if (MaxX >= v85)
          {
            v32 = MaxX;
          }

          if (v31 > v32)
          {
            goto LABEL_48;
          }
        }

        if (v30 <= v44)
        {
          v30 = v44;
        }

        v29 = v86;
        if (v86 <= v47)
        {
          v29 = v47;
        }

        while (1)
        {
          v28 = v87;
          if (v87 <= v94)
          {
            v28 = v94;
          }

          dispatch thunk of Collection.endIndex.getter();
          if (*&v15[v39] == v88[0])
          {
            break;
          }

          v85 = v32;
          v84 = v30;
          v86 = v29;
          v87 = v28;
          v50 = dispatch thunk of Collection.subscript.read();
          v41(v12);
          v50(v88, 0);
          dispatch thunk of Collection.formIndex(after:)();
          Text.Layout.RunSlice.typographicBounds.getter();
          v42(v12, v9);
          v51 = v89;
          v52 = v91;
          v53 = v92;
          v54 = v90 - v92;
          v55 = v93;
          v97.origin.x = v89;
          v97.origin.y = v90 - v92;
          v97.size.width = v91;
          v97.size.height = v92 + v93;
          v56 = CGRectGetMinX(v97);
          v98.origin.x = v51;
          v98.origin.y = v54;
          v98.size.width = v52;
          v98.size.height = v53 + v55;
          v57 = CGRectGetMaxX(v98);
          if (v56 > v57)
          {
            goto LABEL_47;
          }

          if (v56 < v31)
          {
            v31 = v56;
          }

          v32 = v85;
          if (v57 >= v85)
          {
            v32 = v57;
          }

          v30 = v84;
          if (v31 > v32)
          {
            goto LABEL_48;
          }

          if (v84 <= v53)
          {
            v30 = v53;
          }

          v29 = v86;
          if (v86 <= v55)
          {
            v29 = v55;
          }
        }

        LODWORD(v84) = 0;
        v33 = v74;
      }

      v21 = v82 + 1;
      outlined destroy of IndexingIterator<Text.Layout.Cluster>(v15);
      v23 = v76;
      if (v21 == v76)
      {

        a3 = v70;
        v7 = v69;
        v27 = LOBYTE(v84);
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v27 = 1;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
LABEL_43:
  v58 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
  v59 = v73;
  v60 = *(v73 + 16);
  v61 = v71;
  v62 = v72;
  v60(v72, v71 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v7, v17);
  Text.Layout.Line.origin.getter();
  v64 = v63;
  v65 = *(v59 + 8);
  v65(v62, v7);
  if (v27)
  {
    (v60)(v62, v61 + v58, v7);
    Text.Layout.Line.origin.getter();
    v31 = v66;
    v65(v62, v7);
    v67 = 0.0;
  }

  else
  {
    v67 = v32 - v31;
  }

  *a3 = v31;
  *(a3 + 8) = v64;
  *(a3 + 16) = v67;
  *(a3 + 24) = v30;
  *(a3 + 32) = v29;
  *(a3 + 40) = v28;
}

void Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = Text.Effect.Keyframes.subscript.getter(a2, a3, a1);
  if (!v10)
  {
    goto LABEL_12;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v11 = *(v10 + 16);
  if (v11 > a4)
  {
    v12 = (v10 + 32);
    v13 = *(v10 + 32 + 8 * a4);
    v14 = 0;
    if (!a4)
    {
LABEL_8:

      *a5 = a1;
      a5[1] = a2;
      a5[2] = a3;
      a5[3] = v13;
      a5[4] = a4;
      a5[5] = v11;
      a5[6] = v14;
      return;
    }

    v15 = a4;
    while (1)
    {
      v16 = *(*(*v12 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      ++v12;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
LABEL_12:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void Text.Effect.BaseFragment.onlyEmojis.getter()
{
  v1 = type metadata accessor for Text.Layout.Run();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.RunSlice();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Layout.Cluster();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = *(*(v0 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v19 = *(v18 + 16);
  if (v19)
  {
    v44 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v43 = v13 + 16;
    v49 = "port.TextFilterEffect";
    v51 = (v5 + 16);
    v52 = v53 + 1;
    v53 = (v5 + 8);
    v45 = (v13 + 8);

    v21 = 0;
    v40 = v13;
    v41 = v9;
    v46 = v20;
    v47 = v17;
    v39 = v19;
    while (2)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
      }

      else
      {
        v22 = v44 + *(v13 + 72) * v21;
        v23 = *(v13 + 16);
        v24 = v21;
        v23(v17, v22, v12);
        v42 = v24 + 1;
        v23(v48, v17, v12);
        v25 = MEMORY[0x1E6981078];
        lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981080]);
        dispatch thunk of Sequence.makeIterator()();
        v26 = *(v9 + 36);
        lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, v25, MEMORY[0x1E6981088]);
        v50 = v26;
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*&v11[v26] == v55[0])
          {
            break;
          }

          v27 = dispatch thunk of Collection.subscript.read();
          (*v51)(v7);
          v27(v55, 0);
          dispatch thunk of Collection.formIndex(after:)();
          Text.Layout.RunSlice.run.getter();
          v28 = Text.Layout.Run.font.getter();
          if (!v28)
          {

            (*v52)(v3, v54);
            (*v53)(v7, v4);
            goto LABEL_13;
          }

          v29 = v28;
          v30 = v11;
          v31 = v12;
          v32 = v7;
          v33 = v3;
          v34 = v4;
          v35 = CTFontCopyPostScriptName(v28);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v4 = v34;
          v3 = v33;
          v7 = v32;
          v12 = v31;
          v11 = v30;
          v36._object = (v49 | 0x8000000000000000);
          v36._countAndFlagsBits = 0xD000000000000010;
          v37 = String.hasPrefix(_:)(v36);

          v26 = v50;

          (*v52)(v3, v54);
          (*v53)(v7, v4);
          if (!v37)
          {

LABEL_13:
            outlined destroy of IndexingIterator<Text.Layout.Cluster>(v11);
            (*v45)(v47, v12);
            return;
          }
        }

        outlined destroy of IndexingIterator<Text.Layout.Cluster>(v11);
        v17 = v47;
        (*v45)(v47, v12);
        v13 = v40;
        v9 = v41;
        v21 = v42;
        v20 = v46;
        if (v42 != v39)
        {
          continue;
        }
      }

      break;
    }
  }
}

double Text.Effect.DrawableFragment.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  v7 = specialized Text.Effect.Key.key<A>(for:state:)(*(a2 + 16), a1, v5, *(a2 + 16), *(a2 + 24));
  v9 = v8;

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(v10, v7, v9, v6, v13);
  v11 = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = v11;
  result = *&v14;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  return result;
}

double Text.Effect.DrawableFragment.lineBreakingFragment.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v5 + 120))(v4, v5, v8);
  v11 = Text.Effect.DrawableFragment.subscript.getter(v10, a1, v15);
  (*(v7 + 8))(v10, AssociatedTypeWitness, v11);
  v12 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v12;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t Text.Effect.DrawableFragment.range.getter()
{
  result = *(v0 + 48);
  v2 = *(*(*(v0 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
  if (__OFADD__(result, v2))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result + v2 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void Text.Effect.DrawableFragment.typographicBounds(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (v2 >= a1)
  {
    Text.Effect.BaseFragment.typographicBounds(for:)(a1, v2, v5);
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
    a2[2] = v5[2];
    return;
  }

  __break(1u);
}

uint64_t Text.Effect.DrawableFragment.baseWritingDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Text.Layout.Line();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(v1 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v3, v5);
  Text.Layout.Line.baseWritingDirection.getter(a1);
  return (*(v4 + 8))(v7, v3);
}

double Text.Effect.DrawableFragment.defaultDrawingFragment.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v5 + 128))(v4, v5, v8);
  v11 = Text.Effect.DrawableFragment.subscript.getter(v10, a1, v15);
  (*(v7 + 8))(v10, AssociatedTypeWitness, v11);
  v12 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v12;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

void Text.Layout.Cluster.typographicBounds(with:)(uint64_t a1@<X0>, double *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v3 = type metadata accessor for Text.Layout.RunSlice();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = *(v8 + 44);
  lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  MinX = 0.0;
  v17 = 0.0;
  v43 = *&v10[v12];
  v42 = v51[0];
  if (v43 == v51[0])
  {
LABEL_2:
    outlined destroy of IndexingIterator<Text.Layout.Cluster>(v10);
    Text.Layout.Line.origin.getter();
    v19 = v18;
    if (v43 == v42)
    {
      Text.Layout.Line.origin.getter();
      MinX = v20;
      v21 = 0.0;
    }

    else
    {
      v21 = v17 - MinX;
    }

    v39 = v45;
    *v45 = MinX;
    *(v39 + 1) = v19;
    v39[2] = v21;
    v39[3] = v15;
    v39[4] = v14;
    v39[5] = v13;
    return;
  }

  v22 = dispatch thunk of Collection.subscript.read();
  v41 = *(v4 + 16);
  v41(v6);
  v22(v51, 0);
  dispatch thunk of Collection.formIndex(after:)();
  Text.Layout.RunSlice.typographicBounds.getter();
  v23 = *(v4 + 8);
  v46 = v4 + 8;
  v23(v6, v3);
  v24 = v41;
  v25 = v52;
  v27 = v54;
  v26 = v55;
  v28 = v53 - v55;
  v29 = v56;
  v58.origin.x = v52;
  v58.origin.y = v53 - v55;
  v58.size.width = v54;
  v58.size.height = v55 + v56;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v25;
  v59.origin.y = v28;
  v59.size.width = v27;
  v59.size.height = v26 + v29;
  MaxX = CGRectGetMaxX(v59);
  if (MinX <= MaxX)
  {
    v17 = MaxX;
    if (v26 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v26;
    }

    if (v29 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v29;
    }

    if (v57 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v57;
    }

    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v10[v12] == v51[0])
      {
        goto LABEL_2;
      }

      v50 = v17;
      v47 = v15;
      v48 = v14;
      v49 = v13;
      v31 = dispatch thunk of Collection.subscript.read();
      v24(v6);
      v31(v51, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Text.Layout.RunSlice.typographicBounds.getter();
      v23(v6, v3);
      v32 = v52;
      v33 = v54;
      v34 = v55;
      v35 = v53 - v55;
      v36 = v56;
      v60.origin.x = v52;
      v60.origin.y = v53 - v55;
      v60.size.width = v54;
      v60.size.height = v55 + v56;
      v37 = CGRectGetMinX(v60);
      v61.origin.x = v32;
      v61.origin.y = v35;
      v61.size.width = v33;
      v17 = v50;
      v61.size.height = v34 + v36;
      v38 = CGRectGetMaxX(v61);
      if (v37 > v38)
      {
        break;
      }

      if (v37 < MinX)
      {
        MinX = v37;
      }

      if (v17 <= v38)
      {
        v17 = v38;
      }

      if (MinX > v17)
      {
        goto LABEL_31;
      }

      v15 = v47;
      if (v47 <= v34)
      {
        v15 = v34;
      }

      v14 = v48;
      if (v48 <= v36)
      {
        v14 = v36;
      }

      v13 = v49;
      if (v49 <= v57)
      {
        v13 = v57;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

BOOL Text.Effect.BaseFragment.coversAllParagraphs.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  v4 = *(v2 + 48);
  v7 = *(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v3), (v6 & 1) != 0) && (*(*(v4 + 56) + 16 * v5 + 8) & 2) == 0;
  swift_endAccess();
  return v7;
}

uint64_t outlined destroy of IndexingIterator<Text.Layout.Cluster>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Text.Effect.BaseFragment.glyphRanges(for:)(uint64_t a1)
{
  v60 = type metadata accessor for Text.Layout.Line();
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v61 = v42 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v55 = v42 - v14;
  v54 = type metadata accessor for Text.Layout.RunSlice();
  v15 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Layout.Cluster();
  v18 = lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  v19 = dispatch thunk of Collection.count.getter();
  if (v19)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v48 = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    v52 = v63;
    v47 = v17;
    v46 = v18;
    dispatch thunk of Collection.startIndex.getter();
    if ((v48 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v21 = *(v59 + 24);
      v64[0] = v21;
      v45 = (v15 + 16);
      v44 = (v5 + 16);
      v58 = (v57 + 2);
      v59 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
      v56 = (v5 + 32);
      ++v57;
      v22 = (v5 + 8);
      v43 = (v15 + 8);
      v42[1] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v42[0] = a1;
      while (1)
      {
        v23 = __OFADD__(v20, 1);
        v24 = v20 + 1;
        if (v23)
        {
          break;
        }

        v49 = v24;
        v25 = dispatch thunk of Collection.subscript.read();
        (*v45)(v53);
        v25(v62, 0);
        v26 = Text.Layout.RunSlice.indices.getter();
        v50 = v27;
        v51 = v26;
        v28 = v55;
        Text.Layout.RunSlice.run.getter();
        (*v44)(v61, v28, v4);
        v29 = *(v21 + 16);

        v30 = 0;
        while (1)
        {
          if (v29 == *(v21 + 24))
          {
            outlined destroy of Text.Effect.KeyframeLayout.Fragment(v64);
            v34 = *v22;
            (*v22)(v61, v4);
            goto LABEL_18;
          }

          v31 = v60;
          (*v58)(v3, v21 + v59, v60);
          Text.Layout.Line.subscript.getter();
          (*v57)(v3, v31);
          if (v29 < *(v21 + 16) || v29 >= *(v21 + 24))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028], MEMORY[0x1E6981030]);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            break;
          }

          ++v29;
          (*v56)(v10, v7, v4);
          lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028], MEMORY[0x1E6981040]);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v33 = dispatch thunk of Collection.distance(from:to:)();
          (*v22)(v10, v4);
          v23 = __OFADD__(v30, v33);
          v30 += v33;
          if (v23)
          {
            goto LABEL_25;
          }
        }

        outlined destroy of Text.Effect.KeyframeLayout.Fragment(v64);
        v34 = *v22;
        (*v22)(v61, v4);
        v34(v7, v4);
LABEL_18:
        v34(v55, v4);
        (*v43)(v53, v54);
        v35 = v51 + v30;
        if (__OFADD__(v51, v30))
        {
          goto LABEL_27;
        }

        v23 = __OFADD__(v50, v30);
        v36 = v50 + v30;
        if (v23)
        {
          goto LABEL_28;
        }

        if (v36 < v35)
        {
          goto LABEL_29;
        }

        v37 = v52;
        v63 = v52;
        v39 = *(v52 + 16);
        v38 = *(v52 + 24);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v52 = v39 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v40 = v52;
          v37 = v63;
        }

        *(v37 + 16) = v40;
        v52 = v37;
        v41 = v37 + 16 * v39;
        *(v41 + 32) = v35;
        *(v41 + 40) = v36;
        dispatch thunk of Collection.formIndex(after:)();
        v20 = v49;
        if (v49 == v48)
        {
          return;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }
}

void Text.Effect.BaseFragment.glyphIndices(for:)(uint64_t a1)
{
  Text.Effect.BaseFragment.glyphRanges(for:)(a1);
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      v6 = (v2 + 32 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      if (*v6 != v7)
      {
        if (v7 < v8)
        {
          goto LABEL_17;
        }

        if (v8 >= v7)
        {
          goto LABEL_18;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v9 = *(v5 + 2);
        do
        {
          v10 = *(v5 + 3);
          if (v9 >= v10 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1, v5);
          }

          *(v5 + 2) = v9 + 1;
          *&v5[8 * v9++ + 32] = v8++;
        }

        while (v7 != v8);
      }

      if (++v4 == v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t type metadata instantiation function for Text.Effect.DrawableFragment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextV0C16AnimationSupportE6EffectO7StopKeyO3key_AF0G9CollectorV7SegmentV7segmentShyAF12ClusterIndexVG7indicestSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall Text.Effect.StopCollector.flushSegment()()
{
  v1 = v0;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    v4 = v0[2];

    outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v3, v2, v4);
    specialized Text.Effect.StopSegment.init(segment:)(v2);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = v1[3];
      v32 = *(v9 + 2);
      v31 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
      }

      *(v9 + 2) = v11 + 1;
      v12 = &v9[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v8;

      v13 = 0;
      v1[3] = v9;
      v33 = v4;
      v14 = v4 + 56;
      v15 = 1 << *(v4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v4 + 56);
      v18 = (v15 + 63) >> 6;
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v4 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v4 >= v18)
            {
              v4 = v33;

              v3 = v31;
              goto LABEL_27;
            }

            v17 = *(v14 + 8 * v4);
            ++v13;
            if (v17)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v4 = v13;
LABEL_16:
        v7 = *(*(v33 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v17)))));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v1[4];
        v8 = v34;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        v22 = v8[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_30;
        }

        v9 = v21;
        if (v8[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v8 = &v34;
            v30 = v20;
            specialized _NativeDictionary.copy()();
            v20 = v30;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
          v8 = v34;
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
          if ((v9 & 1) != (v26 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }
        }

        v17 &= v17 - 1;
        v27 = v34;
        if (v9)
        {
          *(v34[7] + 8 * v20) = v32;
        }

        else
        {
          v34[(v20 >> 6) + 8] |= 1 << v20;
          *(v27[6] + 8 * v20) = v7;
          *(v27[7] + 8 * v20) = v32;
          v28 = v27[2];
          v24 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v24)
          {
            goto LABEL_31;
          }

          v27[2] = v29;
        }

        v1[4] = v27;
        v13 = v4;
      }
    }

LABEL_27:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v3, v2, v4);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.StopCollector.Segment(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xC0uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    v7 = (*v2 + 96 * v6);
    v8 = v7[2];
    v9 = v7[3];
    *(result + 1) = v9;
    v10 = v7[4];
    v11 = v7[5];
    v12 = v7[6];
    v13 = v7[7];
    *(result + 4) = v12;
    *(result + 5) = v13;
    *(result + 2) = v10;
    *(result + 3) = v11;
    *result = v8;
    *(result + 8) = v10;
    *(result + 9) = v11;
    *(result + 10) = v12;
    *(result + 11) = v13;
    *(result + 6) = v8;
    *(result + 7) = v9;
    return protocol witness for Collection.subscript.read in conformance Text.Effect.StopCollector.Segment;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.StopCollector.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.StopMarkerCollector.Segment(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + 16 * v3 + 32);
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.StopCollector.Segment@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, void)@<X5>, uint64_t a5@<X8>)
{
  result = a4(*a1, a2, *a3, *v5);
  *a5 = result;
  *(a5 + 8) = v8 & 1;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.StopMarkerCollector.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

Swift::Void __swiftcall Text.Effect.StopMarkerCollector.flushSegment()()
{
  v1 = v0;
  if (v0[1])
  {
    v25 = *v0;
    v27 = v0[2];

    specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v26);
    if (v2)
    {
      v3 = v2;
      v4 = v1[3];
      v5 = *(v4 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        if (v7 >= v6 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        }

        *(v4 + 2) = v7 + 1;
        *&v4[8 * v7 + 32] = v3;
        v1[3] = v4;
        v8 = *(v27 + 16);
        if (!v8)
        {
          break;
        }

        v9 = 0;
        while (1)
        {
          if (v9 >= *(v27 + 16))
          {
            goto LABEL_31;
          }

          v10 = v27 + 32 + 16 * v9;
          v4 = *v10;
          v11 = *(v10 + 8);
          if (*v10 != v11)
          {
            break;
          }

LABEL_8:
          if (++v9 == v8)
          {
            goto LABEL_26;
          }
        }

        if (v11 < v4)
        {
          goto LABEL_32;
        }

        while (v4 < v11)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v1[4];
          v3 = v28;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
          v15 = v3[2];
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_29;
          }

          v19 = v14;
          if (v3[3] < v18)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
            v3 = v28;
            v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
            if ((v19 & 1) != (v20 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

LABEL_21:
            v21 = v28;
            if (v19)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_21;
          }

          v3 = &v28;
          v24 = v13;
          specialized _NativeDictionary.copy()();
          v13 = v24;
          v21 = v28;
          if (v19)
          {
LABEL_13:
            *(v21[7] + 8 * v13) = v5;
            goto LABEL_14;
          }

LABEL_22:
          v21[(v13 >> 6) + 8] |= 1 << v13;
          *(v21[6] + 8 * v13) = v4;
          *(v21[7] + 8 * v13) = v5;
          v22 = v21[2];
          v17 = __OFADD__(v22, 1);
          v23 = v22 + 1;
          if (v17)
          {
            goto LABEL_30;
          }

          v21[2] = v23;
LABEL_14:
          ++v4;
          v1[4] = v21;
          if (v11 == v4)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 + 1, 1, v4);
      }
    }

LABEL_26:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v25, v26, v27);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
}

uint64_t specialized init(base:glyphRanges:) in Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for Text.Layout.RunSlice();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Layout.Cluster();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v31 = a1;
  v15(v9, a1, v6, v12);
  (v15)(v14, v9, v6);
  v16 = *(v11 + 44);
  lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  v30[0] = *(v7 + 8);
  v30[1] = v7 + 8;
  (v30[0])(v9, v6);
  v17 = (v33 + 16);
  v18 = (v33 + 8);
  v19 = INFINITY;
  v20 = -INFINITY;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v14[v16] == v34[0])
    {
      break;
    }

    v21 = dispatch thunk of Collection.subscript.read();
    (*v17)(v5);
    v21(v34, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Text.Layout.RunSlice.typographicBounds.getter();
    (*v18)(v5, v3);
    v22 = v35;
    v23 = v37;
    v24 = v36 - v38;
    v25 = v38 + v39;
    v40.origin.x = v35;
    v40.origin.y = v36 - v38;
    v40.size.width = v37;
    v40.size.height = v38 + v39;
    MinX = CGRectGetMinX(v40);
    if (MinX < v19)
    {
      v19 = MinX;
    }

    v41.origin.x = v22;
    v41.origin.y = v24;
    v41.size.width = v23;
    v41.size.height = v25;
    MaxX = CGRectGetMaxX(v41);
    if (v20 <= MaxX)
    {
      v20 = MaxX;
    }
  }

  result = outlined destroy of IndexingIterator<Text.Layout.Cluster>(v14);
  if (v19 > v20)
  {
    __break(1u);
  }

  else
  {
    v29 = v31;
    Text.Layout.Cluster.stopKey.getter();
    (v30[0])(v29, v6);
    return v32;
  }

  return result;
}

void specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
  }

  else
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO19StopMarkerCollectorV7SegmentV7ElementV_Tt1g5(*(a1 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(v20, v3 + 2, v2, a1);

    if (v4 == v2)
    {

      v20[0] = v3;
      specialized MutableCollection<>.sort(by:)(v20);
      v5 = *(v20[0] + 2);
      if (v5)
      {
        v6 = 0;
        v7 = (v20[0] + 56);
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = *(v7 - 3);
          v9 = *(v7 - 2);
          if (!v6)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            }

            v12 = *(v8 + 2);
            v11 = *(v8 + 3);
            if (v12 >= v11 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
            }

            *(v8 + 2) = v12 + 1;
            *&v8[8 * v12 + 32] = v10;
          }

          v13 = v6 + 1;
          if (v6 + 1 < v2)
          {
            v14 = *(v7 - 1);
            v15 = *v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            }

            v17 = *(v8 + 2);
            v16 = *(v8 + 3);
            if (v17 >= v16 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
            }

            *(v8 + 2) = v17 + 1;
            *&v8[8 * v17 + 32] = ((v10 + v9) * 0.5 + (v14 + v15) * 0.5) * 0.5;
          }

          if (v2 - 1 == v6)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            }

            v19 = *(v8 + 2);
            v18 = *(v8 + 3);
            if (v19 >= v18 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
            }

            *(v8 + 2) = v19 + 1;
            *&v8[8 * v19 + 32] = v9;
          }

          v7 += 2;
          v6 = v13;
        }

        while (v5 != v13);
      }
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }
}

char *specialized static Text.Effect.stopMarkers(_:)(uint64_t a1)
{
  v202 = type metadata accessor for Text.Layout.Line();
  v199 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v3 = &v175 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v175 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v203 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v196 = &v175 - v14;
  v195 = type metadata accessor for Text.Layout.RunSlice();
  v15 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Text.Layout.Cluster();
  MEMORY[0x1EEE9AC00](v188);
  v182 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v175 - v20;
  v22 = *(a1 + 24);
  v211 = v22;
  v23 = *(v22 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v210 = MEMORY[0x1E69E7CC0];
    v180 = v23;
    v179 = v19;

    v176 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v26 = v180;
    v27 = v179;
    v28 = 0;
    v29 = v210;
    v178 = v180 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v177 = v179 + 16;
    v201 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v186 = (v15 + 16);
    v185 = (v5 + 16);
    v200 = (v199 + 2);
    ++v199;
    v198 = (v5 + 32);
    v30 = (v5 + 8);
    v184 = (v15 + 8);
    v175 = (v179 + 8);
    v31 = v188;
    v189 = v21;
    do
    {
      if (v28 >= *(v26 + 16))
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v183 = v29;
      v32 = *(v27 + 72);
      v181 = v28;
      v33 = *(v27 + 16);
      v33(v21, v178 + v32 * v28, v31);
      v33(v182, v21, v31);
      v34 = lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
      v35 = dispatch thunk of Collection.count.getter();
      if (v35)
      {
        v209 = MEMORY[0x1E69E7CC0];
        v190 = v35;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
        *&v197 = v209;
        dispatch thunk of Collection.startIndex.getter();
        if (v190 < 0)
        {
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v36 = 0;
        v187 = v34;
        do
        {
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_162;
          }

          v191 = v38;
          v39 = dispatch thunk of Collection.subscript.read();
          (*v186)(v194);
          v39(&v204, 0);
          v193 = Text.Layout.RunSlice.indices.getter();
          v192 = v40;
          v41 = v196;
          Text.Layout.RunSlice.run.getter();
          (*v185)(v203, v41, v4);
          v42 = *(v22 + 16);

          v43 = 0;
          while (1)
          {
            if (v42 == *(v22 + 24))
            {
              outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v211);
              v47 = *v30;
              (*v30)(v203, v4);
              goto LABEL_21;
            }

            v44 = v202;
            (*v200)(v3, v22 + v201, v202);
            Text.Layout.Line.subscript.getter();
            (*v199)(v3, v44);
            if (v42 < *(v22 + 16) || v42 >= *(v22 + 24))
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:

              Text.Effect.StopMarkerCollector.flushSegment()();
              v171 = v207;
              outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v204, v205, v206);
              return v171;
            }

            lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028], MEMORY[0x1E6981030]);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            ++v42;
            (*v198)(v10, v7, v4);
            lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028], MEMORY[0x1E6981040]);
            dispatch thunk of Collection.startIndex.getter();
            dispatch thunk of Collection.endIndex.getter();
            v46 = dispatch thunk of Collection.distance(from:to:)();
            (*v30)(v10, v4);
            v37 = __OFADD__(v43, v46);
            v43 += v46;
            if (v37)
            {
              goto LABEL_155;
            }
          }

          outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v211);
          v47 = *v30;
          (*v30)(v203, v4);
          v47(v7, v4);
LABEL_21:
          v47(v196, v4);
          (*v184)(v194, v195);
          v48 = v193 + v43;
          if (__OFADD__(v193, v43))
          {
            goto LABEL_163;
          }

          v37 = __OFADD__(v192, v43);
          v49 = v192 + v43;
          if (v37)
          {
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

          if (v49 < v48)
          {
            goto LABEL_165;
          }

          v50 = v197;
          v209 = v197;
          v52 = *(v197 + 16);
          v51 = *(v197 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            *&v197 = v52 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            v53 = v197;
            v50 = v209;
          }

          *(v50 + 16) = v53;
          *&v197 = v50;
          v54 = v50 + 16 * v52;
          *(v54 + 32) = v48;
          *(v54 + 40) = v49;
          v21 = v189;
          v31 = v188;
          dispatch thunk of Collection.formIndex(after:)();
          v36 = v191;
        }

        while (v191 != v190);
        v55 = v197;
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      *&v197 = specialized init(base:glyphRanges:) in Cluster #1 in static Text.Effect.stopMarkers(_:)(v182, v55);
      v57 = v56;
      v59 = v58;
      v61 = v60;
      (*v175)(v21, v31);
      v29 = v183;
      v210 = v183;
      v63 = *(v183 + 16);
      v62 = *(v183 + 24);
      if (v63 >= v62 >> 1)
      {
        LODWORD(v193) = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
        LOBYTE(v61) = v193;
        v29 = v210;
      }

      *(v29 + 16) = v63 + 1;
      v64 = v29 + 32 * v63;
      *(v64 + 32) = v197;
      v28 = v181 + 1;
      *(v64 + 40) = v57;
      *(v64 + 48) = v59;
      *(v64 + 56) = v61;
      v27 = v179;
      v21 = v189;
      v26 = v180;
    }

    while (v28 != v176);
    v173 = v29;

    v174 = v173;
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v174 = MEMORY[0x1E69E7CC0];
  }

  v204 = 0;
  v205 = 0;
  v206 = 0;
  v207 = v25;
  v208 = MEMORY[0x1E69E7CC8];
  v65 = *(v174 + 16);
  if (!v65)
  {
    goto LABEL_156;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v198 = v25;
  v199 = (v174 + 32);
  v183 = v174;
  v194 = v65;
  while (1)
  {
    if (v70 >= *(v174 + 16))
    {
      goto LABEL_170;
    }

    v71 = &v199[4 * v70];
    v72 = *(v71 + 24);
    v203 = v67;
    if (v72 == 2)
    {
      break;
    }

    v114 = *(v71 + 1);
    v202 = *v71;
    v197 = v114;
    if (!v66 || ((v69 ^ v72) & 1) != 0)
    {
      if (!v66)
      {
        swift_bridgeObjectRetain_n();
        goto LABEL_135;
      }

      swift_bridgeObjectRetain_n();

      specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v115);
      v117 = v66;
      if (!v116)
      {
        outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v68, v66, v67);
        goto LABEL_135;
      }

      v118 = v116;
      v201 = v117;
      v119 = *(v198 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v196 = v70;
      v195 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119 + 1, 1, v198);
      }

      v122 = *(v198 + 2);
      v121 = *(v198 + 3);
      if (v122 >= v121 >> 1)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1, v198);
      }

      v123 = v198;
      *(v198 + 2) = v122 + 1;
      *&v123[8 * v122 + 32] = v118;
      v207 = v123;
      if (*(v67 + 16))
      {
        v124 = *(v67 + 16);
        v193 = v72;
        v125 = 0;
        v200 = (v67 + 32);
        while (1)
        {
          if (v125 >= *(v67 + 16))
          {
            goto LABEL_168;
          }

          v126 = &v200[2 * v125];
          v127 = *v126;
          v128 = v126[1];
          if (*v126 != v128)
          {
            break;
          }

LABEL_95:
          ++v125;
          v67 = v203;
          if (v125 == v124)
          {
            outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v195, v201, v203);
            v65 = v194;
            v70 = v196;
            LOBYTE(v72) = v193;
            goto LABEL_135;
          }
        }

        if (v128 < v127)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        while (2)
        {
          if (v127 >= v128)
          {
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
            goto LABEL_164;
          }

          v129 = v208;
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v210 = v129;
          v131 = specialized __RawDictionaryStorage.find<A>(_:)(v127);
          v134 = *(v129 + 16);
          v135 = (v132 & 1) == 0;
          v37 = __OFADD__(v134, v135);
          v136 = v134 + v135;
          if (v37)
          {
            goto LABEL_160;
          }

          v137 = v132;
          if (*(v129 + 24) >= v136)
          {
            if (v130)
            {
              v138 = v129;
              goto LABEL_109;
            }

            v192 = v131;
            type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>(0, v132, v133);
            v142 = static _DictionaryStorage.copy(original:)();
            v138 = v142;
            if (*(v129 + 16))
            {
              v143 = (v142 + 64);
              v144 = v129 + 64;
              v145 = ((1 << *(v138 + 32)) + 63) >> 6;
              if (v138 != v129 || v143 >= v144 + 8 * v145)
              {
                memmove(v143, (v129 + 64), 8 * v145);
              }

              v146 = 0;
              *(v138 + 16) = *(v129 + 16);
              v147 = 1 << *(v129 + 32);
              if (v147 < 64)
              {
                v148 = ~(-1 << v147);
              }

              else
              {
                v148 = -1;
              }

              v149 = v148 & *(v129 + 64);
              for (i = (v147 + 63) >> 6; v149; *(*(v138 + 56) + 8 * v152) = v155)
              {
                v151 = __clz(__rbit64(v149));
                v149 &= v149 - 1;
                v152 = v151 | (v146 << 6);
LABEL_126:
                v155 = *(*(v129 + 56) + 8 * v152);
                *(*(v138 + 48) + 8 * v152) = *(*(v129 + 48) + 8 * v152);
              }

              v153 = v146;
              while (1)
              {
                v146 = v153 + 1;
                if (__OFADD__(v153, 1))
                {
                  goto LABEL_179;
                }

                if (v146 >= i)
                {
                  break;
                }

                v154 = *(v144 + 8 * v146);
                ++v153;
                if (v154)
                {
                  v149 = (v154 - 1) & v154;
                  v152 = __clz(__rbit64(v154)) | (v146 << 6);
                  goto LABEL_126;
                }
              }
            }

            v131 = v192;
            if (v137)
            {
              goto LABEL_100;
            }

LABEL_110:
            *(v138 + 8 * (v131 >> 6) + 64) |= 1 << v131;
            *(*(v138 + 48) + 8 * v131) = v127;
            *(*(v138 + 56) + 8 * v131) = v119;
            v140 = *(v138 + 16);
            v37 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v37)
            {
              goto LABEL_166;
            }

            *(v138 + 16) = v141;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v136, v130);
            v138 = v210;
            v131 = specialized __RawDictionaryStorage.find<A>(_:)(v127);
            if ((v137 & 1) != (v139 & 1))
            {
              goto LABEL_180;
            }

LABEL_109:
            if ((v137 & 1) == 0)
            {
              goto LABEL_110;
            }

LABEL_100:
            *(*(v138 + 56) + 8 * v131) = v119;
          }

          ++v127;
          v208 = v138;
          if (v127 == v128)
          {
            goto LABEL_95;
          }

          continue;
        }
      }

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v195, v201, v67);
      v65 = v194;
      v70 = v196;
LABEL_135:
      v68 = v72 & 1;
      v204 = v68;
      v66 = MEMORY[0x1E69E7CC0];
      v205 = MEMORY[0x1E69E7CC0];
      v206 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v156 = v68;
    v157 = v70;

    v158 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
    }

    v160 = *(v66 + 2);
    v159 = *(v66 + 3);
    if (v160 >= v159 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v159 > 1), v160 + 1, 1, v66);
    }

    *(v66 + 2) = v160 + 1;
    *&v66[16 * v160 + 32] = v197;
    v161 = *(v202 + 16);
    v162 = *(v67 + 16);
    v163 = v162 + v161;
    if (__OFADD__(v162, v161))
    {
      goto LABEL_174;
    }

    v164 = swift_isUniquelyReferenced_nonNull_native();
    if (v164 && (v165 = *(v67 + 24) >> 1, v165 >= v163))
    {
      v166 = v67;
    }

    else
    {
      if (v162 <= v163)
      {
        v167 = v162 + v161;
      }

      else
      {
        v167 = v162;
      }

      v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v164, v167, 1, v67);
      v165 = *(v166 + 3) >> 1;
    }

    if (*(v202 + 16))
    {
      v168 = *(v166 + 2);
      if (v165 - v168 < v161)
      {
        goto LABEL_176;
      }

      memcpy(&v166[16 * v168 + 32], (v202 + 32), 16 * v161);

      if (v161)
      {
        v169 = *(v166 + 2);
        v37 = __OFADD__(v169, v161);
        v170 = v169 + v161;
        if (v37)
        {
          goto LABEL_177;
        }

        *(v166 + 2) = v170;
      }
    }

    else
    {

      if (v161)
      {
        goto LABEL_175;
      }
    }

    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v156, v158, v67);
    v69 = v156;
    v68 = v156 & 1;
    v204 = v68;
    v205 = v66;
    v206 = v166;
    v67 = v166;
    v174 = v183;
    v70 = v157;
LABEL_38:
    if (++v70 == v65)
    {
      goto LABEL_156;
    }
  }

  if (!v66)
  {
LABEL_37:
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    goto LABEL_38;
  }

  specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v73);
  v75 = v66;
  if (!v74)
  {
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v68, v66, v67);
    v174 = v183;
    goto LABEL_37;
  }

  v76 = v74;
  v201 = v75;
  v77 = *(v198 + 2);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v196 = v70;
  v195 = v68;
  if ((v78 & 1) == 0)
  {
    v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77 + 1, 1, v198);
  }

  v80 = *(v198 + 2);
  v79 = *(v198 + 3);
  if (v80 >= v79 >> 1)
  {
    v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v198);
  }

  v81 = v198;
  *(v198 + 2) = v80 + 1;
  *&v81[8 * v80 + 32] = v76;
  v207 = v81;
  v82 = *(v67 + 16);
  if (!v82)
  {
LABEL_130:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v195, v201, v67);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v174 = v183;
    v65 = v194;
    v70 = v196;
    goto LABEL_38;
  }

  v83 = 0;
  v202 = v67 + 32;
  while (1)
  {
    if (v83 >= *(v67 + 16))
    {
      goto LABEL_167;
    }

    v84 = (v202 + 16 * v83);
    v85 = *v84;
    v86 = v84[1];
    if (*v84 != v86)
    {
      break;
    }

LABEL_49:
    ++v83;
    v67 = v203;
    if (v83 == v82)
    {
      goto LABEL_130;
    }
  }

  if (v86 < v85)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  while (2)
  {
    if (v85 >= v86)
    {
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v87 = v208;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v210 = v87;
    v89 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
    v92 = *(v87 + 16);
    v93 = (v90 & 1) == 0;
    v37 = __OFADD__(v92, v93);
    v94 = v92 + v93;
    if (v37)
    {
      goto LABEL_158;
    }

    v95 = v90;
    if (*(v87 + 24) < v94)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v88);
      v96 = v210;
      v89 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_180;
      }

LABEL_63:
      if ((v95 & 1) == 0)
      {
LABEL_64:
        *(v96 + 8 * (v89 >> 6) + 64) |= 1 << v89;
        *(*(v96 + 48) + 8 * v89) = v85;
        *(*(v96 + 56) + 8 * v89) = v77;
        v98 = *(v96 + 16);
        v37 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v37)
        {
          goto LABEL_161;
        }

        *(v96 + 16) = v99;
        goto LABEL_55;
      }

LABEL_54:
      *(*(v96 + 56) + 8 * v89) = v77;
LABEL_55:
      ++v85;
      v208 = v96;
      if (v85 == v86)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  if (v88)
  {
    v96 = v87;
    goto LABEL_63;
  }

  v200 = v89;
  type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>(0, v90, v91);
  v100 = static _DictionaryStorage.copy(original:)();
  v96 = v100;
  if (!*(v87 + 16))
  {
LABEL_82:

    v89 = v200;
    if ((v95 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

  v101 = (v100 + 64);
  v102 = v87 + 64;
  v103 = ((1 << *(v96 + 32)) + 63) >> 6;
  if (v96 != v87 || v101 >= v102 + 8 * v103)
  {
    memmove(v101, (v87 + 64), 8 * v103);
  }

  v104 = 0;
  *(v96 + 16) = *(v87 + 16);
  v105 = 1 << *(v87 + 32);
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  else
  {
    v106 = -1;
  }

  v107 = v106 & *(v87 + 64);
  for (j = (v105 + 63) >> 6; v107; *(*(v96 + 56) + 8 * v110) = v113)
  {
    v109 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v110 = v109 | (v104 << 6);
LABEL_80:
    v113 = *(*(v87 + 56) + 8 * v110);
    *(*(v96 + 48) + 8 * v110) = *(*(v87 + 48) + 8 * v110);
  }

  v111 = v104;
  while (1)
  {
    v104 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v104 >= j)
    {
      goto LABEL_82;
    }

    v112 = *(v102 + 8 * v104);
    ++v111;
    if (v112)
    {
      v107 = (v112 - 1) & v112;
      v110 = __clz(__rbit64(v112)) | (v104 << 6);
      goto LABEL_80;
    }
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized Text.Effect.StopSegment.init(segment:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {

    return;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO13StopCollectorV7SegmentV7ElementV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(v145, v3 + 32, v2, a1);

  if (v4 != v2)
  {
    goto LABEL_68;
  }

  v145[0] = v3;
  specialized MutableCollection<>.sort(by:)(v145);
  v3 = v145[0];
  v5 = *(v145[0] + 2);
  if (v5)
  {
    v6 = 0;
    v7 = -v5;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 1;
    while (1)
    {
      v138 = *&v3[v6 + 48];
      v140 = *&v3[v6 + 32];
      v134 = *&v3[v6 + 80];
      v136 = *&v3[v6 + 64];
      v12 = *&v3[v6 + 96];
      v13 = v3[v6 + 104];
      v15 = *&v3[v6 + 112];
      v14 = *&v3[v6 + 120];
      if (v6)
      {
        if (v9 < v2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v17 = *(v8 + 2);
        v16 = *(v8 + 3);
        if (v17 >= v16 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
        }

        *(v8 + 2) = v17 + 1;
        v18 = &v8[88 * v17];
        *(v18 + 2) = v140;
        *(v18 + 3) = v138;
        *(v18 + 4) = v136;
        *(v18 + 5) = v134;
        *(v18 + 12) = v12;
        v18[104] = v13;
        v19 = *(v145 + 3);
        *(v18 + 105) = v145[0];
        *(v18 + 27) = v19;
        *(v18 + 14) = v15;
        if (v9 < v2)
        {
LABEL_16:
          v20 = &v3[v6];
          v21 = (v15 + v14) * 0.5;
          v22 = (*&v3[v6 + 208] + *&v3[v6 + 216]) * 0.5;
          if (v22 - v21 <= 0.0)
          {
            goto LABEL_69;
          }

          v23 = v20[12].f64[0];
          v110 = v20[8];
          v116 = v20[9];
          v122 = v20[10];
          v128 = v20[11];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v25 = *(v8 + 2);
          v24 = *(v8 + 3);
          if (v25 >= v24 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v8);
          }

          v26 = (v21 + v22) * 0.5;
          v27 = (v26 - v21) / (v22 - v21);
          *(v8 + 2) = v25 + 1;
          v28 = &v8[88 * v25];
          *(v28 + 2) = vaddq_f64(v140, vmulq_n_f64(vsubq_f64(v110, v140), v27));
          *(v28 + 3) = vaddq_f64(v138, vmulq_n_f64(vsubq_f64(v116, v138), v27));
          *(v28 + 4) = vaddq_f64(v136, vmulq_n_f64(vsubq_f64(v122, v136), v27));
          *(v28 + 5) = vaddq_f64(v134, vmulq_n_f64(vsubq_f64(v128, v134), v27));
          *(v28 + 12) = v12 + (v23 - v12) * v27;
          v28[104] = v13;
          v29 = *(v145 + 3);
          *(v28 + 105) = v145[0];
          *(v28 + 27) = v29;
          *(v28 + 14) = v26;
          if (v2 != v9)
          {
            goto LABEL_6;
          }

LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v31 = *(v8 + 2);
          v30 = *(v8 + 3);
          if (v31 >= v30 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v8);
          }

          *(v8 + 2) = v31 + 1;
          v10 = &v8[88 * v31];
          *(v10 + 2) = v140;
          *(v10 + 3) = v138;
          *(v10 + 4) = v136;
          *(v10 + 5) = v134;
          *(v10 + 12) = v12;
          v10[104] = v13;
          v11 = *(v145 + 3);
          *(v10 + 105) = v145[0];
          *(v10 + 27) = v11;
          *(v10 + 14) = v14;
          goto LABEL_6;
        }
      }

      if (v2 == v9)
      {
        goto LABEL_22;
      }

LABEL_6:
      ++v9;
      v6 += 96;
      if (v7 + v9 == 1)
      {
        goto LABEL_28;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v32 = *(v8 + 2);
  if (!v32)
  {
    return;
  }

  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v35 = 1;
  v105 = vdupq_n_s64(0x3FD554C985F06F69uLL);
  v104 = vdupq_n_s64(0x3FE5559B3D07C84BuLL);
  while (1)
  {
    v135 = *&v8[v33 + 32];
    v137 = *&v8[v33 + 48];
    v139 = *&v8[v33 + 64];
    v141 = *&v8[v33 + 80];
    v36 = *&v8[v33 + 96];
    v37 = v8[v33 + 104];
    LODWORD(v144) = *&v8[v33 + 105];
    *(&v144 + 3) = *&v8[v33 + 108];
    v38 = *&v8[v33 + 112];
    LODWORD(v145[0]) = v144;
    *(v145 + 3) = *(&v144 + 3);
    if (!v33)
    {
      break;
    }

    if (v32 != v35)
    {
      v67 = *(v8 + 2);
      if (v35 - 2 >= v67)
      {
        goto LABEL_65;
      }

      if (v35 >= v67)
      {
        goto LABEL_67;
      }

      v68 = *&v8[v33 + 24];
      v69 = *&v8[v33 + 8];
      v70 = *&v8[v33 + 184];
      v71 = *&v8[v33 + 200];
      v106 = *&v8[v33 + 120];
      v107 = *&v8[v33 - 56];
      v108 = *&v8[v33 + 136];
      v109 = *&v8[v33 - 40];
      v113 = *&v8[v33 + 152];
      v119 = *&v8[v33 - 24];
      v125 = *&v8[v33 + 168];
      v131 = *&v8[v33 - 8];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v73 = *(v34 + 2);
      v72 = *(v34 + 3);
      v74 = v72 >> 1;
      v75 = v73 + 1;
      if (v72 >> 1 <= v73)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v34);
        v72 = *(v34 + 3);
        v74 = v72 >> 1;
      }

      v76 = 1.0 / (v71 - v68);
      v77 = (v70 - v69) * v76;
      v78 = (v38 - v68) * 0.3333;
      v79 = vmulq_n_f64(vsubq_f64(v106, v107), v76);
      v81 = v135;
      v80 = v137;
      v82 = vmulq_n_f64(vsubq_f64(v108, v109), v76);
      v83 = vmulq_n_f64(vsubq_f64(v113, v119), v76);
      v84 = v139;
      v85 = vmulq_n_f64(vsubq_f64(v125, v131), v76);
      v86 = v141;
      *(v34 + 2) = v75;
      v87 = &v34[88 * v73];
      *(v87 + 2) = vsubq_f64(v135, vmulq_n_f64(v79, v78));
      *(v87 + 3) = vsubq_f64(v137, vmulq_n_f64(v82, v78));
      *(v87 + 4) = vsubq_f64(v139, vmulq_n_f64(v83, v78));
      *(v87 + 5) = vsubq_f64(v141, vmulq_n_f64(v85, v78));
      *(v87 + 12) = v36 - v78 * v77;
      v87[104] = v37;
      *(v87 + 105) = *v142;
      *(v87 + 27) = *&v142[3];
      *(v87 + 14) = v38 - v78;
      v88 = v73 + 2;
      if (v74 < (v73 + 2))
      {
        v126 = v82;
        v132 = v79;
        v114 = v85;
        v120 = v83;
        v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 2, 1, v34);
        v85 = v114;
        v83 = v120;
        v82 = v126;
        v79 = v132;
        v81 = v135;
        v80 = v137;
        v84 = v139;
        v86 = v141;
        v34 = v102;
      }

      *(v34 + 2) = v88;
      v89 = &v34[88 * v75];
      *(v89 + 2) = v81;
      *(v89 + 3) = v80;
      *(v89 + 4) = v84;
      *(v89 + 5) = v86;
      *(v89 + 12) = v36;
      v89[104] = v37;
      v90 = *(v145 + 3);
      *(v89 + 105) = v145[0];
      *(v89 + 27) = v90;
      *(v89 + 14) = v38;
      v91 = *(v34 + 3);
      v3 = (v73 + 3);
      if ((v73 + 3) > (v91 >> 1))
      {
        v127 = v82;
        v133 = v79;
        v115 = v85;
        v121 = v83;
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v73 + 3, 1, v34);
        v85 = v115;
        v83 = v121;
        v82 = v127;
        v79 = v133;
        v81 = v135;
        v80 = v137;
        v84 = v139;
        v86 = v141;
        v34 = v103;
      }

      v92 = (v71 - v38) * 0.3333;
      v93 = vaddq_f64(v81, vmulq_n_f64(v79, v92));
      v94 = vaddq_f64(v80, vmulq_n_f64(v82, v92));
      v95 = vaddq_f64(v84, vmulq_n_f64(v83, v92));
      v96 = vaddq_f64(v86, vmulq_n_f64(v85, v92));
      v97 = v36 + v92 * v77;
      v66 = v38 + v92;
      *(v34 + 2) = v3;
      v64 = &v34[88 * v88];
      *(v64 + 2) = v93;
      *(v64 + 3) = v94;
      *(v64 + 4) = v95;
      *(v64 + 5) = v96;
      *(v64 + 12) = v97;
      v64[104] = v37;
      v65 = *&v143[3];
      *(v64 + 105) = *v143;
      goto LABEL_60;
    }

    if (v35 - 2 >= *(v8 + 2))
    {
      goto LABEL_66;
    }

    v39 = *&v8[v33 + 8];
    v40 = v8[v33 + 16];
    v41 = *&v8[v33 + 24];
    v123 = *&v8[v33 - 40];
    v129 = *&v8[v33 - 56];
    v111 = *&v8[v33 - 8];
    v117 = *&v8[v33 - 24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    }

    v43 = v139;
    v42 = v141;
    v45 = v135;
    v44 = v137;
    v47 = *(v34 + 2);
    v46 = *(v34 + 3);
    v48 = v46 >> 1;
    v3 = (v47 + 1);
    if (v46 >> 1 <= v47)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v34);
      v45 = v135;
      v44 = v137;
      v43 = v139;
      v42 = v141;
      v34 = v100;
      v46 = *(v100 + 3);
      v48 = v46 >> 1;
    }

    *(v34 + 2) = v3;
    v49 = &v34[88 * v47];
    *(v49 + 2) = vaddq_f64(v129, vmulq_f64(vsubq_f64(v45, v129), v104));
    *(v49 + 3) = vaddq_f64(v123, vmulq_f64(vsubq_f64(v44, v123), v104));
    *(v49 + 4) = vaddq_f64(v117, vmulq_f64(vsubq_f64(v43, v117), v104));
    *(v49 + 5) = vaddq_f64(v111, vmulq_f64(vsubq_f64(v42, v111), v104));
    *(v49 + 12) = v39 + (v36 - v39) * 0.6667;
    v49[104] = v40;
    *(v49 + 105) = *v143;
    *(v49 + 27) = *&v143[3];
    *(v49 + 14) = v41 + (v38 - v41) * 0.6667;
    if (v48 < (v47 + 2))
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 2, 1, v34);
      v45 = v135;
      v44 = v137;
      v43 = v139;
      v42 = v141;
      v34 = v101;
    }

    *(v34 + 2) = v47 + 2;
    v50 = &v34[88 * v3];
    *(v50 + 2) = v45;
    *(v50 + 3) = v44;
    *(v50 + 4) = v43;
    *(v50 + 5) = v42;
    *(v50 + 12) = v36;
    v50[104] = v37;
    v51 = *(v145 + 3);
    *(v50 + 105) = v145[0];
    *(v50 + 27) = v51;
    *(v50 + 14) = v38;
    if (v32 == v35)
    {
LABEL_62:

      return;
    }

LABEL_61:
    v33 += 88;
    ++v35;
  }

  if (v35 < *(v8 + 2))
  {
    v52 = *(v8 + 23);
    v53 = *(v8 + 25);
    v112 = *(v8 + 120);
    v118 = *(v8 + 136);
    v124 = *(v8 + 152);
    v130 = *(v8 + 168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    }

    v55 = *(v34 + 2);
    v54 = *(v34 + 3);
    v56 = v54 >> 1;
    v3 = (v55 + 1);
    v58 = v139;
    v57 = v141;
    v60 = v135;
    v59 = v137;
    if (v54 >> 1 <= v55)
    {
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v34);
      v60 = v135;
      v59 = v137;
      v58 = v139;
      v57 = v141;
      v34 = v98;
      v54 = *(v98 + 3);
      v56 = v54 >> 1;
    }

    *(v34 + 2) = v3;
    v61 = &v34[88 * v55];
    *(v61 + 2) = v60;
    *(v61 + 3) = v59;
    *(v61 + 4) = v58;
    *(v61 + 5) = v57;
    *(v61 + 12) = v36;
    v61[104] = v37;
    v62 = *(v145 + 3);
    *(v61 + 105) = v145[0];
    *(v61 + 27) = v62;
    *(v61 + 14) = v38;
    v63 = v55 + 2;
    if (v56 < v63)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v63, 1, v34);
      v60 = v135;
      v59 = v137;
      v58 = v139;
      v57 = v141;
      v34 = v99;
    }

    *(v34 + 2) = v63;
    v64 = &v34[88 * v3];
    *(v64 + 2) = vaddq_f64(v60, vmulq_f64(vsubq_f64(v112, v60), v105));
    *(v64 + 3) = vaddq_f64(v59, vmulq_f64(vsubq_f64(v118, v59), v105));
    *(v64 + 4) = vaddq_f64(v58, vmulq_f64(vsubq_f64(v124, v58), v105));
    *(v64 + 5) = vaddq_f64(v57, vmulq_f64(vsubq_f64(v130, v57), v105));
    *(v64 + 12) = v36 + (v52 - v36) * 0.3333;
    v64[104] = v37;
    v65 = *&v143[3];
    *(v64 + 105) = *v143;
    v66 = v38 + (v53 - v38) * 0.3333;
LABEL_60:
    *(v64 + 27) = v65;
    *(v64 + 14) = v66;
    if (v32 == v35)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
}

void specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, long double a4@<D0>)
{
  v5 = 3 * a1;
  if ((a1 * 3) >> 64 != (3 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(a2 + 16);
  if (v5 >= v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5 + 1;
  if (v5 + 1 >= v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v5 + 2;
  if (v5 + 2 >= v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v5 + 3;
  if (v5 + 3 < v6)
  {
    v10 = a2 + 32 + 264 * a1;
    v35 = *(v10 + 16);
    v36 = *v10;
    v33 = *(v10 + 48);
    v34 = *(v10 + 32);
    v11 = *(v10 + 64);
    v12 = *(v10 + 72);
    v13 = a2 + 32 + 88 * v7;
    v31 = *(v13 + 16);
    v32 = *v13;
    v29 = *(v13 + 48);
    v30 = *(v13 + 32);
    v14 = *(v13 + 64);
    v15 = *(v13 + 72);
    v16 = a2 + 32 + 88 * v8;
    v17 = *(v16 + 72);
    v18 = *(v16 + 64);
    v19 = a2 + 32 + 88 * v9;
    v37 = *(v19 + 64);
    v20 = 1.0 - a4;
    v21 = *(v19 + 72);
    v23 = pow(1.0 - a4, 3.0);
    v24 = pow(a4, 3.0);
    *a3 = v23;
    *(a3 + 8) = v20 * v20 * 3.0 * a4;
    *(a3 + 16) = a4 * a4 * (v20 * 3.0);
    *(a3 + 24) = v24;
    *(a3 + 32) = v36;
    *(a3 + 48) = v35;
    *(a3 + 64) = v34;
    *(a3 + 80) = v33;
    *(a3 + 96) = v11;
    *(a3 + 104) = v12;
    *(a3 + 112) = v32;
    *(a3 + 128) = v31;
    *(a3 + 144) = v30;
    *(a3 + 160) = v29;
    *(a3 + 176) = v14;
    *(a3 + 184) = v15;
    v25 = *(v16 + 16);
    *(a3 + 192) = *v16;
    *(a3 + 208) = v25;
    v26 = *(v16 + 48);
    *(a3 + 224) = *(v16 + 32);
    *(a3 + 240) = v26;
    *(a3 + 256) = v18;
    *(a3 + 264) = v17;
    v27 = *(v19 + 16);
    *(a3 + 272) = *v19;
    *(a3 + 288) = v27;
    v28 = *(v19 + 48);
    *(a3 + 304) = *(v19 + 32);
    *(a3 + 320) = v28;
    *(a3 + 336) = v37;
    *(a3 + 344) = v21;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Text.Effect.Stop(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Stop(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 88) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.StopKey and conformance Text.Effect.StopKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.StopCollector.Segment> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, a2, lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment, &type metadata for Text.Effect.StopCollector.Segment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.StopCollector.Segment> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, &lazy cache variable for type metadata for Slice<Text.Effect.StopCollector.Segment>, lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment, &type metadata for Text.Effect.StopCollector.Segment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex(0, a2, a3);
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>);
    }
  }
}

uint64_t getEnumTagSinglePayload for Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.StopCollector(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.StopCollector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.StopMarkerCollector.Segment> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, a2, lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment, &type metadata for Text.Effect.StopMarkerCollector.Segment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.StopMarkerCollector.Segment> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, &lazy cache variable for type metadata for Slice<Text.Effect.StopMarkerCollector.Segment>, lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment, &type metadata for Text.Effect.StopMarkerCollector.Segment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata instantiation function for Text.Effect.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Text.Effect.Configuration.drawable(for:timing:quantization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Text.Effect.DrawableFragment(255, a6, v9, v10);
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  if (!MEMORY[0x19A8BD7C0](a5, FunctionTypeMetadata3))
  {
    return;
  }

  v12 = 0;
  v13 = a5 + 40;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_22;
    }

    v33 = v12 + 1;
    v16 = a5;
    v17 = *(v13 - 8);
    v18 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v18;
    v37[2] = *(a1 + 32);
    v38 = *(a1 + 48);
    v19 = *(a3 + 16);
    v35[0] = *a3;
    v35[1] = v19;
    v36 = *(a3 + 32);

    v17(&v34, a2, v37, v35);
    v20 = v34;
    v21 = *(v34 + 16);
    v22 = *(v14 + 2);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v25 = *(v14 + 3) >> 1, v25 >= v23))
    {
      if (*(v20 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v26 = v22 + v21;
      }

      else
      {
        v26 = v22;
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 1, v14);
      v25 = *(v14 + 3) >> 1;
      if (*(v20 + 16))
      {
LABEL_16:
        if (v25 - *(v14 + 2) < v21)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v27 = *(v14 + 2);
          v28 = __OFADD__(v27, v21);
          v29 = v27 + v21;
          if (v28)
          {
            goto LABEL_26;
          }

          *(v14 + 2) = v29;
        }

        goto LABEL_4;
      }
    }

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_4:

    a5 = v16;
    ++v12;
    v13 += 16;
    if (v33 == MEMORY[0x19A8BD7C0](v16, FunctionTypeMetadata3))
    {
      return;
    }
  }

  _ArrayBuffer._getElementSlowPath(_:)();
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
}

void Text.Effect.Configuration.updateContent(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Text.Effect.Configuration.StyleModifier(0, a5, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v26 = a3;
  v13 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x19A8BD5B0](v24, v13, WitnessTable);
  v15 = v24[0];
  v26 = v24[0];

  v17 = MEMORY[0x19A8BD7C0](v16, v9);
  v23[1] = v15;

  if (v17)
  {
    v18 = (v10 + 16);
    v19 = (v10 + 8);
    while (!__OFSUB__(v17--, 1))
    {
      v25 = v17;
      swift_getWitnessTable();
      v21 = protocol witness for Collection.subscript.read in conformance [A](v24, &v25, v13);
      (*v18)(v12);
      (v21)(v24, 0);
      v22 = Text.Effect.Configuration.StyleModifier.updateContent(_:for:)(a1, a2, v9);
      (*v19)(v12, v9, v22);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double Text.Effect.Configuration.StyleModifier.updateContent(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v30 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v4, a3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ()();
    v17 = *&v15[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v9 + 32))(v11, v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v18 = *a1;
      v19 = v17(*a1, a1[1], a1[2]);
      v21 = v20;
      v31 = v22;

      (*(v9 + 8))(v11, AssociatedTypeWitness);
      *a1 = v19;
      a1[1] = v21;
      a1[2] = v31;
    }

    else
    {
      (*(v9 + 8))(v11, AssociatedTypeWitness);
    }
  }

  else
  {
    v24 = *a1;
    v25 = (*v15)(a2, *a1, a1[1], a1[2]);
    v27 = v26;
    v29 = v28;

    *a1 = v25;
    a1[1] = v27;
    a1[2] = v29;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  *(v7 + 32) = Array.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance [A];
}

void protocol witness for Collection.subscript.read in conformance [A](void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*Array.subscript.read(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t (*a4)()))()
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return Array.subscript.read;
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return Array.subscript.read;
  }

  __break(1u);
  return result;
}

void Array.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

unint64_t type metadata completion function for Text.Effect.Configuration.StyleModifier(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Configuration.StyleModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 == 16 || ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFF0)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v7 = v6 | 1;
  if ((v6 | 1) <= 3)
  {
    v8 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v7];
      if (*&a1[v7])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = *&a1[v7];
      if (v11)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v15 = a1[v6];
    if (v15 >= 2)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_27;
  }

LABEL_23:
  v13 = (v11 - 1) << (8 * v7);
  if (v7 <= 3)
  {
    v14 = *a1;
  }

  else
  {
    v13 = 0;
    v14 = *a1;
  }

  return (v14 | v13) + 255;
}

void storeEnumTagSinglePayload for Text.Effect.Configuration.StyleModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 == 16 || ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFF0)
  {
    v8 = 16;
  }

  v9 = v8 | 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v9] = 0;
    }

    else if (v12)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v9 <= 3)
  {
    v10 = ((a3 + 1) >> 8) + 1;
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

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v13 = a2 - 255;
  bzero(a1, v8 | 1);
  if (v9 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_21:
      if (v12 == 2)
      {
        *&a1[v9] = v14;
      }

      else
      {
        *&a1[v9] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v12)
  {
    a1[v9] = v14;
  }
}

void specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t closure #1 in GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = type metadata accessor for GraphicsContext.Shading();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GraphicsContext.opacity.setter();
  v21 = a4;
  v22 = a2;
  GraphicsContext.clipToLayer(opacity:options:content:)();
  CGRect.outset(by:)(a4, a4, a4, a4, a5, a6, a7, a8);
  Path.init(_:)();
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_195CC8D70;
  *(v18 + 32) = static Color.red.getter();
  *(v18 + 40) = static Color.green.getter();
  MEMORY[0x19A8BD450](v18);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetMinX(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMinY(v25);
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxY(v27);
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in closure #1 in GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)(void *a1, uint64_t a2, __n128 a3)
{
  v3 = type metadata accessor for GraphicsContext.Filter();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GraphicsContext.Filter.blur(radius:options:)();
  GraphicsContext.addFilter(_:options:)();
  (*(v4 + 8))(v6, v3);
  return GraphicsContext.draw(displayList:)();
}

unint64_t instantiation function for generic protocol witness table for GradientBlurTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type GradientBlurTextEffect and conformance GradientBlurTextEffect(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

void specialized GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v12 = GraphicsContext.displayList.getter();
  [v12 deviceScale];
  v14 = v13;

  [v11 setDeviceScale_];
  v15 = v11;
  GraphicsContext.environment.getter();
  v36 = GraphicsContext.init(displayList:environment:)();
  v16 = *(a1 + 8);
  v17 = *a1;
  v18 = *(a1 + 32);
  v37[0] = *(a1 + 16);
  v37[1] = v18;
  v37[2] = *(a1 + 48);
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    v22 = *(v16 + 16);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v37, 0, 0, 1, &v36, v17);
      v20 += v21;
      --v22;
    }

    while (v22);
  }

  v23 = [v15 moveContents];
  v24 = v23;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (v19)
  {
    v29 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v30 = *(v7 + 72);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v29, v9);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v37);
      v40.origin.x = v31;
      v40.origin.y = v32;
      v40.size.width = v33;
      v40.size.height = v34;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectUnion(v38, v40);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      v23 = outlined destroy of Text.Effect.ResolvedDrawing.Operation(v9);
      v29 += v30;
      --v19;
    }

    while (v19);
  }

  *(&v35 - 8) = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  *(&v35 - 7) = a2;
  *(&v35 - 6) = v24;
  *(&v35 - 5) = x;
  *(&v35 - 4) = y;
  *(&v35 - 3) = width;
  *(&v35 - 2) = height;
  GraphicsContext.drawLayer(content:)();
  GraphicsContext.draw(displayList:)();

  swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in SmallTextEffect.configuration(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyDynamicAttributeModifier<TextScaleAttributeModifier>(0, a2, a3, a4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0x3FE6666666666666;
  v8 = Text.Effect.Content.modifier(_:)(v7, a1, a2, a3);

  return v8;
}

void closure #2 in SmallTextEffect.configuration(_:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v83 = *a1;
  v5 = *(a1 + 3);
  v61 = *(a1 + 4);
  v62 = *(a1 + 2);
  v60 = *(a1 + 5);
  v6 = a2[1];
  v73 = *a2;
  v74 = v6;
  v75 = a2[2];
  v76 = *(a2 + 6);
  v7 = *(&v73 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<SmallTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = v75;
  swift_retain_n();
  v66 = v7;
  v68 = v73;
  v10 = Text.Effect.Keyframes.subscript.getter(v7, v8, v73);
  if (!v10)
  {
    goto LABEL_49;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v11 = *(v10 + 16);
  if (v75 >= v11)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = a3;
  v12 = (v10 + 32);
  v13 = *(v10 + 32 + 8 * v75);
  v14 = 0;
  if (v75)
  {
    v15 = v75;
    while (1)
    {
      v16 = *(*(*v12 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      ++v12;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_8:

  v7 = v73;
  *&v90 = v73;
  *(&v90 + 1) = v66;
  v91 = v8;
  v92 = v13;
  v93 = v75;
  v94 = v11;
  v95 = v14;
  outlined init with copy of Text.Effect.BaseFragment(&v90, &v77);
  v18 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v90, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(&v90);
  v20 = v77;
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  v22 = Text.Effect.Keyframes.subscript.getter(v66, v21, v68);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v9 >= v23)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v59 = v5;
    v24 = *(v22 + 32 + 8 * v9);
    if (v9)
    {
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v28 = *(*(*(v22 + 32 + 8 * v25) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v17 = __OFADD__(v26, v28);
        v26 += v28;
        if (v17)
        {
          goto LABEL_38;
        }

        if (__OFSUB__(v9, v27))
        {
          goto LABEL_39;
        }

        ++v25;
        if (v9 == v27)
        {
          goto LABEL_18;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v26 = 0;
LABEL_18:

    *&v84 = v68;
    *(&v84 + 1) = v66;
    v85 = v21;
    v86 = v24;
    v87 = v9;
    v88 = v23;
    v89 = v26;
    outlined init with copy of Text.Effect.BaseFragment(&v84, &v77);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v84, v29, 1.0);
    outlined destroy of Text.Effect.BaseFragment(&v84);
    v30 = v77;
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = v76;
    outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(a2, &v77, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

    v31 = specialized static Text.Effect.stopMarkers(_:)(&v73);
    Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(v63, v31, v32, 10, v30, 0.0);
    v34 = v33;
    v36 = v35;

    v37 = *(v30 + 16);
    if (v37)
    {
      v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v37, 0);
      v38 = specialized Sequence._copySequenceContents(initializing:)(&v77, v7 + 4, v37, v30);
      v39 = v77;

      outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant(v39);
      if (v38 != v37)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v77 = v7;
    v7 = 0;
    specialized MutableCollection<>.sort(by:)(&v77);

    v40 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v77);
    v77 = v69;
    v78 = v70;
    v79 = v71;
    v80 = v72;
    *&v81 = v34;
    *(&v81 + 1) = v36;
    v82 = v40;
    if ((*(&v75 + 1) & 0x8000000000000000) != 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (*(&v75 + 1) != 1 || !Text.Effect.BaseFragment.coversAllParagraphs.getter())
    {
      v47 = 0;
      v64 = 0u;
      v65 = 0u;
      v58 = 0u;
      v67 = 0u;
      goto LABEL_35;
    }

    v58 = *(*(&v74 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v64 = *(*(&v74 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v41 = swift_allocObject();
    *(v41 + 16) = 1;
    v42 = Text.Effect.Keyframes.subscript.getter(v66, v41, v68);
    if (v42)
    {
      if (v9 >= *(v42 + 16))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v7 = *(v42 + 32 + 8 * v9);
      if (v9)
      {
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v45 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          v46 = *(*(*(v42 + 32 + 8 * v43) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v17 = __OFADD__(v44, v46);
          v44 += v46;
          if (v17)
          {
            goto LABEL_41;
          }

          if (__OFSUB__(v9, v45))
          {
            goto LABEL_42;
          }

          ++v43;
          if (v9 == v45)
          {
            goto LABEL_33;
          }
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_33:

      v65 = *(v7 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
      v67 = *(v7 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
      v47 = 1;
LABEL_35:

      v96 = v62;
      v97 = v59;
      v98 = v61;
      v99 = v60;
      v48 = swift_allocObject();
      *(v48 + 16) = v83;
      *(v48 + 32) = v62;
      *(v48 + 40) = v59;
      *(v48 + 48) = v61;
      *(v48 + 56) = v60;
      *(v48 + 64) = v47;
      *(v48 + 88) = v58;
      *(v48 + 72) = v64;
      *(v48 + 120) = v65;
      *(v48 + 104) = v67;
      v49 = v80;
      *(v48 + 168) = v79;
      *(v48 + 184) = v49;
      *(v48 + 200) = v81;
      *(v48 + 216) = v82;
      v50 = v78;
      *(v48 + 136) = v77;
      *(v48 + 152) = v50;
      v51 = swift_allocObject();
      v52 = v80;
      *(v51 + 48) = v79;
      *(v51 + 64) = v52;
      *(v51 + 80) = v81;
      v53 = v82;
      v54 = v78;
      *(v51 + 16) = v77;
      *(v51 + 32) = v54;
      *(v51 + 96) = v53;
      *(v51 + 104) = partial apply for closure #2 in closure #2 in SmallTextEffect.configuration(_:);
      *(v51 + 112) = v48;
      v55 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v51;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v55);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_195CC8D00;
      *(v57 + 32) = inited;
      outlined init with copy of [Text.Effect.Timing.Fragment](&v96, &v69, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v97, &v69, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(&v98, &v69, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v99, &v69);
      outlined init with copy of Text.Effect.PathInterpolator(&v77, &v69);
      specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v57);
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v57 + 32);
      return;
    }
  }

LABEL_49:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
}

uint64_t closure #2 in closure #2 in SmallTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, void *a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v24 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*(a3[2] + 16) <= a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = a3[4];
  if (*(v28 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v65 = a8;
  outlined init with copy of Text.Effect.Timing.GlyphTiming(v28 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * a1, &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v29 = *(a2 + 40) - *(a2 + 32);
  v30 = *v27;
  v31 = a11;
  v32 = 0.0;
  if (v29 < 0.0)
  {
    v29 = 0.0;
    if (v30 >= 0.0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v33 = v27[1];
    v32 = 1.0;
    if (v30 + v33 > v29)
    {
      v32 = (v29 - v30) / v33;
    }

    goto LABEL_10;
  }

  if (v29 > v30)
  {
    goto LABEL_8;
  }

LABEL_10:
  v94 = specialized SmallTextEffect.target(at:)(v32);
  v96 = 0u;
  v97 = 0;
  v95 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v98 = _Q0;
  v99 = 0x3FF0000000000000;
  v100 = 0;
  a3 = v86;
  Text.Effect.TransformContext.update(target:for:spring:)(&v94, a1, (v27 + *(v24 + 24)), v86);
  v39 = *v86;
  a11 = 0.0;
  if (*v86 < 0.0)
  {
    v39 = 0.0;
  }

  if (v39 > 1.0)
  {
    v39 = 1.0;
  }

  v66 = v39;
  if (a4)
  {
    a11 = Text.Effect.Metrics.offsetForCenterAlignment(other:t:)(a9, a10, v31, a12, v66, a5, a6);
  }

  v88 = *v86;
  v89 = a11;
  v90 = *&v86[3];
  v91 = *&v86[5];
  v92 = *&v86[7];
  v93 = v87;
  v12 = *(a2 + 272);
  v40 = *(a2 + 328);
  v83 = *(a2 + 312);
  v84 = v40;
  v85 = *(a2 + 344);
  v41 = *(a2 + 296);
  v81 = *(a2 + 280);
  v82 = v41;
  if (!v12)
  {
    goto LABEL_21;
  }

  v24 = *(a2 + 264);
  v75 = v12;
  v42 = *(a2 + 280);
  v77 = *(a2 + 296);
  v43 = *(a2 + 328);
  v78 = *(a2 + 312);
  v79 = v43;
  v80 = *(a2 + 344);
  v76 = v42;
  outlined init with copy of Text.Effect.PathInterpolator(&v75, v67);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v45 = *(v24 + 16);
    v44 = *(v24 + 24);
    if (v45 >= v44 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v24);
    }

    *(&v67[1] + 8) = v82;
    *(&v67[2] + 8) = v83;
    *(&v67[3] + 8) = v84;
    *(&v67[4] + 8) = v85;
    *(v67 + 8) = v81;
    *(&v67[5] + 8) = *v86;
    v46 = *(a3 + 3);
    LOBYTE(v71) = *(a3 + 72);
    v47 = *(a3 + 7);
    v48 = *(a3 + 5);
    v68 = v46;
    v69 = v48;
    v70 = v47;
    *&v67[0] = v12;
    *(&v67[6] + 1) = a11;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v67);
    *(v24 + 16) = v45 + 1;
    v49 = v24 + 216 * v45;
    v50 = v67[1];
    *(v49 + 32) = v67[0];
    *(v49 + 48) = v50;
    v51 = v67[2];
    v52 = v67[3];
    v53 = v67[5];
    *(v49 + 96) = v67[4];
    *(v49 + 112) = v53;
    *(v49 + 64) = v51;
    *(v49 + 80) = v52;
    v54 = v67[6];
    v55 = v68;
    v56 = v70;
    *(v49 + 160) = v69;
    *(v49 + 176) = v56;
    *(v49 + 128) = v54;
    *(v49 + 144) = v55;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    *(v49 + 240) = v74;
    *(v49 + 208) = v58;
    *(v49 + 224) = v59;
    *(v49 + 192) = v57;
    *(a2 + 264) = v24;
LABEL_21:
    v24 = a2;
    Text.Effect.TransformContext.draw(state:keyPath:)(&v88, 0, 0, 0, 1);
    if (!__OFSUB__(*a2, a1))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
  }

  if (*a2 != a1)
  {
    return outlined destroy of Text.Effect.Timing.GlyphTiming(v27);
  }

  v60 = v66;
  Text.Effect.PathInterpolator.width(for:at:)(a1, v66);
  *(a2 + 136) = v61;
  Text.Effect.PathInterpolator.width(for:at:)(a1, v60);
  v63 = v62;
  result = outlined destroy of Text.Effect.Timing.GlyphTiming(v27);
  *(a2 + 136) = v63;
  return result;
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance SmallTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized SmallTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SmallTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

double specialized SmallTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 1;
  v21 = xmmword_195CCC0E0;
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

  v15 = __swift_project_value_buffer(v11, static SmallTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD05SmallcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized SmallTextEffect.configuration(_:)()
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
  v3[5] = closure #1 in SmallTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in SmallTextEffect.configuration(_:);
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

double specialized SmallTextEffect.target(at:)(double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    if (a1 >= 0.1)
    {
      v1 = 1.0;
      if (a1 >= 0.95)
      {
        v1 = 0.0;
        if (a1 < 1.0)
        {
          v4 = (a1 + -0.95) / 0.05;
          v5 = v4 * 6.0 * ((1.0 - v4) * (1.0 - v4)) + pow(1.0 - v4, 3.0) - (1.0 - v4) * (v4 * v4 * 3.0);
          return v5 + pow(v4, 3.0) * 0.0;
        }
      }
    }

    else
    {
      v2 = a1 / 0.1;
      v3 = (1.0 - a1 / 0.1) * (v2 * v2 * 6.0) + pow(1.0 - a1 / 0.1, 3.0) * 0.0 - v2 * 3.0 * ((1.0 - a1 / 0.1) * (1.0 - a1 / 0.1));
      return pow(v2, 3.0) + v3;
    }
  }

  return v1;
}

void type metadata accessor for AnyDynamicAttributeModifier<TextScaleAttributeModifier>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>)
  {
    v4 = type metadata accessor for AnyDynamicAttributeModifier(0, &type metadata for TextScaleAttributeModifier, &protocol witness table for TextScaleAttributeModifier, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>);
    }
  }
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect(0, a2, a3);
    v7 = a3(a1, &type metadata for SmallTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

NSAttributedString_optional __swiftcall Text.Effect.Content.resolveIfModified()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = v1;
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x19A8BDCD0](v18);
    v7 = v3 >> 62;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (v7)
  {
    if (v3 < 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x19A8BDCD0](v20))
    {
      goto LABEL_5;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_5:
  [v5 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString();
  swift_dynamicCast();
  v8 = v31;
  if (v7)
  {
    if (v3 < 0)
    {
      v19 = v3;
    }

    else
    {
      v19 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = MEMORY[0x19A8BDCD0](v19);
  }

  else
  {
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = &off_1E744B000;
  isEscapingClosureAtFileLocation = &unk_195CCA000;
  if (!v9)
  {
    goto LABEL_13;
  }

  v22 = [v5 length];
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = v3;
  v12[5] = v8;
  v13 = swift_allocObject();
  v24 = partial apply for closure #1 in Text.Effect.Content.resolveIfModified();
  *(v13 + 16) = partial apply for closure #1 in Text.Effect.Content.resolveIfModified();
  *(v13 + 24) = v12;
  v29 = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v30 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v28 = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);
  v10 = v5;

  v15 = v8;

  [(SEL *)v10 enumerateAttributesInRange:0 options:v22 usingBlock:0x100000, v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  isEscapingClosureAtFileLocation = &unk_195CCA000;
  v10 = &off_1E744B000;
  if (v6)
  {
    while (1)
    {
      if (one-time initialization token for kitFont != -1)
      {
LABEL_25:
        swift_once();
      }

      v23 = static NSAttributedStringKey.kitFont;
      v16 = [v5 v10[376]];
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = v4;
      v6[4] = v3;
      v6[5] = v8;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #2 in Text.Effect.Content.resolveIfModified();
      *(v17 + 24) = v6;
      v29 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v30 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v26 = *(isEscapingClosureAtFileLocation + 2272);
      v27 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v28 = &block_descriptor_14_0;
      isEscapingClosureAtFileLocation = _Block_copy(&aBlock);
      v10 = v30;
      v5 = v5;

      v8 = v8;

      [v5 enumerateAttribute:v23 inRange:0 options:v16 usingBlock:{0, isEscapingClosureAtFileLocation}];
      _Block_release(isEscapingClosureAtFileLocation);
      v3 = swift_isEscapingClosureAtFileLocation();

      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v24, v12);

      if ((v3 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_13:
      v24 = 0;
      v12 = 0;
      if (!v6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v24, v12);
  }

LABEL_31:
  v21 = v8;
  result.is_nil = v1;
  result.value.super.isa = v21;
  return result;
}

uint64_t type metadata completion function for AnyDynamicAttributeModifier(uint64_t a1)
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

uint64_t AnyDynamicAttributeModifier.__deallocating_deinit()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableAttributedString);
  }

  return result;
}

void closure #1 in Text.Effect.Content.resolveIfModified()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v17 = a1;
  if (a7 >> 62)
  {
    if ((a7 & 0x8000000000000000) != 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = a7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = MEMORY[0x19A8BDCD0](v15, a2, a3, a4, a5, a6);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  v12 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19A8BDB80](i, a7);
    }

    else
    {
      v14 = *(a7 + 8 * i + 32);
    }

    (*(*v14 + 80))(&v17);
  }

LABEL_15:
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a8 setAttributes:isa range:{a2, a3}];
}

void closure #2 in Text.Effect.Content.resolveIfModified()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8)
{
  type metadata accessor for CTFontRef(0);
  type metadata accessor for Any?();
  v10 = Optional._bridgeToObjectiveC()();
  v11 = static CTFontRef.make(platformFont:)(v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = specialized Text.Effect.Content.resolveFont(_:context:)(v11, a6);
    if (one-time initialization token for kitFont != -1)
    {
      swift_once();
    }

    [a8 addAttribute:static NSAttributedStringKey.kitFont value:? range:?];
  }
}

id Text.Effect.Content.modifier(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;

  MEMORY[0x19A8BD720](v5);
  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v4;
}

{
  v4 = a2;

  MEMORY[0x19A8BD720](v5);
  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WeightDeltaModifier()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x19A8BDE80](*&v4);
  specialized ClosedRange<>.hash(into:)(v1, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WeightDeltaModifier(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v2);

  return specialized ClosedRange<>.hash(into:)(v3, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WeightDeltaModifier(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x19A8BDE80](*&v5);
  specialized ClosedRange<>.hash(into:)(v2, v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance WeightDeltaModifier(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

void TextScaleAttributeModifier.modify(attributes:)(double a1)
{
  v2 = *MEMORY[0x1E69DB720];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = MEMORY[0x1E69E6158];
  v5[0] = v3;
  v5[1] = v4;
  specialized Dictionary.subscript.setter(v5, v2);
  if (one-time initialization token for _textScaleRatio != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x1E69E7DE0];
  *v5 = a1;
  specialized Dictionary.subscript.setter(v5, static NSAttributedStringKey._textScaleRatio);
  if (one-time initialization token for _textScaleStaticWeightMatching != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x1E69E6370];
  LOBYTE(v5[0]) = 0;
  specialized Dictionary.subscript.setter(v5, static NSAttributedStringKey._textScaleStaticWeightMatching);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7, v1);
}

uint64_t specialized ClosedRange<>.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x19A8BDE80](*&v3);
}

void specialized WeightDeltaModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1, double a2, double a3, double a4)
{
  v8 = *a1;
  v9 = CTFontCreateWithFontDescriptor(*a1, 0.0, 0);
  CTFontGetWeight();
  v11 = (v10 + 1.0) * 500.0 + a2;
  if (v11 < a3)
  {
    v11 = a3;
  }

  if (v11 > a4)
  {
    v11 = a4;
  }

  v12 = (v11 + -500.0) / 500.0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, [String : CGFloat])>, type metadata accessor for (String, [String : CGFloat]));
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, CGFloat)>, type metadata accessor for (String, CGFloat));
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_195CC8D00;
  *(v20 + 32) = v16;
  v21 = v20 + 32;
  *(v20 + 40) = v18;
  *(v20 + 48) = v12;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(v21, type metadata accessor for (String, CGFloat));
  *(inited + 48) = v22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(inited + 32, type metadata accessor for (String, [String : CGFloat]));
  type metadata accessor for [String : CGFloat]();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v8, isa);

  *a1 = CopyWithAttributes;
}

CTFontDescriptorRef specialized Text.Effect.Content.resolveFont(_:context:)(const __CTFont *a1, unint64_t a2)
{
  result = CTFontCopyFontDescriptor(a1);
  v5 = result;
  v21 = result;
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x19A8BDCD0](v20);
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8BDB80](i, a2);
    }

    else
    {
      v8 = *(a2 + 8 * i + 32);
    }

    (*(*v8 + 80))(&v21);
  }

  v5 = v21;
LABEL_10:
  v9 = CTFontCreateWithFontDescriptor(v5, 0.0, 0);
  result = CTFontCopyDefaultCascadeListForLanguages(a1, 0);
  if (result)
  {
    v10 = result;
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any));
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195CC8D00;
    v12 = *MEMORY[0x1E6965678];
    *(inited + 32) = *MEMORY[0x1E6965678];
    type metadata accessor for CFArrayRef(0);
    *(inited + 64) = v13;
    *(inited + 40) = v10;
    v14 = v12;
    v15 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, Any)(inited + 32, type metadata accessor for (CFStringRef, Any));
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = CTFontDescriptorCreateWithAttributes(isa);

    v18 = v17;
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, 0.0, 0, v18);

    return CopyWithAttributes;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t instantiation function for generic protocol witness table for WeightDeltaModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (String, CGFloat)()
{
  if (!lazy cache variable for type metadata for (String, CGFloat))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, CGFloat));
    }
  }
}

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>(0);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x1E69E7CC0];
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a1, v5, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(v5, v8, type metadata accessor for Text.Effect.BaseContent);
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  swift_beginAccess();
  if (*(*(v9 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), (v12 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.BaseContent(v5, type metadata accessor for Text.Effect.BaseContent);
    v13 = *v8;
    v14 = v8[1];
    v40 = v8;
    v15 = v8[2];
    swift_beginAccess();
    v16 = *(v13 + 48);
    if (*(v16 + 16))
    {
      v1 = 0;
      do
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = *(*(v16 + 56) + 16 * v17);
        swift_endAccess();
        if (*(v19 + 16) == v1)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        v20 = *(v13 + 48);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_30;
        }

        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v23 & 1) == 0)
        {
          goto LABEL_30;
        }

        v24 = *(*(v20 + 56) + 16 * v22);
        swift_endAccess();
        if (v1 >= *(v24 + 16))
        {
          goto LABEL_25;
        }

        v25 = *(v24 + 32 + 8 * v1);
        if (v1)
        {
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *(*(*(v24 + 32 + 8 * v26) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v29 = __OFADD__(v27, v28);
            v27 += v28;
            if (v29)
            {
              break;
            }

            if (v1 == ++v26)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          swift_endAccess();
          __break(1u);
LABEL_28:
          swift_endAccess();
          __break(1u);
          goto LABEL_29;
        }

        v27 = 0;
LABEL_16:
        swift_beginAccess();
        v30 = *(*(v13 + 48) + 16);

        if (!v30)
        {
          goto LABEL_27;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v31 & 1) == 0)
        {
          goto LABEL_27;
        }

        swift_endAccess();
        swift_beginAccess();
        v32 = *(v13 + 48);
        if (!*(v32 + 16))
        {
          goto LABEL_28;
        }

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v34 & 1) == 0)
        {
          goto LABEL_28;
        }

        v35 = *(*(v32 + 56) + 16 * v33);
        swift_endAccess();
        if (v1 >= *(v35 + 16))
        {
          goto LABEL_26;
        }

        ++v1;
        v36 = *(v25 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
        v37 = *(v25 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder + 8);

        specialized Array.append<A>(contentsOf:)(v36, v37, v27);
        swift_beginAccess();
        v16 = *(v13 + 48);
      }

      while (*(v16 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_23:
    v38 = v40;
    *(v40 + *(v41 + 36)) = v1;
    outlined destroy of Text.Effect.BaseContent(v38, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
    return v42;
  }

  else
  {
LABEL_29:
    swift_endAccess();
    __break(1u);
LABEL_30:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ScaleRippleTextEffect.configuration(_:)(uint64_t *a1, __int128 *a2, uint64_t a3, __n128 a4)
{
  v6 = *a1;
  v7 = a1[1];
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a2, v19, type metadata accessor for Text.Effect.DrawableFragment<ScaleRippleTextEffect>);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD011ScaleRipplecF0V_Tt2g5(a2, a3, 1, v19);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v19[3];
  v11 = v19[4];
  *(v9 + 48) = v19[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v11;
  v12 = v20;
  v13 = v19[1];
  *(v9 + 16) = v19[0];
  *(v9 + 32) = v13;
  *(v9 + 96) = v12;
  *(v9 + 104) = partial apply for closure #1 in closure #1 in ScaleRippleTextEffect.configuration(_:);
  *(v9 + 112) = v8;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v9;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_195CC8D00;
  *(v15 + 32) = inited;

  specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v15);
  v17 = v16;
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v15 + 32);
  return v17;
}

void closure #1 in closure #1 in ScaleRippleTextEffect.configuration(_:)(unint64_t result, double *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3 + 16 * result;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = a2[5] - a2[4];
  v8 = 0.0;
  if (v7 < 0.0)
  {
    if (v5 >= 0.0)
    {
      goto LABEL_10;
    }

    v8 = 1.0;
    v7 = 0.0;
    if (v5 + v6 <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = (v7 - v5) / v6;
    goto LABEL_10;
  }

  if (v7 > v5)
  {
    v8 = 1.0;
    if (v5 + v6 > v7)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v9 = *a2;
  if (__OFSUB__(*a2, result))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = a2[29];
  v11 = a2[28];
  v12 = a2[26];
  if (v9 == result)
  {
    v13 = a2[27];
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
  }

  if (v9 == result)
  {
    v14 = a2[30];
  }

  else
  {
    v11 = 0.0;
    v10 = 0.0;
    v14 = 0.0;
  }

  v15 = v13 - v10;
  v16 = v14 + v10;
  MidX = CGRectGetMidX(*&v12);
  v18 = exp(v8 * -4.0) * 0.3;
  memset(v20, 0, sizeof(v20));
  v21 = MidX;
  v22 = v13;
  v23 = sin(v8 * 13.6) * v18 + 1.0;
  v24 = v23;
  v25 = 0x3FF0000000000000;
  v26 = 0;
  Text.Effect.TransformContext.record(position:for:)(v20, result, v19);
  Text.Effect.TransformContext.draw(state:keyPath:)(v19, 0, 0, 0, 1);
}

char *protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ScaleRippleTextEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, char a3@<W6>, void *a4@<X8>)
{
  v8 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a1, v10, type metadata accessor for Text.Effect.BaseContent);
  result = specialized ScaleRippleTextEffect.Timing.init(content:duration:)(v10, a2, a3 & 1);
  *a4 = v12;
  a4[1] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ScaleRippleTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

char *specialized ScaleRippleTextEffect.Timing.init(content:duration:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = specialized Sequence.flatMap<A>(_:)(a1);
  v14 = *(v13 + 16);
  v15 = (v14 - 1) * 0.05 + 1.16666667;
  if (a3)
  {
    v16 = (v14 - 1) * 0.05 + 1.16666667;
  }

  else
  {
    v16 = *&a2;
  }

  Text.Effect.BaseContent.layoutDirection.getter(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D0], v6);
  v17 = static LayoutDirection.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);
  if (v14)
  {
    v30 = a1;
    v19 = v16 * 0.05 / v15;
    v31 = MEMORY[0x1E69E7CC0];
    v20 = v16 * 1.16666667 / v15;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v22 = 0;
    v23 = v31;
    v24 = *(v13 + 16);
    while (!v24)
    {
LABEL_11:
      v25 = 0;
LABEL_12:
      if ((v17 & 1) == 0)
      {
        v25 = v14 + ~v25;
      }

      v31 = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v23 = v31;
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      v28 = v23 + 16 * v27;
      *(v28 + 32) = v19 * v25;
      *(v28 + 40) = v20;
      if (v22 == v14)
      {
        outlined destroy of Text.Effect.BaseContent(v30, type metadata accessor for Text.Effect.BaseContent);

        return v23;
      }
    }

    v25 = 0;
    while (*(v13 + 16) != v25)
    {
      if (*(v13 + 32 + 8 * v25) == v22)
      {
        goto LABEL_12;
      }

      if (v24 == ++v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    outlined destroy of Text.Effect.BaseContent(a1, type metadata accessor for Text.Effect.BaseContent);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized ScaleRippleTextEffect.configuration(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = partial apply for closure #1 in ScaleRippleTextEffect.configuration(_:);
  *(v0 + 24) = 0;
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v4[5] = v0;
  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v13[2] = *(a2 + 32);
  v14 = *(a2 + 48);
  v10 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v10;
  v16 = *(a3 + 32);
  v12[0] = v7;
  v12[1] = v8;
  result = v6(v12, v13, v15);
  *a4 = result;
  return result;
}

void type metadata accessor for Text.Effect.DrawableFragment<ScaleRippleTextEffect>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>)
  {
    v4 = lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect(0, a2, a3);
    v6 = type metadata accessor for Text.Effect.DrawableFragment(a1, &type metadata for ScaleRippleTextEffect, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Text.Effect.BaseContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Effect.TransformContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.TransformContext(uint64_t result, int a2, int a3)
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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
      *(result + 256) = (a2 - 1);
      return result;
    }

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}