uint64_t Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = *v4;
  v9 = *v4 >> 62;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    if ((v7 & 0x20) == 0)
    {
      v8 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_5;
    }

    return 0xBF800000BF800000;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    return 0xBF800000BF800000;
  }

  if (v8 != 0x8000000000000000)
  {
    *&v19[0] = *a1;
    *(&v19[0] + 1) = v6;
    v12 = EnvironmentValues.defaultForegroundColor.getter();
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_22:
    v8 = v12;
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v29[27] = 0;
    v24 = 0uLL;
    *&v25 = 1;
    BYTE8(v25) = 1;
    *&v26 = 0;
    BYTE8(v26) = 5;
    *&v27 = v5;
    *(&v27 + 1) = v6;
    v28 = 0u;
    memset(v29, 0, 24);
    v29[24] = 1;
    *&v29[25] = 769;
    v14 = *(*v8 + 80);

    v14(&v24);
    if (BYTE8(v26) == 1)
    {
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v23 = v15;
    LOBYTE(v19[0]) = 0;
    _ShapeStyle_Pack.subscript.getter(v19, 0, v17);

    Text.ResolvedProperties.addCustomStyle(_:)(v17, &v30);
    v13 = v30;

    v19[5] = v17[5];
    v19[6] = v17[6];
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v20 = v18;
    v19[3] = v17[3];
    v19[4] = v17[4];
    outlined destroy of _ShapeStyle_Pack.Style(v19);
    v21[4] = v28;
    v22[0] = *v29;
    *(v22 + 12) = *&v29[12];
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    outlined destroy of _ShapeStyle_Shape(v21);
    return v13;
  }

  *&v19[0] = *a1;
  *(&v19[0] + 1) = v6;
  v12 = EnvironmentValues.foregroundColor.getter();
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (one-time initialization token for primary != -1)
  {
    swift_once();
  }

  v8 = static Color.primary;
LABEL_5:

  if ((v7 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v10 = specialized ShapeStyle.fallbackColor(in:level:)(v5, v6, 0, v8);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    v11 = static Color.foreground;
  }

  *&v17[0] = v5;
  *(&v17[0] + 1) = v6;
  (*(*v11 + 120))(v19, v17);
  v13 = *&v19[0];

  return v13;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
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

void specialized ObjectCache.subscript.getter(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v29 = *a1;
  v30 = v3;
  v4 = a1[3];
  v31 = a1[2];
  v32 = v4;
  v5 = Font.FontCache.Key.hashValue.getter();
  v6 = 4 * (v5 & 7);
  v28 = 0;
  v27 = 0x80000000;
  v7 = *(v1 + 32);

  os_unfair_lock_lock(v7 + 4);
  v33[0] = v29;
  v33[1] = v30;
  v33[2] = v31;
  v33[3] = v32;
  v8 = specialized closure #1 in ObjectCache.subscript.getter(&v7[6], v6, v5, v33, &v27, &v28, v31);
  os_unfair_lock_unlock(v7 + 4);

  if (!v8)
  {
    (*(v2 + 16))(&v25, &v29);
    v9 = *(v2 + 32);

    os_unfair_lock_lock((v9 + 16));
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v26[3] = v32;
    v10 = __OFADD__(v6, v28);
    v11 = v6 + v28;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v12 = v25;
      LODWORD(v2) = *(v9 + 32) + 1;
      *(v9 + 32) = v2;
      v13 = *(v9 + 24);
      outlined init with copy of Font.FontCache.Key(v26, v23);
      v8 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 24) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    *(v9 + 24) = specialized _ArrayBuffer._consumeAndCreateNew()(v22);

    v13 = *(v9 + 24);
    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v11 < v13[2])
      {
        v15 = &v13[11 * v11];
        v16 = *(v15 + 3);
        v23[0] = *(v15 + 2);
        v23[1] = v16;
        v17 = *(v15 + 4);
        v18 = *(v15 + 5);
        v19 = *(v15 + 6);
        v24 = *(v15 + 28);
        v23[3] = v18;
        v23[4] = v19;
        v23[2] = v17;
        v20 = v30;
        *(v15 + 2) = v29;
        *(v15 + 3) = v20;
        v21 = v32;
        *(v15 + 4) = v31;
        *(v15 + 5) = v21;
        v15[12] = v5;
        v15[13] = v8;
        *(v15 + 28) = v2;
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v23, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        os_unfair_lock_unlock((v9 + 16));

        return;
      }

LABEL_11:
      __break(1u);

      os_unfair_lock_unlock((v9 + 16));
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

Swift::Int Font.FontCache.Key.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 120))(v9);
  if (!(v3 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    Font.Context.hash(into:)(v9);
    return Hasher._finalize()();
  }

  v8 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v8);
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 104))(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *initializeWithCopy for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v9 + 64);
  v14 = v10 | v8;
  if (!(v10 | v8))
  {
    if (!*(a2 + v13))
    {
      goto LABEL_26;
    }

    v15 = (*(a2 + v13) - 1) << (8 * v13);
    if (v13 > 3)
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v13 <= 3 ? ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + *(v9 + 64) : 4;
      if (v16 > 2)
      {
        v17 = v16 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v17 = v16 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v17 = 0;
    }

    if ((v17 | v15) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v8 >= v10)
  {
    if (!(*(v7 + 48))(a2))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v14)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + 1;
    }

    memcpy(a1, a2, v18);
    goto LABEL_28;
  }

  if ((*(v9 + 48))((((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, v10, v5))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v7 + 16))(a1, a2, v6);
  v19 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  (*(v9 + 16))((v19 + v12 + 8) & ~v12, (v20 + v12 + 8) & ~v12, v5);
  if (!v14)
  {
    *(a1 + v13) = 0;
  }

LABEL_28:
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 + 1;
  }

  *((a1 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t specialized closure #1 in ObjectCache.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, __n128 a7)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v11 = 0;
    v8 = *a1;
    v12 = *a1 + 32;
    v13 = 1;
    v14 = a2;
    do
    {
      v15 = v13;
      if (v14 >= v8[2])
      {
        goto LABEL_53;
      }

      v16 = v12 + 88 * v14;
      v17 = *(v16 + 16);
      v74 = *v16;
      v75 = v17;
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v20 = *(v16 + 64);
      v79 = *(v16 + 80);
      v77 = v19;
      v78 = v20;
      v76 = v18;
      if (v74)
      {
        v81 = v14;
        v58 = v13;
        v56 = v11;
        v72 = v77;
        v73 = v78;
        v70 = v75;
        v71 = v76;
        v69 = v74;
        if (v78 == a3)
        {
          v46 = 11 * v14;
          v7 = *a4;
          v21 = *(*v69 + 112);
          outlined init with copy of ResolvableTextSegmentAttribute.Value(&v74, &v65, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
          if (v21(v7))
          {
            v22 = *(&v69 + 1);
            v7 = *(&v69 + 1) >> 62;
            v51 = *(&v69 + 1);
            if (*(&v69 + 1) >> 62)
            {
              v42 = __CocoaSet.count.getter();
              v22 = v51;
              v55 = v42;
            }

            else
            {
              v55 = *((*(&v69 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v23 = *(a4 + 8);
            v24 = v23 >> 62;
            v54 = v23;
            if (v23 >> 62)
            {
              v25 = __CocoaSet.count.getter();
              v22 = v51;
            }

            else
            {
              v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v55 == v25)
            {
              v26 = v54;
              if (v55)
              {
                v27 = v22 & 0xFFFFFFFFFFFFFF8;
                v28 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
                v45 = v22 & 0xFFFFFFFFFFFFFF8;
                if (v22 < 0)
                {
                  v27 = v22;
                }

                if (v7)
                {
                  v28 = v27;
                }

                v29 = v54 & 0xFFFFFFFFFFFFFF8;
                v30 = (v54 & 0xFFFFFFFFFFFFFF8) + 32;
                if (v54 < 0)
                {
                  v29 = v54;
                }

                if (v24)
                {
                  v30 = v29;
                }

                if (v28 != v30)
                {
                  if ((v55 & 0x8000000000000000) == 0)
                  {
                    v47 = v54 & 0xC000000000000001;
                    v48 = v22 & 0xC000000000000001;
                    v7 = 4;
                    while (1)
                    {
                      v31 = v12;
                      v32 = v10;
                      v33 = a5;
                      v34 = v8;
                      v8 = (v7 - 4);
                      if (__OFADD__(v7 - 4, 1))
                      {
                        goto LABEL_55;
                      }

                      v57 = v7 - 3;
                      if (v48)
                      {
                        v35 = MEMORY[0x193AC03C0](v7 - 4);
                        if (!v47)
                        {
                          goto LABEL_30;
                        }
                      }

                      else
                      {
                        if (v8 >= *(v45 + 16))
                        {
                          goto LABEL_56;
                        }

                        v35 = *(v22 + 8 * v7);

                        if (!v47)
                        {
LABEL_30:
                          if (v8 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_57;
                          }

                          v36 = *(v26 + 8 * v7);

                          goto LABEL_32;
                        }
                      }

                      v36 = MEMORY[0x193AC03C0](v7 - 4, v26);
LABEL_32:
                      v37 = (*(*v35 + 96))(v36);

                      v8 = v34;
                      a5 = v33;
                      v10 = v32;
                      v12 = v31;
                      v22 = v51;
                      if ((v37 & 1) == 0)
                      {
                        goto LABEL_39;
                      }

                      ++v7;
                      v26 = v54;
                      if (v57 == v55)
                      {
                        goto LABEL_34;
                      }
                    }
                  }

                  goto LABEL_58;
                }
              }

LABEL_34:
              v38 = *(a4 + 32);
              v80[0] = *(a4 + 16);
              v80[1] = v38;
              v40 = *(a4 + 16);
              v39 = *(a4 + 32);
              v80[2] = *(a4 + 48);
              v65 = v70;
              v66 = v71;
              v67 = v72;
              v60 = v40;
              v61 = v39;
              v62 = *(a4 + 48);
              outlined init with copy of Font.Context(&v70, v59);
              outlined init with copy of Font.Context(v80, v59);
              LODWORD(v7) = specialized static Font.Context.== infix(_:_:)(&v65, &v60);
              v63[0] = v60;
              v63[1] = v61;
              v63[2] = v62;
              outlined destroy of Font.Context(v63);
              v64[0] = v65;
              v64[1] = v66;
              v64[2] = v67;
              outlined destroy of Font.Context(v64);
              if (v7)
              {
                LODWORD(v7) = *(a1 + 8) + 1;
                *(a1 + 8) = v7;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  goto LABEL_59;
                }

                goto LABEL_50;
              }
            }
          }
        }

        else
        {
          outlined init with copy of ResolvableTextSegmentAttribute.Value(&v74, &v65, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        }

LABEL_39:
        if (v81 >= v8[2])
        {
          goto LABEL_54;
        }

        LODWORD(v7) = *(a1 + 8);
        v41 = *(v16 + 80);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(&v74, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        if (*a5 < v7 - v41)
        {
          *a6 = v56;
          *a5 = v7 - v41;
        }

        v15 = v58;
      }

      else if (*a5 != 0x7FFFFFFF)
      {
        *a6 = v11;
        *a5 = 0x7FFFFFFF;
      }

      if (v15 == 4)
      {
        return 0;
      }

      v13 = v15 + 1;
      v14 = v15 + v10;
      v11 = v15;
    }

    while ((v10 & 0x8000000000000000) == 0);
  }

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
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v8 = result;
LABEL_50:
  if (v81 >= v8[2])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v8[v46 + 14]) = v7;
    *a1 = v8;
    v44 = *(&v73 + 1);
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v68 = v72;
    outlined destroy of Font.FontCache.Key(&v65);
    return v44;
  }

  return result;
}

void Font.Context.hash(into:)(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v12 = *(v1 + 8);
  v4 = v1[24];
  v5 = v1[25];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  MEMORY[0x193AC11A0](*v1);
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v3 & 1);
  }

  v13 = v12;
  MEMORY[0x193AC11A0](&v13);
  MEMORY[0x193AC11A0](v4);
  Hasher._combine(_:)(v5);
  (*(*v7 + 120))(a1);
  if (v6 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    MEMORY[0x193AC11A0](v11);
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x193AC11A0](*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x193AC03C0](i, v6);
    }

    else
    {
      v10 = *(v6 + 8 * i + 32);
    }

    (*(*v10 + 104))(a1);
  }
}

uint64_t initializeWithCopy for Font.FontCache.Key(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 20);
  v4 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v4;

  return a1;
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item)
  {
    type metadata accessor for CTFontRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v5 = type metadata accessor for ObjectCache.Item(a1, &type metadata for Font.FontCache.Key, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
    }
  }
}

uint64_t destroy for Font.FontCache.Key(void *a1)
{
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>);
    }
  }
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
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
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        outlined init with take of Any(v23, v37);
      }

      else
      {
        outlined init with copy of Any(v23, v37);
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
}

{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v4;
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
      v32 = *(*(v6 + 56) + 16 * v20);
      v22 = MEMORY[0x193AC1170](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v5)
    {
      v30 = 1 << *(v6 + 32);
      if (v30 >= 64)
      {
        bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v6 + 16) = 0;
    }

    v4 = v31;
  }

  else
  {
  }

  *v4 = v8;
}

