void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.RowOrColumn>, &type metadata for GridLayout.Cache.RowOrColumn, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance GridMetadata@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static GridMetadata.defaultValue;

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t lazy protocol witness table accessor for type GridIndex and conformance GridIndex()
{
  result = lazy protocol witness table cache variable for type GridIndex and conformance GridIndex;
  if (!lazy protocol witness table cache variable for type GridIndex and conformance GridIndex)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridIndex, &type metadata for GridIndex, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridIndex and conformance GridIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridIndex and conformance GridIndex;
  if (!lazy protocol witness table cache variable for type GridIndex and conformance GridIndex)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridIndex, &type metadata for GridIndex, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridIndex and conformance GridIndex);
  }

  return result;
}

uint64_t GridLayout.Cache.assignSpacing(in:)(uint64_t result)
{
  v2 = (v1 + 24);
  v40 = result & 1;
  if (result)
  {
    v2 = (v1 + 40);
  }

  if (*v2 != 1)
  {
    return result;
  }

  v3 = v1;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v39 = v1;
  if (result)
  {
    v6 = *(v5 + 16);
    if (!v6)
    {
LABEL_18:
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      v7 = *(v5 + 16);
      if (!v7)
      {
        return result;
      }

LABEL_19:
      v14 = 0;
      v37 = v7;
      while (v14 != v7)
      {
        v38 = v14;
        if (v40)
        {
          v15 = *(v3 + 112);
        }

        else
        {
          v15 = *(v3 + 104);
        }

        v41 = *(v15 + 16);
        if (v41)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          LOBYTE(v19) = 2;
          v20 = 32;
          do
          {
            v21 = v19;
            v22 = v17;
            v23 = v16;
            if (*(*(v3 + 144) + 16))
            {
              v24 = *(v3 + 48);
              v25 = *(v3 + 56);
              v26 = *(v3 + 64);
              v27 = *(v3 + 65);
              if (v40)
              {
                v28 = v18;
              }

              else
              {
                v28 = v38;
              }

              if (v40)
              {
                v29 = v38;
              }

              else
              {
                v29 = v18;
              }

              result = specialized __RawDictionaryStorage.find<A>(_:)(v29 | (v28 << 32));
              if (v30)
              {
                LODWORD(v45) = v24;
                v46 = v25;
                v47 = v26;
                v48 = v27;
                result = LayoutSubviews.subscript.getter();
                v16 = v42;
                v17 = v43;
                v19 = v44;
              }

              else
              {
                v16 = 0;
                v17 = 0;
                v19 = 2;
              }

              v3 = v39;
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v19 = 2;
            }

            if (v21 != 2 && v19 != 2 && (v23 != v16 || HIDWORD(v23) != HIDWORD(v16) || v22 != v17 || HIDWORD(v22) != HIDWORD(v17) || v19 != v21))
            {
              v45 = v23;
              v46 = v22;
              v47 = v21;
              LayoutSubview.spacing.getter();
              v42 = v16;
              v43 = v17;
              v44 = v19;
              LayoutSubview.spacing.getter();
              ViewSpacing.distance(to:along:)();
              v32 = v31;

              v33 = GridLayout.Cache.subscript.modify();
              v35 = v34;
              v36 = *v34;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v35 = v36;
              if (result)
              {
                if ((v18 & 0x8000000000000000) != 0)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
                v36 = result;
                *v35 = result;
                if ((v18 & 0x8000000000000000) != 0)
                {
LABEL_54:
                  __break(1u);
                  return result;
                }
              }

              if (v18 >= *(v36 + 16))
              {
                __break(1u);
                goto LABEL_57;
              }

              if (*(v36 + v20) < v32)
              {
                *(v36 + v20) = v32;
              }

              result = (v33)(&v45, 0);
              v3 = v39;
            }

            ++v18;
            v20 += 64;
          }

          while (v41 != v18);
        }

        v7 = v37;
        v14 = v38 + 1;
        if (v38 + 1 == v37)
        {
          return result;
        }
      }

LABEL_58:
      __break(1u);
      return result;
    }
  }

  v8 = 0;
  v9 = 32;
  do
  {
    v10 = GridLayout.Cache.subscript.modify();
    v12 = v11;
    v13 = *v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = result;
      *v12 = result;
    }

    if (v8 >= *(v13 + 16))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    ++v8;
    *(v13 + v9) = 0;
    result = (v10)(&v45, 0);
    v9 += 64;
    v3 = v39;
  }

  while (v6 != v8);
  if (v40)
  {
    v4 = *(v39 + 104);
    goto LABEL_18;
  }

  v7 = *(*(v39 + 112) + 16);
  if (v7)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t initializeWithCopy for GridLayout.Cache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;
  v7 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v7;

  return a1;
}

uint64_t destroy for GridLayout.Cache()
{
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v20[0]) = a2 & 1;
  LOBYTE(v18[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v7 = *(a6 + 112);
  v18[6] = *(a6 + 96);
  v18[7] = v7;
  v18[8] = *(a6 + 128);
  v19 = *(a6 + 144);
  v8 = *(a6 + 48);
  v18[2] = *(a6 + 32);
  v18[3] = v8;
  v9 = *(a6 + 80);
  v18[4] = *(a6 + 64);
  v18[5] = v9;
  v10 = *(a6 + 16);
  v18[0] = *a6;
  v18[1] = v10;
  *&v11 = *&GridLayout.Cache.size()();
  v12 = *(a6 + 112);
  v20[6] = *(a6 + 96);
  v20[7] = v12;
  v20[8] = *(a6 + 128);
  v21 = *(a6 + 144);
  v13 = *(a6 + 48);
  v20[2] = *(a6 + 32);
  v20[3] = v13;
  v14 = *(a6 + 80);
  v20[4] = *(a6 + 64);
  v20[5] = v14;
  v15 = *(a6 + 16);
  v20[0] = *a6;
  v20[1] = v15;
  outlined init with copy of GridLayout.Cache(v18, v17);
  outlined destroy of GridLayout.Cache(v20);
  return v11;
}

uint64_t GridLayout.Cache.setProposal(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  LOBYTE(v30) = a2 & 1;
  result = static ProposedViewSize.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  if (v10)
  {
    v12 = 0x7FF0000000000000;
  }

  else
  {
    v12 = v9;
  }

  v13 = ~v12 & 0x7FF0000000000000;
  v14 = v12 & 0xFFFFFFFFFFFFFLL;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (v15)
  {
    v16 = *(v4 + 104);
    v17 = *(v16 + 2);
    if (!v17)
    {
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    while (v17 <= *(v16 + 2))
    {
      v18 = 56;
      do
      {
        v19 = &v16[v18];
        *v19 = 0;
        *(v19 + 1) = 0;
        v18 += 64;
        --v17;
      }

      while (v17);
      *(v4 + 104) = v16;
LABEL_16:
      v16 = *(v4 + 112);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_18:
      if (v17 > *(v16 + 2))
      {
        __break(1u);
LABEL_42:
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        goto LABEL_24;
      }

      v20 = 56;
      do
      {
        v21 = &v16[v20];
        *v21 = 0;
        *(v21 + 1) = 0;
        v20 += 64;
        --v17;
      }

      while (v17);
      *(v4 + 112) = v16;
LABEL_22:
      v16 = *(v4 + 136);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_28;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_24:
      v22 = 0;
      v23 = v16 + 64;
      while (v22 < *(v16 + 2))
      {
        ++v22;
        static ViewDimensions.invalidValue.getter();
        *(v23 - 2) = v30;
        *(v23 - 1) = v31;
        *v23 = v32;
        *(v23 + 1) = v33;

        *(v23 + 7) = 0;
        *(v23 + 8) = 0;
        v23 += 104;
        if (v17 == v22)
        {
          *(v4 + 136) = v16;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_38:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    __break(1u);
LABEL_40:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    goto LABEL_18;
  }

LABEL_28:
  *(v4 + 72) = a1;
  *(v4 + 80) = a2 & 1;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4 & 1;
  static ProposedViewSize.unspecified.getter();
  if (static ProposedViewSize.== infix(_:_:)())
  {
    v24 = *(*(v4 + 136) + 16);
    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v26 = static ProposedViewSize.unspecified.getter();
        GridLayout.Cache.resize(at:proposal:)(i, v26, v27 & 1, v29, v28 & 1);
      }
    }
  }

  else
  {
    GridLayout.Cache.sizeGenerally()();
  }

  GridLayout.Cache.finalizeSizes()();
  GridLayout.Cache.applyAlignment(in:)(0);
  GridLayout.Cache.applyAlignment(in:)(1);
  assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(v4 + 104);

  return assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(v4 + 112);
}

void GridLayout.Cache.sizeGenerally()()
{
  v1 = v0;
  v201 = *(v0 + 80);
  LOBYTE(v0) = v201 ^ 1;
  v248[0] = v201 ^ 1;
  if ((*(v1 + 96) & 1) == 0)
  {
    LOBYTE(v0) = v0 | 2;
    v248[0] = v0;
  }

  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI11GeneralItem33_69F00159ECCD7162D5EDC19B53BBB085LLVs5NeverOTg503_s7d42UI10GridLayoutV5CacheV13sizeGenerally33_69hijklm9LLyyFAA11fG12AGLLVSiXEfU_AG0qR0V0T0VAG4AxisO3SetVTf1cn_n(0, *(*(v1 + 136) + 16), v1, v248);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_336;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    v207 = v2 + 32;
    *&v238 = v2 + 32;
    *(&v238 + 1) = v3;
    specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v238);
    v206 = *(v2 + 16);
    if (!v206)
    {
      break;
    }

    v200 = v0;
    v4 = 0;
    v196 = v2 + 40;
    v205 = v2;
    v5 = *(v2 + 16);
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
        return;
      }

      if (v4 >= v5)
      {
        break;
      }

      v6 = *(v196 + (v4 << 6));
      v204 = 1;
      v7 = v4;
      do
      {
        if (v7 >= *(v2 + 16))
        {
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v8 = v207 + (v7 << 6);
        if (*(v8 + 8) != v6)
        {
          goto LABEL_64;
        }

        v9 = *v8;
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_308;
        }

        v10 = *(v1 + 136);
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_309;
        }

        v11 = (v10 + 104 * v9);
        v12 = v11[8];
        v13 = v11[10];
        if (v13 < v12)
        {
          goto LABEL_310;
        }

        v14 = v11[9];
        v15 = v11[11];
        if (v13 == v12)
        {
          goto LABEL_40;
        }

        if (v15 < v14)
        {
          goto LABEL_327;
        }

        if (__OFSUB__(v15, v14))
        {
          goto LABEL_328;
        }

        v0 = *(v1 + 104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        }

        v16 = (v13 ^ v12) >= 0;
        if (v12 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = -v12;
        }

        if (v13 >= 0)
        {
          v18 = v13;
        }

        else
        {
          v18 = -v13;
        }

        v19 = v13 - v12;
        if (!__OFSUB__(v13, v12))
        {
          v16 = 0;
        }

        v20 = v19;
        v21 = (v18 + v17);
        if ((v13 ^ v12) < 0)
        {
          v20 = -v21;
        }

        v22 = (v0 + (v12 << 6) + 92);
        v23 = v12;
        do
        {
          if (v23 >= v13)
          {
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
            goto LABEL_281;
          }

          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_289;
          }

          v24 = *(v0 + 16);
          if (v24 <= v23)
          {
            goto LABEL_290;
          }

          *(v22 - 1) += v15 - v14;
          if (v16)
          {
            goto LABEL_300;
          }

          if (v20 != v24)
          {
            ++*v22;
          }

          v22 += 16;
          ++v23;
          --v19;
        }

        while (v19);
        *(v1 + 104) = v0;
LABEL_40:
        if (v15 < v14)
        {
          goto LABEL_311;
        }

        if (v15 == v14)
        {
          goto LABEL_10;
        }

        v25 = __OFSUB__(v13, v12);
        v26 = v13 - v12;
        if (v25)
        {
          goto LABEL_329;
        }

        v0 = *(v1 + 112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        }

        v27 = (v15 ^ v14) >= 0;
        if (v14 >= 0)
        {
          v28 = v14;
        }

        else
        {
          v28 = -v14;
        }

        if (v15 >= 0)
        {
          v29 = v15;
        }

        else
        {
          v29 = -v15;
        }

        v30 = v15 - v14;
        if (!__OFSUB__(v15, v14))
        {
          v27 = 0;
        }

        v31 = v30;
        v32 = (v29 + v28);
        if ((v15 ^ v14) < 0)
        {
          v31 = -v32;
        }

        v33 = (v0 + (v14 << 6) + 92);
        v34 = v14;
        do
        {
          if (v34 >= v15)
          {
            goto LABEL_291;
          }

          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_292;
          }

          v35 = *(v0 + 16);
          if (v35 <= v34)
          {
            goto LABEL_293;
          }

          *(v33 - 1) += v26;
          if (v27)
          {
            goto LABEL_301;
          }

          if (v31 != v35)
          {
            ++*v33;
          }

          v33 += 16;
          ++v34;
          --v30;
        }

        while (v30);
        *(v1 + 112) = v0;
LABEL_10:
        ++v7;
        v5 = v206;
        v204 = v7 < v206;
      }

      while (v7 != v206);
      v7 = v206;
LABEL_98:
      if ((*(v1 + 80) & 1) == 0)
      {
        v0 = *(v1 + 104);
        v53 = *(v0 + 16);
        v54 = 0.0;
        if (v53)
        {
          v55 = (v0 + 72);
          v56 = 0.0;
          v57 = *(v0 + 16);
          do
          {
            v58 = *(v55 - 1);
            if (v58 <= *v55)
            {
              v58 = *v55;
            }

            v56 = v56 + *(v55 - 5) + v58;
            v55 += 8;
            --v57;
          }

          while (v57);
        }

        else
        {
          v56 = 0.0;
        }

        v59 = *(v1 + 120);
        v60 = *(v59 + 16);
        if (v60)
        {
          v61 = (v59 + 40);
          v54 = 0.0;
          do
          {
            v62 = *v61;
            v61 += 3;
            v54 = v54 + v62;
            --v60;
          }

          while (v60);
        }

        v63 = *(v1 + 112);
        v64 = *(v63 + 16);
        if (v64)
        {
          if (v64 > 7)
          {
            v65 = v64 & 0x7FFFFFFFFFFFFFF8;
            v68 = (v63 + 280);
            v69 = 0uLL;
            v70 = v64 & 0x7FFFFFFFFFFFFFF8;
            v71 = 0uLL;
            do
            {
              v72.i32[0] = *(v68 - 48);
              v72.i32[1] = *(v68 - 32);
              v72.i32[2] = *(v68 - 16);
              v72.i32[3] = *v68;
              v73.i32[0] = v68[16];
              v73.i32[1] = v68[32];
              v73.i32[2] = v68[48];
              v73.i32[3] = v68[64];
              v69 = vmaxq_s32(v72, v69);
              v71 = vmaxq_s32(v73, v71);
              v68 += 128;
              v70 -= 8;
            }

            while (v70);
            v66 = vmaxvq_s32(vmaxq_s32(v69, v71));
            if (v64 != v65)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v65 = 0;
            v66 = 0;
LABEL_116:
            v74 = v64 - v65;
            v75 = (v63 + (v65 << 6) + 88);
            do
            {
              v77 = *v75;
              v75 += 16;
              v76 = v77;
              if (v77 > v66)
              {
                v66 = v76;
              }

              --v74;
            }

            while (v74);
          }

          v67 = v66;
        }

        else
        {
          v67 = 0.0;
        }

        v78 = (*(v1 + 72) - v56 - v54) / v67;
        v79 = v78 < 0.0 ? 0.0 : v78;
        if (v53)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v53 == 1)
            {
              goto LABEL_127;
            }

LABEL_129:
            v80 = v53 & 0x7FFFFFFFFFFFFFFELL;
            v81 = (v0 + 144);
            v82 = v53 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              *(v81 - 8) = v79;
              *v81 = v79;
              v81 += 16;
              v82 -= 2;
            }

            while (v82);
            if (v53 != v80)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
            if (v53 != 1)
            {
              goto LABEL_129;
            }

LABEL_127:
            v80 = 0;
LABEL_132:
            v83 = (v0 + (v80 << 6) + 80);
            v84 = v53 - v80;
            do
            {
              *v83 = v79;
              v83 += 8;
              --v84;
            }

            while (v84);
          }

          *(v1 + 104) = v0;
        }
      }

      if ((*(v1 + 96) & 1) == 0)
      {
        v0 = *(v1 + 112);
        v85 = *(v0 + 16);
        v86 = 0.0;
        if (v85)
        {
          v87 = (v0 + 72);
          v88 = 0.0;
          v89 = *(v0 + 16);
          do
          {
            v90 = *(v87 - 1);
            if (v90 <= *v87)
            {
              v90 = *v87;
            }

            v88 = v88 + *(v87 - 5) + v90;
            v87 += 8;
            --v89;
          }

          while (v89);
        }

        else
        {
          v88 = 0.0;
        }

        v91 = *(v1 + 128);
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = (v91 + 40);
          v86 = 0.0;
          do
          {
            v94 = *v93;
            v93 += 3;
            v86 = v86 + v94;
            --v92;
          }

          while (v92);
        }

        v95 = *(v1 + 104);
        v96 = *(v95 + 16);
        if (v96)
        {
          if (v96 > 7)
          {
            v97 = v96 & 0x7FFFFFFFFFFFFFF8;
            v100 = (v95 + 280);
            v101 = 0uLL;
            v102 = v96 & 0x7FFFFFFFFFFFFFF8;
            v103 = 0uLL;
            do
            {
              v104.i32[0] = *(v100 - 48);
              v104.i32[1] = *(v100 - 32);
              v104.i32[2] = *(v100 - 16);
              v104.i32[3] = *v100;
              v105.i32[0] = v100[16];
              v105.i32[1] = v100[32];
              v105.i32[2] = v100[48];
              v105.i32[3] = v100[64];
              v101 = vmaxq_s32(v104, v101);
              v103 = vmaxq_s32(v105, v103);
              v100 += 128;
              v102 -= 8;
            }

            while (v102);
            v98 = vmaxvq_s32(vmaxq_s32(v101, v103));
            if (v96 != v97)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v97 = 0;
            v98 = 0;
LABEL_153:
            v106 = v96 - v97;
            v107 = (v95 + (v97 << 6) + 88);
            do
            {
              v109 = *v107;
              v107 += 16;
              v108 = v109;
              if (v109 > v98)
              {
                v98 = v108;
              }

              --v106;
            }

            while (v106);
          }

          v99 = v98;
        }

        else
        {
          v99 = 0.0;
        }

        v110 = (*(v1 + 88) - v88 - v86) / v99;
        v111 = v110 < 0.0 ? 0.0 : v110;
        if (v85)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v85 == 1)
            {
              goto LABEL_164;
            }

LABEL_166:
            v112 = v85 & 0x7FFFFFFFFFFFFFFELL;
            v113 = (v0 + 144);
            v114 = v85 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              *(v113 - 8) = v111;
              *v113 = v111;
              v113 += 16;
              v114 -= 2;
            }

            while (v114);
            if (v85 != v112)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
            if (v85 != 1)
            {
              goto LABEL_166;
            }

LABEL_164:
            v112 = 0;
