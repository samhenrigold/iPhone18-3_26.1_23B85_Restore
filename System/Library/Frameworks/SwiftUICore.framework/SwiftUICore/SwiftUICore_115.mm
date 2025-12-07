unint64_t implicit closure #2 in implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (*(*a2 + 173) & 1) != 0 || (*(*a2 + 174))
  {
    v5 = 1;
    v6 = 0uLL;
LABEL_7:
    *a4 = v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a3 + 104);
    if (*(v7 + 16) > result)
    {
      v5 = 0;
      v8 = v7 + 32 * result;
      v4 = *(v8 + 32);
      v6 = *(v8 + 48);
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(uint64_t a3@<X8>)
{
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v5 = v4;
  lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  MEMORY[0x193ABEF60](v11, v5, v6);
  type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>(0);
  lazy protocol witness table accessor for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>();
  Sequence.min(by:)();

  v7 = v12;
  if (v12)
  {
    v8 = v11[1];
    v9 = v13;
    *(a3 + 24) = v14;
    v10 = v16;
    *(a3 + 40) = v15;
    *(a3 + 56) = v10;
    *(a3 + 72) = v17;
    *(a3 + 8) = v9;
  }

  else
  {
    v8 = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
  }

  *a3 = v7;
  *(a3 + 80) = v8;
}

void LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(uint64_t *a1, unint64_t a2, unsigned int a3, const void *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(*a5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *a1;
    v39 = a1 + 1;
    v10 = v6 + 32;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        __break(1u);
        return;
      }

      v11 = (v10 + 80 * v8);
      v60 = *v11;
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[4];
      v63 = v11[3];
      v64[0] = v14;
      v61 = v12;
      v62 = v13;
      if (*(v9 + 173) != 1 && *(v9 + 174) != 1 && *(v9 + 144) == *(v60 + 144) && *(v9 + 148) == *(v60 + 148))
      {
        v15 = *(v9 + 152);
        v16 = *(v60 + 152);
        v17 = *(v15 + 16);
        if (v17 == *(v16 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        return;
      }
    }

    if (!v17 || v15 == v16)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v60, __dst);
    }

    else
    {
      v45 = v6;
      v46 = v9;
      v43 = v10;
      v44 = v7;
      outlined init with copy of _LazyLayout_PlacedSubview(&v60, __dst);

      v18 = 0;
      do
      {
        v20 = *(v15 + v18 + 32);
        v19 = *(v15 + v18 + 40);
        v21 = *(v15 + v18 + 48);
        v22 = *(v15 + v18 + 52);
        v23 = *(v16 + v18 + 40);
        v24 = *(v16 + v18 + 48);
        v25 = *(v16 + v18 + 52);
        if (v20 != *(v16 + v18 + 32) && (v26 = *(*v20 + 112), v50 = *(v15 + v18 + 48), v51 = *(v15 + v18 + 52), v49 = *(v16 + v18 + 52), v48 = *(v15 + v18 + 40), v47 = *(v16 + v18 + 48), , v27 = , LOBYTE(v26) = v26(v27), , , v24 = v47, v19 = v48, v25 = v49, v21 = v50, v22 = v51, (v26 & 1) == 0) || v19 != v23 || v21 != v24 || v22 != v25)
        {

          outlined destroy of _LazyLayout_PlacedSubview(&v60);
          v7 = v44;
          v6 = v45;
          v10 = v43;
          v9 = v46;
          goto LABEL_4;
        }

        v18 += 24;
        --v17;
      }

      while (v17);

      v9 = v46;
    }

    memcpy(__dst, __src, 0x1D9uLL);
    v28 = *v39;
    v55 = *(v39 + 1);
    v29 = *(v39 + 3);
    v56 = *(v39 + 2);
    v57 = v29;
    v30 = v39[8];
    v53 = v9;
    v58 = v30;
    v54 = v28;
    v31 = *(&v62 + 1);
    v33 = v63;
    v32 = *v64;
    _LazyLayout_PlacedSubview.size.getter();
    v36 = *(&v33 + 1) - v31 * v34;
    v37 = v32 - *&v33 * v35;
    v52[2] = v62;
    v52[3] = v63;
    v52[4] = v64[0];
    v52[0] = v60;
    v52[1] = v61;
    _LazyLayout_PlacedSubview.size.getter();
    memcpy(v52, a4, 0x129uLL);
    LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v36, v37, &v53, a2, a3, v52);
    outlined destroy of _LazyLayout_PlacedSubview(&v60);
  }
}

uint64_t LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(__int128 *a1, unint64_t a2, unsigned int a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a2;
  v11 = *(a6 + 16);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v36 - v17;
  v19 = a1[3];
  v55 = a1[2];
  v56 = v19;
  v57 = a1[4];
  v20 = *a1;
  v54 = a1[1];
  v53 = v20;
  memcpy(v58, a4, sizeof(v58));
  v39 = *v6;
  v60 = *(v6 + 1);
  v21 = v6[5];
  memcpy(v59, v6 + 6, sizeof(v59));
  type metadata accessor for LazyLayoutViewCache();
  v22 = *(*AGGraphGetValue() + 280);
  result = AGGraphGetValue();
  if ((v22 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v37 = a3;
  v24 = *(*result + 288);
  v49 = 0;
  v50 = 1;
  v25 = 3;
  if (v22 > 3)
  {
    v25 = v22;
  }

  v48 = v25 - 3;
  v47 = v25 - 3;
  v26 = v24 + 3;
  if (__OFADD__(v24, 3))
  {
    __break(1u);
    goto LABEL_13;
  }

  v36[1] = a6;
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v27 = result;

  LazyLayoutViewCache.subviews(context:)(v27, v46);

  MEMORY[0x1EEE9AC00](v28);
  v36[-4] = &v47;
  v36[-3] = &v53;
  v36[-2] = &v49;
  v36[-1] = v26;
  v45[0] = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v48, v45, partial apply for closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:), &v36[-6]);
  if (v50)
  {
LABEL_9:
    outlined destroy of _LazyLayout_Subviews(v46);
    return 0;
  }

  v36[0] = v49;
  v29 = *(**AGGraphGetValue() + 400);

  v30 = v42;
  v29(v42, v42);

  v31 = v39;
  Value = AGGraphGetValue();
  v33 = v40;
  (*(v40 + 16))(v13, Value, v11);
  memcpy(v45, v58, 0x129uLL);
  (*(v15 + 112))(v51, v36[0], v46, v45, v18, v11, v15);
  (*(v33 + 8))(v13, v11);
  if (v52)
  {
    (*(v41 + 8))(v18, v30);
    goto LABEL_9;
  }

  LODWORD(v45[0]) = v31;
  *(v45 + 4) = v60;
  HIDWORD(v45[2]) = v21;
  memcpy(&v45[3], v59, 0x1C1uLL);
  v44[2] = v55;
  v44[3] = v56;
  v44[4] = v57;
  v44[0] = v53;
  v44[1] = v54;
  memcpy(v43, v58, 0x129uLL);
  LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v51[0], v51[1], v44, v38, v37, v43);
  v35 = v34;
  (*(v41 + 8))(v18, v30);
  outlined destroy of _LazyLayout_Subviews(v46);
  return v35;
}

void closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 64) == *(*a4 + 144) && *(a1 + 68) == *(*a4 + 148))
  {
    v11 = *(*a4 + 152);
    v12 = *(a1 + 72);

    v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v12, v11);

    if (v13)
    {
      *a5 = *a3;
      *(a5 + 8) = 0;
      *a2 = 1;
    }
  }

  v14 = *a3;
  if (*a3 >= a6)
  {
    *a2 = 1;
  }

  *a3 = v14 + 1;
}

void LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(double a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5, double *a6)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 104);
  if (*(v7 + 16) <= a4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7 + 32 * a4;
  v9 = a1 - a6[31] - (*(v8 + 32) - *(v6 + 272)) - (a6[2] - *(v6 + 384));
  v10 = a2 - a6[32] - (*(v8 + 40) - *(v6 + 280)) - (a6[3] - *(v6 + 392));
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    v9 = 0.0;
  }

  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v10 = 0.0;
  }

  if (v9 != 0.0 || v10 != 0.0)
  {
    LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
  }
}

unint64_t closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a2 + 16) > result)
  {
    v4 = (*a2 + 80 * result);
    v6 = v4[5];
    v5 = v4[6];
    v7 = v4[3];
    v29 = v4[4];
    v30 = v6;
    v31 = v5;
    v27 = v4[2];
    v28 = v7;
    v8 = *(&v29 + 1);
    v10 = v6;
    v9 = *&v5;
    v11 = v4[5];
    v24 = v4[4];
    v25 = v11;
    v26 = v4[6];
    v12 = v4[3];
    v22 = v4[2];
    v23 = v12;
    outlined init with copy of _LazyLayout_PlacedSubview(&v27, &v21);
    _LazyLayout_PlacedSubview.size.getter();
    v15 = *(&v10 + 1) - v8 * v13;
    v16 = v9 - *&v10 * v14;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    _LazyLayout_PlacedSubview.size.getter();
    v18 = v17;
    v20 = v19;
    result = outlined destroy of _LazyLayout_PlacedSubview(&v27);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(uint64_t *a1, uint64_t *a2, void (*a3)(float64x2_t *__return_ptr, uint64_t, __int128 *))
{
  v5 = *a1;
  v6 = *(a1 + 3);
  v7 = *(a1 + 7);
  v18 = *(a1 + 5);
  v19 = v7;
  v20 = *(a1 + 9);
  v16 = *(a1 + 1);
  v17 = v6;
  v8 = *a2;
  a3(v21, v5, &v16);
  if (v22 & 1) != 0 || (v9 = *(a2 + 3), v10 = *(a2 + 7), v18 = *(a2 + 5), v19 = v10, v20 = *(a2 + 9), v11 = *(a2 + 1), v17 = v9, v15 = v21[0], v16 = v11, a3(v23, v8, &v16), (v24))
  {
    v12 = 0;
  }

  else
  {
    v13 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v23[0], v23[0])));
    v12 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v13, 1), v13)).u8[0];
  }

  return v12 & 1;
}

BOOL closure #1 in PositionState.mainID<A>(subviews:context:layout:)(double *a1, double *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = *a2;
  v9 = a2[5];
  v10 = a2[6];
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  if ((*(*a1 + 173) & 1) != 0 || *(*a1 + 174) == 1)
  {
    v13 = INFINITY;
    if (*(*&v8 + 173))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = *(a2 + 8);
    v44 = *(a2 + 7);
    v45 = *(a2 + 6);
    v46 = *(a2 + 5);
    _LazyLayout_PlacedSubview.size.getter();
    v16 = v6 - v4 * v14;
    v17 = v7 - v5 * v15;
    _LazyLayout_PlacedSubview.size.getter();
    v19 = v18;
    v21 = v20;
    swift_beginAccess();
    v48.origin.x = v16;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    v49 = CGRectIntersection(v48, *(a3 + 16));
    if (CGRectIsEmpty(v49))
    {
      _LazyLayout_PlacedSubview.size.getter();
      v24 = v6 - v4 * v22;
      v25 = v7 - v5 * v23;
      _LazyLayout_PlacedSubview.size.getter();
      v13 = sqrt(v24 * v24 + v25 * v25);
    }

    else
    {
      v13 = INFINITY;
    }

    v9 = *&v46;
    v11 = v44;
    v10 = *&v45;
    v12 = v43;
    if (*(*&v8 + 173))
    {
      goto LABEL_10;
    }
  }

  if (*(*&v8 + 174) == 1)
  {
LABEL_10:
    v26 = INFINITY;
    return v13 < v26;
  }

  v27 = *&v11;
  v28 = *&v12;
  _LazyLayout_PlacedSubview.size.getter();
  v31 = v27 - v9 * v29;
  v32 = v28 - v10 * v30;
  _LazyLayout_PlacedSubview.size.getter();
  v47 = v9;
  v34 = v33;
  v35 = v10;
  v37 = v36;
  swift_beginAccess();
  v50.origin.x = v31;
  v50.origin.y = v32;
  v50.size.width = v34;
  v50.size.height = v37;
  v51 = CGRectIntersection(v50, *(a3 + 16));
  if (CGRectIsEmpty(v51))
  {
    _LazyLayout_PlacedSubview.size.getter();
    v40 = v27 - v47 * v38;
    v41 = v28 - v35 * v39;
    _LazyLayout_PlacedSubview.size.getter();
    v26 = sqrt(v40 * v40 + v41 * v41);
  }

  else
  {
    v26 = INFINITY;
  }

  return v13 < v26;
}

double closure #2 in PositionState.mainID<A>(subviews:context:layout:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  *a2 = *(v2 + 144);
  a2[1] = v3;

  return result;
}

char *commitSection #1 <A>(_:) in Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(char *result, unint64_t a2, char **a3, CGFloat *a4, char a5)
{
  v15 = result;
  if (!a2 || (result[40] & 1) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(result + 4);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v7 >= *(*a3 + 2))
  {
    goto LABEL_56;
  }

  v6 = a2;
  v16 = &(*a3)[80 * v7];
  v38 = *(v16 + 40);
  v39 = *(v16 + 56);
  v8 = *(v16 + 72);
  v9 = *(v16 + 80);
  v10 = *(v16 + 88);
  v11 = *(v16 + 96);
  _LazyLayout_PlacedSubview.size.getter();
  v18 = v17;
  v20 = v19;
  if (Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) && (*(v15 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21 = *(v15 + 1) - (1.0 - v8) * v18;
    v42.origin.x = *a4;
    v42.origin.y = a4[1];
    v42.size.width = a4[8];
    v42.size.height = a4[9];
    v22 = v8 * v18 + CGRectGetMinX(v42);
    if (v22 >= v21)
    {
      v22 = v21;
    }

    if (v22 <= v10)
    {
      v22 = v10;
    }

    if (v21 >= v22)
    {
      v10 = v22;
    }

    else
    {
      v10 = v21;
    }
  }

  if (Axis.Set.contains(_:)(SwiftUI_Axis_vertical) && (*(v15 + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v23 = *(v15 + 3) - (1.0 - v9) * v20;
    v43.origin.x = *a4;
    v43.origin.y = a4[1];
    v43.size.width = a4[8];
    v43.size.height = a4[9];
    v24 = v9 * v20 + CGRectGetMinY(v43);
    if (v24 >= v23)
    {
      v24 = v23;
    }

    if (v24 <= v11)
    {
      v24 = v11;
    }

    if (v23 >= v24)
    {
      v11 = v24;
    }

    else
    {
      v11 = v23;
    }
  }

  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (v7 >= *(v5 + 2))
    {
      __break(1u);
LABEL_60:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
      *a3 = result;
      goto LABEL_51;
    }

    v25 = &v5[80 * v7];
    *(v25 + 40) = v38;
    *(v25 + 56) = v39;
    *(v25 + 9) = v8;
    *(v25 + 10) = v9;
    *(v25 + 11) = v10;
    *(v25 + 12) = v11;
LABEL_26:
    if (!a5 || (v15[56] & 1) != 0)
    {
      return result;
    }

    v6 = *(v15 + 6);
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *a3 = result;
  }

  if (v6 >= *(*a3 + 2))
  {
    goto LABEL_57;
  }

  v26 = &(*a3)[80 * v6];
  v40 = *(v26 + 40);
  v41 = *(v26 + 56);
  v8 = *(v26 + 72);
  v9 = *(v26 + 80);
  v10 = *(v26 + 88);
  v11 = *(v26 + 96);
  _LazyLayout_PlacedSubview.size.getter();
  v28 = v27;
  v30 = v29;
  if (Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) && (*v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v31 = v8 * v28 + *v15;
    v44.origin.x = *a4;
    v44.origin.y = a4[1];
    v44.size.width = a4[8];
    v44.size.height = a4[9];
    v32 = CGRectGetMaxX(v44) - (1.0 - v8) * v28;
    if (v31 > v32)
    {
      v32 = v31;
    }

    if (v31 > v10)
    {
      v33 = v31;
    }

    else
    {
      v33 = v10;
    }

    if (v32 >= v33)
    {
      v10 = v33;
    }

    else
    {
      v10 = v32;
    }
  }

  if (Axis.Set.contains(_:)(SwiftUI_Axis_vertical) && (*(v15 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v34 = v9 * v30 + *(v15 + 2);
    v45.origin.x = *a4;
    v45.origin.y = a4[1];
    v45.size.width = a4[8];
    v45.size.height = a4[9];
    v35 = CGRectGetMaxY(v45) - (1.0 - v9) * v30;
    if (v34 > v35)
    {
      v35 = v34;
    }

    if (v34 > v11)
    {
      v36 = v34;
    }

    else
    {
      v36 = v11;
    }

    if (v35 >= v36)
    {
      v11 = v36;
    }

    else
    {
      v11 = v35;
    }
  }

  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_51:
  if (v6 >= *(v5 + 2))
  {
    __break(1u);
  }

  else
  {
    v37 = &v5[80 * v6];
    *(v37 + 40) = v40;
    *(v37 + 56) = v41;
    *(v37 + 9) = v8;
    *(v37 + 10) = v9;
    *(v37 + 11) = v10;
    *(v37 + 12) = v11;
  }

  return result;
}

double specialized thunk for @callee_guaranteed () -> (@unowned PinnedSection)@<D0>(uint64_t a1@<X8>)
{
  result = INFINITY;
  *a1 = xmmword_18DDAB4F0;
  *(a1 + 16) = xmmword_18DDAB4F0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

uint64_t specialized LazySubviewPlacements.logAnchorTranslation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  if (one-time initialization token for scroll != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v7 = __swift_project_value_buffer(v4, static Log.scroll);
  outlined init with copy of Logger?(v7, v6);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return outlined destroy of Logger?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18D018000, v11, v12, "Attempting anchor translation (%s).", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193AC4820](v14, -1, -1);
    MEMORY[0x193AC4820](v13, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t specialized LazySubviewPlacements.logTranslation(_:reason:)(unsigned __int8 a1, double a2, double a3)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (one-time initialization token for scroll != -1)
  {
    v25 = v7;
    swift_once();
    v7 = v25;
  }

  v10 = __swift_project_value_buffer(v7, static Log.scroll);
  outlined init with copy of Logger?(v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return outlined destroy of Logger?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 134218498;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    v18 = 0xD000000000000013;
    *(v16 + 22) = 2080;
    v19 = 0x800000018DD759D0;
    if (a1 == 3)
    {
      v19 = 0x800000018DD759F0;
    }

    else
    {
      v18 = 0xD000000000000015;
    }

    if (a1 == 2)
    {
      v18 = 0x7377656976627573;
      v19 = 0xEF65676E61686320;
    }

    v20 = 0xD000000000000013;
    v21 = 0x800000018DD75A30;
    if (a1)
    {
      v20 = 0xD00000000000001CLL;
      v21 = 0x800000018DD75A10;
    }

    if (a1 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_18D018000, v14, v15, "Adjusting content offset by %f, %f for reason: %s.", v16, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  return (*(v12 + 8))(v9, v11);
}

uint64_t outlined init with copy of Scrollable?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Scrollable?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Scrollable?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Scrollable?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Scrollable?);
    }
  }
}

void type metadata accessor for (_LazyLayout_PlacedSubview, Int)()
{
  if (!lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int));
    }
  }
}

void type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<[_LazyLayout_PlacedSubview]>)
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
    v1 = type metadata accessor for EnumeratedSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnumeratedSequence<[_LazyLayout_PlacedSubview]>);
    }
  }
}

void lazy protocol witness table accessor for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>()
{
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>)
  {
    type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>(255);
    swift_getWitnessTable(MEMORY[0x1E69E6E60], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>);
  }
}

uint64_t getEnumTagSinglePayload for PinnedSection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PinnedSection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t initializeWithCopy for PlacementState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;
  v5 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v5;
  v6 = *(a2 + 6);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 28);

  return a1;
}

uint64_t *assignWithCopy for PlacementState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for PlacementState(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlacementState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t storeEnumTagSinglePayload for PlacementState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);

  return a1;
}

uint64_t assignWithCopy for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);

  v4 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v4;
  return a1;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for PositionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 185))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
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

uint64_t storeEnumTagSinglePayload for PositionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LazyLayoutComputer.Engine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 32);
    v19 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *(v16 + 32) = v18;
    *v16 = v19;
    v20 = *(v17 + 96);
    v22 = *(v17 + 48);
    v21 = *(v17 + 64);
    *(v16 + 80) = *(v17 + 80);
    *(v16 + 96) = v20;
    *(v16 + 48) = v22;
    *(v16 + 64) = v21;
    v24 = *(v17 + 128);
    v23 = *(v17 + 144);
    v25 = *(v17 + 112);
    *(v16 + 160) = *(v17 + 160);
    *(v16 + 128) = v24;
    *(v16 + 144) = v23;
    *(v16 + 112) = v25;
  }

  return v3;
}

