uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _OWORD *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        if (__OFADD__(a6, a7))
        {
LABEL_24:
          __break(1u);
          return result;
        }

        v11 = a2;
        v19 = result;
        v12 = 0;
        v13 = a4 + 4;
        v18 = a3;
        v14 = a3 - 1;
        while (1)
        {
          if (a7 == v12)
          {
            a3 = a7;
            v17 = a6 + a7;
            result = v19;
            goto LABEL_20;
          }

          if (a5)
          {
            if (v12 >= a4[2])
            {
              goto LABEL_22;
            }

            result = outlined init with copy of TableRowID(v13, &v20);
          }

          else
          {
            v15 = *(*a4 + 104);

            v15(&v20, v12);
            result = outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a4, 0);
          }

          v22 = v20;
          v23[0] = v21[0];
          *(v23 + 9) = *(v21 + 9);
          if (__OFADD__(a6 + v12, 1))
          {
            break;
          }

          *&v24[9] = *(v23 + 9);
          v23[2] = v22;
          *v24 = v23[0];
          v16 = v23[0];
          *v11 = v22;
          v11[1] = v16;
          *(v11 + 25) = *&v24[9];
          if (v14 == v12)
          {
            v17 = a6 + v12 + 1;
            result = v19;
            a3 = v18;
            goto LABEL_20;
          }

          v11 += 3;
          ++v12;
          v13 += 6;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
LABEL_16:
    a3 = 0;
  }

  v17 = a6;
LABEL_20:
  *result = a4;
  *(result + 8) = a5 & 1;
  *(result + 16) = a6;
  *(result + 24) = a7;
  *(result + 32) = v17;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = 0;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *(v4 + 32) = v18;
    *(v4 + 48) = v19;
    *(v4 + 64) = v20;
    *v4 = v16;
    *(v4 + 16) = v17;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      if (v7 - 1 == _VariadicView_Children.endIndex.getter())
      {
        v5 = v7 - 1;
        goto LABEL_13;
      }

      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v7 - 1 >= result)
      {
        break;
      }

      v20 = v7;
      *(v6 + 64) = v13;
      *(v6 + 80) = v14;
      *(v6 + 96) = v15;
      *v6 = v9;
      *(v6 + 16) = v10;
      *(v6 + 32) = v11;
      *(v6 + 48) = v12;
      if (v5 == v7)
      {
        goto LABEL_13;
      }

      v6 += 104;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_17:
    v9 = a3;
LABEL_19:
    *a1 = a4;
    a1[1] = v9;
    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!(a4 >> 62))
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  v9 = __CocoaSet.count.getter();
LABEL_6:
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v9 == v10)
    {
      goto LABEL_19;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x18D00E9C0](v10, a4);
      v12 = v13;
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v12 = *(a4 + 8 * v10 + 32);
    }

    (*(*v12 + 120))(&v14, v13);

    if (!v15)
    {
      break;
    }

    outlined init with take of Decodable & Encodable & Hashable(&v14, v16);
    outlined init with take of Decodable & Encodable & Hashable(v16, v17);
    outlined init with take of Decodable & Encodable & Hashable(v17, v4);
    if (v11 == a3)
    {
      goto LABEL_17;
    }

    v4 += 56;
    ++v10;
    if (v11 >= a3)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (a4 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v10 = 0;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (i == v10)
          {
            goto LABEL_18;
          }

          if ((a4 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x18D00E9C0](v10, a4);
            v12 = v13;
          }

          else
          {
            if (v10 >= *(v5 + 16))
            {
              goto LABEL_20;
            }

            v12 = *(a4 + 8 * v10 + 32);
          }

          (*(*v12 + 112))(v15, v13);

          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v4);
          if (v11 == a3)
          {
            goto LABEL_16;
          }

          v4 += 40;
          ++v10;
          if (v11 >= a3)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }
    }