LABEL_169:
            v115 = (v0 + (v112 << 6) + 80);
            v116 = v85 - v112;
            do
            {
              *v115 = v111;
              v115 += 8;
              --v116;
            }

            while (v116);
          }

          *(v1 + 112) = v0;
        }
      }

      if (v7 < v4)
      {
        goto LABEL_340;
      }

      if (v4 != v7)
      {
        v124 = v4;
        do
        {
          if (v124 >= v7)
          {
            goto LABEL_332;
          }

          v125 = *(v2 + 16);
          if (v4 < v124)
          {
            if (v124 >= v125)
            {
              goto LABEL_339;
            }

            v126 = v207 + (v124 << 6);
            v127 = *(v126 + 8);
            v128 = v207 + (v4 << 6);
            v129 = *(v128 + 8);
            if (v127 == v129)
            {
              v130 = *(v126 + 32);
              v131 = *(v128 + 32);
              v132 = v130 < v131;
              if (v130 == v131)
              {
                v133 = *(v126 + 40);
                v134 = *(v128 + 40);
                v132 = v133 < v134;
                if (v133 == v134)
                {
                  v135 = *(v126 + 48);
                  v136 = *(v128 + 48);
                  v132 = v135 < v136;
                  if (v135 == v136)
                  {
                    if (*(v126 + 56) > *(v128 + 56))
                    {
                      goto LABEL_209;
                    }

                    goto LABEL_202;
                  }
                }
              }
            }

            else
            {
              v132 = v129 < v127;
            }

            if (!v132)
            {
              while (1)
              {
LABEL_209:
                if (v4 >= *(v2 + 16))
                {
                  __break(1u);
LABEL_303:
                  __break(1u);
LABEL_304:
                  __break(1u);
LABEL_305:
                  __break(1u);
LABEL_306:
                  __break(1u);
                  goto LABEL_307;
                }

                v151 = *(v207 + (v4 << 6));
                if ((v151 & 0x8000000000000000) != 0)
                {
                  goto LABEL_303;
                }

                v152 = *(v1 + 136);
                if (v151 >= *(v152 + 16))
                {
                  goto LABEL_304;
                }

                v153 = (v152 + 104 * v151);
                v154 = v153[8];
                v155 = v153[10];
                if (v155 < v154)
                {
                  goto LABEL_305;
                }

                v156 = v153[9];
                v157 = v153[11];
                if (v155 != v154)
                {
                  break;
                }

LABEL_224:
                if (((v155 ^ v154) & 0x80000000) != 0)
                {
                  if (v154 >= 0)
                  {
                    v162 = v154;
                  }

                  else
                  {
                    v162 = -v154;
                  }

                  if (v155 >= 0)
                  {
                    v163 = v155;
                  }

                  else
                  {
                    v163 = -v155;
                  }

                  v164 = __CFADD__(v162, v163);
                  v161 = (v162 + v163);
                  if (v164)
                  {
                    goto LABEL_330;
                  }

                  if (v154 >= 0)
                  {
                    v161 = -v161;
                  }
                }

                else
                {
                  LODWORD(v161) = v155 - v154;
                  if (__OFSUB__(v155, v154))
                  {
                    goto LABEL_318;
                  }

                  v161 = v161;
                }

                v0 = *(v1 + 104);
                if (v161 != *(v0 + 16))
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if ((v154 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }
                  }

                  else
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                    if ((v154 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }
                  }

                  if (*(v0 + 16) <= v154)
                  {
                    goto LABEL_323;
                  }

                  v165 = v0 + (v154 << 6);
                  --*(v165 + 92);
                  *(v1 + 104) = v0;
                  if (!*(v165 + 92))
                  {
                    LOBYTE(v0) = v1;
                    GridLayout.Cache.reassignAvailability(in:at:)(0, v154);
                  }
                }

                if (v157 < v156)
                {
                  goto LABEL_306;
                }

                if (v157 != v156)
                {
                  v25 = __OFSUB__(v155, v154);
                  v166 = v155 - v154;
                  if (v25)
                  {
                    goto LABEL_324;
                  }

                  v0 = *(v1 + 112);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                  }

                  v167 = (v156 << 6) + 88;
                  v168 = v157 - v156;
                  v169 = v156;
                  while (v169 < v157)
                  {
                    if ((v156 & 0x80000000) != 0)
                    {
                      goto LABEL_286;
                    }

                    if (*(v0 + 16) <= v169)
                    {
                      goto LABEL_287;
                    }

                    *(v0 + v167) -= v166;
                    v167 += 64;
                    v169 = (v169 + 1);
                    if (!--v168)
                    {
                      *(v1 + 112) = v0;
                      goto LABEL_253;
                    }
                  }

                  goto LABEL_285;
                }

LABEL_253:
                if (((v157 ^ v156) & 0x80000000) != 0)
                {
                  if (v156 >= 0)
                  {
                    v171 = v156;
                  }

                  else
                  {
                    v171 = -v156;
                  }

                  if (v157 >= 0)
                  {
                    v172 = v157;
                  }

                  else
                  {
                    v172 = -v157;
                  }

                  v164 = __CFADD__(v171, v172);
                  v170 = (v171 + v172);
                  if (v164)
                  {
                    goto LABEL_331;
                  }

                  if (v156 >= 0)
                  {
                    v170 = -v170;
                  }
                }

                else
                {
                  LODWORD(v170) = v157 - v156;
                  if (__OFSUB__(v157, v156))
                  {
                    goto LABEL_319;
                  }

                  v170 = v170;
                }

                v0 = *(v1 + 112);
                if (v170 != *(v0 + 16))
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if ((v156 & 0x80000000) != 0)
                    {
                      goto LABEL_325;
                    }
                  }

                  else
                  {
                    v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                    if ((v156 & 0x80000000) != 0)
                    {
                      goto LABEL_325;
                    }
                  }

                  if (*(v0 + 16) <= v156)
                  {
                    goto LABEL_326;
                  }

                  v173 = v0 + (v156 << 6);
                  --*(v173 + 92);
                  *(v1 + 112) = v0;
                  if (!*(v173 + 92))
                  {
                    LOBYTE(v0) = v1;
                    GridLayout.Cache.reassignAvailability(in:at:)(1, v156);
                  }
                }

                if (++v4 >= v124)
                {
                  if (v124 < *(v2 + 16))
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_333;
                }
              }

              if (v157 < v156)
              {
                goto LABEL_320;
              }

              v2 = (v157 - v156);
              if (!__OFSUB__(v157, v156))
              {
                v0 = *(v1 + 104);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
                }

                v158 = (v154 << 6) + 88;
                v159 = v155 - v154;
                v160 = v154;
                while (v160 < v155)
                {
                  if ((v154 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }

                  if (*(v0 + 16) <= v160)
                  {
                    goto LABEL_284;
                  }

                  *(v0 + v158) -= v2;
                  v158 += 64;
                  v160 = (v160 + 1);
                  if (!--v159)
                  {
                    *(v1 + 104) = v0;
                    v2 = v205;
                    goto LABEL_224;
                  }
                }

                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

              goto LABEL_321;
            }
          }

LABEL_202:
          if (v124 >= v125)
          {
            goto LABEL_333;
          }

LABEL_203:
          v137 = *(v207 + (v124 << 6));
          if ((v137 & 0x8000000000000000) != 0)
          {
            goto LABEL_334;
          }

          v138 = *(v1 + 136);
          if (v137 >= *(v138 + 16))
          {
            goto LABEL_335;
          }

          v139 = v138 + 104 * v137;
          v140 = *(v139 + 32);
          v141 = *(v139 + 36);
          v142 = *(v139 + 40);
          v143 = *(v139 + 44);
          v144 = *(v139 + 112);
          v145 = static ProposedViewSize.unspecified.getter();
          v149 = v147;
          v202 = v141;
          if (v201)
          {
            v150 = v145;
            if ((v200 & 2) != 0)
            {
              goto LABEL_276;
            }
          }

          else
          {
            v174 = *(v1 + 112);
            v175 = *(v1 + 80);
            v234 = *(v1 + 96);
            v235 = v174;
            v176 = *(v1 + 112);
            v236 = *(v1 + 128);
            v177 = *(v1 + 48);
            v178 = *(v1 + 16);
            v230 = *(v1 + 32);
            v231 = v177;
            v179 = *(v1 + 48);
            v180 = *(v1 + 80);
            v232 = *(v1 + 64);
            v233 = v180;
            v181 = *(v1 + 16);
            v228 = *v1;
            v229 = v181;
            v220 = v234;
            v222 = v176;
            v224 = *(v1 + 128);
            v212 = v230;
            v214 = v179;
            v216 = v232;
            v218 = v175;
            v237 = *(v1 + 144);
            v226 = *(v1 + 144);
            v208 = v228;
            v210 = v178;
            v198 = v147;
            v197 = v148;
            outlined init with copy of GridLayout.Cache(&v228, &v238);
            GridLayout.Cache.proposal(for:in:includeAvailable:)(0, v140 | (v141 << 32), v142 | (v143 << 32), (v144 & 1) == 0);
            v183 = v182;
            v244 = v220;
            v245 = v222;
            v246 = v224;
            v247 = v226;
            v240 = v212;
            v241 = v214;
            v242 = v216;
            v243 = v218;
            v238 = v208;
            v239 = v210;
            outlined destroy of GridLayout.Cache(&v238);
            v148 = v197;
            v149 = v198;
            v146 = 0;
            v150 = v183;
            if ((v200 & 2) != 0)
            {
LABEL_276:
              v184 = *(v1 + 112);
              v185 = *(v1 + 80);
              v234 = *(v1 + 96);
              v235 = v184;
              v186 = *(v1 + 112);
              v236 = *(v1 + 128);
              v187 = *(v1 + 48);
              v188 = *(v1 + 16);
              v230 = *(v1 + 32);
              v231 = v187;
              v189 = *(v1 + 48);
              v190 = *(v1 + 80);
              v232 = *(v1 + 64);
              v233 = v190;
              v191 = *(v1 + 16);
              v228 = *v1;
              v229 = v191;
              v221 = v234;
              v223 = v186;
              v225 = *(v1 + 128);
              v213 = v230;
              v215 = v189;
              v217 = v232;
              v219 = v185;
              v237 = *(v1 + 144);
              v227 = *(v1 + 144);
              v192 = (v144 & 2) == 0;
              v209 = v228;
              v211 = v188;
              v199 = v146;
              v193 = v150;
              outlined init with copy of GridLayout.Cache(&v228, &v238);
              GridLayout.Cache.proposal(for:in:includeAvailable:)(1, v140 | (v202 << 32), v142 | (v143 << 32), v192);
              v195 = v194;
              v244 = v221;
              v245 = v223;
              v246 = v225;
              v247 = v227;
              v240 = v213;
              v241 = v215;
              v242 = v217;
              v243 = v219;
              v238 = v209;
              v239 = v211;
              outlined destroy of GridLayout.Cache(&v238);
              v146 = v199;
              v150 = v193;
              v148 = 0;
              v149 = v195;
            }
          }

          ++v124;
          LOBYTE(v238) = v146 & 1;
          LOBYTE(v228) = v148 & 1;
          LOBYTE(v0) = v1;
          GridLayout.Cache.resize(at:proposal:)(v137, v150, v146 & 1, v149, v148 & 1);
          v2 = v205;
        }

        while (v124 != v7);
      }

      v117 = *(v1 + 104);
      v118 = *(v117 + 2);
      if (v118)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v117);
        }

        v119 = 72;
        do
        {
          v120 = &v117[v119];
          *v120 = 0;
          *(v120 + 1) = 0;
          *(v120 + 2) = 0;
          v119 += 64;
          --v118;
        }

        while (v118);
        *(v1 + 104) = v117;
      }

      v0 = *(v1 + 112);
      v121 = *(v0 + 16);
      if (v121)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        }

        v122 = 72;
        do
        {
          v123 = (v0 + v122);
          *v123 = 0;
          v123[1] = 0;
          v123[2] = 0;
          v122 += 64;
          --v121;
        }

        while (v121);
        *(v1 + 112) = v0;
      }

      v4 = v7;
      v5 = v206;
      if (!v204)
      {
        goto LABEL_281;
      }
    }

    v204 = 0;
    v7 = v4;
LABEL_64:
    if (v5 < v7)
    {
      goto LABEL_338;
    }

    if (v7 == v5)
    {
      goto LABEL_98;
    }

    v203 = *(v1 + 136);
    v36 = v7;
    while (v36 < v5)
    {
      if (v36 >= *(v2 + 16))
      {
        goto LABEL_313;
      }

      v37 = v207 + (v36 << 6);
      v38 = *v37;
      if ((*v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_314;
      }

      if (v38 >= *(v203 + 16))
      {
        goto LABEL_315;
      }

      v39 = (v203 + 32 + 104 * v38);
      v2 = *v39;
      v40 = v39[2];
      if (v40 < v2)
      {
        goto LABEL_316;
      }

      v41 = *(v37 + 24);
      v42 = v39[1];
      v43 = v39[3];
      if (v40 == v2)
      {
        v5 = v206;
      }

      else
      {
        v44 = *(v37 + 16);
        v0 = *(v1 + 104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        }

        v45 = v44 / (v40 - v2);
        v46 = (v2 << 6) + 72;
        v47 = v40 - v2;
        v48 = v2;
        v5 = v206;
        do
        {
          if (v48 >= v40)
          {
            goto LABEL_294;
          }

          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_295;
          }

          if (*(v0 + 16) <= v48)
          {
            goto LABEL_296;
          }

          if (v45 < *(v0 + v46))
          {
            *(v0 + v46) = v45;
          }

          v46 += 64;
          ++v48;
          --v47;
        }

        while (v47);
        *(v1 + 104) = v0;
      }

      v2 = v205;
      if (v43 < v42)
      {
        goto LABEL_317;
      }

      if (v43 != v42)
      {
        v0 = *(v1 + 112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        }

        v49 = v41 / (v43 - v42);
        v50 = (v42 << 6) + 72;
        v51 = v43 - v42;
        v52 = v42;
        do
        {
          if (v52 >= v43)
          {
            goto LABEL_297;
          }

          if ((v42 & 0x80000000) != 0)
          {
            goto LABEL_298;
          }

          if (*(v0 + 16) <= v52)
          {
            goto LABEL_299;
          }

          if (v49 < *(v0 + v50))
          {
            *(v0 + v50) = v49;
          }

          v50 += 64;
          ++v52;
          --v51;
        }

        while (v51);
        *(v1 + 112) = v0;
      }

      if (++v36 == v5)
      {
        goto LABEL_98;
      }
    }

LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

LABEL_281:
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI11GeneralItem33_69F00159ECCD7162D5EDC19B53BBB085LLVs5NeverOTg503_s7d42UI10GridLayoutV5CacheV13sizeGenerally33_69hijklm9LLyyFAA11fG12AGLLVSiXEfU_AG0qR0V0T0VAG4AxisO3SetVTf1cn_n(char *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v36 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_33;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v39 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if (a2 < v36 || v4 < 0)
  {
    goto LABEL_34;
  }

  v5 = v39;
  v38 = 104 * v36 + 112;
  v33 = a3;
  v34 = a2 - 1;
  for (i = v36; ; ++i)
  {
    result = LayoutSubviews.subscript.getter();
    if (v36 < 0)
    {
      break;
    }

    v9 = *(a3 + 136);
    if (i >= *(v9 + 16))
    {
      goto LABEL_32;
    }

    v10 = *a4;
    v37 = *(v9 + v38);
    LayoutProxy.layoutPriority.getter();
    v12 = v11;
    static ProposedViewSize.zero.getter();
    LayoutSubview.sizeThatFits(_:)();
    v14 = v13;
    v16 = v15;
    static ProposedViewSize.infinity.getter();
    LayoutSubview.sizeThatFits(_:)();
    if (v10 == 1)
    {
      v28 = v14;
      goto LABEL_23;
    }

    if (v10 != 3)
    {
      v17 = v18;
      v28 = v16;
LABEL_23:
      v20 = v17 - v28;
      v29 = fabs(v17 - v28);
      v26 = -v28;
      v27 = 0.0;
      if (v29 >= 0x7FF0000000000000)
      {
        v24 = -v28;
      }

      else
      {
        v24 = 0.0;
      }

      goto LABEL_26;
    }

    v19 = v14 + v16;
    v20 = v17 + v18 - (v14 + v16);
    v21 = fabs(v20);
    v22 = v17 - v14;
    v23 = v18 - v16;
    if (v23 < v22)
    {
      v22 = v23;
    }

    if (v21 >= 0x7FF0000000000000)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL || v21 <= 0x7FEFFFFFFFFFFFFFLL;
    v26 = -v19;
    if (v25)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = -v19;
    }

LABEL_26:
    v31 = *(v39 + 16);
    v30 = *(v39 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    }

    LODWORD(v26) = v37 & v10;
    *(v39 + 16) = v31 + 1;
    v32 = v39 + (v31 << 6);
    *(v32 + 32) = i;
    *(v32 + 40) = v12;
    *(v32 + 48) = v14;
    *(v32 + 56) = v16;
    *(v32 + 64) = v20;
    *(v32 + 72) = v24;
    *(v32 + 80) = v27;
    *(v32 + 88) = vaddlv_u8(vcnt_s8(*&v26));
    if (v34 == i)
    {
      return v5;
    }

    v38 += 104;
    a3 = v33;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t Text.accessibilityLabel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = Text.accessibilityLabel(_:)(v14, v15, v17 & 1, v19, a2, a3, v8 & 1, a5);
  outlined consume of Text.Storage(v14, v16, v18 & 1);

  return v20;
}

uint64_t Text.accessibilityLabel(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  Text.assertUnstyled(_:options:)();
  type metadata accessor for AccessibilityTextModifier();
  v12 = swift_allocObject();
  *(v12 + 16) = 1800;
  *(v12 + 18) = 2;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3 & 1;
  *(v12 + 48) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  outlined copy of Text?(a1, a2, a3 & 1, a4);
  v13 = Text.modified(with:)();

  outlined consume of Text?(a1, a2, a3 & 1, a4);
  return v13;
}

