uint64_t specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[9 * v8 + 4];
            v38 = *v13;
            v14 = *(v13 + 16);
            v15 = *(v13 + 32);
            v16 = *(v13 + 48);
            v42 = *(v13 + 64);
            v40 = v15;
            v41 = v16;
            v39 = v14;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v17 = &v4[9 * v10 + 4];
            v43 = *v17;
            v18 = *(v17 + 16);
            v19 = *(v17 + 32);
            v20 = *(v17 + 48);
            v47 = *(v17 + 64);
            v45 = v19;
            v46 = v20;
            v44 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v38, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v21 = &v4[9 * v8 + 4];
            v34[0] = *v21;
            v22 = *(v21 + 16);
            v23 = *(v21 + 32);
            v24 = *(v21 + 48);
            v35 = *(v21 + 64);
            v34[2] = v23;
            v34[3] = v24;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            v26 = v44;
            v25 = v45;
            v27 = v46;
            *(v21 + 64) = v47;
            *(v21 + 48) = v27;
            *v21 = v43;
            *(v21 + 16) = v26;
            *(v21 + 32) = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v28 = &v4[9 * v10 + 4];
            v36[0] = *v28;
            v29 = *(v28 + 16);
            v30 = *(v28 + 32);
            v31 = *(v28 + 48);
            v37 = *(v28 + 64);
            v36[2] = v30;
            v36[3] = v31;
            v36[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            *v28 = v38;
            v32 = v40;
            a3 = v41;
            v33 = v39;
            *(v28 + 64) = v42;
            *(v28 + 32) = v32;
            *(v28 + 48) = a3;
            *(v28 + 16) = v33;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[11 * v8 + 4];
            v14 = *(v13 + 16);
            v44 = *v13;
            v45 = v14;
            v15 = *(v13 + 32);
            v16 = *(v13 + 48);
            v17 = *(v13 + 64);
            v49 = *(v13 + 80);
            v47 = v16;
            v48 = v17;
            v46 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v56 = 0;
            v18 = &v4[11 * v10 + 4];
            v19 = *(v18 + 16);
            v50 = *v18;
            v51 = v19;
            v20 = *(v18 + 32);
            v21 = *(v18 + 48);
            v22 = *(v18 + 64);
            v55 = *(v18 + 80);
            v53 = v21;
            v54 = v22;
            v52 = v20;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v44, v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v50, v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v23 = &v4[11 * v8 + 4];
            v24 = *(v23 + 16);
            v40[0] = *v23;
            v40[1] = v24;
            v25 = *(v23 + 32);
            v26 = *(v23 + 48);
            v27 = *(v23 + 64);
            v41 = *(v23 + 80);
            v40[3] = v26;
            v40[4] = v27;
            v40[2] = v25;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v40, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            v29 = v52;
            v28 = v53;
            v30 = v54;
            *(v23 + 80) = v55;
            *(v23 + 64) = v30;
            v31 = v51;
            *v23 = v50;
            *(v23 + 16) = v31;
            *(v23 + 32) = v29;
            *(v23 + 48) = v28;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v32 = &v4[11 * v10 + 4];
            v33 = *(v32 + 16);
            v42[0] = *v32;
            v42[1] = v33;
            v34 = *(v32 + 32);
            v35 = *(v32 + 48);
            v36 = *(v32 + 64);
            v43 = *(v32 + 80);
            v42[3] = v35;
            v42[4] = v36;
            v42[2] = v34;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            v37 = v45;
            *v32 = v44;
            *(v32 + 16) = v37;
            v38 = v47;
            a3 = v48;
            v39 = v46;
            *(v32 + 80) = v49;
            *(v32 + 48) = v38;
            *(v32 + 64) = a3;
            *(v32 + 32) = v39;
            *a1 = v4;
            v3 = v56;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[7 * v8 + 4];
            v14 = *v13;
            v15 = *(v13 + 16);
            v16 = *(v13 + 32);
            v41 = *(v13 + 48);
            v39 = v15;
            v40 = v16;
            v38 = v14;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v17 = &v4[7 * v10 + 4];
            v18 = *v17;
            v19 = *(v17 + 16);
            v20 = *(v17 + 32);
            v45 = *(v17 + 48);
            v43 = v19;
            v44 = v20;
            v42 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v38, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v21 = &v4[7 * v8 + 4];
            v22 = *v21;
            v23 = *(v21 + 16);
            v24 = *(v21 + 32);
            v35 = *(v21 + 48);
            v34[1] = v23;
            v34[2] = v24;
            v34[0] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v26 = v42;
            v25 = v43;
            v27 = v44;
            *(v21 + 48) = v45;
            *(v21 + 16) = v25;
            *(v21 + 32) = v27;
            *v21 = v26;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v28 = &v4[7 * v10 + 4];
            v29 = *v28;
            v30 = *(v28 + 16);
            v31 = *(v28 + 32);
            v37 = *(v28 + 48);
            v36[1] = v30;
            v36[2] = v31;
            v36[0] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v32 = v39;
            a3 = v40;
            v33 = v38;
            *(v28 + 48) = v41;
            *(v28 + 16) = v32;
            *(v28 + 32) = a3;
            *v28 = v33;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[17 * v8 + 4];
            v56 = *v13;
            v14 = *(v13 + 16);
            v15 = *(v13 + 32);
            v16 = *(v13 + 64);
            v59 = *(v13 + 48);
            v60 = v16;
            v57 = v14;
            v58 = v15;
            v17 = *(v13 + 80);
            v18 = *(v13 + 96);
            v19 = *(v13 + 112);
            v64 = *(v13 + 128);
            v62 = v18;
            v63 = v19;
            v61 = v17;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v20 = &v4[17 * v10 + 4];
            v65 = *v20;
            v21 = *(v20 + 16);
            v22 = *(v20 + 32);
            v23 = *(v20 + 64);
            v68 = *(v20 + 48);
            v69 = v23;
            v66 = v21;
            v67 = v22;
            v24 = *(v20 + 80);
            v25 = *(v20 + 96);
            v26 = *(v20 + 112);
            v73 = *(v20 + 128);
            v71 = v25;
            v72 = v26;
            v70 = v24;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v56, v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v65, v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v27 = &v4[17 * v8 + 4];
            v52[0] = *v27;
            v28 = *(v27 + 16);
            v29 = *(v27 + 32);
            v30 = *(v27 + 64);
            v52[3] = *(v27 + 48);
            v52[4] = v30;
            v52[1] = v28;
            v52[2] = v29;
            v31 = *(v27 + 80);
            v32 = *(v27 + 96);
            v33 = *(v27 + 112);
            v53 = *(v27 + 128);
            v52[6] = v32;
            v52[7] = v33;
            v52[5] = v31;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v52, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            *v27 = v65;
            v34 = v69;
            v36 = v66;
            v35 = v67;
            *(v27 + 48) = v68;
            *(v27 + 64) = v34;
            *(v27 + 16) = v36;
            *(v27 + 32) = v35;
            v38 = v71;
            v37 = v72;
            v39 = v70;
            *(v27 + 128) = v73;
            *(v27 + 96) = v38;
            *(v27 + 112) = v37;
            *(v27 + 80) = v39;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v40 = &v4[17 * v10 + 4];
            v54[0] = *v40;
            v41 = *(v40 + 16);
            v42 = *(v40 + 32);
            v43 = *(v40 + 64);
            v54[3] = *(v40 + 48);
            v54[4] = v43;
            v54[1] = v41;
            v54[2] = v42;
            v44 = *(v40 + 80);
            v45 = *(v40 + 96);
            v46 = *(v40 + 112);
            v55 = *(v40 + 128);
            v54[6] = v45;
            v54[7] = v46;
            v54[5] = v44;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            *v40 = v56;
            v47 = v60;
            v49 = v57;
            v48 = v58;
            *(v40 + 48) = v59;
            *(v40 + 64) = v47;
            *(v40 + 16) = v49;
            *(v40 + 32) = v48;
            v50 = v62;
            a3 = v63;
            v51 = v61;
            *(v40 + 128) = v64;
            *(v40 + 96) = v50;
            *(v40 + 112) = a3;
            *(v40 + 80) = v51;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[21 * v8 + 4];
            v14 = *v13;
            v15 = *(v13 + 32);
            v69 = *(v13 + 16);
            v70 = v15;
            v68 = v14;
            v16 = *(v13 + 48);
            v17 = *(v13 + 64);
            v18 = *(v13 + 96);
            v73 = *(v13 + 80);
            v74 = v18;
            v71 = v16;
            v72 = v17;
            v19 = *(v13 + 112);
            v20 = *(v13 + 128);
            v21 = *(v13 + 144);
            v78 = *(v13 + 160);
            v76 = v20;
            v77 = v21;
            v75 = v19;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v90 = 0;
            v22 = &v4[21 * v10 + 4];
            v23 = *v22;
            v24 = *(v22 + 32);
            v80 = *(v22 + 16);
            v81 = v24;
            v79 = v23;
            v25 = *(v22 + 48);
            v26 = *(v22 + 64);
            v27 = *(v22 + 96);
            v84 = *(v22 + 80);
            v85 = v27;
            v82 = v25;
            v83 = v26;
            v28 = *(v22 + 112);
            v29 = *(v22 + 128);
            v30 = *(v22 + 144);
            v89 = *(v22 + 160);
            v87 = v29;
            v88 = v30;
            v86 = v28;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v68, v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v79, v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v31 = &v4[21 * v8 + 4];
            v32 = *v31;
            v33 = *(v31 + 32);
            v64[1] = *(v31 + 16);
            v64[2] = v33;
            v64[0] = v32;
            v34 = *(v31 + 48);
            v35 = *(v31 + 64);
            v36 = *(v31 + 96);
            v64[5] = *(v31 + 80);
            v64[6] = v36;
            v64[3] = v34;
            v64[4] = v35;
            v37 = *(v31 + 112);
            v38 = *(v31 + 128);
            v39 = *(v31 + 144);
            v65 = *(v31 + 160);
            v64[8] = v38;
            v64[9] = v39;
            v64[7] = v37;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v64, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
            v41 = v80;
            v40 = v81;
            *v31 = v79;
            *(v31 + 16) = v41;
            *(v31 + 32) = v40;
            v42 = v85;
            v44 = v82;
            v43 = v83;
            *(v31 + 80) = v84;
            *(v31 + 96) = v42;
            *(v31 + 48) = v44;
            *(v31 + 64) = v43;
            v46 = v87;
            v45 = v88;
            v47 = v86;
            *(v31 + 160) = v89;
            *(v31 + 128) = v46;
            *(v31 + 144) = v45;
            *(v31 + 112) = v47;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v48 = &v4[21 * v10 + 4];
            v49 = *v48;
            v50 = *(v48 + 32);
            v66[1] = *(v48 + 16);
            v66[2] = v50;
            v66[0] = v49;
            v51 = *(v48 + 48);
            v52 = *(v48 + 64);
            v53 = *(v48 + 96);
            v66[5] = *(v48 + 80);
            v66[6] = v53;
            v66[3] = v51;
            v66[4] = v52;
            v54 = *(v48 + 112);
            v55 = *(v48 + 128);
            v56 = *(v48 + 144);
            v67 = *(v48 + 160);
            v66[8] = v55;
            v66[9] = v56;
            v66[7] = v54;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
            v58 = v69;
            v57 = v70;
            *v48 = v68;
            *(v48 + 16) = v58;
            *(v48 + 32) = v57;
            v59 = v74;
            v61 = v71;
            v60 = v72;
            *(v48 + 80) = v73;
            *(v48 + 96) = v59;
            *(v48 + 48) = v61;
            *(v48 + 64) = v60;
            v62 = v76;
            a3 = v77;
            v63 = v75;
            *(v48 + 160) = v78;
            *(v48 + 128) = v62;
            *(v48 + 144) = a3;
            *(v48 + 112) = v63;
            *a1 = v4;
            v3 = v90;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3.n128_f64[0]);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3.n128_f64[0]);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[9 * v8 + 4];
            v38 = *v13;
            v14 = *(v13 + 16);
            v15 = *(v13 + 32);
            v16 = *(v13 + 48);
            v42 = *(v13 + 64);
            v40 = v15;
            v41 = v16;
            v39 = v14;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v48 = 0;
            v17 = &v4[9 * v10 + 4];
            v43 = *v17;
            v18 = *(v17 + 16);
            v19 = *(v17 + 32);
            v20 = *(v17 + 48);
            v47 = *(v17 + 64);
            v45 = v19;
            v46 = v20;
            v44 = v18;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v38, v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v43, v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[9 * v8 + 4];
            v34[0] = *v21;
            v22 = *(v21 + 16);
            v23 = *(v21 + 32);
            v24 = *(v21 + 48);
            v35 = *(v21 + 64);
            v34[2] = v23;
            v34[3] = v24;
            v34[1] = v22;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v34, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
            v26 = v44;
            v25 = v45;
            v27 = v46;
            *(v21 + 64) = v47;
            *(v21 + 48) = v27;
            *v21 = v43;
            *(v21 + 16) = v26;
            *(v21 + 32) = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[9 * v10 + 4];
            v36[0] = *v28;
            v29 = *(v28 + 16);
            v30 = *(v28 + 32);
            v31 = *(v28 + 48);
            v37 = *(v28 + 64);
            v36[2] = v30;
            v36[3] = v31;
            v36[1] = v29;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
            *v28 = v38;
            v32 = v40;
            a3 = v41;
            v33 = v39;
            *(v28 + 64) = v42;
            *(v28 + 32) = v32;
            *(v28 + 48) = a3;
            *(v28 + 16) = v33;
            *a1 = v4;
            v3 = v48;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