uint64_t assignWithCopy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v7 += 23;
  v8 += 23;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = (v7 & 0xFFFFFFFFFFFFFFF8) + 15;

  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  *v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v11[1] = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = ((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  *(v12 + 48) = *(v13 + 48);
  *(v12 + 16) = v15;
  *(v12 + 32) = v16;
  *v12 = v14;
  v17 = *(v13 + 56);
  v18 = *(v13 + 72);
  v19 = *(v13 + 88);
  *(v12 + 104) = *(v13 + 104);
  *(v12 + 88) = v19;
  *(v12 + 72) = v18;
  *(v12 + 56) = v17;
  v20 = *(v13 + 112);
  v21 = *(v13 + 128);
  v22 = *(v13 + 144);
  *(v12 + 160) = *(v13 + 160);
  *(v12 + 128) = v21;
  *(v12 + 144) = v22;
  *(v12 + 112) = v20;
  return a1;
}

uint64_t initializeWithTake for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithTake for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  *(v7 + 4) = v8[1];
  *(v7 + 8) = v8[2];
  *(v7 + 12) = v8[3];
  v7 += 23;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v9 += 15;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = v10;
  v11 = (v7 & 0xFFFFFFFFFFFFFFF8) + 15;

  v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
  *v12 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v12[1] = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 16);
  v17 = *(v14 + 32);
  *(v13 + 48) = *(v14 + 48);
  *(v13 + 16) = v16;
  *(v13 + 32) = v17;
  *v13 = v15;
  v18 = *(v14 + 56);
  v19 = *(v14 + 72);
  v20 = *(v14 + 88);
  *(v13 + 104) = *(v14 + 104);
  *(v13 + 88) = v20;
  *(v13 + 72) = v19;
  *(v13 + 56) = v18;
  v21 = *(v14 + 112);
  v22 = *(v14 + 128);
  v23 = *(v14 + 144);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v22;
  *(v13 + 144) = v23;
  *(v13 + 112) = v21;
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyLayoutComputer.Engine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161;
  v9 = (a2 - v7 + 255) >> 8;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((&a1[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((((((((v6 + 3) & 0xFC) + 23) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) - 95));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for LazyLayoutComputer.Engine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8);
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
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t assignWithCopy for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 420) = *(a2 + 420);
  *(a1 + 424) = *(a2 + 424);

  v4 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v4;
  *(a1 + 452) = *(a2 + 452);
  v5 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v5;
  return a1;
}

uint64_t assignWithTake for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  v7 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v7;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  v8 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v8;
  v9 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v9;
  v10 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v10;
  v11 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v11;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);

  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazySubviewPlacements(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 473))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LazySubviewPlacements(uint64_t result, int a2, int a3)
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
    *(result + 472) = 0;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 473) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 473) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SizingState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for SizingState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for SizingState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for SizingState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for SizingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t GraphicsContext._shapeRenderingMode.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = fabs(*(result + 56));
  v3 = *(result + 56);
  v4 = (~v3 & 0x7FF0000000000000) != 0;
  if ((v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v4 = 1;
  }

  if (v3 >= 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (!v4)
  {
    v5 = 0;
  }

  v6 = 0.0;
  if (v4)
  {
    v6 = v2;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void GraphicsContext._shapeRenderingMode.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*a1 == 3)
  {
    if (v2 > 0.0)
    {
      v3 = -v2;
    }

    else
    {
      v3 = -0.0;
    }

LABEL_9:
    if (*(*v1 + 56) == v3)
    {
      return;
    }

    goto LABEL_12;
  }

  if (*a1 == 2)
  {
    if (v2 > 0.0)
    {
      v3 = *(a1 + 8);
    }

    else
    {
      v3 = 0.0;
    }

    goto LABEL_9;
  }

  v3 = NAN;
LABEL_12:
  GraphicsContext.copyOnWrite()();
  *(*v1 + 56) = v3;
}

void GraphicsContext.opacity.setter(double a1)
{
  v2 = a1;
  if (*(*v1 + 48) != v2)
  {
    GraphicsContext.copyOnWrite()();
    *(*v1 + 48) = v2;
  }
}

void GraphicsContext.fill(_:with:style:)(double *a1, __int128 *a2, __int16 a3, uint64_t a4)
{
  v4 = a3 & 0x101;
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  GraphicsContext.draw(_:with:style:)(a1, a2, &v4, a4);
}

void static GraphicsContext.Shading.color(_:white:opacity:)(_BYTE *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v5;
  if (*a1)
  {
    if (*a1 != 1)
    {
      if (v5 <= 0.0)
      {
        v9 = -v5;
      }

      else
      {
        v9 = v5;
      }

      if (v9 <= 0.04045)
      {
        v10 = v9 * 0.077399;
        v12 = -(v9 * 0.077399);
        v11 = v5 <= 0.0;
      }

      else
      {
        v10 = 1.0;
        if (v9 == 1.0)
        {
          v11 = v5 <= 0.0;
          v12 = -1.0;
        }

        else
        {
          v13 = v5;
          v10 = powf((v9 * 0.94787) + 0.052133, 2.4);
          v5 = v13;
          v12 = -v10;
          v11 = v13 <= 0.0;
        }
      }

      if (!v11)
      {
        v12 = v10;
      }

      if (v5 <= 0.0)
      {
        v14 = -v10;
      }

      else
      {
        v14 = v10;
      }

      Color.Resolved.displayP3Components.getter((v12 * 1.2249) + (v12 * -0.2247), (v12 * 1.0419) + (v12 * -0.042), ((v12 * -0.0786) + (v12 * -0.0197)) + (v14 * 1.0979));
    }

    RBColorFromLinear();
  }

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v6;
  *(a2 + 72) = 2;
}

void GraphicsContext.clipToLayer(opacity:options:content:)(char a1, void (*a2)(void, __n128), double a3)
{
  GraphicsContext.copyOnWrite()();
  v5 = *v3;
  v6 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_18DD85500;
  *(v7 + 48) = 1065353216;
  *(v7 + 56) = 0x7FF8000000000000;
  v8 = v5[2];
  v9 = *(v8 + 64);
  if (v9 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v7 + 16) = v8;
  }

  else
  {
    v15 = a2;
    v10 = RBDrawingStateGetDisplayList();
    v12 = v5[4];
    v11 = v5[5];
    v13 = v12;
    v14 = v11;
    if (v12 == 1)
    {
      v13 = *(v8 + 48);
      v14 = *(v8 + 56);
    }

    v16[0] = v13;
    v16[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12, v11);
    *(v7 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v10, v16);
    a2 = v15;
  }

  *(v7 + 24) = v6;
  *(v7 + 64) = 0;
  v16[0] = v7;

  (a2)(v16);

  RBDrawingStateClipLayer();
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v19[3] = a3;
  v6 = a1;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a2 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v18 = a4;
    v17 = RBDrawingStateGetDisplayList();
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = v11;
    v14 = v12;
    if (v11 == 1)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 56);
    }

    v19[0] = v13;
    v19[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11, v12);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v19);
    a4 = v18;
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((v6 & 0x20) != 0)
  {
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 52) = *(a2 + 52);
  }

  v19[0] = v8;

  static SDFStyle.Group.drawElements(_:in:sdf:)(v15, v19, a4, v16);

  RBDrawingStateDrawLayer();
}

{
  sub_18D3AEC80(a1, a2, a3, a4);
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a2 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v20 = RBDrawingStateGetDisplayList();
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = v11;
    v14 = v12;
    if (v11 == 1)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 56);
    }

    v21[0] = v13;
    v21[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11, v12);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v20, v21);
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((v6 & 0x20) != 0)
  {
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 52) = *(a2 + 52);
  }

  v21[0] = v8;
  v15 = *(a3 + 56);
  if (v15)
  {
    v16 = *(a3 + 64);
    v22 = v8;
    swift_retain_n();
    v17 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v15, v16);
    v15(&v22, v17);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v15, v16);
  }

  else
  {
  }

  *(a3 + 74) = 1;

  static SDFStyle.Group.drawElements(_:in:sdf:)(v18, v21, a3, v19);

  RBDrawingStateDrawLayer();
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v10 = swift_allocObject();
  *(v10 + 32) = xmmword_18DD85500;
  *(v10 + 48) = 1065353216;
  *(v10 + 56) = 0x7FF8000000000000;
  v11 = *(a2 + 16);
  v12 = *(v11 + 64);
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v10 + 16) = v11;
  }

  else
  {
    v18[5] = v4;
    v17 = RBDrawingStateGetDisplayList();
    v14 = *(a2 + 32);
    v13 = *(a2 + 40);
    v15 = v14;
    v16 = v13;
    if (v14 == 1)
    {
      v15 = *(v11 + 48);
      v16 = *(v11 + 56);
    }

    v18[0] = v15;
    v18[1] = v16;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v14, v13);
    *(v10 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v18);
  }

  *(v10 + 24) = v9;
  *(v10 + 64) = 0;
  if ((v8 & 0x20) != 0)
  {
    *(v10 + 48) = *(a2 + 48);
    *(v10 + 52) = *(a2 + 52);
  }

  GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(*&a4, *&a3));

  RBDrawingStateDrawLayer();
}

{
  sub_18D3AEC68(a1, a2, a3, a4);
}

Swift::Void __swiftcall GraphicsContext.concatenate(_:)(CGAffineTransform *a1)
{
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  tx = a1->tx;
  ty = a1->ty;
  v7.a = a1->a;
  v7.b = b;
  v7.c = c;
  v7.d = d;
  v7.tx = tx;
  v7.ty = ty;
  if (!CGAffineTransformIsIdentity(&v7))
  {
    GraphicsContext.copyOnWrite()();
    v7.a = a;
    v7.b = b;
    v7.c = c;
    v7.d = d;
    v7.tx = tx;
    v7.ty = ty;
    RBDrawingStateConcatCTM();
  }
}

__n128 static GraphicsContext.Filter.projectionTransform(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 64) = v2;
  *(a2 + 80) = 0;
  return result;
}

void static GraphicsContext.Shading.backdrop.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
  *(a1 + 72) = 0;
}

void GraphicsContext._addAnimation(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GraphicsContext.copyOnWrite()();
  if (a1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
    (*(*a1 + 96))(&v12);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
    Animation.Function.apply(to:)(v7, *&v12, *&v13, v4, v5, v6);
    outlined consume of Animation.Function(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, v11);
  }

  else
  {
    v7 = 0;
  }

  RBDrawingStateAddAnimationStyle();
}

double static GraphicsContext.Shading.color(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 72) = 1;

  return result;
}

double GraphicsContext.stroke(_:with:lineWidth:)(double *a1, uint64_t *a2, double *a3, double a4)
{
  v7 = a4;
  v8 = xmmword_18DDAB920;
  v5 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  v11 = 1;
  GraphicsContext.draw(_:with:style:)(a1, a2, &v7, a3);

  return outlined consume of PathDrawingStyle(*&a4, 0, 0x4024000000000000, v5, 0, 1);
}

uint64_t GraphicsContext.init(displayList:environment:)(void *a1, uint64_t *a2)
{
  v3 = specialized GraphicsContext.init(displayList:environment:)(a1, a2);

  return v3;
}

void static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, float **a2, uint64_t a3, char a4, void (*a5)(uint64_t *))
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = a2[1];
  v26 = 0;
  v27 = 1.0;
  v11 = MEMORY[0x193AC3360](a1, &v27, &v26);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GraphicsContext.Storage();
    v13 = swift_allocObject();
    *(v13 + 32) = xmmword_18DD85500;
    *(v13 + 48) = 1065353216;
    *(v13 + 56) = 0x7FF8000000000000;
    v14 = RBDrawingStateGetDisplayList();
    v28 = v10;
    v29 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v15 = GraphicsContext.Storage.Shared.init(list:environment:)(v14, &v28);
    v16 = 0;
    *(v13 + 16) = v15;
    *(v13 + 24) = v12;
    *(v13 + 64) = 0;
    v28 = v13;
    v17 = v27;
    if (v27 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      v18 = v28;
      v28[12] = v17;
      v16 = *(v18 + 52);
    }

    v19 = v26;
    if (v16 != v26)
    {
      GraphicsContext.copyOnWrite()();
      *(v28 + 13) = v19;
    }

    a5(&v28);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v20 setProfile_];
    [v20 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v20 setContentRect_];
    if (a4)
    {
      if (v9)
      {

        v21 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);

        v22 = v21;
      }

      else
      {
        v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
        if (v25)
        {
          v22 = v25[9];
        }

        else
        {
          v22 = 1.0;
        }
      }
    }

    else
    {
      v22 = *&a3;
    }

    [v20 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v23 = swift_allocObject();
    *(v23 + 32) = xmmword_18DD85500;
    *(v23 + 48) = 1065353216;
    *(v23 + 56) = 0x7FF8000000000000;
    v28 = v10;
    v29 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v24 = v20;

    *(v23 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v24, &v28);
    *(v23 + 24) = RBDisplayListGetState();
    *(v23 + 64) = 0;
    v28 = v23;
    a5(&v28);
    [v24 renderInContext:a1 options:0];
  }
}

void static GraphicsContext.Filter.alphaThreshold(min:max:color:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a3 >= a4)
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7B960);
    Double.write<A>(to:)();
    MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
    Double.write<A>(to:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = a3;
    v6 = a4;
    *a2 = v5;
    *(a2 + 4) = v6;
    *(a2 + 8) = a1;
    *(a2 + 80) = 2550136832;
  }
}

double static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 3221225472;
  v9 = v4;

  return result;
}

double static GraphicsContext.Filter.colorShader(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32) | 2;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 80) = 3221225472;
  v7 = v2;

  return result;
}

double GraphicsContext.environment.getter@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3;
  v6 = v4;
  if (v3 == 1)
  {
    v7 = a1[2];
    v5 = *(v7 + 48);
    v6 = *(v7 + 56);
  }

  *a2 = v5;
  a2[1] = v6;

  return outlined copy of EnvironmentValues?(v3, v4);
}

void GraphicsContext.addFilter(shader:maxSampleOffset:maxLayerSampleOffset:options:content:)(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v36 = *(a1 + 32);
  v15 = *v7;
  v16 = *(*v7 + 32);
  v17 = *(v15 + 40);
  v18 = v16;
  v19 = v17;
  if (v16 == 1)
  {
    v20 = *(v15 + 16);
    v18 = *(v20 + 48);
    v19 = *(v20 + 56);
    v35 = *(a1 + 16);

    v14 = v35;
  }

  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v36;
  v37 = v18;
  v38 = v19;
  outlined copy of EnvironmentValues?(v16, v17);
  v21 = Shader.makeRBShader(in:)(&v37);
  outlined consume of EnvironmentValues?(v37, v38);
  if (v21)
  {
    v22 = v21;
    GraphicsContext.copyOnWrite()();
    v23 = *v8;
    v24 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v25 = swift_allocObject();
    *(v25 + 32) = xmmword_18DD85500;
    *(v25 + 48) = 1065353216;
    *(v25 + 56) = 0x7FF8000000000000;
    v26 = v23[2];
    v27 = *(v26 + 64);
    if (v27 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v25 + 16) = v26;
    }

    else
    {
      v33 = v22;
      v34 = a3;
      v28 = RBDrawingStateGetDisplayList();
      v29 = v23[4];
      v30 = v23[5];
      v31 = v29;
      v32 = *&v30;
      if (v29 == 1)
      {
        v31 = *(v26 + 48);
        v32 = *(v26 + 56);
      }

      v39 = v31;
      v40 = v32;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v29, v30);
      *(v25 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v28, &v39);
      v22 = v33;
      a3 = v34;
    }

    *(v25 + 24) = v24;
    *(v25 + 64) = 0;
    v37 = v25;

    (a3)(&v37);
    v39 = v21;
    v40 = a4;
    *&v41 = a5;
    DWORD2(v41) = v36;
    Shader.ResolvedShader.rbFilterFlags.getter();
    RBDrawingStateAddShaderFilterLayer();
  }
}

Swift::Void __swiftcall GraphicsContext.fillWithBackdrop()()
{
  RBDrawingStateBeginLayer();

  RBDrawingStateDrawLayer();
}

uint64_t Path.applying(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (a1[5])
  {
    v3 = a1[4];
    v4 = a1[3];
    v5 = a1[2];
    v6 = a1[1];
    v13[0] = *a1;
    v13[1] = v6;
    v13[2] = v5;
    v13[3] = v4;
    v13[4] = v3;
    v7 = *(v1 + 16);
    v14[0] = *v1;
    v14[1] = v7;
    v15 = *(v1 + 32);
    Path.strokedPath(_:)(v13, v11);
    outlined destroy of Path(v14);
    LOBYTE(v2) = 0;
    v8 = v11[1];
    *v1 = v11[0];
    *(v1 + 16) = v8;
    *(v1 + 32) = v12;
    v9 = 256;
  }

  else
  {
    v9 = v2 & 0x100;
  }

  return v9 | (v2 & 1);
}

BOOL specialized ShapeStyle.isMultiLevel(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[27] = 0;
  *&v9 = 0;
  v8 = 0uLL;
  BYTE8(v9) = 5;
  *&v10 = 0;
  BYTE8(v10) = 5;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = 0u;
  memset(v13, 0, 24);
  v13[24] = 1;
  *&v13[25] = 768;
  v3 = *(*a3 + 80);

  v3(&v8);
  v4 = BYTE8(v10) == 4 && (v10 & 1) != 0;
  v6[4] = v12;
  v7[0] = *v13;
  *(v7 + 12) = *&v13[12];
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  outlined destroy of _ShapeStyle_Shape(v6);
  return v4;
}

void GraphicsImage.withRBImage(image:color:)(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void))
{
  v5 = v3[5];
  v35 = v3[4];
  v36[0] = v5;
  *(v36 + 12) = *(v3 + 92);
  v6 = v3[1];
  v31 = *v3;
  v32 = v6;
  v7 = v3[3];
  v33 = v3[2];
  v34 = v7;
  v8 = v31;
  if (BYTE8(v31) <= 3u)
  {
    if (!BYTE8(v31))
    {
      outlined init with copy of GraphicsImage(&v31, &v25);
      outlined init with copy of GraphicsImage(&v31, &v25);
      goto LABEL_18;
    }

    if (BYTE8(v31) == 1)
    {
      IOSurface = RBImageMakeIOSurface();
      a1(IOSurface);
      return;
    }

LABEL_7:
    v10 = a3;
    v11 = v3[5];
    v29 = v3[4];
    v30[0] = v11;
    *(v30 + 12) = *(v3 + 92);
    v12 = v3[1];
    v25 = *v3;
    v26 = v12;
    v13 = v3[3];
    v14 = 0.0;
    v27 = v3[2];
    v28 = v13;
    v15 = 0.0;
    if (*&v32 != 0.0)
    {
      v16 = *(&v32 + 1);
      if (BYTE8(v33) <= 3u)
      {
        v17 = *&v33;
      }

      else
      {
        v17 = *(&v32 + 1);
      }

      if (BYTE8(v33) > 3u)
      {
        v16 = *&v33;
      }

      v14 = 1.0 / *&v32 * v16;
      v15 = 1.0 / *&v32 * v17;
    }

    v18.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v15, *&v14), 0).value;
    a3 = v10;
    if (v18.value)
    {
      v8 = v18.value;
LABEL_18:
      CGImage = RBImageMakeCGImage();
      a1(CGImage);

      return;
    }

    goto LABEL_16;
  }

  if (BYTE8(v31) == 4)
  {
    v21 = *(v31 + 28);
    v20 = *(v31 + 32);
    if (v35)
    {
      v22 = *(v31 + 16);
      v23 = *(v31 + 20);
      v24 = *(v31 + 24);
    }

    else
    {
      v23 = v34;
      v24 = DWORD1(v34);
      v22 = HIDWORD(v33);
      v21 = v21 * *(&v34 + 2);
    }

    *&v25 = __PAIR64__(v23, v22);
    *(&v25 + 1) = __PAIR64__(LODWORD(v21), v24);
    LODWORD(v26) = v20;
    goto LABEL_23;
  }

  if (BYTE8(v31) != 255)
  {
    goto LABEL_7;
  }

LABEL_16:
  v25 = 0uLL;
  LODWORD(v26) = 2143289344;
LABEL_23:
  a3(&v25);
}

uint64_t one-time initialization function for _textDrawingContext()
{
  type metadata accessor for TextDrawingContext();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v1 setWrapsForTruncationMode_];
  [v1 setWantsBaselineOffset_];
  [v1 setWantsScaledLineHeight_];
  [v1 setWantsScaledBaselineOffset_];
  [v1 setCachesLayout_];
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>, type metadata accessor for NSStringDrawingContext, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(v0 + 16) = result;
  static GraphicsContext.Storage.Shared._textDrawingContext = v0;
  return result;
}

void *GraphicsContext.Storage.Shared.resolvedForeground(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == 1)
  {
    v7 = *(v3 + 192);
    v8 = *(v3 + 224);
    v82 = *(v3 + 208);
    v83 = v8;
    v9 = *(v3 + 128);
    v10 = *(v3 + 160);
    v78 = *(v3 + 144);
    v79 = v10;
    v11 = *(v3 + 160);
    v12 = *(v3 + 192);
    v80 = *(v3 + 176);
    v81 = v12;
    v13 = *(v3 + 96);
    v74 = *(v3 + 80);
    v75 = v13;
    v14 = *(v3 + 128);
    v16 = *(v3 + 80);
    v15 = *(v3 + 96);
    v76 = *(v3 + 112);
    v77 = v14;
    v17 = *(v3 + 224);
    v93 = v82;
    v94 = v17;
    v89 = v78;
    v90 = v11;
    v91 = v80;
    v92 = v7;
    v85 = v16;
    v86 = v15;
    v84 = *(v3 + 240);
    v95 = *(v3 + 240);
    v87 = v76;
    v88 = v9;
    if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v85) != 1)
    {
      v37 = v94;
      *(a2 + 128) = v93;
      *(a2 + 144) = v37;
      *(a2 + 160) = v95;
      v38 = v90;
      *(a2 + 64) = v89;
      *(a2 + 80) = v38;
      v39 = v92;
      *(a2 + 96) = v91;
      *(a2 + 112) = v39;
      v40 = v86;
      *a2 = v85;
      *(a2 + 16) = v40;
      v41 = v88;
      *(a2 + 32) = v87;
      *(a2 + 48) = v41;
      v62 = v82;
      v63 = v83;
      v64 = v84;
      v58 = v78;
      v59 = v79;
      v60 = v80;
      v61 = v81;
      v54 = v74;
      v55 = v75;
      v56 = v76;
      v57 = v77;
      return outlined init with copy of GraphicsContext.ResolvedShading(&v54, &v43);
    }

    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
  }

  else
  {
    v18 = *a1;
    v19 = a1[1];
  }

  v73[27] = 0;
  v68 = 0uLL;
  *&v69 = 1;
  BYTE8(v69) = 1;
  *&v70 = 0;
  BYTE8(v70) = 5;
  *&v71 = v18;
  *(&v71 + 1) = v19;
  v72 = 0u;
  memset(v73, 0, 24);
  v73[24] = 1;
  *&v73[25] = 256;
  outlined copy of EnvironmentValues?(v6, v5);
  specialized ForegroundStyle._apply(to:)(&v68);
  if (BYTE8(v70) == 1)
  {
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v67 = v20;
  LOBYTE(v85) = 0;
  _ShapeStyle_Pack.subscript.getter(&v85, 0, &v74);

  GraphicsContext.ResolvedShading.init(_:)(&v74, &v85);
  v65[3] = v71;
  v65[4] = v72;
  v66[0] = *v73;
  *(v66 + 12) = *&v73[12];
  v65[0] = v68;
  v65[1] = v69;
  v65[2] = v70;
  result = outlined destroy of _ShapeStyle_Shape(v65);
  v82 = v93;
  v83 = v94;
  v84 = v95;
  v78 = v89;
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  if (v6 == 1)
  {
    v51 = v93;
    v52 = v94;
    v53 = v95;
    v47 = v89;
    v48 = v90;
    v49 = v91;
    v50 = v92;
    v43 = v85;
    v44 = v86;
    v45 = v87;
    v46 = v88;
    _ViewInputs.base.modify();
    v22 = *(v3 + 224);
    v62 = *(v3 + 208);
    v63 = v22;
    v64 = *(v3 + 240);
    v23 = *(v3 + 160);
    v58 = *(v3 + 144);
    v59 = v23;
    v24 = *(v3 + 192);
    v60 = *(v3 + 176);
    v61 = v24;
    v25 = *(v3 + 96);
    v54 = *(v3 + 80);
    v55 = v25;
    v26 = *(v3 + 128);
    v56 = *(v3 + 112);
    v57 = v26;
    v27 = v52;
    *(v3 + 208) = v51;
    *(v3 + 224) = v27;
    *(v3 + 240) = v53;
    v28 = v48;
    *(v3 + 144) = v47;
    *(v3 + 160) = v28;
    v29 = v50;
    *(v3 + 176) = v49;
    *(v3 + 192) = v29;
    v30 = v44;
    *(v3 + 80) = v43;
    *(v3 + 96) = v30;
    v31 = v46;
    *(v3 + 112) = v45;
    *(v3 + 128) = v31;
    outlined init with copy of GraphicsContext.ResolvedShading(&v74, v42);
    result = outlined destroy of GraphicsContext.Shading?(&v54, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
  }

  v32 = v83;
  *(a2 + 128) = v82;
  *(a2 + 144) = v32;
  *(a2 + 160) = v84;
  v33 = v79;
  *(a2 + 64) = v78;
  *(a2 + 80) = v33;
  v34 = v81;
  *(a2 + 96) = v80;
  *(a2 + 112) = v34;
  v35 = v75;
  *a2 = v74;
  *(a2 + 16) = v35;
  v36 = v77;
  *(a2 + 32) = v76;
  *(a2 + 48) = v36;
  return result;
}

uint64_t GraphicsContext.Storage.deinit()
{
  if (*(v0 + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  outlined consume of EnvironmentValues?(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t GraphicsContext.init(drawingState:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v6 = RBDrawingStateGetDisplayList();
  v8[0] = v3;
  v8[1] = v4;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v6, v8);
  *(v5 + 24) = a1;
  *(v5 + 64) = 0;
  return v5;
}

double GraphicsContext.transform.getter@<D0>(_OWORD *a2@<X8>)
{
  RBDrawingStateGetCTM();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

void (*GraphicsContext.opacity.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *a1 = *(v2 + 48);
  return GraphicsContext.opacity.modify;
}

void GraphicsContext.opacity.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*(a1 + 16) + 48) != v1)
  {
    v2 = *(a1 + 8);
    GraphicsContext.copyOnWrite()();
    *(*v2 + 48) = v1;
  }
}

void (*GraphicsContext.blendMode.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + 52);
  return GraphicsContext.blendMode.modify;
}

void GraphicsContext.blendMode.modify(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (*(a1[1] + 52) != v1)
  {
    v2 = *a1;
    GraphicsContext.copyOnWrite()();
    *(*v2 + 52) = v1;
  }
}

uint64_t GraphicsContext._ShapeRenderingMode.hash(into:)()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int GraphicsContext._ShapeRenderingMode.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GraphicsContext._ShapeRenderingMode()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GraphicsContext._ShapeRenderingMode(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 8);
  Hasher._combine(_:)(*v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

void (*GraphicsContext._shapeRenderingMode.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = fabs(*(v2 + 56));
  v4 = *(v2 + 56);
  v5 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v5 = 1;
  }

  if (v4 >= 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if (!v5)
  {
    v6 = 0;
  }

  v7 = 0.0;
  if (v5)
  {
    v7 = v3;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  return GraphicsContext._shapeRenderingMode.modify;
}

void GraphicsContext._shapeRenderingMode.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*a1 == 3)
  {
    if (v1 > 0.0)
    {
      v2 = -v1;
    }

    else
    {
      v2 = -0.0;
    }

LABEL_9:
    if (*(*(a1 + 24) + 56) == v2)
    {
      return;
    }

    goto LABEL_12;
  }

  if (*a1 == 2)
  {
    if (v1 > 0.0)
    {
      v2 = *(a1 + 8);
    }

    else
    {
      v2 = 0.0;
    }

    goto LABEL_9;
  }

  v2 = NAN;
LABEL_12:
  v3 = *(a1 + 16);
  GraphicsContext.copyOnWrite()();
  *(*v3 + 56) = v2;
}

uint64_t (*GraphicsContext.identifier.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = RBDrawingStateGetIdentifier();
  return GraphicsContext.identifier.modify;
}

uint64_t GraphicsContext.identifier.modify(uint64_t *a1)
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

uint64_t GraphicsContext.setIdentifier(_:in:)(uint64_t a1)
{
  UUID.uuid.getter();
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier2();
}

void GraphicsContext.addAnimation(_:id:)(uint64_t a1)
{
  v3 = UUID.uuid.getter();

  GraphicsContext._addAnimation(_:id:)(a1, v3, v2);
}

double key path getter for GraphicsContext.environment : GraphicsContext@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = v3;
  v6 = v4;
  if (v3 == 1)
  {
    v7 = *(*a1 + 16);
    v5 = *(v7 + 48);
    v6 = *(v7 + 56);
  }

  *a2 = v5;
  a2[1] = v6;

  return outlined copy of EnvironmentValues?(v3, v4);
}