{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v4;
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
      if ((v5 & 1) == 0)
      {
      }

      v23 = MEMORY[0x193AC1170](*(v8 + 40), v21);
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

    if ((v5 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
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

{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v5;
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
      v22 = *(*(v6 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
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

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v4 = v8;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = a5(a1);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return 0.0;
  }
}

uint64_t Text.ResolvedProperties.addCustomStyle(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v88 = *a1;
  v89 = v4;
  v5 = a1[5];
  *v92 = a1[4];
  *&v92[16] = v5;
  v93 = a1[6];
  v94 = *(a1 + 14);
  v6 = a1[3];
  v90 = a1[2];
  v91 = v6;
  if (BYTE5(v5))
  {
    goto LABEL_19;
  }

  _D9 = v88;
  v8 = *(&v88 + 2);
  v9 = v89;
  if (BYTE8(v93) == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v10 = static GraphicsBlendMode.normal;
    v11 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v10 = v93;
    v11 = BYTE8(v93);
  }

  outlined copy of GraphicsBlendMode?(v93, SBYTE8(v93));
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v12 = static GraphicsBlendMode.normal;
  v13 = byte_1ED52F818;
  if ((v11 & 1) == 0)
  {
    if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v10, 0);
      result = outlined consume of GraphicsBlendMode(v12, 0);
      if (v10 != v12)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_18:
    outlined copy of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    outlined consume of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    goto LABEL_19;
  }

  if (!byte_1ED52F818)
  {
    swift_unknownObjectRetain();
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  outlined consume of GraphicsBlendMode(v10, 1);
  result = outlined consume of GraphicsBlendMode(v12, 1);
  if (v10 != v12)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (!*(v94 + 16))
  {
    v15 = *(&v88 + 3) * *&v92[24];
    goto LABEL_91;
  }

LABEL_19:
  v16 = *(v2 + 5);
  v17 = *(v16 + 16);
  if (v17)
  {
    v65 = v2;
    v18 = 0;
    v2 = v84;
    v19 = &v71;
    v20 = v16 + 32;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_95;
      }

      v21 = v20 + 120 * v18;
      v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 48);
      v80[2] = *(v21 + 32);
      v80[3] = v24;
      v80[0] = v22;
      v80[1] = v23;
      v25 = *(v21 + 64);
      v26 = *(v21 + 80);
      v27 = *(v21 + 96);
      v83 = *(v21 + 112);
      v81 = v26;
      v82 = v27;
      v80[4] = v25;
      v78 = *(v21 + 32);
      *v79 = *(v21 + 48);
      *&v79[16] = *(v21 + 64);
      *&v79[30] = *(v21 + 78);
      v76 = *v21;
      v77 = *(v21 + 16);
      v73 = v90;
      v74 = v91;
      v75[0] = *v92;
      *(v75 + 14) = *&v92[14];
      v71 = v88;
      v72 = v89;
      outlined init with copy of _ShapeStyle_Pack.Style(v80, &v67);
      outlined init with copy of _ShapeStyle_Pack.Fill(v80, &v67);
      outlined init with copy of _ShapeStyle_Pack.Fill(&v88, &v67);
      v28 = static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v76, &v71);
      v84[2] = v73;
      v84[3] = v74;
      v85[0] = v75[0];
      *(v85 + 14) = *(v75 + 14);
      v84[0] = v71;
      v84[1] = v72;
      outlined destroy of _ShapeStyle_Pack.Fill(v84);
      v86[2] = v78;
      v86[3] = *v79;
      v87[0] = *&v79[16];
      *(v87 + 14) = *&v79[30];
      v86[0] = v76;
      v86[1] = v77;
      outlined destroy of _ShapeStyle_Pack.Fill(v86);
      if ((v28 & 1) != 0 && *(&v81 + 2) == *&v92[24])
      {
        v29 = v82;
        v30 = BYTE8(v82);
        v31 = v93;
        v32 = BYTE8(v93);
        if (BYTE8(v82) == 255)
        {
          if (BYTE8(v93) != 255)
          {
LABEL_33:
            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined consume of GraphicsBlendMode?(v29, v30);
            v33 = v31;
            v34 = v32;
LABEL_75:
            outlined consume of GraphicsBlendMode?(v33, v34);
LABEL_76:
            outlined destroy of _ShapeStyle_Pack.Style(v80);
LABEL_77:
            v20 = v16 + 32;
            goto LABEL_22;
          }

          outlined copy of GraphicsBlendMode?(v82, 255);
          outlined copy of GraphicsBlendMode?(v31, 255);
          outlined consume of GraphicsBlendMode?(v29, 255);
        }

        else
        {
          if (BYTE8(v93) == 255)
          {
            goto LABEL_33;
          }

          if (BYTE8(v82))
          {
            if ((BYTE8(v93) & 1) == 0)
            {
              outlined copy of GraphicsBlendMode(v82, 1);
LABEL_74:
              outlined copy of GraphicsBlendMode?(v29, v30);
              outlined copy of GraphicsBlendMode?(v31, v32);
              outlined consume of GraphicsBlendMode(v29, v30 & 1);
              outlined consume of GraphicsBlendMode(v31, v32 & 1);
              v33 = v29;
              v34 = v30;
              goto LABEL_75;
            }

            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined copy of GraphicsBlendMode?(v29, v30);
            outlined consume of GraphicsBlendMode(v29, 1);
            outlined consume of GraphicsBlendMode(v31, 1);
            outlined consume of GraphicsBlendMode?(v29, v30);
            if (v29 != v31)
            {
              goto LABEL_76;
            }
          }

          else
          {
            if (BYTE8(v93))
            {
              goto LABEL_74;
            }

            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined consume of GraphicsBlendMode(v29, 0);
            outlined consume of GraphicsBlendMode(v31, 0);
            outlined consume of GraphicsBlendMode?(v29, v30);
            if (v29 != v31)
            {
              goto LABEL_76;
            }
          }
        }

        v35 = *(v83 + 16);
        v20 = v16 + 32;
        if (v35 == *(v94 + 16))
        {
          if (v35 && v83 != v94)
          {
            v66 = a2;
            v36 = (v83 + 32);
            v37 = (v94 + 32);
            v38 = v35 - 1;
            while (1)
            {
              v76 = *v36;
              v39 = v36[1];
              v40 = v36[2];
              v41 = v36[3];
              *&v79[9] = *(v36 + 57);
              v78 = v40;
              *v79 = v41;
              v77 = v39;
              v43 = v37[2];
              v42 = v37[3];
              v44 = v37[1];
              *&v70[9] = *(v37 + 57);
              v69 = v43;
              *v70 = v42;
              v68 = v44;
              v67 = *v37;
              if (v79[5])
              {
                if ((v70[5] & 1) == 0)
                {
                  goto LABEL_72;
                }
              }

              else if ((v70[5] & 1) != 0 || *&v76 != *&v67 || *(&v76 + 1) != *(&v67 + 1) || *(&v76 + 2) != *(&v67 + 2) || *(&v76 + 3) != *(&v67 + 3) || *&v77 != *&v68 || *(&v77 + 1) != *(&v68 + 1) || *&v78 != *&v69 || *(&v78 + 1) != *(&v69 + 1) || *v79 != *v70 || v79[4] != v70[4])
              {
LABEL_72:
                outlined destroy of _ShapeStyle_Pack.Style(v80);
                a2 = v66;
                v2 = v84;
                goto LABEL_22;
              }

              if (*&v79[8] != *&v70[8])
              {
                goto LABEL_72;
              }

              v45 = *&v79[16];
              v46 = v79[24];
              v47 = *&v70[16];
              v48 = v70[24];
              if (v79[24] == 255)
              {
                if (v70[24] != 255)
                {
LABEL_78:
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined consume of GraphicsBlendMode?(v45, v46);
                  outlined consume of GraphicsBlendMode?(v47, v48);
                  goto LABEL_81;
                }

                v49 = v38;
                outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                outlined consume of GraphicsBlendMode?(v45, 255);
              }

              else
              {
                if (v70[24] == 255)
                {
                  goto LABEL_78;
                }

                if (v79[24])
                {
                  if ((v70[24] & 1) == 0)
                  {
                    swift_unknownObjectRetain();
LABEL_80:
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                    outlined consume of GraphicsBlendMode(v45, v46 & 1);
                    outlined consume of GraphicsBlendMode(v47, (v46 & 1) == 0);
                    outlined consume of GraphicsBlendMode?(v45, v46);
                    outlined destroy of _ShapeStyle_Pack.Effect(&v67);
                    outlined destroy of _ShapeStyle_Pack.Effect(&v76);
LABEL_81:
                    outlined destroy of _ShapeStyle_Pack.Style(v80);
                    a2 = v66;
                    v2 = v84;
                    goto LABEL_77;
                  }

                  v49 = v38;
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined copy of GraphicsBlendMode?(v45, v46);
                  outlined consume of GraphicsBlendMode(v45, 1);
                  outlined consume of GraphicsBlendMode(v47, 1);
                  _ZF = v45 == v47;
                }

                else
                {
                  if (v70[24])
                  {
                    goto LABEL_80;
                  }

                  v49 = v38;
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined consume of GraphicsBlendMode(v45, 0);
                  outlined consume of GraphicsBlendMode(v47, 0);
                  _ZF = v45 == v47;
                }

                v51 = _ZF;
                outlined consume of GraphicsBlendMode?(v45, v46);
                outlined destroy of _ShapeStyle_Pack.Effect(&v67);
                outlined destroy of _ShapeStyle_Pack.Effect(&v76);
                if ((v51 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              if (!v49)
              {
                result = outlined destroy of _ShapeStyle_Pack.Style(v80);
                a2 = v66;
                v8 = vcvts_n_f32_u64(v18, 0xAuLL);
                goto LABEL_90;
              }

              v38 = v49 - 1;
              v37 += 5;
              v36 += 5;
              v20 = v16 + 32;
            }
          }

          result = outlined destroy of _ShapeStyle_Pack.Style(v80);
          v8 = vcvts_n_f32_u64(v18, 0xAuLL);
          goto LABEL_90;
        }
      }

      outlined destroy of _ShapeStyle_Pack.Style(v80);
LABEL_22:
      if (++v18 == v17)
      {
        v19 = *(v16 + 16);
        v2 = v65;
        goto LABEL_84;
      }
    }
  }

  v19 = 0;
LABEL_84:
  outlined init with copy of _ShapeStyle_Pack.Style(&v88, v80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_95:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v16);
    v16 = result;
  }

  v53 = *(v16 + 16);
  v52 = *(v16 + 24);
  if (v53 >= v52 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 16) = v53 + 1;
  v54 = v16 + 120 * v53;
  v55 = v88;
  v56 = v89;
  v57 = v91;
  *(v54 + 64) = v90;
  *(v54 + 80) = v57;
  *(v54 + 32) = v55;
  *(v54 + 48) = v56;
  v58 = *v92;
  v59 = *&v92[16];
  v60 = v93;
  *(v54 + 144) = v94;
  *(v54 + 112) = v59;
  *(v54 + 128) = v60;
  *(v54 + 96) = v58;
  *(v2 + 5) = v16;
  v61 = *(v2 + 16);
  if ((v61 & 1) == 0)
  {
    *(v2 + 16) = v61 | 1;
  }

  v8 = vcvts_n_f32_u64(v19, 0xAuLL);
LABEL_90:
  __asm { FMOV            V9.2S, #-1.0 }

  v15 = 1.0;
  v9 = 2143289344;
LABEL_91:
  *a2 = _D9;
  *(a2 + 8) = v8;
  *(a2 + 12) = v15;
  *(a2 + 16) = v9;
  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t getEnumTagSinglePayload for AccessibilityTextLayoutProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ScrollStateRequest?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void TextLayoutProperties.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, &v66);

    v65 = v66;

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV09LineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v3);
    v7 = v6;

    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    if (v7)
    {
      v8 = v5;
    }

    v64 = v8;
    v70 = v7 & 1;

    v9 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV014LowerLineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v3);
    v11 = v10;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
    if (v12)
    {
      v13 = *(v12 + 72);
    }

    else
    {
      v13 = 3;
    }

    v65 = v13;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v3);
    if (v14)
    {
      v15 = v14[9];
      v16 = *(v14 + 80);
      if (v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14[9];
      }

      if (!*(v14 + 80))
      {
        v15 = v17;
      }

      v64 = v15;
    }

    else
    {
      v64 = 0;
      v16 = 1;
    }

    v70 = v16;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v3);
    if (!v18)
    {
      v63 = 0;
      v11 = 1;
      goto LABEL_24;
    }

    v9 = v18[9];
    v11 = *(v18 + 80);
  }

  v19 = v9 & ~(v9 >> 63);
  if (v11)
  {
    v19 = v9;
  }

  v63 = v19;