uint64_t specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[10 * v8 + 4];
            v37 = *v13;
            v14 = v13[1];
            v15 = v13[2];
            v16 = v13[4];
            v40 = v13[3];
            v41 = v16;
            v38 = v14;
            v39 = v15;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v17 = &v4[10 * v10 + 4];
            v42 = *v17;
            v18 = v17[1];
            v19 = v17[2];
            v20 = v17[4];
            v45 = v17[3];
            v46 = v20;
            v43 = v18;
            v44 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v21 = &v4[10 * v8 + 4];
            v35[0] = *v21;
            v22 = v21[1];
            v23 = v21[2];
            v24 = v21[4];
            v35[3] = v21[3];
            v35[4] = v24;
            v35[1] = v22;
            v35[2] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            v26 = v43;
            v25 = v44;
            v27 = v45;
            v21[4] = v46;
            *v21 = v42;
            v21[1] = v26;
            v21[2] = v25;
            v21[3] = v27;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v28 = &v4[10 * v10 + 4];
            v36[0] = *v28;
            v29 = v28[1];
            v30 = v28[2];
            v31 = v28[4];
            v36[3] = v28[3];
            v36[4] = v31;
            v36[1] = v29;
            v36[2] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            *v28 = v37;
            a3 = *&v40;
            v32 = v41;
            v34 = v38;
            v33 = v39;
            v28[3] = v40;
            v28[4] = v32;
            v28[1] = v34;
            v28[2] = v33;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[10 * v8 + 4];
            v37 = *v13;
            v14 = v13[1];
            v15 = v13[2];
            v16 = v13[4];
            v40 = v13[3];
            v41 = v16;
            v38 = v14;
            v39 = v15;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v17 = &v4[10 * v10 + 4];
            v42 = *v17;
            v18 = v17[1];
            v19 = v17[2];
            v20 = v17[4];
            v45 = v17[3];
            v46 = v20;
            v43 = v18;
            v44 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v21 = &v4[10 * v8 + 4];
            v35[0] = *v21;
            v22 = v21[1];
            v23 = v21[2];
            v24 = v21[4];
            v35[3] = v21[3];
            v35[4] = v24;
            v35[1] = v22;
            v35[2] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            v26 = v43;
            v25 = v44;
            v27 = v45;
            v21[4] = v46;
            *v21 = v42;
            v21[1] = v26;
            v21[2] = v25;
            v21[3] = v27;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v28 = &v4[10 * v10 + 4];
            v36[0] = *v28;
            v29 = v28[1];
            v30 = v28[2];
            v31 = v28[4];
            v36[3] = v28[3];
            v36[4] = v31;
            v36[1] = v29;
            v36[2] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            *v28 = v37;
            a3 = *&v40;
            v32 = v41;
            v34 = v38;
            v33 = v39;
            v28[3] = v40;
            v28[4] = v32;
            v28[1] = v34;
            v28[2] = v33;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[12 * v8 + 4];
            v14 = v13[1];
            v43 = *v13;
            v44 = v14;
            v15 = v13[2];
            v16 = v13[3];
            v17 = v13[5];
            v47 = v13[4];
            v48 = v17;
            v45 = v15;
            v46 = v16;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v18 = &v4[12 * v10 + 4];
            v19 = v18[1];
            v49 = *v18;
            v50 = v19;
            v20 = v18[2];
            v21 = v18[3];
            v22 = v18[5];
            v53 = v18[4];
            v54 = v22;
            v51 = v20;
            v52 = v21;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v49, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v23 = &v4[12 * v8 + 4];
            v24 = v23[1];
            v41[0] = *v23;
            v41[1] = v24;
            v25 = v23[2];
            v26 = v23[3];
            v27 = v23[5];
            v41[4] = v23[4];
            v41[5] = v27;
            v41[2] = v25;
            v41[3] = v26;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            v29 = v51;
            v28 = v52;
            v30 = v53;
            v23[5] = v54;
            v31 = v50;
            *v23 = v49;
            v23[1] = v31;
            v23[3] = v28;
            v23[4] = v30;
            v23[2] = v29;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v32 = &v4[12 * v10 + 4];
            v33 = v32[1];
            v42[0] = *v32;
            v42[1] = v33;
            v34 = v32[2];
            v35 = v32[3];
            v36 = v32[5];
            v42[4] = v32[4];
            v42[5] = v36;
            v42[2] = v34;
            v42[3] = v35;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            v37 = v44;
            *v32 = v43;
            v32[1] = v37;
            a3 = *&v47;
            v38 = v48;
            v40 = v45;
            v39 = v46;
            v32[4] = v47;
            v32[5] = v38;
            v32[2] = v40;
            v32[3] = v39;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[12 * v8 + 4];
            v14 = v13[1];
            v43 = *v13;
            v44 = v14;
            v15 = v13[2];
            v16 = v13[3];
            v17 = v13[5];
            v47 = v13[4];
            v48 = v17;
            v45 = v15;
            v46 = v16;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v18 = &v4[12 * v10 + 4];
            v19 = v18[1];
            v49 = *v18;
            v50 = v19;
            v20 = v18[2];
            v21 = v18[3];
            v22 = v18[5];
            v53 = v18[4];
            v54 = v22;
            v51 = v20;
            v52 = v21;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v49, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v23 = &v4[12 * v8 + 4];
            v24 = v23[1];
            v41[0] = *v23;
            v41[1] = v24;
            v25 = v23[2];
            v26 = v23[3];
            v27 = v23[5];
            v41[4] = v23[4];
            v41[5] = v27;
            v41[2] = v25;
            v41[3] = v26;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v29 = v51;
            v28 = v52;
            v30 = v53;
            v23[5] = v54;
            v31 = v50;
            *v23 = v49;
            v23[1] = v31;
            v23[3] = v28;
            v23[4] = v30;
            v23[2] = v29;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v32 = &v4[12 * v10 + 4];
            v33 = v32[1];
            v42[0] = *v32;
            v42[1] = v33;
            v34 = v32[2];
            v35 = v32[3];
            v36 = v32[5];
            v42[4] = v32[4];
            v42[5] = v36;
            v42[2] = v34;
            v42[3] = v35;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v37 = v44;
            *v32 = v43;
            v32[1] = v37;
            a3 = *&v47;
            v38 = v48;
            v40 = v45;
            v39 = v46;
            v32[4] = v47;
            v32[5] = v38;
            v32[2] = v40;
            v32[3] = v39;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[12 * v8 + 4];
            v14 = v13[1];
            v43 = *v13;
            v44 = v14;
            v15 = v13[2];
            v16 = v13[3];
            v17 = v13[5];
            v47 = v13[4];
            v48 = v17;
            v45 = v15;
            v46 = v16;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v18 = &v4[12 * v10 + 4];
            v19 = v18[1];
            v49 = *v18;
            v50 = v19;
            v20 = v18[2];
            v21 = v18[3];
            v22 = v18[5];
            v53 = v18[4];
            v54 = v22;
            v51 = v20;
            v52 = v21;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v49, v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v23 = &v4[12 * v8 + 4];
            v24 = v23[1];
            v41[0] = *v23;
            v41[1] = v24;
            v25 = v23[2];
            v26 = v23[3];
            v27 = v23[5];
            v41[4] = v23[4];
            v41[5] = v27;
            v41[2] = v25;
            v41[3] = v26;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            v29 = v51;
            v28 = v52;
            v30 = v53;
            v23[5] = v54;
            v31 = v50;
            *v23 = v49;
            v23[1] = v31;
            v23[3] = v28;
            v23[4] = v30;
            v23[2] = v29;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v32 = &v4[12 * v10 + 4];
            v33 = v32[1];
            v42[0] = *v32;
            v42[1] = v33;
            v34 = v32[2];
            v35 = v32[3];
            v36 = v32[5];
            v42[4] = v32[4];
            v42[5] = v36;
            v42[2] = v34;
            v42[3] = v35;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            v37 = v44;
            *v32 = v43;
            v32[1] = v37;
            a3 = *&v47;
            v38 = v48;
            v40 = v45;
            v39 = v46;
            v32[4] = v47;
            v32[5] = v38;
            v32[2] = v40;
            v32[3] = v39;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v11 = &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork;
      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v13 = v4[2];
            if (v8 >= v13)
            {
              goto LABEL_27;
            }

            v14 = &v4[8 * v8 + 4];
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[3];
            v41 = v14[2];
            v42 = v17;
            v39 = v15;
            v40 = v16;
            if (v10 >= v13)
            {
              goto LABEL_28;
            }

            v47 = 0;
            v18 = &v4[8 * v10 + 4];
            v19 = *v18;
            v20 = v18[1];
            v21 = v18[3];
            v45 = v18[2];
            v46 = v21;
            v43 = v19;
            v44 = v20;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v39, v38, v11, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
            v22 = v11;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v43, v38, v11, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v23 = &v4[8 * v8 + 4];
            v24 = *v23;
            v25 = v23[1];
            v26 = v23[3];
            v37[2] = v23[2];
            v37[3] = v26;
            v37[0] = v24;
            v37[1] = v25;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v37, v22, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
            v28 = v43;
            v27 = v44;
            v29 = v46;
            v23[2] = v45;
            v23[3] = v29;
            *v23 = v28;
            v23[1] = v27;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v30 = &v4[8 * v10 + 4];
            v31 = *v30;
            v32 = v30[1];
            v33 = v30[3];
            v38[2] = v30[2];
            v38[3] = v33;
            v38[0] = v31;
            v38[1] = v32;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v38, v22, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
            a3 = *&v41;
            v34 = v42;
            v36 = v39;
            v35 = v40;
            v30[2] = v41;
            v30[3] = v34;
            *v30 = v36;
            v30[1] = v35;
            *a1 = v4;
            v3 = v47;
            v11 = v22;
          }

          v12 = __OFADD__(v8++, 1);
          if (v12)
          {
            goto LABEL_25;
          }
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[18 * v8 + 4];
            v55 = *v13;
            v14 = v13[1];
            v15 = v13[2];
            v16 = v13[4];
            v58 = v13[3];
            v59 = v16;
            v56 = v14;
            v57 = v15;
            v17 = v13[5];
            v18 = v13[6];
            v19 = v13[8];
            v62 = v13[7];
            v63 = v19;
            v60 = v17;
            v61 = v18;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v20 = &v4[18 * v10 + 4];
            v64 = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            v67 = v20[3];
            v68 = v23;
            v65 = v21;
            v66 = v22;
            v24 = v20[5];
            v25 = v20[6];
            v26 = v20[8];
            v71 = v20[7];
            v72 = v26;
            v69 = v24;
            v70 = v25;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v55, v54, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v64, v54, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v27 = &v4[18 * v8 + 4];
            v53[0] = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            v53[3] = v27[3];
            v53[4] = v30;
            v53[1] = v28;
            v53[2] = v29;
            v31 = v27[5];
            v32 = v27[6];
            v33 = v27[8];
            v53[7] = v27[7];
            v53[8] = v33;
            v53[5] = v31;
            v53[6] = v32;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v53, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            *v27 = v64;
            v34 = v68;
            v36 = v65;
            v35 = v66;
            v27[3] = v67;
            v27[4] = v34;
            v27[1] = v36;
            v27[2] = v35;
            v37 = v72;
            v39 = v69;
            v38 = v70;
            v27[7] = v71;
            v27[8] = v37;
            v27[5] = v39;
            v27[6] = v38;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v40 = &v4[18 * v10 + 4];
            v54[0] = *v40;
            v41 = v40[1];
            v42 = v40[2];
            v43 = v40[4];
            v54[3] = v40[3];
            v54[4] = v43;
            v54[1] = v41;
            v54[2] = v42;
            v44 = v40[5];
            v45 = v40[6];
            v46 = v40[8];
            v54[7] = v40[7];
            v54[8] = v46;
            v54[5] = v44;
            v54[6] = v45;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v54, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            *v40 = v55;
            v47 = v59;
            v49 = v56;
            v48 = v57;
            v40[3] = v58;
            v40[4] = v47;
            v40[1] = v49;
            v40[2] = v48;
            a3 = *&v62;
            v50 = v63;
            v52 = v60;
            v51 = v61;
            v40[7] = v62;
            v40[8] = v50;
            v40[5] = v52;
            v40[6] = v51;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v11 = &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork;
      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v13 = v4[2];
            if (v8 >= v13)
            {
              goto LABEL_27;
            }

            v14 = &v4[16 * v8 + 4];
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[3];
            v59 = v14[2];
            v60 = v17;
            v57 = v15;
            v58 = v16;
            v18 = v14[4];
            v19 = v14[5];
            v20 = v14[7];
            v63 = v14[6];
            v64 = v20;
            v61 = v18;
            v62 = v19;
            if (v10 >= v13)
            {
              goto LABEL_28;
            }

            v73 = 0;
            v21 = &v4[16 * v10 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v67 = v21[2];
            v68 = v24;
            v65 = v22;
            v66 = v23;
            v25 = v21[4];
            v26 = v21[5];
            v27 = v21[7];
            v71 = v21[6];
            v72 = v27;
            v69 = v25;
            v70 = v26;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v57, v56, v11, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            v28 = v11;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v65, v56, v11, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v29 = &v4[16 * v8 + 4];
            v30 = *v29;
            v31 = v29[1];
            v32 = v29[3];
            v55[2] = v29[2];
            v55[3] = v32;
            v55[0] = v30;
            v55[1] = v31;
            v33 = v29[4];
            v34 = v29[5];
            v35 = v29[7];
            v55[6] = v29[6];
            v55[7] = v35;
            v55[4] = v33;
            v55[5] = v34;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v55, v28, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            v37 = v69;
            v36 = v70;
            v38 = v71;
            v29[7] = v72;
            v39 = v68;
            v41 = v65;
            v40 = v66;
            v29[2] = v67;
            v29[3] = v39;
            *v29 = v41;
            v29[1] = v40;
            v29[5] = v36;
            v29[6] = v38;
            v29[4] = v37;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v42 = &v4[16 * v10 + 4];
            v43 = *v42;
            v44 = v42[1];
            v45 = v42[3];
            v56[2] = v42[2];
            v56[3] = v45;
            v56[0] = v43;
            v56[1] = v44;
            v46 = v42[4];
            v47 = v42[5];
            v48 = v42[7];
            v56[6] = v42[6];
            v56[7] = v48;
            v56[4] = v46;
            v56[5] = v47;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v56, v28, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            v49 = v60;
            v51 = v57;
            v50 = v58;
            v42[2] = v59;
            v42[3] = v49;
            *v42 = v51;
            v42[1] = v50;
            a3 = *&v63;
            v52 = v64;
            v54 = v61;
            v53 = v62;
            v42[6] = v63;
            v42[7] = v52;
            v42[4] = v54;
            v42[5] = v53;
            *a1 = v4;
            v3 = v73;
            v11 = v28;
          }

          v12 = __OFADD__(v8++, 1);
          if (v12)
          {
            goto LABEL_25;
          }
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[12 * v8 + 4];
            v14 = v13[1];
            v43 = *v13;
            v44 = v14;
            v15 = v13[2];
            v16 = v13[3];
            v17 = v13[5];
            v47 = v13[4];
            v48 = v17;
            v45 = v15;
            v46 = v16;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v18 = &v4[12 * v10 + 4];
            v19 = v18[1];
            v49 = *v18;
            v50 = v19;
            v20 = v18[2];
            v21 = v18[3];
            v22 = v18[5];
            v53 = v18[4];
            v54 = v22;
            v51 = v20;
            v52 = v21;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v42, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v49, v42, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v23 = &v4[12 * v8 + 4];
            v24 = v23[1];
            v41[0] = *v23;
            v41[1] = v24;
            v25 = v23[2];
            v26 = v23[3];
            v27 = v23[5];
            v41[4] = v23[4];
            v41[5] = v27;
            v41[2] = v25;
            v41[3] = v26;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            v29 = v51;
            v28 = v52;
            v30 = v53;
            v23[5] = v54;
            v31 = v50;
            *v23 = v49;
            v23[1] = v31;
            v23[3] = v28;
            v23[4] = v30;
            v23[2] = v29;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v32 = &v4[12 * v10 + 4];
            v33 = v32[1];
            v42[0] = *v32;
            v42[1] = v33;
            v34 = v32[2];
            v35 = v32[3];
            v36 = v32[5];
            v42[4] = v32[4];
            v42[5] = v36;
            v42[2] = v34;
            v42[3] = v35;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            v37 = v44;
            *v32 = v43;
            v32[1] = v37;
            a3 = *&v47;
            v38 = v48;
            v40 = v45;
            v39 = v46;
            v32[4] = v47;
            v32[5] = v38;
            v32[2] = v40;
            v32[3] = v39;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if (v3)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v18 = 0;
            result = memcpy(__dst, &v4[37 * v8 + 4], sizeof(__dst));
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            memcpy(__src, &v4[37 * v10 + 4], 0x128uLL);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(__dst, v15, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(__src, v15, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v13 = v4 + 4;
            memcpy(v14, &v4[37 * v8 + 4], sizeof(v14));
            outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v14, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
            result = memcpy(&v4[37 * v8 + 4], __src, 0x128uLL);
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            memcpy(v15, &v13[37 * v10], sizeof(v15));
            outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v15, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
            result = memcpy(&v13[37 * v10], __dst, 0x128uLL);
            *a1 = v4;
            v3 = v18;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[10 * v8 + 4];
            v37 = *v13;
            v14 = v13[1];
            v15 = v13[2];
            v16 = v13[4];
            v40 = v13[3];
            v41 = v16;
            v38 = v14;
            v39 = v15;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v17 = &v4[10 * v10 + 4];
            v42 = *v17;
            v18 = v17[1];
            v19 = v17[2];
            v20 = v17[4];
            v45 = v17[3];
            v46 = v20;
            v43 = v18;
            v44 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v21 = &v4[10 * v8 + 4];
            v35[0] = *v21;
            v22 = v21[1];
            v23 = v21[2];
            v24 = v21[4];
            v35[3] = v21[3];
            v35[4] = v24;
            v35[1] = v22;
            v35[2] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            v26 = v43;
            v25 = v44;
            v27 = v45;
            v21[4] = v46;
            *v21 = v42;
            v21[1] = v26;
            v21[2] = v25;
            v21[3] = v27;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v28 = &v4[10 * v10 + 4];
            v36[0] = *v28;
            v29 = v28[1];
            v30 = v28[2];
            v31 = v28[4];
            v36[3] = v28[3];
            v36[4] = v31;
            v36[1] = v29;
            v36[2] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            *v28 = v37;
            a3 = *&v40;
            v32 = v41;
            v34 = v38;
            v33 = v39;
            v28[3] = v40;
            v28[4] = v32;
            v28[1] = v34;
            v28[2] = v33;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_26;
            }

            v13 = &v4[18 * v8 + 4];
            v55 = *v13;
            v14 = v13[1];
            v15 = v13[2];
            v16 = v13[4];
            v58 = v13[3];
            v59 = v16;
            v56 = v14;
            v57 = v15;
            v17 = v13[5];
            v18 = v13[6];
            v19 = v13[8];
            v62 = v13[7];
            v63 = v19;
            v60 = v17;
            v61 = v18;
            if (v10 >= v12)
            {
              goto LABEL_27;
            }

            v20 = &v4[18 * v10 + 4];
            v64 = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            v67 = v20[3];
            v68 = v23;
            v65 = v21;
            v66 = v22;
            v24 = v20[5];
            v25 = v20[6];
            v26 = v20[8];
            v71 = v20[7];
            v72 = v26;
            v69 = v24;
            v70 = v25;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v55, v54, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v64, v54, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_28;
            }

            v27 = &v4[18 * v8 + 4];
            v53[0] = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            v53[3] = v27[3];
            v53[4] = v30;
            v53[1] = v28;
            v53[2] = v29;
            v31 = v27[5];
            v32 = v27[6];
            v33 = v27[8];
            v53[7] = v27[7];
            v53[8] = v33;
            v53[5] = v31;
            v53[6] = v32;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v53, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            *v27 = v64;
            v34 = v68;
            v36 = v65;
            v35 = v66;
            v27[3] = v67;
            v27[4] = v34;
            v27[1] = v36;
            v27[2] = v35;
            v37 = v72;
            v39 = v69;
            v38 = v70;
            v27[7] = v71;
            v27[8] = v37;
            v27[5] = v39;
            v27[6] = v38;
            if (v10 >= v4[2])
            {
              goto LABEL_29;
            }

            v40 = &v4[18 * v10 + 4];
            v54[0] = *v40;
            v41 = v40[1];
            v42 = v40[2];
            v43 = v40[4];
            v54[3] = v40[3];
            v54[4] = v43;
            v54[1] = v41;
            v54[2] = v42;
            v44 = v40[5];
            v45 = v40[6];
            v46 = v40[8];
            v54[7] = v40[7];
            v54[8] = v46;
            v54[5] = v44;
            v54[6] = v45;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v54, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            *v40 = v55;
            v47 = v59;
            v49 = v56;
            v48 = v57;
            v40[3] = v58;
            v40[4] = v47;
            v40[1] = v49;
            v40[2] = v48;
            a3 = *&v62;
            v50 = v63;
            v52 = v60;
            v51 = v61;
            v40[7] = v62;
            v40[8] = v50;
            v40[5] = v52;
            v40[6] = v51;
            *a1 = v4;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_24;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    return v4[2];
  }

  v8 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
    if (v3)
    {
      return v8;
    }

    if (result)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v10 != v4[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, a3);
        if ((result & 1) == 0)
        {
          if (v8 != v10)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v4[2];
            if (v8 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v4[8 * v8 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v39 = v13[2];
            v40 = v16;
            v37 = v14;
            v38 = v15;
            if (v10 >= v12)
            {
              goto LABEL_28;
            }

            v17 = &v4[8 * v10 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v43 = v17[2];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v4 = result;
            }

            if (v8 >= v4[2])
            {
              goto LABEL_29;
            }

            v21 = &v4[8 * v8 + 4];
            v22 = *v21;
            v23 = v21[1];
            v24 = v21[3];
            v35[2] = v21[2];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v26 = v41;
            v25 = v42;
            v27 = v44;
            v21[2] = v43;
            v21[3] = v27;
            *v21 = v26;
            v21[1] = v25;
            if (v10 >= v4[2])
            {
              goto LABEL_30;
            }

            v28 = &v4[8 * v10 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v36[2] = v28[2];
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            a3 = *&v39;
            v32 = v40;
            v34 = v37;
            v33 = v38;
            v28[2] = v39;
            v28[3] = v32;
            *v28 = v34;
            v28[1] = v33;
            *a1 = v4;
          }

LABEL_10:
          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v10++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v8;
    }

    if (v5 == ++v8)
    {
      return v4[2];
    }
  }
}