double key path setter for GraphicsContext.environment : GraphicsContext(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return outlined consume of EnvironmentValues?(v5, v6);
}

double GraphicsContext.environment.setter(_OWORD *a1)
{
  v3 = *(*v1 + 32);
  v2 = *(*v1 + 40);
  *(*v1 + 32) = *a1;
  return outlined consume of EnvironmentValues?(v3, v2);
}

double (*GraphicsContext.environment.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = v3[4];
  v5 = v3[5];
  v6 = v4;
  v7 = v5;
  if (v4 == 1)
  {
    v8 = v3[2];
    v6 = *(v8 + 48);
    v7 = *(v8 + 56);
  }

  *a1 = v6;
  a1[1] = v7;
  outlined copy of EnvironmentValues?(v4, v5);
  return GraphicsContext.environment.modify;
}

double GraphicsContext.environment.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (a2)
  {

    outlined consume of EnvironmentValues?(v4, v5);
  }

  else
  {

    return outlined consume of EnvironmentValues?(v4, v5);
  }

  return result;
}

uint64_t key path setter for GraphicsContext.transform : GraphicsContext(uint64_t a1, uint64_t a2)
{
  RBDrawingStateGetCTM();
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    GraphicsContext.copyOnWrite()();
    return RBDrawingStateSetCTM();
  }

  return result;
}

void (*GraphicsContext.transform.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x130uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  *(v3 + 296) = *v1;
  RBDrawingStateGetCTM();
  return GraphicsContext.transform.modify;
}

void GraphicsContext.transform.modify(char **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v7 = v2[13];
    v8 = v2[12];
    v2[6] = v8;
    v2[7] = v7;
    v9 = v2[13];
    v10 = v8;
    v2[8] = v2[14];
    v5 = *(v2 + 28);
    v6 = *(v2 + 29);
    RBDrawingStateGetCTM();
    if (static CGAffineTransform.== infix(_:_:)())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = v2[13];
  v4 = v2[12];
  *v2 = v4;
  v2[1] = v3;
  v9 = v2[13];
  v10 = v4;
  v2[2] = v2[14];
  v5 = *(v2 + 28);
  v6 = *(v2 + 29);
  RBDrawingStateGetCTM();
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
LABEL_5:
    GraphicsContext.copyOnWrite()();
    v2[15] = v10;
    v2[16] = v9;
    *(v2 + 34) = v5;
    *(v2 + 35) = v6;
    RBDrawingStateSetCTM();
  }

LABEL_6:

  free(v2);
}

void GraphicsContext.scaleBy(x:y:)(double a1, double a2)
{
  if (a1 != 1.0 || a2 != 1.0)
  {
    GraphicsContext.copyOnWrite()();

    RBDrawingStateScaleCTM();
  }
}

Swift::Void __swiftcall GraphicsContext.rotate(by:)(SwiftUI::Angle by)
{
  if (by.radians != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    v3 = *(*v1 + 24);
    v4.n128_u64[0] = *&by.radians;

    MEMORY[0x1EEE32450](v3, v4);
  }
}

uint64_t GraphicsContext.clip(to:opacity:style:options:)(double *a1, __int16 a2, char a3, double a4)
{
  GraphicsContext.copyOnWrite()();
  v7 = *(*v4 + 56);
  v8 = *(*(*v4 + 16) + 32);
  RBShape.setPath(_:style:shapeDistance:)(a1, a2 & 0x101, v7);

  return RBDrawingStateClipShape2();
}

double static GraphicsContext.Filter.shadow(color:radius:x:y:blendMode:options:)@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a2 | (a3 << 32);
  *(a4 + 80) = 402653184;

  return result;
}

uint64_t static GraphicsContext.Filter.pathProjection(startPoint:endPoint:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *(a1 + 32);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  v7 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = 671088640;
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = v6;
  return outlined init with copy of Path.Storage(v11, v10);
}

double static GraphicsContext.Filter.colorMultiply(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[10] = 805306368;

  return result;
}

double static GraphicsContext.Filter.alphaMultiply(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[10] = 0x40000000;

  return result;
}

double static GraphicsContext.Filter.colorMatrix(_:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized _ColorMatrix.init(_:)(a2, v6);
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  result = *&v7;
  *(a1 + 64) = v7;
  *(a1 + 80) = 1342177280;
  return result;
}

double static GraphicsContext.Filter.colorMatrix(_:isPremultiplied:)@<D0>(char a1@<W1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  specialized _ColorMatrix.init(_:)(a3, v8);
  v5 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v5;
  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  result = *&v9;
  *(a2 + 64) = v9;
  *(a2 + 80) = a1 & 1 | 0x50000000;
  return result;
}

float static GraphicsContext.Filter.saturation(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1610612736;
  return result;
}

float static GraphicsContext.Filter.brightness(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1744830464;
  return result;
}

float static GraphicsContext.Filter.contrast(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1879048192;
  return result;
}

float static GraphicsContext.Filter.colorInvert(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 2013265920;
  return result;
}

float static GraphicsContext.Filter.grayscale(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 0x80000000;
  return result;
}

double static GraphicsContext.Filter.luminanceToAlpha.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 3355443200;
  return result;
}

uint64_t static GraphicsContext.Filter.blur(radius:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result & 1;
  v4 = 8;
  if (result)
  {
    v4 = 9;
  }

  if ((result & 2) != 0)
  {
    v3 = v4;
  }

  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 80) = 2281701376;
  return result;
}

double static GraphicsContext.Filter.variableBlur(maxRadius:mask:options:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *&v17[9] = *(a1 + 57);
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = a1[3];
  v16 = a1[2];
  *v17 = v5;
  v6 = (a2 & 1) << 32;
  v7 = 0x900000000;
  if ((a2 & 1) == 0)
  {
    v7 = 0x800000000;
  }

  if ((a2 & 2) != 0)
  {
    v6 = v7;
  }

  v8 = *&v17[16];
  v9 = v6 & 0xFFFFFFFFFFFFFFF0 | v17[24] & 0xF | 0x90000000;
  *a3 = a4;
  v10 = v15;
  *(a3 + 8) = v14;
  *(a3 + 24) = v10;
  v11 = *v17;
  *(a3 + 40) = v16;
  *(a3 + 56) = v11;
  *(a3 + 72) = v8;
  *(a3 + 80) = v9;
  outlined init with copy of GraphicsContext.Shading(&v14, &v13);
  return result;
}

double static GraphicsContext.Filter.alphaGradient(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 80) = 2684354560;

  return result;
}

{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 80) = 2684354560;

  return result;
}

double static GraphicsContext.Filter.distortionShader(_:maxSampleOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32) | 4;
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 3221225472;
  v9 = v4;

  return result;
}

uint64_t *GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(uint64_t *result, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  v8 = result[3];
  v9 = result[4];
  v10 = result[5];
  v12 = result[6];
  v11 = result[7];
  v13 = result[8];
  v14 = *(result + 72);
  if (v14 > 7)
  {
    if (v14 == 8)
    {
      if (*(v5 + 16))
      {
        v38 = a2;
        v39 = *(v5 + 48);
        v40 = *(v5 + 80);
        v62 = *(v5 + 64);
        *v63 = v40;
        *&v63[9] = *(v5 + 89);
        v60 = *(v5 + 32);
        v61 = v39;
        v41 = *(v5 + 80);
        v52 = *(v5 + 64);
        *v53 = v41;
        *&v53[9] = *(v5 + 89);
        v42 = *(v5 + 48);
        v50 = *(v5 + 32);
        v51 = v42;
        outlined init with copy of GraphicsContext.Shading(&v60, &v79);
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v50, v38, v4);
        v81 = v52;
        *v82 = *v53;
        *&v82[9] = *&v53[9];
        v79 = v50;
        v80 = v51;
        return outlined destroy of GraphicsContext.Shading(&v79);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v14 != 9)
    {
      if (v14 == 10 && !(v6 | v5 | v7 | v8 | v9 | v10 | v12 | v11 | v13))
      {
        v15 = a2;
        v16 = *v3;
        v17 = *(*v3 + 16);
        v18 = *(v16 + 32);
        v19 = *(v16 + 40);
        v20 = v18;
        v21 = v19;
        if (v18 == 1)
        {
          v20 = *(v17 + 48);
          v21 = *(v17 + 56);
        }

        *&v79 = v20;
        *(&v79 + 1) = v21;
        outlined copy of EnvironmentValues?(v18, v19);
        GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v79, &v60);
        outlined consume of EnvironmentValues?(v79, *(&v79 + 1));
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v60, v15, v4);
        v86 = v67;
        v87 = v68;
        v88 = v69;
        *&v82[16] = *&v63[16];
        v83 = v64;
        v84 = v65;
        v85 = v66;
        v79 = v60;
        v80 = v61;
        v81 = v62;
        *v82 = *v63;
        return outlined destroy of GraphicsContext.ResolvedShading(&v79);
      }

      goto LABEL_15;
    }

    v43 = *(v5 + 144);
    v85 = *(v5 + 128);
    v86 = v43;
    v87 = *(v5 + 160);
    v88 = *(v5 + 176);
    v44 = *(v5 + 80);
    *v82 = *(v5 + 64);
    *&v82[16] = v44;
    v45 = *(v5 + 112);
    v83 = *(v5 + 96);
    v84 = v45;
    v46 = *(v5 + 32);
    v79 = *(v5 + 16);
    v80 = v46;
    v81 = *(v5 + 48);
    v47 = &v79;
    return GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(v47, a2, a3);
  }

  if (!*(result + 72))
  {
    *&v79 = *result;
    *(&v79 + 1) = v6;
    LODWORD(v80) = v7;
    v48 = a2;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v79);
    v67 = v86;
    v68 = v87;
    v69 = v88;
    *&v63[16] = *&v82[16];
    v64 = v83;
    v65 = v84;
    v66 = v85;
    v60 = v79;
    v61 = v80;
    v62 = v81;
    *v63 = *v82;
    v47 = &v60;
    a3 = v4;
    a2 = v48;
    return GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(v47, a2, a3);
  }

  if (v14 != 4)
  {
LABEL_15:
    v49 = result[2];
    GraphicsContext.copyOnWrite()();
    v32 = *v3;
    v33 = *(*v3 + 16);
    *&v79 = v5;
    *(&v79 + 1) = v6;
    *&v80 = v49;
    *(&v80 + 1) = v8;
    *&v81 = v9;
    *(&v81 + 1) = v10;
    *v82 = v12;
    *&v82[8] = v11;
    *&v82[16] = v13;
    v82[24] = v14;
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    v36 = v34;
    v37 = v35;
    if (v34 == 1)
    {
      v36 = *(v33 + 48);
      v37 = *(v33 + 56);
    }

    *&v60 = v36;
    *(&v60 + 1) = v37;

    outlined copy of EnvironmentValues?(v34, v35);
    GraphicsContext.Storage.Shared.setShading(_:in:)(&v79, &v60);

    return RBDrawingStateAddVariableBlurFilter();
  }

  v22 = a2;
  v23 = *v3;
  v24 = *(*v3 + 32);
  v25 = *(v23 + 40);
  v26 = v24;
  v27 = v25;
  if (v24 == 1)
  {
    v28 = *(v23 + 16);
    v26 = *(v28 + 48);
    v27 = *(v28 + 56);
  }

  v78[27] = 0;
  v73 = 0uLL;
  *&v74 = 1;
  BYTE8(v74) = 1;
  *&v75 = 0;
  BYTE8(v75) = 5;
  *&v76 = v26;
  *(&v76 + 1) = v27;
  v77 = 0u;
  memset(v78, 0, 24);
  v78[24] = 1;
  *&v78[25] = 256;
  v29 = *(*v5 + 80);
  v30 = outlined copy of EnvironmentValues?(v24, v25);
  v29(&v73, v30);
  if (BYTE8(v75) == 1)
  {
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v72 = v31;
  LOBYTE(v79) = 0;
  _ShapeStyle_Pack.subscript.getter(&v79, 0, &v60);

  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v60);
  v57 = v67;
  v58 = v68;
  v59 = v69;
  *&v53[16] = *&v63[16];
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  *v53 = *v63;
  GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v50, v22, v4);
  v86 = v57;
  v87 = v58;
  v88 = v59;
  *&v82[16] = *&v53[16];
  v83 = v54;
  v84 = v55;
  v85 = v56;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  *v82 = *v53;
  outlined destroy of GraphicsContext.ResolvedShading(&v79);
  v70[4] = v77;
  v71[0] = *v78;
  *(v71 + 12) = *&v78[12];
  v70[0] = v73;
  v70[1] = v74;
  v70[2] = v75;
  v70[3] = v76;
  return outlined destroy of _ShapeStyle_Shape(v70);
}

void specialized withGradient(_:in:colorSpace:do:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v56 = a4;
  v57 = a5;
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  if (*(a1 + 8))
  {
    v65 = *a2;
    v66 = v9;
    (*(*v8 + 112))(&v58, &v65);
    v65 = v58;
    LOBYTE(v66) = BYTE8(v58);
    HIDWORD(v66) = HIDWORD(v58);
    LOBYTE(v67) = v59;
    specialized withGradient(_:in:do:)(&v65, v7, a4, v5);

    return;
  }

  v53 = 0.0;
  v54 = 1;
  MEMORY[0x1EEE9AC00](a1);
  v43[2] = v8;
  v43[3] = v10;
  v43[4] = v11;
  v44 = v7;
  v45 = &v53;
  MEMORY[0x1EEE9AC00](v12);
  v42[2] = partial apply for closure #3 in GraphicsContext.addFilter(_:options:);
  v42[3] = &v55;
  v42[4] = v14;
  v42[5] = v15;
  if (v14)
  {
    if (!(v14 >> 59))
    {
      v52 = v7;
      v50 = a4;
      v16 = v14;
      if ((16 * v14) >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v40 = swift_slowAlloc();
          closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v40, v16, v16, 1, closure #1 in withGradient(_:in:colorSpace:do:)partial apply, v43, closure #2 in withGradient(_:in:colorSpace:do:)partial apply, v42);
          MEMORY[0x193AC4820](v40, -1, -1);
          return;
        }
      }

      v51 = v46;
      v49 = v42;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v19 = v42 - v18;
      if (v20 >= 0x81)
      {
        v17 = swift_stdlib_isStackAllocationSafe();
        if ((v17 & 1) == 0)
        {
          v41 = swift_slowAlloc();
          closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v41, v16, v16, closure #1 in withGradient(_:in:colorSpace:do:)partial apply, v43, v19, v16, 1, closure #2 in withGradient(_:in:colorSpace:do:)partial apply);
          MEMORY[0x193AC4820](v41, -1, -1);
          return;
        }
      }

      MEMORY[0x1EEE9AC00](v17);
      v24 = v42 - v23;
      if (v25 <= v8[2])
      {
        v46[1] = v21;
        v48 = v5;
        v26 = 0;
        v27 = v8 + 5;
        v47 = v19;
        v28 = v19 + 8;
        do
        {
          v29 = *(v27 - 1);
          v30 = v10;
          *&v58 = v10;
          *(&v58 + 1) = v22;
          v31 = v22;
          v32 = *(*v29 + 120);

          v32(&v65, &v58);

          v34 = HIDWORD(v65);
          v33 = v65;
          v36 = HIDWORD(v66);
          v35 = v66;
          if (v52 != 2)
          {
            RBColorFromLinear();
          }

          *(v28 - 2) = v33;
          *(v28 - 1) = v34;
          *v28 = v35;
          v28[1] = v36;
          v37 = v67;
          v22 = v31;
          if (v54)
          {
            v10 = v30;
          }

          else
          {
            v10 = v30;
            if (v53 > v67)
            {
              v37 = v53;
            }
          }

          v53 = v37;
          v54 = 0;
          v38 = *v27;
          v27 += 2;
          *&v24[8 * v26] = v38;
          v28 += 4;
          ++v26;
        }

        while (v16 != v26);
        v39 = *(*(*v50 + 16) + 64);
        LOBYTE(v58) = 3;
        *(&v58 + 4) = 0x3F80000000000000;
        v59 = v16;
        v60 = v47;
        v61 = v39;
        v62 = v53;
        v63 = v24;
        v64 = (v48 & 1) << 6;
        RBDrawingStateAddStyle();
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void GraphicsContext.addShaderFilter(_:size:)(id *a1, double a2, double a3)
{
  if (*a1)
  {
    v3 = *a1;
    GraphicsContext.copyOnWrite()();
    Shader.ResolvedShader.rbFilterFlags.getter();
    RBDrawingStateAddShaderFilter();
  }
}

uint64_t GraphicsContext.Shading.storage.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 57);
  v3 = *(v10 + 9);
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GraphicsContext.Shading.Storage(v8, &v7);
}

__n128 GraphicsContext.Shading.storage.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 57);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  outlined destroy of GraphicsContext.Shading(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  *(v1 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

double static GraphicsContext.Shading.foreground.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 10;
  return result;
}

void static GraphicsContext.Shading.palette(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = a1;
    *(a2 + 72) = 8;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void static GraphicsContext.Shading.color(_:red:green:blue:opacity:)(_BYTE *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  if (*a1)
  {
    if (*a1 != 1)
    {
      if (v7 <= 0.0)
      {
        v11 = -v7;
      }

      else
      {
        v11 = v7;
      }

      v12 = v7;
      if (v11 <= 0.04045)
      {
        v13 = v11 * 0.077399;
      }

      else
      {
        v13 = 1.0;
        if (v11 != 1.0)
        {
          v14 = v8;
          v15 = v9;
          v16 = powf((v11 * 0.94787) + 0.052133, 2.4);
          v8 = v14;
          v9 = v15;
          v13 = v16;
          v7 = v12;
        }
      }

      if (v7 <= 0.0)
      {
        v17 = -v13;
      }

      else
      {
        v17 = v13;
      }

      if (v8 <= 0.0)
      {
        v18 = -v8;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= 0.04045)
      {
        v19 = v18 * 0.077399;
      }

      else
      {
        v19 = 1.0;
        if (v18 != 1.0)
        {
          v20 = v8;
          v21 = v9;
          v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
          v8 = v20;
          v9 = v21;
        }
      }

      if (v8 <= 0.0)
      {
        v22 = -v19;
      }

      else
      {
        v22 = v19;
      }

      if (v9 <= 0.0)
      {
        v23 = -v9;
      }

      else
      {
        v23 = v9;
      }

      if (v23 <= 0.04045)
      {
        v24 = v23 * 0.077399;
      }

      else
      {
        v24 = 1.0;
        if (v23 != 1.0)
        {
          v25 = v9;
          v24 = powf((v23 * 0.94787) + 0.052133, 2.4);
          v9 = v25;
        }
      }

      if (v9 <= 0.0)
      {
        v26 = -v24;
      }

      else
      {
        v26 = v24;
      }

      Color.Resolved.displayP3Components.getter((v17 * 1.2249) + (v22 * -0.2247), (v22 * 1.0419) + (v17 * -0.042), ((v17 * -0.0197) + (v22 * -0.0786)) + (v26 * 1.0979));
    }

    RBColorFromLinear();
    v10 = v27;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 72) = 2;
}

double static GraphicsContext.Shading.shader(_:bounds:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = 3;
  v11 = v6;

  return result;
}

uint64_t static GraphicsContext.Shading.meshGradient(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v2 = v8[0];
  v8[1] = v3;
  v9[0] = a1[2];
  v4 = v9[0];
  *(v9 + 10) = *(a1 + 42);
  *&v10[10] = *(v9 + 10);
  v9[3] = v3;
  *v10 = v4;
  v9[2] = v8[0];
  *(a2 + 64) = v11;
  *a2 = v2;
  *(a2 + 16) = v3;
  v5 = *&v10[16];
  *(a2 + 32) = *v10;
  *(a2 + 48) = v5;
  *(a2 + 72) = 6;
  return outlined init with copy of MeshGradient(v8, &v7);
}

double static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

double static GraphicsContext.Shading.radialGradient(_:startCenter:startRadius:endCenter:endRadius:options:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = 2;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = 2;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

double static GraphicsContext.Shading.conicGradient(_:center:angle:options:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 64) = 4;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 64) = 4;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;

  return result;
}

double static GraphicsContext.Shading.tiledImage(_:origin:sourceRect:scale:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 72) = 7;

  return result;
}