LABEL_24:
  v69 = v11 & 1;
  v66 = v3;
  v67 = v4;
  EnvironmentValues.pixelLength.getter();
  v21 = v20;
  if (v4)
  {

    v22 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v3);

    v23 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v24 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v3);

    v26 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v3);

    v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v62 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v66 = v3;
    v67 = v4;
    v61 = EnvironmentValues.multilineTextAlignment.getter();

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, &v66);

    v60 = v66;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v66);

    v29 = v66;
    v30 = v67 | (BYTE4(v67) << 32);
    v31 = BYTE5(v67);
    v59 = HIBYTE(v67);
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v3);
    if (v32)
    {
      v22 = v32[9];
    }

    else
    {
      v22 = 1.0;
    }

    v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    v24 = 0.0;
    v23 = 0.0;
    if (v33)
    {
      v23 = v33[9];
    }

    v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v34)
    {
      v24 = v34[9];
    }

    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v3);
    v26 = 0.0;
    v25 = 0.0;
    if (v35)
    {
      v25 = v35[9];
    }

    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v3);
    if (v36)
    {
      v26 = v36[9];
    }

    v37 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v37)
    {
      v27 = v37[9];
    }

    else
    {
      v27 = 0.0;
    }

    v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v38)
    {
      v62 = *(v38 + 72);
    }

    else
    {
      v62 = 0;
    }

    v39 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v39)
    {
      v28 = v39[9];
    }

    else
    {
      v28 = 0.0;
    }

    v66 = v3;
    v67 = 0;
    v61 = EnvironmentValues.multilineTextAlignment.getter();
    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v3);
    if (v40)
    {
      v60 = *(v40 + 72);
    }

    else
    {
      v60 = 0;
    }

    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v41)
    {
      v29 = v41[9];
      v30 = *(v41 + 20) | (*(v41 + 84) << 32);
      v31 = *(v41 + 85);
      v59 = *(v41 + 87);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v29 = static ContentTransition.State.defaultValue;
      v30 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v31 = BYTE13(static ContentTransition.State.defaultValue);
      v59 = HIBYTE(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v29, v30, v31);
  }

  outlined consume of ContentTransition.Storage(v29, v30, v31);

  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, &v66);

    v42 = v66;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, &v66);

    v43 = v66;
    v44 = v67;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, &v66);

    v46 = v66;
    v45 = v67;
    v47 = v68;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, &v66);

    v48 = v66;
  }

  else
  {
    v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v3);
    if (v49)
    {
      v42 = *(v49 + 72);
    }

    else
    {
      v42 = 0;
    }

    v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(v3);
    if (v50)
    {
      v51 = (v50 + 9);
      v52 = v50 + 10;
    }

    else
    {
      v51 = &static TextSizingKey.defaultValue;
      v52 = &qword_1ED537550;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v43 = *v51;
    v44 = *v52;

    v53 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(v3);
    if (v53)
    {
      v46 = v53[9];
      v45 = v53[10];
      v47 = v53[11];
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v46 = 2;
    }

    v54 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(v3);
    if (v54)
    {
      v48 = *(v54 + 36);
    }

    else
    {
      v48 = 2;
    }
  }

  v55 = v70;
  v56 = (v48 >> 8) & 1;
  v57 = v69;
  if (v48 == 2)
  {
    LOBYTE(v56) = 0;
  }

  *a2 = v64;
  v58 = v65;
  if (v65 == 3)
  {
    v58 = 1;
  }

  *(a2 + 8) = v55;
  *(a2 + 16) = v63;
  *(a2 + 24) = v57;
  *(a2 + 25) = v58;
  *(a2 + 26) = v61;
  *(a2 + 27) = v60;
  *(a2 + 28) = v59;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 64) = v26;
  *(a2 + 72) = v27;
  *(a2 + 80) = v62 & 1;
  *(a2 + 81) = v42;
  *(a2 + 88) = v28;
  *(a2 + 96) = v21;
  *(a2 + 104) = v43;
  *(a2 + 112) = v44;
  *(a2 + 120) = v46;
  *(a2 + 128) = v45;
  *(a2 + 136) = v47;
  *(a2 + 144) = v56;
}

{
  LOBYTE(v109) = 1;
  v139 = 1;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v5 = v140;
  v108 = static Text.Sizing.standard;
  v6 = qword_1ED5372E8;
  v7 = v109;
  v8 = v139;
  v146 = v109;
  v144 = v139;
  v9 = a1[1];
  v10 = a1[2];

  if (v9 >= v10)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LOBYTE(v12) = 0;
    v18 = 0.0;
    v19 = 1.0;
    v17 = 0.0;
    v16 = 0.0;
    v27 = 1;
    v15 = 0.0;
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 1;
  v13 = 0.0;
  v14 = 1.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 1.0;
  while (2)
  {
    v31 = a1[3];
    if (!v31)
    {
      goto LABEL_20;
    }

    v32 = a1[4];
    if (v9 >= v32)
    {
      if (v32 < v9)
      {
        goto LABEL_212;
      }

      a1[3] = 0;
LABEL_20:
      v31 = ProtobufDecoder.decodeVarint()(v31);
      if (v2)
      {
        goto LABEL_213;
      }

      if (v31 <= 7)
      {
        goto LABEL_212;
      }
    }

    switch(v31 >> 3)
    {
      case 1uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_29;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_227;
        }

        v33 = a1[1] + v31;
        if (v10 < v33)
        {
          goto LABEL_212;
        }

        a1[3] = 8;
        a1[4] = v33;
LABEL_29:
        v34 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if (v34 == 1)
        {
          v102 = 0;
        }

        else if (v34 == 3)
        {
          v102 = 2;
        }

        else
        {
          v102 = 1;
        }

        goto LABEL_15;
      case 2uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_73;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_224;
        }

        v54 = a1[1] + v31;
        if (v10 < v54)
        {
          goto LABEL_212;
        }

        a1[3] = 16;
        a1[4] = v54;
LABEL_73:
        v55 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v103 = -(v55 & 1) ^ (v55 >> 1);
        v146 = 0;
        goto LABEL_15;
      case 3uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_101;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_221;
        }

        v64 = a1[1] + v31;
        if (v10 < v64)
        {
          goto LABEL_212;
        }

        a1[3] = 24;
        a1[4] = v64;
LABEL_101:
        v65 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v104 = -(v65 & 1) ^ (v65 >> 1);
        v144 = 0;
        goto LABEL_15;
      case 4uLL:
        v60 = v31 & 7;
        if (v60 == 5)
        {
          v89 = a1[1];
          if (v10 < (v89 + 1))
          {
            goto LABEL_212;
          }

          v90 = *v89;
          a1[1] = v89 + 1;
          v19 = v90;
        }

        else
        {
          if (v60 == 2)
          {
            v83 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v83 < 0)
            {
              goto LABEL_236;
            }

            v61 = a1[1];
            if (v10 < v61 + v83)
            {
              goto LABEL_212;
            }

            a1[3] = 33;
            a1[4] = v61 + v83;
          }

          else
          {
            if (v60 != 1)
            {
              goto LABEL_212;
            }

            v61 = a1[1];
          }

          if (v10 < (v61 + 1))
          {
            goto LABEL_212;
          }

          v19 = *v61;
          a1[1] = v61 + 1;
        }

        goto LABEL_15;
      case 5uLL:
        v40 = v31 & 7;
        if (v40 == 5)
        {
          v84 = a1[1];
          if (v10 < (v84 + 1))
          {
            goto LABEL_212;
          }

          v85 = *v84;
          a1[1] = v84 + 1;
          v18 = v85;
        }

        else
        {
          if (v40 == 2)
          {
            v81 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v81 < 0)
            {
              goto LABEL_231;
            }

            v41 = a1[1];
            if (v10 < v41 + v81)
            {
              goto LABEL_212;
            }

            a1[3] = 41;
            a1[4] = v41 + v81;
          }

          else
          {
            if (v40 != 1)
            {
              goto LABEL_212;
            }

            v41 = a1[1];
          }

          if (v10 < (v41 + 1))
          {
            goto LABEL_212;
          }

          v18 = *v41;
          a1[1] = v41 + 1;
        }

        goto LABEL_15;
      case 7uLL:
        v56 = v31 & 7;
        if (v56 == 5)
        {
          v86 = a1[1];
          if (v10 < (v86 + 1))
          {
            goto LABEL_212;
          }

          v87 = *v86;
          a1[1] = v86 + 1;
          v17 = v87;
        }

        else
        {
          if (v56 == 2)
          {
            v82 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v82 < 0)
            {
              goto LABEL_232;
            }

            v57 = a1[1];
            if (v10 < v57 + v82)
            {
              goto LABEL_212;
            }

            a1[3] = 57;
            a1[4] = v57 + v82;
          }

          else
          {
            if (v56 != 1)
            {
              goto LABEL_212;
            }

            v57 = a1[1];
          }

          if (v10 < (v57 + 1))
          {
            goto LABEL_212;
          }

          v17 = *v57;
          a1[1] = v57 + 1;
        }

        goto LABEL_15;
      case 8uLL:
        v66 = v31 & 7;
        if (v66 == 5)
        {
          v92 = a1[1];
          if (v10 < (v92 + 1))
          {
            goto LABEL_212;
          }

          v93 = *v92;
          a1[1] = v92 + 1;
          v16 = v93;
        }

        else
        {
          if (v66 == 2)
          {
            v88 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v88 < 0)
            {
              goto LABEL_233;
            }

            v67 = a1[1];
            if (v10 < v67 + v88)
            {
              goto LABEL_212;
            }

            a1[3] = 65;
            a1[4] = v67 + v88;
          }

          else
          {
            if (v66 != 1)
            {
              goto LABEL_212;
            }

            v67 = a1[1];
          }

          if (v10 < (v67 + 1))
          {
            goto LABEL_212;
          }

          v16 = *v67;
          a1[1] = v67 + 1;
        }

        goto LABEL_15;
      case 9uLL:
        v68 = v31 & 7;
        if (v68 == 5)
        {
          v94 = a1[1];
          if (v10 < (v94 + 1))
          {
            goto LABEL_212;
          }

          v95 = *v94;
          a1[1] = v94 + 1;
          v15 = v95;
        }

        else
        {
          if (v68 == 2)
          {
            v91 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v91 < 0)
            {
              goto LABEL_234;
            }

            v69 = a1[1];
            if (v10 < v69 + v91)
            {
              goto LABEL_212;
            }

            a1[3] = 73;
            a1[4] = v69 + v91;
          }

          else
          {
            if (v68 != 1)
            {
              goto LABEL_212;
            }

            v69 = a1[1];
          }

          if (v10 < (v69 + 1))
          {
            goto LABEL_212;
          }

          v15 = *v69;
          a1[1] = v69 + 1;
        }

        goto LABEL_15;
      case 0xAuLL:
        v76 = v31 & 7;
        if (v76 == 5)
        {
          v97 = a1[1];
          if (v10 < (v97 + 1))
          {
            goto LABEL_212;
          }

          v98 = *v97;
          a1[1] = v97 + 1;
          v13 = v98;
        }

        else
        {
          if (v76 == 2)
          {
            v96 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v96 < 0)
            {
              goto LABEL_235;
            }

            v77 = a1[1];
            if (v10 < v77 + v96)
            {
              goto LABEL_212;
            }

            a1[3] = 81;
            a1[4] = v77 + v96;
          }

          else
          {
            if (v76 != 1)
            {
              goto LABEL_212;
            }

            v77 = a1[1];
          }

          if (v10 < (v77 + 1))
          {
            goto LABEL_212;
          }

          v13 = *v77;
          a1[1] = v77 + 1;
        }

        goto LABEL_15;
      case 0xBuLL:
        v109 = v31;
        v75 = ProtobufDecoder.doubleField(_:)(&v109);
        if (v2)
        {
          goto LABEL_213;
        }

        v14 = v75;
        goto LABEL_15;
      case 0xCuLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_47;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_222;
        }

        v37 = a1[1] + v31;
        if (v10 < v37)
        {
          goto LABEL_212;
        }

        a1[3] = 96;
        a1[4] = v37;
LABEL_47:
        v38 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v39 = v38 == 2;
        if (v38 == 3)
        {
          v39 = 2;
        }

        v105 = v39;
        goto LABEL_15;
      case 0xDuLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_85;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_228;
        }

        v58 = a1[1] + v31;
        if (v10 < v58)
        {
          goto LABEL_212;
        }

        a1[3] = 104;
        a1[4] = v58;
LABEL_85:
        v59 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        LOBYTE(v106) = v59 != 0;
        goto LABEL_15;
      case 0xEuLL:
        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v5 = v6;
        v6 = v11;
        v42 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42);
          v42 = isUniquelyReferenced_nonNull_native;
        }

        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v42);
          v47 = v46 + 1;
          v42 = isUniquelyReferenced_nonNull_native;
        }

        *(v42 + 16) = v47;
        *(v42 + 8 * v46 + 32) = v10;
        a1[5] = v42;
        v48 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          LOBYTE(v12) = v44;
LABEL_218:
          v100 = v108;
          v6 = v5;
          v5 = v140;
LABEL_214:
          v109 = v103;
          v110 = v146;
          *v111 = *(v5 + 18);
          *&v111[3] = *(v5 + 21);
          v112 = v104;
          v113 = v144;
          v114 = v102;
          v115 = v105;
          v116 = v106;
          v117 = v101;
          v118 = *(v5 + 7);
          v119 = v143;
          v120 = v19;
          v121 = v18;
          v122 = 0;
          v123 = v17;
          v124 = v16;
          v125 = v15;
          v126 = BYTE4(v106);
          v127 = v107;
          v128 = *(v5 + 7);
          v129 = v141;
          v130 = v13;
          v131 = v14;
          v132 = v100;
          *&v133[3] = *(v5 + 3);
          *v133 = *v5;
          v134 = v6;
          v135 = 2;
          v136 = 0;
          v137 = 0;
          v138 = v12;
          outlined destroy of TextLayoutProperties(&v109);
          return;
        }

        if (v48 < 0)
        {
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          __break(1u);
          JUMPOUT(0x18D35695CLL);
        }

        LOBYTE(v12) = v44;
        v49 = a1[1] + v48;
        if (v10 < v49)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_218;
        }

        a1[2] = v49;
        ContentTransition.Style.init(from:)(a1, &v109);
        v50 = a1[5];
        if (!*(v50 + 2))
        {
          goto LABEL_220;
        }

        LOBYTE(v12) = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v51 = *(v50 + 2);
          if (!v51)
          {
            goto LABEL_211;
          }

          goto LABEL_66;
        }

        v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
        v51 = *(v50 + 2);
        if (!v51)
        {
LABEL_211:
          __break(1u);
LABEL_212:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_213:
          v100 = v108;
          goto LABEL_214;
        }