uint64_t RangeReplaceableCollection._remove(atOffsets:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v72 - v8;
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v72 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = type metadata accessor for Range();
  v79 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v72 - v13;
  v14 = v9;
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v96 = type metadata accessor for IndexSet.RangeView();
  v85 = *(v96 - 8);
  v20 = MEMORY[0x1EEE9AC00](v96);
  v84 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet.RangeView>(0, v20);
  v83 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a2;
  v76 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for IndexSet();
  v26 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v82 = &v72 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    result = dispatch thunk of Collection.count.getter();
    if (__OFSUB__(result, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (result - 1 < 0)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v103[0] = 0;
    v103[1] = result - 1;
    type metadata accessor for ClosedRange<Int>(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
    IndexSet.init<A>(integersIn:)();
    v100 = v7;
    v38 = *(v26 + 16);
    v39 = v36;
    v75 = v36;
    v40 = v26;
    v41 = v77;
    v38(v31, v39, v77);
    v38(v28, a1, v41);
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v42 = v82;
    dispatch thunk of SetAlgebra.symmetricDifference(_:)();
    dispatch thunk of SetAlgebra.formIntersection(_:)();
    v43 = *(v40 + 8);
    v74 = v40 + 8;
    v73 = v43;
    v43(v42, v41);
    dispatch thunk of RangeReplaceableCollection.init()();
    IndexSet.count.getter();
    dispatch thunk of RangeReplaceableCollection.reserveCapacity(_:)();
    v44 = v84;
    IndexSet.rangeView.getter();
    v45 = v95;
    IndexSet.RangeView.makeIterator()();
    (v85[1])(v44, v96);
    v46 = (v45 + *(v83 + 9));
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    v48 = v47;
    dispatch thunk of Collection.endIndex.getter();
    if (*v46 != v103[0])
    {
      v84 = (v81 + 2);
      v83 = v80 + 2;
      v82 = (v81 + 4);
      ++v81;
      v80 += 4;
      ++v79;
      v86 = v19;
      v85 = v46;
      v78 = v48;
      v99 = v4;
      while (1)
      {
        v49 = dispatch thunk of Collection.subscript.read();
        v52 = *v50;
        v51 = v50[1];
        v49(v103, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v53 = v52;
        v54 = v100;
        v55 = v101;
        Collection.index(atOffset:)(v53, v101, v100);
        Collection.index(atOffset:)(v51, v55, v54);
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        if ((result & 1) == 0)
        {
          break;
        }

        v56 = *v84;
        v57 = v89;
        (*v84)(v89, v19, v14);
        v58 = TupleTypeMetadata2;
        v56(&v57[*(TupleTypeMetadata2 + 48)], v102, v14);
        v59 = v14;
        v60 = v90;
        (*v83)(v90, v57, v58);
        v61 = *(v58 + 48);
        v62 = *v82;
        v63 = v87;
        (*v82)(v87, v60, v59);
        v64 = *v81;
        (*v81)(&v60[v61], v59);
        (*v80)(v60, v57, v58);
        v65 = v88;
        v62(&v63[*(v88 + 36)], &v60[*(v58 + 48)], v59);
        v66 = v60;
        v67 = v86;
        v64(v66, v59);
        dispatch thunk of Collection.subscript.getter();
        (*v79)(v63, v65);
        v68 = v85;
        swift_getAssociatedConformanceWitness();
        v45 = v95;
        dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
        v64(v102, v59);
        v19 = v67;
        v69 = v67;
        v14 = v59;
        v64(v69, v59);
        dispatch thunk of Collection.endIndex.getter();
        v4 = v99;
        if (*v68 == v103[0])
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    v70 = v76;
    v71 = v101;
    (*(v76 + 8))(v4, v101);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v45, type metadata accessor for IndexingIterator<IndexSet.RangeView>);
    v73(v75, v77);
    return (*(v70 + 32))(v4, v98, v71);
  }

  return result;
}

void type metadata accessor for IndexingIterator<IndexSet.RangeView>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet.RangeView>)
  {
    type metadata accessor for IndexSet.RangeView();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<IndexSet.RangeView>);
    }
  }
}

void lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    swift_getWitnessTable(MEMORY[0x1E69E5FB8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
  }
}