uint64_t assignWithTake for GridLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, uint64_t a7, __int128 *a8)
{
  LOBYTE(v28) = a3 & 1;
  v24[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v11 = a8[7];
  v34 = a8[6];
  v35 = v11;
  v36 = a8[8];
  v37 = *(a8 + 18);
  v12 = a8[3];
  v30 = a8[2];
  v31 = v12;
  v13 = a8[5];
  v32 = a8[4];
  v33 = v13;
  v14 = a8[1];
  v28 = *a8;
  v29 = v14;
  AlignmentKey.id.getter();
  v15 = *(&v36 + 1);
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 120) = v34;
  *(v16 + 136) = v17;
  *(v16 + 152) = v36;
  v18 = v31;
  *(v16 + 56) = v30;
  *(v16 + 72) = v18;
  v19 = v33;
  *(v16 + 88) = v32;
  *(v16 + 104) = v19;
  v20 = v29;
  *(v16 + 24) = v28;
  *(v16 + 16) = a1;
  *(v16 + 168) = v37;
  *(v16 + 40) = v20;
  v25 = v15;
  v26 = closure #1 in GridLayout.Cache.alignment(of:)partial apply;
  v27 = v16;
  outlined init with copy of GridLayout.Cache(&v28, v24);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>(0);
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v21 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a8) = v22;

  if (a8)
  {
    *&result = v21;
  }

  else
  {
    *&result = v21 + a6;
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>)
  {
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for [GridLayout.Cache.Cell], &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E62F8]);
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type [GridLayout.Cache.Cell] and conformance [A]();
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>)
  {
    type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E69E6CC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t storeEnumTagSinglePayload for _ToolbarItemList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in GridLayout.Cache.alignment(of:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *a1;
  v7 = *(a1 + 1);
  v9 = a1[11];
  v10 = a1[12];
  *&result = COERCE_DOUBLE(MEMORY[0x18D004E50](a2));
  if (v12)
  {
LABEL_12:
    *a4 = *&result;
    *(a4 + 8) = v12 & 1;
    return result;
  }

  if ((v8 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(a3 + 104);
  if (*(v13 + 16) <= v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = *(a3 + 112);
  if (*(v14 + 16) > v7)
  {
    v15 = *(v13 + (v8 << 6) + 56);
    if (v5)
    {
      v16 = v10;
    }

    else
    {
      v16 = v9;
    }

    if (v5)
    {
      v15 = *(v14 + (v7 << 6) + 56);
    }

    *&result = v16 + v15 + *&result;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v39[0]) = a2 & 1;
  LOBYTE(v30[0]) = a4 & 1;
  GridLayout.Cache.setProposal(_:)(a1, a2 & 1, a3, a4 & 1);
  v11 = *(a8 + 112);
  v12 = *(a8 + 80);
  v35 = *(a8 + 96);
  v36 = v11;
  v13 = *(a8 + 112);
  v37 = *(a8 + 128);
  v14 = *(a8 + 48);
  v15 = *(a8 + 16);
  v31 = *(a8 + 32);
  v32 = v14;
  v16 = *(a8 + 48);
  v17 = *(a8 + 80);
  v33 = *(a8 + 64);
  v34 = v17;
  v18 = *(a8 + 16);
  v30[0] = *a8;
  v30[1] = v18;
  v26 = v35;
  v27 = v13;
  v28 = *(a8 + 128);
  v22 = v31;
  v23 = v16;
  v24 = v33;
  v25 = v12;
  v38 = *(a8 + 144);
  v29 = *(a8 + 144);
  v20 = v30[0];
  v21 = v15;
  outlined init with copy of GridLayout.Cache(v30, v39);
  GridLayout.Cache.placeSubviews(at:)(__PAIR128__(*&a6, *&a5));
  v39[6] = v26;
  v39[7] = v27;
  v39[8] = v28;
  v40 = v29;
  v39[2] = v22;
  v39[3] = v23;
  v39[4] = v24;
  v39[5] = v25;
  v39[0] = v20;
  v39[1] = v21;
  return outlined destroy of GridLayout.Cache(v39);
}

Swift::Void __swiftcall GridLayout.Cache.placeSubviews(at:)(CGPoint at)
{
  v2 = v1[17];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = v1[13];
    v5 = v1[14];
    for (i = v2 + 64; ; i += 104)
    {
      v8 = *(i - 32);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      if (*(v6 + 16) <= v8)
      {
        goto LABEL_10;
      }

      v9 = *(i - 28);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      if (*(v5 + 16) <= v9)
      {
        goto LABEL_12;
      }

      v10 = v4 + 1;
      LayoutSubviews.subscript.getter();

      default argument 1 of LayoutSubview.place(at:anchor:dimensions:)();
      LayoutSubview.place(at:anchor:dimensions:)();

      v4 = v10;
      if (v3 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance GridLayout(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, uint64_t a8, __int128 *a9)
{
  LOBYTE(v29) = a3 & 1;
  v25[0] = a5 & 1;
  GridLayout.Cache.setProposal(_:)(a2, a3 & 1, a4, a5 & 1);
  v12 = a9[7];
  v35 = a9[6];
  v36 = v12;
  v37 = a9[8];
  v38 = *(a9 + 18);
  v13 = a9[3];
  v31 = a9[2];
  v32 = v13;
  v14 = a9[5];
  v33 = a9[4];
  v34 = v14;
  v15 = a9[1];
  v29 = *a9;
  v30 = v15;
  AlignmentKey.id.getter();
  v16 = *(&v37 + 1);
  v17 = swift_allocObject();
  v18 = v36;
  *(v17 + 120) = v35;
  *(v17 + 136) = v18;
  *(v17 + 152) = v37;
  v19 = v32;
  *(v17 + 56) = v31;
  *(v17 + 72) = v19;
  v20 = v34;
  *(v17 + 88) = v33;
  *(v17 + 104) = v20;
  v21 = v30;
  *(v17 + 24) = v29;
  *(v17 + 16) = a1;
  *(v17 + 168) = v38;
  *(v17 + 40) = v21;
  v26 = v16;
  v27 = closure #1 in GridLayout.Cache.alignment(of:)partial apply;
  v28 = v17;
  outlined init with copy of GridLayout.Cache(&v29, v25);
  type metadata accessor for LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?>(0);
  lazy protocol witness table accessor for type LazyMapSequence<[GridLayout.Cache.Cell], CGFloat?> and conformance LazyMapSequence<A, B>();
  v22 = COERCE_DOUBLE(static AlignmentID.combineExplicit<A>(_:)());
  LOBYTE(a9) = v23;

  if (a9)
  {
    *&result = v22;
  }

  else
  {
    *&result = v22 + a7;
  }

  return result;
}

unint64_t GridLayout.Cache.proposal(for:in:includeAvailable:)(char a1, unint64_t a2, unint64_t a3, char a4)
{
  v8 = v4[13];
  v9 = v4[14];
  v11 = v4[15];
  v10 = v4[16];
  v12 = a1 & 1;
  *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
  if (v14)
  {
    goto LABEL_64;
  }

  if (*&result == INFINITY)
  {
    return result;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v15 = v8;
  if (a3 < a2)
  {
    __break(1u);
LABEL_6:
    v15 = v9;
    a2 >>= 32;
    a3 >>= 32;
    if (a3 < a2)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v16 = v9;
  v17 = v8;
  v18 = a4;
  v19 = *(v15 + 16);
  if (v19 <= a2)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v20 = *(v15 + (a2 << 6) + 64);
  *&result = COERCE_DOUBLE(specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a2, 1, a3, a2 | (a3 << 32)));
  if ((result & 0x100000000) != 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = result;
  }

  v22 = a3 - v21;
  if (a3 < v21)
  {
    goto LABEL_59;
  }

  if (a3 != v21)
  {
    v23 = v21;
    if (v19 <= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    v25 = (v15 + (v21 << 6) + 64);
    while (v23 < a3)
    {
      if (v21 < 0)
      {
        goto LABEL_55;
      }

      if (v24 == v23)
      {
        goto LABEL_56;
      }

      v26 = *(v25 - 4);
      v27 = *v25;
      v25 += 8;
      v20 = v20 + v26 + v27;
      ++v23;
      if (!--v22)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  if (v12)
  {
    v28 = v10;
  }

  else
  {
    v28 = v11;
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + 40);
    v31 = v20;
    do
    {
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v30 += 3;
      v35 = v34;
      v37 = v32 < a2 || a3 < v33;
      v38 = v31 + v35;
      if (!v37)
      {
        v31 = v38;
      }

      --v29;
    }

    while (v29);
  }

  if (v18)
  {
    v39 = v12 ? v16 : v17;
    v40 = 0.0;
    if (a2 != a3)
    {
      if (a3 < a2)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = a2;
      v42 = *(v39 + 16);
      v43 = ~a2 + a3;
      v44 = v42 >= a2;
      v45 = v42 - a2;
      if (!v44)
      {
        v45 = 0;
      }

      if (v43 >= v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = ~a2 + a3;
      }

      if (v46 >= (a3 - a2))
      {
        goto LABEL_62;
      }

      if (v45 <= v43)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return result;
      }

      v47 = (v39 + (a2 << 6) + 80);
      do
      {
        v40 = v40 + *v47;
        if (a2 < v41)
        {
          v40 = v40 + *(v47 - 6);
        }

        ++v41;
        v47 += 8;
      }

      while (a3 != v41);
    }
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (((a3 ^ result) & 0x80000000) != 0)
  {
    if ((result & 0x80000000) == 0)
    {
      v5 = result;
    }

    else
    {
      v5 = -result;
    }

    if (a3 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = -a3;
    }

    v7 = __CFADD__(v5, v6);
    v4 = (v5 + v6);
    if (v7)
    {
      goto LABEL_33;
    }

    if ((result & 0x80000000) == 0)
    {
      v4 = -v4;
    }

    if (a2 > 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LODWORD(v4) = a3 - result;
    if (__OFSUB__(a3, result))
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = v4;
    if (a2 > 0)
    {
LABEL_4:
      if (v4 < 0 || v4 >= a2)
      {
        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v8) = 0;
      v9 = 1;
      return v8 | (v9 << 32);
    }
  }

  if (v4 <= 0 && v4 > a2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v8 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 >= a4)
  {
    if (SHIDWORD(a4) >= v8)
    {
      v9 = 0;
      return v8 | (v9 << 32);
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void GridLayout.Cache.resize(at:proposal:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a1;
  v17 = *(v6 + 136);
  if (*(v17 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_8;
  }

  v19 = v17 + 104 * a1;
  v20 = *(v19 + 32);
  v21 = *(v19 + 64);
  v43[1] = *(v19 + 48);
  v44 = v21;
  v43[0] = v20;
  v22 = *(v19 + 80);
  v23 = *(v19 + 96);
  v24 = *(v19 + 112);
  v48 = *(v19 + 128);
  v46 = v23;
  v47 = v24;
  v45 = v22;
  v41 = v44;
  v42 = v22;
  v37 = v17;
  outlined init with copy of GridLayout.Cache.Cell(v43, &v38);
  ViewSize.proposal.getter();
  ProposedViewSize.init(_:)();
  outlined destroy of GridLayout.Cache.Cell(v43);
  v26 = a3 & 1;
  LOBYTE(v38) = v26;
  LOBYTE(v41) = a5 & 1;
  if (static ProposedViewSize.== infix(_:_:)())
  {
    return;
  }

  v5 = v6;
  v27 = *(v6 + 56);
  v28 = *(v6 + 64);
  v29 = *(v6 + 65);
  LODWORD(v41) = *(v6 + 48);
  *(&v41 + 1) = v27;
  LOBYTE(v42) = v28;
  BYTE1(v42) = v29;
  LayoutSubviews.subscript.getter();
  LOBYTE(v38) = v26;
  v30 = LayoutSubview.dimensions(in:)();
  v10 = *(&v38 + 1);
  v9 = v38;
  v14 = *(&v39 + 1);
  v13 = v39;
  v16 = *(&v40 + 1);
  v15 = v40;
  v38 = v39;
  v39 = v40;
  v31 = MEMORY[0x18D00B390](v30);
  v8 = v37;
  if (*(v37 + 16) <= v7)
  {
    goto LABEL_16;
  }

  v12 = v32;
  v11 = v33;
  v38 = *(v19 + 64);
  v39 = *(v19 + 80);
  if (MEMORY[0x18D00B390](v31) == v32 && v34 == v11)
  {
    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (*(v8 + 2) <= v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v35 = &v8[104 * v7];
  v35[6] = v9;
  v35[7] = v10;
  v35[8] = v13;
  v35[9] = v14;
  v35[10] = v15;
  v35[11] = v16;

  *(v5 + 136) = v8;
  if (*(v8 + 2) <= v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  GridLayout.Cache.resize(axis:size:in:)(0, v35[4], v35[5], v12);
  v36 = *(v5 + 136);
  if (*(v36 + 16) <= v7)
  {
LABEL_20:
    __break(1u);
    return;
  }

  GridLayout.Cache.resize(axis:size:in:)(1, *(v36 + 104 * v7 + 32), *(v36 + 104 * v7 + 40), v11);
LABEL_12:
}

uint64_t outlined init with copy of GridLayout.Cache.Cell(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);

  return a2;
}

uint64_t GridLayout.Cache.resize(axis:size:in:)(uint64_t result, unint64_t a2, unint64_t a3, double a4)
{
  v10 = a4;
  v11 = a3;
  if ((result & 1) == 0)
  {
    LODWORD(v12) = a2;
    LODWORD(v13) = a3;
    if (a3 >= a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  if (SHIDWORD(a3) < SHIDWORD(a2))
  {
    goto LABEL_90;
  }

LABEL_5:
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_89;
  }

  v4 = (result & 1);
  if (v13 - v12 != 1)
  {
    v7 = *(v5 + 15);
    v8 = *(v5 + 16);
    if (result)
    {
      if (SHIDWORD(a3) < SHIDWORD(a2))
      {
        goto LABEL_97;
      }

      v26 = v5 + 112;
      a2 >>= 32;
      v11 = HIDWORD(a3);
    }

    else
    {
      if (a3 < a2)
      {
        goto LABEL_96;
      }

      v26 = v5 + 104;
    }

    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v27 = *v26;
    v6 = a2;
    v28 = *(*v26 + 16);
    if (v28 <= a2)
    {
      goto LABEL_94;
    }

    v9 = *(v27 + (a2 << 6) + 64);
    result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a2, 1, v11, a2 | (v11 << 32));
    if ((result & 0x100000000) != 0)
    {
      v29 = v11;
    }

    else
    {
      v29 = result;
    }

    v30 = v11 - v29;
    if (v11 < v29)
    {
      goto LABEL_95;
    }

    if (v11 != v29)
    {
      v31 = v29;
      if (v28 <= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = v28;
      }

      v33 = (v27 + (v29 << 6) + 64);
      while (v31 < v11)
      {
        if (v29 < 0)
        {
          goto LABEL_85;
        }

        if (v32 == v31)
        {
          goto LABEL_86;
        }

        v34 = *(v33 - 4);
        v35 = *v33;
        v33 += 8;
        v9 = v9 + v34 + v35;
        ++v31;
        if (!--v30)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_50:
    if (v4)
    {
      v36 = v8;
    }

    else
    {
      v36 = v7;
    }

    v37 = v36[2];
    if (v37)
    {
      v38 = v36 + 5;
      do
      {
        v39 = *(v38 - 2);
        v40 = *(v38 - 1);
        v41 = *v38;
        v38 += 3;
        v42 = v41;
        if (v39 <= v6)
        {
          v39 = v6;
        }

        if (v40 >= v11)
        {
          v40 = v11;
        }

        v43 = v9 + v42;
        if (v39 < v40)
        {
          v9 = v43;
        }

        --v37;
      }

      while (v37);
    }

    v10 = v10 - v9;
    if (v10 <= 0.0)
    {
      return result;
    }

    v4 = GridLayout.Cache.subscript.modify();
    v11 = v44;
    v5 = *v44;
    v45 = *(*v44 + 2);
    if (!v45)
    {
LABEL_70:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_71:
        v50 = *(v5 + 2);
        v49 = *(v5 + 3);
        if (v50 >= v49 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v5);
          *v11 = v5;
        }

        *(v5 + 2) = v50 + 1;
        v51 = &v5[24 * v50];
        *(v51 + 8) = v12;
        *(v51 + 9) = v13;
        *(v51 + 5) = v10;
        *(v51 + 6) = 0;
        return (v4)(v53, 0);
      }

LABEL_100:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      *v11 = v5;
      goto LABEL_71;
    }

    v46 = 0;
    v7 = 0;
    while (*&v5[v46 + 32] != v12 || *&v5[v46 + 36] != v13)
    {
      v7 = (v7 + 1);
      v46 += 24;
      if (v45 == v7)
      {
        goto LABEL_70;
      }
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v5;
    if ((v52 & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      *v11 = v5;
    }

    if (v7 < *(v5 + 2))
    {
      *&v5[v46 + 40] = v10 + *&v5[v46 + 40];
      return (v4)(v53, 0);
    }

    __break(1u);
LABEL_102:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
    *v5 = result;
LABEL_79:
    if (v7 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v11 + 24 * v7 + 40) = *(v11 + 24 * v7 + 40) - v10;
      if (v7 < *(*v5 + 16))
      {
        *(*v5 + 24 * v7 + 48) = v10 + *(*v5 + 24 * v7 + 48);
        return (v4)(v53, 0);
      }
    }

    __break(1u);
    return result;
  }

  v14 = (v5 + 104);
  if (result)
  {
    v14 = (v5 + 112);
  }

  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

  v15 = *v14;
  v8 = v12;
  if (*(v15 + 16) <= v12)
  {
    goto LABEL_92;
  }

  v9 = *(v15 + (v12 << 6) + 64);
  if (v9 < a4)
  {
    v11 = GridLayout.Cache.subscript.modify();
    v7 = v16;
    v6 = *v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v6;
    if ((v17 & 1) == 0)
    {
      goto LABEL_98;
    }

    while (*(v6 + 16) > v8)
    {
      *(v6 + (v8 << 6) + 64) = v10;
      (v11)(v53, 0);
      v6 = v53;
      v4 = GridLayout.Cache.subscript.modify();
      v11 = *v18;
      v8 = *(*v18 + 16);
      if (!v8)
      {
        return (v4)(v53, 0);
      }

      v5 = v18;
      v7 = 0;
      v10 = v10 - v9;
      while (v7 < *(v11 + 16))
      {
        v19 = v11 + 24 * v7;
        v21 = *(v19 + 32);
        v22 = *(v19 + 36);
        v20 = v19 + 32;
        if (v12 > v21)
        {
          v21 = v12;
        }

        if (v13 < v22)
        {
          v22 = v13;
        }

        if (v21 >= v22)
        {
          v7 = (v7 + 1);
          if (v7 >= v8)
          {
            return (v4)(v53, 0);
          }
        }

        else
        {
          v9 = *(v20 + 8);
          if (v10 < v9)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            *v5 = v11;
            if ((result & 1) == 0)
            {
              goto LABEL_102;
            }

            goto LABEL_79;
          }

          v23 = swift_isUniquelyReferenced_nonNull_native();
          *v5 = v11;
          if ((v23 & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            *v5 = v11;
          }

          v24 = *(v11 + 16);
          if (v7 >= v24)
          {
            goto LABEL_88;
          }

          v10 = v10 - v9;
          v25 = v24 - 1;
          memmove((v11 + 24 * v7 + 32), (v11 + 24 * v7 + 56), 24 * (v24 - 1 - v7));
          *(v11 + 16) = v25;
          *v5 = v11;
          if (v10 <= 0.0)
          {
            return (v4)(v53, 0);
          }

          if (v7 >= --v8)
          {
            return (v4)(v53, 0);
          }
        }
      }

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
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      *v7 = v6;
    }

    __break(1u);
    goto LABEL_100;
  }

  return result;
}

void (*GridLayout.Cache.subscript.modify())()
{
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

{
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t outlined destroy of SymbolEffectOptions.RepeatOption?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

float _SymbolEffect.ReplaceConfiguration.init(_:options:allowMagic:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for ReplaceSymbolEffect.ReplaceStyle();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28[-v16];
  v18 = ScaleSymbolEffect.isLayered.getter();
  v29 = (v18 == 2) | v18 & 1;
  SymbolEffectOptions.speed.getter();
  v20 = v19;
  BreatheSymbolEffect.style.getter();
  v21 = type metadata accessor for SymbolEffectOptions();
  (*(*(v21 - 8) + 8))(a2, v21);
  v22 = type metadata accessor for ReplaceSymbolEffect();
  (*(*(v22 - 8) + 8))(a1, v22);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of SymbolEffectOptions.RepeatOption?(v10, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
LABEL_3:
    v23 = 0;
    goto LABEL_10;
  }

  v24 = *(v12 + 32);
  v24(v17, v10, v11);
  v24(v14, v17, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == *MEMORY[0x1E6982160])
  {
    v23 = 2;
  }

  else if (v25 == *MEMORY[0x1E6982150])
  {
    v23 = 3;
  }

  else
  {
    if (v25 != *MEMORY[0x1E6982158])
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_3;
    }

    v23 = 4;
  }

LABEL_10:
  if ((a3 & 1) == 0)
  {
    v23 |= 0xE0u;
  }

  v26 = v29;
  *a4 = v23;
  result = v20;
  *(a4 + 4) = v26;
  *(a4 + 8) = result;
  return result;
}

uint64_t GridLayout.Cache.reassignAvailability(in:at:)(uint64_t result, unint64_t *a2)
{
  v9 = a2;
  v10 = v2 + 104;
  if (result)
  {
    v10 = v2 + 112;
  }

  v11 = *v10;
  v12 = *(*v10 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v14 = (v11 + 92);
    v15 = v12;
    v16 = 0;
    do
    {
      v17 = *v14;
      v14 += 16;
      v18 = v17 != 0;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      --v15;
    }

    while (v15);
    if (v16 > 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        goto LABEL_66;
      }

      v6 = a2;
      if (v12 <= a2)
      {
        goto LABEL_67;
      }

      v20 = v13 + (a2 << 6);
      v7 = *(v20 + 48);
      v8 = *(v20 + 32);
      v48 = result & 1;
      v3 = GridLayout.Cache.subscript.modify();
      v5 = v21;
      v4 = *v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v4;
      if ((result & 1) == 0)
      {
        goto LABEL_68;
      }

      while (*(v4 + 16) > v6)
      {
        v42 = v16;
        v7 = v7 - v8;
        *(v4 + (v6 << 6) + 80) = *(v4 + (v6 << 6) + 80) - v7;
        (v3)(v49, 0);
        v22 = v2 + 120;
        v23 = v48;
        if (v48)
        {
          v22 = v2 + 128;
        }

        result = *v22;
        v16 = *(*v22 + 16);
        if (v16)
        {
          v5 = result + 32;

          v25 = 0;
          v45 = v24;
          v46 = v9;
          v43 = v5;
          v44 = v16;
          while (v25 < *(v24 + 16))
          {
            v26 = (v5 + 24 * v25);
            v3 = *v26;
            v4 = *(v26 + 1);
            if (v3 <= v9 && v4 > v9)
            {
              v47 = v25;
              v16 = v3;
              v28 = v4;
              if (v7 > v26[1])
              {
                v8 = v7;
              }

              else
              {
                v8 = v26[1];
              }

              v5 = v48;
              v29 = specialized Sequence.reduce<A>(_:_:)(0, v3 | (v4 << 32), v2, v48);
              if (v3 != v4)
              {
                v30 = v48;
                v31 = v8 / v29;
                v32 = v3 << 6;
                v3 = (v4 - v3);
                while (v16 < v28)
                {
                  if (v6 != v16)
                  {
                    v33 = (v2 + 104);
                    if (v30)
                    {
                      v33 = (v2 + 112);
                    }

                    if (v16 < 0)
                    {
                      goto LABEL_59;
                    }

                    v34 = *v33;
                    if (*(v34 + 16) <= v16)
                    {
                      goto LABEL_60;
                    }

                    if (*(v34 + v32 + 92))
                    {
                      v9 = v6;
                      v4 = GridLayout.Cache.subscript.modify();
                      v6 = v35;
                      v5 = *v35;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *v6 = v5;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                        *v6 = v5;
                      }

                      if (*(v5 + 16) <= v16)
                      {
                        goto LABEL_62;
                      }

                      v6 = v9;
                      *(v5 + v32 + 80) = v31 + *(v5 + v32 + 80);
                      (v4)(v49, 0);
                      v30 = v48;
                    }
                  }

                  v32 += 64;
                  ++v16;
                  v3 = (v3 - 1);
                  if (!v3)
                  {
                    goto LABEL_16;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_16:
              v7 = v7 - v8;
              v24 = v45;
              v9 = v46;
              v5 = v43;
              v16 = v44;
              v25 = v47;
            }

            if (++v25 == v16)
            {

              v23 = v48;
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          if (v23)
          {
            v9 = *(*(v2 + 112) + 16);
            if (!v9)
            {
              return result;
            }
          }

          else
          {
            v9 = *(*(v2 + 104) + 16);
            if (!v9)
            {
              return result;
            }
          }

          v4 = 0;
          v5 = 0;
          v7 = v7 / v42;
          v6 = v49;
          while (1)
          {
            v37 = (v2 + 104);
            if (v23)
            {
              v37 = (v2 + 112);
            }

            v38 = *v37;
            if (v5 >= *(v38 + 16))
            {
              break;
            }

            if (*(v38 + v4 + 92))
            {
              v39 = GridLayout.Cache.subscript.modify();
              v3 = v40;
              v16 = *v40;
              v41 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v16;
              if ((v41 & 1) == 0)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
                *v3 = v16;
              }

              if (v5 >= *(v16 + 16))
              {
                goto LABEL_65;
              }

              *(v16 + v4 + 80) = v7 + *(v16 + v4 + 80);
              result = (v39)(v49, 0);
              v23 = v48;
            }

            ++v5;
            v4 += 64;
            if (v9 == v5)
            {
              return result;
            }
          }

LABEL_63:
          __break(1u);
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
        *v5 = result;
      }

      __break(1u);
    }
  }

  return result;
}

void GridLayout.Cache.finalizeSizes()()
{
  finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()((v0 + 15), v0 + 13);
  finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()((v0 + 16), v0 + 14);
  v1 = v0[17];
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_64:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v3 = 0;
    v4 = v0[13];
    v5 = v0[14];
    do
    {
      if (v3 == v2)
      {
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
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_46;
      }

      v6 = &v1[104 * v3 + 32];
      v7 = *v6;
      v8 = *(v6 + 2);
      if (v8 < v7)
      {
        goto LABEL_47;
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      v9 = *(v4 + 16);
      if (v9 <= v7)
      {
        goto LABEL_49;
      }

      v10 = *(v6 + 1);
      v11 = *(v6 + 3);
      v12 = *(v4 + 32 + (v7 << 6) + 32);
      if (v8 != v7)
      {
        if (v7 == 0x7FFFFFFF)
        {
          goto LABEL_55;
        }

        if (v8 < v7 + 1)
        {
          goto LABEL_56;
        }

        if (v8 <= v7)
        {
          goto LABEL_53;
        }

        if (v7 + 1 != v8)
        {
          v13 = v9 + ~v7;
          v14 = v8 - v7 - 2;
          if (v13 >= v14)
          {
            v15 = v8 - v7 - 2;
          }

          else
          {
            v15 = v13;
          }

          if (v15 >= (v8 + ~v7))
          {
            goto LABEL_60;
          }

          if (v13 <= v14)
          {
            goto LABEL_61;
          }

          v16 = (v4 + 128 + (v7 << 6));
          v17 = ~v7 + v8;
          do
          {
            v18 = *(v16 - 4);
            v19 = *v16;
            v16 += 8;
            v12 = v12 + v18 + v19;
            --v17;
          }

          while (v17);
        }
      }

      if (v11 < v10)
      {
        goto LABEL_50;
      }

      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_51;
      }

      v20 = *(v5 + 16);
      if (v20 <= v10)
      {
        goto LABEL_52;
      }

      v21 = *(v5 + 32 + (v10 << 6) + 32);
      if (v11 != v10)
      {
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_57;
        }

        if (v11 < v10 + 1)
        {
          goto LABEL_58;
        }

        if (v11 <= v10)
        {
          goto LABEL_54;
        }

        if (v10 + 1 != v11)
        {
          v22 = v20 + ~v10;
          v23 = v11 - v10 - 2;
          if (v22 >= v23)
          {
            v24 = v11 - v10 - 2;
          }

          else
          {
            v24 = v22;
          }

          if (v24 >= (v11 + ~v10))
          {
            goto LABEL_62;
          }

          if (v22 <= v23)
          {
            goto LABEL_63;
          }

          v25 = (v5 + 128 + (v10 << 6));
          v26 = ~v10 + v11;
          do
          {
            v27 = *(v25 - 4);
            v28 = *v25;
            v25 += 8;
            v21 = v21 + v27 + v28;
            --v26;
          }

          while (v26);
        }
      }

      v31 = *(v6 + 2);
      v32 = *(v6 + 3);
      if (MEMORY[0x18D00B390]() != v12 || v29 != v21)
      {
        LayoutSubviews.subscript.getter();
        LOBYTE(v31) = 0;
        LayoutSubview.dimensions(in:)();
        if (v3 >= *(v1 + 2))
        {
          goto LABEL_59;
        }

        *(v6 + 1) = v31;
        *(v6 + 2) = v32;
        *(v6 + 3) = v33;
      }

      ++v3;
    }

    while (v3 != v2);
    v0[17] = v1;
  }
}

uint64_t finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *result;
  v21 = *(*result + 16);
  if (v21)
  {
    v5 = 0;
    v20 = result;
    while (v5 < *(v3 + 16))
    {
      v6 = (v3 + 32 + 24 * v5);
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = v6[1];
      result = specialized Sequence.reduce<A>(_:_:)(0, v7 | (v8 << 32), a2);
      v10 = result;
      if (!result)
      {
        result = specialized Collection.count.getter(v7 | (v8 << 32));
      }

      v11 = v7;
      if (v8 != v7)
      {
        if (v8 < v7)
        {
          goto LABEL_34;
        }

        v12 = v9 / result;
        v13 = (v7 << 6) + 64;
        v14 = v8 - v7;
        while (v11 < v8)
        {
          v15 = *a2;
          if (!v10)
          {
            goto LABEL_16;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (*(v15 + 16) <= v11)
          {
            goto LABEL_32;
          }

          if (*(v15 + v13) == 0.0)
          {
LABEL_16:
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v15 = result;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            if (*(v15 + 16) <= v11)
            {
              goto LABEL_30;
            }

            *(v15 + v13) = v12 + *(v15 + v13);
            *a2 = v15;
          }

          v13 += 64;
          ++v11;
          if (!--v14)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

LABEL_3:
      if (++v5 == v21)
      {
LABEL_22:
        v2 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v17 + 16));
    }

    else
    {
      if (*(v17 + 24) >= 2uLL)
      {
        type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Earmark>, &type metadata for GridLayout.Cache.Earmark, MEMORY[0x1E69E6F90]);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size_1(v18);
        v18[2] = 0;
        v18[3] = 2 * ((v19 - 32) / 24);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      *v2 = v18;
    }
  }

  return result;
}

void GridLayout.Cache.applyAlignment(in:)(char a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if (a1)
  {
    v4 = *(v3 + 2);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      return;
    }
  }

  v5 = a1 & 1;
  v6 = *(v71 + 136);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_147:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v7 = 0;
  v69 = 0;
  *(v71 + 136) = v6;
  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v2;
  }

  v68 = v8;
  v66 = v4;
  v67 = v8 + 32;
  v72 = v6 + 32;
  v73 = v6;
  v9 = 96;
  if (!v5)
  {
    v9 = 88;
  }

  v70 = v9;
  v64 = v3;
  v65 = v2;
  do
  {
    if (v7 == v4)
    {
      goto LABEL_130;
    }

    if (v7 >= *(v68 + 16))
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (*(v67 + (v7 << 6) + 16) == 1)
    {
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else if ((v5 & 1) == 0)
    {
LABEL_20:
      v4 = *(v3 + 2);
      if (!v4)
      {
        goto LABEL_57;
      }

      goto LABEL_21;
    }

    v4 = *(v2 + 16);
    if (!v4)
    {
LABEL_57:
      v4 = v66;
      goto LABEL_13;
    }

LABEL_21:
    v6 = 0;
    v10 = *(v71 + 144);
    v11 = INFINITY;
    v12 = -INFINITY;
    do
    {
      if (v5)
      {
        v3 = v7;
      }

      else
      {
        v3 = v6;
      }

      if (v5)
      {
        v2 = v6;
      }

      else
      {
        v2 = v7;
      }

      if (*(v10 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v2 | (v3 << 32));
        if (v19)
        {
          v20 = *(*(v10 + 56) + 8 * v18);
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v20 >= *(v73 + 2))
          {
            goto LABEL_128;
          }

          v21 = &v72[104 * v20];
          if (*v21 == v2 && *(v21 + 1) == v3)
          {
            LayoutSubviews.subscript.getter();
            v2 = 0x7FF0000000000000;
            if (v20 >= *(v73 + 2))
            {
              goto LABEL_129;
            }

            UnitPoint.subscript.getter();
            if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              ViewDimensions.subscript.getter();
              v14 = INFINITY;
              if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
              {
                v14 = v13;
              }

              if ((~*&v13 & 0x7FF0000000000000) != 0)
              {
                v15 = v13;
              }

              else
              {
                v15 = v14;
              }

              if (v11 > -v15)
              {
                v11 = -v15;
              }

              ViewSize.subscript.getter();
              v17 = v16 - v15;
              if (v12 < v17)
              {
                v12 = v17;
              }

              *&v21[v70] = -v15;
            }

            else
            {
              v69 = 1;
            }
          }
        }
      }

      ++v6;
    }

    while (v4 != v6);
    v6 = v73;
    v4 = v66;
    if (v11 > v12)
    {
LABEL_12:
      v3 = v64;
      v2 = v65;
      goto LABEL_13;
    }

    if (v7 >= *(v68 + 16))
    {
      goto LABEL_134;
    }

    v24 = *(v67 + (v7 << 6) + 32);
    AlignmentKey.fraction.getter();
    v3 = v64;
    v2 = v65;
    if (v25 == 0.0)
    {
      v26 = 0.0 - v11;
      if (v26 == 0.0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      AlignmentKey.fraction.getter();
      v26 = (v24 - (v12 - v11)) * v27 - v11;
      if (v26 == 0.0)
      {
        goto LABEL_13;
      }
    }

    if (v5)
    {
      v28 = *(v65 + 16);
      if (v28)
      {
LABEL_63:
        v29 = 0;
        v30 = *(v71 + 144);
        while (1)
        {
          if (v5)
          {
            v31 = v7;
          }

          else
          {
            v31 = v29;
          }

          if (v5)
          {
            v3 = v29;
          }

          else
          {
            v3 = v7;
          }

          if (*(v30 + 16))
          {
            v32 = specialized __RawDictionaryStorage.find<A>(_:)(v3 | (v31 << 32));
            if (v33)
            {
              v34 = *(*(v30 + 56) + 8 * v32);
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_132;
              }

              if (v34 >= *(v73 + 2))
              {
                goto LABEL_133;
              }

              v2 = &v72[104 * v34];
              if (*v2 == v3 && *(v2 + 4) == v31)
              {
                UnitPoint.subscript.getter();
                if ((v36 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                {
                  *(v2 + v70) = v26 + *(v2 + v70);
                }
              }
            }
          }

          if (v28 == ++v29)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      v28 = *(v64 + 2);
      if (v28)
      {
        goto LABEL_63;
      }
    }

LABEL_13:
    ++v7;
  }

  while (v7 != v4);
  *(v71 + 136) = v6;
  if (v69)
  {
    v37 = *(v6 + 2);
    if (v37)
    {
      v38 = 0;
      if (v5)
      {
        v39 = 96;
      }

      else
      {
        v39 = 88;
      }

      v4 = 104;
      while (v38 < *(v6 + 2))
      {
        v6 = &v72[104 * v38];
        v40 = UnitPoint.subscript.getter();
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v42 = *(v73 + 2);
          if (v38 >= v42)
          {
            goto LABEL_136;
          }

          if (v5)
          {
            v43 = *(v6 + 3);
            v44 = *(v6 + 1);
            if (v43 < v44)
            {
              goto LABEL_142;
            }

            v45 = v3;
          }

          else
          {
            v43 = *(v6 + 2);
            v44 = *v6;
            if (v43 < *v6)
            {
              goto LABEL_141;
            }

            v45 = v2;
          }

          if ((v44 & 0x80000000) != 0)
          {
            goto LABEL_137;
          }

          v46 = *(v45 + 16);
          if (v46 <= v44)
          {
            goto LABEL_138;
          }

          v47 = *(v45 + (v44 << 6) + 64);
          if ((v43 & 0x80000000) != 0 || v43 != v44)
          {
            if (v44 == 0x7FFFFFFF)
            {
              goto LABEL_143;
            }

            if (v43 <= v44)
            {
              goto LABEL_144;
            }

            ++v44;
          }

          if (v43 < v44)
          {
            goto LABEL_139;
          }

          if (v44 != v43)
          {
            v48 = v44;
            v49 = v43;
            v50 = v43 >= v44;
            v51 = v43 - v44;
            if (v50)
            {
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            v53 = ~v44 + v49;
            v54 = v46 - v44;
            if (v46 < v48)
            {
              v54 = 0;
            }

            if (v53 >= v54)
            {
              v55 = v54;
            }

            else
            {
              v55 = ~v48 + v49;
            }

            if (v55 >= v52)
            {
              goto LABEL_145;
            }

            if (v54 <= v53)
            {
              goto LABEL_146;
            }

            v56 = (v45 + (v48 << 6) + 64);
            v57 = v49 - v48;
            do
            {
              v58 = *(v56 - 4);
              v59 = *v56;
              v56 += 8;
              v47 = v47 + v58 + v59;
              --v57;
            }

            while (v57);
          }

          if (v41 == 0.0)
          {
            v60 = 0.0;
            if (v38 >= v42)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v61 = v41;
            MEMORY[0x18D00B390](v40);
            if (v5)
            {
              v62 = v63;
            }

            v60 = v61 * (v47 - v62);
            if (v38 >= *(v73 + 2))
            {
              goto LABEL_140;
            }
          }

          *&v6[v39] = v60;
        }

        ++v38;
        v6 = v73;
        if (v38 == v37)
        {
          *(v71 + 136) = v73;
          return;
        }
      }

LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }
  }
}

uint64_t assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    if (v2 > *(v1 + 16))
    {
      __break(1u);
    }

    else
    {
      v4 = (v1 + 64);
      v5 = 0.0;
      do
      {
        v6 = v5 + *(v4 - 4);
        *(v4 - 1) = v6;
        v7 = *v4;
        v4 += 8;
        v5 = v6 + v7;
        --v2;
      }

      while (v2);
      *v3 = v1;
    }
  }

  return result;
}

CGSize __swiftcall GridLayout.Cache.size()()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v2 + 16);
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = (v2 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *v6;
      v6 += 8;
      v5 = v5 + v7 + v8;
      --v3;
    }

    while (v3);
  }

  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = (v1 + 64);
    v4 = 0.0;
    do
    {
      v11 = *(v10 - 4);
      v12 = *v10;
      v10 += 8;
      v4 = v4 + v11 + v12;
      --v9;
    }

    while (v9);
  }

  result.height = v4;
  result.width = v5;
  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type [GridLayout.Cache.Cell] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A])
  {
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for [GridLayout.Cache.Cell], &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance GridLayout(uint64_t a1, int *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 65) = v11;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

void type metadata accessor for _DictionaryStorage<GridIndex, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type GridIndex and conformance GridIndex();
    v7 = a3(a1, &type metadata for GridIndex, MEMORY[0x1E69E6530], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id _UIHostingView.backgroundColor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_backgroundColor);

  return v6;
}

id @objc _UIHostingView.backgroundColor.getter(void *a1)
{
  v1 = a1;
  v5 = _UIHostingView.backgroundColor.getter(v1, v2, v3, v4);

  return v5;
}

BOOL specialized static CommandsList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v18 = *(a2 + 16);
    if (!v18)
    {
      return 1;
    }

    v12 = 0;
    v16 = *(v8 + 72);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    goto LABEL_11;
  }

  v25 = a2;
  v12 = 0;
  v13 = *(v4 + 20);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = a1 + v14;
  v16 = *(v8 + 72);
  do
  {
    _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v15, v10, type metadata accessor for CommandsList.Item);
    v17 = *&v10[v13];
    _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v10, type metadata accessor for CommandsList.Item);
    if (v17 > v12)
    {
      v12 = v17;
    }

    v15 += v16;
    --v11;
  }

  while (v11);
  a2 = v25;
  v18 = *(v25 + 16);
  if (v18)
  {
LABEL_11:
    v19 = 0;
    v20 = *(v4 + 20);
    v21 = a2 + v14;
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v21, v6, type metadata accessor for CommandsList.Item);
      v22 = *&v6[v20];
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v6, type metadata accessor for CommandsList.Item);
      if (v22 > v19)
      {
        v19 = v22;
      }

      v21 += v16;
      --v18;
    }

    while (v18);
    return v12 == v19;
  }

  return !v12;
}

uint64_t outlined init with copy of CommandsList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12CommandsListV4ItemVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CommandsList.Item(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI12CommandsListV4ItemVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for CommandsList.Item(uint64_t a1)
{
  type metadata accessor for CommandsList.Item.Value(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v3 = type metadata accessor for CommandOperation(0);
    v4 = a1 + *(v3 + 20);
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

    v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
    if (*(a1 + *(v3 + 24)))
    {
    }
  }

  return result;
}

uint64_t project #1 <A>(type:) in SceneStorageValues.Entry.encode(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  if (*(v13 + 48) == v14 && (v18 = a2[7], swift_unknownObjectRetain(), v18))
  {
    StoredLocationBase.get()();

    (*(v7 + 32))(v12, v9, a4);
    v19 = a2[8];
    v28 = a4;
    v20 = __swift_allocate_boxed_opaque_existential_1(&v26);
    (*(v7 + 16))(v20, v12, a4);
    v21 = a2[5];
    v23 = a2[2];
    v22 = a2[3];
    if (v21)
    {
      v24 = a2[4];
      v25 = v21;
      swift_bridgeObjectRetain_n();

      MEMORY[0x18D00C9B0](47, 0xE100000000000000);

      MEMORY[0x18D00C9B0](v23, v22);

      v23 = v24;
      v22 = v25;
    }

    else
    {
    }

    (*(*v19 + 96))(&v26, a3, v23, v22);

    (*(v7 + 8))(v12, a4);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v26 = 0xD00000000000001BLL;
    v27 = 0x800000018CD47800;
    v15 = a2[2];
    v16 = a2[3];

    MEMORY[0x18D00C9B0](v15, v16);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    MEMORY[0x18D009810](v26, v27);
  }
}

uint64_t TransformBox.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 112);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v4 + *(v9 + 128), v10, v12);
  (*(*(v9 + 120) + 24))(a1, a2, a3, a4, v10);
  return (*(v11 + 8))(v14, v10);
}

uint64_t specialized JSONCodableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v34);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v14, 0, 1, a5);
    (*(v15 + 32))(v18, v14, a5);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v24 = v23;
    v30 = a3;
    v31 = a4;

    AnyHashable.init<A>(_:)();
    if (v24 >> 60 == 15)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v32 = 0;
    }

    else
    {
      v27 = MEMORY[0x1E6969080];
      v25 = v22;
      v26 = v24;
    }

    v30 = v25;
    v31 = v26;
    v33 = v27;
    outlined copy of Data?(v22, v24);
    specialized Dictionary.subscript.setter(&v30, v34);

    v28 = outlined consume of Data?(v22, v24);
    return (*(v15 + 8))(v18, a5, v28);
  }

  else
  {
    v20(v14, 1, 1, a5);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t NavigationSplitViewVisibility.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return v2;
}

double outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.copy()(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(v5);
}

uint64_t TransformBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

BOOL specialized static NavigationTitleStorage.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (!a1[3])
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, *(a2 + 16) & 1);

  v8 = static Text.== infix(_:_:)();
  outlined consume of Text.Storage(v5, v6, v7 & 1);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v10 = v4 != 5 && v2 == v4;
  if (v2 == 5)
  {
    return v4 == 5;
  }

  else
  {
    return v10;
  }
}