void GraphicsContext.fill(_:material:content:)(double *a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, void *a5)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v57 = *(a2 + 12);
  v10 = a5[4];
  v11 = a5[5];
  v12 = v10;
  v13 = v11;
  if (v10 == 1)
  {
    v14 = a5[2];
    v15 = *(v14 + 48);
    v13 = *(v14 + 56);

    v12 = v15;
  }

  *&v80 = v12;
  *(&v80 + 1) = v13;
  *&v63 = v8;
  BYTE8(v63) = v9;
  HIDWORD(v63) = v57;
  v16 = v12;
  outlined copy of EnvironmentValues?(v10, v11);
  v17 = EnvironmentValues.materialProvider(for:)(&v63);
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v55 = a3;
    v20 = *a1;
    v22 = a1[1];
    v21 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 32);
    if (v24 > 2)
    {
      v25 = v13;
      if (v24 == 5)
      {
        if (*(*&v20 + 16))
        {
          if (*(*&v20 + 16) == 1)
          {
            outlined copy of Material.ID(v8, v9);
            outlined init with copy of Path(a1, &v80);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of Material.ID(v8, v9);
            outlined init with copy of Path(a1, &v80);
            v28 = MEMORY[0x193AC3640](*&v20 + 24);
          }

          x = v28;
          y = v29;
          width = v30;
          height = v31;
        }

        else
        {
          v40 = *(*&v20 + 24);
          if (!v40)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v41 = v40;
          outlined copy of Material.ID(v8, v9);
          outlined init with copy of Path(a1, &v80);
          PathBoundingBox = CGPathGetPathBoundingBox(v41);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;
        }

        outlined destroy of Path(a1);
      }

      else
      {
        if (v24 != 6)
        {
LABEL_45:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        if (v20 == 0.0 && v22 == 0.0 && v21 == 0.0 && v23 == 0.0)
        {
          outlined copy of Material.ID(v8, v9);
          goto LABEL_37;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
        outlined copy of Material.ID(v8, v9);
      }

      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = height;
      if (CGRectIsNull(v94))
      {
        goto LABEL_37;
      }

      v26 = fabs(width);
      v27 = fabs(height);
    }

    else
    {
      v25 = v13;
      if (v24 < 2)
      {
        outlined copy of Material.ID(v8, v9);
        v91.origin.x = v20;
        v91.origin.y = v22;
        v91.size.width = v21;
        v91.size.height = v23;
        if (!CGRectIsNull(v91))
        {
          v26 = fabs(v21);
          v27 = fabs(v23);
          goto LABEL_30;
        }

LABEL_37:
        v43 = 0.0;
        v42 = 0.0;
LABEL_38:
        v62 = 0;
        v61 = 0;
        *&v73 = v19;
        *(&v73 + 1) = v25;
        LOWORD(v74) = 259;
        *(&v74 + 1) = v42;
        *&v75 = v43;
        BYTE8(v75) = 0;
        *v76 = v42;
        *&v76[8] = v42;
        *&v76[16] = v43;
        v76[24] = 0;
        *&v59[32] = v75;
        v60[0] = *v76;
        *(v60 + 9) = *&v76[9];
        *v59 = v73;
        *&v59[16] = v74;
        v44 = v25;
        v45 = *(*v18 + 80);
        v46 = v9;
        v47 = v8;
        outlined init with copy of Material.Context(&v73, v58);
        v45(v58, v59);

        v65 = *&v59[32];
        *v66 = v60[0];
        *&v66[9] = *(v60 + 9);
        v63 = *v59;
        v64 = *&v59[16];
        outlined destroy of Material.Context(&v63);
        *&v80 = v19;
        *(&v80 + 1) = v44;
        LOWORD(v81) = 259;
        *(&v81 + 1) = v42;
        *&v82 = v43;
        BYTE8(v82) = 0;
        *&v83 = v42;
        *(&v83 + 1) = v42;
        *&v84 = v43;
        BYTE8(v84) = 0;
        outlined destroy of Material.Context(&v80);
        v8 = v58[0];
        outlined consume of Material.ID(v47, v46);
        outlined copy of Material.ID(v8, 2u);
        outlined consume of Material.ID(v8, 2u);
        a3 = v55;
        goto LABEL_39;
      }

      v32 = *(*&v20 + 16);
      v33 = *(*&v20 + 24);
      v34 = *(*&v20 + 32);
      v35 = *(*&v20 + 40);
      outlined copy of Material.ID(v8, v9);
      v92.origin.x = v32;
      v92.origin.y = v33;
      v92.size.width = v34;
      v92.size.height = v35;
      if (CGRectIsNull(v92))
      {
        goto LABEL_37;
      }

      v26 = fabs(v34);
      v27 = fabs(v35);
    }

LABEL_30:
    if (v27 >= v26)
    {
      v42 = v26;
    }

    else
    {
      v42 = v27;
    }

    if (v26 > v27)
    {
      v43 = v26;
    }

    else
    {
      v43 = v27;
    }

    if (v42 <= v43)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  *&v80 = v16;
  *(&v80 + 1) = v13;
  v57 |= specialized Material.ResolvedMaterial.Flags.init(environment:)(&v80);
  outlined copy of Material.ID(v8, v9);
  if (v9 != 2)
  {
    goto LABEL_41;
  }

LABEL_39:
  *&v63 = v8;
  Material.Layers.singletonSDFLayer.getter(&v80);
  v48 = v80;
  if ((~v80 & 0xF000000000000007) == 0)
  {
    LOBYTE(v9) = 2;
LABEL_41:
    *&v73 = v8;
    BYTE8(v73) = v9;
    HIDWORD(v73) = v57;
    BYTE5(v77) = 3;
    DWORD2(v77) = 1065353216;
    *&v78 = 0;
    BYTE8(v78) = -1;
    v79 = MEMORY[0x1E69E7CC0];
    *&v87 = MEMORY[0x1E69E7CC0];
    v82 = v75;
    v83 = *v76;
    v84 = *&v76[16];
    v85 = v77;
    v86 = v78;
    v80 = v73;
    v81 = v74;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v80);
    v70 = v88;
    v71 = v89;
    v72 = v90;
    *&v66[16] = v84;
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v80;
    v64 = v81;
    v65 = v82;
    *v66 = v83;
    *v59 = 256;
    memset(&v59[8], 0, 33);
    outlined copy of Material.ID(v8, v9);
    GraphicsContext.draw(_:with:style:)(a1, &v63, v59, a5);
    outlined destroy of _ShapeStyle_Pack.Style(&v73);
    *&v63 = a5;

    (a3)(&v63);
    outlined consume of Material.ID(v8, v9);

    return;
  }

  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  *(v49 + 24) = a4;
  *&v73 = a5;
  type metadata accessor for GraphicsContext.Shading?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  v51 = *a1;
  v52 = *(a1 + 1);
  *(v50 + 16) = xmmword_18DDA6EB0;
  *(v50 + 32) = v51;
  *(v50 + 48) = v52;
  *(v50 + 64) = *(a1 + 32);
  *(v50 + 72) = 0;
  *(v50 + 80) = 0;
  *(v50 + 84) = 0;
  v80 = 0u;
  v81 = 0u;
  LOBYTE(v82) = 1;
  outlined init with copy of Path(a1, &v63);

  v53.n128_u64[0] = 0;
  specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v48, v50, partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:), v49, &v73, &v80, v50, v53, 0.0);

  swift_bridgeObjectRelease_n();
  outlined consume of Material.ID(v8, 2u);
  outlined consume of SDFStyle?(v48);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_44;
  }
}

double GraphicsContext.stroke(_:with:style:)(double *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v11 = a3[1];
  v13[0] = *a3;
  v10 = v13[0];
  v13[1] = v11;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v14 = 1;

  GraphicsContext.draw(_:with:style:)(a1, a2, v13, a4);

  return outlined consume of PathDrawingStyle(v10, v11, v7, v8, v9, 1);
}

double GraphicsContext.ResolvedImage.size.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v3 = *(v0 + 32);
    }

    return 1.0 / v1 * v3;
  }

  return result;
}

uint64_t GraphicsContext.ResolvedImage.shading.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 177);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return outlined init with copy of GraphicsContext.Shading?(v8, &v7);
}

__n128 GraphicsContext.ResolvedImage.shading.setter(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v8[2] = *(v1 + 152);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 177);
  v8[0] = *(v1 + 120);
  v8[1] = v3;
  outlined destroy of GraphicsContext.Shading?(v8, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v5 = *a1;
  *(v1 + 136) = a1[1];
  v6 = a1[3];
  *(v1 + 152) = a1[2];
  *(v1 + 168) = v6;
  result = *(a1 + 57);
  *(v1 + 177) = result;
  *(v1 + 120) = v5;
  return result;
}

double GraphicsContext.resolve(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a2[4];
  v11 = a2[5];
  v13 = v12;
  v35 = v11;
  if (v12 == 1)
  {
    v14 = a2[2];
    v13 = *(v14 + 48);
    v11 = *(v14 + 56);
  }

  v32 = v11;
  v33 = v13;
  v15 = type metadata accessor for Text.Style(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v34 = *MEMORY[0x1E698D3F8];
  v10[2] = 0;
  v17 = v8[6];
  v16(v10 + v17, 1, 1, v15);
  v18 = v8[7];
  v19 = v10 + v8[8];
  *v19 = 520;
  v19[2] = 2;
  *(v10 + v8[9]) = 3;
  v20 = v8[10];
  *(v10 + v20) = 1;
  v21 = v32;
  *v10 = v33;
  v10[1] = v21;
  outlined copy of EnvironmentValues?(v12, v35);
  outlined assign with take of Text.Style?(v7, v10 + v17);
  *(v10 + v18) = v34;
  *(v10 + v20) = 0;
  (*(*v36 + 80))(&v46, v10);
  v44 = v50;
  v45[0] = v51[0];
  *(v45 + 12) = *(v51 + 12);
  v40 = v46;
  v41 = v47;
  v22 = 0.0;
  v42 = v48;
  v43 = v49;
  v23 = 0.0;
  if (*&v47 != 0.0)
  {
    if (BYTE8(v48) > 3u)
    {
      v24 = *(&v47 + 1);
    }

    else
    {
      v24 = *&v48;
    }

    v23 = 1.0 / *&v47 * v24;
  }

  if (v52)
  {
    v22 = *(v52 + 16);
  }

  v25 = v50;
  outlined init with copy of GraphicsImage(&v46, v37);
  outlined destroy of Image.Resolved(&v46);
  _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v10, type metadata accessor for ImageResolutionContext);
  v26 = -1;
  if ((v25 & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v39 = -1;
    outlined destroy of GraphicsContext.Shading?(v37, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
    v26 = 10;
  }

  v27 = v45[0];
  *(a3 + 64) = v44;
  *(a3 + 80) = v27;
  *(a3 + 96) = v45[1];
  v28 = v41;
  *a3 = v40;
  *(a3 + 16) = v28;
  v29 = v43;
  *(a3 + 32) = v42;
  *(a3 + 48) = v29;
  *(a3 + 112) = v23 - v22;
  result = 0.0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 192) = v26;
  return result;
}

uint64_t GraphicsContext.draw(_:in:style:)(__int128 *a1, __int16 a2, uint64_t a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v14 = a1[5];
  v27[4] = a1[4];
  v28[0] = v14;
  *(v28 + 12) = *(a1 + 92);
  v15 = a1[1];
  v27[0] = *a1;
  v27[1] = v15;
  v16 = a1[3];
  v27[2] = a1[2];
  v27[3] = v16;
  v17 = *(a1 + 120);
  v18 = *(a1 + 136);
  v19 = *(a1 + 152);
  *(v30 + 9) = *(a1 + 177);
  v20 = *(a1 + 168);
  v29[2] = v19;
  v30[0] = v20;
  v29[0] = v17;
  v29[1] = v18;
  outlined init with copy of GraphicsImage(v27, v33);
  outlined init with copy of GraphicsContext.Shading?(v29, v33);
  GraphicsContext.draw(_:in:style:shading:)(a1, a2 & 0x101, (a1 + 120), a3, a4, a5, a6, a7);
  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v31[2] = *(a1 + 152);
  v32[0] = v22;
  *(v32 + 9) = *(a1 + 177);
  v31[0] = *(a1 + 120);
  v31[1] = v21;
  outlined destroy of GraphicsContext.Shading?(v31, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v23 = a1[5];
  v33[4] = a1[4];
  v34[0] = v23;
  *(v34 + 12) = *(a1 + 92);
  v24 = a1[1];
  v33[0] = *a1;
  v33[1] = v24;
  v25 = a1[3];
  v33[2] = a1[2];
  v33[3] = v25;
  return outlined destroy of GraphicsImage(v33);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(__int128 *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8 = a1[5];
  v35 = a1[4];
  v36[0] = v8;
  *(v36 + 12) = *(a1 + 92);
  v9 = a1[1];
  v31 = *a1;
  v32 = v9;
  v10 = a1[3];
  v33 = a1[2];
  v34 = v10;
  v11 = *(a1 + 120);
  v12 = *(a1 + 136);
  v13 = *(a1 + 152);
  v14 = *(a1 + 168);
  *&v38[9] = *(a1 + 177);
  v37[2] = v13;
  *v38 = v14;
  v15 = 0.0;
  v16 = 0.0;
  v37[0] = v11;
  v37[1] = v12;
  if (*&v32 != 0.0)
  {
    v17 = *(&v32 + 1);
    if (BYTE8(v33) <= 3u)
    {
      v18 = *&v33;
    }

    else
    {
      v18 = *(&v32 + 1);
    }

    if (BYTE8(v33) > 3u)
    {
      v17 = *&v33;
    }

    v15 = 1.0 / *&v32 * v17;
    v16 = 1.0 / *&v32 * v18;
  }

  v19 = a3 - v15 * a5;
  v20 = a4 - v16 * a6;
  outlined init with copy of GraphicsImage(&v31, v29);
  outlined init with copy of GraphicsContext.Shading?(v37, v29);
  GraphicsContext.draw(_:in:style:shading:)(a1, 256, (a1 + 120), a2, v19, v20, v15, v16);
  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v27[2] = *(a1 + 152);
  v28[0] = v22;
  *(v28 + 9) = *(a1 + 177);
  v27[0] = *(a1 + 120);
  v27[1] = v21;
  outlined destroy of GraphicsContext.Shading?(v27, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v23 = a1[5];
  v29[4] = a1[4];
  v30[0] = v23;
  *(v30 + 12) = *(a1 + 92);
  v24 = a1[1];
  v29[0] = *a1;
  v29[1] = v24;
  v25 = a1[3];
  v29[2] = a1[2];
  v29[3] = v25;
  return outlined destroy of GraphicsImage(v29);
}

uint64_t GraphicsContext.draw(_:in:style:)(uint64_t a1, __int16 a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  GraphicsContext.resolve(_:)(a1, a3, v24);
  v22 = v24[4];
  v23[0] = v25[0];
  *(v23 + 12) = *(v25 + 12);
  v18 = v24[0];
  v19 = v24[1];
  v20 = v24[2];
  v21 = v24[3];
  v16 = v26[2];
  v17[0] = v27[0];
  *(v17 + 9) = *(v27 + 9);
  v14 = v26[0];
  v15 = v26[1];
  outlined init with copy of GraphicsImage(v24, v30);
  outlined init with copy of GraphicsContext.Shading?(v26, v30);
  GraphicsContext.draw(_:in:style:shading:)(&v18, a2 & 0x101, &v14, a3, a4, a5, a6, a7);
  outlined destroy of GraphicsContext.ResolvedImage(v24);
  v28[2] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[0] = v14;
  v28[1] = v15;
  outlined destroy of GraphicsContext.Shading?(v28, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v30[4] = v22;
  v31[0] = v23[0];
  *(v31 + 12) = *(v23 + 12);
  v30[0] = v18;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  return outlined destroy of GraphicsImage(v30);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  GraphicsContext.resolve(_:)(a1, a2, v12);
  GraphicsContext.draw(_:at:anchor:)(v12, a2, a3, a4, a5, a6);
  v14[10] = v12[10];
  v14[11] = v12[11];
  v15 = v13;
  v14[6] = v12[6];
  v14[7] = v12[7];
  v14[8] = v12[8];
  v14[9] = v12[9];
  v14[2] = v12[2];
  v14[3] = v12[3];
  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[0] = v12[0];
  v14[1] = v12[1];
  return outlined destroy of GraphicsContext.ResolvedImage(v14);
}

double GraphicsContext.ResolvedText.shading.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  outlined init with copy of GraphicsContext.Shading(v8, &v7);
  return result;
}

__n128 GraphicsContext.ResolvedText.shading.setter(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 73);
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  outlined destroy of GraphicsContext.Shading(v7);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

CGSize __swiftcall GraphicsContext.ResolvedText.measure(in:)(CGSize in)
{
  v2 = *v1;
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  (*(*v2 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext);
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t GraphicsContext.ResolvedText.firstBaseline(in:)()
{
  v1 = *v0;
  if (one-time initialization token for firstTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v1 + 280))(static VerticalAlignment.firstTextBaseline);
}

uint64_t GraphicsContext.ResolvedText.lastBaseline(in:)()
{
  v1 = *v0;
  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v1 + 280))(static VerticalAlignment.lastTextBaseline);
}

void GraphicsContext.resolve(_:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a5[4];
  v13 = a5[5];
  v14 = v12;
  v15 = v13;
  if (v12 == 1)
  {
    v16 = a5[2];
    v14 = *(v16 + 48);
    v15 = *(v16 + 56);
  }

  *v129 = v14;
  *&v129[8] = v15;
  *&v115 = 2;
  *v127 = 0uLL;
  outlined copy of EnvironmentValues?(v12, v13);
  v17 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(v139, v129, 1, &v115, v127, a1, a2, a3 & 1, a4);

  v18 = a5[4];
  v19 = a5[5];
  v20 = v18;
  v21 = v19;
  if (v18 == 1)
  {
    v22 = a5[2];
    v20 = *(v22 + 48);
    v21 = *(v22 + 56);
  }

  v98 = a5;
  v99 = v21;
  v23 = *(a4 + 16);
  if (v23)
  {
    v24 = (a4 + 40);
    while (1)
    {
      v25 = *v24;
      v24 += 16;
      if ((v25 & 0xE0) == 0xC0)
      {
        type metadata accessor for CollapsibleTextModifier();
        if (swift_dynamicCastClass())
        {
          break;
        }
      }

      if (!--v23)
      {
        goto LABEL_11;
      }
    }

    v26 = 1;
  }

  else
  {
LABEL_11:
    v26 = 0;
  }

  v100 = v140;
  v96 = v141;
  v97 = v142;
  v27 = v143;
  if (v99)
  {
    v28 = v17;
    outlined copy of EnvironmentValues?(v18, v19);

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v20, v129);
  }

  else
  {
    *v127 = v20;
    v29 = v17;
    outlined copy of EnvironmentValues?(v18, v19);

    TextLayoutProperties.init(from:)(v127, v129);
  }

  *v127 = *v129;
  *&v127[10] = *&v129[10];
  v30 = v130;
  v31 = v138;
  if (v27 != 3)
  {
    v30 = v27;
  }

  v127[26] = v30;
  *&v127[91] = v135;
  *&v127[107] = v136;
  *&v127[123] = *v137;
  *&v127[136] = *&v137[13];
  *&v127[27] = v131;
  *&v127[43] = v132;
  *&v127[59] = v133;
  *&v127[75] = v134;
  v128 = v138 & 0xFD;
  if ((BYTE6(v134) & 1) != 0 || (v100 & 0xD8) != 0 || v127[120] != 2)
  {
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v32 = swift_allocObject();
    v34 = MEMORY[0x1E69E7CC0];
    *(v32 + 416) = MEMORY[0x1E69E7CC0];
    *(v32 + 424) = 0u;
    *(v32 + 440) = 0u;
    *(v32 + 456) = 0u;
    *(v32 + 472) = 0u;
    *(v32 + 488) = 512;
    if ((v127[8] & 1) != 0 || *v127 != 1)
    {
      if (v17)
      {
        NSAttributedString.replacingLineBreakModes(_:)(0);
        v36 = v37;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v35 = v17;
      v36 = v17;
    }

    v65 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v66 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v65 setDelegate_];
    [v65 setUsesFontLeading_];
    v67 = v36;
    v68 = v65;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v68, v36, v125);
    v69 = v125[3];
    *(v32 + 528) = v125[2];
    *(v32 + 544) = v69;
    *(v32 + 560) = v125[4];
    v70 = v125[1];
    *(v32 + 496) = v125[0];
    *(v32 + 512) = v70;
    *(v32 + 576) = v66;
    *(v32 + 352) = 0u;
    *(v32 + 368) = 0u;
    *(v32 + 384) = 0;
    *(v32 + 392) = 0x8000000000000000;
    *(v32 + 400) = 0;
    *(v32 + 408) = v34;
    *(v32 + 200) = 0;
    *(v32 + 208) = 1;
    v126 = 1;
    *(v32 + 280) = 0u;
    *(v32 + 296) = 0u;
    *(v32 + 312) = 0u;
    *(v32 + 328) = 0u;
    *(v32 + 344) = 1;
    *(v32 + 216) = v36;
    *(v32 + 224) = 0u;
    *(v32 + 240) = 0u;
    *(v32 + 256) = 768;
    *(v32 + 258) = v26;
    *(v32 + 260) = v100;
    *(v32 + 264) = v96;
    *(v32 + 272) = v97;
    v71 = *&v127[16];
    *(v32 + 16) = *v127;
    *(v32 + 32) = v71;
    v72 = *&v127[32];
    v73 = *&v127[48];
    v74 = *&v127[80];
    *(v32 + 80) = *&v127[64];
    *(v32 + 96) = v74;
    *(v32 + 48) = v72;
    *(v32 + 64) = v73;
    v75 = *&v127[96];
    v76 = *&v127[112];
    v77 = *&v127[128];
    *(v32 + 160) = v128;
    *(v32 + 128) = v76;
    *(v32 + 144) = v77;
    *(v32 + 112) = v75;
    if (v36)
    {
      v112 = 0uLL;
      v113 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      v114 = 1;
      v108 = v127[104];
      v109 = *&v127[112];
      v121 = *&v127[96];
      v122 = *&v127[112];
      v123 = *&v127[128];
      v124 = v128;
      v117 = *&v127[32];
      v118 = *&v127[48];
      v119 = *&v127[64];
      v120 = *&v127[80];
      v115 = *v127;
      v116 = *&v127[16];
      outlined init with copy of TextLayoutProperties(v127, v107);
      v78 = v67;
      outlined init with copy of TextLayoutProperties(v127, v107);
      v79 = v66;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v78, &v110, &v115);
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;

      v88 = v113;
      *(v32 + 312) = v112;
      *(v32 + 328) = v88;
      *(v32 + 344) = v114;
      v89 = v111;
      *(v32 + 280) = v110;
      *(v32 + 296) = v89;
      *(v32 + 168) = v81;
      *(v32 + 176) = v83;
      *(v32 + 184) = v85;
      *(v32 + 192) = v87;
    }

    else
    {
      *(v32 + 344) = 1;
      *(v32 + 168) = 0uLL;
      *(v32 + 184) = 0uLL;
      outlined init with copy of TextLayoutProperties(v127, &v115);
      v90 = v66;
    }

    v91 = v98;
    swift_beginAccess();
    v92 = *(v32 + 97);

    v93 = _TextContainer(v92);
    [v93 setLineFragmentPadding_];
    [v68 setTextContainer_];
    if ((v100 & 0xC0) != 0)
    {
      _NSTextLayoutManagerRequiresCTLine(v68);
    }

    outlined destroy of Text.ResolvedProperties(v139);

    outlined destroy of TextLayoutProperties(v127);
  }

  else
  {
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v32 = swift_allocObject();
    v33 = v31 & 1;
    if ((v31 & 1) != 0 || !v17)
    {
      outlined init with copy of TextLayoutProperties(v127, &v115);
    }

    else
    {
      outlined init with copy of TextLayoutProperties(v127, &v115);
      NSAttributedString.isDynamic.getter();
    }

    v38 = *v127;
    v39 = v127[8];
    v40 = *&v127[16];
    v41 = v127[24];
    v42 = *&v127[88];
    v43 = v17;
    v44 = *&v127[32];
    v45 = *&v127[72];
    if (!v17)
    {
      v95 = *&v127[88];
      if (one-time initialization token for emptyString != -1)
      {
        swift_once();
      }

      v43 = static NSAttributedString.emptyString;
      v42 = v95;
    }

    v108 = v39;
    v126 = v41;
    *(v32 + 352) = 0;
    *(v32 + 360) = v43;
    *(v32 + 368) = v38;
    *(v32 + 376) = v39;
    *(v32 + 384) = v40;
    *(v32 + 392) = v41;
    *(v32 + 400) = v44;
    *(v32 + 408) = v42;
    *(v32 + 424) = v33;
    *(v32 + 425) = v45 != 0.0;
    *(v32 + 426) = v26;
    *(v32 + 432) = MEMORY[0x1E69E7CC0];
    *(v32 + 200) = 0;
    *(v32 + 208) = 1;
    v46 = (v32 + 280);
    v106 = 1;
    *(v32 + 312) = 0u;
    *(v32 + 328) = 0u;
    *(v32 + 280) = 0u;
    *(v32 + 296) = 0u;
    *(v32 + 344) = 1;
    *(v32 + 216) = v17;
    *(v32 + 224) = 0u;
    *(v32 + 240) = 0u;
    *(v32 + 256) = 768;
    *(v32 + 258) = v26;
    *(v32 + 260) = v100;
    *(v32 + 264) = v96;
    *(v32 + 272) = v97;
    v47 = *&v127[16];
    *(v32 + 16) = *v127;
    *(v32 + 32) = v47;
    v48 = *&v127[32];
    v49 = *&v127[48];
    v50 = *&v127[80];
    *(v32 + 80) = *&v127[64];
    *(v32 + 96) = v50;
    *(v32 + 48) = v48;
    *(v32 + 64) = v49;
    v51 = *&v127[96];
    v52 = *&v127[112];
    v53 = *&v127[128];
    *(v32 + 160) = v128;
    *(v32 + 128) = v52;
    *(v32 + 144) = v53;
    *(v32 + 112) = v51;
    if (v17)
    {
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v105 = 1;
      LOBYTE(v125[0]) = v127[104];
      *(&v125[0] + 1) = *&v127[112];
      v121 = *&v127[96];
      v122 = *&v127[112];
      v123 = *&v127[128];
      v124 = v128;
      v117 = *&v127[32];
      v118 = *&v127[48];
      v119 = *&v127[64];
      v120 = *&v127[80];
      v115 = *v127;
      v116 = *&v127[16];
      v54 = v17;
      outlined init with copy of TextLayoutProperties(v127, v107);
      v17 = v54;
      outlined init with copy of TextLayoutProperties(v127, v107);

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v17, &v101, &v115);
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      outlined destroy of TextLayoutProperties(v127);
      outlined destroy of Text.ResolvedProperties(v139);

      outlined destroy of TextLayoutProperties(v127);
      v63 = v104;
      *(v32 + 312) = v103;
      *(v32 + 328) = v63;
      *(v32 + 344) = v105;
      v64 = v102;
      *v46 = v101;
      *(v32 + 296) = v64;
      *(v32 + 168) = v56;
      *(v32 + 176) = v58;
      *(v32 + 184) = v60;
      *(v32 + 192) = v62;
    }

    else
    {
      outlined init with copy of TextLayoutProperties(v127, &v115);

      outlined destroy of Text.ResolvedProperties(v139);

      outlined destroy of TextLayoutProperties(v127);
      outlined destroy of TextLayoutProperties(v127);
      *v46 = 0u;
      *(v32 + 296) = 0u;
      *(v32 + 312) = 0u;
      *(v32 + 328) = 0u;
      *(v32 + 344) = 1;
      *(v32 + 168) = 0u;
      *(v32 + 184) = 0u;
    }

    v91 = v98;
  }

  v94 = v91[2];
  *a6 = v32;
  *(a6 + 8) = v94;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0;
  *(a6 + 88) = 10;
}