LABEL_66:
        v52 = v51 - 1;
        v53 = *&v50[8 * v52 + 32];
        *(v50 + 2) = v52;
        a1[5] = v50;
        a1[2] = v53;
        v101 = v109;
        v12 = v44;
        v11 = v6;
        v6 = v5;
        v5 = v140;
LABEL_15:
        v9 = a1[1];
        v10 = a1[2];
        if (v9 < v10)
        {
          continue;
        }

        v7 = v146;
        v8 = v144;
        v25 = BYTE4(v106);
        v26 = v107;
        v22 = v105;
        v23 = v106;
        v20 = v103;
        v21 = v104;
        v24 = v101;
        v27 = v102;
LABEL_6:
        a1[3] = 0;
        *a2 = v20;
        *(a2 + 8) = v7;
        *(a2 + 9) = *v145;
        *(a2 + 12) = *&v145[3];
        *(a2 + 16) = v21;
        *(a2 + 24) = v8;
        *(a2 + 25) = v27;
        *(a2 + 26) = v22;
        *(a2 + 27) = v23;
        *(a2 + 28) = v24;
        *(a2 + 29) = v142;
        *(a2 + 31) = v143;
        *(a2 + 32) = v19;
        *(a2 + 40) = v18;
        *(a2 + 48) = 0;
        *(a2 + 56) = v17;
        *(a2 + 64) = v16;
        *(a2 + 72) = v15;
        *(a2 + 80) = v25;
        *(a2 + 81) = v26;
        *(a2 + 86) = v141;
        *(a2 + 82) = *&v140[7];
        *(a2 + 88) = v13;
        *(a2 + 96) = v14;
        *(a2 + 104) = v108;
        *(a2 + 108) = *&v140[3];
        *(a2 + 105) = *v140;
        *(a2 + 112) = v6;
        *(a2 + 120) = 2;
        *(a2 + 128) = 0;
        *(a2 + 136) = 0;
        *(a2 + 144) = v12;
        return;
      case 0x10uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_39;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_229;
        }

        v35 = a1[1] + v31;
        if (v10 < v35)
        {
          goto LABEL_212;
        }

        a1[3] = 128;
        a1[4] = v35;
LABEL_39:
        v36 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v107 = v36 == 1;
        goto LABEL_15;
      case 0x11uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_7;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_225;
        }

        v70 = a1[1] + v31;
        if (v10 < v70)
        {
          goto LABEL_212;
        }

        a1[3] = 136;
        a1[4] = v70;
LABEL_7:
        v28 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v29 = v11 & 0xFFFFFFFE;
        v30 = v11 | 1;
        goto LABEL_9;
      case 0x12uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_123;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_230;
        }

        v71 = a1[1] + v31;
        if (v10 < v71)
        {
          goto LABEL_212;
        }

        a1[3] = 144;
        a1[4] = v71;
LABEL_123:
        v72 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v73 = v72;

        if (v73 == 2)
        {
          v74 = 2;
        }

        else
        {
          v74 = v73 == 1;
        }

        v108 = v74;
        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_15;
      case 0x13uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_148;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_226;
        }

        v80 = a1[1] + v31;
        if (v10 < v80)
        {
          goto LABEL_212;
        }

        a1[3] = 152;
        a1[4] = v80;
LABEL_148:
        v28 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        v29 = v11 & 0xFFFFFFFD;
        v30 = v11 | 2;
LABEL_9:
        if (v28)
        {
          v12 = v30;
        }

        else
        {
          v12 = v29;
        }

        if (v28)
        {
          v11 = v30;
        }

        else
        {
          v11 = v29;
        }

        goto LABEL_15;
      case 0x14uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_140;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v31 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_223;
        }

        v78 = a1[1] + v31;
        if (v10 < v78)
        {
          goto LABEL_212;
        }

        a1[3] = 160;
        a1[4] = v78;
LABEL_140:
        v79 = ProtobufDecoder.decodeVarint()(v31);
        if (v2)
        {
          goto LABEL_213;
        }

        BYTE4(v106) = v79 != 0;
        goto LABEL_15;
      default:
        v62 = v31 & 7;
        if (v62 > 1)
        {
          if (v62 == 2)
          {
            v99 = ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            if (v99 < 0)
            {
              goto LABEL_237;
            }

            v63 = a1[1] + v99;
          }

          else
          {
            if (v62 != 5)
            {
              goto LABEL_212;
            }

            v63 = a1[1] + 4;
          }
        }

        else
        {
          if ((v31 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v31);
            if (v2)
            {
              goto LABEL_213;
            }

            goto LABEL_15;
          }

          if (v62 != 1)
          {
            goto LABEL_212;
          }

          v63 = a1[1] + 8;
        }

        if (v10 < v63)
        {
          goto LABEL_212;
        }

        a1[1] = v63;
        goto LABEL_15;
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v27[0] = a1;

    TextLayoutProperties.init(from:)(v27, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key, &type metadata for TextLayoutProperties.Key);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v29);
    outlined init with take of AnyTrackedValue(v29, v30);
    v12 = v31;
    v13 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v13 + 8))(&type metadata for TextLayoutProperties, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v27[0] = a1;

    TextLayoutProperties.init(from:)(v27, a2);
    v14 = *(a2 + 112);
    v27[6] = *(a2 + 96);
    v27[7] = v14;
    v27[8] = *(a2 + 128);
    v28 = *(a2 + 144);
    v15 = *(a2 + 48);
    v27[2] = *(a2 + 32);
    v27[3] = v15;
    v16 = *(a2 + 80);
    v27[4] = *(a2 + 64);
    v27[5] = v16;
    v17 = *(a2 + 16);
    v27[0] = *a2;
    v27[1] = v17;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>(0);
    v26[3] = v18;
    v26[4] = &protocol witness table for DerivedValue<A>;
    v19 = swift_allocObject();
    v26[0] = v19;
    v20 = *(a2 + 112);
    *(v19 + 112) = *(a2 + 96);
    *(v19 + 128) = v20;
    *(v19 + 144) = *(a2 + 128);
    *(v19 + 160) = *(a2 + 144);
    v21 = *(a2 + 48);
    *(v19 + 48) = *(a2 + 32);
    *(v19 + 64) = v21;
    v22 = *(a2 + 80);
    *(v19 + 80) = *(a2 + 64);
    *(v19 + 96) = v22;
    v23 = *(a2 + 16);
    *(v19 + 16) = *a2;
    *(v19 + 32) = v23;
    outlined init with copy of TextLayoutProperties(v27, &v25);
    specialized Dictionary.subscript.setter(v26, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t sub_18D0D2094()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of _DisplayList_AnyEffectAnimator?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ScrollStateRequest?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of TimelineSchedule?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for ColorBox<CGColorRef>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<CGColorRef>)
  {
    type metadata accessor for CGColorRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, protocol conformance descriptor for CGColorRef);
    v6 = type metadata accessor for ColorBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ColorBox<CGColorRef>);
    }
  }
}

uint64_t Color.init(cgColor:)(uint64_t a1)
{
  type metadata accessor for ColorBox<CGColorRef>(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for CGColorRef(255);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance CGColorRef(uint64_t a1@<X8>)
{
  v3 = specialized Color.Resolved.init(failableCGColor:)(*v1);
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = NAN;
  }

  else
  {
    v6 = v3;
    v8 = v4;
    v7 = HIDWORD(v3);
    v9 = HIDWORD(v4);
    CGColorGetContentHeadroom();
    if (v10 == 0.0)
    {
      v10 = NAN;
    }
  }

  *a1 = v6;
  *(a1 + 4) = v7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v10;
}

unint64_t specialized Color.Resolved.init(failableCGColor:)(void *a1)
{
  v1 = a1;
  v2 = CGColorGetColorSpace(v1);
  v3 = one-time initialization token for srgb;
  v4 = v2;
  v5 = v4;
  if (v3 == -1)
  {
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  v6 = static Color.Resolved.srgb;

  if (v5 == v6)
  {
LABEL_20:
    v14 = 0;
    goto LABEL_23;
  }

LABEL_4:
  v7 = one-time initialization token for srgbExtended;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = static Color.Resolved.srgbExtended;
  if (v5)
  {

    if (v8 == CopyByMatchingToColorSpace)
    {
      goto LABEL_20;
    }
  }

  v10 = one-time initialization token for displayP3;
  v11 = v8;
  if (v10 == -1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v12 = static Color.Resolved.displayP3;

  if (v11 == v12)
  {
    v14 = 2;
    goto LABEL_23;
  }

LABEL_11:
  v13 = one-time initialization token for srgbLinear;
  v14 = v11;
  if (v13 != -1)
  {
    goto LABEL_96;
  }

  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v16 = one-time initialization token for srgbExtendedLinear;
  v17 = v14;
  if (v16 == -1)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = static Color.Resolved.srgbExtendedLinear;

    if (v17 != v18)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v14 = 1;
LABEL_23:
      CopyByMatchingToColorSpace = v1;
      v19 = CGColorRef.components.getter();
      if (!v19)
      {
        goto LABEL_19;
      }

LABEL_24:
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_94;
      }

      if (v20 >= 3)
      {
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v19 + 48);

        v24 = v23;
        CGColorGetAlpha(v1);
        if (v14)
        {
          if (v14 == 1)
          {
          }

          else
          {
            if (v21 <= 0.0)
            {
              v27 = -v21;
            }

            else
            {
              v27 = v21;
            }

            if (v27 <= 0.04045)
            {
              v28 = v27 * 0.077399;
            }

            else
            {
              v28 = 1.0;
              if (v27 != 1.0)
              {
                v28 = powf((v27 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v21 <= 0.0)
            {
              v33 = -v28;
            }

            else
            {
              v33 = v28;
            }

            if (v22 <= 0.0)
            {
              v34 = -v22;
            }

            else
            {
              v34 = v22;
            }

            if (v34 <= 0.04045)
            {
              v35 = v34 * 0.077399;
            }

            else
            {
              v35 = 1.0;
              if (v34 != 1.0)
              {
                v35 = powf((v34 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v22 <= 0.0)
            {
              v36 = -v35;
            }

            else
            {
              v36 = v35;
            }

            if (v24 <= 0.0)
            {
              v37 = -v24;
            }

            else
            {
              v37 = v23;
            }

            if (v37 <= 0.04045)
            {
            }

            else
            {

              if (v37 != 1.0)
              {
                powf((v37 * 0.94787) + 0.052133, 2.4);
              }
            }

            v21 = (v33 * 1.2249) + (v36 * -0.2247);
            v22 = (v36 * 1.0419) + (v33 * -0.042);
          }
        }

        else
        {
          if (v21 <= 0.0)
          {
            v25 = -v21;
          }

          else
          {
            v25 = v21;
          }

          if (v25 <= 0.04045)
          {
            v26 = v25 * 0.077399;
          }

          else
          {
            v26 = 1.0;
            if (v25 != 1.0)
            {
              v26 = powf((v25 * 0.94787) + 0.052133, 2.4);
            }
          }

          if (v21 <= 0.0)
          {
            v21 = -v26;
          }

          else
          {
            v21 = v26;
          }

          if (v22 <= 0.0)
          {
            v30 = -v22;
          }

          else
          {
            v30 = v22;
          }

          if (v30 <= 0.04045)
          {
            v31 = v30 * 0.077399;
          }

          else
          {
            v31 = 1.0;
            if (v30 != 1.0)
            {
              v31 = powf((v30 * 0.94787) + 0.052133, 2.4);
            }
          }

          if (v22 <= 0.0)
          {
            v22 = -v31;
          }

          else
          {
            v22 = v31;
          }

          if (v24 <= 0.0)
          {
            v32 = -v24;
          }

          else
          {
            v32 = v23;
          }

          if (v32 <= 0.04045)
          {
          }

          else
          {

            if (v32 != 1.0)
            {
              powf((v32 * 0.94787) + 0.052133, 2.4);
            }
          }
        }

        return LODWORD(v21) | (LODWORD(v22) << 32);
      }

LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
      if (!v5)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = static Color.Resolved.srgbLinear;

      if (v14 != v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  swift_once();
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(CopyByMatchingToColorSpace, kCGRenderingIntentDefault, v1, 0);

  if (CopyByMatchingToColorSpace)
  {
    v14 = 0;
    v19 = CGColorRef.components.getter();
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_19:
  }

  else
  {
  }

  return 0;
}

double ColorBox.resolveHDR(in:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*(v4 + 184) + 40))(&v7, &v6, *(v4 + 176));
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double one-time initialization function for white(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  *&result = one-time initialization function for white(_Q0, a1, &static Color.white).n128_u64[0];
  return result;
}

uint64_t Image.init(_:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for LocalizedTextStorage();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 40) = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = a3;
  v8 = a3;

  return specialized Image.init(_:bundle:label:)(a1, a2, a3, v6, 0, 1, v7);
}

uint64_t specialized Image.init(_:bundle:label:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = a3;
  if (!a3)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = v11;
  *(result + 48) = 2;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = a6 & 1;
  *(result + 80) = a7;
  *(result + 88) = 0;
  return result;
}

void outlined consume of Image.Location?(id result)
{
  if (result != 2)
  {
    outlined consume of Image.Location(result);
  }
}

void type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
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

uint64_t outlined consume of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of AccessibilityImageLabel(a1, a2, a3, a4);
  }

  return a1;
}

void lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider()
{
  if (!lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.NamedImageProvider, &type metadata for Image.NamedImageProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.NamedImageProvider, &type metadata for Image.NamedImageProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019ImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019ImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ImageRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE024NamedImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE024NamedImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.NamedImageRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t outlined init with copy of NamedImage.VectorKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double outlined consume of EnvironmentValues?(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t AtomicBuffer.__deallocating_deinit()
{
  AtomicBuffer.deinit();

  return swift_deallocClassInstance();
}

void AtomicBuffer.deinit()
{
  UnsafeMutablePointer.deinitialize(count:)();

  JUMPOUT(0x193AC0470);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ClipEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for _ClipEffect<A>, a5);

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t static ViewInputsModifier._makeViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = (*(a6 + 16))(a5, a6);
  if ((v11 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v12 = v11;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_6:
      v13 = *(a6 + 8);
      (a3)();
      LODWORD(v18) = v10;
      return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v18, a2, a5, v13);
    }
  }

  else if (static Semantics.forced < v12)
  {
    goto LABEL_6;
  }

  v15 = a2[1];
  v26[0] = *a2;
  v26[1] = v15;
  v27 = a2[2];
  v25 = *MEMORY[0x1E698D3F8];
  v21 = v26[0];
  v22 = v15;
  v23 = v27;
  *v24 = MEMORY[0x1E69E7CC0];
  *&v24[24] = v25;
  *&v24[28] = v25;
  *&v24[8] = vdupq_n_s32(v25);
  LODWORD(v32[0]) = v10;
  v16 = *(a6 + 24);
  outlined init with copy of _GraphInputs(v26, &v18);
  v16(v32, &v21, a5, a6);
  outlined init with copy of _ViewListInputs(a2, &v18);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  outlined init with copy of _GraphInputs(&v28, v32);
  v17 = outlined destroy of _GraphInputs(v31);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  a3(v17, &v18);
  v32[2] = v23;
  v32[3] = *v24;
  v32[4] = *&v24[16];
  v33 = v25;
  v32[0] = v21;
  v32[1] = v22;
  outlined destroy of _ViewInputs(v32);
  return outlined destroy of _ViewListInputs(&v18);
}

uint64_t static RendererEffect.makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v13 = *a1;
  v14 = a2[3];
  v30 = a2[2];
  v31 = v14;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v15 = a2[1];
  v28 = *a2;
  v29 = v15;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v14) & 1) == 0)
  {
    return (a3)();
  }

  v20 = v13;
  v16 = a2[1];
  v22 = *a2;
  v23 = v16;
  v24 = a2[2];
  v17 = *(a6 + 8);
  v18 = *(v17 + 48);
  outlined init with copy of _GraphInputs(&v28, v21);
  v18(&v20, &v22, a5, v17);
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  outlined destroy of _GraphInputs(v21);
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return static _RendererEffect._makeRendererEffect(effect:inputs:body:)(&v20, &v22, a3, a4, a5, *(a6 + 16), a7);
}

uint64_t type metadata completion function for _ClipEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static Animatable._makeAnimatable(value:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AnimatableAttribute(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v14 + 64))
  {
    v15 = (v11 & 1) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v17 = *(a2 + 24);
    v16 = *(a2 + 28);
    v18 = *(a2 + 16);
    v19 = *(a2 + 8);
    v20 = *a1;
    swift_beginAccess();
    AnimatableAttribute.init(source:phase:time:transaction:environment:)(v20, v17, v19, v16, *(v18 + 16), a3, a4, v10);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v8);
    _GraphValue.init<A>(_:)(v10, a3, v8, v21, &v23);
    *a1 = v23;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, __n128), const char *a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *(a2 + 16);
  swift_beginAccess();
  v14 = *(v13 + 16);
  v20[0] = v12;
  v20[1] = v14;
  v22 = (a5)(0, a3, a4);
  swift_getWitnessTable(a6, v22);
  v23 = v15;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, a7, v21, v22, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  return _GraphInputs.environment.setter(v19);
}