LABEL_16:
    i = a3;
  }

  else
  {
    i = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = i;
  return i;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Date();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_15:
    _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v23, a1, type metadata accessor for AnimationTimelineSchedule.Entries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v18 = a1;
    v11 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
    v12 = (v22 + 16);
    v19 = *(v23 + *(v11 + 20) + 8);
    v20 = (v22 + 56);
    v13 = (v22 + 48);
    v14 = (v22 + 32);
    a1 = 1;
    v15 = v21;
    while ((v19 & 1) == 0)
    {
      (*v12)(v8, v23, v9);
      (*v20)(v8, 0, 1, v9);
      static Date.+= infix(_:_:)();
      if ((*v13)(v8, 1, v9) == 1)
      {
        goto LABEL_13;
      }

      v16 = *v14;
      (*v14)(v15, v8, v9);
      v16(a2, v15, v9);
      if (a3 == a1)
      {
        goto LABEL_14;
      }

      a2 += *(v22 + 72);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    (*v20)(v8, 1, 1, v9);
LABEL_13:
    outlined destroy of TableColumnCollection.Entry?(v8, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
LABEL_14:
    a1 = v18;
    goto LABEL_15;
  }

  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v15 = v14 | (v9 << 6);
      v16 = *(*(a4 + 48) + 8 * v15);
      v17 = (*(a4 + 56) + 48 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      *a2 = v16;
      *(a2 + 8) = v18;
      *(a2 + 24) = v19;
      *(a2 + 40) = v20;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 56;
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
      v22 = v9 + 1;
    }

    else
    {
      v22 = (63 - v6) >> 6;
    }

    v9 = v22 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v41 = type metadata accessor for DateComponents();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v35 = *(v3 + 72);
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  v38 = v13;
  v43 = v10 & 1;
  if (!a2)
  {
LABEL_24:
    v16 = 0;
    v22 = v8;
    v23 = v9;
LABEL_30:
    v26 = v43;
    *v5 = *v4;
    v5[2] = v6;
    v5[3] = v7;
    v5[4] = v8;
    v5[5] = v9;
    *(v5 + 48) = v10;
    *(v5 + 49) = *(v4 + 49);
    *(v5 + 13) = *(v4 + 52);
    v5[7] = v11;
    v5[8] = v12;
    *(v5 + 72) = v35;
    v5[10] = v22;
    v5[11] = v23;
    *(v5 + 96) = v26;
    v5[13] = v38;
    v5[14] = v14;
    return v16;
  }

  if (!a3)
  {
    v22 = v8;
    v23 = v9;
    v16 = 0;
    goto LABEL_30;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = a2;
    v33 = v4;
    v34 = v12;
    v16 = 0;
    v30 = v7;
    v31 = v6;
    v37 = v6 + v7;
    v17 = __OFADD__(v6, v7);
    v36 = v17;
    v28 = v9;
    v18 = a3 - 1;
    v32 = v11;
    v19 = v8 - v11;
    v20 = v9;
    v29 = v10;
    LOBYTE(v6) = v10;
    v21 = v8;
    while (1)
    {
      if (!(v19 + v16))
      {
        if (v6)
        {
          if (v35)
          {
            v12 = v34;
LABEL_28:
            v43 = v6 & 1;
            v11 = v32;
            v4 = v33;
            v22 = v32;
            v23 = v20;
            v7 = v30;
            v6 = v31;
            goto LABEL_29;
          }
        }

        else if ((v35 & 1) == 0 && v20 == v34)
        {
          v12 = v34;
          v20 = v34;
          goto LABEL_28;
        }
      }

      v22 = v8 + v16 + 1;
      if (__OFADD__(v8 + v16, 1))
      {
        break;
      }

      if (v36)
      {
        goto LABEL_32;
      }

      if (v22 == v37)
      {
        v23 = 0;
      }

      else
      {
        if (v6)
        {
          goto LABEL_35;
        }

        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_33;
        }
      }

      v39[0] = v8 + v16;
      v39[1] = v20;
      v40 = v6 & 1;
      result = v38(v41, v39);
      v24 = v41[3];
      v15[2] = v41[2];
      v15[3] = v24;
      v15[4] = v42[0];
      *(v15 + 74) = *(v42 + 10);
      v25 = v41[1];
      *v15 = v41[0];
      v15[1] = v25;
      if (v18 == v16)
      {
        v43 = v22 == v37;
        v16 = a3;
        v11 = v32;
        v4 = v33;
        v12 = v34;
        v7 = v30;
        v6 = v31;
        v8 = v21;
LABEL_29:
        v10 = v29;
        v9 = v28;
        goto LABEL_30;
      }

      v15 += 6;
      v4 = ++v16;
      v20 = v23;
      v6 = v22 == v37;
      v8 = v21;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  memcpy(__dst, v3, 0x119uLL);
  outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(__dst, __src, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
  v6 = *(&__dst[15] + 1);
  v7 = *&__dst[15];
  v8 = __dst[16];
  result = outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(__dst, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
  __src[18] = __PAIR128__(v6, v7);
  LOBYTE(__src[19]) = v8;
  v10 = v3[37];
  v25 = v3[36];
  *(&__src[19] + 1) = v25;
  *&__src[20] = v10;
  if (!a2)
  {
LABEL_24:
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    memcpy(a1, __src, 0x148uLL);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a3;
    a3 = 0;
    v20 = *&__src[17];
    v21 = BYTE8(__src[17]);
    v18 = v11;
    v23 = v11 - 1;
    v24 = v7 - *(&__src[16] + 1);
    while (1)
    {
      if (!(v24 + a3))
      {
        if (v8)
        {
          if (v21)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = v21;
          if (v6 != v20)
          {
            v12 = 1;
          }

          if ((v12 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      v13 = v7 + a3 + 1;
      if (__OFADD__(v7 + a3, 1))
      {
        break;
      }

      v14 = (*&__src[13] + *(&__src[13] + 1));
      if (__OFADD__(*&__src[13], *(&__src[13] + 1)))
      {
        goto LABEL_28;
      }

      v15 = *(&__src[11] + 1);
      v16 = *&__src[11];
      if (*(*(&__src[11] + 1) + 16) | *(*&__src[11] + 16))
      {
        v22 = *&__src[14];

        v14 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(__dst, v15, v16, v22, v14);
      }

      if (v13 == v14)
      {
        v17 = 0;
      }

      else
      {
        if (v8)
        {
          goto LABEL_31;
        }

        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      *&__src[18] = v7 + a3 + 1;
      *(&__src[18] + 1) = v17;
      LOBYTE(__src[19]) = v13 == v14;
      v26[0] = v7 + a3;
      v26[1] = v6;
      v27 = v8 & 1;
      result = v25(__dst, v26);
      a2[2] = __dst[2];
      a2[3] = __dst[3];
      a2[4] = __dst[4];
      *(a2 + 74) = *(&__dst[4] + 10);
      *a2 = __dst[0];
      a2[1] = __dst[1];
      if (v23 == a3)
      {
        a3 = v18;
        goto LABEL_26;
      }

      a2 += 6;
      ++a3;
      v6 = v17;
      v8 = v13 == v14;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 56;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 56;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 56;
    v5 -= 56;
    v19 = v12;
    do
    {
      v20 = (v5 + 56);
      v21 = *(v19 - 56);
      v19 -= 56;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v25 = *v18;
          v26 = *(v6 - 40);
          v27 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v26;
          *(v5 + 32) = v27;
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 56, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v12)
      {
        v22 = *v19;
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        *(v5 + 48) = *(v19 + 48);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
      }

      v5 -= 56;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v28 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v29 = (v28 >> 4) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v29])
  {
    memmove(v6, v4, 56 * v29);
  }

  return 1;
}

uint64_t specialized DropPlaceholderListModifier.PlaceholderViews.init(base:placeholder:sourceIndex:destinationIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  v9 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (v9 < 0 || result < v9)
  {
    goto LABEL_11;
  }

  *(v5 + 40) = v9;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4 & 1;
  *(v5 + 64) = a5;
  v11 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (v11 < 0 || result < v11)
  {
    goto LABEL_13;
  }

  v12 = *(v5 + 40);
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (a4 & 1) == 0;
  v13 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (!v13)
  {
    *(v5 + 72) = v16;
    *(v5 + 16) = 0;
    return v5;
  }

LABEL_15:
  __break(1u);
  return result;
}

void type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)()
{
  if (!lazy cache variable for type metadata for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayoutCoordinateSpace, &unk_1EFFBF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayoutCoordinateSpace, &unk_1EFFBF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableChildCoordinateSpace, &type metadata for ReorderableChildCoordinateSpace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableChildCoordinateSpace, &type metadata for ReorderableChildCoordinateSpace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ArchivedViewStates and conformance _ArchivedViewStates(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput()
{
  result = lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput;
  if (!lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragSourceProxyInput, &unk_1EFFBF018, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput;
  if (!lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragSourceProxyInput, &unk_1EFFBF018, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier()
{
  result = lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier;
  if (!lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier);
  }

  return result;
}

double specialized ReorderableLayout.sizeThatFits(in:context:child:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  LayoutProxy.size(in:)();
  v4 = v3;
  v6 = COERCE_DOUBLE(_ProposedSize.width.getter());
  if (v4 >= v6)
  {
    v6 = v4;
  }

  if ((v5 & 1) == 0)
  {
    v4 = v6;
  }

  _ProposedSize.height.getter();
  return v4;
}

void type metadata accessor for IndexingIterator<_ArchivedViewStates>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<_ArchivedViewStates>)
  {
    type metadata accessor for _ArchivedViewStates(255);
    lazy protocol witness table accessor for type _ArchivedViewStates and conformance _ArchivedViewStates(&lazy protocol witness table cache variable for type _ArchivedViewStates and conformance _ArchivedViewStates, type metadata accessor for _ArchivedViewStates, protocol conformance descriptor for _ArchivedViewStates);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<_ArchivedViewStates>);
    }
  }
}

uint64_t outlined destroy of TableColumnCollection.Entry?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double destroy for ConditionalDraggingModifier(void *a1)
{
  if (a1[17])
  {
    if (a1[1])
    {
    }

    if (a1[3])
    {
    }

    if (a1[5])
    {
    }

    if (a1[7])
    {
    }

    if (a1[12])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 9);
    }

    if (a1[15] >= 2uLL)
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 136))
  {
    v6 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v6;
    *(a1 + 128) = *(a2 + 128);
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    return a1;
  }

  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v12 = *(a2 + 40);
  if (v12)
  {
    v13 = *(a2 + 48);
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v14 = *(a2 + 56);
  if (!v14)
  {
    *(a1 + 56) = *(a2 + 56);
    v16 = *(a2 + 96);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_16:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_17;
  }

  v15 = *(a2 + 64);
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;

  v16 = *(a2 + 96);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(a1 + 96) = v16;
  (**(v16 - 8))(a1 + 72, a2 + 72);
LABEL_17:
  v17 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  v18 = (a2 + 112);
  if (v17 == 1)
  {
    *(a1 + 112) = *v18;
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    *(a1 + 112) = *v18;
    if (v17)
    {
      v19 = *(a2 + 128);
      *(a1 + 120) = v17;
      *(a1 + 128) = v19;
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
    }
  }

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  if (!*(a1 + 136))
  {
    if (!v4)
    {
      *a1 = *a2;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      v19 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v19;
      *(a1 + 16) = v17;
      *(a1 + 32) = v18;
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v22;
      *(a1 + 80) = v20;
      *(a1 + 96) = v21;
      return a1;
    }

    *a1 = *a2;
    v8 = *(a2 + 8);
    if (v8)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    v47 = *(a2 + 24);
    if (v47)
    {
      v48 = *(a2 + 32);
      *(a1 + 24) = v47;
      *(a1 + 32) = v48;
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
    }

    v49 = *(a2 + 40);
    if (v49)
    {
      v50 = *(a2 + 48);
      *(a1 + 40) = v49;
      *(a1 + 48) = v50;
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
    }

    v51 = *(a2 + 56);
    if (v51)
    {
      v52 = *(a2 + 64);
      *(a1 + 56) = v51;
      *(a1 + 64) = v52;

      v53 = *(a2 + 96);
      if (v53)
      {
LABEL_62:
        *(a1 + 96) = v53;
        (**(v53 - 8))(a1 + 72, a2 + 72);
LABEL_65:
        *(a1 + 104) = *(a2 + 104);
        v55 = (a2 + 120);
        v56 = (a2 + 112);
        if (*(a2 + 120) == 1)
        {
          v57 = *v56;
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 112) = v57;
        }

        else
        {
          *(a1 + 112) = *v56;
          if (*v55)
          {
            v58 = *(a2 + 128);
            *(a1 + 120) = *v55;
            *(a1 + 128) = v58;
          }

          else
          {
            *(a1 + 120) = *v55;
          }
        }

        *(a1 + 136) = *(a2 + 136);

        return a1;
      }
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      v53 = *(a2 + 96);
      if (v53)
      {
        goto LABEL_62;
      }
    }

    v54 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v54;
    goto LABEL_65;
  }

  if (v4)
  {
    *a1 = *a2;
    v6 = (a2 + 8);
    v5 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if (v5)
      {
        v7 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v7;

        goto LABEL_15;
      }
    }

    else if (v5)
    {
      v16 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v16;

      goto LABEL_15;
    }

    *(a1 + 8) = *v6;
LABEL_15:
    v23 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v23)
      {
        v24 = *(a2 + 32);
        *(a1 + 24) = v23;
        *(a1 + 32) = v24;

        goto LABEL_22;
      }
    }

    else if (v23)
    {
      v25 = *(a2 + 32);
      *(a1 + 24) = v23;
      *(a1 + 32) = v25;

      goto LABEL_22;
    }

    *(a1 + 24) = *(a2 + 24);
LABEL_22:
    v26 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (v26)
      {
        v27 = *(a2 + 48);
        *(a1 + 40) = v26;
        *(a1 + 48) = v27;

        goto LABEL_29;
      }
    }

    else if (v26)
    {
      v28 = *(a2 + 48);
      *(a1 + 40) = v26;
      *(a1 + 48) = v28;

      goto LABEL_29;
    }

    *(a1 + 40) = *(a2 + 40);
LABEL_29:
    v30 = (a2 + 56);
    v29 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if (v29)
      {
        v31 = *(a2 + 64);
        *(a1 + 56) = v29;
        *(a1 + 64) = v31;

        goto LABEL_36;
      }
    }

    else if (v29)
    {
      v33 = *(a2 + 64);
      *(a1 + 56) = v29;
      *(a1 + 64) = v33;

      goto LABEL_36;
    }

    v32 = *v30;
    *(a1 + 56) = *v30;
LABEL_36:
    v34 = *(a2 + 96);
    if (*(a1 + 96))
    {
      v35 = (a1 + 72);
      if (v34)
      {
        __swift_assign_boxed_opaque_existential_0(v35, (a2 + 72), v32);
        goto LABEL_43;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else if (v34)
    {
      *(a1 + 96) = v34;
      (**(v34 - 8))(a1 + 72, a2 + 72);
      goto LABEL_43;
    }

    v36 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v36;
LABEL_43:
    v37 = *(a1 + 120);
    *(a1 + 104) = *(a2 + 104);
    v38 = (a1 + 112);
    v40 = (a2 + 120);
    v39 = *(a2 + 120);
    v41 = (a2 + 112);
    if (v37 == 1)
    {
      if (v39 == 1)
      {
        v42 = *v41;
        *(a1 + 128) = *(a2 + 128);
        *v38 = v42;
LABEL_76:
        *(a1 + 136) = *(a2 + 136);

        return a1;
      }

      *v38 = *v41;
      if (*v40)
      {
        v44 = *(a2 + 128);
        *(a1 + 120) = *v40;
LABEL_73:
        *(a1 + 128) = v44;

        goto LABEL_76;
      }
    }

    else
    {
      if (v39 == 1)
      {
        outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
        v43 = *(a2 + 128);
        *v38 = *v41;
        *(a1 + 128) = v43;
        goto LABEL_76;
      }

      *v38 = *v41;
      v45 = *v40;
      if (v37)
      {
        if (v45)
        {
          v46 = *(a2 + 128);
          *(a1 + 120) = v45;
          *(a1 + 128) = v46;

          goto LABEL_76;
        }
      }

      else if (v45)
      {
        v44 = *(a2 + 128);
        *(a1 + 120) = v45;
        goto LABEL_73;
      }
    }

    *(a1 + 120) = *v40;
    goto LABEL_76;
  }

  outlined destroy of _DraggingModifier(a1);
  *a1 = *a2;
  v10 = *(a2 + 64);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  v13 = *(a2 + 128);
  v15 = *(a2 + 80);
  v14 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v13;
  *(a1 + 80) = v15;
  *(a1 + 96) = v14;
  return a1;
}

uint64_t assignWithTake for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    v4 = *(a2 + 136);
    if (v4)
    {
      *a1 = *a2;
      v6 = (a2 + 8);
      v5 = *(a2 + 8);
      if (*(a1 + 8))
      {
        if (v5)
        {
          v7 = *(a2 + 16);
          *(a1 + 8) = v5;
          *(a1 + 16) = v7;

          goto LABEL_12;
        }
      }

      else if (v5)
      {
        v12 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v12;
        goto LABEL_12;
      }

      *(a1 + 8) = *v6;
LABEL_12:
      v13 = *(a2 + 24);
      if (*(a1 + 24))
      {
        if (v13)
        {
          v14 = *(a2 + 32);
          *(a1 + 24) = v13;
          *(a1 + 32) = v14;

          goto LABEL_19;
        }
      }

      else if (v13)
      {
        v15 = *(a2 + 32);
        *(a1 + 24) = v13;
        *(a1 + 32) = v15;
        goto LABEL_19;
      }

      *(a1 + 24) = *(a2 + 24);
LABEL_19:
      v16 = *(a2 + 40);
      if (*(a1 + 40))
      {
        if (v16)
        {
          v17 = *(a2 + 48);
          *(a1 + 40) = v16;
          *(a1 + 48) = v17;

          goto LABEL_26;
        }
      }

      else if (v16)
      {
        v18 = *(a2 + 48);
        *(a1 + 40) = v16;
        *(a1 + 48) = v18;
        goto LABEL_26;
      }

      *(a1 + 40) = *(a2 + 40);
LABEL_26:
      v19 = *(a2 + 56);
      if (*(a1 + 56))
      {
        if (v19)
        {
          v20 = *(a2 + 64);
          *(a1 + 56) = v19;
          *(a1 + 64) = v20;

          goto LABEL_33;
        }
      }

      else if (v19)
      {
        v21 = *(a2 + 64);
        *(a1 + 56) = v19;
        *(a1 + 64) = v21;
        goto LABEL_33;
      }

      *(a1 + 56) = *(a2 + 56);
LABEL_33:
      if (*(a1 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 72));
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      v22 = *(a1 + 120);
      *(a1 + 104) = *(a2 + 104);
      v23 = (a1 + 112);
      if (v22 != 1)
      {
        v24 = *(a2 + 120);
        if (v24 != 1)
        {
          *v23 = *(a2 + 112);
          if (v22)
          {
            if (v24)
            {
              v26 = *(a2 + 128);
              *(a1 + 120) = v24;
              *(a1 + 128) = v26;

              goto LABEL_39;
            }
          }

          else if (v24)
          {
            v27 = *(a2 + 128);
            *(a1 + 120) = v24;
            *(a1 + 128) = v27;
            goto LABEL_39;
          }

          *(a1 + 120) = *(a2 + 120);
          goto LABEL_39;
        }

        outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
      }

      *v23 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
LABEL_39:
      *(a1 + 136) = v4;

      return a1;
    }

    outlined destroy of _DraggingModifier(a1);
  }

  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  *(a1 + 128) = *(a2 + 128);
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalDraggingModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t storeEnumTagSinglePayload for ConditionalDraggingModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for DragReorderableLayoutCore(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for DragReorderableLayoutAdaptor(319, &AssociatedTypeWitness);
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = *(result - 8) + 64;
    v5 = MEMORY[0x1E69E5D20] + 64;
    v6 = ")";
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      AssociatedConformanceWitness = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragReorderableLayoutCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v46 = *(v3 + 64);
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v45 = swift_getAssociatedTypeWitness();
  v8 = *(v45 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = v9 | *(v3 + 80) & 0xF8 | v6;
  v12 = v11 <= 7 && ((*(v8 + 80) | v6 | *(v3 + 80)) & 0x100000) == 0;
  if (v12 && (v13 = v46 + v6, v14 = v7 + 7, ((-42 - (((((((((((((((v7 + 7 + (v13 & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9)) | v9) - v10 >= 0xFFFFFFFFFFFFFFE7))
  {
    __n = v10;
    v15 = ~v6;
    v47 = ((((((((((v7 + 7 + ((v46 + v6) & v15)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    (*(v3 + 16))(a1, a2, AssociatedTypeWitness);
    v16 = a1;
    v17 = (a1 + v13) & v15;
    v18 = (a2 + v13) & v15;
    (*(v5 + 16))(v17, v18, v4);
    v19 = ((v14 + v17) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v14 + v18) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    *(v24 + 8) = *(v25 + 8);
    *v24 = v26;
    v27 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v28 + 24);
    *(v27 + 24) = v29;
    *(v27 + 32) = *(v28 + 32);
    v30 = **(v29 - 8);

    v30(v27, v28, v29);
    v31 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v28 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((a1 + v47) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((a2 + v47) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v34;
    v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v35 = *v36;
    *(v35 + 8) = *(v36 + 8);
    v37 = *(v36 + 16);
    *(v35 + 25) = *(v36 + 25);
    *(v35 + 16) = v37;
    v38 = v9 + 41 + v35;
    v39 = v9 + 41 + v36;
    v40 = *(v8 + 48);

    if (v40(v39 & ~v9, 1, v45))
    {
      memcpy((v38 & ~v9), (v39 & ~v9), __n);
    }

    else
    {
      (*(v8 + 16))(v38 & ~v9, v39 & ~v9, v45);
      (*(v8 + 56))(v38 & ~v9, 0, 1, v45);
    }
  }

  else
  {
    v41 = *a2;
    *a1 = *a2;
    v16 = (v41 + (((v11 | 7) + 16) & ~(v11 | 7)));
  }

  return v16;
}

uint64_t destroy for DragReorderableLayoutCore(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = *(v4 + 56);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = v7 + 8;
  v9 = *(v7 + 80);
  v10 = v5 + v9;
  v11 = (v5 + v9 + a1) & ~v9;
  (*(v7 + 8))(v11, v6);
  v12 = *(v8 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1(((((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = ((((a1 + ((((((((((v12 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 41;
  v19 = v14;
  result = (*(v14 + 48))(v16 & ~v15, 1, v13);
  if (!result)
  {
    v18 = *(v19 + 8);

    return v18(v16 & ~v15, v13);
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableLayoutCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  v14 = (v7 + v11 + a2) & ~v11;
  (*(v9 + 16))(v13, v14, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  *v21 = *v22;
  *(v21 + 8) = v23;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  *(v24 + 24) = v26;
  *(v24 + 32) = *(v25 + 32);
  v27 = **(v26 - 8);

  v27(v24, v25, v26);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((((((((((v15 + (v12 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v44 = a1;
  v31 = ((v30 + a1) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v33 = *v34;
  *(v33 + 8) = *(v34 + 8);
  v35 = *(v34 + 16);
  *(v33 + 25) = *(v34 + 25);
  *(v33 + 16) = v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = v38 + 41 + v33;
  v40 = v38 + 41 + v34;
  v41 = *(v37 + 48);

  if (v41(v40 & ~v38, 1, v36))
  {
    if (*(v37 + 84))
    {
      v42 = *(v37 + 64);
    }

    else
    {
      v42 = *(v37 + 64) + 1;
    }

    memcpy((v39 & ~v38), (v40 & ~v38), v42);
  }

  else
  {
    (*(v37 + 16))(v39 & ~v38, v40 & ~v38, v36);
    (*(v37 + 56))(v39 & ~v38, 0, 1, v36);
  }

  return v44;
}

uint64_t assignWithCopy for DragReorderableLayoutCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  (*(v9 + 24))(v13, (v12 + a2) & ~v11, v8);
  v14 = *(v10 + 40) + 7;
  v15 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + ((v12 + a2) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  __swift_assign_boxed_opaque_existential_1((v19 & 0xFFFFFFFFFFFFFFF8), ((v17 + 31) & 0xFFFFFFFFFFFFFFF8));
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = v12 & ~v11;
  v26 = a1;
  v27 = ((((((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v28 = ((v27 + a1) & 0xFFFFFFFFFFFFFFF8);
  v29 = v27 + a2;
  v30 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v28 = *(v29 & 0xFFFFFFFFFFFFFFF8);

  v31 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v30 & 0xFFFFFFFFFFFFFFF8;
  *v31 = *(v30 & 0xFFFFFFFFFFFFFFF8);

  *(v31 + 8) = *((v30 & 0xFFFFFFFFFFFFFFF8) + 8);

  v33 = *((v30 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v31 + 24) = *((v30 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v31 + 16) = v33;
  v34 = *((v30 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v31 + 40) = *((v30 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v31 + 32) = v34;
  v35 = swift_getAssociatedTypeWitness();
  v36 = *(v35 - 8);
  v37 = *(v36 + 80);
  v38 = v37 + 41 + v31;
  v39 = v37 + 41 + v32;
  v40 = *(v36 + 48);
  LODWORD(a1) = v40(v38 & ~v37, 1, v35);
  v41 = v40(v39 & ~v37, 1, v35);
  if (a1)
  {
    if (!v41)
    {
      (*(v36 + 16))(v38 & ~v37, v39 & ~v37, v35);
      (*(v36 + 56))(v38 & ~v37, 0, 1, v35);
      return v26;
    }

    v42 = *(v36 + 84);
    v43 = *(v36 + 64);
  }

  else
  {
    if (!v41)
    {
      (*(v36 + 24))(v38 & ~v37, v39 & ~v37, v35);
      return v26;
    }

    v45 = *(v36 + 8);
    v44 = v36 + 8;
    v45(v38 & ~v37, v35);
    v42 = *(v44 + 76);
    v43 = *(v44 + 56);
  }

  if (v42)
  {
    v46 = v43;
  }

  else
  {
    v46 = v43 + 1;
  }

  memcpy((v38 & ~v37), (v39 & ~v37), v46);
  return v26;
}

uint64_t initializeWithTake for DragReorderableLayoutCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  (*(v9 + 32))(v13, (v12 + a2) & ~v11, v8);
  v14 = *(v10 + 32) + 7;
  v15 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + ((v12 + a2) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v24;
  v25 = *(v24 + 16);
  *(v23 + 32) = *(v24 + 32);
  *v23 = v26;
  *(v23 + 16) = v25;
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((((((((((v14 + (v12 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v33;
  v34 = v33[1];
  *(v32 + 25) = *(v33 + 25);
  *v32 = v35;
  v32[1] = v34;
  v36 = swift_getAssociatedTypeWitness();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = v32 + v38 + 41;
  v40 = v33 + v38 + 41;
  if ((*(v37 + 48))(v40 & ~v38, 1, v36))
  {
    if (*(v37 + 84))
    {
      v41 = *(v37 + 64);
    }

    else
    {
      v41 = *(v37 + 64) + 1;
    }

    memcpy((v39 & ~v38), (v40 & ~v38), v41);
  }

  else
  {
    (*(v37 + 32))(v39 & ~v38, v40 & ~v38, v36);
    (*(v37 + 56))(v39 & ~v38, 0, 1, v36);
  }

  return a1;
}

uint64_t assignWithTake for DragReorderableLayoutCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  (*(v9 + 40))(v13, (v12 + a2) & ~v11, v8);
  v14 = *(v10 + 24) + 7;
  v15 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + ((v12 + a2) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v20 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *v21 = v23;
  v24 = v20 & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v20 & 0xFFFFFFFFFFFFFFF8));
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (((v20 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = v12 & ~v11;
  v31 = a1;
  v32 = ((((((((((v14 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v33 = ((v32 + a1) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;

  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v35 = *v36;

  *(v35 + 8) = *(v36 + 8);

  v37 = *(v36 + 16);
  *(v35 + 24) = *(v36 + 24);
  *(v35 + 16) = v37;
  v38 = *(v36 + 32);
  *(v35 + 40) = *(v36 + 40);
  *(v35 + 32) = v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = *(v39 - 8);
  v41 = *(v40 + 80);
  v42 = v41 + 41 + v35;
  v43 = v41 + 41 + v36;
  v44 = *(v40 + 48);
  v45 = v44(v42 & ~v41, 1, v39);
  v46 = v44(v43 & ~v41, 1, v39);
  if (v45)
  {
    if (!v46)
    {
      (*(v40 + 32))(v42 & ~v41, v43 & ~v41, v39);
      (*(v40 + 56))(v42 & ~v41, 0, 1, v39);
      return v31;
    }

    v47 = *(v40 + 84);
    v48 = *(v40 + 64);
  }

  else
  {
    if (!v46)
    {
      (*(v40 + 40))(v42 & ~v41, v43 & ~v41, v39);
      return v31;
    }

    v50 = *(v40 + 8);
    v49 = v40 + 8;
    v50(v42 & ~v41, v39);
    v47 = *(v49 + 76);
    v48 = *(v49 + 56);
  }

  if (v47)
  {
    v51 = v48;
  }

  else
  {
    v51 = v48 + 1;
  }

  memcpy((v42 & ~v41), (v43 & ~v41), v51);
  return v31;
}

uint64_t getEnumTagSinglePayload for DragReorderableLayoutCore(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v38 = v5;
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v4 + 64) + v15;
  v21 = v16 + 7;
  v22 = (((((((((v16 + 7 + (v20 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = v17 + 41;
  if (a2 <= v14)
  {
    goto LABEL_40;
  }

  v24 = v19 + ((v23 + ((((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v28 < 2)
    {
LABEL_40:
      if (v9 >= v13)
      {
        if (v38 == v9)
        {
          v33 = *(v4 + 48);

          return v33(a1);
        }

        else
        {
          v34 = (a1 + v20) & ~v15;
          if (v7 == v9)
          {
            v35 = *(v6 + 48);

            return v35(v34, v7, AssociatedTypeWitness);
          }

          else
          {
            v36 = *((((v21 + v34) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
            if (v36 >= 0xFFFFFFFF)
            {
              LODWORD(v36) = -1;
            }

            return (v36 + 1);
          }
        }
      }

      else
      {
        v32 = (*(v11 + 48))((v23 + ((((a1 + v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
        if (v32 >= 2)
        {
          return v32 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_40;
  }

LABEL_27:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v14 + (v31 | v29) + 1;
}

void storeEnumTagSinglePayload for DragReorderableLayoutCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  v6 = *(v5 + 84);
  v45 = swift_getAssociatedTypeWitness();
  v7 = *(v45 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v5 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v7 + 80);
  v19 = v15 + v18;
  v20 = (v15 + v18) & ~v18;
  v21 = *(v7 + 64) + 7;
  v22 = (((((((((v21 + v20) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v12 + 80);
  v24 = (v23 + 41 + ((((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
  v25 = *(v12 + 64);
  if (v14)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v24 + v26;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v28 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v28))
      {
        v11 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v11 = v29;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v30 = ~v17 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v24 + v26);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_71:
              if (v11 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v11 > 1)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_68;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_71;
      }
    }

    else
    {
      bzero(a1, v24 + v26);
      *a1 = v30;
      v31 = 1;
      if (v11 > 1)
      {
        goto LABEL_71;
      }
    }

LABEL_68:
    if (v11)
    {
      a1[v27] = v31;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v27] = 0;
  }

  else if (v11)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v10 >= v16)
  {
    if (v10 >= a2)
    {
      if (v6 == v10)
      {
        v39 = v46;
        v40 = *(v5 + 56);
        v41 = a1;
        v42 = a2;
        v43 = v6;
      }

      else
      {
        v41 = (&a1[v19] & ~v18);
        if (v8 != v10)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v44 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v44 = a2 - 1;
          }

          *(((&v41[v21] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v44;
          return;
        }

        v40 = *(v7 + 56);
        v42 = a2;
        v43 = v8;
        v39 = v45;
      }

      v40(v41, v42, v43, v39);
      return;
    }

    if (v22 != -8)
    {
      bzero(a1, v22 + 8);
      *a1 = ~v10 + a2;
    }
  }

  else
  {
    v33 = v23 + 41 + (((&a1[v22 + 15] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v34 = (v33 & ~v23);
    if (v16 >= a2)
    {
      v38 = *(v13 + 56);

      v38(v33 & ~v23, a2 + 1);
    }

    else
    {
      if (v26 <= 3)
      {
        v35 = ~(-1 << (8 * v26));
      }

      else
      {
        v35 = -1;
      }

      if (v26)
      {
        v36 = v35 & (~v16 + a2);
        if (v26 <= 3)
        {
          v37 = v26;
        }

        else
        {
          v37 = 4;
        }

        bzero(v34, v26);
        if (v37 > 2)
        {
          if (v37 == 3)
          {
            *v34 = v36;
            v34[2] = BYTE2(v36);
          }

          else
          {
            *v34 = v36;
          }
        }

        else if (v37 == 1)
        {
          *v34 = v36;
        }

        else
        {
          *v34 = v36;
        }
      }
    }
  }
}

uint64_t _s7SwiftUI17_DraggingModifierVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>(255, a2);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, a2);
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, &protocol witness table for DragReorderableChildModifier);
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v2;
    v7[5] = v3;
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>(255, a2);
    v6 = v5;
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in DragReorderableLayoutCore.children.getter@<X0>(double *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DragReorderableLayoutCore(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in DragReorderableLayoutCore.children.getter(a1, v6, v7, a3, v9);
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>(255, a2);
    v7 = v6;
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t objectdestroy_44Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for DragReorderableLayoutCore(0, *(v4 + 16), *(v4 + 32), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v14[0] = AssociatedTypeWitness;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = swift_getAssociatedConformanceWitness();
  v14[4] = swift_getAssociatedConformanceWitness();
  v14[5] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DragReorderableLayoutAdaptor(0, v14);
  (*(*(v8 - 8) + 8))(v6 + *(v10 + 68), v8);

  __swift_destroy_boxed_opaque_existential_1((v6 + *(v10 + 84)));

  v11 = v5[13];
  v12 = *(v9 - 8);
  if (!(*(v12 + 48))(v6 + v11, 1, v9))
  {
    (*(v12 + 8))(v6 + v11, v9);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = *(type metadata accessor for DragReorderableLayoutCore(0, v5, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)(v4 + v9, v10, v5, v6, v7);
}

void type metadata accessor for DragPayloadBox<Drag.Payload<ObjectIdentifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DragPayloadBox<Drag.Payload<ObjectIdentifier>>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for Drag.Payload<ObjectIdentifier>, type metadata accessor for Drag.Payload);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>();
    v6 = type metadata accessor for DragPayloadBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DragPayloadBox<Drag.Payload<ObjectIdentifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>()
{
  result = lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>;
  if (!lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for Drag.Payload<ObjectIdentifier>, type metadata accessor for Drag.Payload);
    result = swift_getWitnessTable(protocol conformance descriptor for Drag.Payload<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for DraggingItem<ObjectIdentifier>, type metadata accessor for DraggingItem);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>);
    }
  }
}

void type metadata accessor for Drag.Payload<ObjectIdentifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Path?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for DropPlaceholderListModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DropPlaceholderListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = *(v10 + 9);
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    *(v12 + 9) = v11;
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t initializeWithCopy for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 9);
  *v7 = *v8;
  *(v7 + 9) = v9;
  return a1;
}

uint64_t assignWithCopy for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 16) = v10;
  return a1;
}

uint64_t initializeWithTake for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 9);
  *v7 = *v8;
  *(v7 + 9) = v9;
  return a1;
}

uint64_t assignWithTake for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 16) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
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
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for DropPlaceholderListModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

double destroy for DragReorderableChildModifier(void *a1)
{
  if (a1[18])
  {
    if (a1[2])
    {
    }

    if (a1[4])
    {
    }

    if (a1[6])
    {
    }

    if (a1[8])
    {
    }

    if (a1[13])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 10);
    }

    if (a1[16] >= 2uLL)
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (!*(a2 + 144))
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v7;
    *(a1 + 136) = *(a2 + 136);
    v8 = *(a2 + 24);
    v9 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v8;
    goto LABEL_23;
  }

  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(a2 + 40);
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  v12 = *(a2 + 48);
  if (v12)
  {
    v13 = *(a2 + 56);
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  v14 = *(a2 + 64);
  if (!v14)
  {
    *(a1 + 64) = *(a2 + 64);
    v16 = *(a2 + 104);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_16:
    v17 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v17;
    goto LABEL_17;
  }

  v15 = *(a2 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;

  v16 = *(a2 + 104);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(a1 + 104) = v16;
  (**(v16 - 8))(a1 + 80, a2 + 80);
LABEL_17:
  v18 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  v19 = (a2 + 120);
  if (v18 == 1)
  {
    *(a1 + 120) = *v19;
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    *(a1 + 120) = *v19;
    if (v18)
    {
      v20 = *(a2 + 136);
      *(a1 + 128) = v18;
      *(a1 + 136) = v20;
    }

    else
    {
      *(a1 + 128) = *(a2 + 128);
    }
  }

  *(a1 + 144) = *(a2 + 144);

LABEL_23:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithCopy for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 144);
  if (!*(a1 + 144))
  {
    if (!v4)
    {
      *(a1 + 8) = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
      v20 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v20;
      *(a1 + 40) = v19;
      *(a1 + 24) = v18;
      v21 = *(a2 + 88);
      v22 = *(a2 + 104);
      v23 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v23;
      *(a1 + 104) = v22;
      *(a1 + 88) = v21;
      goto LABEL_77;
    }

    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
    }

    else
    {
      *(a1 + 16) = *(a2 + 16);
    }

    v48 = *(a2 + 32);
    if (v48)
    {
      v49 = *(a2 + 40);
      *(a1 + 32) = v48;
      *(a1 + 40) = v49;
    }

    else
    {
      *(a1 + 32) = *(a2 + 32);
    }

    v50 = *(a2 + 48);
    if (v50)
    {
      v51 = *(a2 + 56);
      *(a1 + 48) = v50;
      *(a1 + 56) = v51;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
    }

    v52 = *(a2 + 64);
    if (v52)
    {
      v53 = *(a2 + 72);
      *(a1 + 64) = v52;
      *(a1 + 72) = v53;

      v54 = *(a2 + 104);
      if (v54)
      {
LABEL_62:
        *(a1 + 104) = v54;
        (**(v54 - 8))(a1 + 80, a2 + 80);
LABEL_65:
        *(a1 + 112) = *(a2 + 112);
        v56 = (a2 + 128);
        v57 = (a2 + 120);
        if (*(a2 + 128) == 1)
        {
          v58 = *v57;
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 120) = v58;
        }

        else
        {
          *(a1 + 120) = *v57;
          if (*v56)
          {
            v59 = *(a2 + 136);
            *(a1 + 128) = *v56;
            *(a1 + 136) = v59;
          }

          else
          {
            *(a1 + 128) = *v56;
          }
        }

        *(a1 + 144) = *(a2 + 144);

        goto LABEL_77;
      }
    }

    else
    {
      *(a1 + 64) = *(a2 + 64);
      v54 = *(a2 + 104);
      if (v54)
      {
        goto LABEL_62;
      }
    }

    v55 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v55;
    goto LABEL_65;
  }

  if (v4)
  {
    v5 = *(a1 + 16);
    *(a1 + 8) = *(a2 + 8);
    v7 = (a2 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        v8 = *(a2 + 24);
        *(a1 + 16) = v6;
        *(a1 + 24) = v8;

        goto LABEL_15;
      }
    }

    else if (v6)
    {
      v17 = *(a2 + 24);
      *(a1 + 16) = v6;
      *(a1 + 24) = v17;

      goto LABEL_15;
    }

    *(a1 + 16) = *v7;
LABEL_15:
    v24 = *(a2 + 32);
    if (*(a1 + 32))
    {
      if (v24)
      {
        v25 = *(a2 + 40);
        *(a1 + 32) = v24;
        *(a1 + 40) = v25;

        goto LABEL_22;
      }
    }

    else if (v24)
    {
      v26 = *(a2 + 40);
      *(a1 + 32) = v24;
      *(a1 + 40) = v26;

      goto LABEL_22;
    }

    *(a1 + 32) = *(a2 + 32);
LABEL_22:
    v27 = *(a2 + 48);
    if (*(a1 + 48))
    {
      if (v27)
      {
        v28 = *(a2 + 56);
        *(a1 + 48) = v27;
        *(a1 + 56) = v28;

        goto LABEL_29;
      }
    }

    else if (v27)
    {
      v29 = *(a2 + 56);
      *(a1 + 48) = v27;
      *(a1 + 56) = v29;

      goto LABEL_29;
    }

    *(a1 + 48) = *(a2 + 48);
LABEL_29:
    v31 = (a2 + 64);
    v30 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (v30)
      {
        v32 = *(a2 + 72);
        *(a1 + 64) = v30;
        *(a1 + 72) = v32;

        goto LABEL_36;
      }
    }

    else if (v30)
    {
      v34 = *(a2 + 72);
      *(a1 + 64) = v30;
      *(a1 + 72) = v34;

      goto LABEL_36;
    }

    v33 = *v31;
    *(a1 + 64) = *v31;
LABEL_36:
    v35 = *(a2 + 104);
    if (*(a1 + 104))
    {
      v36 = (a1 + 80);
      if (v35)
      {
        __swift_assign_boxed_opaque_existential_0(v36, (a2 + 80), v33);
        goto LABEL_43;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else if (v35)
    {
      *(a1 + 104) = v35;
      (**(v35 - 8))(a1 + 80, a2 + 80);
      goto LABEL_43;
    }

    v37 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v37;
LABEL_43:
    v38 = *(a1 + 128);
    *(a1 + 112) = *(a2 + 112);
    v39 = (a1 + 120);
    v41 = (a2 + 128);
    v40 = *(a2 + 128);
    v42 = (a2 + 120);
    if (v38 == 1)
    {
      if (v40 == 1)
      {
        v43 = *v42;
        *(a1 + 136) = *(a2 + 136);
        *v39 = v43;
LABEL_76:
        *(a1 + 144) = *(a2 + 144);

        goto LABEL_77;
      }

      *v39 = *v42;
      if (*v41)
      {
        v45 = *(a2 + 136);
        *(a1 + 128) = *v41;
LABEL_73:
        *(a1 + 136) = v45;

        goto LABEL_76;
      }
    }

    else
    {
      if (v40 == 1)
      {
        outlined destroy of Drag.SupplementaryConfiguration(a1 + 120);
        v44 = *(a2 + 136);
        *v39 = *v42;
        *(a1 + 136) = v44;
        goto LABEL_76;
      }

      *v39 = *v42;
      v46 = *v41;
      if (v38)
      {
        if (v46)
        {
          v47 = *(a2 + 136);
          *(a1 + 128) = v46;
          *(a1 + 136) = v47;

          goto LABEL_76;
        }
      }

      else if (v46)
      {
        v45 = *(a2 + 136);
        *(a1 + 128) = v46;
        goto LABEL_73;
      }
    }

    *(a1 + 128) = *v41;
    goto LABEL_76;
  }

  outlined destroy of _DraggingModifier(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 72) = v13;
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  v14 = *(a2 + 104);
  v15 = *(a2 + 120);
  v16 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v16;
  *(a1 + 120) = v15;
  *(a1 + 104) = v14;
LABEL_77:
  v60 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v60;
  *(a1 + 161) = *(a2 + 161);
  return a1;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 144))
  {
    v4 = *(a2 + 144);
    if (v4)
    {
      v6 = (a2 + 16);
      v5 = *(a2 + 16);
      v7 = *(a1 + 16);
      *(a1 + 8) = *(a2 + 8);
      if (v7)
      {
        if (v5)
        {
          v8 = *(a2 + 24);
          *(a1 + 16) = v5;
          *(a1 + 24) = v8;

          goto LABEL_12;
        }
      }

      else if (v5)
      {
        v9 = *(a2 + 24);
        *(a1 + 16) = v5;
        *(a1 + 24) = v9;
        goto LABEL_12;
      }

      *(a1 + 16) = *v6;
LABEL_12:
      v10 = *(a2 + 32);
      if (*(a1 + 32))
      {
        if (v10)
        {
          v11 = *(a2 + 40);
          *(a1 + 32) = v10;
          *(a1 + 40) = v11;

          goto LABEL_19;
        }
      }

      else if (v10)
      {
        v12 = *(a2 + 40);
        *(a1 + 32) = v10;
        *(a1 + 40) = v12;
        goto LABEL_19;
      }

      *(a1 + 32) = *(a2 + 32);
LABEL_19:
      v13 = *(a2 + 48);
      if (*(a1 + 48))
      {
        if (v13)
        {
          v14 = *(a2 + 56);
          *(a1 + 48) = v13;
          *(a1 + 56) = v14;

          goto LABEL_26;
        }
      }

      else if (v13)
      {
        v15 = *(a2 + 56);
        *(a1 + 48) = v13;
        *(a1 + 56) = v15;
        goto LABEL_26;
      }

      *(a1 + 48) = *(a2 + 48);
LABEL_26:
      v16 = *(a2 + 64);
      if (*(a1 + 64))
      {
        if (v16)
        {
          v17 = *(a2 + 72);
          *(a1 + 64) = v16;
          *(a1 + 72) = v17;

          goto LABEL_33;
        }
      }

      else if (v16)
      {
        v18 = *(a2 + 72);
        *(a1 + 64) = v16;
        *(a1 + 72) = v18;
        goto LABEL_33;
      }

      *(a1 + 64) = *(a2 + 64);
LABEL_33:
      if (*(a1 + 104))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 80));
      }

      v19 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v19;
      v20 = *(a1 + 128);
      *(a1 + 112) = *(a2 + 112);
      v21 = (a1 + 120);
      if (v20 != 1)
      {
        v22 = *(a2 + 128);
        if (v22 != 1)
        {
          *v21 = *(a2 + 120);
          if (v20)
          {
            if (v22)
            {
              v24 = *(a2 + 136);
              *(a1 + 128) = v22;
              *(a1 + 136) = v24;

              goto LABEL_39;
            }
          }

          else if (v22)
          {
            v25 = *(a2 + 136);
            *(a1 + 128) = v22;
            *(a1 + 136) = v25;
            goto LABEL_39;
          }

          *(a1 + 128) = *(a2 + 128);
          goto LABEL_39;
        }

        outlined destroy of Drag.SupplementaryConfiguration(a1 + 120);
      }

      *v21 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
LABEL_39:
      *(a1 + 144) = v4;

      goto LABEL_40;
    }

    outlined destroy of _DraggingModifier(a1 + 8);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
LABEL_40:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableChildModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 162))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for DragReorderableChildModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>, &protocol witness table for _DraggingModifier);
    v5[1] = lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>(255);
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReorderableLayout and conformance ReorderableLayout()
{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayout, &unk_1EFFBF2F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayout, &unk_1EFFBF2F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayout, &unk_1EFFBF2F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReorderableLayout, &unk_1EFFBF2F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableChildModifier.MakeDragSourceProxy, &unk_1EFFBF578, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableChildModifier.ChildCoordinateSpace, &unk_1EFFBF550, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableChildModifier.MakeDragSource, &unk_1EFFBF4D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableChildModifier.ResponderFilter, &unk_1EFFBF4A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

_OWORD *initializeWithCopy for DropPlaceholderListModifier.DropPlaceholderList(_OWORD *a1, _OWORD *a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  a1[5] = a2[5];
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

uint64_t assignWithCopy for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1((a1 + 40), (a2 + 40));
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  v5 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v5;
  return a1;
}

uint64_t assignWithTake for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6C30]);
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(&lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>, MEMORY[0x1E69E6C40]);
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(&lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>, MEMORY[0x1E69E6C50]);
    v1 = type metadata accessor for _ViewList_ID._Views();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>);
    }
  }
}

void type metadata accessor for Binding<_DragReorderableView_DragState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6C30]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t thunk for @callee_guaranteed () -> (@error @owned Error)partial apply()
{
  return partial apply for thunk for @callee_guaranteed () -> (@error @owned Error)();
}

{
  return _ss5Error_pIgzo_ytsAA_pIegrzo_TRTA_0();
}

uint64_t DefaultGroupBoxStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t EnvironmentValues.disableGroupBoxPadding.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double View.disableGroupBoxPadding(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.disableGroupBoxPadding : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.disableGroupBoxPadding : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, protocol conformance descriptor for GroupBox<A, B>);
    v5[1] = &protocol witness table for GroupBoxStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>)
  {
    type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>(255);
    type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(255, &lazy cache variable for type metadata for GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>, lazy protocol witness table accessor for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle, &type metadata for PhoneIdiomGroupBoxStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>);
    }
  }
}

void type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>)
  {
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>(255);
    v5[0] = &type metadata for GroupBoxStyleConfiguration.Label;
    v5[1] = v2;
    v5[2] = &protocol witness table for GroupBoxStyleConfiguration.Label;
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for GroupBox(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>)
  {
    type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(255, &lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>, lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle, &type metadata for DefaultGroupBoxStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultGroupBoxStyle, &type metadata for DefaultGroupBoxStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>(255);
    v4[0] = &protocol witness table for GroupBoxStyleConfiguration.Content;
    v4[1] = &protocol witness table for GroupBoxStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for GroupBoxStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhoneIdiomGroupBoxStyle, &type metadata for PhoneIdiomGroupBoxStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormBorderlessSectionTraitKey>, &type metadata for FormBorderlessSectionTraitKey, &protocol witness table for FormBorderlessSectionTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void LimitedAvailabilityPrintContentStorageBase.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t registerAppRootModifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for appRootViewWrappers != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  swift_beginAccess();
  rawValue = appRootViewWrappers._rawValue;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  appRootViewWrappers._rawValue = rawValue;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
    appRootViewWrappers._rawValue = rawValue;
  }

  v14 = rawValue[2];
  v13 = rawValue[3];
  if (v14 >= v13 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, rawValue);
  }

  rawValue[2] = v14 + 1;
  v15 = &rawValue[2 * v14];
  v15[4] = partial apply for closure #1 in registerAppRootModifier<A>(_:);
  v15[5] = v10;
  appRootViewWrappers._rawValue = rawValue;
  return swift_endAccess();
}

uint64_t closure #1 in registerAppRootModifier<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x1E6981910];
  v11 = type metadata accessor for ModifiedContent();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15[2] = *a1;
  v13 = MEMORY[0x1E6981900];
  MEMORY[0x18D00A570](a2, v10, a3, MEMORY[0x1E6981900], v12);
  v15[0] = v13;
  v15[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v15);
  result = AnyView.init<A>(_:)();
  *a5 = result;
  return result;
}

SwiftUI::FrameResizePosition_optional __swiftcall FrameResizePosition.init(rawValue:)(Swift::Int8 rawValue)
{
  result.value = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizePosition and conformance FrameResizePosition()
{
  result = lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition;
  if (!lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizePosition, &type metadata for FrameResizePosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set()
{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizeDirection.Set, &type metadata for FrameResizeDirection.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizeDirection.Set, &type metadata for FrameResizeDirection.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizeDirection.Set, &type metadata for FrameResizeDirection.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizeDirection.Set, &type metadata for FrameResizeDirection.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizeDirection and conformance FrameResizeDirection()
{
  result = lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameResizeDirection, &type metadata for FrameResizeDirection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [FrameResizePosition] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [FrameResizePosition](255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [FrameResizePosition](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FrameResizePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameResizePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ViewGraphBridgePropertiesModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  v25[0] = v7;
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    type metadata accessor for _GraphValue();
    v8 = _GraphValue.value.getter();
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    v9 = PropertyList.subscript.getter();
    v10 = v26[0];
    LODWORD(v26[0]) = v8;
    *(v26 + 4) = v10;
    MEMORY[0x1EEE9AC00](v9);
    updated = type metadata accessor for UpdateProperties(0, a3, a4, v11);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateProperties<A>, updated);
    type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<ViewGraphBridgeProperties>, &type metadata for ViewGraphBridgeProperties);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, closure #1 in Attribute.init<A>(_:)partial apply, v22, updated, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
    v26[0] = AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    type metadata accessor for _GraphValue();
    v15 = _GraphValue.value.getter();
    v16 = a2[2];
    v17 = swift_beginAccess();
    v18 = *(v16 + 16);
    v25[0] = v15;
    v25[1] = v18;
    MEMORY[0x1EEE9AC00](v17);
    updated = type metadata accessor for UpdateEnvironment(0, a3, a4, v19);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, updated);
    type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v22, updated, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    return _GraphInputs.environment.setter();
  }
}

uint64_t UpdateProperties.properties.getter(uint64_t a1, uint64_t a2)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  v3 = *WeakValue;

  return v3;
}

uint64_t UpdateProperties.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = UpdateProperties.properties.getter(a1, a2);
  if (v9)
  {
    *&v12 = updated;
    *(&v12 + 1) = v8;
    v13 = v9;
    v14 = v10;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v12 = static ViewGraphBridgeProperties.defaultValue;
    v13 = qword_1ED5A7320;
    v14 = unk_1ED5A7328;
  }

  (*(a4 + 16))(a1, &v12, a3, a4);
  return v12;
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateProperties<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UpdateProperties.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateProperties<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateProperties<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double UpdateEnvironment.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(a4);
  v8 = a4[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  (*(a3 + 16))(a1, &v10, a2, a3);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateEnvironment<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>);
    }
  }
}

double PlatformItemListReader.init(flags:content:source:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a6 = a1;
  a6[1] = a2;

  static Alignment.center.getter();
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a9;
  type metadata accessor for PlatformItemListReader(0, v13);
  ZStack.init(alignment:content:)();

  return result;
}

uint64_t (*PlatformItemList.modify(_:)(uint64_t (*result)(char *)))(char *)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *v1 = v2;
  }

  return result;
}

double View.platformItemSystemType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v6;
  v17 = *(a1 + 96);
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v8 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v8;
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  v13 = outlined init with copy of PlatformItemList.Item.SystemItem?(v16, v15, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  View.transformPlatformItemList<A>(_:_:)(v13, partial apply for closure #1 in View.platformItemSystemType(_:), v9, a2, &type metadata for LayoutPlatformItemListFlags, a3, &protocol witness table for LayoutPlatformItemListFlags);

  return result;
}

void specialized closure #1 in PlatformItemList.containerSelectionBehavior.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }
}

uint64_t specialized closure #3 in PlatformItemList.containerSelectionBehavior.getter(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = a2 + 40;
  LOBYTE(result) = 1;
  v6 = a1 & 1;
  do
  {
    if (result)
    {
      v7 = *(v4 - 8);
      BYTE1(v8) = v6;

      v7(&v8, &v8 + 1);

      result = v8;
    }

    else
    {
      result = 0;
    }

    v4 += 16;
    --v2;
  }

  while (v2);
  return result;
}

void *UIItemHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v6 = specialized _UIHostingView.init(rootView:)(a1, v5);
  (*(*(*(v2 + 224) - 8) + 8))(a1);
  return v6;
}

id UIItemHostingView.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UIItemHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x700), *((*MEMORY[0x1E69E7D40] & *v4) + 0x708), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id UIItemHostingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIItemHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x700), *((*MEMORY[0x1E69E7D40] & *v4) + 0x708), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t View.onPlatformContainerSecondaryNavigation(value:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of PlatformItemList.Item.SystemItem?(a1, v10, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v11 = a2;
  v12 = a3;
  KeyPath = swift_getKeyPath();
  v14 = 0;
  outlined copy of AppIntentExecutor?(a2, a3);
  MEMORY[0x18D00A570](v10, a4, &type metadata for OnPlatformContainerSecondaryNavigationModifier, a5);
  return outlined destroy of OnPlatformContainerSecondaryNavigationModifier(v10);
}

void closure #1 in View.forcePlatformItem()(uint64_t a1)
{
  v2 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = *a1;
  if (!*(*a1 + 16))
  {
    v34 = v6;
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v36);
    memset(v35, 0, sizeof(v35));
    v8[32] = 0;
    *(v8 + 3) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 5) = -1;
    v8[56] = 1;
    v10 = v45;
    *(v8 + 12) = v44;
    *(v8 + 13) = v10;
    *(v8 + 14) = v46[0];
    *(v8 + 235) = *(v46 + 11);
    v11 = v41;
    *(v8 + 8) = v40;
    *(v8 + 9) = v11;
    v12 = v43;
    *(v8 + 10) = v42;
    *(v8 + 11) = v12;
    v13 = v37;
    *(v8 + 4) = v36;
    *(v8 + 5) = v13;
    v14 = v39;
    *(v8 + 6) = v38;
    *(v8 + 7) = v14;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 42) = 0x3FFFFFFFCLL;
    *(v8 + 344) = 0u;
    *(v8 + 360) = 0u;
    *(v8 + 376) = 0u;
    *(v8 + 392) = 0u;
    *(v8 + 51) = 0;
    *(v8 + 52) = 1;
    *(v8 + 424) = 0u;
    *(v8 + 440) = 0u;
    *(v8 + 456) = 0u;
    v8[472] = 0;
    *(v8 + 60) = 0;
    *(v8 + 488) = 0u;
    v8[504] = 0;
    *(v8 + 32) = 0u;
    v8[528] = 4;
    *(v8 + 536) = 0u;
    *(v8 + 552) = 0u;
    *(v8 + 568) = 0u;
    *(v8 + 584) = 0u;
    *(v8 + 600) = 0u;
    *(v8 + 616) = 0u;
    *(v8 + 632) = 0u;
    *(v8 + 648) = 0u;
    *(v8 + 664) = 0u;
    *(v8 + 680) = 0u;
    *(v8 + 696) = 0u;
    *(v8 + 712) = 0u;
    *(v8 + 728) = 0u;
    *(v8 + 744) = 0u;
    *(v8 + 760) = 0u;
    *(v8 + 776) = 0u;
    *(v8 + 792) = 0u;
    *(v8 + 808) = 0u;
    *(v8 + 824) = 0u;
    *(v8 + 840) = 0u;
    *(v8 + 107) = 0;
    *(v8 + 108) = 1;
    *(v8 + 872) = 0u;
    *(v8 + 888) = 0u;
    *(v8 + 904) = 0u;
    *(v8 + 920) = 0u;
    *(v8 + 936) = 0u;
    *(v8 + 476) = 1283;
    v8[954] = 3;
    v15 = v2[28];
    v16 = type metadata accessor for CommandOperation(0);
    (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
    v8[v2[29]] = 0;
    v8[v2[30]] = 0;
    v8[v2[31]] = 2;
    v8[v2[32]] = 0;
    v8[v2[33]] = 0;
    v17 = v2[34];
    *v8 = 0;
    v18 = *(v8 + 13);
    v47[8] = *(v8 + 12);
    v47[9] = v18;
    v48[0] = *(v8 + 14);
    *(v48 + 11) = *(v8 + 235);
    v19 = *(v8 + 9);
    v47[4] = *(v8 + 8);
    v47[5] = v19;
    v20 = *(v8 + 11);
    v47[6] = *(v8 + 10);
    v47[7] = v20;
    v21 = *(v8 + 5);
    v47[0] = *(v8 + 4);
    v47[1] = v21;
    v22 = *(v8 + 7);
    v47[2] = *(v8 + 6);
    v47[3] = v22;
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v47, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v23 = v45;
    *(v8 + 12) = v44;
    *(v8 + 13) = v23;
    *(v8 + 14) = v46[0];
    *(v8 + 235) = *(v46 + 11);
    v24 = v41;
    *(v8 + 8) = v40;
    *(v8 + 9) = v24;
    v25 = v43;
    *(v8 + 10) = v42;
    *(v8 + 11) = v25;
    v26 = v37;
    *(v8 + 4) = v36;
    *(v8 + 5) = v26;
    v27 = v39;
    *(v8 + 6) = v38;
    *(v8 + 7) = v27;
    v28 = *(v8 + 456);
    v49[2] = *(v8 + 440);
    v49[3] = v28;
    v50 = v8[472];
    v29 = *(v8 + 424);
    v49[0] = *(v8 + 408);
    v49[1] = v29;
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v49, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    *(v8 + 408) = xmmword_18CD633F0;
    *(v8 + 424) = 0u;
    *(v8 + 440) = 0u;
    *(v8 + 456) = 0u;
    v8[472] = 0;
    outlined assign with take of PlatformItemList.Item.Accessibility?(v35, (v8 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
    *&v8[v17] = 0;
    *(v8 + 6) = 0;
    outlined init with copy of PlatformItemList.Item(v8, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    v32 = v34;
    if (v31 >= v30 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    outlined init with take of PlatformItemList.Item(v4, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31);
    *a1 = v9;
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
  }
}

uint64_t *closure #1 in View.platformItemSelector(_:)(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *result;
    v4 = *(*result + 16);
    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_12:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      for (i = 0; i != v4; ++i)
      {
        if (i >= v3[2])
        {
          __break(1u);
          goto LABEL_12;
        }

        v7 = type metadata accessor for PlatformItemList.Item(0);
        v8 = *(v7 - 8);
        result = (v7 - 8);
        v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i;
        if (*(v9 + 416) != 1)
        {
          *(v9 + 464) = a2;
        }
      }

      *v2 = v3;
    }
  }

  return result;
}

uint64_t View.platformItemLabel<A, B>(_:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v29 = a6;
  v30 = a8;
  v31 = a7;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  (*(v18 + 16))(v21, a1, a4);
  (*(v14 + 16))(v16, v28, a3);
  return PlatformItemLabelView.init(flags:label:content:)(v25, v21, v16, a5, a4, a3, v30, v31, x8_0, v29);
}

uint64_t PlatformItemLabelView.init(flags:label:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for PlatformItemLabelView(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

void *closure #1 in View.platformItemSystemType(_:)(void *result, __int128 *a2)
{
  v2 = *(a2 + 4);
  if (v2 >> 2 != 0xFFFFFFFF)
  {
    v4 = a2[1];
    v35 = *a2;
    v36 = v4;
    v5 = *(a2 + 56);
    v31 = *(a2 + 40);
    v32 = v5;
    v6 = *(a2 + 88);
    v33 = *(a2 + 72);
    v34 = v6;
    v7 = *result;
    v8 = *(*result + 16);
    if (v8)
    {
      v25 = result;
      v9 = a2[5];
      v29[4] = a2[4];
      v29[5] = v9;
      v30 = *(a2 + 12);
      v10 = a2[1];
      v29[0] = *a2;
      v29[1] = v10;
      v11 = a2[3];
      v29[2] = a2[2];
      v29[3] = v11;
      outlined init with copy of PlatformItemList.Item.SystemItem(v29, v27);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v7[2])
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        if (v7[2])
        {
LABEL_5:
          v12 = 0;
          v13 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
          v14 = *(v13 + 72);
          v15 = v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 304;
          do
          {
            v16 = *v15;
            v17 = *(v15 + 16);
            v27[2] = *(v15 + 32);
            v27[0] = v16;
            v27[1] = v17;
            v18 = *(v15 + 48);
            v19 = *(v15 + 64);
            v20 = *(v15 + 80);
            v28 = *(v15 + 96);
            v27[4] = v19;
            v27[5] = v20;
            v27[3] = v18;
            v21 = v36;
            *v15 = v35;
            *(v15 + 16) = v21;
            *(v15 + 32) = v2;
            v22 = v31;
            v23 = v32;
            v24 = v33;
            *(v15 + 88) = v34;
            *(v15 + 72) = v24;
            *(v15 + 56) = v23;
            *(v15 + 40) = v22;
            outlined init with copy of PlatformItemList.Item.SystemItem?(a2, v26, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
            _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v27, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
            if (v8 - 1 == v12)
            {
              goto LABEL_9;
            }

            ++v12;
            v15 += v14;
          }

          while (v12 < v7[2]);
        }
      }

      __break(1u);
LABEL_9:
      result = _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(a2, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
      *v25 = v7;
    }
  }

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance PlatformItemListContentModifier@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

uint64_t closure #1 in static MergePlatformItemsView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for MergePlatformItemsView(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #1 in OnPlatformContainerSecondaryNavigationModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  PlatformItemList.mergedContentItem.getter(*a1, &v16 - v9);

  outlined init with copy of PlatformItemList.Item.SystemItem?(a2, v17, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v11 = 0;
  v12 = 0;
  if (specialized Environment.wrappedValue.getter(*(a2 + 56), *(a2 + 64)))
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    outlined copy of AppIntentExecutor?(v11, v12);
  }

  v19[0] = v17[0];
  v19[1] = v17[1];
  v20 = v18;
  v21 = v11;
  v22 = v12;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v19, (v10 + 840), &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
  outlined init with copy of PlatformItemList.Item(v10, v7);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v7, v14 + v13);
  *a1 = v14;
  return _s7SwiftUI16CommandOperationVWOhTm_0(v10, type metadata accessor for PlatformItemList.Item);
}

__n128 protocol witness for ViewModifier.body(content:) in conformance OnPlatformContainerSecondaryNavigationModifier@<Q0>(uint64_t (**a1)(uint64_t *a1)@<X8>)
{
  outlined init with copy of OnPlatformContainerSecondaryNavigationModifier(v1, v6);
  v3 = swift_allocObject();
  v4 = v6[3];
  *(v3 + 48) = v6[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = v7;
  result = v6[1];
  *(v3 + 16) = v6[0];
  *(v3 + 32) = result;
  *a1 = partial apply for closure #1 in OnPlatformContainerSecondaryNavigationModifier.body(content:);
  a1[1] = v3;
  return result;
}

uint64_t closure #1 in PlatformItemListReader.init(flags:content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t static PlatformItemListReader._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a9;
  v84 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = a2[1];
  v81 = *a2;
  v82 = v15;
  v83 = a2[2];
  v16 = *(a2 + 6);
  v17 = *(a2 + 14);
  v48 = *(a2 + 60);
  v49 = *(a2 + 76);
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  LODWORD(v37) = v14;
  *&v75 = a3;
  *(&v75 + 1) = a4;
  *&v76 = a5;
  *(&v76 + 1) = a6;
  v39 = a7;
  *&v77 = a7;
  *(&v77 + 1) = a8;
  v38 = type metadata accessor for PlatformItemListReader(255, &v75);
  v18 = type metadata accessor for _GraphValue();
  v44 = a5;
  v40 = a8;
  v19 = type metadata accessor for ZStack();
  v36 = v18;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  LODWORD(v35) = _GraphValue.value.getter();
  v71 = v81;
  v72 = v82;
  v73 = v83;
  *v74 = v16;
  v43 = v17;
  *&v74[8] = v17;
  *&v74[12] = v48;
  *&v74[28] = v49;
  _ViewInputs.withoutGeometryDependencies.getter();
  PreferenceKeys.init()();
  *&v69[0] = v71;
  v34[1] = type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v63) = 0;
  GraphHost.intern<A>(_:for:id:)();

  PreferencesInputs.init(hostKeys:)();

  *&v78 = v71;
  DWORD2(v78) = DWORD2(v71);
  if (((*(a6 + 8))(a3, a6) & 0x10) != 0)
  {
    *&v71 = v16;
    DWORD2(v71) = v43;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      PreferenceKeys.add(_:)();
    }
  }

  v41 = v16;
  _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(a3, 0, a3, a6);
  LOBYTE(v71) = 1;
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.setter();
  _GraphValue.init(_:)();
  v69[2] = v77;
  v69[3] = v78;
  v69[4] = v79;
  v70 = v80;
  v69[0] = v75;
  v69[1] = v76;
  v65 = v77;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v63 = v75;
  v64 = v76;
  outlined init with copy of _ViewInputs(v69, &v71);
  swift_getWitnessTable(MEMORY[0x1E6981880], v19);
  static View.makeDebuggableView(view:inputs:)();
  v73 = v65;
  *v74 = v66;
  *&v74[16] = v67;
  *&v74[32] = v68;
  v71 = v63;
  v72 = v64;
  outlined destroy of _ViewInputs(&v71);
  v46 = v56;
  v47 = DWORD2(v56);
  v20 = PreferencesOutputs.subscript.getter();

  if ((v20 & 0x100000000) != 0)
  {
    *&v63 = MEMORY[0x1E69E7CC0];
    MEMORY[0x18D00B7D0](v21);
    LOBYTE(v56) = 0;
    v20 = GraphHost.intern<A>(_:for:id:)();
  }

  v35 = v20;
  LODWORD(v56) = v37;
  v22 = _GraphValue.value.getter();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v30[0] = a3;
  v30[1] = a4;
  v37 = a3;
  v25 = v39;
  v24 = v40;
  v33 = v40;
  v36 = v34;
  LODWORD(v63) = v23;
  *(&v63 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v64 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v64);
  v30[2] = swift_getFunctionTypeMetadata1();
  v31 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v31);
  v26 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v63, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v30, v31, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

  *&v56 = __PAIR64__(v45, v35);
  *&v63 = v37;
  *(&v63 + 1) = a4;
  *&v64 = v44;
  *(&v64 + 1) = a6;
  *&v65 = v25;
  *(&v65 + 1) = v24;
  v28 = type metadata accessor for PlatformItemListReader.Child(0, &v63);
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemListReader<A, B, C>.Child, v28);
  _GraphValue.init<A>(_:)();
  v56 = v81;
  v57 = v82;
  v58 = v83;
  v59 = v41;
  v60 = v43;
  v61 = v48;
  v62 = v49;
  static View.makeDebuggableView(view:inputs:)();
  v65 = v77;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v63 = v75;
  v64 = v76;
  return outlined destroy of _ViewInputs(&v63);
}

uint64_t closure #1 in static PlatformItemListReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for PlatformItemListReader(0, v15);
  v9 = *(v8 + 68);
  v13[2] = v8;
  v14 = type metadata accessor for ZStack();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[0];
}

double key path getter for PlatformItemListReader.content : <A, B, C>PlatformItemListReader<A, B, C>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 32);
  *(v8 + 16) = *(v5 - 48);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v5 - 16);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PlatformItemList) -> (@out B);
  a4[1] = v8;

  return result;
}

void key path setter for PlatformItemListReader.content : <A, B, C>PlatformItemListReader<A, B, C>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 32);
  *(v8 + 16) = *(v5 - 48);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v5 - 16);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B);
  a2[1] = v8;
}

uint64_t (*PlatformItemListReader.Child.makeContent.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v15 = *Value;
  v14 = Value[1];
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = v15;
  v16[9] = v14;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B)partial apply;
}

double PlatformItemListReader.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[6] = a1;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a7;
  v8 = type metadata accessor for PlatformItemListReader.Child(0, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListReader<A, B, C>.Child, v8);
  MEMORY[0x18D000B90](v8, a3, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  return result;
}

uint64_t closure #1 in PlatformItemListReader.Child.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = PlatformItemListReader.Child.makeContent.getter(a1, a2, a3, a4, a5, a6, a7);
  AGGraphGetValue();

  v7(v8);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlatformItemListReader<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemListReader<A, B, C>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsPlatformItemListSourcePredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.getter();
  return v2;
}

uint64_t assignWithCopy for PlatformItemList.Item.SystemItem(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  outlined copy of PlatformItemList.Item.SystemItem(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  outlined consume of PlatformItemList.Item.SystemItem(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, SBYTE8(v21), v22);
  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SystemItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  v17 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v17;
  *(a1 + 96) = v3;
  outlined consume of PlatformItemList.Item.SystemItem(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, SBYTE8(v13), v14);
  return a1;
}

uint64_t getEnumTag for PlatformItemList.Item.SystemItem(uint64_t a1)
{
  v1 = *(a1 + 32) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for PlatformItemList.Item.SystemItem(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0xC000000000000000;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
  }

  return result;
}

double destroy for PlatformItemList.Item.SecondaryNavigationBehavior(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (a1[5])
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 6);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 6);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
    }
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v7 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v7;
      return a1;
    }

LABEL_11:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;

  return a1;
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;

    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v12)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v14;

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_22;
  }

  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;

LABEL_22:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v12)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v14;
      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_22;
  }

  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;

LABEL_22:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for PlatformItemList.Item(char *a1, char **a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
    goto LABEL_58;
  }

  v6 = a3;
  v9 = a2[1];
  v8 = a2[2];
  *(a1 + 1) = v9;
  *(a1 + 2) = v8;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v10 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v10;
  a1[56] = *(a2 + 56);
  v11 = a2[24];
  v12 = v5;
  v13 = v9;

  if (v11 >> 1 != 4294967294)
  {
    v23 = *(a2 + 72);
    if (v23 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v24 = a2[8];
      outlined copy of GraphicsImage.Contents(v24, *(a2 + 72));
      *(a1 + 8) = v24;
      a1[72] = v23;
      v11 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      v25 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v25;
    }

    else
    {
      v26 = a2[22];
      v27 = a2[23];
      v28 = a2[25];
      outlined copy of AccessibilityImageLabel(v26, v27, v11, v28);
      *(a1 + 22) = v26;
      *(a1 + 23) = v27;
      *(a1 + 24) = v11;
      *(a1 + 25) = v28;
    }

    v29 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v29;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v30 = a2[30];
    *(a1 + 30) = v30;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v31 = v30;
    v19 = a2[33];
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_15:
    v32 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v32;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v14 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v14;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v15 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v15;
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  v17 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v17;
  v18 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v18;
  v19 = a2[33];
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v19;
  v20 = a2[34];

  if (v20 >= 2)
  {
    v21 = v20;
  }

  *(a1 + 34) = v20;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v22 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v22;

LABEL_16:
  v33 = a2[42];
  v110 = v6;
  if (v33 >> 2 == 0xFFFFFFFF)
  {
    v34 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v34;
    *(a1 + 50) = a2[50];
    v35 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v35;
    v36 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v36;
  }

  else
  {
    v37 = a2[38];
    v38 = a2[39];
    v39 = a2[40];
    v40 = a2[41];
    v41 = a2[43];
    v42 = a2[44];
    v43 = a2[45];
    v100 = a2[46];
    v101 = a2[47];
    v103 = a2[48];
    v105 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v37, v38, v39, v40, v33, v41, v42, v43, v100, v101, v103, v105, __dsta);
    *(a1 + 38) = v37;
    *(a1 + 39) = v38;
    *(a1 + 40) = v39;
    *(a1 + 41) = v40;
    *(a1 + 42) = v33;
    *(a1 + 43) = v41;
    *(a1 + 44) = v42;
    *(a1 + 45) = v43;
    *(a1 + 46) = v100;
    *(a1 + 47) = v101;
    *(a1 + 48) = v103;
    *(a1 + 49) = v105;
    v6 = v110;
    *(a1 + 50) = __dsta;
  }

  v44 = a2[52];
  if (v44 == 1)
  {
    v45 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v45;
    a1[472] = *(a2 + 472);
    v46 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v46;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v44)
  {
    v47 = a2[53];
    *(a1 + 52) = v44;
    *(a1 + 53) = v47;

    v48 = a2[54];
    if (v48)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v50 = a2[56];
    if (v50)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v48 = a2[54];
  if (!v48)
  {
    goto LABEL_26;
  }

LABEL_23:
  v49 = a2[55];
  *(a1 + 54) = v48;
  *(a1 + 55) = v49;

  v50 = a2[56];
  if (!v50)
  {
    goto LABEL_27;
  }

LABEL_24:
  v51 = a2[57];
  *(a1 + 56) = v50;
  *(a1 + 57) = v51;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v52 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v52;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v53 = a2[64];

  if (v53)
  {
    v54 = a2[65];
    *(a1 + 64) = v53;
    *(a1 + 65) = v54;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v55 = a1 + 600;
  v56 = a2 + 75;
  v57 = a2[78];

  if (!v57)
  {
    v59 = *(a2 + 77);
    *v55 = *v56;
    *(a1 + 616) = v59;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v57 != 1)
  {
    *(a1 + 78) = v57;
    *(a1 + 79) = a2[79];
    (**(v57 - 1))(a1 + 600, a2 + 75, v57);
    goto LABEL_39;
  }

  v58 = *(a2 + 77);
  *v55 = *v56;
  *(a1 + 616) = v58;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v60 = a1 + 664;
  v61 = a2 + 83;
  v62 = a2[97];
  if (v62 == 1)
  {
    v63 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v63;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v64 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v64;
    v65 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v65;
    v66 = *(a2 + 85);
    *v60 = *v61;
    *(a1 + 680) = v66;
  }

  else
  {
    *v60 = *v61;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v67 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v67;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v62;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v68 = a1 + 840;
  v69 = a2 + 105;
  v70 = a2[108];
  if (!v70)
  {
    v72 = *(a2 + 107);
    *v68 = *v69;
    *(a1 + 856) = v72;
    *(a1 + 109) = a2[109];
    v73 = a2[110];
    if (!v73)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v74 = a2[111];
    *(a1 + 110) = v73;
    *(a1 + 111) = v74;

    goto LABEL_51;
  }

  if (v70 != 1)
  {
    *(a1 + 108) = v70;
    *(a1 + 109) = a2[109];
    (**(v70 - 1))(v68, v69);
    v73 = a2[110];
    if (!v73)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v71 = *(a2 + 107);
  *v68 = *v69;
  *(a1 + 856) = v71;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v75 = a2[112];
  *(a1 + 112) = v75;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  v76 = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v77 = v6[28];
  __dst = &a1[v77];
  v78 = a2 + v77;
  *(a1 + 118) = v76;
  v79 = type metadata accessor for CommandOperation(0);
  v104 = *(v79 - 8);
  v106 = *(v104 + 48);
  v80 = v75;

  if (v106(v78, 1, v79))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v78, *(*(v81 - 8) + 64));
    v82 = v110;
  }

  else
  {
    *__dst = *v78;
    v83 = *(v79 + 20);
    v84 = &__dst[v83];
    v85 = &v78[v83];
    v107 = v78;
    v86 = v79;
    v87 = *v85;
    v88 = *(v85 + 1);
    v89 = v85[16];
    outlined copy of Text.Storage(*v85, v88, v89);
    *v84 = v87;
    *(v84 + 1) = v88;
    v84[16] = v89;
    *(v84 + 3) = *(v85 + 3);
    v90 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v91 = type metadata accessor for UUID();
    v102 = *(*(v91 - 8) + 16);

    v102(&v84[v90], &v85[v90], v91);
    v92 = *(v86 + 24);
    v93 = &__dst[v92];
    v94 = &v107[v92];
    if (*v94)
    {
      v95 = v94[1];
      *v93 = *v94;
      *(v93 + 1) = v95;
    }

    else
    {
      *v93 = *v94;
    }

    v82 = v110;
    (*(v104 + 56))(__dst, 0, 1, v86);
  }

  v96 = v82[30];
  a1[v82[29]] = *(a2 + v82[29]);
  a1[v96] = *(a2 + v96);
  v97 = v82[32];
  a1[v82[31]] = *(a2 + v82[31]);
  a1[v97] = *(a2 + v97);
  v98 = v82[34];
  a1[v82[33]] = *(a2 + v82[33]);
  *&a1[v98] = *(a2 + v98);
LABEL_58:

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a2 + 286;
  v7 = *a1;
  v8 = *a2;
  *a1 = *a2;
  v9 = v8;

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  *(a1 + 8) = v11;
  v12 = v11;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v13 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v13 == 0x1FFFFFFFCLL)
    {
      v14 = *(a2 + 64);
      v15 = *(a2 + 80);
      v16 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v16;
      *(a1 + 64) = v14;
      *(a1 + 80) = v15;
      v17 = *(a2 + 128);
      v18 = *(a2 + 144);
      v19 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v19;
      *(a1 + 128) = v17;
      *(a1 + 144) = v18;
      v20 = *(a2 + 192);
      v21 = *(a2 + 208);
      v22 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v21;
      *(a1 + 224) = v22;
      *(a1 + 192) = v20;
    }

    else
    {
      v32 = *(a2 + 72);
      if (v32 == 255)
      {
        v38 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v38;
      }

      else
      {
        v33 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v33, *(a2 + 72));
        *(a1 + 64) = v33;
        *(a1 + 72) = v32;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v39 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v39;
      v40 = *(a2 + 136);
      v41 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v41;
      *(a1 + 136) = v40;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v42 = *(a2 + 192);
      if (v42 >> 1 == 0xFFFFFFFF)
      {
        v43 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v43;
      }

      else
      {
        v44 = *(a2 + 176);
        v45 = *(a2 + 184);
        v46 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v44, v45, *(a2 + 192), v46);
        *(a1 + 176) = v44;
        *(a1 + 184) = v45;
        *(a1 + 192) = v42;
        *(a1 + 200) = v46;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v47 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v47;
      v48 = *(a2 + 240);
      *(a1 + 240) = v48;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v49 = v48;
    }
  }

  else if (v13 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v23 = *(a2 + 112);
    v25 = *(a2 + 64);
    v24 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v23;
    *(a1 + 64) = v25;
    *(a1 + 80) = v24;
    v26 = *(a2 + 176);
    v28 = *(a2 + 128);
    v27 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v26;
    *(a1 + 128) = v28;
    *(a1 + 144) = v27;
    v30 = *(a2 + 208);
    v29 = *(a2 + 224);
    v31 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v30;
    *(a1 + 224) = v29;
    *(a1 + 192) = v31;
  }

  else
  {
    v34 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v34 == 255)
      {
        v52 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v52;
      }

      else
      {
        v50 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v50, *(a2 + 72));
        *(a1 + 64) = v50;
        *(a1 + 72) = v34;
      }
    }

    else if (v34 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v51 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v51;
    }

    else
    {
      v35 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v35, *(a2 + 72));
      v36 = *(a1 + 64);
      *(a1 + 64) = v35;
      v37 = *(a1 + 72);
      *(a1 + 72) = v34;
      outlined consume of GraphicsImage.Contents(v36, v37);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v53 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v53;
    v54 = *(a2 + 136);
    v55 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v55;
    *(a1 + 136) = v54;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v56 = *(a2 + 192);
    v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v57 == 0x1FFFFFFFELL)
      {
        v58 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v58;
      }

      else
      {
        v60 = *(a2 + 176);
        v61 = *(a2 + 184);
        v62 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v60, v61, *(a2 + 192), v62);
        *(a1 + 176) = v60;
        *(a1 + 184) = v61;
        *(a1 + 192) = v56;
        *(a1 + 200) = v62;
      }
    }

    else if (v57 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v59 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v59;
    }

    else
    {
      v63 = *(a2 + 176);
      v64 = *(a2 + 184);
      v65 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v63, v64, *(a2 + 192), v65);
      v66 = *(a1 + 176);
      v67 = *(a1 + 184);
      v68 = *(a1 + 192);
      v69 = *(a1 + 200);
      *(a1 + 176) = v63;
      *(a1 + 184) = v64;
      *(a1 + 192) = v56;
      *(a1 + 200) = v65;
      outlined consume of AccessibilityImageLabel(v66, v67, v68, v69);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v70 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v70;
    v71 = *(a1 + 240);
    v72 = *(a2 + 240);
    *(a1 + 240) = v72;
    v73 = v72;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v74 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v74)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v82 = *(a2 + 272);
      v81 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v82;
      *(a1 + 288) = v81;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v75 = *(a1 + 272);
    v76 = *(a2 + 272);
    if (v75 >= 2)
    {
      if (v76 >= 2)
      {
        *(a1 + 272) = v76;
        v85 = v76;

        goto LABEL_43;
      }

      v76 = *(a2 + 272);
    }

    else if (v76 >= 2)
    {
      *(a1 + 272) = v76;
      v77 = v76;
LABEL_43:
      v86 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v86;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v6;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v76;
    goto LABEL_43;
  }

  if (v74)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v78 = *(a2 + 272);

    if (v78 >= 2)
    {
      v79 = v78;
    }

    *(a1 + 272) = v78;
    v80 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v80;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v83 = *(a2 + 256);
    v84 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v84;
    *(a1 + 256) = v83;
  }

LABEL_44:
  v87 = *(a2 + 336);
  v88 = v87 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v88 == 0x3FFFFFFFCLL)
    {
      v89 = *(a2 + 304);
      v90 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v90;
      *(a1 + 304) = v89;
      v91 = *(a2 + 352);
      v92 = *(a2 + 368);
      v93 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v92;
      *(a1 + 384) = v93;
      *(a1 + 352) = v91;
    }

    else
    {
      v99 = *(a2 + 304);
      v100 = *(a2 + 312);
      v101 = *(a2 + 320);
      v102 = *(a2 + 328);
      v281 = v6;
      v284 = a3;
      v103 = *(a2 + 344);
      v104 = *(a2 + 352);
      v105 = *(a2 + 360);
      v270 = *(a2 + 368);
      v272 = *(a2 + 376);
      v274 = *(a2 + 384);
      v276 = *(a2 + 392);
      v278 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v99, v100, v101, v102, v87, v103, v104, v105, v270, v272, v274, v276, v278);
      *(a1 + 304) = v99;
      *(a1 + 312) = v100;
      *(a1 + 320) = v101;
      *(a1 + 328) = v102;
      *(a1 + 336) = v87;
      *(a1 + 344) = v103;
      *(a1 + 352) = v104;
      *(a1 + 360) = v105;
      v6 = v281;
      a3 = v284;
      *(a1 + 368) = v270;
      *(a1 + 376) = v272;
      *(a1 + 384) = v274;
      *(a1 + 392) = v276;
      *(a1 + 400) = v278;
    }
  }

  else if (v88 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v95 = *(a2 + 320);
    v94 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v95;
    *(a1 + 336) = v94;
    v97 = *(a2 + 368);
    v96 = *(a2 + 384);
    v98 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v97;
    *(a1 + 384) = v96;
    *(a1 + 352) = v98;
  }

  else
  {
    v106 = *(a2 + 304);
    v107 = *(a2 + 312);
    v282 = v6;
    v285 = a3;
    v108 = *(a2 + 320);
    v109 = *(a2 + 328);
    v110 = *(a2 + 344);
    v111 = *(a2 + 352);
    v112 = *(a2 + 360);
    v271 = *(a2 + 368);
    v273 = *(a2 + 376);
    v275 = *(a2 + 384);
    v277 = *(a2 + 392);
    v279 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v106, v107, v108, v109, v87, v110, v111, v112, v271, v273, v275, v277, v279);
    v113 = *(a1 + 304);
    v114 = *(a1 + 312);
    v115 = *(a1 + 320);
    v116 = *(a1 + 328);
    v117 = *(a1 + 336);
    v118 = *(a1 + 344);
    v119 = *(a1 + 352);
    v120 = *(a1 + 360);
    v121 = *(a1 + 368);
    v122 = *(a1 + 384);
    v123 = *(a1 + 400);
    *(a1 + 304) = v106;
    *(a1 + 312) = v107;
    *(a1 + 320) = v108;
    *(a1 + 328) = v109;
    *(a1 + 336) = v87;
    *(a1 + 344) = v110;
    *(a1 + 352) = v111;
    *(a1 + 360) = v112;
    v6 = v282;
    a3 = v285;
    *(a1 + 368) = v271;
    *(a1 + 376) = v273;
    *(a1 + 384) = v275;
    *(a1 + 392) = v277;
    *(a1 + 400) = v279;
    outlined consume of PlatformItemList.Item.SystemItem(v113, v114, v115, v116, v117, v118, v119, v120, v121, *(&v121 + 1), v122, SBYTE8(v122), v123);
  }

  v124 = (a1 + 408);
  v125 = *(a1 + 416);
  v126 = *(a2 + 416);
  if (v125 == 1)
  {
    if (v126 == 1)
    {
      *v124 = *(v6 + 122);
      v127 = *(v6 + 138);
      v128 = *(v6 + 154);
      v129 = *(v6 + 170);
      *(a1 + 472) = *(v6 + 186);
      *(a1 + 440) = v128;
      *(a1 + 456) = v129;
      *(a1 + 424) = v127;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v133 = *(a2 + 416);
    if (v133)
    {
      v134 = *(a2 + 424);
      *(a1 + 416) = v133;
      *(a1 + 424) = v134;

      v135 = *(a2 + 432);
      if (v135)
      {
LABEL_58:
        v136 = *(a2 + 440);
        *(a1 + 432) = v135;
        *(a1 + 440) = v136;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v135 = *(a2 + 432);
      if (v135)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v139 = *(a2 + 448);
    if (!v139)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v126 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v124 = *(v6 + 122);
    v130 = *(v6 + 154);
    v131 = *(v6 + 170);
    v132 = *(v6 + 138);
    *(a1 + 472) = *(v6 + 186);
    *(a1 + 440) = v130;
    *(a1 + 456) = v131;
    *(a1 + 424) = v132;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v6 + 122);
  *(a1 + 409) = *(v6 + 123);
  *(a1 + 410) = *(v6 + 124);
  *(a1 + 411) = *(v6 + 125);
  *(a1 + 412) = *(a2 + 412);
  v137 = *(a2 + 416);
  if (v125)
  {
    if (v137)
    {
      v138 = *(a2 + 424);
      *(a1 + 416) = v137;
      *(a1 + 424) = v138;

      goto LABEL_70;
    }
  }

  else if (v137)
  {
    v140 = *(a2 + 424);
    *(a1 + 416) = v137;
    *(a1 + 424) = v140;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v141 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v141)
    {
      v142 = *(a2 + 440);
      *(a1 + 432) = v141;
      *(a1 + 440) = v142;

      goto LABEL_77;
    }
  }

  else if (v141)
  {
    v143 = *(a2 + 440);
    *(a1 + 432) = v141;
    *(a1 + 440) = v143;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v139 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v139)
    {
LABEL_81:
      v145 = *(a2 + 456);
      *(a1 + 448) = v139;
      *(a1 + 456) = v145;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v139)
  {

    goto LABEL_83;
  }

  v144 = *(a2 + 456);
  *(a1 + 448) = v139;
  *(a1 + 456) = v144;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v146 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v146)
    {
      v147 = *(a2 + 520);
      *(a1 + 512) = v146;
      *(a1 + 520) = v147;

      goto LABEL_92;
    }
  }

  else if (v146)
  {
    v148 = *(a2 + 520);
    *(a1 + 512) = v146;
    *(a1 + 520) = v148;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v149 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v149)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v150 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v150;
      v151 = (a1 + 600);
      v152 = (a2 + 600);
      v153 = *(a1 + 624);
      v154 = *(a2 + 624);
      if (v153 != 1)
      {
        if (v154 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v164 = *(a2 + 616);
          v163 = *(a2 + 632);
          *v151 = *v152;
          *(a1 + 616) = v164;
          *(a1 + 632) = v163;
        }

        else
        {
          if (v153)
          {
            if (v154)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v182 = *(a2 + 632);
              v183 = *(a2 + 616);
              *v151 = *v152;
              *(a1 + 616) = v183;
              *(a1 + 632) = v182;
            }
          }

          else if (v154)
          {
            *(a1 + 624) = v154;
            *(a1 + 632) = *(a2 + 632);
            (**(v154 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v184 = *v152;
            v185 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v151 = v184;
            *(a1 + 616) = v185;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v154)
      {
        if (v154 == 1)
        {
          v155 = *v152;
          v156 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v156;
          *v151 = v155;
LABEL_124:
          v186 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v186;
          v187 = (a1 + 664);
          v188 = (a2 + 664);
          v189 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v189 == 1)
            {
              v190 = *(a2 + 680);
              *v187 = *v188;
              *(a1 + 680) = v190;
              v191 = *(a2 + 696);
              v192 = *(a2 + 712);
              v193 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v193;
              *(a1 + 696) = v191;
              *(a1 + 712) = v192;
              v194 = *(a2 + 760);
              v195 = *(a2 + 776);
              v196 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v195;
              *(a1 + 792) = v196;
              *(a1 + 760) = v194;
            }

            else
            {
              v204 = *v188;
              *(a1 + 672) = *(a2 + 672);
              *v187 = v204;
              v205 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v205;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v6 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v206 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v206;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v189 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v197 = *(a2 + 680);
            *v187 = *v188;
            *(a1 + 680) = v197;
            v198 = *(a2 + 744);
            v200 = *(a2 + 696);
            v199 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v198;
            *(a1 + 696) = v200;
            *(a1 + 712) = v199;
            v202 = *(a2 + 776);
            v201 = *(a2 + 792);
            v203 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v202;
            *(a1 + 792) = v201;
            *(a1 + 760) = v203;
          }

          else
          {
            v207 = *v188;
            *(a1 + 672) = *(a2 + 672);
            *v187 = v207;
            v208 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v208;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v6 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v6 + 458);
            *(a1 + 745) = *(v6 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v209 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v209;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v154;
        *(a1 + 632) = *(a2 + 632);
        (**(v154 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v180 = *v152;
        v181 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v151 = v180;
        *(a1 + 616) = v181;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v149)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v157 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v157;
  v158 = (a1 + 600);
  v159 = (a2 + 600);
  v160 = *(a2 + 624);

  if (!v160)
  {
    v165 = *v159;
    v166 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v158 = v165;
    *(a1 + 616) = v166;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v160 != 1)
  {
    *(a1 + 624) = v160;
    *(a1 + 632) = *(a2 + 632);
    (**(v160 - 8))(a1 + 600, a2 + 600, v160);
    goto LABEL_111;
  }

  v161 = *v159;
  v162 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v162;
  *v158 = v161;
LABEL_112:
  v167 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v167;
  v168 = (a1 + 664);
  v169 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v170 = *(a2 + 680);
    *v168 = *v169;
    *(a1 + 680) = v170;
    v171 = *(a2 + 696);
    v172 = *(a2 + 712);
    v173 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v173;
    *(a1 + 696) = v171;
    *(a1 + 712) = v172;
    v174 = *(a2 + 760);
    v175 = *(a2 + 776);
    v176 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v175;
    *(a1 + 792) = v176;
    *(a1 + 760) = v174;
  }

  else
  {
    v177 = *v169;
    *(a1 + 672) = *(a2 + 672);
    *v168 = v177;
    v178 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v178;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v6 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v179 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v179;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v210 = (a1 + 840);
  v211 = (a2 + 840);
  v212 = *(a1 + 864);
  v213 = *(a2 + 864);
  if (v212 == 1)
  {
    if (v213)
    {
      if (v213 == 1)
      {
        v214 = *v211;
        v215 = *(a2 + 856);
        v216 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v215;
        *(a1 + 872) = v216;
        *v210 = v214;
        goto LABEL_156;
      }

      *(a1 + 864) = v213;
      *(a1 + 872) = *(a2 + 872);
      (**(v213 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v220 = *v211;
      v221 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v210 = v220;
      *(a1 + 856) = v221;
    }

    v222 = *(a2 + 880);
    if (!v222)
    {
      goto LABEL_155;
    }

LABEL_153:
    v228 = *(a2 + 888);
    *(a1 + 880) = v222;
    *(a1 + 888) = v228;

    goto LABEL_156;
  }

  if (v213 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v218 = *(a2 + 856);
    v217 = *(a2 + 872);
    v219 = *v211;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v218;
    *(a1 + 872) = v217;
    *v210 = v219;
    goto LABEL_156;
  }

  if (v212)
  {
    if (v213)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v223 = *(a2 + 872);
      v224 = *(a2 + 856);
      *v210 = *v211;
      *(a1 + 856) = v224;
      *(a1 + 872) = v223;
    }
  }

  else if (v213)
  {
    *(a1 + 864) = v213;
    *(a1 + 872) = *(a2 + 872);
    (**(v213 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v225 = *v211;
    v226 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v210 = v225;
    *(a1 + 856) = v226;
  }

  v222 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v222)
    {
      v227 = *(a2 + 888);
      *(a1 + 880) = v222;
      *(a1 + 888) = v227;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v222)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v229 = *(a1 + 896);
  v230 = *(a2 + 896);
  *(a1 + 896) = v230;
  v231 = v230;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v232 = a3[28];
  v233 = (a1 + v232);
  v234 = (a2 + v232);
  v235 = type metadata accessor for CommandOperation(0);
  v236 = *(v235 - 8);
  v237 = *(v236 + 48);
  LODWORD(v229) = v237(v233, 1, v235);
  v238 = v237(v234, 1, v235);
  if (!v229)
  {
    if (!v238)
    {
      v287 = a3;
      *v233 = *v234;
      v252 = *(v235 + 20);
      v253 = &v233[v252];
      v254 = &v234[v252];
      v255 = *&v234[v252];
      v256 = *&v234[v252 + 8];
      v257 = v234[v252 + 16];
      outlined copy of Text.Storage(v255, v256, v257);
      v258 = *v253;
      v259 = *(v253 + 1);
      v260 = v253[16];
      *v253 = v255;
      *(v253 + 1) = v256;
      v253[16] = v257;
      outlined consume of Text.Storage(v258, v259, v260);
      *(v253 + 3) = *(v254 + 3);

      v261 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v262 = type metadata accessor for UUID();
      (*(*(v262 - 8) + 24))(&v253[v261], &v254[v261], v262);
      v263 = *(v235 + 24);
      v264 = &v233[v263];
      v265 = &v234[v263];
      v266 = *&v234[v263];
      if (*v264)
      {
        a3 = v287;
        if (v266)
        {
          v267 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v267;

          goto LABEL_168;
        }
      }

      else
      {
        a3 = v287;
        if (v266)
        {
          v269 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v269;

          goto LABEL_168;
        }
      }

      *v264 = *v265;
      goto LABEL_168;
    }

    _s7SwiftUI16CommandOperationVWOhTm_0(v233, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_162:
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v233, v234, *(*(v251 - 8) + 64));
    goto LABEL_168;
  }

  v283 = v234;
  v286 = a3;
  *v233 = *v234;
  v239 = *(v235 + 20);
  v240 = &v233[v239];
  v241 = &v234[v239];
  v242 = *v241;
  v243 = *(v241 + 1);
  v244 = v241[16];
  outlined copy of Text.Storage(*v241, v243, v244);
  *v240 = v242;
  *(v240 + 1) = v243;
  v240[16] = v244;
  *(v240 + 3) = *(v241 + 3);
  v245 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v246 = type metadata accessor for UUID();
  v280 = *(*(v246 - 8) + 16);

  v280(&v240[v245], &v241[v245], v246);
  v247 = *(v235 + 24);
  v248 = &v233[v247];
  v249 = &v283[v247];
  if (*v249)
  {
    v250 = v249[1];
    *v248 = *v249;
    v248[1] = v250;
  }

  else
  {
    *v248 = *v249;
  }

  a3 = v286;
  (*(v236 + 56))(v233, 0, 1, v235);
LABEL_168:
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + a3[30]) = *(a2 + a3[30]);
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + a3[32]) = *(a2 + a3[32]);
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + a3[34]) = *(a2 + a3[34]);

  return a1;
}

uint64_t initializeWithTake for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v14 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v16;
  *(a1 + 472) = *(a2 + 472);
  v17 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v17;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v18 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v18;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v19 = a3[28];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = type metadata accessor for CommandOperation(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v24 - 8) + 64));
  }

  else
  {
    *v20 = *v21;
    v25 = *(v22 + 20);
    v26 = &v20[v25];
    v27 = &v21[v25];
    v28 = *&v21[v25 + 16];
    *v26 = *&v21[v25];
    *(v26 + 1) = v28;
    v29 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 32))(&v26[v29], &v27[v29], v30);
    *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
    (*(v23 + 56))(v20, 0, 1, v22);
  }

  v31 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v31) = *(a2 + v31);
  v32 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v32) = *(a2 + v32);
  v33 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v33) = *(a2 + v33);
  return a1;
}

uint64_t type metadata completion function for PlatformItemListReader(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PlatformItemListReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for PlatformItemListReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for PlatformItemListReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for PlatformItemListReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for PlatformItemListReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for PlatformItemListReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemListReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 32) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
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
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
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

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for PlatformItemListReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListTextRepresentable.PlatformRepresentation@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformItemListTextRepresentable.PlatformRepresentation.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListImageRepresentable.PlatformRepresentation@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformItemListImageRepresentable.PlatformRepresentation.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t implicit closure #1 in static PlatformItemListViewThatFitsRepresentable.makeRepresentation(inputs:state:outputs:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList();

  v1 = Attribute.init<A>(body:value:flags:update:)();

  return v1;
}

uint64_t closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter(uint64_t *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item(0);
  v3 = (v2 - 8);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;

  v36 = MEMORY[0x1E69E7CC0];
  v34[2] = &v36;
  SizeFittingState.applyChildren(selectLast:to:)(0, partial apply for closure #1 in closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter, v34);
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v37);
  memset(v35, 0, 304);
  v8[32] = 0;
  *(v8 + 3) = 0;
  *(v8 + 8) = 0u;
  *(v8 + 5) = -1;
  v8[56] = 1;
  v9 = v46;
  *(v8 + 12) = v45;
  *(v8 + 13) = v9;
  *(v8 + 14) = v47[0];
  *(v8 + 235) = *(v47 + 11);
  v10 = v42;
  *(v8 + 8) = v41;
  *(v8 + 9) = v10;
  v11 = v44;
  *(v8 + 10) = v43;
  *(v8 + 11) = v11;
  v12 = v38;
  *(v8 + 4) = v37;
  *(v8 + 5) = v12;
  v13 = v40;
  *(v8 + 6) = v39;
  *(v8 + 7) = v13;
  *(v8 + 19) = 0u;
  *(v8 + 20) = 0u;
  *(v8 + 17) = 0u;
  *(v8 + 18) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 42) = 0x3FFFFFFFCLL;
  *(v8 + 344) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 392) = 0u;
  *(v8 + 51) = 0;
  *(v8 + 52) = 1;
  *(v8 + 424) = 0u;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  v8[472] = 0;
  *(v8 + 60) = 0;
  *(v8 + 488) = 0u;
  v8[504] = 0;
  *(v8 + 32) = 0u;
  v8[528] = 4;
  *(v8 + 536) = 0u;
  *(v8 + 552) = 0u;
  *(v8 + 568) = 0u;
  *(v8 + 584) = 0u;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0u;
  *(v8 + 728) = 0u;
  *(v8 + 744) = 0u;
  *(v8 + 760) = 0u;
  *(v8 + 776) = 0u;
  *(v8 + 792) = 0u;
  *(v8 + 808) = 0u;
  *(v8 + 824) = 0u;
  *(v8 + 840) = 0u;
  *(v8 + 107) = 0;
  *(v8 + 108) = 1;
  *(v8 + 118) = 0;
  *(v8 + 872) = 0u;
  *(v8 + 888) = 0u;
  *(v8 + 904) = 0u;
  *(v8 + 920) = 0u;
  *(v8 + 476) = 1283;
  v8[954] = 3;
  v14 = v3[30];
  v15 = type metadata accessor for CommandOperation(0);
  (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
  v8[v3[31]] = 0;
  v8[v3[32]] = 0;
  v8[v3[33]] = 2;
  v8[v3[34]] = 0;
  v8[v3[35]] = 0;
  v16 = v3[36];
  *v8 = 0;
  v17 = *(v8 + 13);
  v48[8] = *(v8 + 12);
  v48[9] = v17;
  v49[0] = *(v8 + 14);
  *(v49 + 11) = *(v8 + 235);
  v18 = *(v8 + 9);
  v48[4] = *(v8 + 8);
  v48[5] = v18;
  v19 = *(v8 + 11);
  v48[6] = *(v8 + 10);
  v48[7] = v19;
  v20 = *(v8 + 5);
  v48[0] = *(v8 + 4);
  v48[1] = v20;
  v21 = *(v8 + 7);
  v48[2] = *(v8 + 6);
  v48[3] = v21;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v48, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v22 = v46;
  *(v8 + 12) = v45;
  *(v8 + 13) = v22;
  *(v8 + 14) = v47[0];
  *(v8 + 235) = *(v47 + 11);
  v23 = v42;
  *(v8 + 8) = v41;
  *(v8 + 9) = v23;
  v24 = v44;
  *(v8 + 10) = v43;
  *(v8 + 11) = v24;
  v25 = v38;
  *(v8 + 4) = v37;
  *(v8 + 5) = v25;
  v26 = v40;
  *(v8 + 6) = v39;
  *(v8 + 7) = v26;
  v27 = *(v8 + 456);
  v50[2] = *(v8 + 440);
  v50[3] = v27;
  v51 = v8[472];
  v28 = *(v8 + 424);
  v50[0] = *(v8 + 408);
  v50[1] = v28;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v50, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v8 + 408) = xmmword_18CD633F0;
  *(v8 + 424) = 0u;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  v8[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v35, (v8 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v8[v16] = 0;
  *(v8 + 6) = 0;
  *(v8 + 117) = v36;
  outlined init with copy of PlatformItemList.Item(v8, v5);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v29 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v30 + v29);
  *a1 = v30;
  return _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
}

uint64_t closure #1 in closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for PlatformItemList.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 2);
  v16 = *a1;
  v17 = v9;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    AGGraphGetValue();

    PlatformItemList.mergedContentItem.getter(v10, v8);

    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *a3 = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
      *a3 = v11;
    }

    v11[2] = v14 + 1;
    outlined init with take of PlatformItemList.Item(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
  }

  return 0;
}

double protocol witness for Rule.value.getter in conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter;
  *(v4 + 24) = v3;
  *a1 = thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ()partial apply;
  a1[1] = v4;

  return result;
}

uint64_t protocol witness for static PlatformViewThatFitsRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListViewThatFitsRepresentable(uint64_t *a1)
{
  v3 = a1[6];
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 6) & 1;
  }

  return result;
}

uint64_t protocol witness for static PlatformViewThatFitsRepresentable.makeRepresentation(inputs:state:outputs:) in conformance PlatformItemListViewThatFitsRepresentable(uint64_t a1)
{

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

_BYTE *closure #1 in PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform.value.getter(void *a1, uint64_t a2)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 2) == 0)
    {

      *a1 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule@<X0>(uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v9 = *v5;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = v10;
  *a5 = a4;
  a5[1] = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned ()?) -> (@unowned Bool)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t assignWithTake for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a2[7];
  v11 = *(a2 + 64);
  v12 = *(a2 + 65);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 65);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = v10;
  v17 = *(a1 + 64);
  *(a1 + 64) = v11;
  *(a1 + 65) = v12;
  outlined consume of Environment<KeyboardShortcut?>.Content(v13, v14, v15, v17, v16);
  v18 = *(a2 + 80);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnPlatformContainerSelectionModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for OnPlatformContainerSelectionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destroy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (*(a1 + 40))
  {
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return a1;
}

uint64_t assignWithCopy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 6);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_15;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 6);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

LABEL_15:
  v12 = *(a2 + 7);
  v13 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  return a1;
}