uint64_t MutableCollection.move(fromOffsets:toOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v61 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = type metadata accessor for Range();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v61 - v13;
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v61 - v21;
  type metadata accessor for Slice<IndexSet>(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.subscript.getter(v73, v24);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  v26 = *(v87 + 1);
  v74 = v19;
  v84 = v87 + 8;
  v72 = v26;
  v26(v19, AssociatedTypeWitness);
  v70 = v7;
  v71 = v4;
  v79 = a3;
  dispatch thunk of Collection.startIndex.getter();
  v83 = v16;
  v86 = v22;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v69 = a2;
    v28 = v85;
    v29 = v87;
    v31 = v87 + 32;
    v30 = *(v87 + 4);
    v32 = v75;
    v30(v75, v83, AssociatedTypeWitness);
    v33 = TupleTypeMetadata2;
    v34 = *(v29 + 2);
    v35 = &v32[*(TupleTypeMetadata2 + 48)];
    v87 = (v29 + 16);
    v62 = v34;
    v34(v35, v86, AssociatedTypeWitness);
    v36 = *(v28 + 16);
    v65 = v28 + 16;
    v64 = v36;
    v36(v10, v32, v33);
    v37 = *(v33 + 48);
    v38 = v32;
    v39 = v76;
    v30(v76, v10, AssociatedTypeWitness);
    v40 = v72;
    v72(&v10[v37], AssociatedTypeWitness);
    v41 = *(v28 + 32);
    v85 = v28 + 32;
    v63 = v41;
    v41(v10, v38, v33);
    v42 = v77;
    v43 = v39 + *(v77 + 36);
    v44 = &v10[*(v33 + 48)];
    v67 = v31;
    v66 = v30;
    v30(v43, v44, AssociatedTypeWitness);
    v68 = v10;
    v45 = v40(v10, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v45);
    v46 = v74;
    v61[-2] = v73;
    MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)(v39, 0, partial apply for closure #1 in MutableCollection.move(fromOffsets:toOffset:), &v61[-4], v79, v80, v46);
    v61[1] = 0;
    v47 = v82 + 8;
    v48 = *(v82 + 8);
    v48(v39, v42);
    v40(v46, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v49 = v75;
      v62(v75, v86, AssociatedTypeWitness);
      v50 = TupleTypeMetadata2;
      v51 = &v49[*(TupleTypeMetadata2 + 48)];
      v87 = v48;
      v52 = v66;
      v66(v51, v83, AssociatedTypeWitness);
      v53 = v68;
      v64(v68, v49, v50);
      v82 = v47;
      v54 = *(v50 + 48);
      v55 = v76;
      v52(v76, v53, AssociatedTypeWitness);
      v56 = v72;
      v72(&v53[v54], AssociatedTypeWitness);
      v63(v53, v49, v50);
      v57 = v77;
      v52((v55 + *(v77 + 36)), &v53[*(v50 + 48)], AssociatedTypeWitness);
      v58 = v56(v53, AssociatedTypeWitness);
      MEMORY[0x1EEE9AC00](v58);
      v60 = v73;
      v59 = v74;
      v61[-2] = v73;
      MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)(v55, v69, partial apply for closure #2 in MutableCollection.move(fromOffsets:toOffset:), &v61[-4], v79, v80, v59);
      v87(v55, v57);
      v56(v59, AssociatedTypeWitness);
      v56(v86, AssociatedTypeWitness);
      return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v60, type metadata accessor for Slice<IndexSet>);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(uint64_t a1, uint64_t a2, double a3)
{
  v78 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a3);
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v69 - v8;
  type metadata accessor for Range<IndexSet.Index>(0, v7);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet.Index();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  type metadata accessor for Slice<IndexSet>(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v69 - v24;
  v72 = a2;
  v25 = a2;
  v26 = v11;
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v25, v22, type metadata accessor for Slice<IndexSet>);
  v73 = v12;
  v85 = *(v12 + 16);
  v86 = v12 + 16;
  v85(v16, v22, v11);
  v81 = v18;
  v27 = *(v18 + 36);
  v28 = v16;
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  v79 = v29;
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = v22;
  if ((v30 & 1) == 0)
  {
    v74 = (v73 + 8);
    v75 = (v73 + 32);
    v76 = v27;
    v77 = v16;
    do
    {
      v31 = v82;
      v32 = v26;
      v33 = v85;
      v85(v82, v22, v26);
      v34 = v84;
      v33(v31 + *(v84 + 48), &v22[v27], v26);
      v35 = v83;
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v31, v83, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v87 = *(v34 + 48);
      v36 = *v75;
      v37 = v90;
      (*v75)(v90, v35, v32);
      v38 = *v74;
      v39 = (*v74)(v87 + v35, v32);
      v40 = v31;
      v28 = v77;
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v40, v35, v39);
      v36(&v37[*(v80 + 36)], v35 + *(v34 + 48), v32);
      v41 = v35;
      v26 = v32;
      v38(v41, v32);
      type metadata accessor for IndexSet();
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      v42 = v90;
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v22 = v88;
      v27 = v76;
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for Range<IndexSet.Index>);
      v43 = dispatch thunk of Collection.subscript.read();
      v45 = *v44;
      v43(v89, 0);
      if (v45 >= v78)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v47 = v73;
    v48 = v27;
    v49 = v26;
    v50 = *(v73 + 32);
    v51 = v82;
    v50(v82, v28, v26);
    v52 = v50;
    v87 = v50;
    v53 = v84;
    v85((v51 + *(v84 + 48)), &v22[v48], v26);
    v54 = v83;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v51, v83, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
    v55 = *(v53 + 48);
    v56 = v90;
    v52(v90, v54, v26);
    v57 = *(v47 + 8);
    v58 = v57(v54 + v55, v26);
    outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v51, v54, v58);
    v87(v56 + *(v80 + 36), v54 + *(v53 + 48), v26);
    v59 = v57(v54, v26);
    v60 = v69;
    v61 = v88;
    specialized Slice.subscript.getter(v56, v69, v59);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v56, type metadata accessor for Range<IndexSet.Index>);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v61, type metadata accessor for Slice<IndexSet>);
    v62 = v60;
    v63 = v72;
    outlined assign with take of Slice<IndexSet>(v62, v72);
    v64 = v70;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v63, v70, type metadata accessor for Slice<IndexSet>);
    v65 = v71;
    v85(v71, v64, v49);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v67 = 0;
    }

    else
    {
      v68 = specialized Slice.subscript.getter(v65, v66);
      v67 = v68 == v78;
    }

    v57(v65, v49);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v64, type metadata accessor for Slice<IndexSet>);
    return v67;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  dispatch thunk of Collection.distance(from:to:)();
  return MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t closure #2 in MutableCollection.move(fromOffsets:toOffset:)(uint64_t a1, uint64_t a2, double a3)
{
  v76 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a3);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v67 - v8;
  type metadata accessor for Range<IndexSet.Index>(0, v7);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet.Index();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  type metadata accessor for Slice<IndexSet>(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v67 - v24;
  v70 = a2;
  v25 = a2;
  v26 = v11;
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v25, v22, type metadata accessor for Slice<IndexSet>);
  v71 = v12;
  v83 = *(v12 + 16);
  v84 = v12 + 16;
  v83(v16, v22, v11);
  v79 = v18;
  v27 = *(v18 + 36);
  v28 = v16;
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  v77 = v29;
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v86 = v22;
  if ((v30 & 1) == 0)
  {
    v72 = (v71 + 8);
    v73 = (v71 + 32);
    v74 = v27;
    v75 = v16;
    do
    {
      v31 = v80;
      v32 = v26;
      v33 = v83;
      v83(v80, v22, v26);
      v34 = v82;
      v33(v31 + *(v82 + 48), &v22[v27], v26);
      v35 = v81;
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v31, v81, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v85 = *(v34 + 48);
      v36 = *v73;
      v37 = v88;
      (*v73)(v88, v35, v32);
      v38 = *v72;
      v39 = (*v72)(v85 + v35, v32);
      v40 = v31;
      v28 = v75;
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v40, v35, v39);
      v36(&v37[*(v78 + 36)], v35 + *(v34 + 48), v32);
      v41 = v35;
      v26 = v32;
      v38(v41, v32);
      type metadata accessor for IndexSet();
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      v42 = v88;
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v22 = v86;
      v27 = v74;
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v42, type metadata accessor for Range<IndexSet.Index>);
      v43 = dispatch thunk of Collection.subscript.read();
      v45 = *v44;
      v43(v87, 0);
      if (v45 >= v76)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v47 = v71;
    v48 = v27;
    v49 = v26;
    v50 = *(v71 + 32);
    v51 = v80;
    v50(v80, v28, v26);
    v85 = v50;
    v52 = v82;
    v83((v51 + *(v82 + 48)), &v22[v48], v26);
    v53 = v81;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v51, v81, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
    v54 = *(v52 + 48);
    v55 = v88;
    v50(v88, v53, v26);
    v56 = *(v47 + 8);
    v57 = v56(v53 + v54, v26);
    outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v51, v53, v57);
    v85(v55 + *(v78 + 36), v53 + *(v52 + 48), v26);
    v58 = v56(v53, v26);
    v59 = v67;
    v60 = v86;
    specialized Slice.subscript.getter(v55, v67, v58);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v55, type metadata accessor for Range<IndexSet.Index>);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v60, type metadata accessor for Slice<IndexSet>);
    v61 = v59;
    v62 = v70;
    outlined assign with take of Slice<IndexSet>(v61, v70);
    v63 = v68;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v62, v68, type metadata accessor for Slice<IndexSet>);
    v64 = v69;
    v83(v69, v63, v49);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v56(v64, v49);
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v63, type metadata accessor for Slice<IndexSet>);
      return 1;
    }

    else
    {
      v66 = specialized Slice.subscript.getter(v64, v65);
      v56(v64, v49);
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v63, type metadata accessor for Slice<IndexSet>);
      return v66 != v76;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, double)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v109 = a1;
  v105 = a4;
  v106 = a3;
  v107 = a2;
  v102 = a6;
  v103 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v108 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Range();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v35 = MEMORY[0x1EEE9AC00](v28);
  if (v33 != 1)
  {
    if (!v33)
    {
      return (*(v23 + 16))(v103, v109, AssociatedTypeWitness, v35);
    }

    v91 = v30;
    v92 = v11;
    v98 = v14;
    v86 = v26;
    v97 = v34;
    v99 = v32;
    v101 = v29;
    v83 = v33;
    v39 = (&v78 - v31);
    v95 = v33 / 2;
    v40 = v109;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v100 = v39;
    v87 = AssociatedConformanceWitness;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v82 = v18;
      v41 = *(v23 + 16);
      v42 = v98;
      v41(v98, v40, AssociatedTypeWitness);
      v43 = &v42[*(TupleTypeMetadata2 + 48)];
      v90 = v23 + 16;
      v89 = v41;
      v41(v43, v100, AssociatedTypeWitness);
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v92;
      v88 = v104 + 16;
      v84 = v45;
      v45(v92, v42, TupleTypeMetadata2);
      v94 = *(TupleTypeMetadata2 + 48);
      v96 = *(v23 + 32);
      v96(v22, v46, AssociatedTypeWitness);
      v47 = *(v23 + 8);
      v47(v94 + v46, AssociatedTypeWitness);
      v49 = *(v44 + 32);
      v48 = v44 + 32;
      v50 = v42;
      v51 = v49;
      v49(v46, v50, TupleTypeMetadata2);
      v85 = TupleTypeMetadata2;
      v96(&v22[*(v101 + 36)], &v46[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
      v93 = v23 + 8;
      v94 = v47;
      v47(v46, AssociatedTypeWitness);
      v52 = v110;
      MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(v22, v107, v106, v105, v108, v102, v97);
      if (v52)
      {
        (*(v99 + 8))(v22, v101);
        return (v94)(v100, AssociatedTypeWitness);
      }

      v80 = v51;
      v81 = v23 + 32;
      v104 = v48;
      v110 = 0;
      v53 = *(v99 + 8);
      v54 = v101;
      v99 += 8;
      v79 = v53;
      v53(v22, v101);
      v55 = *(v54 + 36);
      v56 = v109;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v57 = v98;
        v58 = v89;
        v89(v98, v100, AssociatedTypeWitness);
        v59 = v85;
        v58(&v57[*(v85 + 48)], v56 + v55, AssociatedTypeWitness);
        v84(v46, v57, v59);
        v60 = *(v59 + 48);
        v61 = v91;
        v62 = v96;
        v96(v91, v46, AssociatedTypeWitness);
        v63 = v94;
        v94(&v46[v60], AssociatedTypeWitness);
        v80(v46, v57, v59);
        v62(v61 + *(v101 + 36), &v46[*(v59 + 48)], AssociatedTypeWitness);
        result = v63(v46, AssociatedTypeWitness);
        if (!__OFADD__(v107, v95))
        {
          if (!__OFSUB__(v83, v95))
          {
            v64 = v86;
            v65 = v91;
            v66 = v110;
            MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(v91, v107 + v95, v106, v105, v108, v102, v86);
            v67 = v89;
            if (v66)
            {
              v79(v65, v101);
              v63(v97, AssociatedTypeWitness);
              return v63(v100, AssociatedTypeWitness);
            }

            v110 = 0;
            v79(v65, v101);
            v68 = v97;
            result = dispatch thunk of static Comparable.<= infix(_:_:)();
            if (result)
            {
              v69 = v98;
              v67(v98, v68, AssociatedTypeWitness);
              v70 = v85;
              v67(&v69[*(v85 + 48)], v64, AssociatedTypeWitness);
              v84(v46, v69, v70);
              v71 = *(v70 + 48);
              v72 = v82;
              v73 = v96;
              v96(v82, v46, AssociatedTypeWitness);
              v74 = v94;
              v94(&v46[v71], AssociatedTypeWitness);
              v80(v46, v69, v70);
              v75 = *(v70 + 48);
              v76 = v101;
              v73(v72 + *(v101 + 36), &v46[v75], AssociatedTypeWitness);
              v74(v46, AssociatedTypeWitness);
              v77 = v100;
              MutableCollection.rotate(in:shiftingToStart:)(v72, v100, v108, v102, v103);
              v79(v72, v76);
              v74(v86, AssociatedTypeWitness);
              v74(v97, AssociatedTypeWitness);
              return (v74)(v77, AssociatedTypeWitness);
            }

LABEL_24:
            __break(1u);
            return result;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v37 = v29;
  v38 = v110;
  result = v106(v107, v35);
  if (!v38)
  {
    if (result)
    {
      return (*(v23 + 16))(v103, v109, AssociatedTypeWitness);
    }

    else
    {
      return (*(v23 + 16))(v103, v109 + *(v37 + 36), AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t MutableCollection.rotate(in:shiftingToStart:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a2;
  v80 = a5;
  v89 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v103 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v79 - v10;
  v88 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v96 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v79 - v15;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v79 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v79 - v31;
  v33 = *(v16 + 16);
  v33(&v79 - v31, v104, AssociatedTypeWitness, v30);
  (v33)(v28, a1, AssociatedTypeWitness);
  v101 = v12;
  v34 = a1 + *(v12 + 36);
  v105 = v33;
  v106 = v16 + 16;
  (v33)(v25, v34, AssociatedTypeWitness);
  v35 = *(AssociatedConformanceWitness + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v36 = v16;
    v37 = *(v16 + 8);
    v37(v28, AssociatedTypeWitness);
    v37(v32, AssociatedTypeWitness);
    return (*(v36 + 32))(v80, v25, AssociatedTypeWitness);
  }

  else
  {
    v39 = v80;
    v90 = v28;
    v85 = v35;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v40 = v16;
      v41 = *(v16 + 8);
      v41(v25, AssociatedTypeWitness);
      v41(v32, AssociatedTypeWitness);
      return (*(v40 + 32))(v39, v90, AssociatedTypeWitness);
    }

    else
    {
      v84 = v25;
      v105(v81, v25, AssociatedTypeWitness);
      v42 = v90;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      v43 = v93;
      if (result)
      {
        v44 = v32;
        v45 = v42;
        v46 = v16;
        v47 = (v103 + 16);
        v104 = (v46 + 8);
        v99 = (v103 + 32);
        v100 = (v46 + 32);
        v82 = (v96 + 8);
        v98 = AssociatedConformanceWitness;
        v83 = v44;
        v97 = (v103 + 16);
        while (1)
        {
          v48 = v105;
          v105(v43, v45, AssociatedTypeWitness);
          v49 = TupleTypeMetadata2;
          v48(&v43[*(TupleTypeMetadata2 + 48)], v44, AssociatedTypeWitness);
          v50 = v91;
          v96 = *v47;
          v96(v91, v43, v49);
          v103 = *(v49 + 48);
          v51 = *v100;
          v52 = v102;
          (*v100)(v102, v50, AssociatedTypeWitness);
          v53 = v44;
          v54 = *v104;
          (*v104)(v103 + v50, AssociatedTypeWitness);
          v95 = *v99;
          v95(v50, v43, v49);
          v51(v52 + *(v101 + 36), &v50[*(v49 + 48)], AssociatedTypeWitness);
          v103 = v54;
          v54(v50, AssociatedTypeWitness);
          v55 = v53;
          v56 = v84;
          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          if ((result & 1) == 0)
          {
            break;
          }

          v57 = v93;
          v58 = v105;
          v105(v93, v55, AssociatedTypeWitness);
          v58(&v57[*(v49 + 48)], v56, AssociatedTypeWitness);
          v96(v50, v57, v49);
          v59 = *(v49 + 48);
          v60 = v87;
          v51(v87, v50, AssociatedTypeWitness);
          v61 = &v50[v59];
          v62 = v103;
          v103(v61, AssociatedTypeWitness);
          v95(v50, v57, v49);
          v63 = *(v49 + 48);
          v64 = v101;
          v65 = v60 + *(v101 + 36);
          v96 = v51;
          v51(v65, &v50[v63], AssociatedTypeWitness);
          v62(v50, AssociatedTypeWitness);
          v66 = v94;
          v67 = v86;
          v68 = v102;
          MutableCollection._swapNonemptySubrangePrefixes(_:_:)(v94, v86, v102, v60, v88, v89);
          v69 = *v82;
          (*v82)(v60, v64);
          v69(v68, v64);
          v70 = dispatch thunk of static Equatable.== infix(_:_:)();
          v43 = v57;
          v71 = v105;
          if (v70)
          {
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              v72 = v81;
              v103(v81, AssociatedTypeWitness);
              v73 = v72;
              v66 = v94;
              v71(v73, v94, AssociatedTypeWitness);
            }

            v44 = v83;
            v74 = dispatch thunk of static Equatable.== infix(_:_:)();
            v45 = v90;
            v75 = v103;
            v103(v90, AssociatedTypeWitness);
            if (v74)
            {
              v75(v67, AssociatedTypeWitness);
              v75(v66, AssociatedTypeWitness);
              v75(v84, AssociatedTypeWitness);
              v75(v44, AssociatedTypeWitness);
              return (v96)(v80, v81, AssociatedTypeWitness);
            }
          }

          else
          {
            v45 = v90;
            v75 = v103;
            v103(v90, AssociatedTypeWitness);
            v44 = v83;
          }

          v105(v45, v66, AssociatedTypeWitness);
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          v75(v66, AssociatedTypeWitness);
          v77 = v75;
          v78 = v96;
          if (v76)
          {
            v77(v44, AssociatedTypeWitness);
            v78(v44, v67, AssociatedTypeWitness);
          }

          else
          {
            v77(v67, AssociatedTypeWitness);
          }

          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          v47 = v97;
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t MutableCollection._swapNonemptySubrangePrefixes(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a1;
  v21 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  v16 = v10;
  v14 = *(v10 + 16);
  v20 = a3;
  v14(&v16 - v12, a3, AssociatedTypeWitness, v11);
  v18 = a4;
  (v14)(a2, a4, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  do
  {
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.formIndex(after:)();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return (*(v16 + 32))(v17, v13, AssociatedTypeWitness);
}

uint64_t specialized Slice.subscript.getter(uint64_t a1, double a2)
{
  v30 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a2);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - v9;
  type metadata accessor for Range<IndexSet.Index>(0, v8);
  v29 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<IndexSet>(0);
  v28[1] = v14;
  v15 = *(v14 + 36);
  v16 = type metadata accessor for IndexSet.Index();
  v17 = *(v16 - 8);
  v18 = v17[2];
  v28[0] = v2;
  v18(v10, v2, v16);
  v18(&v10[*(v4 + 56)], v2 + v15, v16);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v10, v6, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
  v19 = *(v4 + 56);
  v20 = v17[4];
  v21 = v13;
  v20(v13, v6, v16);
  v22 = v17[1];
  v23 = v22(&v6[v19], v16);
  outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v10, v6, v23);
  v20((v21 + *(v29 + 44)), &v6[*(v4 + 56)], v16);
  v22(v6, v16);
  type metadata accessor for IndexSet();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v21, type metadata accessor for Range<IndexSet.Index>);
  v24 = dispatch thunk of Collection.subscript.read();
  v26 = *v25;
  v24(v31, 0);
  return v26;
}

uint64_t outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined assign with copy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for ClosedRange<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnimatorState.Fork(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized Slice.subscript.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 8))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    if (*v5 > result)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  if (*(v5 + 24))
  {
LABEL_7:
    *(a5 + 32) = *(v5 + 32);
    *a5 = result;
    *(a5 + 8) = a2 & 1;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4 & 1;
    return outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v5, v6, type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
  }

  if ((a4 & 1) == 0)
  {
    if (*(v5 + 16) >= a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized Slice.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v38 = a1;
  v39 = a2;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a3);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  type metadata accessor for Range<IndexSet.Index>(0, v9);
  v37 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<IndexSet>(0);
  v36 = v15;
  v16 = *(v15 + 36);
  v17 = type metadata accessor for IndexSet.Index();
  v18 = *(v17 - 8);
  v19 = v18[2];
  v34 = v3;
  v19(v11, v3, v17);
  v19(&v11[*(v5 + 56)], v3 + v16, v17);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v11, v7, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
  v20 = *(v5 + 56);
  v21 = v18[4];
  v21(v14, v7, v17);
  v35 = v21;
  v22 = v18[1];
  v23 = v22(&v7[v20], v17);
  outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v11, v7, v23);
  v24 = *(v5 + 56);
  v25 = v37;
  v21(&v14[*(v37 + 44)], &v7[v24], v17);
  v22(v7, v17);
  v26 = v36;
  v27 = *(v36 + 40);
  v28 = type metadata accessor for IndexSet();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v29 = v34;
  v30 = v38;
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v14, type metadata accessor for Range<IndexSet.Index>);
  v31 = v39;
  (*(*(v28 - 8) + 16))(&v39[*(v26 + 40)], v29 + v27, v28);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v30, v14, type metadata accessor for Range<IndexSet.Index>);
  v32 = v35;
  v35(v31, v14, v17);
  return v32(&v31[*(v26 + 36)], &v14[*(v25 + 44)], v17);
}

uint64_t outlined assign with take of Slice<IndexSet>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<IndexSet>(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _GraphInputs.needsAccessibility.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t (*_GraphInputs.needsAccessibility.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x1000) != 0;
  return _GraphInputs.needsAccessibility.modify;
}

uint64_t _ViewInputs.needsAccessibility.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t (*_ViewInputs.needsAccessibility.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x1000) != 0;
  return _ViewInputs.needsAccessibility.modify;
}

uint64_t _ViewInputs.needsAccessibility.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 4096;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFEFFF;
  return result;
}

Swift::Int AccessibilityLayoutRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Locale.bcp47LanguageCode.getter()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v10 = *(v1 + 8);
  v10(v6, v0);
  v11 = type metadata accessor for Locale.LanguageCode();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v9, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610]);
  }

  else
  {
    v13 = MEMORY[0x193ABDA90]();
    v15 = v14;
    (*(v12 + 8))(v9, v11);

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      Locale.language.getter();
      v17 = Locale.Language.maximalIdentifier.getter();
      v10(v3, v0);
      return v17;
    }
  }

  return 0;
}