uint64_t static _OverlayModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v12;
  v21[4] = *(a2 + 64);
  v22 = *(a2 + 80);
  v13 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v13;
  v20[1] = v11;
  v14 = type metadata accessor for _OverlayModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _OverlayModifier._makeView(modifier:inputs:body:), a5, v20);
  v17 = v20[0];
  v19[1] = v11;
  _GraphValue.subscript.getter(partial apply for closure #2 in static _OverlayModifier._makeView(modifier:inputs:body:), &type metadata for Alignment, v19);
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v17, v19[0], v21, a3, 0, a5, a6, a7);
}

uint64_t closure #1 in static _OverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _OverlayModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static _OverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _OverlayModifier(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v10, &type metadata for Alignment, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(_DWORD *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v94 = a5;
  v100 = a4;
  v104 = a3;
  v99 = a8;
  v136 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v87 - v12;
  v105 = a6;
  v110 = a7;
  v97 = type metadata accessor for ShapeStyledDisplayList(0, a6, a7, v13);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v87 - v14;
  LODWORD(a6) = *a1;
  v15 = *(a2 + 8);
  *&v115 = *a2;
  *(&v115 + 1) = v15;
  v16 = *(a2 + 16);
  v119 = *(a2 + 24);
  v17 = *(a2 + 36);
  v120 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 60);
  v22 = *(a2 + 68);
  v108 = *(a2 + 64);
  v23 = *(a2 + 76);
  v111 = *(a2 + 72);
  v113 = *(a2 + 80);
  v117 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  LODWORD(v118) = 0;
  HIDWORD(v118) = v24;
  v114 = v20;
  v25 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v18);
  v107 = v17;
  v109 = a6;
  v98 = v24;
  v106 = v19;
  v103 = v22;
  v112 = v18;
  v102 = v23;
  if (v25)
  {
    v26 = ++lastIdentity;
    if ((v17 & 0x100) != 0)
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v115, &v122);
      Attribute = AGWeakAttributeGetAttribute();
      if (Attribute == v24)
      {
        __break(1u);
        return;
      }

      v121 = v26;
      v80 = Attribute<A>.subscript.modify(&v122, Attribute);
      v81 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v121);
      (v80)(&v122, 0, v81);
      v17 = v107;
    }

    v101 = 0;
    v116[0] = v26;
    v27 = v111;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v122 = v115;
    v123 = v16;
    v124 = v119;
    v125 = v120;
    v126 = v17;
    v127 = v106;
    v128 = v18;
    v28 = v114;
    v129 = v114;
    v130 = v21;
    v29 = v108;
    v30 = v103;
    v131 = v108;
    v132 = v103;
    v23 = v102;
    v133 = v27;
    v134 = v102;
    v31 = v16;
    v32 = v113;
    v135 = v113;
    swift_beginAccess();
    v88 = CachedEnvironment.animatedSize(for:)(&v122);
    v122 = v115;
    v123 = v31;
    v124 = v119;
    v125 = v120;
    v126 = v17;
    v127 = v106;
    v128 = v18;
    v129 = v28;
    v130 = v21;
    v33 = v21;
    v131 = v29;
    v132 = v30;
    v34 = v30;
    v133 = v111;
    v134 = v23;
    v135 = v32;
    v35 = CachedEnvironment.animatedPosition(for:)(&v122);
    swift_endAccess();
    v90 = v31;
    v36 = *(v31 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v37 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v115, v122);
    if (v37)
    {
      v38 = *(v37 + 72);
    }

    else
    {
      v38 = 0;
    }

    v40 = v110;
    v41 = v104;
    v42 = v100;
    v43 = v97;
    v44 = v93;
    LOBYTE(v121) = v38;
    (*(v91 + 16))(v93, v94, AssociatedTypeWitness);
    LOWORD(v122) = 0;
    v83 = v44;
    v45 = v95;
    v46 = ShapeStyledDisplayList.init(group:identity:view:styles:size:animatedSize:position:containerPosition:transform:environment:safeAreaInsets:options:data:contentSeed:)(v42, v116, v109, v41, OffsetAttribute2, v88, v35, v34, v95, __SPAIR64__(v36, v33), v23, &v121, v83, &v122, v105, v40);
    v47 = MEMORY[0x1EEE9AC00](v46);
    v85 = v43;
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledDisplayList<A>, v43, v47);
    v86 = v48;
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    v50 = v49;

    v51 = v50;
    v52 = v101;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v45, closure #1 in Attribute.init<A>(_:)partial apply, v84, v43, MEMORY[0x1E69E73E0], v51, MEMORY[0x1E69E7410], v53);
    v101 = v52;
    (*(v96 + 8))(v45, v43);
    v54 = v122;
    LOBYTE(v122) = 0;
    PreferencesOutputs.subscript.setter(v54, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v39 = v33;
    v16 = v90;
  }

  else
  {
    v101 = 0;
    v39 = v21;
    v34 = v22;
  }

  v55 = v115;
  v122 = v115;
  v123 = v16;
  v124 = v119;
  v56 = v107;
  v125 = v120;
  v126 = v107;
  v57 = v106;
  v127 = v106;
  v128 = v112;
  v129 = v114;
  v130 = v39;
  v58 = v108;
  v131 = v108;
  v132 = v34;
  v59 = v111;
  v133 = v111;
  v134 = v23;
  v135 = v113;
  swift_beginAccess();
  LODWORD(v100) = CachedEnvironment.animatedSize(for:)(&v122);
  v122 = __PAIR128__(*(&v115 + 1), v55);
  v123 = v16;
  v124 = v119;
  v125 = v120;
  v126 = v56;
  v127 = v57;
  v128 = v112;
  v129 = v114;
  v130 = v39;
  v60 = v112;
  v131 = v58;
  v132 = v34;
  v133 = v59;
  v134 = v23;
  v135 = v113;
  v61 = CachedEnvironment.animatedPosition(for:)(&v122);
  swift_endAccess();
  v62 = v104;
  v104 = v39;
  v63 = v105;
  v64 = ShapeStyledResponderFilter.init(view:styles:size:position:transform:)(v109, v62, v100, v61, v39, v105, v110);
  v66 = v65;
  v68 = v67;
  v70 = v69;
  *&v122 = v60;
  v71 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  v72 = *(v60 + 16);
  if (v71 != v72)
  {
    if (v71 >= v72)
    {
      __break(1u);
    }

    if (*(v60 + 16 * v71 + 32) == &type metadata for ViewRespondersKey)
    {
      *&v122 = v64;
      *(&v122 + 1) = v66;
      LODWORD(v123) = v68;
      v124 = v70;
      MEMORY[0x1EEE9AC00](v71);
      v74 = type metadata accessor for ShapeStyledResponderFilter(0, v63, v110, v73);
      v85 = v74;
      swift_getWitnessTable(protocol conformance descriptor for ShapeStyledResponderFilter<A>, v74);
      v86 = v75;
      _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v122, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v84, v74, MEMORY[0x1E69E73E0], v76, MEMORY[0x1E69E7410], v77);
      LOBYTE(v122) = 0;
      v71 = PreferencesOutputs.subscript.setter(v121, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }
  }

  v122 = v115;
  v123 = v16;
  v124 = v119;
  v125 = v120;
  v126 = v107;
  v127 = v57;
  v128 = v60;
  v129 = v114;
  v130 = v104;
  v131 = v108;
  v132 = v103;
  v133 = v111;
  v134 = v102;
  v135 = v113;
  MEMORY[0x1EEE9AC00](v71);
  v84[0] = v63;
  v84[1] = v110;
  LODWORD(v85) = v109;
  _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v122, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v82, v98, v63, *(v110 + 8));

  v78 = v99;
  *v99 = v117;
  v78[1] = v118;
}

uint64_t ShapeStyledDisplayList.init(group:identity:view:styles:size:animatedSize:position:containerPosition:transform:environment:safeAreaInsets:options:data:contentSeed:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a11, int a12, char *a13, uint64_t a14, __int16 *a15, uint64_t a16, uint64_t a17)
{
  v18 = *a2;
  v19 = *a13;
  v20 = *a15;
  *a9 = a1;
  *(a9 + 8) = v18;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = a6;
  *(a9 + 28) = a7;
  *(a9 + 32) = a8;
  *(a9 + 36) = a11;
  *(a9 + 44) = a12;
  *(a9 + 48) = v19;
  v21 = type metadata accessor for ShapeStyledDisplayList(0, a16, a17, a4);
  v22 = *(v21 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v22, a14, AssociatedTypeWitness);
  *(a9 + *(v21 + 84)) = v20;
  return result;
}

unint64_t ShapeStyledResponderFilter.init(view:styles:size:position:transform:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for ShapeStyledResponderData(255, a6, a7, a4);
  type metadata accessor for LeafViewResponder(0, v9, &protocol witness table for ShapeStyledResponderData<A>, v10);
  LeafViewResponder.__allocating_init()();
  return a1 | (a2 << 32);
}

char *LeafViewResponder.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ContentResponderHelper.init()(*(*v4 + 248), *(*v4 + 256), a4, &v4[*(*v4 + 264)]);
  *(v4 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v5 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v6 = *(v5 + 208);

  swift_beginAccess();
  *(v4 + 3) = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t LeafViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  LeafViewResponder.init()(v0, v1, v2, v3);
  return v0;
}