void *assignWithCopy for ResolvedList(void *a1, void *a2, uint64_t a3)
{
  v56 = *(a3 + 16);
  v3 = *(v56 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = ~(v6 | 7);
  v9 = (v6 + 23) & v8;
  v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  if (*v10 < 0xFFFFFFFFuLL)
  {
    if (v12 < 0xFFFFFFFF)
    {
      if (v4)
      {
        v42 = *(*(v56 - 8) + 64);
      }

      else
      {
        v42 = v5 + 1;
      }

      if (v42 <= v5)
      {
        v42 = *(*(v56 - 8) + 64);
      }

      if (v42 <= 8)
      {
        v42 = 8;
      }

      v43 = v42 + v9 + 1;
      goto LABEL_93;
    }

    v55 = a1;
    *a1 = *a2;
    *v10 = *v11;
    v25 = ((v10 + v7 + 8) & v8);
    v26 = ((v11 + v7 + 8) & v8);
    if (v4)
    {
      v27 = v5;
    }

    else
    {
      v27 = v5 + 1;
    }

    if (v27 <= v5)
    {
      v28 = v5;
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v28;
    }

    v30 = v26[v29];

    if (v30 >= 3)
    {
      if (v29 <= 3)
      {
        v31 = v29;
      }

      else
      {
        v31 = 4;
      }

      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = *v26;
      }

      else if (v31 == 2)
      {
        v32 = *v26;
      }

      else if (v31 == 3)
      {
        v32 = *v26 | (v26[2] << 16);
      }

      else
      {
        v32 = *v26;
      }

      v44 = (v32 | ((v30 - 3) << (8 * v29))) + 3;
      v45 = v32 + 3;
      if (v29 >= 4)
      {
        v30 = v45;
      }

      else
      {
        v30 = v44;
      }
    }

LABEL_74:
    if (v30 == 2)
    {
      (*(v3 + 16))(v25, v26, v56);
      *(v25 + v29) = 2;
    }

    else if (v30 == 1)
    {
      if ((*(v3 + 48))(v26, 1, v56))
      {
        memcpy(v25, v26, v27);
      }

      else
      {
        (*(v3 + 16))(v25, v26, v56);
        (*(v3 + 56))(v25, 0, 1, v56);
      }

      *(v25 + v29) = 1;
    }

    else
    {
      *v25 = *v26;
      *(v25 + v29) = 0;
    }

    return v55;
  }

  if (v12 >= 0xFFFFFFFF)
  {
    v55 = a1;
    *a1 = *a2;

    *v10 = *v11;

    v13 = v10 + v7 + 8;
    v14 = (v13 & v8);
    v15 = v11 + v7 + 8;
    v16 = (v15 & v8);
    if ((v13 & v8) == (v15 & v8))
    {
      return v55;
    }

    if (v4)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    if (v17 <= v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = v17;
    }

    if (v18 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v18;
    }

    v20 = v14[v19];
    v21 = v20 - 3;
    if (v20 < 3)
    {
      v23 = v56;
      goto LABEL_102;
    }

    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    v23 = v56;
    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_102;
      }

      v24 = *v14;
    }

    else if (v22 == 2)
    {
      v24 = *v14;
    }

    else if (v22 == 3)
    {
      v24 = *v14 | (v14[2] << 16);
    }

    else
    {
      v24 = *v14;
    }

    v48 = (v24 | (v21 << (8 * v19))) + 3;
    v20 = v24 + 3;
    if (v19 < 4)
    {
      v20 = v48;
    }