uint64_t AccessibilityTextLayoutProperties.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 80);
  v31 = *(v1 + 96);
  v32 = v3;
  v5 = *(v1 + 112);
  v33 = *(v1 + 128);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v27 = *(v1 + 32);
  v28 = v6;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v29 = *(v1 + 64);
  v30 = v9;
  v10 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v10;
  v41 = v31;
  v42 = v5;
  v43 = *(v1 + 128);
  v37 = v27;
  v38 = v8;
  v39 = v29;
  v40 = v4;
  v34 = *(v1 + 144);
  v44 = *(v1 + 144);
  v35 = v26[0];
  v36 = v7;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v35) == 1)
  {
    _s7SwiftUI20TextLayoutPropertiesVSgWOi0_(&v16);
  }

  else
  {
    v22 = v41;
    v23 = v42;
    v24 = v43;
    v25 = v44;
    v18 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v16 = v35;
    v17 = v36;
    _ViewInputs.base.modify();
  }

  v11 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v11;
  *(a1 + 128) = v24;
  *(a1 + 144) = v25;
  v12 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v12;
  v13 = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v13;
  v14 = v17;
  *a1 = v16;
  *(a1 + 16) = v14;
  return outlined init with copy of AccessibilityTextLayoutProperties(v26, &v16);
}

uint64_t specialized static AccessibilityCore.description(for:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v32 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v14 = a3[1];
  v16 = MEMORY[0x193ABEC20](a1, a2, v11);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v13);
  }

  else
  {
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v17)
    {
      (*(v10 + 16))(v13, &v17[*(*v17 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v13, v18, v9);
    }
  }

  v19 = Locale.identifier.getter();
  v21 = v20;
  (*(v10 + 8))(v13, v9);
  v22 = MEMORY[0x193ABEC20](v19, v21);

  v23 = AXSwiftUIDescriptionForSymbolName(v16, v22);

  if (!v23)
  {
    return 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    return 0;
  }

  v32[0] = v24;
  v32[1] = v26;
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v8);
  }

  else
  {
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v29)
    {
      (*(v10 + 16))(v8, &v29[*(*v29 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v8, v30, v9);
    }
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  lazy protocol witness table accessor for type String and conformance String();
  v31 = StringProtocol.capitalized(with:)();
  outlined destroy of Locale.LanguageCode?(v8, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);

  return v31;
}

double _s7SwiftUI20TextLayoutPropertiesVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void lazy protocol witness table accessor for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole()
{
  if (!lazy protocol witness table cache variable for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityLayoutRole, &type metadata for AccessibilityLayoutRole, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole);
  }
}

double destructiveInjectEnumTag for AccessibilityTextLayoutProperties(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 112) = (a2 - 1);
  }

  return result;
}

uint64_t outlined destroy of Locale.LanguageCode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a1;
  v12[4] = a2;
  thunk for @callee_guaranteed () -> (@out A, @error @owned Error)partial apply();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v14 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v15 = a1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    static MainActor.assumeIsolated<A>(_:file:line:)(a4, a5, a6, a7, a8, a9, a10, v16);
    return;
  }

  if (static Semantics.forced >= v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a3)
  {
    v28[0] = a2;
    v28[1] = a3;

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    v18 = a2;
    v17 = a3;
    if (pthread_main_np())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0xE000000000000000;
    if (pthread_main_np())
    {
      goto LABEL_14;
    }
  }

  LOBYTE(a7) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, a7))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v28);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_18D018000, v19, a7, "%s This warning will become a runtime crash in a future version of SwiftUI.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193AC4820](v21, -1, -1);
      MEMORY[0x193AC4820](v20, -1, -1);
    }

    else
    {
LABEL_14:
    }

    v17 = swift_allocObject();
    v17[2] = a10;
    v17[3] = a4;
    v17[4] = a5;
    v23 = v28[6];
    partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
    if (!v23)
    {
      break;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v25 = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }
}

void ColorCacheKey.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 3);
  MEMORY[0x193AC11A0](*v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColorCacheKey()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  Hasher.init(_seed:)();
  ColorCacheKey.hash(into:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorCacheKey(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 8);
  v5 = *(v1 + 3);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  Hasher.init(_seed:)();
  ColorCacheKey.hash(into:)(v7);
  return Hasher._finalize()();
}

void *Color.init(_:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ColorBox<Color.NamedColor>(0);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void CUINamedColor.effectiveCGColor(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  if (![v1 substituteWithSystemColor])
  {
    goto LABEL_12;
  }

  v31 = v4;
  v32 = v3;
  if (EnvironmentValues.cuiNamedColorProvider.getter())
  {
    v31 = v4;
    v32 = v3;
    (*(v5 + 8))(v1, &v31);
    return;
  }

  if (one-time initialization token for namedTypes != -1)
  {
    swift_once();
  }

  v6 = static SystemColorType.namedTypes;
  v7 = [v2 systemColorName];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_12:
    v19 = [v2 cgColor];
    return;
  }

  v15 = *(*(v6 + 56) + v12);
  if (v3)
  {

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v18 = v17;
  }

  else
  {
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v4);
    if (v20)
    {
      v16 = v20[9];
      v18 = v20[10];
    }

    else
    {
      v18 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v16 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v30 = v15;
  v29[0] = v4;
  v29[1] = v3;
  (v18[1])(&v31, &v30, v29, v16, v18);
  v22.n128_u32[0] = HIDWORD(v31);
  v21.n128_u32[0] = v31;
  v24.n128_u32[0] = HIDWORD(v32);
  v23.n128_u32[0] = v32;
  if (one-time initialization token for cache != -1)
  {
    v27 = v32;
    v28 = v31;
    v25 = HIDWORD(v32);
    v26 = HIDWORD(v31);
    swift_once();
    v24.n128_u32[0] = v25;
    v22.n128_u32[0] = v26;
    v23.n128_u32[0] = v27;
    v21.n128_u32[0] = v28;
  }

  specialized ObjectCache.subscript.getter(v21, v22, v23, v24);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.NamedColor()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Color.NamedColor(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.NamedColor(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void *initializeBufferWithCopyOfBuffer for Color.NamedColor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

void *assignWithCopy for Color.NamedColor(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for Color.NamedColor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t specialized static ColorCacheKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    if (v4 = *(a1 + 3), v5 = *(a2 + 3), *(a1 + 1) == *(a2 + 1)) && *(a1 + 2) == *(a2 + 2) || (v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v6))
    {
      if (v4)
      {
        if (v5)
        {
          type metadata accessor for NSBundle();
          v7 = v5;
          v8 = v4;
          v9 = static NSObject.== infix(_:_:)();

          if (v9)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Color.NamedColor.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSBundle();
        v10 = a6;
        v11 = a3;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void destroy for ColorCacheKey(uint64_t a1)
{

  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t ResolvableStringResolutionContext.init(environment:maximumWidth:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v13, v11);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v13);
    if (v15)
    {
      v16 = MEMORY[0x1E6969530];
      v17 = v15 + *(*v15 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v9, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v16 = MEMORY[0x1E6969530];
    }

    _s10Foundation4DateVSgWOcTm_0(v17, v11, &lazy cache variable for type metadata for Date?, v16);
  }

  v18 = type metadata accessor for ResolvableStringResolutionContext(0);
  v19 = a4 + *(v18 + 24);
  result = outlined assign with take of Date?(v11, a4);
  v21 = (a4 + *(v18 + 20));
  *v21 = v13;
  v21[1] = v12;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  return result;
}

uint64_t static ResolvableStringAttributeRepresentation.attribute.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t ResolvableStringResolutionContext.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  _s10Foundation4DateVSgWOcTm_0(v1, &v14 - v8, &lazy cache variable for type metadata for Date?, v3);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v9, v10);
  }

  v14 = *(v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));
  EnvironmentValues.stringResolutionDate.getter(v6);
  if (v12(v6, 1, v10) == 1)
  {
    static Date.now.getter();
    if (v12(v6, 1, v10) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v11 + 32))(a1, v6, v10);
  }

  result = (v12)(v9, 1, v10);
  if (result != 1)
  {
    return _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  }

  return result;
}

uint64_t specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 16);
  v18(v12, v2, v6, v15);
  type metadata accessor for ClosedRange<Date>(0);
  (v18)(v9, v2 + *(v19 + 36), v6);
  DateInterval.init(start:end:)();
  LOBYTE(v7) = *(v2 + *(type metadata accessor for ResolvableProgress(0) + 20));
  v20 = *(v14 + 56);
  v21 = type metadata accessor for DateInterval();
  (*(*(v21 - 8) + 32))(v5, v17, v21);
  v5[v20] = v7;
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  swift_storeEnumTagMultiPayload();
  v22 = v24;
  _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v5, v24, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
  return (*(v3 + 56))(v22, 0, 1, v25);
}

{
  v2 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = ResolvableCurrentDate.provider.getter();
  if (v12)
  {
    v13 = v12;
    BaseDateProvider.updateConfiguration.getter(v8);

    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v8, v11, type metadata accessor for ResolvableAttributeConfiguration);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 32))(v5, v11, v20);
      goto LABEL_14;
    }

    if ((v11[8] & 1) == 0)
    {
      *v5 = *v11;
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
      v17 = *(v16 + 48);
      v18 = v11[v17];
      v19 = type metadata accessor for DateInterval();
      (*(*(v19 - 8) + 32))(v5, v11, v19);
      *(v5 + v17) = v18;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v5 = *v11;
LABEL_14:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v5, a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v15 = 0;
      return (*(v3 + 56))(a1, v15, 1, v2);
    }
  }

  v15 = 1;
  return (*(v3 + 56))(a1, v15, 1, v2);
}

{
  v3 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*v1 updateFrequency];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0x3FF0000000000000;
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_11;
      }

      v12 = 0x3FA1111111111111;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
    v12 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_10:
    *v10 = v12;
    v10[8] = 0;
    goto LABEL_11;
  }

  if (v11 == 1)
  {
    *v10 = 64;
  }

LABEL_11:
  swift_storeEnumTagMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 32))(v6, v10, v19);
      goto LABEL_21;
    }

    if ((v10[8] & 1) == 0)
    {
      *v6 = *v10;
      goto LABEL_21;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
      v16 = *(v15 + 48);
      v17 = v10[v16];
      v18 = type metadata accessor for DateInterval();
      (*(*(v18 - 8) + 32))(v6, v10, v18);
      *(v6 + v16) = v17;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v6 = *v10;
LABEL_21:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v14 = 0;
      return (*(v4 + 56))(a1, v14, 1, v3);
    }
  }

  v14 = 1;
  return (*(v4 + 56))(a1, v14, 1, v3);
}

void ResolvableStringAttribute.requiredFeatures.getter(_WORD *a1@<X8>)
{
  *a1 = 0;
}

{
  ResolvableStringAttribute.requiredFeatures.getter(a1);
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableCLKTextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = v3 == 0;
  v11 = v4;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v6, v7);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v8, v9);
  return v10;
}

BOOL ResolvableStringAttribute.sizeVariant(_:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  (*(*(a3 - 8) + 16))(a1, v3);
  return v4 == 0;
}

double protocol witness for ResolvableStringAttributeRepresentation.representation(for:) in conformance ResolvableCLKTextProvider@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  a3[3] = a1;
  a3[4] = a2;
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
  v12 = v5;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v7, v8);

  return outlined copy of ResolvableCLKTextProvider.FontStorage(v9, v10);
}

uint64_t ResolvableStringAttributeRepresentation.representation(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

void protocol witness for static ResolvableStringAttributeFamily.decode(from:) in conformance ResolvableCLKTextProvider(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v8);
  a3[3] = a2;
  lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider();
  a3[4] = v6;
  v7 = swift_allocObject();
  *a3 = v7;
  ResolvableCLKTextProvider.init(from:)(v8, (v7 + 16));
  if (v3)
  {
    __swift_deallocate_boxed_opaque_existential_1(a3);
  }
}

uint64_t static ResolvableStringAttribute<>.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v10);
  a5[3] = a2;
  a5[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(a5);
  result = dispatch thunk of Decodable.init(from:)();
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a5);
  }

  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableCLKTextProvider@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t specialized ResolvableStringAttribute.entries(from:mode:)(char *a1, char a2)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    type metadata accessor for _SequenceBox<[Date]>(0);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    v15 = a2 & 1;
    v12 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, &v15);
    type metadata accessor for _SequenceBox<AnySequence<Date>>(0);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    return v13;
  }

  return result;
}