_DWORD *storeEnumTagSinglePayload for ShapeStyledResponderData(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

double static _ShapeView._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[3];
  v83 = a2[2];
  v84 = v13;
  v85 = a2[4];
  v86 = *(a2 + 20);
  v14 = a2[1];
  v81 = *a2;
  v82 = v14;
  v15 = v13;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v13) & 1) == 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v15) & 1) == 0)
  {
    *a7 = MEMORY[0x1E69E7CC0];
    v18 = *MEMORY[0x1E698D3F8];
    *(a7 + 8) = 0;
    *(a7 + 12) = v18;
    return result;
  }

  v59 = v12;
  v58 = a7;
  if (a4 == &type metadata for ForegroundStyle)
  {
    (*(a5 + 32))(&v68, a3, a5);
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    swift_beginAccess();
    v80[0] = 1;
    v17 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v74, &v68, 0x100000000);
    swift_endAccess();
  }

  else
  {
    if (*(a4[-1].Description + 8))
    {
      closure #1 in static _ShapeView._makeView(view:inputs:)(1, a3, a4, a5, a6);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    v20 = *(v82 + 16);
    (*(a5 + 32))(&v60, a3, a5);
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    _ViewInputs.materialSubstrate.getter(&v62);
    v68 = __PAIR64__(DWORD2(v81), DWORD2(v82));
    LODWORD(v69) = HIDWORD(v82);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v20, &v60, &v62, BYTE4(v83) & 1, &v68, &v63);
    MEMORY[0x1EEE9AC00](v21);
    v23 = type metadata accessor for ShapeStyleResolver(0, a4, a6, v22);
    v53 = v23;
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v23);
    v54 = v24;
    type metadata accessor for Attribute<_ShapeStyle_Pack>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v63, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, &v51, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v76 = v65;
    v77 = v66;
    *&v78 = v67;
    v74 = v63;
    v75 = v64;
    (*(*(v23 - 8) + 8))(&v74, v23);
    v17 = v68;
    AGGraphSetFlags();
  }

  v27 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness - 8;
  if (*(v30 + 64))
  {
    v55 = v17;
    MEMORY[0x1EEE9AC00](v29);
    v51 = a3;
    v52 = a4;
    v53 = a5;
    v54 = a6;
    LODWORD(v68) = v59;
    *&v74 = a3;
    *(&v74 + 1) = a4;
    *&v75 = a5;
    *(&v75 + 1) = a6;
    v56 = type metadata accessor for _ShapeView(255, &v74);
    type metadata accessor for _GraphValue(0, v56, v31, v32);
    _GraphValue.subscript.getter(partial apply for closure #2 in static _ShapeView._makeView(view:inputs:), a3, &v60);
    v74 = v81;
    v75 = v82;
    v76 = v83;
    outlined init with copy of _GraphInputs(&v81, &v63);
    v33 = static Animatable.makeAnimatable(value:inputs:)(&v60, &v74, a3, v27);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    outlined destroy of _GraphInputs(&v63);
    v57 = a6;
    closure #3 in static _ShapeView._makeView(view:inputs:)(1, a3, a4, a5, a6);
    *&v74 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v33);
    v35 = type metadata accessor for AnimatedShape(0, a3, a5, v34);
    v37 = type metadata accessor for AnimatedShape.Init(0, a3, a5, v36);
    swift_getWitnessTable(protocol conformance descriptor for AnimatedShape<A>.Init, v37);
    _GraphValue.init<A>(_:)(&v74, v35, v37, v38, &v68);
    v39 = v68;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v68, &v74, v55, 0, v40, v35, &protocol witness table for AnimatedShape<A>, &v60);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v41 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    v42 = swift_beginAccess();
    v43 = v57;
    if (byte_1ED53C51C == 1)
    {
      v42 = dyld_program_sdk_at_least();
      v44 = v58;
      if ((v42 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v44 = v58;
      if (static Semantics.forced < v41)
      {
LABEL_26:
        v76 = v83;
        v77 = v84;
        v78 = v85;
        v79 = v86;
        v74 = v81;
        v75 = v82;
        MEMORY[0x1EEE9AC00](v42);
        v50[2] = a3;
        v50[3] = a4;
        v51 = a5;
        v52 = v43;
        LODWORD(v53) = v59;
        _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v74, partial apply for implicit closure #2 in static _ShapeView._makeView(view:inputs:), v50, *MEMORY[0x1E698D3F8], v56, &protocol witness table for _ShapeView<A, B>);
        *v44 = v60;
        result = v61;
        v44[1] = v61;
        return result;
      }
    }

    v62 = v39;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    v42 = static LeafViewLayout.makeLeafLayout(_:view:inputs:)(&v60, &v62, &v74);
    goto LABEL_26;
  }

  *&v74 = a3;
  *(&v74 + 1) = a4;
  *&v75 = a5;
  *(&v75 + 1) = a6;
  v45 = type metadata accessor for _ShapeView(0, &v74);
  v46 = v59;
  LODWORD(v63) = v59;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v79 = v86;
  v74 = v81;
  v75 = v82;
  static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v63, &v74, v17, 0, v47, v45, &protocol witness table for _ShapeView<A, B>, &v68);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v48 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (static Semantics.forced >= v48)
  {
LABEL_28:
    LODWORD(v60) = v46;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    static LeafViewLayout.makeLeafLayout(_:view:inputs:)(&v68, &v60, &v74);
  }

LABEL_29:
  v49 = v58;
  *v58 = v68;
  result = v69;
  *(v49 + 1) = v69;
  return result;
}

uint64_t static _RendererEffect._makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v7 = a6;
  v70 = a4;
  v71 = a3;
  v10 = 0;
  v100 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 16);
  v96 = *(a2 + 32);
  v97 = v11;
  v13 = *(a2 + 48);
  v98 = *(a2 + 64);
  v14 = *(a2 + 16);
  v94 = *a2;
  v95 = v14;
  v90 = v96;
  v91 = v13;
  v92 = *(a2 + 64);
  v65 = *a1;
  v99 = *(a2 + 80);
  v93 = *(a2 + 80);
  v88 = v94;
  v89 = v12;
  v15 = a6 + 56;
  v16 = *(a6 + 56);
  outlined init with copy of _ViewInputs(&v94, &v82);
  v66 = v16;
  v67 = v15;
  if ((v16(a5, v7) & 1) != 0 && (v17 = WORD2(v96), (BYTE4(v96) & 0x20) != 0))
  {
    v28 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v97);
    if ((v17 & 0x2000) != 0 || (v28 & 1) == 0)
    {
      v64 = 0;
    }

    else
    {
      v29 = AGMakeUniqueID();
      _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

      v64 = v29;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v88, v29);
    }
  }

  else
  {
    v64 = 0;
  }

  v63 = v97;
  v62 = DWORD2(v97);
  v18 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v97);
  if (v18)
  {
    if ((*(v7 + 32))(a5, v7))
    {
      v68 = a5;
      v69 = 0;
      v61 = v7;
      v19 = a7;
      v84 = v96;
      v85 = v97;
      v86 = v98;
      v87 = v99;
      v82 = v94;
      v83 = v95;
      swift_beginAccess();
      v20 = CachedEnvironment.animatedPosition(for:)(&v82);
      swift_endAccess();
      *&v82 = __PAIR64__(HIDWORD(v97), v20);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
      v21 = Attribute.init<A>(body:value:flags:update:)();
      v22 = v90;
      HIDWORD(v91) = v21;
      LODWORD(v90) = v90 | 4;
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v23 = *(swift_dynamicCastClassUnconditional() + 248);

      LODWORD(v92) = v23;
      DWORD1(v92) = v23;
      v24 = v98;
      v25 = DWORD2(v98);
      if (one-time initialization token for pixelLength != -1)
      {
        swift_once();
      }

      v26 = static CachedEnvironment.ID.pixelLength;
      swift_beginAccess();
      v27 = specialized CachedEnvironment.attribute<A>(id:_:)(v26, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
      swift_endAccess();
      *&v82 = __PAIR64__(v25, v24);
      DWORD2(v82) = v27;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
      DWORD2(v92) = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v90) = v22 | 0x1C;
      a7 = v19;
      v7 = v61;
      a5 = v68;
      v10 = v69;
    }

    else
    {
      v84 = v96;
      v85 = v97;
      v86 = v98;
      v87 = v99;
      v82 = v94;
      v83 = v95;
      swift_beginAccess();
      v30 = CachedEnvironment.animatedPosition(for:)(&v82);
      swift_endAccess();
      DWORD1(v92) = v30;
    }
  }

  v80[2] = v90;
  v80[3] = v91;
  v80[4] = v92;
  v81 = v93;
  v80[0] = v88;
  v80[1] = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v74 = v88;
  v75 = v89;
  v31 = outlined init with copy of _ViewInputs(v80, &v82);
  v71(v72, v31, &v74);
  v84 = v76;
  v85 = v77;
  v86 = v78;
  v87 = v79;
  v82 = v74;
  v83 = v75;
  outlined destroy of _ViewInputs(&v82);
  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

  v68 = a5;
  v69 = v10;
  v71 = a7;
  v32 = ++lastIdentity;
  v33 = v94;
  v34 = v95;
  LODWORD(v70) = DWORD1(v96);
  LODWORD(v61) = lastIdentity;
  if ((WORD2(v96) & 0x100) == 0)
  {
    v35 = *MEMORY[0x1E698D3F8];
LABEL_16:
    v36 = v7;
    v76 = v96;
    v77 = v97;
    v78 = v98;
    v79 = v99;
    v74 = v94;
    v75 = v95;
    swift_beginAccess();
    v37 = CachedEnvironment.animatedPosition(for:)(&v74);
    v76 = v96;
    v77 = v97;
    v78 = v98;
    v79 = v99;
    v74 = v94;
    v75 = v95;
    v38 = CachedEnvironment.animatedSize(for:)(&v74);
    swift_endAccess();
    v39 = *(v34 + 16);
    v40 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v72[0]);
    if ((v40 & 0x100000000) == 0)
    {
      v35 = v40;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v33, v74);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v43 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v33, v74);
    if (v43)
    {
      v44 = *(v43 + 72);
    }

    else
    {
      v44 = 0;
    }

    *&v74 = __PAIR64__(v65, v61);
    *(&v74 + 1) = __PAIR64__(v38, v37);
    *&v75 = __PAIR64__(DWORD1(v98), HIDWORD(v97));
    *(&v75 + 1) = __PAIR64__(HIDWORD(v98), v39);
    LODWORD(v76) = v35;
    BYTE4(v76) = v42;
    *(&v76 + 1) = __PAIR64__(v44, v64);
    MEMORY[0x1EEE9AC00](v43);
    v45 = v68;
    v59 = type metadata accessor for RendererEffectDisplayList(0, v68, v36, v46);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v59);
    v60 = v47;
    type metadata accessor for Attribute<DisplayList>();
    v48 = v36;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v74, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, &v58, v59, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v50);
    v51 = v73[0];
    v52 = v66(v45, v48);
    v53 = v70;
    if (v70 & 0x20) != 0 && (v52)
    {
      v54 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v63);
      if (v53 & 0x2000) == 0 && (v54)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v74) = 0;
    PreferencesOutputs.subscript.setter(v51, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a7 = v71;
LABEL_30:
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v79 = v93;
    v74 = v88;
    v75 = v89;
    result = outlined destroy of _ViewInputs(&v74);
    *a7 = v72[0];
    *(a7 + 1) = v72[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v94, &v74);
  result = AGWeakAttributeGetAttribute();
  v35 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v73[0] = v32;
    v56 = Attribute<A>.subscript.modify(&v74, result);
    v57 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v73);
    (v56)(&v74, 0, v57);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void type metadata accessor for Attribute<DisplayList>()
{
  if (!lazy cache variable for type metadata for Attribute<DisplayList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<DisplayList>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LeafLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LeafLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ShapeStyleResolver<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, a1);

  return static AsyncAttribute.flags.getter();
}