void GraphicsContext.resolve(_:layoutProperties:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a5[7];
  *&v172[16] = a5[6];
  v173 = v12;
  v174 = a5[8];
  v175 = *(a5 + 144);
  v13 = a5[3];
  v169 = a5[2];
  v170 = v13;
  v14 = a5[5];
  v171 = a5[4];
  *v172 = v14;
  v15 = a5[1];
  v167 = *a5;
  v168 = v15;
  v17 = a6[4];
  v16 = a6[5];
  v18 = v17;
  v19 = v16;
  v20 = a6[2];
  if (v17 == 1)
  {
    v18 = v20[6];
    v19 = v20[7];
  }

  *&v166 = v18;
  *(&v166 + 1) = v19;
  if (v20[9])
  {
    outlined copy of EnvironmentValues?(v17, v16);
  }

  else
  {
    if (v19)
    {
      outlined copy of EnvironmentValues?(v17, v16);

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v18, v164);
    }

    else
    {
      v145 = v18;
      outlined copy of EnvironmentValues?(v17, v16);

      TextLayoutProperties.init(from:)(&v145, v164);
    }

    v21 = swift_allocObject();
    v22 = v164[7];
    *(v21 + 112) = v164[6];
    *(v21 + 128) = v22;
    *(v21 + 144) = v164[8];
    *(v21 + 160) = v165;
    v23 = v164[3];
    *(v21 + 48) = v164[2];
    *(v21 + 64) = v23;
    v24 = v164[5];
    *(v21 + 80) = v164[4];
    *(v21 + 96) = v24;
    v25 = v164[1];
    *(v21 + 16) = v164[0];
    *(v21 + 32) = v25;
    v20[9] = v21;
  }

  v160 = *&v172[16];
  v161 = v173;
  v162 = v174;
  v163 = v175;
  v156 = v169;
  v157 = v170;
  v158 = v171;
  v159 = *v172;
  v154 = v167;
  v155 = v168;
  v114 = v20;
  v26 = v20[9];
  if (v26)
  {
    v27 = *(v26 + 128);
    v141[6] = *(v26 + 112);
    v141[7] = v27;
    v141[8] = *(v26 + 144);
    v142 = *(v26 + 160);
    v28 = *(v26 + 64);
    v141[2] = *(v26 + 48);
    v141[3] = v28;
    v29 = *(v26 + 96);
    v141[4] = *(v26 + 80);
    v141[5] = v29;
    v30 = *(v26 + 32);
    v141[0] = *(v26 + 16);
    v141[1] = v30;
    v31 = *(v26 + 128);
    v151 = *(v26 + 112);
    v152 = v31;
    *v153 = *(v26 + 144);
    v153[16] = *(v26 + 160);
    v32 = *(v26 + 64);
    v147 = *(v26 + 48);
    v148 = v32;
    v33 = *(v26 + 96);
    v149 = *(v26 + 80);
    v150 = v33;
    v34 = *(v26 + 32);
    v145 = *(v26 + 16);
    v146 = v34;
    outlined init with copy of TextLayoutProperties(v141, &v132);
    TextLayoutProperties.update(_:from:)(&v166, &v145);
    v143[6] = v151;
    v143[7] = v152;
    v143[8] = *v153;
    v144 = v153[16];
    v143[2] = v147;
    v143[3] = v148;
    v143[4] = v149;
    v143[5] = v150;
    v143[0] = v145;
    v143[1] = v146;
    outlined destroy of TextLayoutProperties(v143);
    v145 = v166;
    *&v130[0] = 2;
    v122[0] = 0;
    v122[1] = 0;

    v35 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(&v132, &v145, 1, v130, v122, a1, a2, a3 & 1, a4);

    v151 = v138;
    v152 = v139;
    *v153 = *v140;
    *&v153[9] = *&v140[9];
    v148 = v135;
    v149 = v136;
    v150 = v137;
    v145 = v132;
    v146 = v133;
    v147 = v134;
    v36 = *(a4 + 16);
    if (v36)
    {
      v37 = (a4 + 40);
      while (1)
      {
        v38 = *v37;
        v37 += 16;
        if ((v38 & 0xE0) == 0xC0)
        {
          type metadata accessor for CollapsibleTextModifier();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        if (!--v36)
        {
          goto LABEL_16;
        }
      }

      v113 = 1;
    }

    else
    {
LABEL_16:
      v113 = 0;
    }

    v115 = v147;
    v39 = *(&v147 + 1);
    v40 = v148;
    if ((v172[1] & 1) != 0 || (v147 & 0xD8) != 0 || BYTE8(v173) != 2)
    {
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v41 = swift_allocObject();
      v45 = MEMORY[0x1E69E7CC0];
      *(v41 + 416) = MEMORY[0x1E69E7CC0];
      *(v41 + 424) = 0u;
      *(v41 + 440) = 0u;
      *(v41 + 456) = 0u;
      *(v41 + 472) = 0u;
      *(v41 + 488) = 512;
      v46 = BYTE8(v167);
      v47 = v167;
      v48 = v35;
      v112 = v35;
      if ((v46 & 1) != 0 || v47 != 1)
      {
        if (v35)
        {
          NSAttributedString.replacingLineBreakModes(_:)(0);
          v50 = v51;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        v49 = v48;
        v50 = v35;
      }

      v81 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v82 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v81 setDelegate_];
      [v81 setUsesFontLeading_];
      v83 = v50;
      v84 = v81;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v84, v50, v130);
      v85 = v130[3];
      *(v41 + 528) = v130[2];
      *(v41 + 544) = v85;
      *(v41 + 560) = v130[4];
      v86 = v130[1];
      *(v41 + 496) = v130[0];
      *(v41 + 512) = v86;
      *(v41 + 576) = v82;
      *(v41 + 352) = 0u;
      *(v41 + 368) = 0u;
      *(v41 + 384) = 0;
      *(v41 + 392) = 0x8000000000000000;
      *(v41 + 400) = 0;
      *(v41 + 408) = v45;
      *(v41 + 200) = 0;
      *(v41 + 208) = 1;
      v131 = 1;
      *(v41 + 280) = 0u;
      *(v41 + 296) = 0u;
      *(v41 + 312) = 0u;
      *(v41 + 328) = 0u;
      *(v41 + 344) = 1;
      *(v41 + 216) = v50;
      *(v41 + 224) = 0u;
      *(v41 + 240) = 0u;
      *(v41 + 256) = 768;
      *(v41 + 258) = v113;
      *(v41 + 260) = v115;
      *(v41 + 264) = v39;
      *(v41 + 272) = v40;
      v87 = v168;
      *(v41 + 16) = v167;
      *(v41 + 32) = v87;
      v88 = v169;
      v89 = v170;
      v90 = *v172;
      *(v41 + 80) = v171;
      *(v41 + 96) = v90;
      *(v41 + 48) = v88;
      *(v41 + 64) = v89;
      v91 = *&v172[16];
      v92 = v173;
      v93 = v174;
      *(v41 + 160) = v175;
      *(v41 + 128) = v92;
      *(v41 + 144) = v93;
      *(v41 + 112) = v91;
      if (v50)
      {
        v127 = 0uLL;
        v128 = 0uLL;
        v125 = 0uLL;
        v126 = 0uLL;
        v129 = 1;
        v123 = v172[24];
        v124 = v173;
        v138 = *&v172[16];
        v139 = v173;
        *v140 = v174;
        v140[16] = v175;
        v134 = v169;
        v135 = v170;
        v136 = v171;
        v137 = *v172;
        v132 = v167;
        v133 = v168;
        outlined init with copy of TextLayoutProperties(&v167, v122);
        v94 = v83;
        outlined init with copy of TextLayoutProperties(&v167, v122);
        v95 = v82;

        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v94, &v125, &v132);
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;

        v104 = v128;
        *(v41 + 312) = v127;
        *(v41 + 328) = v104;
        *(v41 + 344) = v129;
        v105 = v126;
        *(v41 + 280) = v125;
        *(v41 + 296) = v105;
        *(v41 + 168) = v97;
        *(v41 + 176) = v99;
        *(v41 + 184) = v101;
        *(v41 + 192) = v103;
      }

      else
      {
        *(v41 + 344) = 1;
        *(v41 + 168) = 0uLL;
        *(v41 + 184) = 0uLL;
        outlined init with copy of TextLayoutProperties(&v167, &v132);
        v106 = v82;
      }

      v80 = v114;
      swift_beginAccess();
      v107 = *(v41 + 97);

      v108 = _TextContainer(v107);
      [v108 setLineFragmentPadding_];
      [v84 setTextContainer_];
      if ((v115 & 0xC0) != 0)
      {
        _NSTextLayoutManagerRequiresCTLine(v84);
      }

      outlined destroy of Text.ResolvedProperties(&v145);
    }

    else
    {
      type metadata accessor for ResolvedStyledText.StringDrawing();
      v41 = swift_allocObject();
      v42 = v175;
      v110 = v175 & 1;
      v43 = v35;
      v111 = v40;
      if ((v42 & 1) != 0 || !v35)
      {
        v44 = v35;
        outlined init with copy of TextLayoutProperties(&v167, &v132);
      }

      else
      {
        v44 = v35;
        outlined init with copy of TextLayoutProperties(&v167, &v132);
        NSAttributedString.isDynamic.getter();
      }

      v52 = v167;
      v53 = BYTE8(v167);
      v54 = v168;
      v55 = BYTE8(v168);
      v56 = *&v172[8];
      v57 = v44;
      v58 = v169;
      v59 = *(&v171 + 1);
      if (!v44)
      {
        v109 = *&v172[8];
        if (one-time initialization token for emptyString != -1)
        {
          swift_once();
        }

        v57 = static NSAttributedString.emptyString;
        v56 = v109;
      }

      v123 = v53;
      v131 = v55;
      *(v41 + 352) = 0;
      *(v41 + 360) = v57;
      *(v41 + 368) = v52;
      *(v41 + 376) = v53;
      *(v41 + 384) = v54;
      *(v41 + 392) = v55;
      *(v41 + 400) = v58;
      *(v41 + 408) = v56;
      *(v41 + 424) = v110;
      *(v41 + 425) = v59 != 0.0;
      *(v41 + 426) = v113;
      *(v41 + 432) = MEMORY[0x1E69E7CC0];
      *(v41 + 200) = 0;
      *(v41 + 208) = 1;
      v60 = (v41 + 280);
      v121 = 1;
      *(v41 + 312) = 0u;
      *(v41 + 328) = 0u;
      *(v41 + 280) = 0u;
      *(v41 + 296) = 0u;
      *(v41 + 344) = 1;
      *(v41 + 216) = v44;
      *(v41 + 224) = 0u;
      *(v41 + 240) = 0u;
      *(v41 + 256) = 768;
      *(v41 + 258) = v113;
      *(v41 + 260) = v115;
      *(v41 + 264) = v39;
      *(v41 + 272) = v111;
      v61 = v168;
      *(v41 + 16) = v167;
      *(v41 + 32) = v61;
      v62 = v169;
      v63 = v170;
      v64 = *v172;
      *(v41 + 80) = v171;
      *(v41 + 96) = v64;
      *(v41 + 48) = v62;
      *(v41 + 64) = v63;
      v65 = *&v172[16];
      v66 = v173;
      v67 = v174;
      *(v41 + 160) = v175;
      *(v41 + 128) = v66;
      *(v41 + 144) = v67;
      *(v41 + 112) = v65;
      if (v44)
      {
        v118 = 0uLL;
        v119 = 0uLL;
        v116 = 0uLL;
        v117 = 0uLL;
        v120 = 1;
        LOBYTE(v130[0]) = v172[24];
        *(&v130[0] + 1) = v173;
        v138 = *&v172[16];
        v139 = v173;
        *v140 = v174;
        v140[16] = v175;
        v134 = v169;
        v135 = v170;
        v136 = v171;
        v137 = *v172;
        v132 = v167;
        v133 = v168;
        v68 = v44;
        outlined init with copy of TextLayoutProperties(&v167, v122);
        v69 = v68;
        outlined init with copy of TextLayoutProperties(&v167, v122);

        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v69, &v116, &v132);
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        outlined destroy of Text.ResolvedProperties(&v145);

        outlined destroy of TextLayoutProperties(&v167);
        v78 = v119;
        *(v41 + 312) = v118;
        *(v41 + 328) = v78;
        *(v41 + 344) = v120;
        v79 = v117;
        *v60 = v116;
        *(v41 + 296) = v79;
        *(v41 + 168) = v71;
        *(v41 + 176) = v73;
        *(v41 + 184) = v75;
        *(v41 + 192) = v77;
      }

      else
      {

        outlined destroy of Text.ResolvedProperties(&v145);

        *(v41 + 312) = 0u;
        *(v41 + 328) = 0u;
        *v60 = 0u;
        *(v41 + 296) = 0u;
        *(v41 + 344) = 1;
        *(v41 + 168) = 0u;
        *(v41 + 184) = 0u;
      }

      v80 = v114;
    }

    *a7 = v41;
    *(a7 + 8) = v80;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0;
    *(a7 + 88) = 10;
  }

  else
  {
    __break(1u);
  }
}

void GraphicsContext.draw(_:in:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *a1;
  v12 = *(a1 + 4);
  v46[2] = *(a1 + 3);
  v47[0] = v12;
  *(v47 + 9) = *(a1 + 73);
  v13 = *(a1 + 2);
  v46[0] = *(a1 + 1);
  v46[1] = v13;
  if (v11[260])
  {
    v18 = *(a1 + 3);
    *v19 = *(a1 + 4);
    *&v19[9] = *(a1 + 73);
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    outlined init with copy of GraphicsContext.Shading(v46, &v20);
    GraphicsContext.Shading.resolve(in:levels:)(a2, 1, &v20);
    v31[2] = v18;
    v32[0] = *v19;
    *(v32 + 9) = *&v19[9];
    v31[0] = v16;
    v31[1] = v17;
    outlined destroy of GraphicsContext.Shading(v31);
    v33[8] = v28;
    v33[9] = v29;
    v33[4] = v24;
    v33[5] = v25;
    v33[6] = v26;
    v33[7] = v27;
    v33[0] = v20;
    v33[1] = v21;
    v33[2] = v22;
    v33[3] = v23;
    v43 = v28;
    v44 = v29;
    v39 = v24;
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v35 = v20;
    v36 = v21;
    v34 = v30;
    v45 = v30;
    v37 = v22;
    v38 = v23;
    if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v35) != 1)
    {
      v28 = v43;
      v29 = v44;
      v30 = v45;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v20 = v35;
      v21 = v36;
      v22 = v37;
      v23 = v38;
      GraphicsContext.draw(_:in:shading:)(v11, &v20, a2, a3, a4, a5, a6);
      outlined destroy of GraphicsContext.Shading?(v33, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
    }
  }

  else
  {

    c = RBDrawingStateBeginCGContext();
    v14 = *(a2 + 52);
    if (v14)
    {
      CGContextSetBlendMode(c, v14);
    }

    specialized closure #1 in GraphicsContext.withPlatformContext(content:)(c, a2, v11, a3, a4, a5, a6);

    RBDrawingStateEndCGContext();
  }
}