{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    type metadata accessor for _SequenceBox<[Date]>(0);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    v15 = a2 & 1;
    v12 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, &v15);
    type metadata accessor for _SequenceBox<AnySequence<Date>>(0);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    return v13;
  }

  return result;
}

{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 16);
  v20(v11, v3, v5, v17);
  type metadata accessor for ClosedRange<Date>(0);
  (v20)(v8, v3 + *(v21 + 36), v5);
  DateInterval.init(start:end:)();
  v22 = *(v3 + *(type metadata accessor for ResolvableProgress(0) + 20));
  v23 = *(v13 + 56);
  v24 = type metadata accessor for DateInterval();
  (*(*(v24 - 8) + 32))(v19, v15, v24);
  v19[v23] = v22;
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  swift_storeEnumTagMultiPayload();
  v29 = a2 & 1;
  v25 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(v28, &v29);
  type metadata accessor for _SequenceBox<AnySequence<Date>>(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v19, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
  return v26;
}

uint64_t ResolvableStringAttribute.entries(from:mode:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v21 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18 = *a2;
  (*(a4 + 48))(a3, a4, v15);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    type metadata accessor for _SequenceBox<[Date]>(0);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
    v25 = v18;
    (*(AssociatedConformanceWitness + 24))(v24, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
    type metadata accessor for Date();
    swift_getAssociatedConformanceWitness();
    v20 = AnySequence.init<A>(_:)();
    (*(v13 + 8))(v17, AssociatedTypeWitness);
    return v20;
  }

  return result;
}

uint64_t ResolvableStringResolutionContext.init(referenceDate:environment:maximumWidth:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(a5, 1, 1, v11);
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  v13 = a5 + *(v12 + 24);
  result = outlined assign with take of Date?(a1, a5);
  v15 = (a5 + *(v12 + 20));
  *v15 = v9;
  v15[1] = v10;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  return result;
}

uint64_t EnvironmentValues.resolvableStringReferenceDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  _s10Foundation4DateVSgWOcTm_0(a1, &v14[-v9], &lazy cache variable for type metadata for Date?, v4);
  v11 = *v2;
  _s10Foundation4DateVSgWOcTm_0(v10, v7, &lazy cache variable for type metadata for Date?, v4);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v2, v7);

  _s10Foundation4DateVSgWOhTm_2(v7, &lazy cache variable for type metadata for Date?, v4);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v11, *v2);
  }

  v12 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgWOhTm_2(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  return _s10Foundation4DateVSgWOhTm_2(v10, &lazy cache variable for type metadata for Date?, v12);
}

uint64_t EnvironmentValues.setLazyStringResolutionDate(_:)(void *a1)
{
  v2 = v1;
  v14[3] = *MEMORY[0x1E69E9840];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v14 - v8);
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v11 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = *v2;
  _s10Foundation4DateVSgWOcTm_0(v9, v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v2, v6);

  _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v12, *v2);
  }

  return _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

uint64_t EnvironmentValues.stringResolutionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v3);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - v9);
  v11 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v11, v10);
  }

  else
  {
    v12 = v8;
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v11);
    if (v13)
    {
      v14 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v12, static EnvironmentValues.StringResolutionDate.defaultValue);
    }

    _s10Foundation4DateVSgWOcTm_0(v14, v10, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  }

  v15 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    v16 = type metadata accessor for Date();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    (*(v19 + 32))(a1, v10, v18);
    return (*(v19 + 56))(a1, 0, 1, v18);
  }

  else
  {
    v20 = *v10;
    _s10Foundation4DateVSgWOcTm_0(v20, v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      v23 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      static Date.now.getter();
      _s10Foundation4DateVSgWOhTm_2(v20, &lazy cache variable for type metadata for Date?, v23);
      (*(v22 + 16))(v20, a1, v21);
      v24 = *(v22 + 56);
      v24(v20, 0, 1, v21);
      return (v24)(a1, 0, 1, v21);
    }

    else
    {
      (*(v22 + 32))(a1, v6, v21);
      return (*(v22 + 56))(a1, 0, 1, v21);
    }
  }
}

double ResolvableStringResolutionContext.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

void ResolvableStringResolutionContext.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));

  *v4 = v2;
  v4[1] = v3;
}

uint64_t ResolvableStringResolutionContext.maximumWidth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ResolvableStringResolutionContext(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void EnvironmentValues.resolvableStringReferenceDate.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = MEMORY[0x1E6969530];
      v6 = v4 + *(*v4 + 248);
      v7 = a1;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v6 = __swift_project_value_buffer(v9, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v7 = a1;
      v5 = v8;
    }

    _s10Foundation4DateVSgWOcTm_0(v6, v7, &lazy cache variable for type metadata for Date?, v5);
  }
}

BOOL ResolvableStringAttribute.isDynamic.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2, v7);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v9, v5);
  return v10;
}

void key path getter for EnvironmentValues.resolvableStringReferenceDate : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v3, a2);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*a1);
    if (v4)
    {
      v5 = MEMORY[0x1E6969530];
      v6 = v4 + *(*v4 + 248);
      v7 = a2;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v6 = __swift_project_value_buffer(v9, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v7 = a2;
      v5 = v8;
    }

    _s10Foundation4DateVSgWOcTm_0(v6, v7, &lazy cache variable for type metadata for Date?, v5);
  }
}

uint64_t key path setter for EnvironmentValues.resolvableStringReferenceDate : EnvironmentValues(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  _s10Foundation4DateVSgWOcTm_0(a1, &v10 - v7, &lazy cache variable for type metadata for Date?, v2);
  _s10Foundation4DateVSgWOcTm_0(v8, v5, &lazy cache variable for type metadata for Date?, v2);
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE029ResolvableStringReferenceDateN033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt0g5(v5);
  _s10Foundation4DateVSgWOhTm_2(v5, &lazy cache variable for type metadata for Date?, v2);
  return _s10Foundation4DateVSgWOhTm_2(v8, &lazy cache variable for type metadata for Date?, v2);
}

void (*EnvironmentValues.resolvableStringReferenceDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v8);
    v5[4] = malloc(v8);
    v5[5] = malloc(v8);
    v5[6] = malloc(v8);
    v5[7] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[8] = v9;
  v11 = *v1;
  v5[9] = *v1;
  v12 = *(v1 + 8);
  v5[10] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v11, v10);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v11);
    if (v13)
    {
      v14 = MEMORY[0x1E6969530];
      v15 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v7, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v14 = MEMORY[0x1E6969530];
    }

    _s10Foundation4DateVSgWOcTm_0(v15, v10, &lazy cache variable for type metadata for Date?, v14);
  }

  return EnvironmentValues.resolvableStringReferenceDate.modify;
}

void EnvironmentValues.resolvableStringReferenceDate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 80);
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(v2 + 64), v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOcTm_0(v4, v5, &lazy cache variable for type metadata for Date?, v8);
    _s10Foundation4DateVSgWOcTm_0(v5, v6, &lazy cache variable for type metadata for Date?, v8);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v7, v6);

    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, v8);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(*(v2 + 72), **(v2 + 16));
    }

    v10 = *(v2 + 56);
    v9 = *(v2 + 64);
    v12 = *(v2 + 40);
    v11 = *(v2 + 48);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);

    _s10Foundation4DateVSgWOhTm_2(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v15 = v12;
  }

  else
  {
    v16 = *(v2 + 80);
    v17 = *(v2 + 56);
    v18 = *(v2 + 48);
    v19 = *(v2 + 16);
    v20 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(v2 + 64), v17, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOcTm_0(v17, v18, &lazy cache variable for type metadata for Date?, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v19, v18);

    _s10Foundation4DateVSgWOhTm_2(v18, &lazy cache variable for type metadata for Date?, v20);
    if (v16)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(*(v2 + 72), **(v2 + 16));
    }

    v12 = *(v2 + 56);
    v9 = *(v2 + 64);
    v15 = *(v2 + 40);
    v11 = *(v2 + 48);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);

    v10 = v12;
  }

  v21 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgWOhTm_2(v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for Date?, v21);
  free(v9);
  free(v10);
  free(v11);
  free(v15);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1)
{
  return one-time initialization function for defaultValue(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue, MEMORY[0x1E6969530]);
}

{
  return one-time initialization function for defaultValue(a1, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, static EnvironmentValues.StringResolutionDate.defaultValue, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

{
  return one-time initialization function for defaultValue(a1, MEMORY[0x1E6969AE8], static CalendarKey.defaultValue, MEMORY[0x1E69699E0]);
}

{
  return one-time initialization function for defaultValue(a1, MEMORY[0x1E6969BC0], static TimeZoneKey.defaultValue, MEMORY[0x1E6969BB0]);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ResolvableStringReferenceDateKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = __swift_project_value_buffer(v3, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
  return _s10Foundation4DateVSgWOcTm_0(v4, a1, &lazy cache variable for type metadata for Date?, v2);
}

uint64_t key path setter for EnvironmentValues.stringResolutionDate : EnvironmentValues(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  _s10Foundation4DateVSgWOcTm_0(a1, &v7 - v4, &lazy cache variable for type metadata for Date?, v2);
  return EnvironmentValues.stringResolutionDate.setter(v5);
}

void (*EnvironmentValues.stringResolutionDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  EnvironmentValues.stringResolutionDate.getter(v5);
  return EnvironmentValues.stringResolutionDate.modify;
}

void EnvironmentValues.stringResolutionDate.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(a1 + 16), v2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    EnvironmentValues.stringResolutionDate.setter(v2);
    _s10Foundation4DateVSgWOhTm_2(v3, &lazy cache variable for type metadata for Date?, v4);
  }

  else
  {
    EnvironmentValues.stringResolutionDate.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t (*a5)(void))
{
  _s10Foundation4DateVSgMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  v8 = v7;
  __swift_allocate_value_buffer(v7, a4);
  v9 = __swift_project_value_buffer(v8, a4);
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(v9, 1, 1, v10);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.StringResolutionDate@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.StringResolutionDate.defaultValue);
  return _s10Foundation4DateVSgWOcTm_0(v3, a1, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

uint64_t protocol witness for ResolvableStringAttributeRepresentation.representation(for:) in conformance ResolvableAbsoluteDate@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return outlined init with copy of ResolvableCurrentDate(v4, boxed_opaque_existential_1, a3);
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableProgress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableProgress);
  return v3 == 0;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableProgress@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableDateInterval(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableDateInterval);
  return v3 == 0;
}

uint64_t protocol witness for static ResolvableStringAttributeFamily.decode(from:) in conformance ResolvableProgress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, const char *a5@<X5>, uint64_t (*a6)(_BYTE *)@<X6>, uint64_t *a7@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v16);
  a7[3] = a2;
  lazy protocol witness table accessor for type ResolvableCurrentDate and conformance ResolvableCurrentDate(a3, a4, a5);
  a7[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(a7);
  result = a6(v16);
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a7);
  }

  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableDateInterval@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _SequenceBox<[Date]>(0);
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *a1 = result;
  return result;
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableCurrentDate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableCurrentDate);
  return v3 == 0;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableCurrentDate@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

void type metadata accessor for _SequenceBox<[Date]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SequenceBox<[Date]>)
  {
    v1 = MEMORY[0x1E69E62F8];
    _s10Foundation4DateVSgMaTm_3(255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Date] and conformance [A](&lazy protocol witness table cache variable for type [Date] and conformance [A], &lazy cache variable for type metadata for [Date], v1, MEMORY[0x1E69E6328]);
    v2 = type metadata accessor for _SequenceBox();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _SequenceBox<[Date]>);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ResolvableStringResolutionContext(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(v4, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(v4, a2, v7);
      (*(v8 + 56))(v4, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = &v4[v11];
    v14 = (a2 + v11);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = &v4[v12];
    v17 = a2 + v12;
    v16[8] = v17[8];
    *v16 = *v17;
  }

  return v4;
}

char *initializeWithCopy for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = &a1[v9];
  v12 = &a2[v9];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;
  v14 = &a1[v10];
  v15 = &a2[v10];
  v14[8] = v15[8];
  *v14 = *v15;

  return a1;
}

char *assignWithCopy for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = *v17;
  v16[8] = v17[8];
  *v16 = v18;
  return a1;
}

char *initializeWithTake for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  v10[8] = v11[8];
  return a1;
}

char *assignWithTake for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithCopy for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(a1, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *initializeWithTake for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(a1, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void lazy protocol witness table accessor for type [Date] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    _s10Foundation4DateVSgMaTm_3(255, a2, MEMORY[0x1E6969530], a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void lazy protocol witness table accessor for type ResolvableCurrentDate and conformance ResolvableCurrentDate(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined init with copy of ResolvableCurrentDate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized _GestureOutputs.overrideDefaultValues(_:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = HIDWORD(a1);
  v8 = HIDWORD(a4);
  type metadata accessor for DefaultRule<GesturePhase<()>>(0);
  result = AGGraphMutateAttribute();
  if (*MEMORY[0x1E698D3F8] != v8 && *MEMORY[0x1E698D3F8] != v7)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for DefaultRule<GestureDebug.Data>(0, v11, v12, v13);
    MEMORY[0x1EEE9AC00](v14);
    result = AGGraphMutateAttribute();
  }

  v15 = *(a5 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(a2 + 16);
    v18 = a5 + 32;
    v19 = (a2 + 32);
    v20 = v17 + 1;
    do
    {
      v21 = (v18 + 24 * v16);
      v22 = *v21;
      result = *(v21 + 4);
      ++v16;
      v23 = v20;
      v24 = v19;
      while (--v23)
      {
        v25 = *v24;
        v24 += 3;
        if (v25 == v22)
        {
          result = AGGraphSetIndirectAttribute();
          break;
        }
      }
    }

    while (v16 != v15);
  }

  return result;
}

double key path getter for LayoutGestureModifier.transform : <A>LayoutGestureModifier<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed MultiViewResponder) -> (@out A);
  a4[1] = v8;

  return result;
}

void key path setter for LayoutGestureModifier.transform : <A>LayoutGestureModifier<A>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MultiViewResponder) -> (@out A);
  a2[1] = v8;
}

uint64_t LayoutGestureModifier.transform.getter()
{
  v1 = *v0;

  return v1;
}

void LayoutGestureModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t LayoutGestureModifier.init(transform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static LayoutGestureModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v38 = a2[2];
  v39 = v9;
  v11 = a2[3];
  v40 = a2[4];
  v12 = a2[1];
  v36 = *a2;
  v37 = v12;
  v32 = v38;
  v33 = v11;
  v34 = a2[4];
  v13 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v30 = v36;
  v31 = v10;
  a3(&v27);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v39))
  {
    v14 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v27);
    v16 = v14;
    if ((v14 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v16 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v17, 0);
    }

    type metadata accessor for LayoutGestureResponder(0, a4, a5, v15);
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    outlined init with copy of _ViewInputs(&v36, v29);
    swift_allocObject();
    v18 = LayoutGestureResponder.init(modifier:inputs:)(v13, &v30);
    LODWORD(v30) = v16;
    *(&v30 + 1) = v18;
    MEMORY[0x1EEE9AC00](v18);
    v25 = type metadata accessor for LayoutResponderFilter(0, a4, a5, v19);
    swift_getWitnessTable(protocol conformance descriptor for LayoutResponderFilter<A>, v25);
    v26 = v20;
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v24, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

    LOBYTE(v30) = 0;
    PreferencesOutputs.subscript.setter(v29[0], &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  *a6 = v27;
  result = v28;
  a6[1] = v28;
  return result;
}