double destroy for ShapeStyleResolver(void *a1)
{

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ShapeStyledDisplayList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ShapeStyledDisplayList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for ShapeStyledResponderData(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LeafViewResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContentResponderHelper(319, *(a1 + 248), *(a1 + 256), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeStyledResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata completion function for ShapeStyledDisplayList(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t *initializeWithCopy for ShapeStyledDisplayList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v22 = *v23;
  *(v22 + 4) = *(v23 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 16);
  v27 = v25 + 16;
  v28 = *(v25 + 80);
  v29 = (v28 + 5 + v22) & ~v28;
  v30 = (v28 + 5 + v23) & ~v28;

  v26(v29, v30, AssociatedTypeWitness);
  *((*(v27 + 48) + 1 + v29) & 0xFFFFFFFFFFFFFFFELL) = *((*(v27 + 48) + 1 + v30) & 0xFFFFFFFFFFFFFFFELL);
  return a1;
}

uint64_t destroy for ShapeStyledDisplayList(void *a1, uint64_t a2)
{
  v2 = a1 + 11;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = ((((((((((((((((((((v2 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v4 + 80) + 5) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t CachedEnvironment.resolvedShapeStyles(for:role:mode:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v28 = *(a1 + 28);
  v27 = *(a1 + 36);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *a2;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v10))
  {
    v26 = *v4;
    v24 = *MEMORY[0x1E698D3F8];
    v25 = a3;
    if ((a3 & 0x100000000) != 0)
    {
      a3 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      a3 = a3;
    }

    v30 = v7;
    v31 = v8;
    v32 = *(a1 + 12);
    v33 = *(a1 + 20);
    v34 = v9;
    v35 = v28;
    v36 = v27;
    v37 = v11;
    v38 = v10;
    v39 = v12;
    v40 = *(a1 + 60);
    v41 = *(a1 + 76);
    _ViewInputs.materialSubstrate.getter(&v29);
    v14 = v29;
    v15 = *(v4 + 9);
    if (!*(v15 + 16))
    {
      goto LABEL_13;
    }

    v16 = 0x1000000000000;
    if ((v27 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v26 | (v8 << 32), v28 | (v9 << 32), v16 | a3 | (v13 << 32) | (v29 << 40));
    if (v18)
    {
      return *(*(v15 + 56) + 4 * v17);
    }

LABEL_13:
    v30 = __PAIR64__(v8, v26);
    v31 = v28;
    v32 = __PAIR64__(a3, v9);
    LOBYTE(v33) = v13;
    BYTE1(v33) = v14;
    BYTE2(v33) = v27 & 1;
    v19 = ResolvedShapeStyles.makeStyles()();
    if ((v25 & 0x100000000) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v4 + 9);
      v23 = 0x1000000000000;
      if ((v27 & 1) == 0)
      {
        v23 = 0;
      }

      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v26 | (v8 << 32), v28 | (v9 << 32), v24 | (v13 << 32) | (v14 << 40) | v23, isUniquelyReferenced_nonNull_native);
      *(v4 + 9) = v30;
    }

    return v19;
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v20 = specialized GraphHost.intern<A>(_:for:id:)(static _ShapeStyle_Pack.defaultValue, &type metadata for _ShapeStyle_Pack, 0);

    return v20;
  }
}

uint64_t ResolvedShapeStyles.makeStyles()()
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 10);
  v5 = *(v0 + 22);
  v6 = *MEMORY[0x1E698D3F8];
  type metadata accessor for PropertyList.Tracker();
  v7 = swift_allocObject();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 24) = 0;
  *(v8 + 32) = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = 0;
  *(v7 + 16) = v8;
  v13[0] = v6;
  v13[1] = v3;
  v13[2] = v1;
  v14 = v4;
  v15 = v5;
  v16 = v2;
  v17 = *(v0 + 1);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v7;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
  lazy protocol witness table accessor for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ShapeStyleResolver<AnyShapeStyle>(v13);
  AGGraphSetFlags();
  return v11;
}

void lazy protocol witness table accessor for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(255, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>);
  }
}

uint64_t outlined destroy of ShapeStyleResolver<AnyShapeStyle>(uint64_t a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for InterpolatedDisplayList(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>);
    }
  }
}

void _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8 = *(a5 + 1);
  if (*(v8 + 16))
  {
    v11 = *a5;
    v12 = *(a5 + 16);
    v13 = *(a5 + 17);
    v29 = *a5;
    v30 = v8;
    v31 = v12;
    v32 = v13;
    v33 = 0;
    v34 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
    v35 = 0;
    swift_bridgeObjectRetain_n();
    v14 = specialized LazyMapSequence.Iterator.next()();
    v15 = 0.0;
    if (v16)
    {
LABEL_18:

      v23 = swift_allocObject();
      *(v23 + 16) = v15;
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = a2 & 1;
      *(v24 + 32) = a3;
      *(v24 + 40) = a4 & 1;
      LOBYTE(v37) = v12;
      v29 = v11;
      v30 = v8;
      v31 = v12;
      v32 = v13;
      v33 = partial apply for closure #2 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:);
      v34 = v23;
      v35 = partial apply for closure #3 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:);
      v36 = v24;

      specialized Sequence.reduce<A>(_:_:)(&v29, a7, a8, -INFINITY, -INFINITY, -INFINITY, -INFINITY);
      outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(&v29, type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
      return;
    }

    v17 = *&v14;
    v18 = v33;
    v19 = *(v8 + 16);
    if (v33 == v19)
    {
      v15 = *&v14;
      goto LABEL_18;
    }

    v20 = v8 + 32 + 12 * v33;
    v15 = *&v14;
    while (1)
    {
      if (v12)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        v21 = v20;
        if (v18 >= v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v18 >= v19)
        {
          goto LABEL_22;
        }

        v21 = (v8 + 32 + 8 * v18);
      }

      if (v18 >= v19)
      {
        break;
      }

      v18 = (v18 + 1);
      v37 = v11;
      v38 = *v21;
      LayoutProxy.layoutPriority.getter();
      if (v17 < v22)
      {
        v15 = v22;
        v17 = v22;
      }

      v19 = *(v8 + 16);
      v20 += 12;
      if (v18 == v19)
      {
        goto LABEL_18;
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
    __break(1u);
  }
}

void specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  v35 = a6;
  v36 = a7;
  v9 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v9;
  v22 = *(a1 + 40);
  v39 = *(a1 + 32);
  v38 = v39;
  v27 = *(&v9 + 1);
  v26 = v37[0];
  v10 = *(&v37[0] + 1);
  v28 = v9;
  v11 = BYTE1(v9);
  outlined init with copy of LazyFilterSequence<LayoutSubviews>(v37, &v32);

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 & 1;
    v15 = v10 + 32;
LABEL_3:
    v25 = v8;
    v16 = (v15 + 8 * v13);
    v17 = 12 * v13 + 40;
    while (1)
    {
      if (v28)
      {
        if (v13 >= v12)
        {
          goto LABEL_19;
        }

        v18 = (v15 + 12 * v13);
        v19 = *(v10 + v17);
      }

      else
      {
        if (v13 >= v12)
        {
          goto LABEL_20;
        }

        v18 = v16;
        v19 = v13;
      }

      if (v13 >= v12)
      {
        break;
      }

      v20 = v13 + 1;
      LODWORD(v32) = v26;
      *(&v32 + 4) = *v18;
      HIDWORD(v32) = v19;
      LOBYTE(v33) = v14;
      if (v27(&v32))
      {
        v29 = v32;
        LOBYTE(v30) = v33;
        v22(&v32, &v29);
        closure #4 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(&v34, &v32, a2, a3, &v29);
        v8 = v25;
        if (v25)
        {

          return;
        }

        v34 = v29;
        v35 = v30;
        v36 = v31;
        v12 = *(v10 + 16);
        if (v12 - 1 == v13++)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      v12 = *(v10 + 16);
      ++v16;
      v17 += 12;
      ++v13;
      if (v20 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t partial apply for closure #3 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(a1 + 2);
  v13 = *a1;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.dimensions(in:)(&v9, a2);
}

uint64_t closure #4 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, double *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v20 = a1[3];
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  ViewDimensions.subscript.getter(a3);
  v13 = v12;
  result = ViewDimensions.subscript.getter(a4);
  if (v11 == INFINITY)
  {
    v16 = INFINITY;
    if (v10 == INFINITY)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = v11 - v13;
  if (v10 != INFINITY)
  {
LABEL_3:
    v10 = v10 - v15;
  }

LABEL_4:
  if (v8 > v13)
  {
    v17 = v8;
  }

  else
  {
    v17 = v13;
  }

  if (v7 > v15)
  {
    v15 = v7;
  }

  *a5 = v17;
  a5[1] = v15;
  if (v9 > v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v16;
  }

  v19 = v20;
  if (v20 <= v10)
  {
    v19 = v10;
  }

  a5[2] = v18;
  a5[3] = v19;
  return result;
}

uint64_t type metadata accessor for ImageResolutionContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for ImageResolutionContext;
  if (!type metadata singleton initialization cache for ImageResolutionContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

double outlined copy of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey()
{
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.FontContextKey, &unk_1F005E1C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey);
  }
}

uint64_t Image.NamedImageProvider.vectorInfo(in:from:at:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v132 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v132 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v132 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v132 - v19;
  v21 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v138 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v132 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v132 - v33;
  v35 = *a3;
  v36 = *v4;
  v151 = *(v4 + 8);
  v152 = v36;
  v37 = *(v4 + 32);
  v163 = *(v4 + 16);
  v164 = v37;
  v165[0] = *(v4 + 48);
  *(v165 + 9) = *(v4 + 57);
  v39 = *a1;
  v38 = a1[1];
  v150 = a1;
  if (v38)
  {

    v40 = &v161;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v39, &v161);

    v41 = &v161 + 1;
  }

  else
  {
    v42 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v39);
    if (v42)
    {
      v40 = (v42 + 9);
      v41 = v42 + 73;
    }

    else
    {
      v40 = &static SymbolVariantsKey.defaultValue;
      v41 = &static SymbolVariantsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }
  }

  v43 = *v40;
  if ((v43 & 4) != 0)
  {
    v44 = ((v43 & 1) == 0) | v43 & 0xFFFFFFFB;
  }

  else
  {
    v44 = *v40;
  }

  if ((v43 & 4) != 0)
  {
    v45 = 3;
  }

  else
  {
    v45 = *v41;
  }

  v147 = v45;
  v148 = a4;
  v139 = v25;
  v142 = v44;
  if ((v44 & 2) == 0)
  {
LABEL_27:
    LOBYTE(v161) = v44;
    BYTE1(v161) = v45;
    v65._object = v151;
    v65._countAndFlagsBits = v152;
    v66 = SymbolVariants.shapeVariantName(name:)(v65);
    v67 = v44;
    if (v66.value._object)
    {
      v161 = v35;
      v68 = specialized Image.Location.aliasedName(_:)(v66.value._countAndFlagsBits, v66.value._object);
      v70 = v69;

      v157 = v35;
      LOBYTE(v154) = v44;
      BYTE1(v154) = v45;
      v71 = Image.Location.fillVariant(_:name:)(&v154, v68, v70);
      if (v72)
      {
        v73 = v71;
        v74 = v72;

        v68 = v73;
        v70 = v74;
      }

      v154 = v35;
      v75 = v150;
      v58 = *v150;
      v76 = v150[1];
      v157 = *v150;
      v158 = v76;
      v77 = type metadata accessor for ImageResolutionContext(0);
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v75 + *(v77 + 24), v146, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v76)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v156);

        v78 = v156;
      }

      else
      {

        v80 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v79);
        if (v80)
        {
          v78 = *(v80 + 72);
        }

        else
        {
          v78 = 6;
        }
      }

      LOBYTE(v156) = v78;
      v93 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      v94 = v141;
      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v68, v70, &v154, &v157, v146, v93, v141);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v94, v149, &v161);
      outlined destroy of NamedImage.BitmapKey(v94, type metadata accessor for NamedImage.VectorKey);

      if (v161)
      {
LABEL_54:
        outlined init with take of NamedImage.VectorInfo(&v161, v159);
        outlined init with take of NamedImage.VectorInfo(v159, &v161);
        a4 = v148;
        if (!v161)
        {
          return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
        }

LABEL_65:
        if (v76)
        {
          goto LABEL_66;
        }

LABEL_84:
        if (_s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(v58))
        {
          goto LABEL_67;
        }

        return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
      }

      _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
      v25 = v139;
      v67 = v142;
      LOBYTE(v45) = v147;
    }

    v95 = v25;
    v161 = v35;
    LOBYTE(v157) = v67;
    BYTE1(v157) = v45;
    v159[0]._countAndFlagsBits = v35;
    v96 = specialized Image.Location.aliasedName(_:)(v152, v151);
    v98 = v97;

    v99 = Image.Location.fillVariant(_:name:)(&v157, v96, v98);
    v101 = v100;

    if (v101)
    {
      v154 = v35;
      v102 = v150;
      v58 = *v150;
      v76 = v150[1];
      v157 = *v150;
      v158 = v76;
      v103 = type metadata accessor for ImageResolutionContext(0);
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v102 + *(v103 + 24), v145, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v76)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v156);

        v104 = v156;
      }

      else
      {

        v106 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v105);
        if (v106)
        {
          v104 = *(v106 + 72);
        }

        else
        {
          v104 = 6;
        }
      }

      LOBYTE(v156) = v104;
      v107 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v99, v101, &v154, &v157, v145, v107, v95);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v95, v149, &v161);
      outlined destroy of NamedImage.BitmapKey(v95, type metadata accessor for NamedImage.VectorKey);

      if (v161)
      {
        goto LABEL_54;
      }

      _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    }

    v161 = v35;
    v108 = specialized Image.Location.aliasedName(_:)(v152, v151);
    v110 = v109;
    v159[0]._countAndFlagsBits = v35;
    v111 = v150;
    v58 = *v150;
    v76 = v150[1];
    v161 = *v150;
    v162 = v76;
    v112 = type metadata accessor for ImageResolutionContext(0);
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v111 + *(v112 + 24), v144, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    outlined copy of Image.Location(v35);
    if (v76)
    {

      swift_retain_n();

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v157);

      v113 = v157;
      v114 = v138;
      a4 = v148;
    }

    else
    {

      v116 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v115);
      v114 = v138;
      a4 = v148;
      if (v116)
      {
        v113 = *(v116 + 72);
      }

      else
      {
        v113 = 6;
      }
    }

    LOBYTE(v157) = v113;
    v117 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

    NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v108, v110, &v159[0]._countAndFlagsBits, &v161, v144, v117, v114);
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    NamedImage.Cache.subscript.getter(v114, v149, &v161);
    outlined destroy of NamedImage.BitmapKey(v114, type metadata accessor for NamedImage.VectorKey);

    if (!v161)
    {
      return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
    }

    goto LABEL_65;
  }

  v161 = 0x6873616C732ELL;
  v162 = 0xE600000000000000;
  v159[0]._countAndFlagsBits = v152;
  v159[0]._object = v151;

  v159[0]._countAndFlagsBits = String.init<A>(_:)();
  v159[0]._object = v46;
  v47 = v147;
  String.append<A>(contentsOf:)();
  countAndFlagsBits = v159[0]._countAndFlagsBits;
  LOBYTE(v161) = v44;
  BYTE1(v161) = v47;
  object = v159[0]._object;
  v49 = SymbolVariants.shapeVariantName(name:)(v159[0]);
  v134 = countAndFlagsBits;
  if (!v49.value._object)
  {
LABEL_35:
    v161 = v35;
    LOBYTE(v154) = v44;
    BYTE1(v154) = v47;
    v157 = v35;
    v81 = specialized Image.Location.aliasedName(_:)(countAndFlagsBits, object);
    v83 = v82;

    v84 = Image.Location.fillVariant(_:name:)(&v154, v81, v83);
    v86 = v85;

    if (v86)
    {
      v133 = v84;
      v87 = v150;
      v58 = *v150;
      v59 = v150[1];
      v154 = *v150;
      v155 = v59;
      v156 = v35;
      v88 = type metadata accessor for ImageResolutionContext(0);
      v89 = v137;
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v87 + *(v88 + 24), v137, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v59)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v153);

        v90 = v153;
      }

      else
      {

        v92 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v91);
        if (v92)
        {
          v90 = *(v92 + 72);
        }

        else
        {
          v90 = 6;
        }
      }

      v153 = v90;
      v120 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      v121 = v136;
      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v133, v86, &v156, &v154, v89, v120, v136);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v121, v149, &v157);
      outlined destroy of NamedImage.BitmapKey(v121, type metadata accessor for NamedImage.VectorKey);

      if (v157)
      {
        outlined init with take of NamedImage.VectorInfo(&v157, &v161);
        outlined init with take of NamedImage.VectorInfo(&v161, v159);
        goto LABEL_82;
      }

      _sypSgWOhTm_9(&v157, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
      countAndFlagsBits = v134;
    }

    v161 = v35;
    v122 = specialized Image.Location.aliasedName(_:)(countAndFlagsBits, object);
    v124 = v123;
    v157 = v35;
    v125 = v150;
    v58 = *v150;
    v59 = v150[1];
    v161 = *v150;
    v162 = v59;
    v126 = type metadata accessor for ImageResolutionContext(0);
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v125 + *(v126 + 24), v140, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    outlined copy of Image.Location(v35);
    if (v59)
    {

      swift_retain_n();

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v154);

      v127 = v154;
    }

    else
    {

      v129 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v128);
      if (v129)
      {
        v127 = *(v129 + 72);
      }

      else
      {
        v127 = 6;
      }
    }

    LOBYTE(v154) = v127;
    v130 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

    v131 = v135;
    NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v122, v124, &v157, &v161, v140, v130, v135);
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    NamedImage.Cache.subscript.getter(v131, v149, v159);
    outlined destroy of NamedImage.BitmapKey(v131, type metadata accessor for NamedImage.VectorKey);