LABEL_102:
    if (v20 != 2)
    {
      if (v20 != 1)
      {

LABEL_107:
        v49 = *(v16 + v19);
        v50 = v49 - 3;
        if (v49 >= 3)
        {
          if (v19 <= 3)
          {
            v51 = v19;
          }

          else
          {
            v51 = 4;
          }

          if (v51 > 1)
          {
            if (v51 == 2)
            {
              v52 = *v16;
            }

            else if (v51 == 3)
            {
              v52 = *v16 | (*(v16 + 2) << 16);
            }

            else
            {
              v52 = *v16;
            }

LABEL_119:
            v53 = (v52 | (v50 << (8 * v19))) + 3;
            v49 = v52 + 3;
            if (v19 < 4)
            {
              v49 = v53;
            }

            goto LABEL_121;
          }

          if (v51)
          {
            v52 = *v16;
            goto LABEL_119;
          }
        }

LABEL_121:
        if (v49 == 2)
        {
          (*(v3 + 16))(v14, v16, v23);
          v54 = 2;
LABEL_129:
          v14[v19] = v54;
          return v55;
        }

        if (v49 == 1)
        {
          if ((*(v3 + 48))(v16, 1, v23))
          {
            memcpy(v14, v16, v17);
          }

          else
          {
            (*(v3 + 16))(v14, v16, v23);
            (*(v3 + 56))(v14, 0, 1, v23);
          }

          v54 = 1;
          goto LABEL_129;
        }

        *v14 = *v16;
        v14[v19] = 0;

        return v55;
      }

      if ((*(v3 + 48))(v14, 1, v23))
      {
        goto LABEL_107;
      }
    }

    (*(v3 + 8))(v14, v23);
    goto LABEL_107;
  }

  v33 = a1;
  v34 = a2;

  v35 = ((v10 + v7 + 8) & v8);
  if (v4)
  {
    v36 = v5;
  }

  else
  {
    v36 = v5 + 1;
  }

  if (v36 <= v5)
  {
    v36 = v5;
  }

  if (v36 <= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v35 + v37);
  v39 = v38 - 3;
  if (v38 < 3)
  {
    goto LABEL_85;
  }

  if (v37 <= 3)
  {
    v40 = v37;
  }

  else
  {
    v40 = 4;
  }

  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v41 = *v35;
    }

    else if (v40 == 3)
    {
      v41 = *((v10 + v7 + 8) & v8) | (*(((v10 + v7 + 8) & v8) + 2) << 16);
    }

    else
    {
      v41 = *v35;
    }

LABEL_83:
    v46 = (v41 | (v39 << (8 * v37))) + 3;
    v38 = v41 + 3;
    if (v37 < 4)
    {
      v38 = v46;
    }

    goto LABEL_85;
  }

  if (v40)
  {
    v41 = *v35;
    goto LABEL_83;
  }

LABEL_85:
  if (v38 == 2)
  {
    (*(v3 + 8))(v35, v56);
  }

  else if (v38 == 1)
  {
    if (!(*(v3 + 48))(v35, 1, v56))
    {
      (*(v3 + 8))(v35, v56);
    }
  }

  else
  {
  }

  v43 = v37 + v9 + 1;
  a1 = v33;
  a2 = v34;
LABEL_93:

  return memcpy(a1, a2, v43);
}

uint64_t assignWithCopy for ListPresentationSizingModifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v4, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 17);
  *a1 = v3;
  *(a1 + 8) = v4;
  v10 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  outlined consume of Environment<CGSize?>.Content(v7, v8, v10, v9);
  return a1;
}

void *assignWithCopy for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v49 = *(a3 + 16);
  v4 = *(v49 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 + 15;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((a1 + v6 + 15) & v8);
  v10 = ((a2 + v6 + 15) & v8);
  v11 = *(v4 + 64);
  v51 = (v6 + 23) & v8;
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
    v50 = a1;
    if (v14 >= 0xFFFFFFFF)
    {
      *v9 = *v10;

      *v12 = *v13;

      v15 = ((v12 + v7) & v8);
      v16 = ((v13 + v7) & v8);
      if (v5)
      {
        v17 = v11;
      }

      else
      {
        v17 = v11 + 1;
      }

      if (v17 <= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == v16)
      {
        goto LABEL_127;
      }

      v20 = v15[v19];
      v21 = v20 - 3;
      if (v20 < 3)
      {
        v23 = v49;
        goto LABEL_97;
      }

      if (v19 <= 3)
      {
        v22 = v19;
      }

      else
      {
        v22 = 4;
      }

      v23 = v49;
      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_97;
        }

        v24 = *v15;
      }

      else if (v22 == 2)
      {
        v24 = *v15;
      }

      else if (v22 == 3)
      {
        v24 = *v15 | (v15[2] << 16);
      }

      else
      {
        v24 = *v15;
      }

      v41 = (v24 | (v21 << (8 * v19))) + 3;
      v20 = v24 + 3;
      if (v19 < 4)
      {
        v20 = v41;
      }

LABEL_97:
      if (v20 != 2)
      {
        if (v20 != 1)
        {

LABEL_102:
          v42 = v16[v19];
          v43 = v42 - 3;
          if (v42 >= 3)
          {
            if (v19 <= 3)
            {
              v44 = v19;
            }

            else
            {
              v44 = 4;
            }

            if (v44 > 1)
            {
              if (v44 == 2)
              {
                v45 = *v16;
              }

              else if (v44 == 3)
              {
                v45 = *v16 | (v16[2] << 16);
              }

              else
              {
                v45 = *v16;
              }

LABEL_114:
              v46 = (v45 | (v43 << (8 * v19))) + 3;
              v42 = v45 + 3;
              if (v19 < 4)
              {
                v42 = v46;
              }

              goto LABEL_116;
            }

            if (v44)
            {
              v45 = *v16;
              goto LABEL_114;
            }
          }

LABEL_116:
          if (v42 != 2)
          {
            if (v42 == 1)
            {
              v39 = (*(v4 + 48))(v16, 1, v23);
              goto LABEL_119;
            }

            goto LABEL_121;
          }

          (*(v4 + 16))(v15, v16, v23);
          goto LABEL_125;
        }

        if ((*(v4 + 48))(v15, 1, v23))
        {
          goto LABEL_102;
        }
      }

      (*(v4 + 8))(v15, v23);
      goto LABEL_102;
    }

    v29 = ((v12 + v7) & v8);
    if (v5)
    {
      v30 = v11;
    }

    else
    {
      v30 = v11 + 1;
    }

    if (v30 <= v11)
    {
      v30 = v11;
    }

    if (v30 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v30;
    }

    v31 = *(v29 + v19);
    v32 = v31 - 3;
    if (v31 < 3)
    {
      v34 = v51;
    }

    else
    {
      if (v19 <= 3)
      {
        v33 = v19;
      }

      else
      {
        v33 = 4;
      }

      v34 = v51;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v35 = *v29;
        }

        else if (v33 == 3)
        {
          v35 = *v29 | (*(((v12 + v7) & v8) + 2) << 16);
        }

        else
        {
          v35 = *v29;
        }

LABEL_81:
        v40 = (v35 | (v32 << (8 * v19))) + 3;
        v31 = v35 + 3;
        if (v19 < 4)
        {
          v31 = v40;
        }

        goto LABEL_83;
      }

      if (v33)
      {
        v35 = *v29;
        goto LABEL_81;
      }
    }

LABEL_83:
    if (v31 == 2)
    {
      (*(v4 + 8))((v12 + v7) & v8, v49);
    }

    else if (v31 == 1)
    {
      if (!(*(v4 + 48))((v12 + v7) & v8, 1, v49))
      {
        (*(v4 + 8))(v29, v49);
      }
    }

    else
    {
    }

    memcpy(v9, v10, v19 + v34 + 1);
    v3 = v50;
    goto LABEL_128;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    v50 = a1;
    *v9 = *v10;
    *v12 = *v13;
    v15 = ((v12 + v7) & v8);
    v16 = ((v13 + v7) & v8);
    if (v5)
    {
      v17 = v11;
    }

    else
    {
      v17 = v11 + 1;
    }

    if (v17 <= v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = v17;
    }

    if (v25 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v25;
    }

    v26 = v16[v19];

    if (v26 < 3)
    {
      goto LABEL_76;
    }

    if (v19 <= 3)
    {
      v27 = v19;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
LABEL_76:
        if (v26 != 2)
        {
          if (v26 == 1)
          {
            v23 = v49;
            v39 = (*(v4 + 48))(v16, 1, v49);
LABEL_119:
            if (v39)
            {
              memcpy(v15, v16, v17);
            }

            else
            {
              (*(v4 + 16))(v15, v16, v23);
              (*(v4 + 56))(v15, 0, 1, v23);
            }

            v47 = 1;
            goto LABEL_126;
          }

LABEL_121:
          *v15 = *v16;
          v15[v19] = 0;

LABEL_127:
          v3 = v50;
          v34 = v51;
          goto LABEL_128;
        }

        (*(v4 + 16))(v15, v16, v49);
LABEL_125:
        v47 = 2;
LABEL_126:
        v15[v19] = v47;
        goto LABEL_127;
      }

      v28 = *v16;
    }

    else if (v27 == 2)
    {
      v28 = *v16;
    }

    else if (v27 == 3)
    {
      v28 = *v16 | (v16[2] << 16);
    }

    else
    {
      v28 = *v16;
    }

    v37 = (v28 | ((v26 - 3) << (8 * v19))) + 3;
    v38 = v28 + 3;
    if (v19 >= 4)
    {
      v26 = v38;
    }

    else
    {
      v26 = v37;
    }

    goto LABEL_76;
  }

  if (v5)
  {
    v36 = *(*(v49 - 8) + 64);
  }

  else
  {
    v36 = v11 + 1;
  }

  if (v36 <= v11)
  {
    v36 = *(*(v49 - 8) + 64);
  }

  if (v36 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v36;
  }

  v34 = (v6 + 23) & v8;
  memcpy(v9, v10, v19 + v51 + 1);
LABEL_128:
  *((v9 + v19 + v34 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v19 + v34 + 8) & 0xFFFFFFFFFFFFFFF8);

  return v3;
}

uint64_t *assignWithCopy for PrimitiveSelectionContainerModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
    }

    else
    {
      outlined destroy of Binding<Selection>(a1);
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      v9 = *a2;
      a1[6] = a2[6];
      *(a1 + 1) = v8;
      *(a1 + 2) = v7;
      *a1 = v9;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v5 = a2[5];
    a1[5] = v5;
    a1[6] = a2[6];
    v6 = **(v5 - 8);

    v6(a1 + 2, a2 + 2, v5);
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    a1[6] = a2[6];
    *(a1 + 1) = v11;
    *(a1 + 2) = v12;
    *a1 = v10;
  }

  return a1;
}

uint64_t ListCoreBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 + *(a3 + 60));
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v14 = type metadata accessor for ListBatchUpdates(0, v12, v13, a4);
  ListBatchUpdates.formUpdates<A>(from:to:)(a1, a2, v14, a4, a5);
  v15 = *v11;
  v16 = v11[1];
  v17 = v11[2];
  v18 = v11[3];
  v19 = v11[4];
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;

  ListCoreBatchUpdates.formResult<A>(_:)(v21, a3, v12, v13);
}

uint64_t ListBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v38 = a4;
  v50 = a2;
  v7 = *(a3 + 16);
  v48 = a3;
  v8 = *(v7 - 8);
  v46 = a1;
  v47 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CountingIndexListDataSource(0, v7, *(v10 + 24), v11);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - v12;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CountingIndexListDataSource(0, a4, a5, v15);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v37 = (&v36 - v16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for CountingIndex();
  v18 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v20 = v19;
  v21 = MEMORY[0x1E697E0E8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E0E8], v17);
  v23 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v18, v21);
  v52[0] = v17;
  v52[1] = v20;
  v52[2] = WitnessTable;
  v52[3] = v23;
  type metadata accessor for ListUpdate(255, v52);
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(1);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(1);
  v25 = v39;
  v24 = v40;
  v26 = v38;
  (*(v40 + 16))(v39, v46, v38);
  v27 = v37;
  v28 = v25;
  v29 = v26;
  (*(v24 + 32))(v37, v28, v26);
  v30 = v47;
  v31 = v45;
  (*(v47 + 16))(v45, v50, v7);
  v32 = v43;
  (*(v30 + 32))(v43, v31, v7);
  v33 = v48;
  v34 = v41;
  ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(v27, v32, v48, v29, v41);
  ListBatchUpdates.computeMoves<A>(from:to:)(v27, v32, v33, v29, v34);
  (*(v49 + 8))(v32, v51);
  return (*(v42 + 8))(v27, v44);
}