double View.layoutGesture<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LayoutGestureModifier(0, a4, a6, a4);
  View.modifier<A>(_:)();

  return result;
}

double LayoutResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  if (!AGGraphGetOutputValue())
  {
    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

id LayoutGestureResponder.init(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 88) = a1;
  v3 = *(a2 + 48);
  *(v2 + 128) = *(a2 + 32);
  *(v2 + 144) = v3;
  *(v2 + 160) = *(a2 + 64);
  *(v2 + 176) = *(a2 + 80);
  v4 = *(a2 + 16);
  *(v2 + 96) = *a2;
  *(v2 + 112) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 184) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LayoutGestureResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  *v36 = a1[6];
  *&v36[12] = *(a1 + 108);
  v6 = a1[1];
  v35[0] = *a1;
  v35[1] = v6;
  v7 = a1[3];
  v35[2] = a1[2];
  v35[3] = v7;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v32);
  v8 = v32[0];
  v9 = v32[1];
  v10 = v33;
  v11 = v34;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v31 = v11;
  v30 = v8;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = v10;
  v15 = v36[24];
  v16 = v9;
  v17 = AGSubgraphGetGraph();
  v18 = AGSubgraphCreate();

  v19 = *(v3 + 192);
  *(v3 + 192) = v18;
  v20 = v18;

  AGSubgraphAddChild2();
  if (!*(v3 + 192))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AGSubgraphAddChild();
  v9 = v16;
  v10 = v14;
  v11 = v31;
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v21 = AGSubgraphGetGraph();
  v22 = AGSubgraphCreate();

  v23 = *(v3 + 200);
  *(v3 + 200) = v22;
  v24 = v22;

  v25 = *(v3 + 192);
  if (v25)
  {
    v26 = v25;
    AGSubgraphAddChild2();

LABEL_7:
    v27 = *(v3 + 192);
    if (v27)
    {
      v28 = v27;
      AGGraphClearUpdate();
      v29 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LODWORD(v8) = v30;
      closure #1 in LayoutGestureResponder.makeGesture(inputs:)(v3, v35, v30 | (v9 << 32), v10);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
LABEL_9:
      *a2 = v8;
      *(a2 + 4) = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      return;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

void closure #1 in LayoutGestureResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(*a1 + 344);
  v7 = *(*a1 + 352);
  LODWORD(v59) = *(a1 + 88);
  *(&v59 + 1) = a1;
  v56 = v6;
  v57 = type metadata accessor for LayoutGestureChild(0, v6, v7, a4);
  swift_getWitnessTable(protocol conformance descriptor for LayoutGestureChild<A>, v57);
  v58 = v8;
  v9 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v59, partial apply for closure #1 in Attribute.init<A>(_:), v55, v57, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  v11 = v76;
  v12 = AGGraphGetAttributeGraph();
  if (!AGGraphGetContext())
  {
    __break(1u);
  }

  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v15 = HIDWORD(v13);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = v7;
  *(v17 + 32) = v16;
  *(v17 + 40) = v14;
  *(v17 + 44) = v15;
  v19 = *(a1 + 208);
  v18 = *(a1 + 216);
  *(a1 + 208) = partial apply for closure #1 in closure #1 in LayoutGestureResponder.makeGesture(inputs:);
  *(a1 + 216) = v17;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v19, v18);

  v20 = *(a2 + 16);
  v21 = *(a2 + 40);
  v72 = *(a2 + 24);
  v73 = v21;
  v22 = *(a2 + 72);
  *v74 = *(a2 + 56);
  *&v74[16] = v22;
  v54[0] = *(a2 + 96);
  *(v54 + 12) = *(a2 + 108);
  v23 = *(a1 + 112);
  v76 = *(a1 + 96);
  *v77 = v23;
  v24 = *(a1 + 128);
  v25 = *(a1 + 144);
  v26 = *(a1 + 160);
  *&v77[64] = *(a1 + 176);
  *&v77[32] = v25;
  *&v77[48] = v26;
  *&v77[16] = v24;
  v27 = *(a1 + 200);
  if (v27)
  {
    v48 = *(a1 + 200);
  }

  else
  {
    v28 = *(a1 + 192);
    if (!v28)
    {
      __break(1u);
      return;
    }

    v48 = v28;
    v27 = 0;
  }

  v29 = *(a2 + 88);
  v62 = *a2;
  v63 = v20;
  v64 = *(a2 + 24);
  v65 = *(a2 + 40);
  v66[0] = *(a2 + 56);
  *(v66 + 12) = *(a2 + 68);
  outlined init with copy of _GestureInputs(a2, &v59);
  outlined init with copy of _ViewInputs(&v76, &v59);
  v30 = v27;
  outlined destroy of _ViewInputs(&v62);
  v31 = *v77;
  v75 = v76;
  v72 = *&v77[8];
  v73 = *&v77[24];
  *v74 = *&v77[40];
  *&v74[12] = *&v77[52];
  swift_beginAccess();
  v32 = v31[3];
  v68 = v31[2];
  v69 = v32;
  v33 = v31[5];
  v70 = v31[4];
  v71 = v33;
  v67 = v31[1];
  outlined init with copy of CachedEnvironment(&v67, &v59);

  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  inited = swift_initStackObject();
  v36 = v70;
  v35 = v71;
  inited[3] = v69;
  inited[4] = v36;
  inited[5] = v35;
  v37 = v68;
  inited[1] = v67;
  inited[2] = v37;
  _GraphValue.init(_:)(v11, &v51);
  v38 = *(a2 + 80);
  *&v60[48] = *(a2 + 64);
  *&v60[64] = v38;
  v61[0] = *(a2 + 96);
  *(v61 + 12) = *(a2 + 108);
  v39 = *(a2 + 16);
  v59 = *a2;
  *v60 = v39;
  v40 = *(a2 + 48);
  *&v60[16] = *(a2 + 32);
  *&v60[32] = v40;
  (*(v7 + 32))(v52, &v51, &v59, v6, v7);
  if ((*(a2 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v6))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    LOBYTE(v51) = v41;
    v42 = *(a2 + 80);
    *&v60[48] = *(a2 + 64);
    *&v60[64] = v42;
    v61[0] = *(a2 + 96);
    *(v61 + 12) = *(a2 + 108);
    v43 = *(a2 + 16);
    v59 = *a2;
    *v60 = v43;
    v44 = *(a2 + 48);
    *&v60[16] = *(a2 + 32);
    *&v60[32] = v44;
    v45 = HIDWORD(v52[0]) == *MEMORY[0x1E698D3F8];
    if (HIDWORD(v52[0]) == *MEMORY[0x1E698D3F8])
    {
      v46 = 0;
    }

    else
    {
      v46 = HIDWORD(v52[0]);
    }

    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v6, &v51, 0x100000000, &v59, v46 | (v45 << 32), 0x100000000, v47);
  }

  specialized _GestureOutputs.overrideDefaultValues(_:)(v52[0], v52[1], v53, a3, a4);

  v59 = v75;
  *&v60[8] = v72;
  *&v60[24] = v73;
  *&v60[40] = *v74;
  *&v60[56] = *&v74[16];
  *v60 = inited;
  *&v60[72] = v48;
  v61[0] = v54[0];
  *(v61 + 12) = *(v54 + 12);
  outlined destroy of _GestureInputs(&v59);
}

double closure #1 in closure #1 in LayoutGestureResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(&v6);
    default argument 3 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(&v5);
    v4 = v5;
    GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(0, &v6, a2, &v4, 1);
  }

  return result;
}

double LayoutGestureResponder.childrenDidChange()()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = *(v0 + 216);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
  }

  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v7, v11);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = v12;
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v11);
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  swift_endAccess();
  return result;
}

void LayoutGestureResponder.resetGesture()()
{
  v1 = v0[26];
  v2 = v0[27];
  v0[26] = 0;
  v0[27] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);
  v3 = v0[24];
  v0[24] = 0;

  v4 = v0[25];
  v0[25] = 0;

  swift_beginAccess();
  v5 = v0[5];
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AC03C0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      (*(*v8 + 120))();
    }
  }
}

double LayoutGestureResponder.__ivar_destroyer()
{
  v1 = *(v0 + 144);
  v4[2] = *(v0 + 128);
  v4[3] = v1;
  v4[4] = *(v0 + 160);
  v5 = *(v0 + 176);
  v2 = *(v0 + 112);
  v4[0] = *(v0 + 96);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 208), *(v0 + 216));
}

uint64_t LayoutGestureResponder.deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();

  v2 = *(v1 + 144);
  v5[2] = *(v1 + 128);
  v5[3] = v2;
  v5[4] = *(v1 + 160);
  v6 = *(v1 + 176);
  v3 = *(v1 + 112);
  v5[0] = *(v1 + 96);
  v5[1] = v3;
  outlined destroy of _ViewInputs(v5);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v1 + 208), *(v1 + 216));
  return v1;
}

uint64_t LayoutGestureResponder.__deallocating_deinit(__n128 a1)
{
  LayoutGestureResponder.deinit(a1);

  return swift_deallocClassInstance();
}

double LayoutGestureChild.modifier.getter@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for LayoutGestureModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  *a4 = v7;
  a4[1] = v6;

  return result;
}

double LayoutGestureChild.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LayoutGestureChild.modifier.getter(a3, a4, &v7);
  v7(a2, v5);

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MultiViewResponder) -> (@out A)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t BaseDateProvider.updateConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 updateType];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v15 = [v1 updateInterval];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
        v18 = MEMORY[0x193ABF490]();
      }

      else
      {
        v18 = 0.0;
      }

      *a1 = v18;
      *(a1 + 8) = v16 == 0;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_27;
    }

    if (v3 != 1)
    {
      goto LABEL_15;
    }

    v8 = [v1 updateWallClockAlignment];
    if (!v8)
    {
      v44 = static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v45 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_18DDAF080;
      v22 = MEMORY[0x1E69E6158];
      *(v46 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v48 = v47;
      *(v46 + 64) = v47;
      *(v46 + 32) = 0xD000000000000020;
      *(v46 + 40) = 0x800000018DD7FB40;
      v49 = v45;
      v50 = StaticString.description.getter();
      *(v46 + 96) = v22;
      *(v46 + 104) = v48;
      *(v46 + 72) = v50;
      *(v46 + 80) = v51;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v46 + 136) = v22;
      *(v46 + 144) = v48;
      *(v46 + 112) = v52;
      *(v46 + 120) = v53;
      os_log(_:dso:log:_:_:)(v44, &dword_18D018000, v49, "%s %s:%s", v56, 0x6B, v58);

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v31 = 0x800000018DD7FB70;
      v32 = 0xD000000000000023;
      goto LABEL_33;
    }

    *a1 = v8;
    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v11 = [v1 timerInterval];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
          v14 = *(v13 + 48);
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          *(a1 + v14) = 1;
          goto LABEL_15;
        }
      }

      else
      {
        if (v3 != 4)
        {
          goto LABEL_15;
        }

        v4 = [v1 timerInterval];
        if (v4)
        {
          v5 = v4;
          type metadata accessor for (interval: DateInterval, countdown: Bool)(0);
          v7 = *(v6 + 48);
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          *(a1 + v7) = 0;
LABEL_15:
          type metadata accessor for ResolvableAttributeConfiguration(0);
          goto LABEL_27;
        }
      }

      v19 = static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18DDAF080;
      v22 = MEMORY[0x1E69E6158];
      *(v21 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v24 = v23;
      *(v21 + 64) = v23;
      *(v21 + 32) = 0xD00000000000001ALL;
      *(v21 + 40) = 0x800000018DD7FAC0;
      v25 = v20;
      v26 = StaticString.description.getter();
      *(v21 + 96) = v22;
      *(v21 + 104) = v24;
      *(v21 + 72) = v26;
      *(v21 + 80) = v27;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v21 + 136) = v22;
      *(v21 + 144) = v24;
      *(v21 + 112) = v28;
      *(v21 + 120) = v29;
      os_log(_:dso:log:_:_:)(v19, &dword_18D018000, v25, "%s %s:%s", v56, 0x6B, v58);

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v31 = 0x800000018DD7FAE0;
      v32 = 0xD00000000000001DLL;
LABEL_33:
      v57 = v32;
      v59 = v31;
      v54 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v54);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v55);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      *(v30 + 56) = v22;
      *(v30 + 32) = v57;
      *(v30 + 40) = v59;
      print(_:separator:terminator:)();

      type metadata accessor for ResolvableAttributeConfiguration(0);
      return swift_storeEnumTagMultiPayload();
    }

    v9 = [v1 timerEndDate];
    if (!v9)
    {
      v33 = static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_18DDAF080;
      v22 = MEMORY[0x1E69E6158];
      *(v35 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v37 = v36;
      *(v35 + 64) = v36;
      *(v35 + 32) = 0xD000000000000015;
      *(v35 + 40) = 0x800000018DD7FB00;
      v38 = v34;
      v39 = StaticString.description.getter();
      *(v35 + 96) = v22;
      *(v35 + 104) = v37;
      *(v35 + 72) = v39;
      *(v35 + 80) = v40;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v35 + 136) = v22;
      *(v35 + 144) = v37;
      *(v35 + 112) = v41;
      *(v35 + 120) = v42;
      os_log(_:dso:log:_:_:)(v33, &dword_18D018000, v38, "%s %s:%s", v56, 0x6B, v58);

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v31 = 0x800000018DD7FB20;
      v32 = 0xD000000000000018;
      goto LABEL_33;
    }

    v10 = v9;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

LABEL_27:

  return swift_storeEnumTagMultiPayload();
}

id DateFormattingContext.init(_:)(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  outlined init with copy of Date?(a1, &v14 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v8 = a1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v9 = *v8;
  if (*(v8 + 8))
  {

    v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v9);
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*v8);
    if (v11)
    {
      v10 = *(v11 + 72);
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReferenceDate:isa isLuminanceReduced:v10 & 1];

  outlined destroy of ResolvableStringResolutionContext(a1);
  return v12;
}

uint64_t protocol witness for ConfigurationBasedResolvableStringAttributeRepresentation.invalidationConfiguration.getter in conformance ResolvableCurrentDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = ResolvableCurrentDate.provider.getter();
  if (v5)
  {
    v6 = v5;
    BaseDateProvider.updateConfiguration.getter(v4);

    return outlined init with take of ResolvableAttributeConfiguration(v4, a1);
  }

  else
  {

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t outlined init with take of ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ResolvableStringResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_10Foundation16AttributedStringV16WritingDirectionOSgs5NeverOTg5066_s7SwiftUI4TextV18ResolvedPropertiesV9ParagraphVAAE29languageBasedg61Direction030_7AFAB46D18FA6D189589CFA78D8B2Q1ELL10Foundation16eF19V0iJ0OSgyFAOSSXEfU_Tf1cn_n(uint64_t a1)
{
  v36 = type metadata accessor for Locale.Language();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Locale();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v38 = v39;
    v8 = a1 + 56;
    v9 = _HashTable.startBucket.getter();
    v10 = 0;
    v31 = (v5 + 8);
    v32 = (v3 + 8);
    v28 = a1 + 64;
    v29 = v7;
    v30 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v37 = *(a1 + 36);
      swift_bridgeObjectRetain_n();
      v13 = v33;
      Locale.init(identifier:)();
      v14 = v35;
      Locale.language.getter();
      v15 = Locale.Language.characterDirection.getter();
      (*v32)(v14, v36);
      (*v31)(v13, v34);

      if (v15 >= 5)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0x100010002uLL >> (8 * v15);
      }

      v17 = v38;
      v39 = v38;
      v19 = *(v38 + 16);
      v18 = *(v38 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v39;
      }

      *(v17 + 16) = v19 + 1;
      *(v17 + v19 + 32) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v8 = v30;
      v20 = *(v30 + 8 * v12);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v38 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v24 = (v28 + 8 * v12);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v9, v37, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v29)
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
    __break(1u);
  }
}