void GraphicsContext.draw(_:in:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{

  c = RBDrawingStateBeginCGContext();
  v12 = *(a2 + 52);
  if (v12)
  {
    CGContextSetBlendMode(c, v12);
  }

  specialized closure #1 in GraphicsContext.withPlatformContext(content:)(c, a2, a1, a3, a4, a5, a6);

  RBDrawingStateEndCGContext();
}

void GraphicsContext.draw(_:in:shading:)(char *a1, __int128 *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v10 = a2[7];
  v11 = a2[9];
  v126 = a2[8];
  v127 = v11;
  v12 = a2[3];
  v13 = a2[5];
  v122 = a2[4];
  v123 = v13;
  v14 = a2[5];
  v15 = a2[7];
  v124 = a2[6];
  v125 = v15;
  v16 = a2[1];
  v118 = *a2;
  v119 = v16;
  v17 = a2[3];
  v19 = *a2;
  v18 = a2[1];
  v120 = a2[2];
  v121 = v17;
  v20 = a2[9];
  v129[8] = v126;
  v129[9] = v20;
  v129[4] = v122;
  v129[5] = v14;
  v129[6] = v124;
  v129[7] = v10;
  v129[0] = v19;
  v129[1] = v18;
  v128 = *(a2 + 20);
  v130 = *(a2 + 20);
  v129[2] = v120;
  v129[3] = v12;
  v21 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v129);
  if (v21 == 2)
  {
    v30 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v129);
    v23 = *v30;
    v25 = v30[1];
    v27 = v30[2];
    v29 = v30[3];
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    destructiveProjectEnumData for GraphicsContext.ResolvedShading(v129);
    RBColorFromLinear();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
LABEL_5:
    GraphicsContext.draw(_:in:sRGBColor:)(a1, a3, a4, a5, a6, a7, v23, v25, v27, v29);
    return;
  }

  v31 = &property descriptor for SizingPreferences.size2D;
  v32 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v32 setDefaultColorSpace_];
  [v32 setDeviceScale_];
  LODWORD(v34) = 1.0;
  v35 = [v32 beginCGContextWithAlpha:0 flags:v34];
  v36 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v36 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37 = static GraphicsContext.Storage.Shared._textDrawingContext;
    if (*(a1 + 27))
    {
      v38 = NSAttributedString.isDynamic.getter();
    }

    else
    {
      v38 = 0;
    }

    (*(*a1 + 296))(0, v38, v37, 0, a4, a5, a6, a7, a6, a7);
    [v36 pop];

    [v32 endCGContext];
    v97 = [v32 moveContents];
    v39 = a3[2];
    v40 = *(v39 + 256);
    if (v40)
    {
      v35 = v40;
      [v35 removeAll];
    }

    else
    {
      v41 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) v31[463]];
      v42 = *(v39 + 256);
      *(v39 + 256) = v41;
      v35 = v41;
    }

    v36 = a3[3];
    RBDrawingStateBeginLayer();
    if (one-time initialization token for keyColorAnyAlpha != -1)
    {
      swift_once();
    }

    LODWORD(v44) = HIDWORD(static RBColor.keyColorAnyAlpha);
    LODWORD(v43) = static RBColor.keyColorAnyAlpha;
    LODWORD(v45) = dword_1ED566B58;
    LODWORD(v46) = unk_1ED566B5C;
    [v35 addConditionWithFillColor:2 colorSpace:{v43, v44, v45, v46, v94, v95}];
    [v35 setInvertsResult_];
    [v35 copyFilteredDisplayList_];
    RBDrawingStateDrawDisplayList();
    swift_unknownObjectRelease();
    [v35 setInvertsResult_];
    v47 = *(v39 + 264);
    v94 = v36;
    v95 = v32;
    if (v47)
    {
      v96 = v47;
      [v96 removeAll];
    }

    else
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) v31[463]];
      v49 = *(v39 + 264);
      *(v39 + 264) = v48;
      v96 = v48;
    }

    v50 = *(a1 + 33);
    v32 = *(v50 + 16);
    if (!v32)
    {
      break;
    }

    v51 = 0;
    v52 = 0;
    v53 = *MEMORY[0x1E69C7138];
    v54 = *MEMORY[0x1E69C7128];
    v55 = *(MEMORY[0x1E69C7128] + 4);
    v57 = *(MEMORY[0x1E69C7128] + 8);
    v56 = *(MEMORY[0x1E69C7128] + 12);
    a1 = (v50 + 120 * v32 - 88);
    while (1)
    {
      if (!v51)
      {
        v52 = *(v50 + 16);
      }

      if (__OFSUB__(v52--, 1))
      {
        break;
      }

      if (v32 > *(v50 + 16))
      {
        goto LABEL_29;
      }

      --v32;
      v59 = *a1;
      v60 = *(a1 + 1);
      v61 = *(a1 + 3);
      v103[2] = *(a1 + 2);
      v103[3] = v61;
      v103[0] = v59;
      v103[1] = v60;
      v62 = *(a1 + 4);
      v63 = *(a1 + 5);
      v64 = *(a1 + 6);
      v104 = *(a1 + 14);
      v103[5] = v63;
      v103[6] = v64;
      v103[4] = v62;
      memmove(__dst, a1, 0x78uLL);
      v111 = __dst[4];
      v112 = __dst[5];
      v113 = __dst[6];
      *&v114 = v106;
      v107 = __dst[0];
      v108 = __dst[1];
      v109 = __dst[2];
      v110 = __dst[3];
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v107);
      v65 = vcvts_n_f32_s64(v52, 0xAuLL);
      outlined init with copy of _ShapeStyle_Pack.Style(v103, v101);
      v31 = RBDrawingStateInit();
      RBDrawingStateBeginLayer();
      LODWORD(v66) = -1.0;
      LODWORD(v67) = -1.0;
      *&v68 = v65;
      LODWORD(v69) = v53;
      LODWORD(v70) = v54;
      LODWORD(v71) = v55;
      LODWORD(v72) = v57;
      LODWORD(v73) = v56;
      [v96 addColorReplacementFrom:2 to:v66 colorSpace:{v67, v68, v69, v70, v71, v72, v73}];
      RBDrawingStateAddTransformStyle();
      [v35 removeAll];
      LODWORD(v74) = -1.0;
      LODWORD(v75) = -1.0;
      *&v76 = v65;
      LODWORD(v77) = v53;
      [v35 addConditionWithFillColor:2 colorSpace:{v74, v75, v76, v77}];
      v36 = [v35 copyFilteredDisplayList_];
      RBDrawingStateDrawDisplayList();
      swift_unknownObjectRelease();
      RBDrawingStateClipLayer();
      v101[8] = v115;
      v101[9] = v116;
      v102 = v117;
      v101[4] = v111;
      v101[5] = v112;
      v101[6] = v113;
      v101[7] = v114;
      v101[0] = v107;
      v101[1] = v108;
      v101[2] = v109;
      v101[3] = v110;
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(v101, v31, 0, a3, a4, a5, a6, a7, 1.0);
      RBDrawingStateDestroy();
      outlined destroy of _ShapeStyle_Pack.Style(__dst);
      a1 -= 120;
      ++v51;
      if (!v32)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_25:
  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  v78 = static RBColor.foregroundKeyColorAnyAlpha;
  v79 = dword_1ED566B70;
  v80 = dword_1ED566B74;
  v81 = RBDrawingStateInit();
  RBDrawingStateBeginLayer();
  LODWORD(v82) = *MEMORY[0x1E69C7128];
  LODWORD(v83) = *(MEMORY[0x1E69C7128] + 4);
  LODWORD(v84) = *(MEMORY[0x1E69C7128] + 8);
  LODWORD(v85) = *(MEMORY[0x1E69C7128] + 12);
  LODWORD(v87) = HIDWORD(v78);
  LODWORD(v86) = v78;
  LODWORD(v88) = v79;
  LODWORD(v89) = v80;
  [v96 addColorReplacementFrom:2 to:v86 colorSpace:{v87, v88, v89, v82, v83, v84, v85}];
  RBDrawingStateAddTransformStyle();
  [v35 removeAll];
  LODWORD(v91) = HIDWORD(v78);
  LODWORD(v90) = v78;
  LODWORD(v92) = v79;
  LODWORD(v93) = v80;
  [v35 addConditionWithFillColor:2 colorSpace:{v90, v91, v92, v93}];
  [v35 copyFilteredDisplayList_];
  RBDrawingStateDrawDisplayList();
  swift_unknownObjectRelease();
  RBDrawingStateClipLayer();
  v115 = v126;
  v116 = v127;
  v117 = v128;
  v111 = v122;
  v112 = v123;
  v113 = v124;
  v114 = v125;
  v107 = v118;
  v108 = v119;
  v109 = v120;
  v110 = v121;
  GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v107, v81, 0, a3, a4, a5, a6, a7, 1.0);
  RBDrawingStateDestroy();
  RBDrawingStateDrawLayer();

  swift_unknownObjectRelease();
}

void GraphicsContext.draw(_:at:anchor:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v13 = (*(*v12 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext, INFINITY, INFINITY);
  v15 = v12;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v16 = *(a1 + 8);
  v17 = *(a1 + 24);
  GraphicsContext.draw(_:in:)(&v15, a2, a3 - v13 * a5, a4 - v14 * a6, v13, v14);
}

uint64_t GraphicsContext.draw(_:in:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  GraphicsContext.resolve(_:)(a1, a2, a3 & 1, a4, a5, v15);
  GraphicsContext.draw(_:in:)(v15, a5, a6, a7, a8, a9);
  v17[2] = v15[2];
  v17[3] = v15[3];
  v18[0] = v16[0];
  *(v18 + 9) = *(v16 + 9);
  v17[0] = v15[0];
  v17[1] = v15[1];
  return outlined destroy of GraphicsContext.ResolvedText(v17);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  GraphicsContext.resolve(_:)(a1, a2, a3 & 1, a4, a5, v20);
  v14 = *&v20[0];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v15 = (*(*v14 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext, INFINITY, INFINITY);
  v18[2] = v20[2];
  v18[3] = v20[3];
  v19[0] = v21[0];
  *(v19 + 9) = *(v21 + 9);
  v18[0] = v20[0];
  v18[1] = v20[1];
  GraphicsContext.draw(_:in:)(v18, a5, a6 - v15 * a8, a7 - v16 * a9, v15, v16);
  return outlined destroy of GraphicsContext.ResolvedText(v20);
}

uint64_t GraphicsContext.ResolvedSymbol.list.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t GraphicsContext.ResolvedSymbol.init(list:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t GraphicsContext.draw(_:in:)(double *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a3 == 0.0 && a4 == 0.0 && (a5 / a1[1] == 1.0 ? (v6 = a6 / a1[2] == 1.0) : (v6 = 0), v6))
  {

    return RBDrawingStateDrawDisplayList2();
  }

  else
  {
    RBDrawingStateInit();
    RBDrawingStateTranslateCTM();
    RBDrawingStateScaleCTM();
    RBDrawingStateDrawDisplayList2();

    return RBDrawingStateDestroy();
  }
}

uint64_t GraphicsContext.draw(_:at:anchor:)(double *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 / v6 == 1.0 && a3 - v6 * a5 == 0.0 && (a4 - v7 * a6 == 0.0 ? (v8 = v7 / v7 == 1.0) : (v8 = 0), v8))
  {

    return RBDrawingStateDrawDisplayList2();
  }

  else
  {
    RBDrawingStateInit();
    RBDrawingStateTranslateCTM();
    RBDrawingStateScaleCTM();
    RBDrawingStateDrawDisplayList2();

    return RBDrawingStateDestroy();
  }
}

void GraphicsContext.withCGContext(content:)(void (*a1)(CGContext *), uint64_t a2, uint64_t a3)
{
  v5 = RBDrawingStateBeginCGContext();
  v6 = v5;
  v7 = *(a3 + 52);
  if (v7)
  {
    CGContextSetBlendMode(v5, v7);
  }

  a1(v6);
  RBDrawingStateEndCGContext();
}

void GraphicsContext.withPlatformContext(content:)(void (*a1)(id), uint64_t a2, uint64_t a3)
{
  v5 = RBDrawingStateBeginCGContext();
  v6 = v5;
  v7 = *(a3 + 52);
  if (v7)
  {
    CGContextSetBlendMode(v5, v7);
  }

  closure #1 in GraphicsContext.withPlatformContext(content:)(v6, a3, a1);
  RBDrawingStateEndCGContext();
}

void closure #1 in GraphicsContext.withPlatformContext(content:)(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = *(a2 + 56);
  v7 = (v6 & 0xFFFFFFFFFFFFFLL) == 0 || (~v6 & 0x7FF0000000000000) != 0;
  if (v7)
  {
    _CGContextSetShapeDistance(a1, *(a2 + 56));
  }

  v8 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  a3([v8 push]);
  if (v3)
  {
    [v8 pop];
  }

  else
  {
    [v8 pop];

    if (v7)
    {
      _CGContextSetShapeDistance(a1, NAN);
    }
  }
}

uint64_t GraphicsContext.init(rbDisplayList:environment:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v9[0] = v2;
  v9[1] = v3;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v6 = v4;
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v6, v9);
  State = RBDisplayListGetState();
  swift_unknownObjectRelease();

  *(v5 + 24) = State;
  *(v5 + 64) = 0;
  return v5;
}

uint64_t GraphicsContext.rbDrawingState.getter()
{
  GraphicsContext.copyOnWrite()();
  GraphicsContext.copyOnWrite()();
  return *(*v0 + 24);
}

uint64_t *GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, float a9)
{
  v14 = *result;
  v15 = result[1];
  v16 = result[2];
  v17 = result[3];
  v19 = result[4];
  v18 = result[5];
  v21 = result[6];
  v20 = result[7];
  v22 = result[8];
  v23 = *(result + 72);
  if (v23 > 7)
  {
    if (v23 == 8)
    {
      if (*(v14 + 16))
      {
        v50 = *(v14 + 48);
        v51 = *(v14 + 80);
        v111 = *(v14 + 64);
        *v112 = v51;
        *&v112[9] = *(v14 + 89);
        v52 = *(v14 + 48);
        v109 = *(v14 + 32);
        v110 = v50;
        v53 = *(v14 + 80);
        v106 = *(v14 + 64);
        *v107 = v53;
        *&v107[9] = *(v14 + 89);
        v104 = *(v14 + 32);
        v105 = v52;
        outlined init with copy of GraphicsContext.Shading(&v109, &v119);
        GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v104, a2, a3, a4, a5, a6, a7, a8, a9);
        v121 = v106;
        *v122 = *v107;
        *&v122[9] = *&v107[9];
        v119 = v104;
        v120 = v105;
        return outlined destroy of GraphicsContext.Shading(&v119);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v23 == 9)
    {
      v54 = *(v14 + 144);
      v125 = *(v14 + 128);
      v126 = v54;
      v127 = *(v14 + 160);
      v128 = *(v14 + 176);
      v55 = *(v14 + 80);
      *v122 = *(v14 + 64);
      *&v122[16] = v55;
      v56 = *(v14 + 112);
      v123 = *(v14 + 96);
      v124 = v56;
      v57 = *(v14 + 32);
      v119 = *(v14 + 16);
      v120 = v57;
      v121 = *(v14 + 48);
      v58 = *(v14 + 144);
      v115 = *(v14 + 128);
      v116 = v58;
      v117 = *(v14 + 160);
      v118 = *(v14 + 176);
      v59 = *(v14 + 80);
      *v112 = *(v14 + 64);
      *&v112[16] = v59;
      v60 = *(v14 + 112);
      v113 = *(v14 + 96);
      v114 = v60;
      v61 = *(v14 + 32);
      v109 = *(v14 + 16);
      v110 = v61;
      v111 = *(v14 + 48);
      outlined init with copy of GraphicsContext.ResolvedShading(&v119, &v104);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v109, a2, a3, a4, a5, a6, a7, a8, a9);
      return outlined destroy of GraphicsContext.ResolvedShading(&v119);
    }

    v102 = a3;
    if (v23 == 10 && !(v15 | v14 | v16 | v17 | v19 | v18 | v21 | v20 | v22))
    {
      v24 = a4[2];
      v25 = a4[4];
      v26 = a4[5];
      v28 = v25;
      v29 = v26;
      if (v25 == 1)
      {
        v28 = *(v24 + 48);
        v29 = *(v24 + 56);
      }

      *&v119 = v28;
      *(&v119 + 1) = v29;
      outlined copy of EnvironmentValues?(v25, v26);
      GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v119, &v109);
      outlined consume of EnvironmentValues?(v119, *(&v119 + 1));
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v109, a2, v102, a4, a5, a6, a7, a8, a9);
      v126 = v116;
      v127 = v117;
      v128 = v118;
      *&v122[16] = *&v112[16];
      v123 = v113;
      v124 = v114;
      v125 = v115;
      v119 = v109;
      v120 = v110;
      v121 = v111;
      *v122 = *v112;
      return outlined destroy of GraphicsContext.ResolvedShading(&v119);
    }

    goto LABEL_15;
  }

  if (*(result + 72))
  {
    v103 = a3;
    if (v23 != 4)
    {
LABEL_15:
      v40 = a4[2];
      v41 = result[2];
      [*(v40 + 32) setInfinite];
      *&v119 = v14;
      *(&v119 + 1) = v99;
      *&v120 = v41;
      *(&v120 + 1) = v17;
      *&v121 = v19;
      *(&v121 + 1) = v18;
      v42 = v40;
      *v122 = v21;
      *&v122[8] = v98;
      *&v122[16] = v22;
      v43 = a4[4];
      v44 = a4[5];
      v45 = v43;
      v46 = v44;
      v122[24] = v23;
      if (v43 == 1)
      {
        v45 = *(v42 + 48);
        v46 = *(v42 + 56);
      }

      *&v109 = v45;
      *(&v109 + 1) = v46;
      outlined copy of EnvironmentValues?(v43, v44);
      GraphicsContext.Storage.Shared.setShading(_:in:)(&v119, &v109);

      return RBDrawingStateDrawShape();
    }

    v30 = a4[4];
    v31 = a4[5];
    v33 = v30;
    v34 = v31;
    if (v30 == 1)
    {
      v35 = a4[2];
      v33 = *(v35 + 48);
      v34 = *(v35 + 56);
    }

    v108[27] = 0;
    v104 = 0uLL;
    *&v105 = 1;
    BYTE8(v105) = 1;
    *&v106 = 0;
    BYTE8(v106) = 5;
    *v107 = v33;
    *&v107[8] = v34;
    *&v107[16] = 0u;
    memset(v108, 0, 24);
    v108[24] = 1;
    *&v108[25] = 256;
    v36 = *(*v14 + 80);
    v37 = outlined copy of EnvironmentValues?(v30, v31);
    v36(&v104, v37);
    if (BYTE8(v106) == 1)
    {
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    v133 = v38;
    LOBYTE(v109) = 0;
    _ShapeStyle_Pack.subscript.getter(&v109, 0, &v119);

    *v139 = a5;
    *&v139[1] = a6;
    *&v139[2] = a7;
    *&v139[3] = a8;
    v140 = 0;
    *&v112[16] = *&v122[16];
    v113 = v123;
    v114 = v124;
    *&v115 = v125;
    v109 = v119;
    v110 = v120;
    v111 = v121;
    *v112 = *v122;
    v70 = _ShapeStyle_Pack.Style.color.getter();
    if ((v72 & 0x100000000) != 0)
    {
      type metadata accessor for GraphicsContext.Storage();
      v81 = swift_allocObject();
      *(v81 + 32) = xmmword_18DD85500;
      *(v81 + 48) = 1065353216;
      *(v81 + 56) = 0x7FF8000000000000;
      v82 = a4[2];
      v83 = *(v82 + 64);
      if (v83 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v81 + 16) = v82;
      }

      else
      {
        v84 = RBDrawingStateGetDisplayList();
        v86 = a4[4];
        v85 = a4[5];
        v87 = v86;
        v88 = v85;
        if (v86 == 1)
        {
          v87 = *(v82 + 48);
          v88 = *(v82 + 56);
        }

        *&v109 = v87;
        *(&v109 + 1) = v88;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v86, v85);
        *(v81 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v84, &v109);
      }

      *(v81 + 24) = a2;
      *(v81 + 64) = 0;
      *(v81 + 48) = a9;
      *(v81 + 52) = v103;
      *&v112[16] = *&v122[16];
      v113 = v123;
      v114 = v124;
      *&v115 = v125;
      v109 = v119;
      v110 = v120;
      v111 = v121;
      *v112 = *v122;
      v90 = *MEMORY[0x1E695F040];
      v89 = *(MEMORY[0x1E695F040] + 8);
      v92 = *(MEMORY[0x1E695F040] + 16);
      v91 = *(MEMORY[0x1E695F040] + 24);
      v142.origin.x = *MEMORY[0x1E695F040];
      v142.origin.y = v89;
      v142.size.width = v92;
      v142.size.height = v91;
      if (CGRectIsNull(v142))
      {
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = 6;
      }

      else
      {
        v97 = 0;
        v93 = v90;
        v94 = *&v89;
        v95 = *&v92;
        v96 = *&v91;
      }

      v134 = v93;
      v135 = v94;
      v136 = v95;
      v137 = v96;
      v138 = v97;
      *v129 = 256;
      memset(&v129[8], 0, 33);
      _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(&v134, v129, v81, v139);
      outlined consume of Path.Storage(v93, v94, v95, v96, v97);

      outlined destroy of _ShapeStyle_Pack.Style(&v119);
    }

    else
    {
      v134 = v70;
      v135 = v71;
      LODWORD(v136) = v72;
      v73 = a4[2];
      [*(v73 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v134, v74, v75, v76, v77);
      v78 = *(v73 + 40);
      v79 = *(v73 + 32);
      v80 = v78;
      RBDrawingStateDrawShape();
      outlined destroy of _ShapeStyle_Pack.Style(&v119);
    }

    v131 = *&v107[16];
    v132[0] = *v108;
    *(v132 + 12) = *&v108[12];
    *v129 = v104;
    *&v129[16] = v105;
    *&v129[32] = v106;
    v130 = *v107;
    return outlined destroy of _ShapeStyle_Shape(v129);
  }

  else
  {
    *&v119 = *result;
    *(&v119 + 1) = v15;
    LODWORD(v120) = v16;
    v65 = a4[2];
    [*(v65 + 32) setInfinite];
    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if ((v15 & 0x7FFFFFFF00000000) != 0)
    {
      [*(v65 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v119, v66, v67, v68, v69);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();

    return RBDrawingStateDestroy();
  }
}

void GraphicsContext.draw(_:in:sRGBColor:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  RBDrawingStateBeginLayer();
  v20 = *(a2 + 16);
  v21 = *(v20 + 264);
  if (v21)
  {
    v36 = v21;
    [v36 removeAll];
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) init];
    v31 = *(v20 + 264);
    *(v20 + 264) = v30;
    v36 = v30;
  }

  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v23) = HIDWORD(static RBColor.foregroundKeyColorAnyAlpha);
  LODWORD(v22) = static RBColor.foregroundKeyColorAnyAlpha;
  LODWORD(v24) = dword_1ED566B70;
  LODWORD(v25) = dword_1ED566B74;
  *&v26 = a7;
  *&v27 = a8;
  *&v28 = a9;
  *&v29 = a10;
  [v36 addColorReplacementFrom:1 to:v22 colorSpace:{v23, v24, v25, v26, v27, v28, v29}];
  RBDrawingStateAddTransformStyle();
  v32 = RBDrawingStateBeginCGContext();
  v33 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v33 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v34 = static GraphicsContext.Storage.Shared._textDrawingContext;
  if (a1[27])
  {
    v35 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v35 = 0;
  }

  (*(*a1 + 296))(0, v35, v34, 0, a3, a4, a5, a6, a5, a6);
  [v33 pop];

  RBDrawingStateEndCGContext();
  RBDrawingStateDrawLayer();
}

void GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, float a9)
{
  v18 = a1[9];
  v106[8] = a1[8];
  v106[9] = v18;
  v107 = *(a1 + 20);
  v19 = a1[5];
  v106[4] = a1[4];
  v106[5] = v19;
  v20 = a1[7];
  v106[6] = a1[6];
  v106[7] = v20;
  v21 = a1[1];
  v106[0] = *a1;
  v106[1] = v21;
  v22 = a1[3];
  v106[2] = a1[2];
  v106[3] = v22;
  v23 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v106);
  if (v23 == 8)
  {
    v39 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v106);
    v40 = *v39;
    if (*(*v39 + 16))
    {
      v41 = *(v40 + 160);
      v89 = *(v40 + 144);
      v90 = v41;
      v92 = *(v40 + 192);
      v42 = *(v40 + 160);
      v91 = *(v40 + 176);
      v43 = *(v40 + 96);
      v85 = *(v40 + 80);
      v86 = v43;
      v44 = *(v40 + 112);
      v88 = *(v40 + 128);
      v45 = *(v40 + 96);
      v87 = *(v40 + 112);
      v46 = *(v40 + 48);
      *v84 = *(v40 + 32);
      *&v84[16] = v46;
      *&v84[32] = *(v40 + 64);
      v47 = *(v40 + 176);
      v81 = v42;
      v82 = v47;
      v83 = *(v40 + 192);
      v77 = v45;
      v78 = v44;
      v48 = *(v40 + 144);
      v79 = *(v40 + 128);
      v80 = v48;
      v49 = *(v40 + 48);
      v73 = *(v40 + 32);
      v74 = v49;
      v50 = *(v40 + 80);
      v75 = *(v40 + 64);
      v76 = v50;
      outlined init with copy of GraphicsContext.ResolvedShading(v84, &v93);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v73, a2, a3, a4, a5, a6, a7, a8, a9);
      v101 = v81;
      v102 = v82;
      v103 = v83;
      v97 = v77;
      v98 = v78;
      v99 = v79;
      v100 = v80;
      v93 = v73;
      v94 = v74;
      v95 = v75;
      v96 = v76;
      outlined destroy of GraphicsContext.ResolvedShading(&v93);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v23 != 4)
  {
    if (!v23)
    {
      v24 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v106);
      v25 = *(v24 + 16);
      v93 = *v24;
      LODWORD(v94) = v25;
      v26 = a4[2];
      [*(v26 + 32) setInfinite];
      RBDrawingStateInit();
      RBDrawingStateClipShape();
      RBDrawingStateBeginLayer();
      if (*(&v93 + 3) != 0.0)
      {
        [*(v26 + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(&v93, v27, v28, v29, v30);
        RBDrawingStateDrawShape();
      }

      RBDrawingStateDrawLayer();
      RBDrawingStateDestroy();
      return;
    }

    [*(a4[2] + 32) setInfinite];
    v51 = a1[9];
    v101 = a1[8];
    v102 = v51;
    v103 = *(a1 + 20);
    v52 = a1[5];
    v97 = a1[4];
    v98 = v52;
    v53 = a1[7];
    v99 = a1[6];
    v100 = v53;
    v54 = a1[1];
    v93 = *a1;
    v94 = v54;
    v55 = a1[3];
    v95 = a1[2];
    v96 = v55;
    GraphicsContext.Storage.Shared.setShading(_:)(&v93);
LABEL_12:
    RBDrawingStateDrawShape();
    return;
  }

  v31 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v106);
  *&v73 = a5;
  *(&v73 + 1) = a6;
  *&v74 = a7;
  *(&v74 + 1) = a8;
  LOBYTE(v75) = 0;
  v97 = *(v31 + 64);
  v98 = *(v31 + 80);
  v99 = *(v31 + 96);
  *&v100 = *(v31 + 112);
  v93 = *v31;
  v94 = *(v31 + 16);
  v95 = *(v31 + 32);
  v96 = *(v31 + 48);
  v32 = _ShapeStyle_Pack.Style.color.getter();
  if ((v34 & 0x100000000) == 0)
  {
    *v84 = v32;
    *&v84[8] = v33;
    *&v84[16] = v34;
    [*(a4[2] + 32) setInfinite];
    GraphicsContext.Storage.Shared.setColor(_:)(v84, v35, v36, v37, v38);
    goto LABEL_12;
  }

  type metadata accessor for GraphicsContext.Storage();
  v56 = swift_allocObject();
  *(v56 + 32) = xmmword_18DD85500;
  *(v56 + 48) = 1065353216;
  *(v56 + 56) = 0x7FF8000000000000;
  v57 = a4[2];
  v58 = *(v57 + 64);
  if (v58 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v56 + 16) = v57;
  }

  else
  {
    v59 = RBDrawingStateGetDisplayList();
    v61 = a4[4];
    v60 = a4[5];
    v62 = v61;
    v63 = v60;
    if (v61 == 1)
    {
      v62 = *(v57 + 48);
      v63 = *(v57 + 56);
    }

    *&v93 = v62;
    *(&v93 + 1) = v63;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v61, v60);
    *(v56 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v59, &v93);
  }

  *(v56 + 24) = a2;
  *(v56 + 64) = 0;
  *(v56 + 48) = a9;
  *(v56 + 52) = a3;
  v97 = *(v31 + 64);
  v98 = *(v31 + 80);
  v99 = *(v31 + 96);
  *&v100 = *(v31 + 112);
  v93 = *v31;
  v94 = *(v31 + 16);
  v95 = *(v31 + 32);
  v96 = *(v31 + 48);
  v65 = *MEMORY[0x1E695F040];
  v64 = *(MEMORY[0x1E695F040] + 8);
  v67 = *(MEMORY[0x1E695F040] + 16);
  v66 = *(MEMORY[0x1E695F040] + 24);
  v108.origin.x = *MEMORY[0x1E695F040];
  v108.origin.y = v64;
  v108.size.width = v67;
  v108.size.height = v66;
  if (CGRectIsNull(v108))
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 6;
  }

  else
  {
    v72 = 0;
    v68 = v65;
    v69 = *&v64;
    v70 = *&v67;
    v71 = *&v66;
  }

  v104[0] = v68;
  v104[1] = v69;
  v104[2] = v70;
  v104[3] = v71;
  v105 = v72;
  *v84 = 256;
  memset(&v84[8], 0, 33);
  _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v104, v84, v56, &v73);
  outlined consume of Path.Storage(v68, v69, v70, v71, v72);
}