uint64_t ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(void (**a1)(char *, uint64_t, __n128), char *a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v247 = a2;
  v241 = a1;
  v9 = *(a3 + 16);
  v236 = *(a3 + 24);
  v243 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v249 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = swift_getAssociatedTypeWitness();
  v233 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v234 = &v167 - v12;
  v246 = AssociatedTypeWitness;
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v242 = v14;
  v240 = AssociatedConformanceWitness;
  v16 = type metadata accessor for CountingIndex();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v225 = &v167 - v18;
  v237 = a5;
  v235 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v203 = type metadata accessor for CountingIndexCollection();
  v19 = MEMORY[0x1E69801A8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69801A8], v203);
  v20 = type metadata accessor for DefaultIndices();
  v206 = type metadata accessor for CountingIndexCollection();
  v201 = swift_getWitnessTable(v19, v206);
  v21 = type metadata accessor for DefaultIndices();
  v22 = MEMORY[0x1E69E5EB8];
  v23 = swift_getWitnessTable(MEMORY[0x1E69E5EB8], v20);
  v24 = swift_getWitnessTable(v22, v21);
  v252 = v20;
  v253 = v21;
  v254 = v23;
  v255 = v24;
  v179 = type metadata accessor for Zip2Sequence();
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v167 - v25;
  v252 = v20;
  v253 = v21;
  v181 = v23;
  v254 = v23;
  v255 = v24;
  v180 = v24;
  v228 = type metadata accessor for Zip2Sequence.Iterator();
  v232 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v167 - v26;
  v229 = v21;
  v231 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v200 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v199 = &v167 - v31;
  v32 = MEMORY[0x1E69E5EC8];
  swift_getWitnessTable(MEMORY[0x1E69E5EC8], v21, v30);
  v198 = type metadata accessor for IndexingIterator();
  v224 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v177 = &v167 - v33;
  v34 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v36 = v35;
  v37 = MEMORY[0x1E697E0E8];
  v38 = swift_getWitnessTable(MEMORY[0x1E697E0E8], v16);
  v39 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v34, v37);
  v252 = v16;
  v253 = v36;
  v254 = v38;
  v255 = v39;
  v245 = type metadata accessor for ListUpdate(0, &v252);
  MEMORY[0x1EEE9AC00](v245);
  v230 = &v167 - v40;
  v223 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v238 = &v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v167 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v176 = &v167 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v197 = &v167 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v175 = &v167 - v51;
  v214 = v20;
  v222 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v196 = &v167 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v195 = &v167 - v56;
  swift_getWitnessTable(v32, v20, v55);
  v194 = type metadata accessor for IndexingIterator();
  v215 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v174 = &v167 - v57;
  v217 = type metadata accessor for Range();
  v211 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v193 = &v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v192 = &v167 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v191 = &v167 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v190 = &v167 - v64;
  v252 = v16;
  v253 = v16;
  v65 = v16;
  v254 = v38;
  v255 = v38;
  v213 = type metadata accessor for CollectionChanges.Element();
  v221 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v216 = &v167 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v167 - v68;
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v167 - v71;
  v73 = v203;
  v204 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v167 - v75;
  v187 = type metadata accessor for CountingIndexListDataSource(0, v235, v237, v77);
  CountingIndexListDataSource.sectionIDs.getter(v187, v76);
  v186 = type metadata accessor for CountingIndexListDataSource(0, v243, v236, v78);
  CountingIndexListDataSource.sectionIDs.getter(v186, v72);
  v252 = v65;
  v253 = v65;
  v248 = v65;
  v254 = v38;
  v255 = v38;
  v79 = type metadata accessor for CollectionChanges();
  v80 = MEMORY[0x1E69801A0];
  v81 = v73;
  v244 = swift_getWitnessTable(MEMORY[0x1E69801A0], v73);
  v82 = v206;
  v239 = swift_getWitnessTable(v80, v206);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  CollectionChanges.formChanges<A, B>(from:to:)();
  v83 = *(v205 + 8);
  v189 = v72;
  v205 += 8;
  v185 = v83;
  v83(v72, v82);
  v84 = *(v204 + 8);
  v188 = v76;
  v85 = v76;
  v86 = v214;
  v204 += 8;
  v184 = v84;
  v84(v85, v81);
  v252 = *(v6 + 8);
  v253 = 0;

  if (!CollectionChanges.endIndex.getter())
  {
  }

  v87 = 0;
  v209 = (v221 + 32);
  v212 = v252;
  v208 = (v211 + 32);
  v183 = (v222 + 8);
  v182 = (v231 + 8);
  v173 = TupleTypeMetadata2 - 8;
  v239 = (v223 + 32);
  v221 = v237 + 64;
  ++v233;
  v220 = v236 + 8;
  v219 = v237 + 72;
  v218 = v236 + 9;
  v88 = (v223 + 8);
  v172 = (v232 + 8);
  v207 = (v211 + 8);
  v171 = (v231 + 16);
  v170 = (v224 + 8);
  v169 = (v222 + 16);
  v168 = (v215 + 8);
  v246 = v45;
  v211 = v69;
  v250 = v6;
  v210 = v79;
  v244 = (v223 + 16);
  v249 = (v223 + 8);
  while (1)
  {
    v251 = v212;
    result = CollectionChanges.subscript.getter();
    v91 = __OFADD__(v87, 1);
    v92 = v87 + 1;
    if (v91)
    {
      break;
    }

    v253 = v92;
    (*v209)(v216, v69, v213);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v215 = v92;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*v208)(v191, v216, v217);
        v94 = v189;
        CountingIndexListDataSource.sectionIDs.getter(v186, v189);
        v95 = v199;
        v96 = v206;
        Collection<>.indices.getter();
        v185(v94, v96);
        v97 = v200;
        v98 = v229;
        DefaultIndices.subscript.getter();
        v99 = *v182;
        (*v182)(v95, v98);
        v100 = v177;
        (*v171)(v177, v97, v98);
        v101 = *(v198 + 36);
        DefaultIndices.startIndex.getter();
        v99(v97, v98);
        v102 = v197;
        DefaultIndices.endIndex.getter();
        v103 = static CountingIndex.== infix(_:_:)();
        v104 = *v249;
        (*v249)(v102, v248);
        v105 = v230;
        v106 = v176;
        if ((v103 & 1) == 0)
        {
          v232 = *v244;
          do
          {
            v107 = v248;
            (v232)(v106, &v100[v101], v248);
            DefaultIndices.formIndex(after:)();
            (*v239)(v105, v106, v107);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for Array();
            Array.append(_:)();
            DefaultIndices.endIndex.getter();
            v108 = static CountingIndex.== infix(_:_:)();
            v104(v102, v107);
          }

          while ((v108 & 1) == 0);
        }

        (*v170)(v100, v198);
        (*v207)(v191, v217);
        v45 = v246;
      }

      else
      {
        v125 = v217;
        v126 = *(swift_getTupleTypeMetadata2() + 48);
        v127 = *v208;
        v128 = v86;
        v129 = v216;
        (*v208)(v192, v216, v125);
        v127(v193, &v129[v126], v125);
        v130 = v188;
        CountingIndexListDataSource.sectionIDs.getter(v187, v188);
        v131 = v195;
        v132 = v203;
        Collection<>.indices.getter();
        v184(v130, v132);
        v133 = v196;
        DefaultIndices.subscript.getter();
        v232 = *v183;
        (v232)(v131, v86);
        v134 = v189;
        CountingIndexListDataSource.sectionIDs.getter(v186, v189);
        v135 = v199;
        v136 = v206;
        Collection<>.indices.getter();
        v185(v134, v136);
        v137 = v200;
        v138 = v229;
        DefaultIndices.subscript.getter();
        v139 = *v182;
        (*v182)(v135, v138);
        zip<A, B>(_:_:)();
        v139(v137, v138);
        (v232)(v133, v128);
        Zip2Sequence.makeIterator()();
        v140 = v225;
        Zip2Sequence.Iterator.next()();
        v141 = TupleTypeMetadata2;
        v142 = *(TupleTypeMetadata2 - 8);
        v224 = *(v142 + 48);
        v223 = v142 + 48;
        v143 = (v224)(v140, 1, TupleTypeMetadata2);
        v144 = v238;
        v145 = v248;
        if (v143 != 1)
        {
          v222 = *v239;
          do
          {
            v149 = *(v141 + 48);
            v150 = v222;
            v222(v45, v140, v145);
            v150(v144, &v140[v149], v145);
            v151 = v45;
            v152 = v235;
            v153 = v236;
            v154 = v237;
            v251 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v241, v151, v247, v144, v243, v235, v236, v237);
            v155 = type metadata accessor for Array();
            swift_getWitnessTable(MEMORY[0x1E69E6328], v155);
            v232 = v155;
            Array.append<A>(contentsOf:)();
            v156 = *(v248 + 16);
            v157 = *(*(v156 - 8) + 16);
            v158 = v234;
            v157(v234, v246, v156);
            LOBYTE(v231) = (*(v154 + 64))(v158, v152, v154) & 1;
            LODWORD(v231) = v231;
            v159 = *v233;
            v160 = v242;
            (*v233)(v158, v242);
            v157(v158, v144, v156);
            v161 = v248;
            LODWORD(v155) = (v153[8])(v158, v243, v153) & 1;
            v159(v158, v160);
            v162 = v246;
            if (v231 != v155)
            {
              (*v244)(v230, v246, v161);
              swift_storeEnumTagMultiPayload();
              Array.append(_:)();
            }

            v163 = v234;
            v157(v234, v162, v156);
            v164 = (*(v237 + 72))(v163, v235) & 1;
            v145 = v161;
            v159(v163, v160);
            v157(v163, v238, v156);
            v165 = (v236[9])(v163, v243) & 1;
            v159(v163, v160);
            v166 = v164 == v165;
            v45 = v246;
            if (!v166)
            {
              (*v244)(v230, v246, v161);
              swift_storeEnumTagMultiPayload();
              Array.append(_:)();
            }

            v148 = *v249;
            v144 = v238;
            (*v249)(v238, v145);
            v148(v45, v145);
            v140 = v225;
            Zip2Sequence.Iterator.next()();
            v141 = TupleTypeMetadata2;
          }

          while ((v224)(v140, 1, TupleTypeMetadata2) != 1);
        }

        (*v172)(v227, v228);
        v146 = *v207;
        v147 = v217;
        (*v207)(v193, v217);
        v146(v192, v147);
      }
    }

    else
    {
      (*v208)(v190, v216, v217);
      v109 = v188;
      CountingIndexListDataSource.sectionIDs.getter(v187, v188);
      v110 = v86;
      v111 = v195;
      v112 = v203;
      Collection<>.indices.getter();
      v184(v109, v112);
      v113 = v196;
      DefaultIndices.subscript.getter();
      v114 = *v183;
      (*v183)(v111, v110);
      v115 = v174;
      (*v169)(v174, v113, v110);
      v116 = *(v194 + 36);
      DefaultIndices.startIndex.getter();
      (v114)(v113, v110);
      v117 = v175;
      v118 = v197;
      DefaultIndices.endIndex.getter();
      v119 = static CountingIndex.== infix(_:_:)();
      v120 = *v88;
      v121 = v248;
      v232 = v120;
      (v120)(v118, v248);
      v122 = v230;
      v123 = v239;
      if ((v119 & 1) == 0)
      {
        v231 = *v244;
        do
        {
          (v231)(v117, &v115[v116], v121);
          DefaultIndices.formIndex(after:)();
          (*v123)(v122, v117, v121);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Array();
          Array.append(_:)();
          DefaultIndices.endIndex.getter();
          v124 = static CountingIndex.== infix(_:_:)();
          (v232)(v118, v121);
        }

        while ((v124 & 1) == 0);
      }

      (*v168)(v115, v194);
      (*v207)(v190, v217);
      v45 = v246;
    }

    v69 = v211;
    v87 = v215;
    v88 = v249;
    v89 = CollectionChanges.endIndex.getter();
    v86 = v214;
    if (v87 == v89)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CountingIndexListDataSource.sectionIDs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v3 + 56))(v4, v3, v7);
  return (*(v6 + 32))(a2, v9, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ShadowSectionCollection<A>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ShadowSectionCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance ShadowSectionCollection<A>;
}

uint64_t (*ShadowSectionCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ShadowSectionCollection.subscript.getter(a2, a3, v8);
  return ShadowSectionCollection.subscript.read;
}

uint64_t ShadowSectionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &AssociatedTypeWitness - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &AssociatedTypeWitness - v12;
  (*(v4 + 56))(v5, v4, v11);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v5, v4, v14);
  ShadowListUpdateRecorder.initialIndex(_:)(a1, updated, v8);
  v16 = dispatch thunk of Collection.subscript.read();
  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 16))(v22, v18, v19);
  v16(v23, 0);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v10 + 8))(v13, v9);
}

void protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void CoalescingAdjacentDuplicates<>.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(void (**a1)(char *, uint64_t, __n128), uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), void (**a7)(char *, const char *), uint64_t a8)
{
  v214 = a8;
  v206 = a6;
  v211 = a4;
  v216 = a3;
  v213 = a2;
  v178 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CountingIndexCollection();
  v217 = MEMORY[0x1E69801A8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69801A8], v10);
  v11 = type metadata accessor for DefaultIndices();
  v210 = MEMORY[0x1E69E5EB8];
  v12 = swift_getWitnessTable(MEMORY[0x1E69E5EB8], v11);
  v194 = type metadata accessor for LazySequence();
  v167 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v162 - v13;
  v166 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v192 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v191 = &v162 - v17;
  swift_getAssociatedTypeWitness();
  i = a7;
  v205 = a5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for CountingIndex();
  v19 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v21 = v20;
  v22 = MEMORY[0x1E697E0E8];
  v23 = swift_getWitnessTable(MEMORY[0x1E697E0E8], v18);
  v24 = v213;
  v25 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v19, v22);
  v221 = v18;
  v222 = v21;
  v215 = v21;
  *&v223 = v23;
  *(&v223 + 1) = v25;
  v26 = type metadata accessor for ListUpdate(255, &v221);
  v196 = v11;
  v195 = v12;
  v190 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v162 - v27;
  v204 = *(v18 - 8);
  v203 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v202 = &v162 - v29;
  v30 = v206;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = type metadata accessor for CountingIndexCollection();
  v188 = swift_getWitnessTable(v217, v31);
  v32 = type metadata accessor for DefaultIndices();
  v33 = swift_getWitnessTable(v210, v32);
  v185 = type metadata accessor for LazySequence();
  v165 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v162 - v34;
  v164 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v182 = &v162 - v38;
  v187 = v32;
  v186 = v33;
  v181 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v162 - v39;
  v201 = v10;
  v175 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v199 = &v162 - v44;
  v200 = v31;
  v174 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v170 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v198 = &v162 - v48;
  v217 = v26;
  MEMORY[0x1EEE9AC00](v49);
  v207 = &v162 - v50;
  v210 = type metadata accessor for IndexSet.Index();
  v168 = *(v210 - 1);
  MEMORY[0x1EEE9AC00](v210);
  v52 = &v162 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v173 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v162 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v162 - v57;
  v177 = type metadata accessor for IndexSet();
  v179 = *(v177 - 1);
  MEMORY[0x1EEE9AC00](v177);
  v176 = (&v162 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = type metadata accessor for DiffResult();
  MEMORY[0x1EEE9AC00](v169);
  v61 = &v162 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for CountingIndexListDataSource(0, v30, v214, v62);
  CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(v24, v63);
  v65 = v211;
  if (v226)
  {
    v163 = v55;
    v208 = v52;
    v221 = v226;
    v222 = v227;
    v223 = v228;
    v66 = v205;
    v67 = i;
    v68 = type metadata accessor for CountingIndexListDataSource(0, v205, i, v64);
    CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(v65, v68);
    if (v219[0])
    {
      v226 = v219[0];
      v227 = v219[1];
      v228 = v220;
      v218 = Array.init()();
      HeterogeneousViewIDs.difference(to:)();

      v69 = v176;
      DiffResult.removes.getter();
      v70 = IndexSet.count.getter();
      v71 = v179 + 8;
      v72 = *(v179 + 8);
      v73 = v177;
      result = (v72)(v69, v177);
      v75 = *(*&v61[*(v169 + 20)] + 16);
      v76 = v70 + v75;
      if (__OFADD__(v70, v75))
      {
        goto LABEL_28;
      }

      v202 = *&v61[*(v169 + 20)];
      DiffResult.inserts.getter();
      v77 = IndexSet.count.getter();
      result = (v72)(v69, v73);
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        goto LABEL_29;
      }

      v212 = v18;
      v214 = type metadata accessor for Array();
      Array.reserveCapacity(_:)(v79);
      v203 = v61;
      DiffResult.removes.getter();
      IndexSet.makeIterator()();
      v179 = v71;
      v201 = v72;
      v72(v69, v73);
      v80 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      v81 = (v168 + 8);
      v216 = (v204 + 16);
      for (i = (v168 + 8); ; v81 = i)
      {
        v82 = v208;
        dispatch thunk of Collection.endIndex.getter();
        v83 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
        v84 = v210;
        v85 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = *v81;
        (*v81)(v82, v84);
        if (v85)
        {
          break;
        }

        v87 = dispatch thunk of Collection.subscript.read();
        v89 = *v88;
        v87(v219, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v90 = v212;
        v91 = &v207[*(swift_getTupleTypeMetadata2() + 48)];
        (*v216)(v207, v213, v90);
        *v91 = v89;
        *(v91 + 1) = v89;
        v91[16] = 0;
        swift_storeEnumTagMultiPayload();
        Array.append(_:)();
      }

      v200 = v86;
      v205 = v83;
      v204 = v80;
      outlined destroy of IndexingIterator<IndexSet>(v58, type metadata accessor for IndexingIterator<IndexSet>);
      v92 = *(v202 + 2);
      v93 = v212;
      v94 = v207;
      if (v92)
      {
        v206 = *v216;
        v95 = (v202 + 40);
        v96 = v206;
        do
        {
          v97 = *(v95 - 1);
          v98 = *v95;
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v100 = &v94[*(swift_getTupleTypeMetadata2() + 48)];
          v101 = &v94[*(TupleTypeMetadata2 + 48)];
          v96(v94, v213, v93);
          *v101 = v97;
          *(v101 + 1) = v97;
          v101[16] = 0;
          v102 = &v100[*(TupleTypeMetadata2 + 48)];
          v96(v100, v211, v93);
          *v102 = v98;
          *(v102 + 1) = v98;
          v102[16] = 0;
          swift_storeEnumTagMultiPayload();
          Array.append(_:)();
          v95 += 2;
          --v92;
        }

        while (v92);
      }

      v103 = v176;
      DiffResult.inserts.getter();
      v104 = v163;
      IndexSet.makeIterator()();
      v201(v103, v177);
      v105 = v93;
      v106 = v208;
      dispatch thunk of Collection.endIndex.getter();
      v107 = v210;
      v108 = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = v106;
      v110 = v107;
      v111 = v200;
      while (1)
      {
        v111(v109, v110);
        if (v108)
        {
          break;
        }

        v112 = dispatch thunk of Collection.subscript.read();
        v114 = *v113;
        v112(v219, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v115 = &v94[*(swift_getTupleTypeMetadata2() + 48)];
        (*v216)(v94, v211, v105);
        *v115 = v114;
        *(v115 + 1) = v114;
        v116 = v210;
        v115[16] = 0;
        swift_storeEnumTagMultiPayload();
        Array.append(_:)();
        dispatch thunk of Collection.endIndex.getter();
        v108 = dispatch thunk of static Equatable.== infix(_:_:)();
        v109 = v106;
        v110 = v116;
      }

      outlined destroy of IndexingIterator<IndexSet>(v104, type metadata accessor for IndexingIterator<IndexSet>);
      outlined destroy of IndexingIterator<IndexSet>(v203, MEMORY[0x1E697DA50]);
      return v218;
    }

    v210 = v42;

    v117 = v174;
  }

  else
  {
    v210 = v42;
    v67 = i;
    v66 = v205;
    v117 = v174;
  }

  v226 = Array.init()();
  v118 = v198;
  CountingIndexListDataSource.rowIDs(forSectionAt:)(v24, v63, v198);
  v120 = type metadata accessor for CountingIndexListDataSource(0, v66, v67, v119);
  v121 = v199;
  CountingIndexListDataSource.rowIDs(forSectionAt:)(v211, v120, v199);
  v122 = v200;
  (*(v117 + 16))(v170, v118, v200);
  v123 = v121;
  v124 = v201;
  (*(v175 + 16))(v210, v123, v201);
  v125 = MEMORY[0x1E69801A0];
  swift_getWitnessTable(MEMORY[0x1E69801A0], v122);
  swift_getWitnessTable(v125, v124);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = CollectionChanges.init<A, B>(from:to:)();
  v126 = v221;
  v215 = *(v221 + 2);
  if (!v215)
  {
LABEL_26:
    (*(v175 + 8))(v199, v201);
    (*(v174 + 8))(v198, v200);

    return v226;
  }

  v127 = 0;
  v179 = v166 + 8;
  v210 = (v204 + 16);
  v208 = (v204 + 32);
  v178 = (v167 + 8);
  v177 = (v164 + 8);
  v176 = (v165 + 8);
  v128 = v221 + 64;
  v212 = v18;
  v207 = v221;
  while (v127 < *(v126 + 2))
  {
    v144 = *(v128 - 4);
    v143 = *(v128 - 3);
    v146 = *(v128 - 1);
    v145 = *v128;
    v147 = v128[8];
    v148 = *(v128 - 16);
    if (v128[57])
    {
      if (v128[57] != 1)
      {
        goto LABEL_21;
      }

      v149 = v191;
      v216 = v127;
      Collection<>.indices.getter();
      v221 = v144;
      v222 = v143;
      LOBYTE(v223) = v148 & 1;
      *(&v223 + 1) = v146;
      v224 = v145;
      v225 = v147 & 1;
      v150 = v192;
      v151 = v196;
      DefaultIndices.subscript.getter();
      v152 = *v179;
      (*v179)(v149, v151);
      v153 = v193;
      MEMORY[0x18D00CB50](v151, v195);
      v152(v150, v151);
      v154 = v204;
      v155 = v202;
      v156 = v212;
      (*(v204 + 16))(v202, v211, v212);
      v157 = (*(v154 + 80) + 48) & ~*(v154 + 80);
      v158 = swift_allocObject();
      v159 = v206;
      *(v158 + 2) = v205;
      *(v158 + 3) = v159;
      v160 = v214;
      *(v158 + 4) = i;
      *(v158 + 5) = v160;
      (*(v154 + 32))(&v158[v157], v155, v156);
      v161 = v194;
      swift_getWitnessTable(MEMORY[0x1E69E6A68], v194);
      LazySequenceProtocol.map<A>(_:)();

      (*v178)(v153, v161);
      type metadata accessor for Array();
      swift_getWitnessTable(MEMORY[0x1E69E6CC8], v190);
    }

    else
    {
      v129 = v182;
      v216 = v127;
      Collection<>.indices.getter();
      v221 = v144;
      v222 = v143;
      LOBYTE(v223) = v148 & 1;
      *(&v223 + 1) = v146;
      v224 = v145;
      v225 = v147 & 1;
      v130 = v183;
      v131 = v187;
      DefaultIndices.subscript.getter();
      v132 = *v177;
      v133 = v129;
      v126 = v207;
      (*v177)(v133, v131);
      v134 = v184;
      MEMORY[0x18D00CB50](v131, v186);
      v132(v130, v131);
      v135 = v204;
      v136 = v202;
      v137 = v212;
      (*(v204 + 16))(v202, v213, v212);
      v138 = (*(v135 + 80) + 48) & ~*(v135 + 80);
      v139 = swift_allocObject();
      v140 = v206;
      *(v139 + 2) = v205;
      *(v139 + 3) = v140;
      v141 = v214;
      *(v139 + 4) = i;
      *(v139 + 5) = v141;
      (*(v135 + 32))(&v139[v138], v136, v137);
      v142 = v185;
      swift_getWitnessTable(MEMORY[0x1E69E6A68], v185);
      LazySequenceProtocol.map<A>(_:)();

      (*v176)(v134, v142);
      type metadata accessor for Array();
      swift_getWitnessTable(MEMORY[0x1E69E6CC8], v181);
    }

    result = Array.append<A>(contentsOf:)();
    v127 = v216;
LABEL_21:
    ++v127;
    v128 += 96;
    if (v215 == v127)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void type metadata accessor for IndexingIterator<IndexSet>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet>)
  {
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<IndexSet>);
    }
  }
}

uint64_t CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CountingIndex();
  (*(*(*(v9 + 16) - 8) + 16))(v8, a1);
  (*(v3 + 88))(v8, v4, v3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t ShadowListDataSource.viewIDsIfAvailable(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 + 24) + 8);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v6, v11, v12);
  result = ShadowListUpdateRecorder.hasUpdates.getter(updated);
  if (result)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    (*(v7 + 16))(v9, v3, v6);
    (*(v11 + 88))(a1, v6, v11);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