void Text.ResolvedProperties.init()(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = v2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_18DD85510;

  v3 = MEMORY[0x1E69E7CD0];
  *(a1 + 112) = v2;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = v3;
  *(a1 + 152) = 3;
}

void Text.Resolved.init()(uint64_t a1@<X8>)
{
  Text.Style.init()(a1);
  v2 = type metadata accessor for Text.Resolved(0);
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 1;
  v3 = (a1 + v2[7]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[8];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v5;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0;
  *(v4 + 96) = xmmword_18DD85510;
  *(v4 + 112) = v5;

  v6 = MEMORY[0x1E69E7CD0];
  *(v4 + 112) = v5;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 128) = v6;
  *(v4 + 152) = 3;
}

void *Text.Resolved.finalized(in:)(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Text.Resolved(0) + 20));
  if (v3)
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = v3;
    v7 = [v6 length];

    v9[0] = v5;
    v9[1] = v4;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v7, v6, v9);
  }

  return v3;
}

Swift::Void __swiftcall Text.ResolvedProperties.registerCustomAttachment(at:)(Swift::Int at)
{
  v3 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 112) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[8 * v6 + 32] = at;
  *(v1 + 112) = v3;
}

float *Text.ResolvedProperties.addColor(_:)(float *result)
{
  v2 = *(v1 + 32);
  if ((v2 & 1) == 0 && *result == -1.0 && result[1] == -1.0)
  {
    *(v1 + 32) = v2 | 1;
  }

  return result;
}

void Text.Style.LineStyle.resolve(in:fallbackStyle:)(__int128 *a1@<X0>, void (*a2)(__int128 *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  v6 = *a1;
  v7 = *v3;
  v8 = *v3;
  v9 = v3[1];
  if (v5 == 1)
  {
    v14 = *a1;
    a2(&v17);
    v9 = *(&v17 + 1);
    if (*(&v17 + 1) == 1)
    {
LABEL_4:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 21) = 0;
      *(a3 + 16) = 0;
      *(a3 + 29) = 1;
      return;
    }

    v8 = v17;
    v6 = v14;
  }

  if (v9)
  {
    v16 = v6;
    v10 = *(*v9 + 120);
    outlined copy of Text.Style.LineStyle(v7, v5);

    v10(&v17, &v16);
    v15 = v17;
    v11 = v18;

    v12 = v15;
    v13 = 0;
  }

  else
  {
    outlined copy of Text.Style.LineStyle(v7, v5);
    v11 = 0;
    v12 = 0uLL;
    v13 = 0x100000000;
  }

  *a3 = v8;
  *(a3 + 8) = v12;
  *(a3 + 28) = BYTE4(v13);
  *(a3 + 24) = v13 | v11;
  *(a3 + 29) = 0;
}

id Text.ResolvedProperties.Paragraph.style(environment:alignment:writingDirection:lineHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for ParagraphStyleResolutionContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4[2];
  if (!v12)
  {
    v15 = *a1;
    v14 = *(a1 + 8);
    v25 = v15;
    v26 = v14;

    ParagraphStyleResolutionContext.init(_:)(&v25, v11);
    LOBYTE(v25) = 0;
    v24 = 1;
    v16 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v11, a2, &v25, a3, &v24, a4);
    outlined destroy of ParagraphStyleResolutionContext(v11, type metadata accessor for ParagraphStyleResolutionContext);
    [v16 setCompositionLanguage_];
    if (v14)
    {

      ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);

      if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = v15;
      v26 = 0;

      v18 = specialized static ShouldRedactContentKey.value(in:)(&v25);

      if (!v18)
      {
LABEL_15:
        v4[2] = v16;
        v13 = v16;
        goto LABEL_16;
      }
    }

    [v16 setFullyJustified_];
    if ([v16 baseWritingDirection] == -1)
    {
      if (v14)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v15, &v25);

        v19 = v25;
      }

      else
      {
        v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v15);
        if (v20)
        {
          v19 = *(v20 + 72);
        }

        else
        {
          v19 = 0;
        }
      }

      [v16 setBaseWritingDirection_];
    }

    [v16 setLineBreakMode_];
    goto LABEL_15;
  }

  v13 = v4[2];
LABEL_16:
  v21 = v12;
  return v13;
}

uint64_t Text.ResolvedProperties.Transition.init(transition:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 14);
  *a2 = *result;
  *(a2 + 12) = v3;
  *(a2 + 8) = v2;
  *(a2 + 14) = v4;
  return result;
}

double Text.Style.addFontModifier<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for AnyFontModifier();
  static AnyFontModifier.static<A>(_:)(a1, a2, a3);
  MEMORY[0x193ABF170]();
  if (*((*(v4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

Swift::Void __swiftcall Text.ResolvedProperties.addSensitive()()
{
  v1 = *(v0 + 32);
  if ((v1 & 4) == 0)
  {
    *(v0 + 32) = v1 | 4;
  }
}

uint64_t SwiftUITextAttachment.draw(in:at:)(uint64_t *a1, double a2, double a3)
{
  v4 = v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage;
  v5 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v8 = *(v4 + 32);
    if (*(v4 + 40) > 3u)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = *(v4 + 32);
      v8 = *(v4 + 24);
    }

    v10 = 1.0 / v5;
    v6 = v10 * v8;
    v7 = v10 * v9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin) + a2;
  v12 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin + 8) + a3;
  v13 = *(v4 + 48);
  v14 = *(v4 + 80);
  v34 = *(v4 + 64);
  v35[0] = v14;
  *(v35 + 12) = *(v4 + 92);
  v15 = *(v4 + 16);
  v31[0] = *v4;
  v31[1] = v15;
  v16 = *(v4 + 48);
  v18 = *v4;
  v17 = *(v4 + 16);
  v32 = *(v4 + 32);
  v33 = v16;
  v19 = *(v4 + 80);
  v29 = v34;
  v30[0] = v19;
  *(v30 + 12) = *(v4 + 92);
  v25 = v18;
  v26 = v17;
  v20 = *a1;
  v27 = v32;
  v28 = v13;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24 = -1;
  outlined init with copy of GraphicsImage(v31, v36);
  GraphicsContext.draw(_:in:style:shading:)(&v25, 256, v22, v20, v11, v12, v6, v7);
  v36[4] = v29;
  v37[0] = v30[0];
  *(v37 + 12) = *(v30 + 12);
  v36[0] = v25;
  v36[1] = v26;
  v36[2] = v27;
  v36[3] = v28;
  return outlined destroy of GraphicsImage(v36);
}

uint64_t Text.Resolved.includeDefaultAttributes.setter(char a1)
{
  result = type metadata accessor for Text.Resolved(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

__n128 Text.Resolved.idiom.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for Text.Resolved(0) + 28));
  *a1 = result;
  return result;
}

uint64_t Text.Resolved.idiom.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for Text.Resolved(0);
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t Text.Resolved.properties.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Text.Resolved(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  *(a1 + 137) = *(v3 + 137);
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v5;
  *a1 = v14;
  a1[1] = v9;
  return outlined init with copy of Text.ResolvedProperties(v17, &v16);
}

__n128 Text.Resolved.properties.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Text.Resolved(0) + 32));
  v4 = v3[7];
  v13[6] = v3[6];
  v13[7] = v4;
  v14[0] = v3[8];
  *(v14 + 9) = *(v3 + 137);
  v5 = v3[3];
  v13[2] = v3[2];
  v13[3] = v5;
  v6 = v3[5];
  v13[4] = v3[4];
  v13[5] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  outlined destroy of Text.ResolvedProperties(v13);
  v8 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v8;
  v3[8] = *(a1 + 128);
  *(v3 + 137) = *(a1 + 137);
  v9 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v9;
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  return result;
}

void Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(v3 + 144);
  v15[0] = *a3;
  v15[1] = v5;
  v8 = Text.ResolvedProperties.Paragraph.markParagraphBoundary(at:in:environment:)(a1, a2, v15);
  if (v8)
  {
    if (v7 && *(v3 + 152) == 3)
    {
    }

    else
    {
      v13 = v8;
      if (v5)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v6, v15);

        v9 = v15[0];
      }

      else
      {
        v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v6);
        if (v10)
        {
          v9 = *(v10 + 72);
        }

        else
        {
          v9 = 0;
        }
      }

      v14 = v9;
      v11.value = NSParagraphStyle.textAlignment(for:)(&v14).value;

      if (v11.value != SwiftUI_TextAlignment_unknownDefault)
      {
        v12 = *(v4 + 152);
        if (v12 == 3 || v12 == v11.value)
        {
          *(v4 + 152) = v11;
        }

        else
        {
          *(v4 + 152) = 3;
        }
      }
    }
  }
}

id Text.Resolved.nsAttributes(content:in:with:properties:)(uint64_t (*a1)(void), uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v13 = *a3;
  v10 = *(v5 + *(type metadata accessor for Text.Resolved(0) + 24));
  v12 = v9;
  return Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(a1, a2, &v13, v10, &v12, a5);
}

Swift::Void __swiftcall Text.ResolvedProperties.addAttachment()()
{
  v1 = *(v0 + 32);
  if ((v1 & 2) == 0)
  {
    *(v0 + 32) = v1 | 2;
  }
}

void Text.Resolved.append(_:in:with:)(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  if ((*a3 & 4) != 0)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = static String._uncheckedFromUTF8(_:)();
    v10 = v9;
    *&v24 = v6;
    *(&v24 + 1) = v7;
    v11 = type metadata accessor for Text.Resolved(0);
    v12 = *(v3 + *(v11 + 24));
    *&v28[0] = v4;
    v13 = v3 + *(v11 + 32);
    v14 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, &v24, v12, v28, v13);
    if (v7)
    {

      ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v6);

      if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
      {
LABEL_11:
        *&v24 = v6;
        *(&v24 + 1) = v7;
        Text.Resolved.append(_:with:in:)(v8, v10, v14, &v24);

        v23 = *(v13 + 32);
        if ((v23 & 2) == 0)
        {
          *(v13 + 32) = v23 | 2;
        }

        return;
      }
    }

    else
    {
      v24 = v6;

      v16 = specialized static ShouldRedactContentKey.value(in:)(&v24);

      if (v16)
      {
        goto LABEL_11;
      }
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    *&v28[0] = v6;
    *(&v28[0] + 1) = v7;
    if (EnvironmentValues.resolvedTextProvider.getter())
    {
      v19 = a1[1];
      v24 = *a1;
      v25 = v19;
      v26 = a1[2];
      (*(v18 + 16))(v17, &v24);
    }

    if (one-time initialization token for kitAttachment != -1)
    {
      swift_once();
    }

    v20 = static NSAttributedStringKey.kitAttachment;
    *(&v25 + 1) = type metadata accessor for NSTextAttachment();
    *&v24 = v17;
    outlined init with take of Any(&v24, v28);
    v21 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v20, isUniquelyReferenced_nonNull_native);

    v14 = v27;
    goto LABEL_11;
  }
}

uint64_t Text.Resolved.append<A>(resolvable:in:with:transition:)(void *a1, uint64_t *a2, void **a3, uint64_t a4, void *a5, char **a6)
{
  v7 = v6;
  v14 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v17 = a2[1];
  v19 = *a3;
  v20 = *a4;
  v21 = *(a4 + 8) | ((*(a4 + 12) | (*(a4 + 14) << 16)) << 32);
  outlined init with copy of Text.Style(v7, v16, type metadata accessor for Text.Style);
  if (*(v16 + 39))
  {
    v22 = 1;
  }

  else
  {
    v22 = (v21 & 0xFF000000000000) == 0x2000000000000;
  }

  if (!v22)
  {
    v36 = v19;
    type metadata accessor for TextTransitionModifier();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 28) = BYTE4(v21);
    *(v23 + 24) = v21;
    *(v23 + 29) = BYTE5(v21);
    *(v23 + 30) = 1;
    *(v16 + 39) = v23;
    v19 = v36;
    outlined copy of ContentTransition.Storage(v20, v21, SBYTE5(v21));
  }

  if (v17)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v18, &v38);

    if (v38)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(v18);
    if (v24 && (v24[9] & 1) != 0)
    {
LABEL_16:
      v38 = v18;
      v39 = v17;
      v25 = type metadata accessor for Text.Resolved(0);
      v34 = *(v7 + v25[6]);
      v37 = v19;
      static ResolvableTextSegmentAttribute.buildStaticTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, v16, &v38, v34, &v37, v7 + v25[8], a5, a6);
      if (!v27)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v38 = v18;
  v39 = v17;
  v25 = type metadata accessor for Text.Resolved(0);
  v26 = *(v7 + v25[6]);
  v37 = v19;
  v27 = static ResolvableTextSegmentAttribute.buildDynamicTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, v16, &v38, v26, &v37, v7 + v25[8], a5, a6);
  if (!v27)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v27);
    *(&v36 - 4) = a5;
    *(&v36 - 3) = a6;
    *(&v36 - 2) = a1;
    specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in Text.Resolved.append<A>(resolvable:in:with:transition:));
    return outlined destroy of ParagraphStyleResolutionContext(v16, type metadata accessor for Text.Style);
  }

LABEL_12:
  v28 = v27;
  type metadata accessor for Text.Resolved(0);
  v29 = v25[5];
  v30 = *(v7 + v29);
  if (v30)
  {
    v31 = v28;
    v32 = v30;
    [v32 appendAttributedString_];
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    *(v7 + v29) = v33;
  }

  return outlined destroy of ParagraphStyleResolutionContext(v16, type metadata accessor for Text.Style);
}

uint64_t protocol witness for ResolvedTextContainer.properties.getter in conformance Text.Resolved@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a2[6] = v22;
  a2[7] = v6;
  a2[8] = v3[8];
  *(a2 + 137) = *(v3 + 137);
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v5;
  *a2 = v14;
  a2[1] = v9;
  return outlined init with copy of Text.ResolvedProperties(v17, &v16);
}

__n128 protocol witness for ResolvedTextContainer.properties.setter in conformance Text.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 32));
  v5 = v4[7];
  v14[6] = v4[6];
  v14[7] = v5;
  v15[0] = v4[8];
  *(v15 + 9) = *(v4 + 137);
  v6 = v4[3];
  v14[2] = v4[2];
  v14[3] = v6;
  v7 = v4[5];
  v14[4] = v4[4];
  v14[5] = v7;
  v8 = v4[1];
  v14[0] = *v4;
  v14[1] = v8;
  outlined destroy of Text.ResolvedProperties(v14);
  v9 = *(a1 + 112);
  v4[6] = *(a1 + 96);
  v4[7] = v9;
  v4[8] = *(a1 + 128);
  *(v4 + 137) = *(a1 + 137);
  v10 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v10;
  v11 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v11;
  result = *a1;
  v13 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v13;
  return result;
}