uint64_t *GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(__int128 *a1, uint64_t a2, double a3)
{
  v7 = a1[9];
  v98[8] = a1[8];
  v98[9] = v7;
  v99 = *(a1 + 20);
  v8 = a1[5];
  v98[4] = a1[4];
  v98[5] = v8;
  v9 = a1[7];
  v98[6] = a1[6];
  v98[7] = v9;
  v10 = a1[1];
  v98[0] = *a1;
  v98[1] = v10;
  v11 = a1[3];
  v98[2] = a1[2];
  v98[3] = v11;
  v12 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v98);
  if (v12 == 8)
  {
    result = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v31 = *result;
    if (*(*result + 16))
    {
      v32 = *(v31 + 160);
      v81 = *(v31 + 144);
      v82 = v32;
      v84 = *(v31 + 192);
      v33 = *(v31 + 160);
      v83 = *(v31 + 176);
      v34 = *(v31 + 96);
      v77 = *(v31 + 80);
      v78 = v34;
      v35 = *(v31 + 112);
      v80 = *(v31 + 128);
      v36 = *(v31 + 96);
      v79 = *(v31 + 112);
      v37 = *(v31 + 48);
      *v76 = *(v31 + 32);
      *&v76[16] = v37;
      *&v76[32] = *(v31 + 64);
      v38 = *(v31 + 176);
      v73 = v33;
      v74 = v38;
      v75 = *(v31 + 192);
      v69 = v36;
      v70 = v35;
      v39 = *(v31 + 144);
      v71 = *(v31 + 128);
      v72 = v39;
      v40 = *(v31 + 48);
      v65 = *(v31 + 32);
      v66 = v40;
      v41 = *(v31 + 80);
      v67 = *(v31 + 64);
      v68 = v41;
      outlined init with copy of GraphicsContext.ResolvedShading(v76, &v85);
      GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v65, a2, a3);
      v93 = v73;
      v94 = v74;
      v95 = v75;
      v89 = v69;
      v90 = v70;
      v91 = v71;
      v92 = v72;
      v85 = v65;
      v86 = v66;
      v87 = v67;
      v88 = v68;
      return outlined destroy of GraphicsContext.ResolvedShading(&v85);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v20 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
      v21 = *v3;
      v22 = RBDrawingStateBeginLayer();
      v65 = 0u;
      v66 = 0u;
      LOBYTE(v67) = 1;
      v89 = *(v20 + 64);
      v90 = *(v20 + 80);
      v91 = *(v20 + 96);
      *&v92 = *(v20 + 112);
      v85 = *v20;
      v86 = *(v20 + 16);
      v87 = *(v20 + 32);
      v88 = *(v20 + 48);
      v23 = _ShapeStyle_Pack.Style.color.getter();
      if ((v25 & 0x100000000) != 0)
      {
        type metadata accessor for GraphicsContext.Storage();
        v47 = swift_allocObject();
        *(v47 + 32) = xmmword_18DD85500;
        *(v47 + 48) = 1065353216;
        *(v47 + 56) = 0x7FF8000000000000;
        v48 = v21[2];
        v49 = *(v48 + 64);
        if (v49 == RBDrawingStateGetDefaultColorSpace())
        {
          *(v47 + 16) = v48;
        }

        else
        {
          v64 = v22;
          v50 = RBDrawingStateGetDisplayList();
          v51 = v21[4];
          v52 = v21[5];
          v53 = v51;
          v54 = v52;
          if (v51 == 1)
          {
            v53 = *(v48 + 48);
            v54 = *(v48 + 56);
          }

          *&v85 = v53;
          *(&v85 + 1) = v54;
          type metadata accessor for GraphicsContext.Storage.Shared();
          swift_allocObject();
          outlined copy of EnvironmentValues?(v51, v52);
          *(v47 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v50, &v85);
          v22 = v64;
        }

        *(v47 + 24) = v22;
        *(v47 + 64) = 0;
        *(v47 + 48) = 1065353216;
        v89 = *(v20 + 64);
        v90 = *(v20 + 80);
        v91 = *(v20 + 96);
        *&v92 = *(v20 + 112);
        v85 = *v20;
        v86 = *(v20 + 16);
        v87 = *(v20 + 32);
        v88 = *(v20 + 48);
        v55 = *MEMORY[0x1E695F040];
        v56 = *(MEMORY[0x1E695F040] + 8);
        v57 = *(MEMORY[0x1E695F040] + 16);
        v58 = *(MEMORY[0x1E695F040] + 24);
        v100.origin.x = *MEMORY[0x1E695F040];
        v100.origin.y = v56;
        v100.size.width = v57;
        v100.size.height = v58;
        if (CGRectIsNull(v100))
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 6;
        }

        else
        {
          v63 = 0;
          v59 = v55;
          v60 = *&v56;
          v61 = *&v57;
          v62 = *&v58;
        }

        v96[0] = v59;
        v96[1] = v60;
        v96[2] = v61;
        v96[3] = v62;
        v97 = v63;
        *v76 = 256;
        memset(&v76[8], 0, 33);
        _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v96, v76, v47, &v65);
        outlined consume of Path.Storage(v59, v60, v61, v62, v63);
      }

      else
      {
        *v76 = v23;
        *&v76[8] = v24;
        *&v76[16] = v25;
        [*(v21[2] + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(v76, v26, v27, v28, v29);
        RBDrawingStateDrawShape();
      }
    }

    else
    {
      if (v12)
      {
        GraphicsContext.copyOnWrite()();
        v42 = a1[9];
        v93 = a1[8];
        v94 = v42;
        v95 = *(a1 + 20);
        v43 = a1[5];
        v89 = a1[4];
        v90 = v43;
        v44 = a1[7];
        v91 = a1[6];
        v92 = v44;
        v45 = a1[1];
        v85 = *a1;
        v86 = v45;
        v46 = a1[3];
        v87 = a1[2];
        v88 = v46;

        GraphicsContext.Storage.Shared.setShading(_:)(&v85);

        return RBDrawingStateAddVariableBlurFilter();
      }

      v13 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
      v14 = *(v13 + 16);
      v85 = *v13;
      LODWORD(v86) = v14;
      GraphicsContext.copyOnWrite()();
      v15 = *v3;
      RBDrawingStateBeginLayer();
      if (*(&v85 + 3) != 0.0)
      {
        [*(v15[2] + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(&v85, v16, v17, v18, v19);
        RBDrawingStateDrawShape();
      }
    }

    return RBDrawingStateAddVariableBlurLayer();
  }

  return result;
}

id RBShape.setStrokedPath(_:style:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v8 = *(a2 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    goto LABEL_2;
  }

  v18 = *a1;
  v19 = *(a1 + 32);
  if (v19 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v19 == 1)
      {
        v20 = *a1;
        v21 = *(a1 + 8);
        v22 = *(a1 + 16);
        v23 = *(a1 + 24);
        v39.origin.x = *a1;
        v39.origin.y = v21;
        v39.size.width = v22;
        v39.size.height = v23;
        Width = CGRectGetWidth(v39);
        v40.origin.x = v20;
        v40.origin.y = v21;
        v40.size.width = v22;
        v40.size.height = v23;
        if (Width == CGRectGetHeight(v40))
        {
          v41.origin.x = v20;
          v41.origin.y = v21;
          v41.size.width = v22;
          v41.size.height = v23;
          v25 = CGRectGetWidth(v41) * 0.5 + v20;
          v42.origin.x = v20;
          v42.origin.y = v21;
          v42.size.width = v22;
          v42.size.height = v23;
          v26 = CGRectGetHeight(v42) * 0.5 + v21;
          v43.origin.x = v20;
          v43.origin.y = v21;
          v43.size.width = v22;
          v43.size.height = v23;
          a5 = CGRectGetWidth(v43) * 0.5;
          a6 = *a2;
          v27 = sel_setStrokedCircleAtPoint_radius_lineWidth_;
          v28 = v6;
          a3 = v25;
          a4 = v26;

          return [v28 v27];
        }
      }
    }

    else if (!*(a2 + 12) && *(a2 + 16) >= 1.4142)
    {
      a3 = *a1;
      a4 = *(a1 + 8);
      a5 = *(a1 + 16);
      a6 = *(a1 + 24);
      v27 = sel_setStrokedRect_lineWidth_;
      v28 = v6;

      return [v28 v27];
    }

LABEL_2:
    v10 = Path.retainRBPath()();
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 12);
    v14 = *(a2 + 16);
    v15 = *(a2 + 32);
    v37[0] = 0x3FF0000000000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = 0x3FF0000000000000;
    v37[4] = 0;
    v37[5] = 0;
    [v6 setStrokedRBPath:v10 transform:v16 lineWidth:v37 lineCap:v12 lineJoin:v13 miterLimit:v8 + 32 dashPhase:v11 dashPattern:v14 dashCount:{v15, v9}];
    return RBPathRelease();
  }

  if (v19 == 2)
  {
    v31 = *(*&v18 + 16);
    v32 = *(*&v18 + 24);
    v33 = *(*&v18 + 32);
    v34 = *(*&v18 + 40);
    v36 = *(*&v18 + 48);
    v35 = *(*&v18 + 56);
    if (v36 == v35 || vabdd_f64(v36, v35) < 0.001)
    {
      CGRectGetWidth(*(*&v18 + 16));
      v44.origin.x = v31;
      v44.origin.y = v32;
      v44.size.width = v33;
      v44.size.height = v34;
      CGRectGetHeight(v44);
      v27 = sel_setStrokedRoundedRect_cornerRadius_cornerStyle_lineWidth_;
      v28 = v6;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;

      return [v28 v27];
    }

    goto LABEL_2;
  }

  v29 = *(a1 + 8) | *&v18 | *(a1 + 16) | *(a1 + 24);
  if (v19 != 6 || v29 != 0)
  {
    goto LABEL_2;
  }

  v27 = sel_setEmpty;
  v28 = v6;

  return [v28 v27];
}

void RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(__int128 *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v15 = a1[5];
  v93 = a1[4];
  *v94 = v15;
  *&v94[12] = *(a1 + 92);
  v16 = a1[1];
  v89 = *a1;
  v90 = v16;
  v17 = a1[3];
  v91 = a1[2];
  v92 = v17;
  value = v89;
  if (BYTE8(v89) > 3u)
  {
    if (BYTE8(v89) == 4)
    {
      v40 = *(v89 + 32);
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      [v9 setColor_];
      v35 = sel_setHeadroom_;
      v36 = v9;
      LODWORD(v31) = v40;

      goto LABEL_20;
    }

    if (BYTE8(v89) == 255)
    {
LABEL_16:
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      v35 = sel_setColor_;
      v36 = v9;

LABEL_20:
      [v36 v35];
      return;
    }

LABEL_7:
    v22 = a1[5];
    v86 = a1[4];
    v87[0] = v22;
    *(v87 + 12) = *(a1 + 92);
    v23 = a1[1];
    v82 = *a1;
    v83 = v23;
    v24 = a1[3];
    v25 = 0.0;
    v84 = a1[2];
    v85 = v24;
    v26 = 0.0;
    if (*&v90 != 0.0)
    {
      v27 = *(&v90 + 1);
      if (BYTE8(v91) <= 3u)
      {
        v28 = *&v91;
      }

      else
      {
        v28 = *(&v90 + 1);
      }

      if (BYTE8(v91) > 3u)
      {
        v27 = *&v91;
      }

      v25 = 1.0 / *&v90 * v27;
      v26 = 1.0 / *&v90 * v28;
    }

    v29.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v26, *&v25), 0).value;
    if (v29.value)
    {
      value = v29.value;
      v30 = v29.value;
LABEL_22:
      CGImage = RBImageMakeCGImage();
      v39 = v38;
      RBTiledImageTransform();
      v71 = v82;
      v75 = v83;
      ty = *(&v84 + 1);
      tx = *&v84;
      v86 = v93;
      v87[0] = *v94;
      *(v87 + 12) = *&v94[12];
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      v43 = GraphicsImage.bitmapOrientation.getter();
      if (v43)
      {
        specialized CGAffineTransform.init(orientation:in:)(v43, &v88, 1.0, 1.0);
        t1 = v88;
        *&t2.a = v71;
        *&t2.c = v75;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v79, &t1, &t2);
        v49 = *&v79.a;
        v48 = *&v79.c;
        tx = v79.tx;
        ty = v79.ty;
        if (v93)
        {
LABEL_30:
          v50 = 0;
          LODWORD(v44) = *MEMORY[0x1E69C7148];
          LODWORD(v45) = *(MEMORY[0x1E69C7148] + 4);
          LODWORD(v46) = *(MEMORY[0x1E69C7148] + 8);
          LODWORD(v47) = *(MEMORY[0x1E69C7148] + 12);
LABEL_35:
          v55 = dword_18DDD7E00[v94[26]];
          v82 = v49;
          v83 = v48;
          *&v84 = tx;
          *(&v84 + 1) = ty;
          [v9 setTiledRBImage:CGImage transform:v39 sourceRect:&v82 interpolation:v55 tintColor:v50 flags:{a6, a7, a8, a9, v44, v45, v46, v47, *&a6, *&a7, *&a8, *&a9}];

          return;
        }
      }

      else
      {
        v49 = v71;
        v48 = v75;
        if (v93)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v44) = HIDWORD(v91);
      LODWORD(v46) = DWORD1(v92);
      LODWORD(v45) = v92;
      LODWORD(v47) = DWORD2(v92);
      if (a2 != 2)
      {
        v72 = v49;
        v76 = v48;
        RBColorFromLinear();
        LODWORD(v44) = v51;
        LODWORD(v45) = v52;
        v49 = v72;
        v48 = v76;
        LODWORD(v46) = v53;
        LODWORD(v47) = v54;
      }

      v50 = 1;
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (!BYTE8(v89))
  {
    outlined init with copy of GraphicsImage(&v89, &v82);
    outlined init with copy of GraphicsImage(&v89, &v82);
    v30 = value;
    goto LABEL_22;
  }

  if (BYTE8(v89) != 1)
  {
    goto LABEL_7;
  }

  IOSurface = RBImageMakeIOSurface();
  v21 = v20;
  RBTiledImageTransform();
  v73 = v82;
  v77 = v83;
  v57 = *(&v84 + 1);
  v56 = *&v84;
  v86 = v93;
  v87[0] = *v94;
  *(v87 + 12) = *&v94[12];
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v58 = GraphicsImage.bitmapOrientation.getter();
  if (!v58)
  {
    v64 = v73;
    v63 = v77;
    if (v93)
    {
      goto LABEL_38;
    }

LABEL_40:
    LODWORD(v59) = HIDWORD(v91);
    LODWORD(v61) = DWORD1(v92);
    LODWORD(v60) = v92;
    LODWORD(v62) = DWORD2(v92);
    if (a2 != 2)
    {
      v74 = v64;
      v78 = v63;
      RBColorFromLinear();
      LODWORD(v59) = v66;
      LODWORD(v60) = v67;
      v64 = v74;
      v63 = v78;
      LODWORD(v61) = v68;
      LODWORD(v62) = v69;
    }

    v65 = 1;
    goto LABEL_43;
  }

  specialized CGAffineTransform.init(orientation:in:)(v58, &v88, 1.0, 1.0);
  t1 = v88;
  *&t2.a = v73;
  *&t2.c = v77;
  t2.tx = v56;
  t2.ty = v57;
  CGAffineTransformConcat(&v79, &t1, &t2);
  v64 = *&v79.a;
  v63 = *&v79.c;
  v56 = v79.tx;
  v57 = v79.ty;
  if ((v93 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  v65 = 0;
  LODWORD(v59) = *MEMORY[0x1E69C7148];
  LODWORD(v60) = *(MEMORY[0x1E69C7148] + 4);
  LODWORD(v61) = *(MEMORY[0x1E69C7148] + 8);
  LODWORD(v62) = *(MEMORY[0x1E69C7148] + 12);
LABEL_43:
  v70 = dword_18DDD7E00[v94[26]];
  v82 = v64;
  v83 = v63;
  *&v84 = v56;
  *(&v84 + 1) = v57;
  [v9 setTiledRBImage:IOSurface transform:v21 sourceRect:&v82 interpolation:v70 tintColor:v65 flags:{a6, a7, a8, a9, v59, v60, v61, v62, *&a6, *&a7, *&a8, *&a9}];
}

double GraphicsContext.Storage.Shared.setColor(_:in:)(uint64_t a1, __int128 *a2, double result)
{
  v4 = v3;
  v5 = *(v3 + 272);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v8 = *(v4 + 40);
    v15 = *a2;
    v9 = *(*a1 + 120);

    v9(&v16, &v15);
    LODWORD(v11) = HIDWORD(v16);
    LODWORD(v10) = v16;
    LODWORD(v12) = v17;
    LODWORD(v13) = v18;
    if (*(v4 + 64) != 2)
    {
      RBColorFromLinear();
    }

    [v8 setColor_];
    LODWORD(v14) = v19;
    [v8 setHeadroom_];
    *(v4 + 272) = a1;
  }

  return result;
}

uint64_t *GraphicsContext.Storage.Shared.setMeshGradient(_:in:)(uint64_t *result, double a2, double a3, double a4, double a5)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = *(result + 10);
  if (result[1])
  {
    if ((result[6] * result[7]) >> 64 == (result[6] * result[7]) >> 63)
    {
      v11 = 2;
LABEL_6:
      v12 = *(v5 + 40);
      LODWORD(v14) = *(result + 17);
      LODWORD(a2) = *(result + 6);
      LODWORD(a3) = *(result + 7);
      LODWORD(a4) = *(result + 8);
      LODWORD(a5) = *(result + 9);
      [v12 setMeshGradientType:v11 positions:*result + 32 colors:result[2] + 32 count:a2 width:a3 background:a4 colorSpace:a5 flags:v14];
      LODWORD(v13) = v10;
      [v12 setHeadroom_];
      *(v5 + 272) = 0;

      *v15 = v7;
      v15[1] = 0;
      v15[2] = 0;
      *&v15[3] = v6;
      *&v15[4] = v9;
      *&v15[5] = v8;
      return [v12 concat_];
    }

    __break(1u);
  }

  else if ((result[6] * result[7]) >> 64 == (result[6] * result[7]) >> 63)
  {
    v11 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = RBGradientFlags.union(_:)(a8, a5);
  v15 = *a7;
  v16 = *(a7 + 8);
  v17 = *(a7 + 16);
  v18 = *(a7 + 24);
  v19 = *(a7 + 32);
  v20 = *(a7 + 40);
  v21 = *(a7 + 48);
  v22 = *(a6 + 40);
  if (v21 <= 2)
  {
    if (!v21)
    {
      [*(a6 + 40) setAxialGradientStartPoint:a1 endPoint:a2 stopCount:a4 colors:v14 locations:v15 flags:{v16, v17, v18, v19, v20}];
LABEL_10:
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v21 == 1)
    {
      [*(a6 + 40) setRadialGradientCenter:a1 startRadius:a2 endRadius:a4 stopCount:v14 colors:v15 locations:v16 flags:{v17, v18, v19, v20}];
      goto LABEL_10;
    }

    [*(a6 + 40) setRadialGradientStartCenter:a1 startRadius:a2 endCenter:a4 endRadius:v14 stopCount:v15 colors:v16 locations:v17 flags:{v18, v19, v20}];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v21 == 3)
  {
    v24 = v15;
    v25 = v16;
    v26 = v17;
    [*(a6 + 40) setRadialGradientCenter:a1 startRadius:a2 endRadius:a4 stopCount:v14 colors:0.0 locations:0.0 flags:{v19, v20}];
    v29.origin.x = v24;
    v29.origin.y = v25;
    v29.size.width = v26;
    v29.size.height = v18;
    Width = CGRectGetWidth(v29);
    v30.origin.x = v24;
    v30.origin.y = v25;
    v30.size.width = v26;
    v30.size.height = v18;
    *v28 = Width;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = CGRectGetHeight(v30);
    *&v28[4] = v24;
    *&v28[5] = v25;
    [v22 concat_];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v21 == 4)
  {
    [*(a6 + 40) setConicGradientCenter:a1 angle:a2 stopCount:a4 colors:v14 locations:v15 flags:{v16, v17}];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [*(a6 + 40) setAngularGradientCenter:a1 startAngle:a2 endAngle:0 stopCount:a4 colors:v14 colorSpace:v15 locations:v16 flags:{v17, v18, v19, v20}];
  if ((a3 & 0x100000000) == 0)
  {
LABEL_17:
    LODWORD(v23) = a3;
    [v22 setHeadroom_];
  }

LABEL_18:
  *(a6 + 272) = 0;
}

void specialized withGradient(_:in:do:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v71 = a4;
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (!v8)
  {
    v9 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  v10 = v7 + 72;
  v11 = 1 - v8;
  v12 = 5;
  while ((v9 & 1) != 0)
  {
    v9 = 1;
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v11;
    v10 += 48;
    if (v11 == 1)
    {
      goto LABEL_42;
    }
  }

  v9 = *v10 ^ 1;
  if (v11)
  {
    goto LABEL_4;
  }

  if (*v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 5;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](a1);
  v4 = v56;
  v56[2] = v7;
  v57 = v13;
  v58 = v14;
  v59 = v15;
  v60 = a2;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v16);
  v5 = v48;
  v48[2] = v7;
  v49 = v20;
  v50 = v18;
  v51 = v19;
  v52 = v9;
  v53 = closure #3 in GraphicsContext.addFilter(_:options:)partial apply;
  v54 = &v69;
  v55 = v8;
  if (!v8)
  {
    return;
  }

  if (v8 >> 59)
  {
    __break(1u);
LABEL_48:
    __break(1u);
  }

  v66 = v20;
  v67 = v19;
  v68 = v18;
  if ((16 * v8) >= 1025)
  {
    goto LABEL_43;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](v17);
  v26 = v48 - v25;
  if ((v8 * v12) >> 60)
  {
    goto LABEL_48;
  }

  v65 = v24;
  v63 = v22;
  v64 = v23;
  if ((8 * v8 * v12) >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v47 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v47, v8 * v12, v8, closure #1 in withGradient(_:in:do:)partial apply, v4, v26, v8, v12, closure #2 in withGradient(_:in:do:)partial apply);
      MEMORY[0x193AC4820](v47, -1, -1);
      return;
    }
  }

  v62 = v48;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v5 = v48 - v27;
  v28 = 0;
  v7 += 72;
  v29 = v26 + 8;
  do
  {
    v4 = v28 * v12;
    if ((v28 * v12) >> 64 != (v28 * v12) >> 63)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v17 = swift_stdlib_isStackAllocationSafe();
      if ((v17 & 1) == 0)
      {
        v46 = swift_slowAlloc();
        closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v46, v8, v8, v12, closure #1 in withGradient(_:in:do:)partial apply, v4, closure #2 in withGradient(_:in:do:)partial apply, v5);
        MEMORY[0x193AC4820](v46, -1, -1);
        return;
      }

      goto LABEL_14;
    }

    v34 = *(v7 - 10);
    v35 = *(v7 - 9);
    v36 = *(v7 - 8);
    v37 = *(v7 - 7);
    if (a2 != 2)
    {
      RBColorFromLinear();
    }

    v38 = &v5[8 * v4];
    *(v29 - 2) = v34;
    *(v29 - 1) = v35;
    *v29 = v36;
    v29[1] = v37;
    *v38 = *(v7 - 3);
    if (v9)
    {
      if (*v7)
      {
        v31 = 0.0;
        v33 = 1.0;
        v32 = 1.0;
        v30 = 0.0;
      }

      else
      {
        v30 = *(v7 - 4);
        v31 = *(v7 - 3);
        v32 = *(v7 - 2);
        v33 = *(v7 - 1);
      }

      *(v38 + 1) = v30;
      *(v38 + 2) = v31;
      *(v38 + 3) = v32;
      *(v38 + 4) = v33;
    }

    ++v28;
    v7 += 48;
    v29 += 4;
  }

  while (v8 != v28);
  if (v66)
  {
    v39 = v64;
    v40 = v63;
    v42 = v67;
    v41 = v68;
    if (v66 == 1)
    {
      if (v9)
      {
        v43 = 576;
      }

      else
      {
        v43 = 64;
      }
    }

    else if (v9)
    {
      v43 = 704;
    }

    else
    {
      v43 = 192;
    }
  }

  else
  {
    v39 = v64;
    v40 = v63;
    v42 = v67;
    v41 = v68;
    if (v9)
    {
      v43 = 640;
    }

    else
    {
      v43 = 128;
    }
  }

  v44 = *(*(*v40 + 16) + 64);
  v45 = v41;
  if (v42)
  {
    v45 = 0.0;
  }

  v72[0] = 3;
  v73 = 0x3F80000000000000;
  v74 = v8;
  v75 = v26;
  v76 = v44;
  v77 = v45;
  v78 = v5;
  v79 = v43 | ((v39 & 1) << 6);
  RBDrawingStateAddStyle();
}