BOOL ShadowListUpdateRecorder.hasUpdates.getter(uint64_t a1)
{
  ShadowListUpdateRecorder.updates.getter(a1);
  v11 = v13;
  v12 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = AssociatedTypeWitness;
  v8 = MEMORY[0x1E69E6530];
  v9 = AssociatedConformanceWitness;
  v10 = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(255, &v7);
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v3);
  v7 = v3;
  v8 = v3;
  v9 = WitnessTable;
  v10 = WitnessTable;
  v5 = type metadata accessor for ConcatenatedCollection();
  swift_getWitnessTable(MEMORY[0x1E697FE00], v5);
  LOBYTE(v3) = Collection.isEmpty.getter();

  return (v3 & 1) == 0;
}

unint64_t CollectionViewListDataSource.viewIDsIfAvailable(forSectionAt:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v1 + 64) + 16) > result)
  {
    return SectionAccumulator.RowIDs.heterogeneous.getter();
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation8IndexSetVACSlAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined destroy of IndexingIterator<IndexSet>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ListBatchUpdates.computeMoves<A>(from:to:)(void (**a1)(char *, uint64_t, __n128), char *a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v342 = a2;
  v341 = a1;
  v9 = *(a3 + 16);
  v363 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v316 = type metadata accessor for CountingIndexCollection();
  v362 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v315 = &v288 - v10;
  swift_getAssociatedTypeWitness();
  v361 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v369 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CountingIndex();
  v370 = v11;
  v372 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v371 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v366 = TupleTypeMetadata2;
  v317 = swift_getTupleTypeMetadata2();
  v299 = type metadata accessor for Optional();
  v360 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v298 = (&v288 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v304 = &v288 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v297 = (&v288 - v18);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v314 = type metadata accessor for CountingIndexCollection();
  v327 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v313 = &v288 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v330 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v320 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v312 = &v288 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v319 = &v288 - v24;
  v326 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v291 = &v288 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v338 = &v288 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v295 = &v288 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v340 = &v288 - v32;
  v337 = type metadata accessor for CountingIndexCollection();
  v357 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v336 = &v288 - v33;
  AssociatedConformanceWitness = swift_getTupleTypeMetadata2();
  v348 = type metadata accessor for Optional();
  v346 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348 - 8);
  v311 = &v288 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v310 = &v288 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v309 = (&v288 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v322 = (&v288 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v288 - v42);
  swift_getAssociatedTypeWitness();
  v344 = a5;
  v343 = a4;
  swift_getAssociatedConformanceWitness();
  v335 = type metadata accessor for CountingIndexCollection();
  v318 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v334 = &v288 - v44;
  v365 = swift_getAssociatedTypeWitness();
  v369 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v325 = &v288 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v324 = &v288 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v328 = &v288 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v321 = &v288 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v329 = &v288 - v53;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v333 = &v288 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v351 = &v288 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v302 = &v288 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v323 = &v288 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v303 = &v288 - v64;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v288 - v67;
  v69 = MEMORY[0x1E697E0E8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E0E8], v11, v66);
  v71 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v372, v69);
  v375 = v11;
  v376 = v371;
  v377 = WitnessTable;
  v378 = v71;
  v72 = type metadata accessor for ListUpdate(0, &v375);
  v355 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v288 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v288 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v288 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v296 = &v288 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v371 = &v288 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v352 = &v288 - v86;
  v87 = Array.init()();
  v373 = *v6;
  v374 = v87;
  v88 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6338], v88);
  v358 = v88;
  v89 = v74;
  RandomAccessCollection<>.indices.getter();
  v372 = 0;
  v91 = v375;
  v90 = v376;
  if (v375 == v376)
  {
LABEL_2:
    v375 = v372;
    v92 = MEMORY[0x1E69E6D08];
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    v93 = v358;
    swift_getWitnessTable(MEMORY[0x1E69E6348], v358);
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v92, MEMORY[0x1E69E6D18]);
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    v375 = v374;
    swift_getWitnessTable(MEMORY[0x1E69E6328], v93);
    return Array.append<A>(contentsOf:)();
  }

  if (v376 < v375)
  {
    goto LABEL_64;
  }

  v372 = 0;
  v350 = v355 + 40;
  v339 = (v355 + 8);
  v347 = (v326 + 8);
  v349 = (v54 + 16);
  v332 = (v357 + 1);
  v307 = (v362 + 8);
  v354 = AssociatedConformanceWitness - 8;
  v331 = (v330 + 1);
  v353 = (v369 + 8);
  v357 = (v54 + 8);
  v95 = (v54 + 32);
  ++v346;
  v306 = v317 - 8;
  v293 = (v326 + 32);
  v301 = (v330 + 2);
  v300 = (v326 + 16);
  v292 = (v360 + 8);
  v330 = (v318 + 1);
  v305 = (v327 + 8);
  v318 = (v369 + 16);
  v368 = v6;
  v308 = v43;
  v356 = v68;
  v360 = v72;
  v290 = v89;
  v289 = v77;
  v294 = v80;
  v359 = v95;
  v364 = v376;
  while (v91 < v90)
  {
    v98 = v372;
    if (v91 != v372)
    {
      v99 = v352;
      Array.subscript.getter();
      Array._makeMutableAndUnique()();
      v100 = *v6;
      Array._checkSubscript_mutating(_:)(v98);
      (*(v355 + 40))(&v100[((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v98], v99, v72);
    }

    v101 = *v6;
    Array.subscript.getter();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v362 = v101;
        v369 = v91;
        v162 = v366;
        v163 = &v371[*(v366 + 48)];
        v165 = *(v163 + 1);
        v326 = *v163;
        v164 = v326;
        v327 = v165;
        v166 = v163[16];
        v167 = v333;
        (*v95)(v333);
        v168 = &v338[*(v162 + 48)];
        (*v349)();
        *v168 = v164;
        *(v168 + 1) = v165;
        v168[16] = v166;
        v170 = type metadata accessor for CountingIndexListDataSource(0, v361, v363, v169);
        v171 = v336;
        CountingIndexListDataSource.sectionIDs.getter(v170, v336);
        v172 = v325;
        v173 = v337;
        CountingIndexCollection.subscript.getter();
        v174 = v171;
        v175 = AssociatedConformanceWitness;
        v176 = v365;
        (*v332)(v174, v173);
        v177 = v315;
        v178 = v320;
        CountingIndexListDataSource.rowIDs(forSectionAt:)(v167, v170, v315);
        v179 = v368;
        v375 = v326;
        v376 = v327;
        LOBYTE(v377) = v166;
        v180 = v316;
        CountingIndexCollection.subscript.getter();
        (*v307)(v177, v180);
        v181 = v179[3];
        v182 = swift_getAssociatedConformanceWitness();
        v183 = v311;
        MEMORY[0x18D00C560](v172, v181, v176, v175, v182);
        if ((*(*(v175 - 8) + 48))(v183, 1, v175) != 1)
        {
          (*v331)(v178, AssociatedTypeWitness);
          (*v353)(v172, v176);
          (*v347)(v338, v366);
          (*v357)(v333, v370);
          (*v346)(v183, v348);
          v68 = v356;
          v72 = v360;
          v6 = v179;
          goto LABEL_32;
        }

        (*v346)(v183, v348);
        v6 = v179;
        v184 = v179[4];
        v185 = AssociatedTypeWitness;
        v186 = swift_getAssociatedConformanceWitness();
        v187 = v298;
        v188 = v317;
        MEMORY[0x18D00C560](v178, v184, v185, v317, v186);
        v189 = *(v188 - 8);
        if ((*(v189 + 48))(v187, 1, v188) == 1)
        {
          (*v292)(v187, v299);
          (*v301)(v312, v178, v185);
          v190 = *(v188 + 48);
          v191 = v304;
          v98 = v372;
          *v304 = v372;
          v192 = v338;
          v193 = v366;
          (*v300)(&v191[v190], v338, v366);
          (*(v189 + 56))(v191, 0, 1, v188);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          (*v331)(v178, v185);
          (*v353)(v325, v365);
          (*v347)(v192, v193);
          (*v357)(v333, v370);
          v68 = v356;
          v72 = v360;
          goto LABEL_53;
        }

        v232 = *v187;
        v233 = v187 + *(v188 + 48);
        v234 = v291;
        v235 = v366;
        (*v293)(v291, v233, v366);
        v236 = v290;
        v237 = v360;
        Array.subscript.getter();
        v238 = swift_getEnumCaseMultiPayload();
        v68 = v356;
        if (v238 != 3)
        {
          v285 = *v347;
          v286 = v370;
          (*v347)(v234, v235);
          (*v331)(v320, AssociatedTypeWitness);
          (*v353)(v325, v365);
          v285(v338, v235);
          v6 = v368;
          (*v357)(v333, v286);
          (*v339)(v236, v237);
          v72 = v237;
LABEL_32:
          v91 = v369;
          v90 = v364;
          v98 = v372;
LABEL_54:
          v95 = v359;
          v96 = __OFADD__(v98, 1);
          v97 = (v98 + 1);
          if (v96)
          {
            goto LABEL_61;
          }

          goto LABEL_7;
        }

        v362 = *v357;
        v362(v236, v370);
        v239 = *v301;
        v327 = v232;
        v240 = v234;
        v241 = AssociatedTypeWitness;
        v239(v312, v320, AssociatedTypeWitness);
        (*(v189 + 56))(v304, 1, 1, v188);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v242 = v6;
        v243 = *(swift_getTupleTypeMetadata2() + 48);
        v244 = *v300;
        v245 = v352;
        v246 = v240;
        (*v300)(v352, v240, v366);
        v247 = v338;
        v244(&v245[v243], v338, v366);
        v248 = v366;
        swift_storeEnumTagMultiPayload();
        Array._makeMutableAndUnique()();
        v249 = *v242;
        v250 = v327;
        Array._checkSubscript_mutating(_:)(v327);
        v251 = *v347;
        (*v347)(v246, v248);
        (*v331)(v320, v241);
        (*v353)(v325, v365);
        v251(v247, v248);
        v362(v333, v370);
        (*(v355 + 40))(v249 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v250, v245, v237);
        v159 = v372 - 1;
        if (__OFSUB__(v372, 1))
        {
          goto LABEL_66;
        }

        v72 = v237;
LABEL_46:
        v6 = v368;
LABEL_47:
        v91 = v369;
        v90 = v364;
        goto LABEL_59;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v123 = v68;
        v124 = v366;
        v125 = swift_getTupleTypeMetadata2();
        v126 = *v347;
        v127 = v371;
        (*v347)(&v371[*(v125 + 48)], v124);
        v128 = v124;
        v68 = v123;
        v126(v127, v128);
        v6 = v368;
      }

      else
      {
        (*v339)(v371, v72);
      }

      v90 = v364;
      v96 = __OFADD__(v98, 1);
      v97 = (v98 + 1);
      if (v96)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v369 = v91;
      v362 = v101;
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_68;
        }

        v129 = v366;
        v130 = &v371[*(v366 + 48)];
        v131 = *v130;
        v132 = *(v130 + 1);
        v133 = v130[16];
        (*v95)(v351);
        v134 = &v340[*(v129 + 48)];
        (*v349)();
        *v134 = v131;
        *(v134 + 1) = v132;
        v134[16] = v133;
        v136 = type metadata accessor for CountingIndexListDataSource(0, v343, v344, v135);
        v137 = v334;
        CountingIndexListDataSource.sectionIDs.getter(v136, v334);
        v138 = v324;
        v139 = v335;
        CountingIndexCollection.subscript.getter();
        v140 = v351;
        (*v330)(v137, v139);
        v141 = v313;
        CountingIndexListDataSource.rowIDs(forSectionAt:)(v140, v136, v313);
        v375 = v131;
        v376 = v132;
        LOBYTE(v377) = v133;
        v142 = v319;
        v143 = v314;
        CountingIndexCollection.subscript.getter();
        (*v305)(v141, v143);
        v6 = v368;
        v144 = v368[3];
        v145 = v365;
        v146 = swift_getAssociatedConformanceWitness();
        v147 = v310;
        v148 = v144;
        v149 = AssociatedConformanceWitness;
        MEMORY[0x18D00C560](v138, v148, v145, AssociatedConformanceWitness, v146);
        if ((*(*(v149 - 8) + 48))(v147, 1, v149) != 1)
        {
          (*v331)(v142, AssociatedTypeWitness);
          (*v353)(v138, v145);
          (*v347)(v340, v366);
          (*v357)(v140, v370);
          (*v346)(v147, v348);
          v68 = v356;
          v72 = v360;
          goto LABEL_32;
        }

        (*v346)(v147, v348);
        v150 = v6[4];
        v151 = AssociatedTypeWitness;
        v152 = swift_getAssociatedConformanceWitness();
        v153 = v297;
        v154 = v317;
        MEMORY[0x18D00C560](v142, v150, v151, v317, v152);
        v155 = *(v154 - 8);
        if ((*(v155 + 48))(v153, 1, v154) == 1)
        {
          (*v292)(v153, v299);
          v156 = v145;
          (*v301)(v312, v142, v151);
          v157 = *(v154 + 48);
          v158 = v304;
          v159 = v372;
          *v304 = v372;
          v160 = v366;
          (*v300)(&v158[v157], v340, v366);
          (*(v155 + 56))(v158, 0, 1, v154);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          (*v331)(v142, v151);
          v161 = v156;
          v6 = v368;
          (*v353)(v324, v161);
          (*v347)(v340, v160);
          (*v357)(v351, v370);
          v72 = v360;
          goto LABEL_47;
        }

        v252 = *v153;
        v253 = v153 + *(v154 + 48);
        v254 = v295;
        v255 = v366;
        (*v293)(v295, v253, v366);
        v256 = v289;
        v257 = v360;
        Array.subscript.getter();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v362 = *v357;
          v362(v256, v370);
          v258 = *v301;
          v327 = v252;
          v259 = v319;
          v260 = AssociatedTypeWitness;
          v258(v312, v319, AssociatedTypeWitness);
          (*(v155 + 56))(v304, 1, 1, v154);
          type metadata accessor for Dictionary();
          v261 = v295;
          Dictionary.subscript.setter();
          v262 = v6;
          v263 = *(swift_getTupleTypeMetadata2() + 48);
          v264 = *v300;
          v265 = v352;
          v266 = v340;
          (*v300)(v352, v340, v366);
          v264(&v265[v263], v261, v366);
          swift_storeEnumTagMultiPayload();
          Array._makeMutableAndUnique()();
          v267 = *v262;
          v268 = v327;
          Array._checkSubscript_mutating(_:)(v327);
          v269 = *v347;
          v270 = v261;
          v271 = v366;
          (*v347)(v270, v366);
          (*v331)(v259, v260);
          (*v353)(v324, v365);
          v269(v266, v271);
          v362(v351, v370);
          (*(v355 + 40))(v267 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v268, v265, v257);
          v159 = v372 - 1;
          if (__OFSUB__(v372, 1))
          {
            goto LABEL_67;
          }

          v72 = v257;
          goto LABEL_46;
        }

        v287 = *v347;
        (*v347)(v254, v255);
        (*v331)(v319, AssociatedTypeWitness);
        (*v353)(v324, v145);
        v287(v340, v255);
        v6 = v368;
        (*v357)(v351, v370);
        (*v339)(v256, v257);
        v72 = v257;
        v91 = v369;
        v90 = v364;
        v159 = v372;
LABEL_59:
        v95 = v359;
        v68 = v356;
        v96 = __OFADD__(v159, 1);
        v97 = v159 + 1;
        if (v96)
        {
          goto LABEL_61;
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload)
      {
        v194 = *v95;
        v195 = v323;
        v196 = v370;
        (*v95)(v323, v371, v370);
        v198 = type metadata accessor for CountingIndexListDataSource(0, v361, v363, v197);
        v199 = v336;
        CountingIndexListDataSource.sectionIDs.getter(v198, v336);
        v200 = v328;
        v201 = v337;
        CountingIndexCollection.subscript.getter();
        (*v332)(v199, v201);
        v202 = v368[3];
        v203 = v200;
        v204 = v365;
        v205 = swift_getAssociatedConformanceWitness();
        v206 = v309;
        v207 = v200;
        v208 = AssociatedConformanceWitness;
        MEMORY[0x18D00C560](v207, v202, v204, AssociatedConformanceWitness, v205);
        v209 = *(v208 - 8);
        if ((*(v209 + 48))(v206, 1, v208) == 1)
        {
          (*v346)(v206, v348);
          (*v318)(v321, v203, v204);
          v210 = AssociatedConformanceWitness;
          v211 = *(AssociatedConformanceWitness + 48);
          v212 = v322;
          v213 = v372;
          *v322 = v372;
          (*v349)(v212 + v211, v195, v196);
          (*(v209 + 56))(v212, 0, 1, v210);
          type metadata accessor for Dictionary();
          v214 = v368;
          Dictionary.subscript.setter();
          (*v353)(v203, v204);
          (*v357)(v195, v196);
          v68 = v356;
          v95 = v359;
          v72 = v360;
          v91 = v369;
          v90 = v364;
          v6 = v214;
          v97 = v213 + 1;
          if (__OFADD__(v213, 1))
          {
            goto LABEL_61;
          }

          goto LABEL_7;
        }

        v228 = *v206;
        v229 = v302;
        v95 = v359;
        (v194)(v302, v206 + *(AssociatedConformanceWitness + 48), v196);
        v230 = v294;
        v72 = v360;
        Array.subscript.getter();
        if (swift_getEnumCaseMultiPayload())
        {
          v231 = *v357;
          (*v357)(v229, v196);
          (*v353)(v328, v365);
          v231(v323, v196);
          (*v339)(v230, v72);
          v68 = v356;
          goto LABEL_49;
        }

        v275 = v355;
        (*(v355 + 8))(v230, v72);
        v276 = v196;
        (*v318)(v321, v328, v365);
        (*(v209 + 56))(v322, 1, 1, AssociatedConformanceWitness);
        type metadata accessor for Dictionary();
        v6 = v368;
        Dictionary.subscript.setter();
        v277 = *(swift_getTupleTypeMetadata2() + 48);
        v278 = *v349;
        v279 = v352;
        v280 = v302;
        (*v349)(v352, v302, v276);
        v281 = v323;
        (v278)(&v279[v277], v323, v276);
        v72 = v360;
        swift_storeEnumTagMultiPayload();
        v282 = v358;
        Array._makeMutableAndUnique()();
        v283 = *v6;
        Array._checkSubscript_mutating(_:)(v228);
        (*(v275 + 40))(&v283[((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v228], v279, v72);
        v375 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v341, v280, v342, v281, v361, v343, v363, v344);
        swift_getWitnessTable(MEMORY[0x1E69E6328], v282);
        Array.append<A>(contentsOf:)();
        v284 = *v357;
        (*v357)(v280, v276);
        (*v353)(v328, v365);
        v284(v281, v276);
        v98 = (v372 - 1);
        v68 = v356;
        if (__OFSUB__(v372, 1))
        {
          goto LABEL_65;
        }

LABEL_53:
        v91 = v369;
        v90 = v364;
        goto LABEL_54;
      }

      v103 = *v95;
      (*v95)(v68, v371, v370);
      v105 = type metadata accessor for CountingIndexListDataSource(0, v343, v344, v104);
      v106 = v334;
      CountingIndexListDataSource.sectionIDs.getter(v105, v334);
      v107 = v329;
      v108 = v335;
      CountingIndexCollection.subscript.getter();
      (*v330)(v106, v108);
      v6 = v368;
      v109 = v368[3];
      v110 = v365;
      v111 = swift_getAssociatedConformanceWitness();
      v112 = v308;
      v113 = v109;
      v114 = v107;
      v115 = v68;
      v116 = AssociatedConformanceWitness;
      MEMORY[0x18D00C560](v107, v113, v110, AssociatedConformanceWitness, v111);
      v117 = *(v116 - 8);
      if ((*(v117 + 48))(v112, 1, v116) == 1)
      {
        (*v346)(v112, v348);
        (*v318)(v321, v114, v110);
        v118 = AssociatedConformanceWitness;
        v119 = *(AssociatedConformanceWitness + 48);
        v120 = v322;
        *v322 = v98;
        v121 = v115;
        v122 = v370;
        (*v349)(v120 + v119, v121, v370);
        (*(v117 + 56))(v120, 0, 1, v118);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        (*v353)(v114, v110);
        v68 = v356;
        (*v357)(v356, v122);
        v72 = v360;
        goto LABEL_53;
      }

      v215 = *v112;
      v216 = v303;
      v95 = v359;
      (v103)(v303, v112 + *(AssociatedConformanceWitness + 48), v370);
      v217 = v296;
      v72 = v360;
      Array.subscript.getter();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v272 = *v357;
        v273 = v216;
        v274 = v370;
        (*v357)(v273, v370);
        (*v353)(v329, v365);
        v68 = v356;
        v272(v356, v274);
        (*v339)(v217, v72);
LABEL_49:
        v6 = v368;
        v91 = v369;
        v90 = v364;
        v97 = v372 + 1;
        if (__OFADD__(v372, 1))
        {
          goto LABEL_61;
        }

        goto LABEL_7;
      }

      v218 = v355;
      (*(v355 + 8))(v217, v72);
      (*v318)(v321, v329, v365);
      (*(v117 + 56))(v322, 1, 1, AssociatedConformanceWitness);
      type metadata accessor for Dictionary();
      v6 = v368;
      Dictionary.subscript.setter();
      v219 = v370;
      v220 = *(swift_getTupleTypeMetadata2() + 48);
      v221 = *v349;
      v222 = v352;
      v223 = v356;
      (*v349)(v352, v356, v219);
      v224 = v303;
      (v221)(&v222[v220], v303, v219);
      v72 = v360;
      swift_storeEnumTagMultiPayload();
      v225 = v358;
      Array._makeMutableAndUnique()();
      v226 = *v6;
      Array._checkSubscript_mutating(_:)(v215);
      (*(v218 + 40))(&v226[((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v215], v222, v72);
      v375 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v341, v223, v342, v224, v361, v343, v363, v344);
      swift_getWitnessTable(MEMORY[0x1E69E6328], v225);
      Array.append<A>(contentsOf:)();
      v227 = *v357;
      (*v357)(v224, v219);
      (*v353)(v329, v365);
      v227(v223, v219);
      if (__OFSUB__(v372, 1))
      {
        goto LABEL_63;
      }

      v91 = v369;
      v90 = v364;
      v95 = v359;
      v68 = v223;
      v97 = v372;
      if (__OFADD__(v372 - 1, 1))
      {
LABEL_61:
        __break(1u);
        break;
      }
    }