LABEL_82:

    if (!v159[0]._countAndFlagsBits)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

  v161 = v35;
  v50 = specialized Image.Location.aliasedName(_:)(v49.value._countAndFlagsBits, v49.value._object);
  v52 = v51;

  v154 = v35;
  LOBYTE(v156) = v44;
  BYTE1(v156) = v47;
  v53 = Image.Location.fillVariant(_:name:)(&v156, v50, v52);
  if (v54)
  {
    v55 = v53;
    v56 = v54;

    v50 = v55;
    v52 = v56;
  }

  v57 = v150;
  v58 = *v150;
  v59 = v150[1];
  v154 = *v150;
  v155 = v59;
  v156 = v35;
  v60 = type metadata accessor for ImageResolutionContext(0);
  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v57 + *(v60 + 24), v20, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  outlined copy of Image.Location(v35);
  if (v59)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v153);

    v61 = v153;
  }

  else
  {

    v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v62);
    if (v63)
    {
      v61 = *(v63 + 72);
    }

    else
    {
      v61 = 6;
    }
  }

  v153 = v61;
  v64 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

  NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v50, v52, &v156, &v154, v20, v64, v34);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  NamedImage.Cache.subscript.getter(v34, v149, &v157);
  outlined destroy of NamedImage.BitmapKey(v34, type metadata accessor for NamedImage.VectorKey);

  countAndFlagsBits = v134;
  if (!v157)
  {
    _sypSgWOhTm_9(&v157, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    a4 = v148;
    v47 = v147;
    LOBYTE(v44) = v142;
    goto LABEL_35;
  }

  outlined init with take of NamedImage.VectorInfo(&v157, &v161);
  outlined init with take of NamedImage.VectorInfo(&v161, v159);

  a4 = v148;
  if (!v159[0]._countAndFlagsBits)
  {
LABEL_26:
    _sypSgWOhTm_9(v159, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    v25 = v139;
    LOBYTE(v45) = v147;
    LOBYTE(v44) = v142;
    goto LABEL_27;
  }

LABEL_83:
  outlined init with take of NamedImage.VectorInfo(v159, &v161);
  if (!v59)
  {
    goto LABEL_84;
  }

LABEL_66:

  ShouldRedactSymbolImagesJ0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(v58);

  if (ShouldRedactSymbolImagesJ0VG_Tt1g5)
  {
LABEL_67:
    v159[0]._countAndFlagsBits = v152;
    v159[0]._object = v151;
    v159[1] = v163;
    v159[2] = v164;
    v160[0] = v165[0];
    *(v160 + 9) = *(v165 + 9);
    Image.NamedImageProvider.placeholderVectorInfo(in:)(v150, a4);
    return _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  }

  return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
        outlined init with take of AnyTrackedValue(v22, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (v13[1])(&type metadata for SymbolVariants, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = (v15 + 9);
          v17 = v15 + 73;
        }

        else
        {
          v16 = &static SymbolVariantsKey.defaultValue;
          v17 = &static SymbolVariantsKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v18 = *v16;
        v19 = *v17;
        *a2 = v18;
        a2[1] = v19;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>(0);
        v24 = v20;
        v25 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v23[0]) = v18;
        BYTE1(v23[0]) = v19;
        specialized Dictionary.subscript.setter(v23, v8);
      }

      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
  if (v14)
  {
    *a2 = *(v14 + 36);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *a2 = static SymbolVariantsKey.defaultValue;
  }

LABEL_17:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 6;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for InterfaceIdiom, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 6;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for LegibilityWeight?, &type metadata for LegibilityWeight, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
        outlined init with take of AnyTrackedValue(v20, v21);
        v12 = v22;
        v13 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (v13[1])(&type metadata for Image.Scale, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = *(v16 + 72);
        }

        else
        {
          v17 = 1;
        }

        *a2 = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>(0);
        v22 = v18;
        v23 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v21[0]) = v17;
        specialized Dictionary.subscript.setter(v21, v8);
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v14 = 1;
  *(v5 + 56) = 1;
  v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v15)
  {
    v14 = *(v15 + 72);
  }

  *a2 = v14;
LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>);
    }
  }
}

void type metadata accessor for NamedImage.VectorInfo?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(void *), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(v8);
  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

void lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void outlined consume of Image.Location(id a1)
{
  if (a1 >= 2)
  {
  }
}

id outlined copy of Image.Location(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t outlined init with take of NamedImage.VectorInfo?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void destroy for Image.Resolved(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3, *(a1 + 136));
  }

  swift_unknownObjectRelease();

  v4 = *(a1 + 176);
}

void outlined consume of GraphicsImage.Contents(void *a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a2 < 2u)
  {

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }
}

uint64_t initializeWithCopy for Image.Resolved(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6, v10);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v11;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v12 = a2[22];
  *(a1 + 176) = v12;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  swift_unknownObjectRetain();

  v13 = v12;
  return a1;
}

uint64_t outlined consume of ContentTransition.Storage(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return v3;
}

double outlined copy of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t specialized Font.TextStyle.ctTextStyle.getter()
{
  v1 = *v0;
  if (v1 < 0xB)
  {
    return **(&unk_1E72448C8 + v1);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _ShapeStyle_Pack.subscript.setter(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v5 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 96);
  v30[5] = *(a1 + 80);
  v30[6] = v6;
  v30[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v7;
  v8 = *a2;
  v9 = *v3;
  v10 = *(*v3 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = LOBYTE(v9[v11 + 4]);
      v14 = BYTE1(v9[v11 + 4]);
      if (v8 == v13 && v14 == a3)
      {
        break;
      }

      v16 = v14 > a3 && v8 == v13;
      if (v8 < v13 || v16)
      {
        *&v28[70] = *(a1 + 64);
        *&v28[86] = *(a1 + 80);
        *&v28[102] = *(a1 + 96);
        *&v28[6] = *a1;
        *&v28[22] = *(a1 + 16);
        *&v28[38] = *(a1 + 32);
        *&v28[118] = *(a1 + 112);
        *&v28[54] = *(a1 + 48);
        if (v10 >= v12)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_21;
      }

      ++v12;
      v11 += 16;
      if (v10 == v12)
      {
        goto LABEL_13;
      }
    }

    v4 = a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v9;
    if (result)
    {
      goto LABEL_15;
    }

LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = result;
    *v3 = result;
LABEL_15:
    if (v12 >= v9[2])
    {
      __break(1u);
    }

    else
    {
      v18 = &v9[v11];
      v19 = *&v9[v11 + 5];
      v20 = *&v9[v11 + 7];
      v21 = *&v9[v11 + 11];
      v29[2] = *&v9[v11 + 9];
      v29[3] = v21;
      v29[1] = v20;
      v29[0] = v19;
      v22 = *&v9[v11 + 13];
      v23 = *&v9[v11 + 15];
      v24 = *&v9[v11 + 17];
      *&v29[7] = v9[v11 + 19];
      v29[5] = v23;
      v29[6] = v24;
      v29[4] = v22;
      v25 = *(v4 + 80);
      *(v18 + 13) = *(v4 + 64);
      *(v18 + 15) = v25;
      *(v18 + 17) = *(v4 + 96);
      v18[19] = *(v4 + 112);
      v26 = *(v4 + 16);
      *(v18 + 5) = *v4;
      *(v18 + 7) = v26;
      v27 = *(v4 + 48);
      *(v18 + 9) = *(v4 + 32);
      *(v18 + 11) = v27;
      result = outlined destroy of _ShapeStyle_Pack.Style(v29);
      *v3 = v9;
    }
  }

  else
  {
LABEL_13:
    *&v28[70] = *(a1 + 64);
    *&v28[86] = *(a1 + 80);
    *&v28[102] = *(a1 + 96);
    *&v28[6] = *a1;
    *&v28[22] = *(a1 + 16);
    *&v28[38] = *(a1 + 32);
    *&v28[118] = *(a1 + 112);
    v12 = *(*v3 + 16);
    *&v28[54] = *(a1 + 48);
LABEL_18:
    *(&v29[4] + 2) = *&v28[64];
    *(&v29[5] + 2) = *&v28[80];
    *(&v29[6] + 2) = *&v28[96];
    v29[7] = *&v28[110];
    *(v29 + 2) = *v28;
    *(&v29[1] + 2) = *&v28[16];
    *(&v29[2] + 2) = *&v28[32];
    *(&v29[3] + 2) = *&v28[48];
    LOBYTE(v29[0]) = v8;
    BYTE1(v29[0]) = a3;
    specialized Array.replaceSubrange<A>(_:with:)(v12, v12, v29);
    return outlined destroy of _ShapeStyle_Pack.Style(v30);
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v16 = a2[8];
  v17 = a2[9];
  v19 = *(a2 + 84);
  v20 = *(a2 + 20);
  v18 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v5, v6, v7, v8, v9, v11, v10, v16, v17, v20 | (v19 << 32), v18);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v10;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 84) = v19;
  *(a1 + 80) = v20;
  *(a1 + 85) = v18;
  *(a1 + 88) = *(a2 + 22);
  v12 = *(a2 + 104);
  if (v12 == 255)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v13 = a2[12];
    v14 = v12 & 1;
    outlined copy of GraphicsBlendMode(v13, v12 & 1);
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
  }

  *(a1 + 112) = a2[14];

  return a1;
}

uint64_t destroy for _ShapeStyle_Pack.Style(uint64_t a1)
{
  outlined consume of _ShapeStyle_Pack.Fill(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) | (*(a1 + 84) << 32), *(a1 + 85));
  v2 = *(a1 + 104);
  if (v2 != 255)
  {
    outlined consume of GraphicsBlendMode(*(a1 + 96), v2 & 1);
  }
}

uint64_t outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style, "key style ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, RBDisplayListContents)>, type metadata accessor for (Int, RBDisplayListContents), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Int, RBDisplayListContents)(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<LazyLayoutViewCache>>, type metadata accessor for WeakBox<LazyLayoutViewCache>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Path?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for Path?, &type metadata for Path, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (StrongHash, DisplayList), &type metadata for StrongHash, &type metadata for DisplayList);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ObjectCache<Font.FontCache.Key, CTFontRef>.Item>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item, type metadata accessor for CTFontRef, lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key, &type metadata for Font.FontCache.Key);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork>, type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Double>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for AnimatorState<Double>.Fork, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Double>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>.Entry, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_AnyAnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_AnyAnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>.Entry, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(0, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(views: _ViewList_ID_Views, endOffset: Int)>, type metadata accessor for (views: _ViewList_ID_Views, endOffset: Int), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (views: _ViewList_ID_Views, endOffset: Int)(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.ResolvedHDR, CGColorRef>.Item>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, ConvertiblePath)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ContentShapeKinds, ConvertiblePath), &type metadata for ContentShapeKinds, &type metadata for ConvertiblePath);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Color.ResolvedHDR._Animatable>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<CGFloat>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>.Fork, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<CGFloat>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>.Entry, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ShaderVectorData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>.Fork, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ShaderVectorData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>.Entry, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<[_LazyLayout_Subview]>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewRendererHost, &protocol descriptor for ViewRendererHost, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, AnyShape)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ContentShapeKinds, AnyShape), &type metadata for ContentShapeKinds, &type metadata for AnyShape);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>, type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>>, type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(range: _NSRange, attributes: [NSAttributedStringKey : Any])>, type metadata accessor for (range: _NSRange, attributes: [NSAttributedStringKey : Any]), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (range: _NSRange, attributes: [NSAttributedStringKey : Any])(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ScrapeableContent, Int)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ScrapeableContent, Int), &type metadata for ScrapeableContent, MEMORY[0x1E69E6530]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(String, String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (name: String, value: String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "name value ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(SizingPreferences, Transaction?)>, type metadata accessor for (SizingPreferences, Transaction?), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (SizingPreferences, Transaction?)(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ResolvedGradientVector>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>.Entry, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ResolvedGradientVector>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[33 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 264 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ConcentricRectangle.AnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[37 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 296 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Edge.Corner.Style.AnimatableData>.Fork>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}