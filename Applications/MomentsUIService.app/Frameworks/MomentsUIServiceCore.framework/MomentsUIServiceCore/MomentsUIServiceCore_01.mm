uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  *a1 = v7;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24, v18);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v35 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v8 = __chkstk_darwin(v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23, v17);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v20, v13);
      v24 = *(v17 + 3);
      v25 = *(v13 + 3);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = *&v21[16 * v99];
        v101 = *&v21[16 * v99 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v100, *v116 + *(v114 + 72) * *&v21[16 * v99 + 16], *v116 + *(v114 + 72) * v101, v5);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v119 = v21;
        result = specialized Array.remove(at:)(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v18);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v18);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_125;
        }

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[16 * v83 + 32];
        v5 = *&v21[16 * v45 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[16 * v45 + 32], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = specialized Array.remove(at:)(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v18);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

{
  v106 = a1;
  v119 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v113 = *(v119 - 8);
  v7 = __chkstk_darwin(v119);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v102 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v102 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v102 - v15;
  v115 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v117;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
    }

    v120 = v19;
    v98 = *(v19 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v19[16 * v98];
        v100 = *&v19[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v19[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v4);
        if (v13)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        }

        if (v98 - 2 >= *(v19 + 2))
        {
          goto LABEL_124;
        }

        v101 = &v19[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v120 = v19;
        result = specialized Array.remove(at:)(v98 - 1);
        v19 = v120;
        v98 = *(v120 + 2);
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v104 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v110 = v13;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v21 = *v115;
      v22 = *(v113 + 72);
      v4 = *v115 + v22 * (v18 + 1);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v16);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v21 + v22 * v18, v13);
      v23 = *(v16 + 3);
      v111 = *(v13 + 3);
      v112 = v23;
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
      v105 = v18;
      v24 = v18 + 2;
      v114 = v22;
      v25 = v21 + v22 * (v18 + 2);
      while (v17 != v24)
      {
        LODWORD(v116) = v112 < v111;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25, v16);
        v26 = v16;
        v27 = v110;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v110);
        v28 = *(v26 + 24);
        v29 = v17;
        v30 = v19;
        v31 = *(v27 + 24);
        v32 = v27;
        v16 = v26;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v32);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v26);
        v33 = v28 < v31;
        v19 = v30;
        v17 = v29;
        v34 = !v33;
        ++v24;
        v25 += v114;
        v4 += v114;
        if (((v116 ^ v34) & 1) == 0)
        {
          v17 = v24 - 1;
          break;
        }
      }

      v13 = v110;
      v20 = v105;
      if (v112 < v111)
      {
        if (v17 < v105)
        {
          goto LABEL_127;
        }

        if (v105 < v17)
        {
          v103 = v19;
          v35 = v114 * (v17 - 1);
          v36 = v17 * v114;
          v37 = v17;
          v38 = v105 * v114;
          do
          {
            if (v20 != --v37)
            {
              v116 = v37;
              v4 = *v115;
              if (!*v115)
              {
                goto LABEL_133;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4 + v38, v109);
              if (v38 < v35 || v4 + v38 >= v4 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
                v37 = v116;
              }

              else
              {
                v37 = v116;
                if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v109, v4 + v35);
            }

            ++v20;
            v35 -= v114;
            v36 -= v114;
            v38 += v114;
          }

          while (v20 < v37);
          v19 = v103;
          v20 = v105;
        }
      }
    }

    v39 = v115[1];
    if (v17 < v39)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v104)
      {
        if (__OFADD__(v20, v104))
        {
          goto LABEL_128;
        }

        if (v20 + v104 >= v39)
        {
          v40 = v115[1];
        }

        else
        {
          v40 = v20 + v104;
        }

        if (v40 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v40)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v42 = *(v19 + 2);
    v41 = *(v19 + 3);
    v4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v4;
    v43 = &v19[16 * v42];
    *(v43 + 4) = v20;
    *(v43 + 5) = v18;
    v44 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    if (v42)
    {
      while (1)
      {
        v45 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v46 = *(v19 + 4);
          v47 = *(v19 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_114;
          }

          v62 = &v19[16 * v4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_117;
          }

          v68 = &v19[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_121;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v19[16 * v4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_116;
        }

        v75 = &v19[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_119;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v83 = v45 - 1;
        if (v45 - 1 >= v4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v115)
        {
          goto LABEL_132;
        }

        v84 = *&v19[16 * v83 + 32];
        v4 = *&v19[16 * v45 + 40];
        v85 = v117;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * v84, *v115 + *(v113 + 72) * *&v19[16 * v45 + 32], *v115 + *(v113 + 72) * v4, v44);
        v117 = v85;
        if (v85)
        {
        }

        if (v4 < v84)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        }

        if (v83 >= *(v19 + 2))
        {
          goto LABEL_111;
        }

        v86 = &v19[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v4;
        v120 = v19;
        result = specialized Array.remove(at:)(v45);
        v19 = v120;
        v4 = *(v120 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v19[16 * v4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_112;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_113;
      }

      v57 = &v19[16 * v4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_115;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_118;
      }

      if (v61 >= v53)
      {
        v79 = &v19[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v48 < v82)
        {
          v45 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v17 = v115[1];
    if (v18 >= v17)
    {
      goto LABEL_98;
    }
  }

  v103 = v19;
  v87 = v17;
  v88 = *v115;
  v89 = *(v113 + 72);
  v90 = *v115 + v89 * (v87 - 1);
  v91 = v20;
  v92 = -v89;
  v105 = v91;
  v93 = v91 - v87;
  v116 = v87;
  v107 = v89;
  v108 = v40;
  v4 = v88 + v87 * v89;
LABEL_88:
  v111 = v4;
  v112 = v93;
  v114 = v90;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v16);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v90, v13);
    v94 = *(v16 + 3);
    v95 = *(v13 + 3);
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
    if (v94 >= v95)
    {
LABEL_87:
      v18 = v108;
      v90 = v114 + v107;
      v93 = v112 - 1;
      v4 = v111 + v107;
      if (++v116 != v108)
      {
        goto LABEL_88;
      }

      v19 = v103;
      v20 = v105;
      if (v108 < v105)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v88)
    {
      break;
    }

    v96 = v118;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, v118);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v96, v90);
    v90 += v92;
    v4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v37);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v12);
        v21 = v45;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v21);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v48, &v47, &v46);
  return 1;
}