LABEL_7:
    v372 = v97;
    if (v90 == ++v91)
    {
      goto LABEL_2;
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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *ListCoreBatchUpdates.formResult<A>(_:)(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
  v61 = v10;
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for IndexPath();
  v12 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v54 - v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[4];
  v72 = a2;
  v25 = v22;
  ListCoreBatchUpdates.resetAll()();
  v78 = v20;
  v79 = v21;
  v80 = v25;
  v81 = v23;
  v82 = v24;
  v83 = 0;
  v27 = type metadata accessor for ListBatchUpdates(0, a3, a4, v26);

  if (!ListBatchUpdates.endIndex.getter(v27))
  {
LABEL_36:
  }

  v28 = 0;
  v63 = v12;
  v67 = (v12 + 32);
  v70 = v21;
  v71 = v20;
  v69 = v25;
  v57 = v23;
  v56 = v24;
  v55 = v27;
  while (1)
  {
    v73 = v20;
    v74 = v21;
    v75 = v25;
    v76 = v23;
    v77 = v24;
    result = ListBatchUpdates.subscript.getter(v28, &v84);
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v87 <= 2u)
    {
      if (!v87)
      {
        v47 = v84;
LABEL_35:
        IndexSet.insert(_:)(v47);
        goto LABEL_5;
      }

      if (v87 == 1)
      {
        goto LABEL_34;
      }

      v62 = v84;
      v31 = v72[10];
      v32 = *(v5 + v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v49 = *(v32 + 2);
      v48 = *(v32 + 3);
      v50 = v62;
      if (v49 >= v48 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v32);
        v50 = v62;
        v32 = v53;
      }

      *(v32 + 2) = v49 + 1;
      *&v32[16 * v49 + 32] = v50;
    }

    else if (v87 > 4u)
    {
      if (v87 != 5)
      {
LABEL_34:
        v47 = v84;
        goto LABEL_35;
      }

      v36 = v85;
      v35 = v86;
      v37 = v5;
      v38 = v58;
      MEMORY[0x18D000680](*(&v84 + 1), v84);
      v39 = v59;
      MEMORY[0x18D000680](v35, v36);
      v40 = *(v61 + 48);
      v41 = *v67;
      v42 = v66;
      v43 = v38;
      v5 = v37;
      v44 = v68;
      (*v67)(v66, v43, v68);
      v41(v42 + v40, v39, v44);
      v31 = v72[13];
      v32 = *(v37 + v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v46 = *(v32 + 2);
      v45 = *(v32 + 3);
      v23 = v57;
      v24 = v56;
      v27 = v55;
      if (v46 >= v45 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v32);
      }

      *(v32 + 2) = v46 + 1;
      outlined init with take of (source: IndexPath, destination: IndexPath)?(v66, &v32[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46], type metadata accessor for (source: IndexPath, destination: IndexPath));
    }

    else if (v87 == 3)
    {
      MEMORY[0x18D000680](*(&v84 + 1), v84);
      v31 = v72[11];
      v32 = *(v5 + v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      (*(v63 + 32))(&v32[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v34], v64, v68);
    }

    else
    {
      MEMORY[0x18D000680](*(&v84 + 1), v84);
      v31 = v72[12];
      v32 = *(v5 + v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v52 = *(v32 + 2);
      v51 = *(v32 + 3);
      if (v52 >= v51 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v32);
      }

      *(v32 + 2) = v52 + 1;
      (*(v63 + 32))(&v32[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v52], v65, v68);
    }

    *(v5 + v31) = v32;
    v21 = v70;
    v20 = v71;
    v25 = v69;
LABEL_5:
    ++v28;
    if (v30 == ListBatchUpdates.endIndex.getter(v27))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for (source: IndexPath, destination: IndexPath)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath))
  {
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath));
    }
  }
}

uint64_t ListBatchUpdates.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for CountingIndex();
  v4 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v5 = MEMORY[0x1E697E0E8];
  v9[0] = v3;
  v9[1] = v6;
  v9[2] = swift_getWitnessTable(MEMORY[0x1E697E0E8], v3);
  v9[3] = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v4, v5);
  v7 = type metadata accessor for ListUpdate(0, v9);
  return MEMORY[0x18D00CDE0](v2, v7);
}

uint64_t *assignWithCopy for NavigationDestinationModifier.SeededResolver(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t static ViewDecoders.registerStandard()()
{
  type metadata accessor for ArchivableFactory<ArchivableLinkModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableLinkModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableLinkModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableLinkModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableLinkModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>, "Ax\vb\b\t\t");
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>, "Ax\vb\b\t\t");
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>, "Ax\vb\b\t\t");
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableButtonAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableButtonAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableToggleAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableToggleAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivablePlaybackButtonViewModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivablePlaybackButtonViewModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityActionModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityActionModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<InvalidatableContentModifier>(0);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<InvalidatableContentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<InvalidatableContentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<InvalidatableContentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<InvalidatableContentModifier>, protocol conformance descriptor for ArchivableFactory<A>);

  return static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
}

void type metadata accessor for ArchivableFactory<ArchivableLinkModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableLinkModifier>)
  {
    v4[0] = type metadata accessor for ArchivableLinkModifier(255);
    v4[1] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier, protocol conformance descriptor for ArchivableLinkModifier);
    v4[2] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier, protocol conformance descriptor for ArchivableLinkModifier);
    v4[3] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier, protocol conformance descriptor for ArchivableLinkModifier);
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<ArchivableLinkModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base);
    v6 = type metadata accessor for ArchivableFactory(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>);
    }
  }
}

uint64_t _ArchivedViewStates.init(contentsOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveReader();
    (*(v6 + 16))(v8, a1, v5);
    v9 = FileArchiveReader.__allocating_init(url:)();
    if (!v2)
    {
      _ArchivedViewStates.init(reader:delegate:)(v9, 0, a2);
    }

    return (*(v6 + 8))(a1, v5);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void _ArchivedViewStates.init(reader:delegate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ArchivedViewStates(0);
  v33 = v10[6];
  *(a3 + v33) = 0;
  v11 = v10[7];
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], MEMORY[0x1E697DAC0]);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  v32[1] = v12;
  *(a3 + v11) = v12;
  v13 = v10[8];
  static ViewDecoders.registerStandard()();
  *a3 = a1;
  v32[2] = a2;
  *(a3 + v13) = a2;
  type metadata accessor for JSONDecoder();
  swift_allocObject();

  JSONDecoder.init()();
  v14 = ArchiveReader.endIndex.getter();
  if (ArchiveReader.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = ArchiveReader.endIndex.getter();
  if (v14 < 0 || v15 < v14)
  {
    goto LABEL_19;
  }

  v34 = a3;
  v16 = ArchiveReader.subscript.getter();
  v18 = v17;
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930], MEMORY[0x1E697E940]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    outlined consume of Data._Representation(v16, v18);

LABEL_11:

LABEL_12:

    return;
  }

  outlined consume of Data._Representation(v16, v18);

  v19 = v34;
  v20 = v34 + v10[5];
  outlined init with take of _ArchivedView(v9, v20, MEMORY[0x1E697E930]);
  if (*v20 != 13)
  {

    type metadata accessor for _ArchivedViewStates.Error(0);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates.Error and conformance _ArchivedViewStates.Error, type metadata accessor for _ArchivedViewStates.Error, protocol conformance descriptor for _ArchivedViewStates.Error);
    swift_allocError();
    v22 = v21;
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v22, 1, 2, v23);
    goto LABEL_10;
  }

  if (*(v20 + 24) == 1)
  {
    goto LABEL_12;
  }

  v24 = *(v20 + 16);
  v25 = ArchiveReader.endIndex.getter();
  if ((v25 & 0x8000000000000000) == 0)
  {
    if ((v24 & 0x8000000000000000) == 0 && v24 < v25)
    {
      ArchiveReader.subscript.getter();

      ProtobufDecoder.init(_:)();
      _DisplayList_StableIdentityMap.init(from:)();
      v26 = v35;

      v30 = v36;
      v31 = v33;

      *(v19 + v31) = v30;
      return;
    }

    type metadata accessor for _ArchivedViewStates.Error(0);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates.Error and conformance _ArchivedViewStates.Error, type metadata accessor for _ArchivedViewStates.Error, protocol conformance descriptor for _ArchivedViewStates.Error);
    swift_allocError();
    v28 = v27;
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 56))(v28, 2, 2, v29);
LABEL_10:
    swift_willThrow();

    outlined destroy of _ArchivedView(v20, MEMORY[0x1E697E930]);
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing);
    v6 = type metadata accessor for ArchivableFactory(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>);
    }
  }
}

void type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>)
  {
    v4[0] = &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter;
    v4[1] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    v4[2] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    v4[3] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>);
    }
  }
}

void type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base, &type metadata for ResolvedCircularPlaybackProgressView.Base);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base, &type metadata for ResolvedCircularPlaybackProgressView.Base);
    v6 = type metadata accessor for ArchivableFactory(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableButtonAppIntentModifier>)
  {
    v4[0] = &type metadata for ArchivableButtonAppIntentModifier;
    v4[1] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    v4[2] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    v4[3] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<ArchivableButtonAppIntentModifier>);
    }
  }
}

uint64_t outlined init with take of _ArchivedView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _ArchivedViewStates.auxiliaryData.getter()
{
  if (*v0)
  {
    if (*(v0 + *(type metadata accessor for _ArchivedViewStates(0) + 20) + 40))
    {
      return 0;
    }

    else
    {

      v2 = ArchiveReader.subscript.getter();

      return v2;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *sub_18C063418(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  type metadata accessor for URL?(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_18C063598(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[8];
    goto LABEL_11;
  }

  type metadata accessor for URL?(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[10]];

  return v17(v18, a2, v16);
}

void *initializeWithCopy for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v7[24] = *(a2 + v6 + 24);
  *(v7 + 2) = *(a2 + v6 + 16);
  v7[40] = *(a2 + v6 + 40);
  *(v7 + 4) = *(a2 + v6 + 32);
  *(v7 + 6) = *(a2 + v6 + 48);
  v10 = type metadata accessor for ArchivedViewCore.Metadata();
  v11 = v10[9];
  v12 = type metadata accessor for UUID();
  v19 = *(*(v12 - 8) + 16);

  v19(&v7[v11], &v8[v11], v12);
  v7[v10[10]] = v8[v10[10]];
  v13 = v10[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  v7[v10[12]] = v8[v10[12]];
  v17 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v17) = *(a2 + v17);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableToggleAppIntentModifier>)
  {
    v4[0] = &type metadata for ArchivableToggleAppIntentModifier;
    v4[1] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    v4[2] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    v4[3] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<ArchivableToggleAppIntentModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivablePlaybackButtonViewModifier>)
  {
    v4[0] = type metadata accessor for ArchivablePlaybackButtonViewModifier(255);
    v4[1] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier, protocol conformance descriptor for ArchivablePlaybackButtonViewModifier);
    v4[2] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier, protocol conformance descriptor for ArchivablePlaybackButtonViewModifier);
    v4[3] = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier, protocol conformance descriptor for ArchivablePlaybackButtonViewModifier);
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<ArchivablePlaybackButtonViewModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableAccessibilityActionModifier>)
  {
    v4[0] = &type metadata for ArchivableAccessibilityActionModifier;
    v4[1] = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    v4[2] = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    v4[3] = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<ArchivableAccessibilityActionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory()
{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityViewModifier.Factory, &type metadata for ArchivableAccessibilityViewModifier.Factory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityViewModifier.Factory, &type metadata for ArchivableAccessibilityViewModifier.Factory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityViewModifier.Factory, &type metadata for ArchivableAccessibilityViewModifier.Factory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityViewModifier.Factory, &type metadata for ArchivableAccessibilityViewModifier.Factory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

void type metadata accessor for ArchivableFactory<InvalidatableContentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ArchivableFactory<InvalidatableContentModifier>)
  {
    v4[0] = &type metadata for InvalidatableContentModifier;
    v4[1] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    v4[2] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    v4[3] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    v2 = type metadata accessor for ArchivableFactory(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ArchivableFactory<InvalidatableContentModifier>);
    }
  }
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSbSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, &lazy cache variable for type metadata for UserDefaultLocation<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 3;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

void *_UIHostingView.__allocating_init(rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized _UIHostingView.__allocating_init(rootView:)(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

double destroy for _ArchivedViewStates(void *a1, int *a2)
{

  v4 = a1 + a2[5];

  v5 = *(type metadata accessor for ArchivedViewCore.Metadata() + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);

  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ArchivedViewStates(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*(v3 + *(a3 + 20) + 8) + 16);
  if (*result <= v5 && v4 <= v5)
  {
    return (v4 - *result);
  }

  __break(1u);
  return result;
}

uint64_t makeUserInfo #1 (_:) in _ArchivedViewStates.state(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for ArchiveReader();
  static ArchiveReader.readerKey.getter();
  v27 = v11;
  v26[0] = a2;

  specialized Dictionary.subscript.setter(v26, v10);
  static ArchiveReader.cacheKey.getter();
  v12 = type metadata accessor for _ArchivedViewStates(0);
  v13 = *(a3 + *(v12 + 28));
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], MEMORY[0x1E697DAC0]);
  v27 = v14;
  v26[0] = v13;

  specialized Dictionary.subscript.setter(v26, v10);
  static ArchiveReader.namedImagesKey.getter();
  v15 = type metadata accessor for NamedImage.Cache();
  swift_allocObject();

  v16 = NamedImage.Cache.init(archiveDelegate:)();
  v27 = v15;
  v26[0] = v16;
  specialized Dictionary.subscript.setter(v26, v10);
  static ArchivedViewCore.preferredBundleLanguageKey.getter();
  v17 = a3 + *(v12 + 20);
  v18 = type metadata accessor for ArchivedViewCore.Metadata();
  v19 = (v17 + *(v18 + 44));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = MEMORY[0x1E69E6158];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v26[2] = 0;
  }

  v26[0] = v21;
  v26[1] = v20;
  v27 = v22;

  specialized Dictionary.subscript.setter(v26, v7);
  static ArchivedViewCore.preferredCompositionLanguage.getter();
  v23 = *(v17 + *(v18 + 48));
  type metadata accessor for CTCompositionLanguage(0);
  v27 = v24;
  LOBYTE(v26[0]) = v23;
  return specialized Dictionary.subscript.setter(v26, v10);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, void *), uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v8 = v7;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v33(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (*(v24 + 56) + 32 * v18);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v26 = v32;

  return v26(a1, v25);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), void (*a4)(unint64_t, _BYTE *))
{
  v45 = a4;
  v6 = v4;
  v7 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  a3(0, v10);
  v43 = v7;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v47 = v12;
    v48 = v8;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v9 + 16);
    v41 = v9;
    v44 = (v9 + 32);
    v22 = v14 + 64;
    v42 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v9 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v48);
        v45(*(v13 + 56) + 32 * v27, v49);
      }

      else
      {
        (*v40)(v47, v29, v48);
        outlined init with copy of Any(*(v13 + 56) + 32 * v27, v49);
      }

      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v9 = v41;
        v13 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v9 = v41;
      v13 = v42;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v44)((*(v15 + 48) + v46 * v23), v47, v48);
      v45(v49, (*(v15 + 56) + 32 * v23));
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
}

void type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Any>)
  {
    type metadata accessor for CodingUserInfoKey();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Any>);
    }
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for CodingUserInfoKey();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 32 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t ProtobufDecoder.decodeVarint()()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = v2 + 1;
  if (v1 < (v2 + 1))
  {
LABEL_2:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = *v2;
  result = v5 & 0x7F;
  if (v5 < 0)
  {
    v7 = 7;
    while (1)
    {
      v6 = v3 + 1;
      if (v1 < (v3 + 1))
      {
        break;
      }

      v8 = *v3;
      v9 = (*v3 & 0x7F) << v7;
      if (v7 > 0x3F)
      {
        v9 = 0;
      }

      result |= v9;
      v7 += 7;
      v3 = v6;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_10;
      }
    }

    *(v0 + 8) = v3;
    goto LABEL_2;
  }

  v6 = v3;
LABEL_10:
  *(v0 + 8) = v6;
  return result;
}

void outlined copy of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRetain();
        break;
      case 4u:
        v6 = a1;
        break;
    }
  }
}

double outlined consume of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:

        break;
    }
  }

  return result;
}

void specialized closure #1 in _UIHostingView._rendererConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = specialized _UIHostingView.base.getter();
  v3 = UIHostingViewBase.viewGraph.getter();

  v4 = *(v3 + 96);

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
}

void specialized closure #1 in _UIHostingView._rendererConfiguration.setter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  DisplayList.ViewRenderer.configuration.setter();
}

void partial apply for specialized closure #1 in _UIHostingView._rendererConfiguration.setter()
{
  specialized closure #1 in _UIHostingView._rendererConfiguration.setter(*(v0 + 32), *(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 48));
}

{
  partial apply for specialized closure #1 in _UIHostingView._rendererConfiguration.setter();
}

uint64_t (*protocol witness for _UIHostingViewable._rendererConfiguration.modify in conformance <> UIHostingController<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = specialized UIHostingController._rendererConfiguration.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*specialized UIHostingController._rendererConfiguration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for UIHostingController.host;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v6;
  static Update.locked<A>(_:)();
  *(v4 + 48) = 0;

  return UIHostingController._rendererConfiguration.modifyspecialized ;
}

void UIHostingController._rendererConfiguration.modifyspecialized (void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 4) + *(*a1 + 5));
  if (a2)
  {

    v4 = v3;
    static Update.locked<A>(_:)();
  }

  else
  {
    v5 = v3;
    static Update.locked<A>(_:)();
  }

  free(v2);
}

uint64_t protocol witness for _UIHostingViewable._rendererObject.getter in conformance <> UIHostingController<A>()
{
  v3 = *(v0 + direct field offset for UIHostingController.host);
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Swift.AnyObject?, MEMORY[0x1E69E7C98] + 8);
  v1 = v3;
  static Update.locked<A>(_:)();

  return v4;
}

void specialized closure #1 in _UIHostingView._rendererObject.getter(uint64_t *a2@<X8>)
{
  v3 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  v4 = DisplayList.ViewRenderer.exportedObject(rootView:)();

  *a2 = v4;
}

uint64_t initializeWithCopy for RBDrawingView.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

double destroy for RBDrawingView.State(uint64_t a1)
{
  outlined consume of PlatformDrawableContent.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));

  return result;
}