void closure #1 in withGradient(_:in:colorSpace:do:)(unint64_t a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a4 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v28 = v8;
  v29 = v9;
  v14 = a4 + 16 * a1;
  v16 = *(v14 + 32);
  v15 = v14 + 32;
  v23[0] = a5;
  v23[1] = a6;
  v17 = *(*v16 + 120);

  v17(&v24, v23);

  v19 = HIDWORD(v24);
  v18 = v24;
  v20 = v25;
  v21 = v26;
  if (a7 != 2)
  {
    RBColorFromLinear();
  }

  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  v22 = v27;
  if ((*(a8 + 4) & 1) == 0 && *a8 > v27)
  {
    v22 = *a8;
  }

  *a8 = v22;
  *(a8 + 4) = 0;
  *a3 = *(v15 + 8);
}

void closure #1 in withGradient(_:in:do:)(unint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 16) <= a1)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = a4 + 48 * a1;
  v13 = *(v11 + 32);
  v14 = *(v11 + 36);
  v12 = v11 + 32;
  v15 = *(v12 + 8);
  v16 = *(v12 + 12);
  if (a7 != 2)
  {
    RBColorFromLinear();
  }

  *a2 = v13;
  *(a2 + 1) = v14;
  *(a2 + 2) = v15;
  *(a2 + 3) = v16;
  *a3 = *(v12 + 16);
  if (a8)
  {
    if (*(v12 + 40))
    {
      v17 = 0.0;
      v18 = 1.0;
      v19 = 1.0;
      v20 = 0.0;
    }

    else
    {
      v20 = *(v12 + 24);
      v17 = *(v12 + 28);
      v19 = *(v12 + 32);
      v18 = *(v12 + 36);
    }

    *(a3 + 8) = v20;
    *(a3 + 16) = v17;
    *(a3 + 24) = v19;
    *(a3 + 32) = v18;
  }
}

uint64_t closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(char *isStackAllocationSafe, uint64_t a2, int64_t a3, uint64_t a4, void (*a5)(__n128), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_14;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v15 >> 60)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v9 = a6;
  v13 = a5;
  v12 = a4;
  v14 = a3;
  v8 = isStackAllocationSafe;
  v23[1] = a8;
  v24 = a7;
  if ((8 * v15) > 1024)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v17.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = v23 - v18;
    if (v14 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    v23[0] = v16;
    v19 = v11;
    if (!v14)
    {
      break;
    }

    v20 = 0;
    v21 = v8;
    while ((v20 * v12) >> 64 == (v20 * v12) >> 63)
    {
      v11 = (v20 + 1);
      v13(v17);
      v21 += 16;
      v20 = v11;
      if (v14 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v23[0] = a2;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v19 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v19, v15, v14, v13, v9, v8, v23[0], v12, v24);
      v8 = v11;
      if (!v11)
      {
        return MEMORY[0x193AC4820](v19, -1, -1);
      }

LABEL_22:

      result = MEMORY[0x193AC4820](v19, -1, -1);
      __break(1u);
      return result;
    }
  }

LABEL_10:
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  return (v24)(v8, v15, v17);
}

uint64_t closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t))
{
  if (!result)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  if (a3)
  {
    result = 0;
    v14 = a6;
    while ((result * a8) >> 64 == (result * a8) >> 63)
    {
      v15 = result + 1;
      a4();
      v14 += 16;
      result = v15;
      if (a3 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  if (a6)
  {
    return a9(a6, v11);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized GraphicsContext.init(displayList:environment:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v7[0] = v3;
  v7[1] = v4;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(a1, v7);
  *(v5 + 24) = RBDisplayListGetState();
  *(v5 + 64) = 0;
  return v5;
}

uint64_t outlined init with copy of GraphicsContext.Shading?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GraphicsContext.Shading?(0, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized GraphicsContext.clipToLayer(opacity:options:content:)(char a1, void *a2, uint64_t *a3, uint64_t a4, double a5)
{
  GraphicsContext.copyOnWrite()();
  v8 = *a2;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v11 = v8[2];
  LODWORD(a2) = *(v11 + 64);
  if (a2 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v11;
  }

  else
  {
    v22 = a4;
    v12 = RBDrawingStateGetDisplayList();
    v14 = v8[4];
    v13 = v8[5];
    v15 = v14;
    v16 = v13;
    if (v14 == 1)
    {
      v15 = *(v11 + 48);
      v16 = *(v11 + 56);
    }

    v24 = v15;
    *&v25 = v16;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v14, v13);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v12, &v24);
    a4 = v22;
  }

  *(inited + 24) = v9;
  *(inited + 64) = 0;
  v23 = inited;
  v24 = *a3;
  __asm { FMOV            V0.4S, #1.0 }

  v25 = _Q0;
  v26 = 2143289344;

  SDFStyle.Fill.draw(in:sdf:)(&v23, a4);

  RBDrawingStateClipLayer();
  swift_setDeallocating();
  if (*(inited + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  outlined consume of EnvironmentValues?(*(inited + 32), *(inited + 40));
}

double specialized GraphicsContext.addVariableBlurLayer(radius:options:content:)(char a1, void *a2, uint64_t a3, unint64_t a4, __int128 *a5, double a6)
{
  GraphicsContext.copyOnWrite()();
  v10 = *a2;
  v11 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v12 = swift_allocObject();
  *(v12 + 32) = xmmword_18DD85500;
  *(v12 + 48) = 1065353216;
  *(v12 + 56) = 0x7FF8000000000000;
  v13 = v10[2];
  LODWORD(a2) = *(v13 + 64);
  if (a2 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v12 + 16) = v13;
  }

  else
  {
    v22 = a3;
    v23 = a5;
    v14 = RBDrawingStateGetDisplayList();
    v15 = v10[4];
    v16 = v10[5];
    v17 = v15;
    v18 = v16;
    if (v15 == 1)
    {
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
    }

    v24[0] = v17;
    v24[1] = v18;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v15, v16);
    *(v12 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v14, v24);
    a3 = v22;
    a5 = v23;
  }

  *(v12 + 24) = v11;
  *(v12 + 64) = 0;
  v24[0] = v12;
  if ((a4 & 0x8000000000000000) != 0 || (v19 = *(a3 + 24), *(v19 + 16) <= a4))
  {
  }

  else
  {
    v20 = *(v19 + 56 * a4 + 32);

    SDFStyle.draw(in:sdf:)(v24, a5, v20);
  }

  RBDrawingStateAddVariableBlurLayer();

  return result;
}

void specialized GraphicsContext.clipToLayer(opacity:options:content:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  GraphicsContext.copyOnWrite()();
  v9 = *a2;
  v10 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v11 = swift_allocObject();
  *(v11 + 32) = xmmword_18DD85500;
  *(v11 + 48) = 1065353216;
  *(v11 + 56) = 0x7FF8000000000000;
  v12 = v9[2];
  v13 = *(v12 + 64);
  v37 = a4;
  v38 = a5;
  v35 = v10;
  if (v13 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v11 + 16) = v12;

    v14 = v11;
  }

  else
  {
    v15 = RBDrawingStateGetDisplayList();
    v16 = v9[4];
    v17 = v9[5];
    v18 = v16;
    v19 = v17;
    if (v16 == 1)
    {
      v18 = *(v12 + 48);
      v19 = *(v12 + 56);
    }

    v45[0] = v18;
    v45[1] = v19;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v16, v17);
    v20 = GraphicsContext.Storage.Shared.init(list:environment:)(v15, v45);
    v14 = v11;
    *(v11 + 16) = v20;
    a4 = v37;
    a5 = v38;
  }

  *(v14 + 24) = v35;
  *(v14 + 64) = 0;
  v47 = v14;
  v21 = *(a3 + 16);
  if (v21)
  {

    v22 = (a3 + 80);
    __asm { FMOV            V0.4S, #1.0 }

    v36 = _Q0;
    v40 = v14;
    do
    {
      if (((*(v22 - 1) ^ a5) & a4) == 0)
      {
        v28 = *(v22 - 6);
        v29 = *(v22 - 5);
        v30 = *(v22 - 4);
        v31 = *(v22 - 3);
        v32 = *(v22 - 16);
        if (*v22)
        {
          v33 = 23;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(v40 + 52);
        outlined copy of Path.Storage(*(v22 - 6), *(v22 - 5), *(v22 - 4), *(v22 - 3), *(v22 - 16));
        if (v34 != v33)
        {
          GraphicsContext.copyOnWrite()();
          v40 = v47;
          *(v47 + 52) = v33;
        }

        v48[0] = v28;
        v48[1] = v29;
        v48[2] = v30;
        v48[3] = v31;
        v49 = v32;
        *v45 = v36;
        v46 = 2;
        v41 = 256;
        v42 = 0u;
        v43 = 0u;
        v44 = 0;
        outlined copy of Path.Storage(v28, v29, v30, v31, v32);
        GraphicsContext.draw(_:with:style:)(v48, v45, &v41, v40);
        outlined consume of Path.Storage(v28, v29, v30, v31, v32);
        outlined consume of Path.Storage(v28, v29, v30, v31, v32);
        a4 = v37;
        a5 = v38;
      }

      v22 += 56;
      --v21;
    }

    while (v21);
  }

  RBDrawingStateClipLayer();
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, double *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v10 = a2[1];
  v29 = 0;
  v30 = 1.0;
  v12 = MEMORY[0x193AC3360](a1, &v30, &v29);
  if (v12)
  {
    v13 = v12;
    type metadata accessor for GraphicsContext.Storage();
    v14 = swift_allocObject();
    *(v14 + 32) = xmmword_18DD85500;
    *(v14 + 48) = 1065353216;
    *(v14 + 56) = 0x7FF8000000000000;
    v15 = RBDrawingStateGetDisplayList();
    v31 = *&v11;
    v32 = *&v10;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v14 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v15, &v31);
    *(v14 + 24) = v13;
    *(v14 + 64) = 0;
    v28 = v14;
    v16 = v30;
    if (v30 == 1.0)
    {
      v17 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v21 = v28;
      *(v28 + 48) = v16;
      v17 = *(v21 + 52);
    }

    v22 = v29;
    if (v17 != v29)
    {
      GraphicsContext.copyOnWrite()();
      *(v28 + 52) = v22;
    }

    v23 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v23, 0, &v31);

    SwiftUITextAttachment.draw(in:at:)(&v28, v31 + a6[2], v32 + a6[3] - v33);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v18 setProfile_];
    [v18 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v18 setContentRect_];
    if (a4)
    {
      if (*&v10 == 0.0)
      {
        v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v11);
        if (v27)
        {
          v20 = v27[9];
        }

        else
        {
          v20 = 1.0;
        }
      }

      else
      {

        v19 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11);

        v20 = v19;
      }
    }

    else
    {
      v20 = *&a3;
    }

    [v18 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v24 = swift_allocObject();
    *(v24 + 32) = xmmword_18DD85500;
    *(v24 + 48) = 1065353216;
    *(v24 + 56) = 0x7FF8000000000000;
    v31 = *&v11;
    v32 = *&v10;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v25 = v18;

    *(v24 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v31);
    *(v24 + 24) = RBDisplayListGetState();
    *(v24 + 64) = 0;
    v28 = v24;
    v26 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v26, 0, &v31);

    SwiftUITextAttachment.draw(in:at:)(&v28, v31 + a6[2], v32 + a6[3] - v33);
    [v25 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double *a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v13 = a2[1];
  v46 = 0;
  v47 = 1.0;
  v15 = MEMORY[0x193AC3360](a1, &v47, &v46);
  if (v15)
  {
    v16 = v15;
    type metadata accessor for GraphicsContext.Storage();
    inited = swift_initStackObject();
    *(inited + 32) = xmmword_18DD85500;
    *(inited + 48) = 1065353216;
    *(inited + 56) = 0x7FF8000000000000;
    v18 = RBDrawingStateGetDisplayList();
    v48 = *&v14;
    v49 = *&v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v18, &v48);
    *(inited + 24) = v16;
    *(inited + 64) = 0;
    v45 = inited;
    v19 = v47;
    if (v47 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      inited = v45;
      *(v45 + 48) = v19;
    }

    v20 = v46;
    if (*(inited + 52) != v46)
    {
      GraphicsContext.copyOnWrite()();
      *(v45 + 52) = v20;
    }

    v21 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v21, 0, &v48);

    v22 = v50;
    v23 = v48 + a7[2];
    v24 = v49 + a7[3] - v51;
    v25 = v51 + v52;
    v26 = CTLineGetRunAtIndex();
    v27 = CTRunGetAttributes(v26);

    v28 = CTLineGetRunAtIndex();
    StringRange = CTRunGetStringRange(v28);

    (*(*a5 + 80))(a6, v27, StringRange.location, StringRange.length, &v45, v23, v24, v22, v25);
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v30 setProfile_];
    [v30 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v30 setContentRect_];
    if (a4)
    {
      if (*&v13 == 0.0)
      {
        v44 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
        if (v44)
        {
          v32 = v44[9];
        }

        else
        {
          v32 = 1.0;
        }
      }

      else
      {

        v31 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14);

        v32 = v31;
      }
    }

    else
    {
      v32 = *&a3;
    }

    [v30 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v33 = swift_initStackObject();
    *(v33 + 32) = xmmword_18DD85500;
    *(v33 + 48) = 1065353216;
    *(v33 + 56) = 0x7FF8000000000000;
    v48 = *&v14;
    v49 = *&v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v34 = v30;

    *(v33 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v34, &v48);
    *(v33 + 24) = RBDisplayListGetState();
    *(v33 + 64) = 0;
    v45 = v33;
    v35 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v35, 0, &v48);

    v36 = v50;
    v37 = v48 + a7[2];
    v38 = v49 + a7[3] - v51;
    v39 = v51 + v52;
    v40 = CTLineGetRunAtIndex();
    v41 = CTRunGetAttributes(v40);

    v42 = CTLineGetRunAtIndex();
    v43 = CTRunGetStringRange(v42);

    (*(*a5 + 80))(a6, v41, v43.location, v43.length, &v45, v37, v38, v36, v39);
    [v34 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, float64x2_t *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v11 = a2[1];
  v30 = 0;
  v31 = 1.0;
  v13 = MEMORY[0x193AC3360](a1, &v31, &v30);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for GraphicsContext.Storage();
    v15 = swift_allocObject();
    *(v15 + 32) = xmmword_18DD85500;
    *(v15 + 48) = 1065353216;
    *(v15 + 56) = 0x7FF8000000000000;
    v16 = RBDrawingStateGetDisplayList();
    *&v35.f64[0] = v12;
    *&v35.f64[1] = v11;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, &v35);
    *(v15 + 24) = v14;
    *(v15 + 64) = 0;
    v29 = v15;
    v17 = v31;
    if (v31 == 1.0)
    {
      v18 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v22 = v29;
      *(v29 + 48) = v17;
      v18 = *(v22 + 52);
    }

    v23 = v30;
    if (v18 != v30)
    {
      GraphicsContext.copyOnWrite()();
      *(v29 + 52) = v23;
    }

    v24 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v24, 0, v32.f64);

    v35 = vaddq_f64(v32, a6[1]);
    v36 = v33;
    v37 = v34;
    (*(*a5 + 112))(&v35, &v29);
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v19 setProfile_];
    [v19 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v19 setContentRect_];
    if (a4)
    {
      if (v11)
      {

        v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12);

        v21 = v20;
      }

      else
      {
        v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
        if (v28)
        {
          v21 = v28[9];
        }

        else
        {
          v21 = 1.0;
        }
      }
    }

    else
    {
      v21 = *&a3;
    }

    [v19 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v25 = swift_allocObject();
    *(v25 + 32) = xmmword_18DD85500;
    *(v25 + 48) = 1065353216;
    *(v25 + 56) = 0x7FF8000000000000;
    *&v35.f64[0] = v12;
    *&v35.f64[1] = v11;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v26 = v19;

    *(v25 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v26, &v35);
    *(v25 + 24) = RBDisplayListGetState();
    *(v25 + 64) = 0;
    v29 = v25;
    v27 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v27, 0, v32.f64);

    v35 = vaddq_f64(v32, a6[1]);
    v36 = v33;
    v37 = v34;
    (*(*a5 + 112))(&v35, &v29);
    [v26 renderInContext:a1 options:{0, v29}];
  }
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a1;
  v16 = HIDWORD(a4);
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a2 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v15 = RBDrawingStateGetDisplayList();
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = v11;
    v14 = v12;
    if (v11 == 1)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 56);
    }

    v18 = v13;
    v19 = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11, v12);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v15, &v18);
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((v6 & 0x20) != 0)
  {
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 52) = *(a2 + 52);
  }

  v20 = v8;
  v18 = a3;
  LOWORD(v19) = v4;
  HIDWORD(v19) = v16;

  DisplayList.GraphicsRenderer.render(list:in:)(&v18, &v20);

  RBDrawingStateDrawLayer();
}

void specialized GraphicsContext.clipToLayer(opacity:options:content:)(char a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  GraphicsContext.copyOnWrite()();
  v7 = *a2;
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = v7[2];
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v12 = RBDrawingStateGetDisplayList();
    v14 = v7[4];
    v13 = v7[5];
    v15 = v14;
    v16 = v13;
    if (v14 == 1)
    {
      v15 = *(v10 + 48);
      v16 = *(v10 + 56);
    }

    v19 = v15;
    v20 = v16;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v14, v13);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v12, &v19);
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  v18 = v9;
  v19 = a3;
  LOWORD(v20) = a4;
  HIDWORD(v20) = HIDWORD(a4);

  DisplayList.GraphicsRenderer.render(list:in:)(&v19, &v18);

  RBDrawingStateClipLayer();
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, float **a2, uint64_t a3, char a4, void (*a5)(uint64_t *, double, double), double a6, double a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v13 = a2[1];
  v30 = 0;
  v31 = 1.0;
  v15 = MEMORY[0x193AC3360](a1, &v31, &v30);
  if (v15)
  {
    v16 = v15;
    type metadata accessor for GraphicsContext.Storage();
    v17 = swift_allocObject();
    *(v17 + 32) = xmmword_18DD85500;
    *(v17 + 48) = 1065353216;
    *(v17 + 56) = 0x7FF8000000000000;
    v18 = RBDrawingStateGetDisplayList();
    v32 = v14;
    v33 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v19 = GraphicsContext.Storage.Shared.init(list:environment:)(v18, &v32);
    v20 = 0;
    *(v17 + 16) = v19;
    *(v17 + 24) = v16;
    *(v17 + 64) = 0;
    v32 = v17;
    v21 = v31;
    if (v31 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      v22 = v32;
      v32[12] = v21;
      v20 = *(v22 + 52);
    }

    v23 = v30;
    if (v20 != v30)
    {
      GraphicsContext.copyOnWrite()();
      *(v32 + 13) = v23;
    }

    a5(&v32, a6, a7);
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v24 setProfile_];
    [v24 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v24 setContentRect_];
    if (a4)
    {
      if (v13)
      {

        v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14);

        v26 = v25;
      }

      else
      {
        v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
        if (v29)
        {
          v26 = v29[9];
        }

        else
        {
          v26 = 1.0;
        }
      }
    }

    else
    {
      v26 = *&a3;
    }

    [v24 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v27 = swift_allocObject();
    *(v27 + 32) = xmmword_18DD85500;
    *(v27 + 48) = 1065353216;
    *(v27 + 56) = 0x7FF8000000000000;
    v32 = v14;
    v33 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v28 = v24;

    *(v27 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v28, &v32);
    *(v27 + 24) = RBDisplayListGetState();
    *(v27 + 64) = 0;
    v32 = v27;
    a5(&v32, a6, a7);
    [v28 renderInContext:a1 options:0];
  }
}