{
  v42 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v8 = __chkstk_darwin(v42);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v36 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        while (1)
        {
          if (v26 <= a1)
          {
            v47 = v26;
            v45 = v36;
            goto LABEL_58;
          }

          v28 = a3;
          v37 = v23;
          a3 += v24;
          v29 = v25 + v24;
          v30 = v25 + v24;
          v31 = v43;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v43);
          v32 = v27;
          v33 = v44;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v27, v44);
          v34 = *(v31 + 24);
          v35 = *(v33 + 24);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v33);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v31);
          if (v34 < v35)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v32;
            v24 = v38;
            a1 = v39;
          }

          else
          {
            v27 = v32;
            v24 = v38;
            a1 = v39;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          v26 = v41;
          if (v29 <= v40)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v28 < v41 || a3 >= v41)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v32;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v43);
        v20 = v44;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v44);
        v21 = *(v19 + 24);
        v22 = *(v20 + 24);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v20);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v47, &v46, &v45);
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
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

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMR);
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
      if ((v4 & 1) == 0)
      {
      }

      v22 = static Hasher._hash(seed:_:)();
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      specialized _NativeDictionary._delete(at:)(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25 + v26 * (v24 | (v19 << 6)), v11);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v11, v14);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5Tf4gn_n(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[2] = v2;
    memset_pattern16(v3 + 4, &unk_1AC90, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = _sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5Tf4gn_n(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v5 = result;
        }

        if (v9 >= v5[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          v25 = result;
          v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= v5[2])
        {
          goto LABEL_29;
        }

        v27 = v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
          v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "&\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8;
  result = __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    v18 = xmmword_1AC80;
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v8, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = v18;
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v11._countAndFlagsBits = 0x616E6964726F6F63;
      v11._object = 0xED0000203A736574;
      String.append(_:)(v11);
      v19 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SdtMd, &_sSd_SdtMR);
      _print_unlocked<A, B>(_:_:)();
      v12._countAndFlagsBits = 0x6E6174736964202CLL;
      v12._object = 0xEC000000203A6563;
      String.append(_:)(v12);
      Double.write<A>(to:)();
      v13._countAndFlagsBits = 0x3A746E756F63202CLL;
      v13._object = 0xE900000000000020;
      String.append(_:)(v13);
      v19._countAndFlagsBits = v6[1]._object;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0x3A6E69616863202CLL;
      v15._object = 0xE900000000000020;
      String.append(_:)(v15);
      String.append(_:)(v6[2]);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v6);
      v16 = v20;
      v17 = v21;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 32) = v16;
      *(v10 + 40) = v17;
      print(_:separator:terminator:)();

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_187FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_68.segname[swift_isaMask & **a1])();
  *a2 = result;
  return result;
}

uint64_t sub_18858(void *a1, void **a2)
{
  v2 = *&stru_68.segname[(swift_isaMask & **a2) + 8];

  return v2(v3);
}

uint64_t sub_188BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.size + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_18918(void *a1, void **a2)
{
  v2 = *(&stru_68.offset + (swift_isaMask & **a2));

  return v2(v3);
}

uint64_t sub_18990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18A50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  type metadata accessor for (Double, Double)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GEOMapItem?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (Double, Double)()
{
  if (!lazy cache variable for type metadata for (Double, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Double, Double));
    }
  }
}

void type metadata accessor for GEOMapItem?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GEOMapItem?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10GEOMapItem_pMd, &_sSo10GEOMapItem_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GEOMapItem?);
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}