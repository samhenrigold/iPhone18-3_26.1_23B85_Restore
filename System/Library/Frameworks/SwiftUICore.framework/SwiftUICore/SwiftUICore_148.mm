void specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 96) & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v15[7] = v8;
    v15[8] = v9;
    v15[9] = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v5 + 136);
    v13 = *(v5 + 144);
    v12 = *(v5 + 120);
    v22[0] = v10;
    v22[1] = a2;
    v22[2] = a3;
    v23 = a4;
    v24 = HIDWORD(a4);
    v25 = a5 & 1;
    v26 = v14;
    v27 = v13;
    v28 = v12;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v22, v15, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v22);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    v15[2] = a3;
    v16 = a4;
    v17 = HIDWORD(a4);
    v18 = a5 & 1;
    v19 = v14;
    v20 = v13;
    v21 = v12;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v15, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if ((*(v6 + 112) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 104);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 120);
    v15 = *(v6 + 128);
    v16 = *(v6 + 104);
    v25[0] = v12;
    v25[1] = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v25, v17, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    specialized Array.append(_:)(v25);
    swift_endAccess();
    *(v6 + 104) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
  }

  return result;
}

void AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v30 = a3;
  v32 = a1;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - v9;
  v12 = type metadata accessor for AnimatorState.Fork(0, v7, *(v5 + 88), v11);
  v31 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v29 - v16);
  v18 = *a2;
  if ((*(v3 + *(v5 + 184)) & 1) == 0)
  {
    v19 = *(v6 + 176);
    swift_beginAccess();
    v20 = *(v3 + v19);
    if (v20 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    (*(v8 + 16))(v10, v30, v7);
    v21 = (v3 + *(*v3 + 192));
    v22 = v8;
    v23 = *(v3 + v19);
    v24 = v18;
    v29 = v18;
    v26 = *v21;
    v25 = v21[1];
    *v17 = v32;
    v17[1] = v24;
    (*(v22 + 32))(v17 + v12[10], v10, v7);
    v27 = (v17 + v12[11]);
    *v27 = v26;
    v27[1] = v25;
    *(v17 + v12[12]) = v23;
    v28 = v31;
    (*(v31 + 16))(v14, v17, v12);
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
    *(v3 + v19) = MEMORY[0x1E69E7CC0];

    (*(v28 + 8))(v17, v12);
  }
}

uint64_t specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = 0uLL;
  if (static Color.Resolved.legacyInterpolation)
  {
    v16 = 1;
    v17 = 0uLL;
  }

  else
  {
    v30[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(v29, 0.0, 0, 0.0, 0.0);
    v18.i64[0] = 0x4300000043000000;
    v18.i64[1] = 0x4300000043000000;
    v17 = vmulq_f32(v29[0], v18);
    v15 = 0uLL;
    v16 = static Color.Resolved.legacyInterpolation;
  }

  *(v6 + 32) = v14;
  *(v6 + 40) = v14;
  *(v6 + 48) = v17;
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  if ((v16 & 1) == 0)
  {
    v30[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(v29, 0.0, 0, 0.0, 0.0);
    v19.i64[0] = 0x4300000043000000;
    v19.i64[1] = 0x4300000043000000;
    v15 = vmulq_f32(v29[0], v19);
  }

  *(v6 + 96) = v14;
  *(v6 + 104) = v14;
  *(v6 + 112) = v15;
  *(v6 + 128) = 0;
  *(v6 + 136) = 1;
  *(v6 + 144) = v14;
  *(v6 + 152) = v14;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = v14;
  *(v6 + 16) = a1;
  swift_beginAccess();

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v29, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
  v20 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v20;
  *(v6 + 64) = *(a2 + 32);

  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  *(v6 + 72) = a6;
  *(v6 + 88) = a6;
  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v6 + 80) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v6 + 80) = v26;
      if (v26 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

        v23 = 0;
        goto LABEL_10;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

    goto LABEL_16;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

  v23 = 0;
  *(v7 + 80) = 0;
LABEL_10:
  LOBYTE(v24) = 1;
LABEL_16:
  *(v7 + 132) = v23;
  *(v7 + 136) = v24;
  return v7;
}

{
  v7 = v6;
  v12 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[0] = &v45;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[1] = &v46;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[2] = &v47;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[3] = &v48;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[4] = &v49;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[5] = &v50;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[6] = &v51;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[7] = &v52;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[8] = &v53;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[9] = &v54;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[10] = &v55;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[11] = &v56;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v57, v58);
  *(v6 + 32) = 0;
  v13 = v58[3];
  *(v6 + 72) = v58[2];
  *(v6 + 88) = v13;
  v14 = v58[5];
  *(v6 + 104) = v58[4];
  *(v6 + 120) = v14;
  v15 = v58[1];
  *(v6 + 40) = v58[0];
  *(v6 + 56) = v15;
  *(v6 + 152) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[0] = &v32;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[1] = &v33;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[2] = &v34;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[3] = &v35;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[4] = &v36;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[5] = &v37;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[6] = &v38;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[7] = &v39;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[8] = &v40;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[9] = &v41;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[10] = &v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[11] = &v43;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v44, v59);
  v16 = v59[3];
  *(v6 + 200) = v59[2];
  *(v6 + 216) = v16;
  v17 = v59[5];
  *(v6 + 232) = v59[4];
  *(v6 + 248) = v17;
  v18 = v59[1];
  *(v6 + 168) = v59[0];
  *(v6 + 160) = 0;
  *(v6 + 184) = v18;
  *(v6 + 264) = 0;
  *(v6 + 268) = 1;
  *(v6 + 272) = v12;
  *(v6 + 280) = v12;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = v12;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v19 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 64);
  *(v6 + 112) = v19;
  *(v6 + 128) = *(a2 + 96);
  v20 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v20;
  v21 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 32);
  *(v6 + 80) = v21;
  *(v6 + 296) = a4;
  *(v6 + 304) = a5;
  *(v6 + 136) = a6;
  *(v6 + 152) = a6;

  v22 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v23 & 1) == 0)
  {
    if (v22 <= 0.0)
    {
      *(v6 + 144) = 0;
    }

    else
    {
      v26 = log2(v22 * 240.0);
      v27 = exp2(floor(v26 + 0.01)) * 0.00416666667;
      *(v6 + 144) = v27;
      if (v27 >= 0.0166666667)
      {

        v24 = 0;
        goto LABEL_3;
      }
    }

    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v24 = v28;
    v25 = HIDWORD(v28) & 1;

    goto LABEL_9;
  }

  v24 = 0;
  *(v7 + 144) = 0;
LABEL_3:
  LOBYTE(v25) = 1;
LABEL_9:
  *(v7 + 264) = v24;
  *(v7 + 268) = v25;
  return v7;
}

uint64_t specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[0] = &v39;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[1] = &v40;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[2] = &v41;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[3] = &v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[4] = &v43;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[5] = &v44;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[6] = &v45;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[7] = &v46;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[8] = &v47;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[9] = &v48;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[10] = &v49;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[11] = &v50;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v51, (v6 + 32));
  *(v6 + 144) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[0] = &v26;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[1] = &v27;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[2] = &v28;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[3] = &v29;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[4] = &v30;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[5] = &v31;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[6] = &v32;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[7] = &v33;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[8] = &v34;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[9] = &v35;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[10] = &v36;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[11] = &v37;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v38, (v6 + 152));
  *(v6 + 248) = 0;
  *(v6 + 252) = 1;
  *(v6 + 256) = v13;
  *(v6 + 264) = v13;
  *(v6 + 272) = 0;
  *(v6 + 280) = 0;
  *(v6 + 288) = 0;
  *(v6 + 296) = v13;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v14 = a2[3];
  *(v6 + 64) = a2[2];
  *(v6 + 80) = v14;
  v15 = a2[5];
  *(v6 + 96) = a2[4];
  *(v6 + 112) = v15;
  v16 = a2[1];
  *(v6 + 32) = *a2;
  *(v6 + 48) = v16;
  *(v6 + 280) = a4;
  *(v6 + 288) = a5;
  *(v6 + 128) = a6;
  *(v6 + 144) = a6;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v6 + 136) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v6 + 136) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v7 + 136) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v7 + 248) = v19;
  *(v7 + 252) = v20;
  return v7;
}

unint64_t *AnimatorState.init(animation:interval:at:in:finishingDefinition:)(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *a3;
  v10 = *v6;
  v11 = *(*v6 + 80);
  v12 = *(v10 + 88);
  AnimationState.init()(v7 + 3);
  v13 = *(*v7 + 112);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v14 = *(*v7 + 136);
  *(v7 + v14) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v15 = v7 + *(*v7 + 152);
  *v15 = 0;
  v15[4] = 1;
  *(v7 + *(*v7 + 160)) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 168)) = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 176)) = v16;
  *(v7 + *(*v7 + 184)) = 0;
  v17 = (v7 + *(*v7 + 192));
  *v17 = 0;
  v17[1] = 0;
  v18 = *(*v7 + 200);
  type metadata accessor for AnimatorState.Fork(0, v11, v12, v19);
  *(v7 + v18) = Array.init()();
  v7[2] = a1;
  swift_beginAccess();
  v20 = *(v11 - 8);
  v21 = *(v20 + 24);

  v21(v7 + v13, a2, v11);
  swift_endAccess();
  *v17 = a5;
  v17[1] = a6;
  *(v7 + *(*v7 + 120)) = v9;
  *(v7 + v14) = v9;
  v22 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v23 & 1) == 0)
  {
    if (v22 <= 0.0)
    {
      *(v7 + *(*v7 + 128)) = 0;
    }

    else
    {
      v26 = log2(v22 * 240.0);
      v27 = exp2(floor(v26 + 0.01)) * 0.00416666667;
      *(v7 + *(*v7 + 128)) = v27;
      if (v27 >= 0.0166666667)
      {
        (*(v20 + 8))(a2, v11);

        v24 = 0;
        goto LABEL_3;
      }
    }

    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v24 = v28;
    v25 = HIDWORD(v28) & 1;

    (*(v20 + 8))(a2, v11);

    goto LABEL_9;
  }

  (*(v20 + 8))(a2, v11);

  v24 = 0;
  *(v7 + *(*v7 + 128)) = 0;
LABEL_3:
  LOBYTE(v25) = 1;
LABEL_9:
  *v15 = v24;
  v15[4] = v25;
  return v7;
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, void *a6, char a7, double a8)
{
  v15 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *(v16 + 16);

    v50 = a3;
    v51 = a4 & 1;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v50, a6, a7 & 1);
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v19 = v50;
    v20 = v51;
    v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    v24 = &v21[3 * v23];
    v24[4] = v19;
    *(v24 + 40) = v20;
    v24[6] = v18;
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
    v52 = v25;
    v50 = v21;
    specialized Dictionary.subscript.setter(&v50, v25);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
    }

    *(v17 + 2) = v27 + 1;
    v28 = &v17[16 * v27];
    *(v28 + 4) = a5;
    *(v28 + 5) = a8;
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *a1 = v29;
  }

  else
  {
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v30 = *a2;
    v31 = a4 & 1;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v53, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    v48 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[3 * v34];
    v35[4] = a3;
    *(v35 + 40) = v31;
    v35[6] = v30;
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
    v37 = v36;
    v52 = v36;
    v50 = v32;
    specialized Dictionary.subscript.setter(&v50, v36);
    v50 = a3;
    v51 = v31;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v50, a6, a7 & 1);
    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = v50;
    v40 = v51;
    v41 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v53, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
    }

    v41[2] = v43 + 1;
    v44 = &v41[3 * v43];
    v44[4] = v39;
    *(v44 + 40) = v40;
    v44[6] = v38;
    v52 = v37;
    v50 = v41;
    specialized Dictionary.subscript.setter(&v50, v37);
    v45 = v53;

    *a2 = v45;

    v46 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a5, a8);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *v48 = v47;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = *(v17 + 16);

    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v20 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v21 = a4 + a7;
    v22 = a5 + a8;
    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v20);
    }

    v20[2] = v24 + 1;
    v25 = &v20[3 * v24];
    v25[4] = v21;
    v25[5] = v22;
    *(v25 + 6) = v19;
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>(0);
    v49 = v26;
    v48[0] = v20;
    specialized Dictionary.subscript.setter(v48, v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    }

    v28 = *(v18 + 2);
    v27 = *(v18 + 3);
    if (v28 >= v27 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v18);
    }

    *(v18 + 2) = v28 + 1;
    v29 = &v18[16 * v28];
    *(v29 + 4) = a3;
    *(v29 + 5) = a6;
    v30 = swift_allocObject();
    *(v30 + 16) = v18;
    *a1 = v30;
  }

  else
  {
    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v31 = *a2;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[3 * v34];
    v35[4] = a4;
    v35[5] = a5;
    *(v35 + 6) = v31;
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>(0);
    v37 = v36;
    v49 = v36;
    v48[0] = v32;
    specialized Dictionary.subscript.setter(v48, v36);
    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v40 = a4 + a7;
    v41 = a5 + a8;
    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
    }

    v39[2] = v43 + 1;
    v44 = &v39[3 * v43];
    v44[4] = v40;
    v44[5] = v41;
    *(v44 + 6) = v38;
    v49 = v37;
    v48[0] = v39;
    specialized Dictionary.subscript.setter(v48, v37);
    v45 = v50;

    *a2 = v45;

    v46 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v16, a3, a6);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *a1 = v47;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(*a2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = a4 + a6;
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = v17;
    *(v20 + 5) = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
    v43 = v21;
    v42[0] = v16;
    specialized Dictionary.subscript.setter(v42, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a3;
    *(v24 + 5) = a5;
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *a1 = v25;
  }

  else
  {
    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = &v27[2 * v29];
    v30[4] = a4;
    *(v30 + 5) = v26;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
    v32 = v31;
    v43 = v31;
    v42[0] = v27;
    specialized Dictionary.subscript.setter(v42, v31);
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
    }

    v35 = a4 + a6;
    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v35;
    *(v38 + 5) = v33;
    v43 = v32;
    v42[0] = v34;
    specialized Dictionary.subscript.setter(v42, v32);
    v39 = v44;

    *a2 = v39;

    v40 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a3, a5);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *a1 = v41;
  }
}

{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = a4 + a6;
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = v17;
    *(v20 + 5) = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState);
    v44 = v21;
    v43[0] = v16;
    specialized Dictionary.subscript.setter(v43, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a3;
    *(v24 + 5) = a5;
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *a1 = v25;
  }

  else
  {
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v45, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = &v27[2 * v29];
    v30[4] = a4;
    *(v30 + 5) = v26;
    v31 = MEMORY[0x1E69E7DE0];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState);
    v33 = v32;
    v44 = v32;
    v43[0] = v27;
    specialized Dictionary.subscript.setter(v43, v32);
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v45, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
    }

    v36 = a4 + a6;
    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[2 * v38];
    v39[4] = v36;
    *(v39 + 5) = v34;
    v44 = v33;
    v43[0] = v35;
    specialized Dictionary.subscript.setter(v43, v33);
    v40 = v45;

    *a2 = v40;

    v41 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a3, a5);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *a1 = v42;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    outlined init with copy of _AnyAnimatableData(a3, &v48);
    v15 = v48;
    if (v48 == *a5)
    {
      (*(v48 + 96))(&v48 + 8, a5 + 1);
    }

    else if (v15 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v48);
      outlined init with copy of _AnyAnimatableData(a5, &v48);
    }

    *(&v50 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    v29 = &v26[6 * v28];
    v30 = v48;
    v31 = v50;
    v29[3] = v49;
    v29[4] = v31;
    v29[2] = v30;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState);
    v47 = v32;
    v46[0] = v26;
    specialized Dictionary.subscript.setter(v46, v32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v34 = *(v14 + 2);
    v33 = *(v14 + 3);
    if (v34 >= v33 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v14);
    }

    *(v14 + 2) = v34 + 1;
    v35 = &v14[16 * v34];
    *(v35 + 4) = a4;
    *(v35 + 5) = a6;
    v36 = swift_allocObject();
    *(v36 + 16) = v14;
    *a1 = v36;
  }

  else
  {
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v51 = v16;
    outlined init with copy of _AnyAnimatableData(a3, &v48);
    *(&v50 + 1) = *a2;

    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v16, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[6 * v19];
    v21 = v48;
    v22 = v50;
    v20[3] = v49;
    v20[4] = v22;
    v20[2] = v21;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState);
    v24 = v23;
    v47 = v23;
    v46[0] = v17;
    specialized Dictionary.subscript.setter(v46, v23);
    outlined init with copy of _AnyAnimatableData(a3, &v48);
    v25 = v48;
    if (v48 == *a5)
    {
      (*(v48 + 96))(&v48 + 8, a5 + 1);
    }

    else if (v25 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v48);
      outlined init with copy of _AnyAnimatableData(a5, &v48);
    }

    *(&v50 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v51, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[6 * v39];
    v41 = v48;
    v42 = v50;
    v40[3] = v49;
    v40[4] = v42;
    v40[2] = v41;
    v47 = v24;
    v46[0] = v37;
    specialized Dictionary.subscript.setter(v46, v24);
    v43 = v51;

    *a2 = v43;

    v44 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *a1 = v45;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v106 = a1;
  v19 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v104 = v20;
  v21 = swift_dynamicCastClass();
  v105 = a3;
  v103 = a2;
  if (v21)
  {
    v102 = *(v21 + 16);

    v118 = *&a4;
    v113 = a5;
    v114 = a6;
    v115 = a8;
    v110 = a9;
    v111 = a10;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v22 = MEMORY[0x1E69E7DE0];
    v23 = *(MEMORY[0x1E69E7DE0] - 8);
    v24 = v23[8];
    v26 = MEMORY[0x1EEE9AC00](v25);
    v27 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v23[2];
    v29 = v28(v27, &v118, v22, v26);
    v30 = MEMORY[0x1EEE9AC00](v29);
    v28(v27, &v115, v22, v30);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v31 = v23[1];
    v31(v27, v22);
    v31(v27, v22);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v33 = v32;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v100 = v34;
    v101 = v99;
    v35 = *(v33 - 8);
    v36 = v35[8];
    v37 = MEMORY[0x1EEE9AC00](v34);
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
    v39 = v35[2];
    v40 = v39(v99 - v38, &v113, v33, v37);
    v41 = MEMORY[0x1EEE9AC00](v40);
    v39(v99 - v38, &v110, v33, v41);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v42 = v35[1];
    v42(v99 - v38, v33);
    v42(v99 - v38, v33);
    v43 = v108[0];
    v44 = v107[0];
    v45 = v107[1];
    v42(v107, v33);
    v46 = v103;
    v31(v108, MEMORY[0x1E69E7DE0]);
    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(*v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
    }

    v50 = v48[2];
    v49 = v48[3];
    v51 = v105;
    if (v50 >= v49 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
    }

    v48[2] = v50 + 1;
    v52 = &v48[4 * v50];
    v52[4] = v43;
    v52[5] = v44;
    v52[6] = v45;
    v52[7] = v47;
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
    v117 = v53;
    v116[0] = v48;
    specialized Dictionary.subscript.setter(v116, v53);

    v54 = v102;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[16 * v56];
    *(v57 + 4) = v51;
    *(v57 + 5) = a7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    *v106 = v58;
  }

  else
  {
    v118 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v59 = *a2;

    v60 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(v118);
    v101 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
    }

    v62 = v60[2];
    v61 = v60[3];
    if (v62 >= v61 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v60);
    }

    v60[2] = v62 + 1;
    v63 = &v60[4 * v62];
    v63[4] = a4;
    v63[5] = a5;
    v63[6] = a6;
    *(v63 + 7) = v59;
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
    v117 = v64;
    v116[0] = v60;
    v102 = v64;
    specialized Dictionary.subscript.setter(v116, v64);
    v111 = a6;
    v112 = a4;
    v109 = a8;
    v110 = a5;
    *v108 = a9;
    *&v108[1] = a10;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v65 = MEMORY[0x1E69E7DE0];
    v66 = *(MEMORY[0x1E69E7DE0] - 8);
    v67 = v66[8];
    v69 = MEMORY[0x1EEE9AC00](v68);
    v70 = v99 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v66[2];
    v72 = v71(v70, &v112, v65, v69);
    v73 = MEMORY[0x1EEE9AC00](v72);
    v71(v70, &v109, v65, v73);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v74 = v66[1];
    v74(v70, v65);
    v74(v70, v65);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v76 = v75;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v99[1] = v77;
    v100 = v99;
    v78 = *(v76 - 8);
    v79 = v78[8];
    v80 = MEMORY[0x1EEE9AC00](v77);
    v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
    v82 = v78[2];
    v83 = v82(v99 - v81, &v110, v76, v80);
    v84 = MEMORY[0x1EEE9AC00](v83);
    v82(v99 - v81, v108, v76, v84);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v85 = v78[1];
    v85(v99 - v81, v76);
    v85(v99 - v81, v76);
    v87 = v114;
    v86 = v115;
    v88 = v113;
    v85(&v113, v76);
    v74(&v115, MEMORY[0x1E69E7DE0]);
    v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v90 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(v118);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
    }

    v91 = v105;
    v92 = v103;
    v94 = v90[2];
    v93 = v90[3];
    if (v94 >= v93 >> 1)
    {
      v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v90);
    }

    v90[2] = v94 + 1;
    v95 = &v90[4 * v94];
    v95[4] = v86;
    v95[5] = v88;
    v95[6] = v87;
    *(v95 + 7) = v89;
    v107[3] = v102;
    v107[0] = v90;
    specialized Dictionary.subscript.setter(v107, v102);
    v96 = v118;

    *v92 = v96;

    v97 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v101, v91, a7);
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *v106 = v98;
  }
}

{
  v20 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v21 + 16);

    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v24 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    }

    v25 = a4 + a8;
    v26 = a5 + a9;
    v27 = a6 + a10;
    v29 = v24[2];
    v28 = v24[3];
    if (v29 >= v28 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v24);
    }

    v24[2] = v29 + 1;
    v30 = &v24[4 * v29];
    v30[4] = v25;
    v30[5] = v26;
    v30[6] = v27;
    *(v30 + 7) = v23;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>(0);
    v55 = v31;
    v54[0] = v24;
    specialized Dictionary.subscript.setter(v54, v31);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    v34 = &v22[16 * v33];
    *(v34 + 4) = a3;
    *(v34 + 5) = a7;
    v35 = swift_allocObject();
    *(v35 + 16) = v22;
    *a1 = v35;
  }

  else
  {
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v36 = *a2;

    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v56, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[4 * v39];
    v40[4] = a4;
    v40[5] = a5;
    v40[6] = a6;
    *(v40 + 7) = v36;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>(0);
    v42 = v41;
    v55 = v41;
    v54[0] = v37;
    specialized Dictionary.subscript.setter(v54, v41);
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v56, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
    }

    v45 = a4 + a8;
    v46 = a5 + a9;
    v47 = a6 + a10;
    v49 = v44[2];
    v48 = v44[3];
    if (v49 >= v48 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44);
    }

    v44[2] = v49 + 1;
    v50 = &v44[4 * v49];
    v50[4] = v45;
    v50[5] = v46;
    v50[6] = v47;
    *(v50 + 7) = v43;
    v55 = v42;
    v54[0] = v44;
    specialized Dictionary.subscript.setter(v54, v42);
    v51 = v56;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v20, a3, a7);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *a1 = v53;
  }
}

{
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = *(v24 + 16);

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = a4 + a8;
        v29 = a5 + a9;
        v30 = a6 + a10;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[4 * v32];
        v33[4] = v28;
        v33[5] = v29;
        v33[6] = v30;
        *(v33 + 7) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
        v60 = v34;
        v59[0] = v27;
        specialized Dictionary.subscript.setter(v59, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v25);
        }

        *(v25 + 2) = v36 + 1;
        v37 = &v25[16 * v36];
        *(v37 + 4) = a3;
        *(v37 + 5) = a7;
        v38 = swift_allocObject();
        *(v38 + 16) = v25;
        *a1 = v38;
      }

      else
      {
        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;

        v40 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = &v40[4 * v42];
        v43[4] = a4;
        v43[5] = a5;
        v43[6] = a6;
        *(v43 + 7) = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
        v45 = v44;
        v60 = v44;
        v59[0] = v40;
        specialized Dictionary.subscript.setter(v59, v44);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = a4 + a8;
        v49 = a5 + a9;
        v50 = a6 + a10;
        v52 = v47[2];
        v51 = v47[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v47);
          v53 = v52 + 1;
          v47 = v58;
        }

        v47[2] = v53;
        v54 = &v47[4 * v52];
        v54[4] = v48;
        v54[5] = v49;
        v54[6] = v50;
        *(v54 + 7) = v46;
        v60 = v45;
        v59[0] = v47;
        specialized Dictionary.subscript.setter(v59, v45);
        v55 = v61;

        *a2 = v55;

        v56 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a3, a7);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *a1 = v57;
      }
    }
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = *(v24 + 16);

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = a4 + a8;
        v29 = a5 + a9;
        v30 = a6 + a10;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[4 * v32];
        v33[4] = v28;
        v33[5] = v29;
        v33[6] = v30;
        *(v33 + 7) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>(0);
        v60 = v34;
        v59[0] = v27;
        specialized Dictionary.subscript.setter(v59, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v25);
        }

        *(v25 + 2) = v36 + 1;
        v37 = &v25[16 * v36];
        *(v37 + 4) = a3;
        *(v37 + 5) = a7;
        v38 = swift_allocObject();
        *(v38 + 16) = v25;
        *a1 = v38;
      }

      else
      {
        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;

        v40 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = &v40[4 * v42];
        v43[4] = a4;
        v43[5] = a5;
        v43[6] = a6;
        *(v43 + 7) = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>(0);
        v45 = v44;
        v60 = v44;
        v59[0] = v40;
        specialized Dictionary.subscript.setter(v59, v44);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = a4 + a8;
        v49 = a5 + a9;
        v50 = a6 + a10;
        v52 = v47[2];
        v51 = v47[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v47);
          v53 = v52 + 1;
          v47 = v58;
        }

        v47[2] = v53;
        v54 = &v47[4 * v52];
        v54[4] = v48;
        v54[5] = v49;
        v54[6] = v50;
        *(v54 + 7) = v46;
        v60 = v45;
        v59[0] = v47;
        specialized Dictionary.subscript.setter(v59, v45);
        v55 = v61;

        *a2 = v55;

        v56 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a3, a7);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *a1 = v57;
      }
    }
  }
}

{
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = v24;
      v26 = swift_dynamicCastClass();
      v109 = a1;
      v108 = a3;
      v107 = v25;
      v106 = a2;
      if (v26)
      {
        v104 = *(v26 + 16);

        v117 = a5;
        v118 = a4;
        v115 = a8;
        v116 = a6;
        v113 = a10;
        v114 = a9;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v28 = v27;
        v103 = &v101;
        v29 = MEMORY[0x1E69E7DE0];
        v30 = *(MEMORY[0x1E69E7DE0] - 8);
        v31 = v30[8];
        v32 = MEMORY[0x1EEE9AC00](v27);
        v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
        v34 = v30[2];
        v35 = v34(&v101 - v33, &v118, v29, v32);
        v102 = &v101;
        v36 = MEMORY[0x1EEE9AC00](v35);
        v34(&v101 - v33, &v115, v29, v36);
        v105 = *(v28 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v37 = v30[1];
        v37(&v101 - v33, v29);
        v38 = (v37)(&v101 - v33, v29);
        v103 = &v101;
        v39 = MEMORY[0x1EEE9AC00](v38);
        v40 = v34(&v101 - v33, &v117, v29, v39);
        v102 = &v101;
        v41 = MEMORY[0x1EEE9AC00](v40);
        v34(&v101 - v33, &v114, v29, v41);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v37(&v101 - v33, v29);
        v42 = (v37)(&v101 - v33, v29);
        v103 = &v101;
        v43 = MEMORY[0x1EEE9AC00](v42);
        v44 = v34(&v101 - v33, &v116, v29, v43);
        v45 = MEMORY[0x1EEE9AC00](v44);
        v34(&v101 - v33, &v113, v29, v45);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v37(&v101 - v33, v29);
        v37(&v101 - v33, v29);
        v46 = v106;
        v47 = v110[0];
        v48 = v122;
        v49 = v119;
        v37(&v119, v29);
        v37(&v122, v29);
        v37(v110, v29);
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v51 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v46, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
        }

        v52 = v108;
        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
        }

        v51[2] = v54 + 1;
        v55 = &v51[4 * v54];
        v55[4] = v47;
        v55[5] = v48;
        v55[6] = v49;
        v55[7] = v50;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
        v121 = v56;
        v120[0] = v51;
        specialized Dictionary.subscript.setter(v120, v56);

        v57 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
        }

        v58 = v109;
        v60 = *(v57 + 2);
        v59 = *(v57 + 3);
        if (v60 >= v59 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
        }

        *(v57 + 2) = v60 + 1;
        v61 = &v57[16 * v60];
        *(v61 + 4) = v52;
        *(v61 + 5) = a7;
        v62 = swift_allocObject();
        *(v62 + 16) = v57;
        *v58 = v62;
      }

      else
      {
        v122 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v63 = *a2;

        v64 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v122, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        v105 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
        }

        v66 = v64[2];
        v65 = v64[3];
        if (v66 >= v65 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
        }

        v64[2] = v66 + 1;
        v67 = &v64[4 * v66];
        v67[4] = a4;
        v67[5] = a5;
        v67[6] = a6;
        *(v67 + 7) = v63;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
        v121 = v68;
        v120[0] = v64;
        v104 = v68;
        specialized Dictionary.subscript.setter(v120, v68);
        v115 = a5;
        v116 = a4;
        v113 = a8;
        v114 = a6;
        v112 = a9;
        v111 = a10;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v103 = &v101;
        v69 = MEMORY[0x1E69E7DE0];
        v70 = *(MEMORY[0x1E69E7DE0] - 8);
        v71 = v70[8];
        v73 = MEMORY[0x1EEE9AC00](v72);
        v74 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
        v75 = v70[2];
        v76 = v75(&v101 - v74, &v116, v69, v73);
        v102 = &v101;
        v77 = MEMORY[0x1EEE9AC00](v76);
        v75(&v101 - v74, &v113, v69, v77);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v78 = v70[1];
        v78(&v101 - v74, v69);
        v79 = (v78)(&v101 - v74, v69);
        v103 = &v101;
        v80 = MEMORY[0x1EEE9AC00](v79);
        v81 = v75(&v101 - v74, &v115, v69, v80);
        v102 = &v101;
        v82 = MEMORY[0x1EEE9AC00](v81);
        v75(&v101 - v74, &v112, v69, v82);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v78(&v101 - v74, v69);
        v83 = (v78)(&v101 - v74, v69);
        v103 = &v101;
        v84 = MEMORY[0x1EEE9AC00](v83);
        v85 = v75(&v101 - v74, &v114, v69, v84);
        v86 = MEMORY[0x1EEE9AC00](v85);
        v75(&v101 - v74, &v111, v69, v86);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v78(&v101 - v74, v69);
        v78(&v101 - v74, v69);
        v88 = v118;
        v87 = v119;
        v89 = v117;
        v78(&v117, v69);
        v78(&v118, v69);
        v78(&v119, v69);
        v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v91 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v122, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
        }

        v92 = v109;
        v93 = v108;
        v94 = v106;
        v96 = v91[2];
        v95 = v91[3];
        if (v96 >= v95 >> 1)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v91);
        }

        v91[2] = v96 + 1;
        v97 = &v91[4 * v96];
        *(v97 + 4) = v87;
        v97[5] = v88;
        v97[6] = v89;
        *(v97 + 7) = v90;
        v110[3] = v104;
        v110[0] = v91;
        specialized Dictionary.subscript.setter(v110, v104);
        v98 = v122;

        *v94 = v98;

        v99 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v105, v93, a7);
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        *v92 = v100;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, unint64_t a6, char a7, double a8, double a9, double a10)
{
  v19 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = *(v20 + 16);

    v56 = a3;
    v57 = a4 & 1;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v56, a6, a7 & 1);
    v22 = v56;
    v23 = v57;
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v25 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
    }

    v26 = a8 + a10;
    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[4 * v28];
    v29[4] = v22;
    *(v29 + 40) = v23;
    *(v29 + 6) = v26;
    v29[7] = v24;
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
    v58 = v30;
    v56 = v25;
    specialized Dictionary.subscript.setter(&v56, v30);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v32 = *(v21 + 2);
    v31 = *(v21 + 3);
    if (v32 >= v31 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v21);
    }

    *(v21 + 2) = v32 + 1;
    v33 = &v21[16 * v32];
    *(v33 + 4) = a5;
    *(v33 + 5) = a9;
    v34 = swift_allocObject();
    *(v34 + 16) = v21;
    *a1 = v34;
  }

  else
  {
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v35 = *a2;
    v36 = a4 & 1;

    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    v54 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[4 * v39];
    v40[4] = a3;
    *(v40 + 40) = v36;
    *(v40 + 6) = a8;
    v40[7] = v35;
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
    v42 = v41;
    v58 = v41;
    v56 = v37;
    specialized Dictionary.subscript.setter(&v56, v41);
    v56 = a3;
    v57 = v36;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v56, a6, a7 & 1);
    v43 = v56;
    v44 = v57;
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v46 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
    }

    v47 = a8 + a10;
    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
    }

    v46[2] = v49 + 1;
    v50 = &v46[4 * v49];
    v50[4] = v43;
    *(v50 + 40) = v44;
    *(v50 + 6) = v47;
    v50[7] = v45;
    v58 = v42;
    v56 = v46;
    specialized Dictionary.subscript.setter(&v56, v42);
    v51 = v59;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v19, a5, a9);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *v54 = v53;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, float64x2_t *a3, uint64_t a4, float64x2_t *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v73 = a3[1];
    v77 = *a3;
    v65 = a3[2];
    v69 = *a5;
    v61 = a3[3];
    v63 = a5[1];
    v57 = a5[3];
    v59 = a5[2];
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = vaddq_f64(v73, v63);
    v18 = vaddq_f64(v77, v69);
    v19 = vaddq_f64(v61, v57);
    v20 = vaddq_f64(v65, v59);
    v22 = v16[2];
    v21 = v16[3];
    if (v22 >= v21 >> 1)
    {
      v75 = v17;
      v79 = v18;
      v67 = v19;
      v71 = v20;
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
      v19 = v67;
      v20 = v71;
      v17 = v75;
      v18 = v79;
      v16 = v54;
    }

    v16[2] = v22 + 1;
    v23 = &v16[9 * v22];
    v23[2] = v18;
    v23[3] = v17;
    v23[4] = v20;
    v23[5] = v19;
    *&v23[6].f64[0] = v15;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
    *&v85.f64[1] = v24;
    *&v84.f64[0] = v16;
    specialized Dictionary.subscript.setter(&v84, v24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    if (v26 >= v25 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v14);
    }

    *(v14 + 2) = v26 + 1;
    v27 = &v14[16 * v26];
    *(v27 + 4) = a4;
    *(v27 + 5) = a6;
    v28 = swift_allocObject();
    *(v28 + 16) = v14;
    *a1 = v28;
  }

  else
  {
    v78 = a1;
    v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v29 = *a2;
    v30 = a3[1];
    v84 = *a3;
    v85 = v30;
    v31 = a3[3];
    v86 = a3[2];
    v87 = v31;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v83, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[9 * v34];
    v36 = v84;
    v37 = v85;
    v38 = v87;
    v35[4] = v86;
    v35[5] = v38;
    v35[2] = v36;
    v35[3] = v37;
    *&v35[6].f64[0] = v29;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
    v40 = v39;
    v82 = v39;
    v81[0] = v32;
    specialized Dictionary.subscript.setter(v81, v39);
    v70 = a3[1];
    v74 = *a3;
    v64 = a3[2];
    v66 = *a5;
    v60 = a3[3];
    v62 = a5[1];
    v56 = a5[3];
    v58 = a5[2];
    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v42 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v83, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
    }

    v43 = v78;
    v44 = vaddq_f64(v70, v62);
    v45 = vaddq_f64(v74, v66);
    v46 = vaddq_f64(v60, v56);
    v47 = vaddq_f64(v64, v58);
    v49 = v42[2];
    v48 = v42[3];
    if (v49 >= v48 >> 1)
    {
      v76 = v44;
      v80 = v45;
      v68 = v46;
      v72 = v47;
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
      v46 = v68;
      v47 = v72;
      v44 = v76;
      v45 = v80;
      v42 = v55;
    }

    v42[2] = v49 + 1;
    v50 = &v42[9 * v49];
    v50[2] = v45;
    v50[3] = v44;
    v50[4] = v47;
    v50[5] = v46;
    *&v50[6].f64[0] = v41;
    v82 = v40;
    v81[0] = v42;
    specialized Dictionary.subscript.setter(v81, v40);
    v51 = v83;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *v43 = v53;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v50 = *a3;
    v52 = *a5;
    if (a3[1].f32[0] > a5[1].f32[0])
    {
      v15 = a3[1].i32[0];
    }

    else
    {
      v15 = a5[1].i32[0];
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v18 = vaddq_f32(v52, v50);
    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v53 = v18;
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
      v18 = v53;
      v17 = v47;
    }

    v17[2] = v20 + 1;
    v21 = &v17[4 * v20];
    v21[2] = v18;
    v21[3].i32[0] = v15;
    v21[3].i64[1] = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState);
    v56 = v22;
    v55[0] = v17;
    specialized Dictionary.subscript.setter(v55, v22);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[16 * v24];
    *(v25 + 4) = a4;
    *(v25 + 5) = a6;
    v26 = swift_allocObject();
    *(v26 + 16) = v14;
    *a1 = v26;
  }

  else
  {
    v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v27 = *a2;
    v28 = a3->i64[0];
    v29 = a3->i64[1];
    v30 = a3[1].i32[0];

    v31 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v57, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    v31[2] = v33 + 1;
    v34 = &v31[4 * v33];
    v34[4] = v28;
    v34[5] = v29;
    *(v34 + 12) = v30;
    v34[7] = v27;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState);
    v36 = v35;
    v56 = v35;
    v55[0] = v31;
    specialized Dictionary.subscript.setter(v55, v35);
    v51 = *a5;
    v49 = *a3;
    if (a3[1].f32[0] > a5[1].f32[0])
    {
      v37 = a3[1].i32[0];
    }

    else
    {
      v37 = a5[1].i32[0];
    }

    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v57, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v40 = vaddq_f32(v51, v49);
    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v54 = v40;
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
      v40 = v54;
      v39 = v48;
    }

    v39[2] = v42 + 1;
    v43 = &v39[4 * v42];
    v43[2] = v40;
    v43[3].i32[0] = v37;
    v43[3].i64[1] = v38;
    v56 = v36;
    v55[0] = v39;
    specialized Dictionary.subscript.setter(v55, v36);
    v44 = v57;

    *a2 = v44;

    v45 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *a1 = v46;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4, char *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v44[0] = a3;
    v46 = a5;

    specialized static ShaderVectorData.+= infix(_:_:)(v44, &v46);
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = v44[0];
    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState);
    v45 = v21;
    v44[0] = v17;
    specialized Dictionary.subscript.setter(v44, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a4;
    *(v24 + 5) = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *a1 = v25;
  }

  else
  {
    v42 = a4;
    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v46, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[16 * v29];
    *(v30 + 4) = a3;
    *(v30 + 5) = v26;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState);
    v32 = v31;
    v45 = v31;
    v44[0] = v27;
    specialized Dictionary.subscript.setter(v44, v31);
    v43 = a5;
    v44[0] = a3;

    specialized static ShaderVectorData.+= infix(_:_:)(v44, &v43);
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = v44[0];
    v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v46, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[16 * v37];
    *(v38 + 4) = v34;
    *(v38 + 5) = v33;
    v45 = v32;
    v44[0] = v35;
    specialized Dictionary.subscript.setter(v44, v32);
    v39 = v46;

    *a2 = v39;

    v40 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, v42, a6);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *a1 = v41;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  if (v22 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a8, a9);
  }

  else
  {
    v23 = v22;
    v70 = a8;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v23 == v24)
    {

      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }

    else
    {
      v25 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = *(v26 + 16);

        v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v29 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v30 = a4 + a9;
        v31 = a5 + a10;
        v32 = v29[2];
        v33 = v29[3];
        v34 = v32 + 1;
        if (v32 >= v33 >> 1)
        {
          v61 = v29;
          v62 = v29[2];
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v61);
          v32 = v62;
          v29 = v63;
        }

        v29[2] = v34;
        v35 = &v29[5 * v32];
        v35[4] = v30;
        v35[5] = v31;
        v35[6] = a6 + a11;
        v35[7] = a7 + a12;
        *(v35 + 8) = v28;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
        v74 = v36;
        v73[0] = v29;
        specialized Dictionary.subscript.setter(v73, v36);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v38 = *(v27 + 2);
        v37 = *(v27 + 3);
        if (v38 >= v37 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v27);
        }

        *(v27 + 2) = v38 + 1;
        v39 = &v27[16 * v38];
        *(v39 + 4) = a3;
        *(v39 + 5) = a8;
        v40 = swift_allocObject();
        *(v40 + 16) = v27;
        *a1 = v40;
      }

      else
      {
        v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v41 = *a2;

        v42 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v75, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v43 = v42[2];
        v44 = v42[3];
        v45 = v43 + 1;
        if (v43 >= v44 >> 1)
        {
          v64 = v42;
          v65 = v42[2];
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1, v64);
          v43 = v65;
          v42 = v66;
        }

        v42[2] = v45;
        v46 = &v42[5 * v43];
        v46[4] = a4;
        v46[5] = a5;
        v46[6] = a6;
        v46[7] = a7;
        *(v46 + 8) = v41;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
        v48 = v47;
        v74 = v47;
        v73[0] = v42;
        specialized Dictionary.subscript.setter(v73, v47);
        v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v50 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v75, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        }

        v51 = a4 + a9;
        v52 = a5 + a10;
        v53 = a6 + a11;
        v54 = v50[2];
        v55 = v50[3];
        v56 = v54 + 1;
        if (v54 >= v55 >> 1)
        {
          v72 = v54 + 1;
          v67 = v50;
          v68 = v50[2];
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v54 + 1, 1, v67);
          v54 = v68;
          v56 = v72;
          v50 = v69;
        }

        v50[2] = v56;
        v57 = &v50[5 * v54];
        v57[4] = v51;
        v57[5] = v52;
        v57[6] = v53;
        v57[7] = a7 + a12;
        *(v57 + 8) = v49;
        v74 = v48;
        v73[0] = v50;
        specialized Dictionary.subscript.setter(v73, v48);
        v58 = v75;

        *a2 = v58;

        v59 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v25, a3, v70);
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        *a1 = v60;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *a5;
  v12 = *(a5 + 8);
  v15 = *(a5 + 16);
  v14 = *(a5 + 20);
  v16 = *(a5 + 28);
  v82 = *(a5 + 24);
  v17 = *a3;
  v18 = *(a3 + 1);
  v19 = *(a3 + 4);
  v20 = *(a3 + 5);
  v22 = *(a3 + 6);
  v21 = *(a3 + 7);
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>(0);
  if (v23 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v17, a6, *&v13);
  }

  else
  {
    v24 = v23;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v24 == v25)
    {
      *&v88 = __PAIR64__(LODWORD(v14), LODWORD(v15));
      v85[0] = __PAIR64__(LODWORD(v16), LODWORD(v82));
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v17, v18, COERCE_DOUBLE(__PAIR64__(LODWORD(v20), LODWORD(v19))), COERCE_DOUBLE(__PAIR64__(LODWORD(v21), LODWORD(v22))), a6, *&v13, *&v12, COERCE_DOUBLE(__PAIR64__(LODWORD(v14), LODWORD(v15))), COERCE_DOUBLE(__PAIR64__(LODWORD(v16), LODWORD(v82))));
    }

    else
    {
      v81 = a1;
      v26 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v79 = v16;
        v80 = a6;
        v28 = *(v27 + 16);

        *v85 = v17;
        v91 = v17;
        outlined init with copy of AnimatableArray<Float>(v85, &v88);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(&v91, v13);
        v29 = *(a3 + 8);
        v30 = *(a5 + 32);
        *v92 = v18;
        v87 = v18;
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v92, &v88, type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v87, v12);
        if (v29 > v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v78 = v31;
        v32 = *&v87;
        v33 = v91;
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        }

        v36 = v15 + v19;
        v37 = v14 + v20;
        v39 = v35[2];
        v38 = v35[3];
        if (v39 >= v38 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v35);
        }

        v35[2] = v39 + 1;
        v40 = &v35[6 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v32;
        v40[12] = v36;
        v40[13] = v37;
        v40[14] = v82 + v22;
        v40[15] = v79 + v21;
        v40[16] = v78;
        *(v40 + 9) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
        *(&v89 + 1) = v41;
        *&v88 = v35;
        specialized Dictionary.subscript.setter(&v88, v41);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v43 = *(v28 + 2);
        v42 = *(v28 + 3);
        if (v43 >= v42 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v28);
        }

        *(v28 + 2) = v43 + 1;
        v44 = &v28[16 * v43];
        *(v44 + 4) = a4;
        *(v44 + 5) = v80;
        v45 = swift_allocObject();
        *(v45 + 16) = v28;
        *v81 = v45;
      }

      else
      {
        *&v46 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]));
        v87 = *&v46;
        v47 = *a2;
        v48 = a3[1];
        v88 = *a3;
        v89 = v48;
        LODWORD(v90) = *(a3 + 8);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v85, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

        v49 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v46, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v51 = v49[2];
        v50 = v49[3];
        v52 = a6;
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v53 = &v49[6 * v51];
        v54 = v89;
        v55 = v90;
        *(v53 + 2) = v88;
        *(v53 + 3) = v54;
        v53[8] = v55;
        v53[9] = v47;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
        v57 = v56;
        v86 = v56;
        v85[0] = v49;
        specialized Dictionary.subscript.setter(v85, v56);
        v92[0] = *a3;
        v58 = *a5;
        v84 = v92[0];
        outlined init with copy of AnimatableArray<Float>(v92, v85);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(&v84, v58);
        v59 = *(a3 + 8);
        v60 = *(a5 + 8);
        v61 = a3[1];
        v62 = *(a3 + 24);
        v63 = *(a5 + 16);
        v64 = *(a5 + 24);
        v65 = *(a5 + 32);
        v91 = *(a3 + 1);
        v83 = v91;
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v91, v85, type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v83, v60);
        if (v59 <= v65)
        {
          v59 = v65;
        }

        v67 = *&v83;
        v66 = v84;
        v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v69 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*&v87, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
        }

        v70 = vadd_f32(v61, v63);
        v71 = vadd_f32(v62, v64);
        v73 = v69[2];
        v72 = v69[3];
        if (v73 >= v72 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v69);
        }

        v69[2] = v73 + 1;
        v74 = &v69[6 * v73];
        v74[4] = v66;
        v74[5] = v67;
        v74[6] = v70;
        v74[7] = v71;
        v74[8].f32[0] = v59;
        v74[9] = v68;
        v86 = v57;
        v85[0] = v69;
        specialized Dictionary.subscript.setter(v85, v57);
        v75 = *&v87;

        *a2 = v75;

        v76 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v26, a4, v52);
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *v81 = v77;
      }
    }
  }
}

{
  v13 = *a5;
  v12 = *(a5 + 4);
  v14 = *(a5 + 8);
  v70 = *(a5 + 12);
  v75 = *(a5 + 16);
  v73 = *(a5 + 24);
  v16 = *a3;
  v15 = *(a3 + 1);
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  v71 = a3[1];
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  if (v19 == MEMORY[0x1E69E63B0])
  {
    *&v80 = __PAIR64__(LODWORD(v12), LODWORD(v13));

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, COERCE_DOUBLE(__PAIR64__(LODWORD(v15), LODWORD(v16))), a6, COERCE_DOUBLE(__PAIR64__(LODWORD(v12), LODWORD(v13))));
  }

  else
  {
    v20 = v19;
    v69 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      *&v80 = __PAIR64__(LODWORD(v12), LODWORD(v13));
      v77[0] = __PAIR64__(LODWORD(v70), LODWORD(v14));
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, COERCE_DOUBLE(__PAIR64__(LODWORD(v15), LODWORD(v16))), COERCE_DOUBLE(__PAIR64__(LODWORD(v18), LODWORD(v17))), *&v71, *(&v71 + 1), a6, COERCE_DOUBLE(__PAIR64__(LODWORD(v12), LODWORD(v13))), COERCE_DOUBLE(__PAIR64__(LODWORD(v70), LODWORD(v14))), v75, v73);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 16);

        v25 = *(a3 + 4);
        v68 = *(a5 + 32);
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = v13 + v16;
        v29 = v12 + v15;
        v30 = v14 + v17;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[6 * v32];
        v33[8] = v28;
        v33[9] = v29;
        v33[10] = v30;
        v33[11] = v70 + v18;
        *(v33 + 6) = v75 + *&v71;
        *(v33 + 7) = v73 + *(&v71 + 1);
        *(v33 + 8) = v25 + v68;
        *(v33 + 9) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
        *(&v81 + 1) = v34;
        *&v80 = v27;
        specialized Dictionary.subscript.setter(&v80, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v36 = *(v24 + 2);
        v35 = *(v24 + 3);
        if (v36 >= v35 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v24);
        }

        *(v24 + 2) = v36 + 1;
        v37 = &v24[16 * v36];
        *(v37 + 4) = a4;
        *(v37 + 5) = v69;
        v38 = swift_allocObject();
        *(v38 + 16) = v24;
        *a1 = v38;
      }

      else
      {
        v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;
        v40 = a3[1];
        v80 = *a3;
        v81 = v40;
        v82 = *(a3 + 4);

        v41 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v79, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v44 = &v41[6 * v43];
        v45 = v81;
        v46 = v82;
        *(v44 + 2) = v80;
        *(v44 + 3) = v45;
        v44[8] = v46;
        v44[9] = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
        v48 = v47;
        v78 = v47;
        v77[0] = v41;
        specialized Dictionary.subscript.setter(v77, v47);
        v72 = *a5;
        v74 = *a3;
        v49 = *(a3 + 2);
        v50 = *(a3 + 3);
        v51 = *(a3 + 4);
        v52 = *(a5 + 16);
        v53 = *(a5 + 24);
        v54 = *(a5 + 32);
        v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v56 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v79, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        }

        v57 = vaddq_f32(v74, v72);
        v58 = v49 + v52;
        v59 = v50 + v53;
        v60 = v51 + v54;
        v62 = v56[2];
        v61 = v56[3];
        if (v62 >= v61 >> 1)
        {
          v76 = v57;
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v56);
          v57 = v76;
          v56 = v67;
        }

        v56[2] = v62 + 1;
        v63 = &v56[6 * v62];
        v63[2] = v57;
        *v63[3].i64 = v58;
        *&v63[3].i64[1] = v59;
        *v63[4].i64 = v60;
        v63[4].i64[1] = v55;
        v78 = v48;
        v77[0] = v56;
        specialized Dictionary.subscript.setter(v77, v48);
        v64 = v79;

        *a2 = v64;

        v65 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, a6);
        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        *a1 = v66;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, float64x2_t *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 24);
  v80 = *(a5 + 16);
  v15 = a3->f64[0];
  v16 = a3->f64[1];
  v18 = a3[1].f64[0];
  v17 = a3[1].f64[1];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>(0);
  if (v19 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v20 = v19;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v18, v17, a6, v12, v13, v80, v14);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      v78 = a1;
      if (v23)
      {
        v24 = *(v23 + 16);

        v86 = a3[2];
        v87 = LOBYTE(a3[3].f64[0]);
        v94 = *(a5 + 32);
        v95 = *(a5 + 48);
        v90 = a3[2];
        LOBYTE(v91.f64[0]) = LOBYTE(a3[3].f64[0]);
        outlined init with copy of ResolvedGradientVector(&v86, &v84);
        ResolvedGradientVector.add(_:scaledBy:)(&v94, 1.0);
        v25 = v90.f64[0];
        v26 = LOBYTE(v90.f64[1]);
        v75 = HIDWORD(v90.f64[1]);
        LOBYTE(v94.f64[0]) = LOBYTE(v91.f64[0]);
        v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v28 = LOBYTE(v94.f64[0]);
        v29 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        v30 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v31 = v12 + v15;
        v32 = v13 + v16;
        v33 = v14 + v17;
        v35 = v29[2];
        v34 = v29[3];
        if (v35 >= v34 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v29);
        }

        v29[2] = v35 + 1;
        v36 = &v29[8 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v32;
        *(v36 + 6) = v80 + v18;
        *(v36 + 7) = v33;
        *(v36 + 8) = v25;
        *(v36 + 72) = v26;
        v37 = BYTE2(v84);
        *(v36 + 73) = v84;
        *(v36 + 75) = v37;
        *(v36 + 19) = v75;
        *(v36 + 80) = v28;
        v38 = *(v94.f64 + 3);
        *(v36 + 81) = LODWORD(v94.f64[0]);
        *(v36 + 21) = v38;
        v36[11] = v27;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
        *&v91.f64[1] = v39;
        *&v90.f64[0] = v29;
        specialized Dictionary.subscript.setter(&v90, v39);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v41 = *(v24 + 2);
        v40 = *(v24 + 3);
        if (v41 >= v40 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v24);
        }

        *(v24 + 2) = v41 + 1;
        v42 = &v24[16 * v41];
        *(v42 + 4) = v30;
        *(v42 + 5) = a6;
        v43 = swift_allocObject();
        *(v43 + 16) = v24;
        *v78 = v43;
      }

      else
      {
        v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v89 = v44;
        v45 = *a2;
        v46 = a3[1];
        v90 = *a3;
        v47 = a3[2];
        v91 = v46;
        v92 = v47;
        LOBYTE(v93) = LOBYTE(a3[3].f64[0]);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

        v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v44, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        }

        v50 = v48[2];
        v49 = v48[3];
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
        }

        v48[2] = v50 + 1;
        v51 = &v48[8 * v50];
        v52 = v90;
        v53 = v92;
        v54 = v93;
        v51[3] = v91;
        v51[4] = v53;
        v51[2] = v52;
        v51[5].f64[0] = v54;
        *&v51[5].f64[1] = v45;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
        v56 = v55;
        v88 = v55;
        *&v86.f64[0] = v48;
        specialized Dictionary.subscript.setter(&v86, v55);
        v81 = *a3;
        v76 = a3[1];
        v72 = *(a5 + 16);
        v73 = *a5;
        v94 = a3[2];
        v95 = LOBYTE(a3[3].f64[0]);
        v84 = *(a5 + 32);
        v85 = *(a5 + 48);
        v86 = a3[2];
        v87 = LOBYTE(a3[3].f64[0]);
        outlined init with copy of ResolvedGradientVector(&v94, v83);
        ResolvedGradientVector.add(_:scaledBy:)(&v84, 1.0);
        v79 = v86.f64[0];
        v57 = LOBYTE(v86.f64[1]);
        v58 = HIDWORD(v86.f64[1]);
        LOBYTE(v84) = v87;
        v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v60 = v84;
        v61 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v89, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        v74 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        }

        v62 = vaddq_f64(v76, v72);
        v63 = vaddq_f64(v81, v73);
        v65 = v61[2];
        v64 = v61[3];
        if (v65 >= v64 >> 1)
        {
          v82 = v63;
          v77 = v62;
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v61);
          v62 = v77;
          v63 = v82;
          v61 = v71;
        }

        v61[2] = v65 + 1;
        v66 = &v61[8 * v65];
        *(v66 + 2) = v63;
        *(v66 + 3) = v62;
        *(v66 + 8) = v79;
        *(v66 + 72) = v57;
        *(v66 + 19) = v58;
        *(v66 + 80) = v60;
        v67 = *(&v84 + 3);
        *(v66 + 81) = v84;
        *(v66 + 21) = v67;
        v66[11] = v59;
        v88 = v56;
        *&v86.f64[0] = v61;
        specialized Dictionary.subscript.setter(&v86, v56);
        v68 = v89;

        *a2 = v68;

        v69 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, v74, a6);
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        *v78 = v70;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __n128 *a3, uint64_t a4, __n128 *a5, double a6)
{
  v12 = a5->n128_f64[0];
  v13 = a5->n128_f64[1];
  v91 = a5 + 1;
  v88 = a5[1].n128_u8[8];
  v89 = a5[1].n128_f64[0];
  v14 = a5[1].n128_u32[3];
  v15 = a3->n128_f64[0];
  v16 = a3->n128_f64[1];
  v17 = a3[1].n128_f64[0];
  v92 = a3 + 1;
  v18 = a3[1].n128_u8[8];
  v19 = a3[1].n128_u32[3];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v21 = v20;
    v93 = a2;
    v90 = a4;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, COERCE_DOUBLE(v18 | (v19 << 32)), a6, v12, v13, v89, COERCE_DOUBLE(v88 | (v14 << 32)));
    }

    else
    {
      v23 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = swift_dynamicCastClass();
      v87 = a6;
      if (v25)
      {
        v26 = *(v25 + 16);

        v97 = *v92;
        v98 = v92[1].n128_u8[0];
        v105 = *v91;
        v106 = v91[1].n128_u8[0];
        v101 = *v92;
        v102.n128_u8[0] = v92[1].n128_u8[0];
        outlined init with copy of ResolvedGradientVector(&v97, &v95);
        ResolvedGradientVector.add(_:scaledBy:)(&v105, 1.0);
        v27 = v101.n128_u64[0];
        v28 = v101.n128_u8[8];
        v29 = v101.n128_u32[3];
        v30 = a3[2].n128_f64[1];
        v31 = a3[3].n128_f64[0];
        v33 = a5[2].n128_f64[1];
        v32 = a5[3].n128_f64[0];
        v101.n128_u8[0] = v102.n128_u8[0];
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = v101.n128_u8[0];
        v36 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*v93, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v37 = v12 + v15;
        v38 = v13 + v16;
        v39 = v31 + v32;
        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v42 = &v36[8 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v38;
        v42[6] = v27;
        *(v42 + 56) = v28;
        v43 = v95.n128_u8[2];
        *(v42 + 57) = v95.n128_u16[0];
        *(v42 + 59) = v43;
        *(v42 + 15) = v29;
        *(v42 + 64) = v35;
        v44 = *(v105.n128_i32 + 3);
        *(v42 + 65) = v105.n128_u32[0];
        *(v42 + 17) = v44;
        *(v42 + 9) = v30 + v33;
        *(v42 + 10) = v39;
        v42[11] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
        v102.n128_u64[1] = v45;
        v101.n128_u64[0] = v36;
        specialized Dictionary.subscript.setter(&v101, v45);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v47 = *(v26 + 2);
        v46 = *(v26 + 3);
        if (v47 >= v46 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v26);
        }

        *(v26 + 2) = v47 + 1;
        v48 = &v26[16 * v47];
        *(v48 + 4) = v90;
        *(v48 + 5) = v87;
        v49 = swift_allocObject();
        *(v49 + 16) = v26;
        *v23 = v49;
      }

      else
      {
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v100 = v50;
        v51 = *v93;
        v52 = a3[1];
        v101 = *a3;
        v53 = a3[2];
        v102 = v52;
        v103 = v53;
        v104 = a3[3].n128_u64[0];
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v97, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

        v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        v86 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v56 = v54[2];
        v55 = v54[3];
        if (v56 >= v55 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
        }

        v54[2] = v56 + 1;
        v57 = &v54[8 * v56];
        v58 = v101;
        v59 = v103;
        v60 = v104;
        v57[3] = v102;
        v57[4] = v59;
        v57[2] = v58;
        v57[5].n128_u64[0] = v60;
        v57[5].n128_u64[1] = v51;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
        v62 = v61;
        v99 = v61;
        v97.n128_u64[0] = v54;
        specialized Dictionary.subscript.setter(&v97, v61);
        v63 = a3->n128_f64[0];
        v64 = a3->n128_f64[1];
        v105 = *v92;
        v106 = v92[1].n128_u8[0];
        v65 = a5->n128_f64[0];
        v66 = a5->n128_f64[1];
        v95 = *v91;
        v96 = v91[1].n128_u8[0];
        v97 = *v92;
        v98 = v92[1].n128_u8[0];
        outlined init with copy of ResolvedGradientVector(&v105, v94);
        ResolvedGradientVector.add(_:scaledBy:)(&v95, 1.0);
        v67 = v97.n128_u64[0];
        v68 = v97.n128_u8[8];
        v69 = v97.n128_u32[3];
        v70 = a3[2].n128_f64[1];
        v71 = a3[3].n128_f64[0];
        v72 = a5[2].n128_f64[1];
        v73 = a5[3].n128_f64[0];
        v97.n128_u8[0] = v98;
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v75 = v97.n128_u8[0];
        v76 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v100, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
        }

        v77 = v63 + v65;
        v78 = v64 + v66;
        v79 = v70 + v72;
        v81 = v76[2];
        v80 = v76[3];
        if (v81 >= v80 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v76);
        }

        v76[2] = v81 + 1;
        v82 = &v76[8 * v81];
        v82[4] = v77;
        v82[5] = v78;
        *(v82 + 6) = v67;
        *(v82 + 56) = v68;
        *(v82 + 15) = v69;
        *(v82 + 64) = v75;
        v82[9] = v79;
        v82[10] = v71 + v73;
        *(v82 + 11) = v74;
        v99 = v62;
        v97.n128_u64[0] = v76;
        specialized Dictionary.subscript.setter(&v97, v62);
        v83 = v100;

        *v93 = v83;

        v84 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v86, v90, v87);
        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        *v23 = v85;
      }
    }
  }
}

{
  v12 = a5->n128_f64[0];
  v13 = a5->n128_f64[1];
  v91 = a5 + 1;
  v88 = a5[1].n128_u8[8];
  v89 = a5[1].n128_f64[0];
  v14 = a5[1].n128_u32[3];
  v15 = a3->n128_f64[0];
  v16 = a3->n128_f64[1];
  v17 = a3[1].n128_f64[0];
  v92 = a3 + 1;
  v18 = a3[1].n128_u8[8];
  v19 = a3[1].n128_u32[3];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v21 = v20;
    v93 = a2;
    v90 = a4;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, COERCE_DOUBLE(v18 | (v19 << 32)), a6, v12, v13, v89, COERCE_DOUBLE(v88 | (v14 << 32)));
    }

    else
    {
      v23 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = swift_dynamicCastClass();
      v87 = a6;
      if (v25)
      {
        v26 = *(v25 + 16);

        v97 = *v92;
        v98 = v92[1].n128_u8[0];
        v105 = *v91;
        v106 = v91[1].n128_u8[0];
        v101 = *v92;
        v102.n128_u8[0] = v92[1].n128_u8[0];
        outlined init with copy of ResolvedGradientVector(&v97, &v95);
        ResolvedGradientVector.add(_:scaledBy:)(&v105, 1.0);
        v27 = v101.n128_u64[0];
        v28 = v101.n128_u8[8];
        v29 = v101.n128_u32[3];
        v30 = a3[2].n128_f64[1];
        v31 = a3[3].n128_f64[0];
        v33 = a5[2].n128_f64[1];
        v32 = a5[3].n128_f64[0];
        v101.n128_u8[0] = v102.n128_u8[0];
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = v101.n128_u8[0];
        v36 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*v93, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v37 = v12 + v15;
        v38 = v13 + v16;
        v39 = v31 + v32;
        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v42 = &v36[8 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v38;
        v42[6] = v27;
        *(v42 + 56) = v28;
        v43 = v95.n128_u8[2];
        *(v42 + 57) = v95.n128_u16[0];
        *(v42 + 59) = v43;
        *(v42 + 15) = v29;
        *(v42 + 64) = v35;
        v44 = *(v105.n128_i32 + 3);
        *(v42 + 65) = v105.n128_u32[0];
        *(v42 + 17) = v44;
        *(v42 + 9) = v30 + v33;
        *(v42 + 10) = v39;
        v42[11] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
        v102.n128_u64[1] = v45;
        v101.n128_u64[0] = v36;
        specialized Dictionary.subscript.setter(&v101, v45);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v47 = *(v26 + 2);
        v46 = *(v26 + 3);
        if (v47 >= v46 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v26);
        }

        *(v26 + 2) = v47 + 1;
        v48 = &v26[16 * v47];
        *(v48 + 4) = v90;
        *(v48 + 5) = v87;
        v49 = swift_allocObject();
        *(v49 + 16) = v26;
        *v23 = v49;
      }

      else
      {
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v100 = v50;
        v51 = *v93;
        v52 = a3[1];
        v101 = *a3;
        v53 = a3[2];
        v102 = v52;
        v103 = v53;
        v104 = a3[3].n128_u64[0];
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v97, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

        v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        v86 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v56 = v54[2];
        v55 = v54[3];
        if (v56 >= v55 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
        }

        v54[2] = v56 + 1;
        v57 = &v54[8 * v56];
        v58 = v101;
        v59 = v103;
        v60 = v104;
        v57[3] = v102;
        v57[4] = v59;
        v57[2] = v58;
        v57[5].n128_u64[0] = v60;
        v57[5].n128_u64[1] = v51;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
        v62 = v61;
        v99 = v61;
        v97.n128_u64[0] = v54;
        specialized Dictionary.subscript.setter(&v97, v61);
        v63 = a3->n128_f64[0];
        v64 = a3->n128_f64[1];
        v105 = *v92;
        v106 = v92[1].n128_u8[0];
        v65 = a5->n128_f64[0];
        v66 = a5->n128_f64[1];
        v95 = *v91;
        v96 = v91[1].n128_u8[0];
        v97 = *v92;
        v98 = v92[1].n128_u8[0];
        outlined init with copy of ResolvedGradientVector(&v105, v94);
        ResolvedGradientVector.add(_:scaledBy:)(&v95, 1.0);
        v67 = v97.n128_u64[0];
        v68 = v97.n128_u8[8];
        v69 = v97.n128_u32[3];
        v70 = a3[2].n128_f64[1];
        v71 = a3[3].n128_f64[0];
        v72 = a5[2].n128_f64[1];
        v73 = a5[3].n128_f64[0];
        v97.n128_u8[0] = v98;
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v75 = v97.n128_u8[0];
        v76 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v100, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
        }

        v77 = v63 + v65;
        v78 = v64 + v66;
        v79 = v70 + v72;
        v81 = v76[2];
        v80 = v76[3];
        if (v81 >= v80 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v76);
        }

        v76[2] = v81 + 1;
        v82 = &v76[8 * v81];
        v82[4] = v77;
        v82[5] = v78;
        *(v82 + 6) = v67;
        *(v82 + 56) = v68;
        *(v82 + 15) = v69;
        *(v82 + 64) = v75;
        v82[9] = v79;
        v82[10] = v71 + v73;
        *(v82 + 11) = v74;
        v99 = v62;
        v97.n128_u64[0] = v76;
        specialized Dictionary.subscript.setter(&v97, v62);
        v83 = v100;

        *v93 = v83;

        v84 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v86, v90, v87);
        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        *v23 = v85;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6, float32x4_t *a7, uint64_t a8, double a9, char a10)
{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v18 == &type metadata for ResolvedGradientVector)
  {
    __break(1u);
  }

  else
  {
    v19 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v20 = swift_dynamicCastClass();
    v57 = a6;
    if (v20)
    {
      v21 = *(v20 + 16);

      v63 = a3;
      v64 = a4;
      v65 = HIDWORD(a4);
      v66 = a5 & 1;
      v59 = a7;
      v60 = a8;
      v61 = HIDWORD(a8);
      v62 = a10 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v59, 1.0);
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v23 = v63;
      v24 = v64;
      v25 = v65;
      v26 = v66;
      v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
      }

      v27[2] = v29 + 1;
      v30 = &v27[4 * v29];
      v30[4] = v23;
      *(v30 + 40) = v24;
      *(v30 + 11) = v25;
      *(v30 + 48) = v26;
      v30[7] = v22;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState);
      v67 = v31;
      v63 = v27;
      specialized Dictionary.subscript.setter(&v63, v31);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v33 = *(v21 + 2);
      v32 = *(v21 + 3);
      if (v33 >= v32 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v21);
      }

      *(v21 + 2) = v33 + 1;
      v34 = &v21[16 * v33];
      *(v34 + 4) = v57;
      *(v34 + 5) = a9;
      v35 = swift_allocObject();
      *(v35 + 16) = v21;
      *a1 = v35;
    }

    else
    {
      v56 = a1;
      v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v36 = *a2;

      v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v68, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      v55 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      v37[2] = v39 + 1;
      v40 = &v37[4 * v39];
      v40[4] = a3;
      *(v40 + 40) = a4;
      *(v40 + 11) = HIDWORD(a4);
      *(v40 + 48) = a5 & 1;
      v40[7] = v36;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState);
      v42 = v41;
      v67 = v41;
      v63 = v37;
      specialized Dictionary.subscript.setter(&v63, v41);
      v63 = a3;
      v64 = a4;
      v65 = HIDWORD(a4);
      v66 = a5 & 1;
      v59 = a7;
      v60 = a8;
      v61 = HIDWORD(a8);
      v62 = a10 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v59, 1.0);
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v44 = v63;
      v45 = v64;
      v46 = v65;
      v47 = v66;
      v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v68, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
      }

      v48[2] = v50 + 1;
      v51 = &v48[4 * v50];
      v51[4] = v44;
      *(v51 + 40) = v45;
      *(v51 + 11) = v46;
      *(v51 + 48) = v47;
      v51[7] = v43;
      v67 = v42;
      v63 = v48;
      specialized Dictionary.subscript.setter(&v63, v42);
      v52 = v68;

      *a2 = v52;

      v53 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v55, v57, a9);
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *v56 = v54;
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, __int128 *a5, double a6)
{
  v12 = *a5;
  v13 = *(a5 + 1);
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = *a3;
  v17 = *(a3 + 1);
  v18 = *(a3 + 2);
  v19 = *(a3 + 3);
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(0);
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, v17, v18, v19, a6, v12, v13, v14, v15);
      return;
    }

    v23 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = *(v24 + 16);

      v26 = a3[1];
      v27 = a3[3];
      v122 = a3[2];
      v123 = v27;
      v28 = a3[3];
      v124 = a3[4];
      v29 = a3[1];
      v120 = *a3;
      v121 = v29;
      v30 = a5[3];
      v129 = a5[2];
      v130 = v30;
      v131 = a5[4];
      v31 = a5[1];
      v127 = *a5;
      v128 = v31;
      LOBYTE(v125) = *(a3 + 80);
      LOBYTE(v132) = *(a5 + 80);
      v135 = v120;
      v136 = v26;
      v32 = a3[4];
      v140 = *(a3 + 80);
      v138 = v28;
      v139 = v32;
      v137 = v122;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v120, &v114);
      specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v135, &v127);
      v112 = *(a3 + 88);
      v33 = *(a5 + 22);
      v23 = *(a5 + 12);
      v34 = v112.n128_u64[1];
      if (*(v23 + 16) >= *(v112.n128_u64[1] + 16))
      {
        v35 = *(v112.n128_u64[1] + 16);
      }

      else
      {
        v35 = *(v23 + 16);
      }

      if (!v35)
      {
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v112, &v127, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
LABEL_41:
        LODWORD(v14) = v112.n128_u32[0];
        v129 = v137;
        v130 = v138;
        v131 = v139;
        LOBYTE(v132) = v140;
        v127 = v135;
        v128 = v136;
        v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_42;
        }

        goto LABEL_57;
      }

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v112, &v127, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v34 + 2);
      while (v37 < v38)
      {
        v44 = *(v23 + v36 + 40);
        v45 = *(v23 + v36 + 56);
        v46 = *(v23 + v36 + 72);
        v47 = *(v23 + v36 + 80);
        v48 = &v34[v36];
        *&v34[v36 + 32] = *(v23 + v36 + 32) + *&v34[v36 + 32];
        if ((v47 & 1) == 0)
        {
          if (v48[80])
          {
            *(v48 + 5) = v44.i64[0];
            *(v48 + 3) = vextq_s8(v44, v45, 8uLL);
            *(v48 + 8) = *&v45.f64[1];
            v41 = v46;
          }

          else
          {
            v39 = *(v48 + 40);
            v40 = *(v48 + 56);
            v41 = *(v48 + 9) + v46;
            v42 = vadd_f32(vmovn_s64(v44), vmovn_s64(v39));
            v43.i64[0] = v42.u32[0];
            v43.i64[1] = v42.u32[1];
            *(v48 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v44, 0x20uLL), vshrn_n_s64(v39, 0x20uLL)), 0x20uLL), v43);
            *(v48 + 56) = vaddq_f64(v40, v45);
          }

          *(v48 + 9) = v41;
          v48[80] = 0;
        }

        v37 = (v37 + 1);
        v36 += 56;
        if (v35 == v37)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
LABEL_42:
      v85 = v33 + *&v14;
      v87 = v35[2];
      v86 = v35[3];
      if (v87 >= v86 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v35);
      }

      v35[2] = v87 + 1;
      v88 = &v35[14 * v87];
      v89 = v128;
      *(v88 + 2) = v127;
      *(v88 + 3) = v89;
      v90 = v129;
      v91 = v130;
      v92 = v131;
      v88[14] = v132;
      *(v88 + 5) = v91;
      *(v88 + 6) = v92;
      *(v88 + 4) = v90;
      *(v88 + 30) = v85;
      v88[16] = v34;
      v88[17] = v23;
      type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
      *(&v115 + 1) = v93;
      *&v114 = v35;
      specialized Dictionary.subscript.setter(&v114, v93);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v95 = *(v25 + 2);
      v94 = *(v25 + 3);
      if (v95 >= v94 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v25);
      }

      *(v25 + 2) = v95 + 1;
      v96 = &v25[16 * v95];
      *(v96 + 4) = a4;
      *(v96 + 5) = a6;
      v97 = swift_allocObject();
      *(v97 + 16) = v25;
      *a1 = v97;
      return;
    }

    v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v126 = v49;
    v50 = *a2;
    v51 = a3[5];
    v131 = a3[4];
    v132 = v51;
    v133 = *(a3 + 12);
    v52 = a3[1];
    v127 = *a3;
    v128 = v52;
    v53 = a3[3];
    v129 = a3[2];
    v130 = v53;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v120, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v49, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
    }

    v56 = v54[2];
    v55 = v54[3];
    if (v56 >= v55 >> 1)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
    }

    v54[2] = v56 + 1;
    v57 = &v54[14 * v56];
    v58 = v127;
    v59 = v129;
    *(v57 + 3) = v128;
    *(v57 + 4) = v59;
    *(v57 + 2) = v58;
    v60 = v130;
    v61 = v132;
    v62 = v133;
    *(v57 + 6) = v131;
    *(v57 + 7) = v61;
    *(v57 + 5) = v60;
    v57[16] = v62;
    v57[17] = v50;
    type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
    v25 = v63;
    *(&v121 + 1) = v63;
    *&v120 = v54;
    specialized Dictionary.subscript.setter(&v120, v63);
    v64 = a3[1];
    v65 = a3[3];
    v137 = a3[2];
    v138 = v65;
    v66 = a3[3];
    v139 = a3[4];
    v67 = a3[1];
    v135 = *a3;
    v136 = v67;
    v68 = a5[3];
    v122 = a5[2];
    v123 = v68;
    v124 = a5[4];
    v69 = a5[1];
    v120 = *a5;
    v121 = v69;
    v140 = *(a3 + 80);
    LOBYTE(v125) = *(a5 + 80);
    v114 = v135;
    v115 = v64;
    v70 = a3[4];
    v119 = *(a3 + 80);
    v117 = v66;
    v118 = v70;
    v116 = v137;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v135, &v112);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v114, &v120);
    v134 = *(a3 + 88);
    v33 = *(a5 + 22);
    v35 = *(a5 + 12);
    v34 = *(&v134 + 1);
    if (v35[2] >= *(*(&v134 + 1) + 16))
    {
      v71 = *(*(&v134 + 1) + 16);
    }

    else
    {
      v71 = v35[2];
    }

    if (v71)
    {
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v134, &v120, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      v72 = 0;
      v73 = 0;
      v74 = *(v34 + 2);
      while (v73 < v74)
      {
        v80 = *&v35[v72 + 5];
        v81 = *&v35[v72 + 7];
        v82 = *&v35[v72 + 9];
        v83 = v35[v72 + 10];
        v84 = &v34[v72 * 8];
        *&v34[v72 * 8 + 32] = *&v35[v72 + 4] + *&v34[v72 * 8 + 32];
        if ((v83 & 1) == 0)
        {
          if (v84[80])
          {
            *(v84 + 5) = v80.i64[0];
            *(v84 + 3) = vextq_s8(v80, v81, 8uLL);
            *(v84 + 8) = *&v81.f64[1];
            v77 = v82;
          }

          else
          {
            v75 = *(v84 + 40);
            v76 = *(v84 + 56);
            v77 = *(v84 + 9) + v82;
            v78 = vadd_f32(vmovn_s64(v80), vmovn_s64(v75));
            v79.i64[0] = v78.u32[0];
            v79.i64[1] = v78.u32[1];
            *(v84 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v80, 0x20uLL), vshrn_n_s64(v75, 0x20uLL)), 0x20uLL), v79);
            *(v84 + 56) = vaddq_f64(v76, v81);
          }

          *(v84 + 9) = v77;
          v84[80] = 0;
        }

        ++v73;
        v72 += 7;
        if (v71 == v73)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_56;
    }

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v134, &v120, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
LABEL_50:
    v98 = *&v134;
    v122 = v116;
    v123 = v117;
    v124 = v118;
    LOBYTE(v125) = v119;
    v120 = v114;
    v121 = v115;
    v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v100 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v126, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100[2] + 1, 1, v100);
    }

    v101 = v33 + v98;
    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    v104 = &v100[14 * v103];
    v105 = v121;
    *(v104 + 2) = v120;
    *(v104 + 3) = v105;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v104[14] = v125;
    *(v104 + 5) = v107;
    *(v104 + 6) = v108;
    *(v104 + 4) = v106;
    *(v104 + 30) = v101;
    v104[16] = v34;
    v104[17] = v99;
    v113 = v25;
    v112.n128_u64[0] = v100;
    specialized Dictionary.subscript.setter(&v112, v25);
    v109 = v126;

    *a2 = v109;

    v110 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a4, a6);
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *a1 = v111;
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, unint64_t *a2, double *a3, uint64_t a4, double *a5, double a6)
{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v12 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *a3, a3[1], a3[2], a3[3], a6, *a5, a5[1], a5[2], a5[3]);
  }

  else
  {
    v13 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + 16);

      v16 = *(a3 + 3);
      v66 = *(a3 + 2);
      v67 = v16;
      v68 = *(a3 + 4);
      v69 = *(a3 + 80);
      v17 = *(a3 + 1);
      v64 = *a3;
      v65 = v17;
      v18 = *(a5 + 3);
      v86 = *(a5 + 2);
      v87 = v18;
      v88 = *(a5 + 4);
      LOBYTE(v89) = *(a5 + 80);
      v19 = *(a5 + 1);
      v84 = *a5;
      v85 = v19;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, &v77);
      specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v64, &v84);
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v86 = v66;
      v87 = v67;
      v88 = v68;
      LOBYTE(v89) = v69;
      v84 = v64;
      v85 = v65;
      v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      v24 = &v21[12 * v23];
      v25 = v85;
      *(v24 + 2) = v84;
      *(v24 + 3) = v25;
      v26 = v86;
      v27 = v88;
      v28 = v89;
      *(v24 + 5) = v87;
      *(v24 + 6) = v27;
      *(v24 + 4) = v26;
      v24[14] = v28;
      v24[15] = v20;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState);
      *(&v78 + 1) = v29;
      *&v77 = v21;
      specialized Dictionary.subscript.setter(&v77, v29);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v31 = *(v15 + 2);
      v30 = *(v15 + 3);
      if (v31 >= v30 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v15);
      }

      *(v15 + 2) = v31 + 1;
      v32 = &v15[16 * v31];
      *(v32 + 4) = a4;
      *(v32 + 5) = a6;
      v33 = swift_allocObject();
      *(v33 + 16) = v15;
      *a1 = v33;
    }

    else
    {
      v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v83 = v34;
      v35 = *a2;
      v36 = *(a3 + 3);
      v86 = *(a3 + 2);
      v87 = v36;
      v88 = *(a3 + 4);
      LOBYTE(v89) = *(a3 + 80);
      v37 = *(a3 + 1);
      v84 = *a3;
      v85 = v37;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, &v77);

      v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v34, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v40 = v38[2];
      v39 = v38[3];
      if (v40 >= v39 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
      }

      v38[2] = v40 + 1;
      v41 = &v38[12 * v40];
      v42 = v85;
      *(v41 + 2) = v84;
      *(v41 + 3) = v42;
      v43 = v86;
      v44 = v88;
      v45 = v89;
      *(v41 + 5) = v87;
      *(v41 + 6) = v44;
      *(v41 + 4) = v43;
      v41[14] = v45;
      v41[15] = v35;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState);
      v47 = v46;
      *(&v78 + 1) = v46;
      *&v77 = v38;
      specialized Dictionary.subscript.setter(&v77, v46);
      v48 = *(a3 + 3);
      v73 = *(a3 + 2);
      v74 = v48;
      v75 = *(a3 + 4);
      v76 = *(a3 + 80);
      v49 = *(a3 + 1);
      v71 = *a3;
      v72 = v49;
      v50 = *(a5 + 3);
      v79 = *(a5 + 2);
      v80 = v50;
      v81 = *(a5 + 4);
      LOBYTE(v82) = *(a5 + 80);
      v51 = *(a5 + 1);
      v77 = *a5;
      v78 = v51;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, v70);
      specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v71, &v77);
      v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v79 = v73;
      v80 = v74;
      v81 = v75;
      LOBYTE(v82) = v76;
      v77 = v71;
      v78 = v72;
      v53 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v83, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
      }

      v55 = v53[2];
      v54 = v53[3];
      if (v55 >= v54 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
      }

      v53[2] = v55 + 1;
      v56 = &v53[12 * v55];
      v57 = v78;
      *(v56 + 2) = v77;
      *(v56 + 3) = v57;
      v58 = v79;
      v59 = v81;
      v60 = v82;
      *(v56 + 5) = v80;
      *(v56 + 6) = v59;
      *(v56 + 4) = v58;
      v56[14] = v60;
      v56[15] = v52;
      v70[3] = v47;
      v70[0] = v53;
      specialized Dictionary.subscript.setter(v70, v47);
      v61 = v83;

      *a2 = v61;

      v62 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v13, a4, a6);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *a1 = v63;
    }
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v12 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *a3, a3[1], a3[2], a3[3], a6, *a5, a5[1], a5[2], a5[3]);
  }

  else
  {
    v13 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + 16);

      v16 = *(a3 + 5);
      v162 = *(a3 + 4);
      v163 = v16;
      v17 = *(a3 + 7);
      v164 = *(a3 + 6);
      v165 = v17;
      v18 = *(a3 + 1);
      v158 = *a3;
      v159 = v18;
      v19 = *(a3 + 3);
      v160 = *(a3 + 2);
      v161 = v19;
      v20 = *(a3 + 13);
      v129 = *(a3 + 12);
      v130 = v20;
      v21 = *(a3 + 15);
      v131 = *(a3 + 14);
      v132 = v21;
      v22 = *(a3 + 9);
      v125 = *(a3 + 8);
      v126 = v22;
      v23 = *(a3 + 11);
      v127 = *(a3 + 10);
      v128 = v23;
      v24 = *(a5 + 5);
      v137 = *(a5 + 4);
      v138 = v24;
      v25 = *(a5 + 7);
      v139 = *(a5 + 6);
      v140 = v25;
      v26 = *(a5 + 1);
      v133 = *a5;
      v134 = v26;
      v27 = *(a5 + 3);
      v135 = *(a5 + 2);
      v136 = v27;
      v28 = *(a5 + 13);
      v121 = *(a5 + 12);
      v122 = v28;
      v29 = *(a5 + 15);
      v123 = *(a5 + 14);
      v124 = v29;
      v30 = *(a5 + 9);
      v117 = *(a5 + 8);
      v118 = v30;
      v31 = *(a5 + 11);
      v119 = *(a5 + 10);
      v120 = v31;
      static ConcentricRectangle.Uniformity.+ infix(_:_:)(&v158);
      static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v125);
      v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v33 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
      }

      v33[2] = v35 + 1;
      v36 = &v33[33 * v35];
      *(v36 + 4) = v103;
      *(v36 + 5) = v104;
      *(v36 + 2) = v101;
      *(v36 + 3) = v102;
      *(v36 + 8) = v107;
      *(v36 + 9) = v108;
      *(v36 + 6) = v105;
      *(v36 + 7) = v106;
      *(v36 + 12) = v111;
      *(v36 + 13) = v112;
      *(v36 + 10) = v109;
      *(v36 + 11) = v110;
      *(v36 + 16) = v115;
      *(v36 + 17) = v116;
      *(v36 + 14) = v113;
      *(v36 + 15) = v114;
      v36[36] = v32;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState);
      *(&v159 + 1) = v37;
      *&v158 = v33;
      specialized Dictionary.subscript.setter(&v158, v37);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v39 = *(v15 + 2);
      v38 = *(v15 + 3);
      if (v39 >= v38 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v15);
      }

      *(v15 + 2) = v39 + 1;
      v40 = &v15[16 * v39];
      *(v40 + 4) = a4;
      *(v40 + 5) = a6;
      v41 = swift_allocObject();
      *(v41 + 16) = v15;
      *a1 = v41;
    }

    else
    {
      v157 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v42 = *a2;
      v43 = *(a3 + 13);
      v170 = *(a3 + 12);
      v171 = v43;
      v44 = *(a3 + 15);
      v172 = *(a3 + 14);
      v173 = v44;
      v45 = *(a3 + 9);
      v166 = *(a3 + 8);
      v167 = v45;
      v46 = *(a3 + 11);
      v168 = *(a3 + 10);
      v169 = v46;
      v47 = *(a3 + 5);
      v162 = *(a3 + 4);
      v163 = v47;
      v48 = *(a3 + 7);
      v164 = *(a3 + 6);
      v165 = v48;
      v49 = *(a3 + 1);
      v158 = *a3;
      v159 = v49;
      v50 = *(a3 + 3);
      v160 = *(a3 + 2);
      v161 = v50;

      v51 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v157, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
      }

      v53 = v51[2];
      v52 = v51[3];
      if (v53 >= v52 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v51);
      }

      v51[2] = v53 + 1;
      v54 = &v51[33 * v53];
      v55 = v158;
      v56 = v159;
      v57 = v161;
      *(v54 + 4) = v160;
      *(v54 + 5) = v57;
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      v58 = v162;
      v59 = v163;
      v60 = v165;
      *(v54 + 8) = v164;
      *(v54 + 9) = v60;
      *(v54 + 6) = v58;
      *(v54 + 7) = v59;
      v61 = v166;
      v62 = v167;
      v63 = v169;
      *(v54 + 12) = v168;
      *(v54 + 13) = v63;
      *(v54 + 10) = v61;
      *(v54 + 11) = v62;
      v64 = v170;
      v65 = v171;
      v66 = v173;
      *(v54 + 16) = v172;
      *(v54 + 17) = v66;
      *(v54 + 14) = v64;
      *(v54 + 15) = v65;
      v54[36] = v42;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState);
      v68 = v67;
      *(&v134 + 1) = v67;
      *&v133 = v51;
      specialized Dictionary.subscript.setter(&v133, v67);
      v69 = *(a3 + 5);
      v137 = *(a3 + 4);
      v138 = v69;
      v70 = *(a3 + 7);
      v139 = *(a3 + 6);
      v140 = v70;
      v71 = *(a3 + 1);
      v133 = *a3;
      v134 = v71;
      v72 = *(a3 + 3);
      v135 = *(a3 + 2);
      v136 = v72;
      v73 = *(a3 + 13);
      v121 = *(a3 + 12);
      v122 = v73;
      v74 = *(a3 + 15);
      v123 = *(a3 + 14);
      v124 = v74;
      v75 = *(a3 + 9);
      v117 = *(a3 + 8);
      v118 = v75;
      v76 = *(a3 + 11);
      v119 = *(a3 + 10);
      v120 = v76;
      v77 = *(a5 + 5);
      v129 = *(a5 + 4);
      v130 = v77;
      v78 = *(a5 + 7);
      v131 = *(a5 + 6);
      v132 = v78;
      v79 = *(a5 + 1);
      v125 = *a5;
      v126 = v79;
      v80 = *(a5 + 3);
      v127 = *(a5 + 2);
      v128 = v80;
      static ConcentricRectangle.Uniformity.+ infix(_:_:)(&v133);
      static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v117);
      v81 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v82 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v157, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82[2] + 1, 1, v82);
      }

      v84 = v82[2];
      v83 = v82[3];
      if (v84 >= v83 >> 1)
      {
        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v82);
      }

      v82[2] = v84 + 1;
      v85 = &v82[33 * v84];
      v86 = v141;
      v87 = v142;
      v88 = v144;
      *(v85 + 4) = v143;
      *(v85 + 5) = v88;
      *(v85 + 2) = v86;
      *(v85 + 3) = v87;
      v89 = v145;
      v90 = v146;
      v91 = v148;
      *(v85 + 8) = v147;
      *(v85 + 9) = v91;
      *(v85 + 6) = v89;
      *(v85 + 7) = v90;
      v92 = v149;
      v93 = v150;
      v94 = v152;
      *(v85 + 12) = v151;
      *(v85 + 13) = v94;
      *(v85 + 10) = v92;
      *(v85 + 11) = v93;
      v95 = v153;
      v96 = v154;
      v97 = v156;
      *(v85 + 16) = v155;
      *(v85 + 17) = v97;
      *(v85 + 14) = v95;
      *(v85 + 15) = v96;
      v85[36] = v81;
      *(&v134 + 1) = v68;
      *&v133 = v82;
      specialized Dictionary.subscript.setter(&v133, v68);
      v98 = v157;

      *a2 = v98;

      v99 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v13, a4, a6);
      v100 = swift_allocObject();
      *(v100 + 16) = v99;
      *a1 = v100;
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *a3;
  v12 = *(a3 + 8);
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v16 = *(a3 + 32);
  v17 = *(a3 + 40);
  v19 = *a5;
  v18 = *(a5 + 8);
  v20 = *(a5 + 16);
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  v58 = *(a5 + 40);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v23 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v13, v12, v15, v14, a6, v19, v18, v20, v21);
  }

  else
  {
    v56 = v18;
    v57 = a4;
    v55 = v19;
    v60 = v17;
    v24 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v25 = swift_dynamicCastClass();
    v59 = a2;
    if (v25)
    {
      v26 = *(v25 + 16);

      if (v58)
      {
        v27 = *&v13;
        v28 = *&v12;
        v20 = v15;
        v21 = v14;
        v22 = v16;
      }

      else
      {
        v60 = 0;
        if (v17)
        {
          v27 = *&v19;
          v28 = *&v56;
        }

        else
        {
          v20 = v15 + v20;
          v21 = v14 + v21;
          v22 = v16 + v22;
          v27 = COERCE_UNSIGNED_INT(*&v13 + *&v19) | (COERCE_UNSIGNED_INT(*(&v13 + 1) + *(&v19 + 1)) << 32);
          v28 = COERCE_UNSIGNED_INT(*&v12 + *&v56) | (COERCE_UNSIGNED_INT(*(&v12 + 1) + *(&v56 + 1)) << 32);
        }
      }

      v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*v59, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      v37[2] = v39 + 1;
      v40 = &v37[7 * v39];
      *(v40 + 4) = v27;
      *(v40 + 5) = v28;
      v40[6] = v20;
      v40[7] = v21;
      v40[8] = v22;
      *(v40 + 72) = v60 & 1;
      *(v40 + 10) = v36;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState);
      v62 = v41;
      v61[0] = v37;
      specialized Dictionary.subscript.setter(v61, v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      }

      v43 = *(v26 + 2);
      v42 = *(v26 + 3);
      if (v43 >= v42 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v26);
      }

      *(v26 + 2) = v43 + 1;
      v44 = &v26[16 * v43];
      *(v44 + 4) = v57;
      *(v44 + 5) = a6;
      v45 = swift_allocObject();
      *(v45 + 16) = v26;
      *a1 = v45;
    }

    else
    {
      v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v29 = *a2;

      v30 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v63, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
      v54 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
      }

      v30[2] = v32 + 1;
      v33 = &v30[7 * v32];
      v33[4] = v13;
      v33[5] = v12;
      v33[6] = v15;
      v33[7] = v14;
      v33[8] = v16;
      *(v33 + 72) = v60 & 1;
      *(v33 + 10) = v29;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState);
      v35 = v34;
      v62 = v34;
      v61[0] = v30;
      specialized Dictionary.subscript.setter(v61, v34);
      if ((*(a5 + 40) & 1) == 0)
      {
        if (*(a3 + 40))
        {
          v13 = v55;
          v12 = v18;
          v15 = v20;
          v14 = v21;
          v16 = v22;
          v60 = v58;
        }

        else
        {
          v60 = 0;
          *&v13 = COERCE_UNSIGNED_INT(*a3 + *&v55) | (COERCE_UNSIGNED_INT(*(a3 + 4) + *(&v55 + 1)) << 32);
          *&v12 = COERCE_UNSIGNED_INT(*(a3 + 8) + *&v18) | (COERCE_UNSIGNED_INT(*(a3 + 12) + *(&v18 + 1)) << 32);
          v15 = *(a3 + 16) + v20;
          v14 = *(a3 + 24) + v21;
          v16 = *(a3 + 32) + v22;
        }
      }

      v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v63, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
      }

      v49 = v47[2];
      v48 = v47[3];
      if (v49 >= v48 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
      }

      v47[2] = v49 + 1;
      v50 = &v47[7 * v49];
      v50[4] = v13;
      v50[5] = v12;
      v50[6] = v15;
      v50[7] = v14;
      v50[8] = v16;
      *(v50 + 72) = v60 & 1;
      *(v50 + 10) = v46;
      v62 = v35;
      v61[0] = v47;
      specialized Dictionary.subscript.setter(v61, v35);
      v51 = v63;

      *v59 = v51;

      v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v24, v57, a6);
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *v54 = v53;
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, unint64_t *a2, double *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *a5;
  v14 = *(a5 + 8);
  v13 = *(a5 + 16);
  v79 = *(a5 + 24);
  v15 = *a3;
  v17 = a3[1];
  v16 = a3[2];
  v18 = a3[3];
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(0);
  if (v19 != MEMORY[0x1E69E63B0])
  {
    v20 = v19;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      *&v85 = v15;
      v35 = *&v85;
      *&v85 = v12;
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v35, v17, v16, v18, a6, *&v85, v14, v13, v79);
      return;
    }

    v22 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v23 = swift_dynamicCastClass();
    v78 = a1;
    if (v23)
    {
      v24 = v16;
      v25 = *(v23 + 16);

      v27 = a3[4];
      v26 = a3[5];
      v28 = *(a3 + 48);
      if (*(a5 + 48))
      {
        v29 = *&v17;
        v30 = *&v16;
        v31 = v27;
        v32 = v26;
        v33 = v12;
      }

      else
      {
        v29 = *&v14;
        v30 = *&v13;
        v31 = *(a5 + 32);
        v32 = *(a5 + 40);
        v33 = v12;
        if (v28)
        {
          v28 = 0;
          v18 = v79;
        }

        else
        {
          v28 = 0;
          v18 = v18 + v79;
          v31 = v27 + v31;
          v32 = v26 + v32;
          v29 = COERCE_UNSIGNED_INT(*&v17 + *&v29) | (COERCE_UNSIGNED_INT(*(&v17 + 1) + *(&v29 + 1)) << 32);
          v30 = COERCE_UNSIGNED_INT(*&v24 + *&v30) | (COERCE_UNSIGNED_INT(*(&v24 + 1) + *(&v30 + 1)) << 32);
        }
      }

      v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      LOBYTE(v84) = v28;
      v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
      v55 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
      }

      v54[2] = v57 + 1;
      v58 = &v54[8 * v57];
      *(v58 + 8) = v33 + v15;
      v58[5] = v29;
      v58[6] = v30;
      *(v58 + 7) = v18;
      *(v58 + 8) = v31;
      *(v58 + 9) = v32;
      *(v58 + 80) = v55;
      v59 = *(v82 + 3);
      *(v58 + 81) = v82[0];
      *(v58 + 21) = v59;
      v58[11] = v53;
      type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
      *(&v86 + 1) = v60;
      *&v85 = v54;
      specialized Dictionary.subscript.setter(&v85, v60);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v62 = *(v25 + 2);
      v61 = *(v25 + 3);
      if (v62 >= v61 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v25);
      }

      *(v25 + 2) = v62 + 1;
      v63 = &v25[16 * v62];
      *(v63 + 4) = a4;
      *(v63 + 5) = a6;
      v64 = swift_allocObject();
      *(v64 + 16) = v25;
      *v78 = v64;
      return;
    }

    v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v36 = *a2;
    v37 = *(a3 + 1);
    v85 = *a3;
    v86 = v37;
    v87 = *(a3 + 2);
    LOBYTE(v88) = *(a3 + 48);

    v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v84, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    v38[2] = v40 + 1;
    v41 = &v38[8 * v40];
    v42 = v85;
    v43 = v87;
    v44 = v88;
    *(v41 + 3) = v86;
    *(v41 + 4) = v43;
    *(v41 + 2) = v42;
    v41[10] = v44;
    v41[11] = v36;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
    v46 = v45;
    v83 = v45;
    v82[0] = v38;
    specialized Dictionary.subscript.setter(v82, v45);
    v47 = *(a3 + 48);
    v48 = *(a3 + 1);
    if (*(a5 + 48))
    {
      v49 = a3[3];
      v50 = a3[4];
      v51 = a3[5];
    }

    else
    {
      v52 = *(a5 + 8);
      v49 = *(a5 + 24);
      v50 = *(a5 + 32);
      v51 = *(a5 + 40);
      if (a3[6])
      {
        v80 = *(a5 + 8);
        v47 = 0;
LABEL_32:
        v67 = *a3;
        v68 = *a5;
        v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v70 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v84, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        }

        v71 = v67 + v68;
        v73 = v70[2];
        v72 = v70[3];
        if (v73 >= v72 >> 1)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
        }

        v70[2] = v73 + 1;
        v74 = &v70[8 * v73];
        *(v74 + 8) = v71;
        *(v74 + 5) = v80;
        *(v74 + 7) = v49;
        *(v74 + 8) = v50;
        *(v74 + 9) = v51;
        *(v74 + 80) = v47;
        *(v74 + 81) = *v81;
        *(v74 + 21) = *&v81[3];
        v74[11] = v69;
        v83 = v46;
        v82[0] = v70;
        specialized Dictionary.subscript.setter(v82, v46);
        v75 = v84;

        *a2 = v75;

        v76 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, a6);
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *v78 = v77;

        return;
      }

      v47 = 0;
      v49 = a3[3] + v49;
      v50 = a3[4] + v50;
      v51 = a3[5] + v51;
      v65 = vadd_f32(vmovn_s64(v48), vmovn_s64(v52));
      v66.i64[0] = v65.u32[0];
      v66.i64[1] = v65.u32[1];
      v48 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v48, 0x20uLL), vshrn_n_s64(v52, 0x20uLL)), 0x20uLL), v66);
    }

    v80 = v48;
    goto LABEL_32;
  }

  *&v85 = v15;
  v34 = *&v85;
  *&v85 = v12;

  specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v34, a6, *&v85);
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, float a4, float a5, float a6, float a7, double a8, float a9, float a10, float a11, float a12)
{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v22 == MEMORY[0x1E69E63B0])
  {
    v60[0] = __PAIR64__(LODWORD(a10), LODWORD(a9));

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, COERCE_DOUBLE(__PAIR64__(LODWORD(a5), LODWORD(a4))), a8, COERCE_DOUBLE(__PAIR64__(LODWORD(a10), LODWORD(a9))));
  }

  else
  {
    v23 = v22;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v23 == v24)
    {
      __break(1u);
    }

    else
    {
      v25 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = *(v26 + 16);

        v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v29 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v30 = a4 + a9;
        v31 = a5 + a10;
        v33 = v29[2];
        v32 = v29[3];
        if (v33 >= v32 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
        }

        v29[2] = v33 + 1;
        v34 = &v29[3 * v33];
        v34[8] = v30;
        v34[9] = v31;
        v34[10] = a6 + a11;
        v34[11] = a7 + a12;
        *(v34 + 6) = v28;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v61 = v35;
        v60[0] = v29;
        specialized Dictionary.subscript.setter(v60, v35);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v37 = *(v27 + 2);
        v36 = *(v27 + 3);
        if (v37 >= v36 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v27);
        }

        *(v27 + 2) = v37 + 1;
        v38 = &v27[16 * v37];
        *(v38 + 4) = a3;
        *(v38 + 5) = a8;
        v39 = swift_allocObject();
        *(v39 + 16) = v27;
        *a1 = v39;
      }

      else
      {
        v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v40 = *a2;

        v41 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v62, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v44 = &v41[3 * v43];
        v44[8] = a4;
        v44[9] = a5;
        v44[10] = a6;
        v44[11] = a7;
        *(v44 + 6) = v40;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v46 = v45;
        v61 = v45;
        v60[0] = v41;
        specialized Dictionary.subscript.setter(v60, v45);
        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v62, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        }

        v49 = a4 + a9;
        v50 = a5 + a10;
        v52 = v48[2];
        v51 = v48[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v48);
          v53 = v52 + 1;
          v48 = v58;
        }

        v48[2] = v53;
        v54 = &v48[3 * v52];
        v54[8] = v49;
        v54[9] = v50;
        v54[10] = a6 + a11;
        v54[11] = a7 + a12;
        *(v54 + 6) = v47;
        v61 = v46;
        v60[0] = v48;
        specialized Dictionary.subscript.setter(v60, v46);
        v55 = v62;

        *a2 = v55;

        v56 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v25, a3, a8);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *a1 = v57;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v18 = *(a3 + 16);
        v58 = *a5;
        v60 = *a3;
        v19 = *(a5 + 16);
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = v18 + v19;
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        v26[3].f32[0] = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 8);
        v37 = *(a3 + 16);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        *(v41 + 5) = v36;
        *(v41 + 12) = v37;
        *(v41 + 7) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v44 = *(a3 + 16);
        v59 = *a5;
        v61 = *a3;
        v45 = *(a5 + 16);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = v44 + v45;
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        v52[3].f32[0] = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, double *a5, double a6)
{
  v12 = *a5;
  v13 = a5[1];
  v15 = a5[2];
  v14 = a5[3];
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v69 = a3[3];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>(0);
  if (v19 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v20 = v19;
    v68 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, v17, v18, v69, a6, v12, v13, v15, v14);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 16);

        v25 = a3[4];
        v66 = a5[4];
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = v12 + v16;
        v29 = v13 + v17;
        v30 = v15 + v18;
        v31 = v14 + v69;
        v32 = v25 + v66;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v27);
        }

        v27[2] = v34 + 1;
        v35 = &v27[6 * v34];
        v35[4] = v28;
        v35[5] = v29;
        v35[6] = v30;
        v35[7] = v31;
        v35[8] = v32;
        *(v35 + 9) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>(0);
        v73 = v36;
        v72[0] = v27;
        specialized Dictionary.subscript.setter(v72, v36);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v38 = *(v24 + 2);
        v37 = *(v24 + 3);
        if (v38 >= v37 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v24);
        }

        *(v24 + 2) = v38 + 1;
        v39 = &v24[16 * v38];
        *(v39 + 4) = a4;
        *(v39 + 5) = v68;
        v40 = swift_allocObject();
        *(v40 + 16) = v24;
        *a1 = v40;
      }

      else
      {
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v41 = *a2;
        v42 = *(a3 + 4);

        v43 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v74, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        v46 = &v43[6 * v45];
        v46[4] = v16;
        v46[5] = v17;
        v46[6] = v18;
        v46[7] = v69;
        *(v46 + 8) = v42;
        *(v46 + 9) = v41;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>(0);
        v48 = v47;
        v73 = v47;
        v72[0] = v43;
        specialized Dictionary.subscript.setter(v72, v47);
        v49 = a3[4];
        v70 = *a3;
        v64 = *a5;
        v65 = *(a3 + 2);
        v63 = *(a5 + 2);
        v50 = a5[4];
        v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v52 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v74, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v53 = vaddq_f64(v65, v63);
        v54 = vaddq_f64(v70, v64);
        v55 = v49 + v50;
        v57 = v52[2];
        v56 = v52[3];
        if (v57 >= v56 >> 1)
        {
          v71 = v54;
          v67 = v53;
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v52);
          v53 = v67;
          v54 = v71;
          v52 = v62;
        }

        v52[2] = v57 + 1;
        v58 = &v52[6 * v57];
        v58[2] = v54;
        v58[3] = v53;
        v58[4].f64[0] = v55;
        *&v58[4].f64[1] = v51;
        v73 = v48;
        v72[0] = v52;
        specialized Dictionary.subscript.setter(v72, v48);
        v59 = v74;

        *a2 = v59;

        v60 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, v68);
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *a1 = v61;
      }
    }
  }
}

{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v58 = *a5;
        v60 = *a3;
        v18 = a3[2];
        v19 = a5[2];
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = vadd_f32(v18, v19);
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        *v26[3].f32 = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>(0);
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 1);
        v37 = *(a3 + 2);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        v41[5] = v36;
        v41[6] = v37;
        v41[7] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>(0);
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v59 = *a5;
        v61 = *a3;
        v44 = a3[2];
        v45 = a5[2];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = vadd_f32(v44, v45);
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        *v52[3].f32 = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

{
  v12 = *a5;
  v263 = a5[1];
  v14 = a5[2];
  v13 = a5[3];
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v18 = a3[3];
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>(0);
  if (v19 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v20 = v19;
    v258 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, v18, v258, v12, v263, v14, v13);
    }

    else
    {
      v255 = a1;
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v253 = v23;
      v24 = swift_dynamicCastClass();
      v254 = a4;
      v252 = a2;
      if (v24)
      {
        v251 = *(v24 + 16);

        v25 = *(a3 + 3);
        v279 = *(a3 + 2);
        v280 = v25;
        v26 = *(a3 + 5);
        v281 = *(a3 + 4);
        v282 = v26;
        v27 = *(a3 + 1);
        v277 = *a3;
        v278 = v27;
        v28 = *(a5 + 3);
        v273 = *(a5 + 2);
        v274 = v28;
        v29 = *(a5 + 5);
        v275 = *(a5 + 4);
        v276 = v29;
        v30 = *(a5 + 1);
        v271 = *a5;
        v272 = v30;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v32 = v31;
        v250 = &v248;
        v33 = MEMORY[0x1E69E7DE0];
        v34 = *(MEMORY[0x1E69E7DE0] - 8);
        v35 = v34[8];
        v36 = MEMORY[0x1EEE9AC00](v31);
        v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
        v38 = v34[2];
        v39 = v38(&v248 - v37, &v277, v33, v36);
        v260 = v38;
        v249 = &v248;
        v40 = MEMORY[0x1EEE9AC00](v39);
        v41(&v248 - v37, &v271, v33, v40);
        v263 = *(v32 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v42 = v34[1];
        v42(&v248 - v37, v33);
        v43 = (v42)(&v248 - v37, v33);
        v250 = &v248;
        *&v296 = &v283;
        v248 = &v284;
        v259 = v35;
        v44 = MEMORY[0x1EEE9AC00](v43);
        v45 = v260;
        v46 = (v260)(&v248 - v37, &v277 + 8, v33, v44);
        v249 = &v248;
        v47 = MEMORY[0x1EEE9AC00](v46);
        v45(&v248 - v37, &v271 + 8, v33, v47);
        v48 = v248;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v262 = (v34 + 1);
        v42(&v248 - v37, v33);
        v49 = (v42)(&v248 - v37, v33);
        v250 = &v248;
        *(&v296 + 1) = v48;
        v50 = MEMORY[0x1EEE9AC00](v49);
        v261 = v37;
        v51 = v260;
        v52 = (v260)(&v248 - v37, &v278, v33, v50);
        v249 = &v248;
        v53 = MEMORY[0x1EEE9AC00](v52);
        v51(&v248 - v37, &v272, v33, v53);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v42(&v248 - v37, v33);
        v54 = (v42)(&v248 - v37, v33);
        v250 = &v248;
        *&v297 = &v285;
        v248 = &v286;
        v55 = MEMORY[0x1EEE9AC00](v54);
        v56 = v260;
        v57 = v261;
        v58 = &v248 - v261;
        v59 = (v260)(&v248 - v261, &v278 + 8, v33, v55);
        v249 = &v248;
        v60 = MEMORY[0x1EEE9AC00](v59);
        v256 = v34 + 2;
        v56(&v248 - v57, &v272 + 8, v33, v60);
        v61 = v248;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v42(&v248 - v57, v33);
        v62 = (v42)(v58, v33);
        v250 = &v248;
        *(&v297 + 1) = v61;
        v248 = &v287;
        v63 = MEMORY[0x1EEE9AC00](v62);
        v64 = v260;
        v65 = v261;
        v66 = (v260)(&v248 - v261, &v279, v33, v63);
        v249 = &v248;
        v67 = MEMORY[0x1EEE9AC00](v66);
        v64(&v248 - v65, &v273, v33, v67);
        v68 = v248;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v257 = v42;
        v42(&v248 - v65, v33);
        v69 = (v42)(&v248 - v65, v33);
        v250 = &v248;
        *&v298 = v68;
        v70 = MEMORY[0x1EEE9AC00](v69);
        v71 = v260;
        v72 = (v260)(&v248 - v65, &v279 + 8, v33, v70);
        v249 = &v248;
        v73 = MEMORY[0x1EEE9AC00](v72);
        v71(&v248 - v65, &v273 + 8, v33, v73);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v74 = v257;
        v257(&v248 - v65, v33);
        v75 = v74(&v248 - v65, v33);
        v250 = &v248;
        *(&v298 + 1) = &v288;
        v76 = MEMORY[0x1EEE9AC00](v75);
        v77 = &v248 - v65;
        v78 = (v71)(&v248 - v65, &v280, v33, v76);
        v249 = &v248;
        v79 = MEMORY[0x1EEE9AC00](v78);
        v71(&v248 - v65, &v274, v33, v79);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v80 = &v248 - v65;
        v81 = v257;
        v257(v80, v33);
        v82 = v81(v77, v33);
        v250 = &v248;
        *&v299 = &v289;
        v83 = MEMORY[0x1EEE9AC00](v82);
        v84 = v261;
        v85 = &v248 - v261;
        v86 = (v71)(&v248 - v261, &v280 + 8, v33, v83);
        v249 = &v248;
        v87 = MEMORY[0x1EEE9AC00](v86);
        v71(&v248 - v84, &v274 + 8, v33, v87);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v81(&v248 - v84, v33);
        v88 = v81(v85, v33);
        v250 = &v248;
        *(&v299 + 1) = &v290;
        v89 = MEMORY[0x1EEE9AC00](v88);
        v90 = v261;
        v91 = &v248 - v261;
        v92 = (v71)(&v248 - v261, &v281, v33, v89);
        v249 = &v248;
        v93 = MEMORY[0x1EEE9AC00](v92);
        v71(&v248 - v90, &v275, v33, v93);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v94 = &v248 - v90;
        v95 = v257;
        v257(v94, v33);
        v96 = v95(v91, v33);
        v250 = &v248;
        *&v300 = &v291;
        v97 = MEMORY[0x1EEE9AC00](v96);
        v98 = v261;
        v99 = (v71)(&v248 - v261, &v281 + 8, v33, v97);
        v249 = &v248;
        v100 = MEMORY[0x1EEE9AC00](v99);
        v71(&v248 - v98, &v275 + 8, v33, v100);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v95(&v248 - v98, v33);
        v101 = v95(&v248 - v98, v33);
        v250 = &v248;
        *(&v300 + 1) = &v292;
        v102 = MEMORY[0x1EEE9AC00](v101);
        v103 = v261;
        v104 = (v71)(&v248 - v261, &v282, v33, v102);
        v249 = &v248;
        v105 = MEMORY[0x1EEE9AC00](v104);
        v71(&v248 - v103, &v276, v33, v105);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v95(&v248 - v103, v33);
        v106 = v95(&v248 - v103, v33);
        v250 = &v248;
        *&v301 = &v293;
        v107 = MEMORY[0x1EEE9AC00](v106);
        v109 = v260;
        v108 = v261;
        v110 = (v260)(&v248 - v261, &v282 + 8, v33, v107);
        v249 = &v248;
        v111 = MEMORY[0x1EEE9AC00](v110);
        v109(&v248 - v108, &v276 + 8, v33, v111);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v95(&v248 - v108, v33);
        v95(&v248 - v108, v33);
        v112 = v252;
        *(&v301 + 1) = &v294;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v296, &v303);
        v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v114 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v112, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v258;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114[2] + 1, 1, v114);
        }

        v118 = v114[2];
        v117 = v114[3];
        v119 = v254;
        if (v118 >= v117 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v114);
        }

        v114[2] = v118 + 1;
        v120 = &v114[13 * v118];
        v121 = v304;
        *(v120 + 2) = v303;
        *(v120 + 3) = v121;
        v122 = v305;
        v123 = v306;
        v124 = v308;
        *(v120 + 6) = v307;
        *(v120 + 7) = v124;
        *(v120 + 4) = v122;
        *(v120 + 5) = v123;
        v120[16] = v113;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
        *(&v266 + 1) = v125;
        *&v265 = v114;
        specialized Dictionary.subscript.setter(&v265, v125);

        v126 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 2) + 1, 1, v126);
        }

        v128 = *(v126 + 2);
        v127 = *(v126 + 3);
        if (v128 >= v127 >> 1)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v126);
        }

        *(v126 + 2) = v128 + 1;
        v129 = &v126[16 * v128];
        *(v129 + 4) = v119;
        *(v129 + 5) = v116;
        v130 = swift_allocObject();
        *(v130 + 16) = v126;
        *v255 = v130;
      }

      else
      {
        v256 = v22;
        v302 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v131 = *a2;
        v132 = *(a3 + 3);
        v305 = *(a3 + 2);
        v306 = v132;
        v133 = *(a3 + 5);
        v307 = *(a3 + 4);
        v308 = v133;
        v134 = *(a3 + 1);
        v303 = *a3;
        v304 = v134;

        v135 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v302, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        v136 = v258;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135);
        }

        v138 = v135[2];
        v137 = v135[3];
        if (v138 >= v137 >> 1)
        {
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v135);
        }

        v135[2] = v138 + 1;
        v139 = &v135[13 * v138];
        v140 = v304;
        *(v139 + 2) = v303;
        *(v139 + 3) = v140;
        v141 = v305;
        v142 = v306;
        v143 = v308;
        *(v139 + 6) = v307;
        *(v139 + 7) = v143;
        *(v139 + 4) = v141;
        *(v139 + 5) = v142;
        v139[16] = v131;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
        v295[3] = v144;
        v295[0] = v135;
        v251 = v144;
        specialized Dictionary.subscript.setter(v295, v144);
        v145 = *(a3 + 3);
        v273 = *(a3 + 2);
        v274 = v145;
        v146 = *(a3 + 5);
        v275 = *(a3 + 4);
        v276 = v146;
        v147 = *(a3 + 1);
        v271 = *a3;
        v272 = v147;
        v148 = *(a5 + 3);
        v267 = *(a5 + 2);
        v268 = v148;
        v149 = *(a5 + 5);
        v269 = *(a5 + 4);
        v270 = v149;
        v150 = *(a5 + 1);
        v265 = *a5;
        v266 = v150;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v152 = v151;
        v250 = &v248;
        v153 = MEMORY[0x1E69E7DE0];
        v154 = *(MEMORY[0x1E69E7DE0] - 8);
        v155 = *(v154 + 8);
        v156 = MEMORY[0x1EEE9AC00](v151);
        v263 = v155;
        v157 = (*&v155 + 15) & 0xFFFFFFFFFFFFFFF0;
        v158 = v154[2];
        v159 = v158(&v248 - v157, &v271, v153, v156);
        v160 = MEMORY[0x1EEE9AC00](v159);
        v158(&v248 - v157, &v265, v153, v160);
        v261 = *(v152 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v161 = v154[1];
        v161(&v248 - v157, v153);
        v162 = (v161)(&v248 - v157, v153);
        v250 = &v248;
        v283 = &v277;
        v163 = MEMORY[0x1EEE9AC00](v162);
        v262 = v157;
        v164 = v158(&v248 - v157, (&v271 + 8), v153, v163);
        v249 = &v248;
        v165 = MEMORY[0x1EEE9AC00](v164);
        v259 = v158;
        v158(&v248 - v157, (&v265 + 8), v153, v165);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v161(&v248 - v157, v153);
        v166 = (v161)(&v248 - v157, v153);
        v250 = &v248;
        v284 = &v277 + 8;
        v248 = &v278;
        v167 = MEMORY[0x1EEE9AC00](v166);
        v168 = v262;
        v169 = (&v248 - v262);
        v170 = v158((&v248 - v262), &v272, v153, v167);
        v249 = &v248;
        v171 = MEMORY[0x1EEE9AC00](v170);
        v172 = (&v248 - v168);
        v158((&v248 - v168), &v266, v153, v171);
        v173 = v248;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v260 = v161;
        v161(v172, v153);
        v174 = (v161)(v169, v153);
        v250 = &v248;
        v285 = v173;
        v175 = MEMORY[0x1EEE9AC00](v174);
        v176 = v262;
        v177 = (&v248 - v262);
        v178 = v259;
        v179 = (v259)(&v248 - v262, &v272 + 8, v153, v175);
        v249 = &v248;
        v180 = MEMORY[0x1EEE9AC00](v179);
        v181 = (&v248 - v176);
        v178(v181, &v266 + 8, v153, v180);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v182 = v181;
        v183 = v260;
        (v260)(v182, v153);
        v184 = v183(v177, v153);
        v250 = &v248;
        v286 = &v278 + 8;
        v185 = MEMORY[0x1EEE9AC00](v184);
        v186 = v262;
        v187 = (v178)(&v248 - v262, &v273, v153, v185);
        v249 = &v248;
        v188 = MEMORY[0x1EEE9AC00](v187);
        v178((&v248 - v186), &v267, v153, v188);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v189 = v260;
        (v260)(&v248 - v186, v153);
        v190 = v189(&v248 - v186, v153);
        v191 = (v154 + 1);
        v250 = &v248;
        v287 = &v279;
        v192 = MEMORY[0x1EEE9AC00](v190);
        v193 = v262;
        v194 = v259;
        v195 = (v259)(&v248 - v262, &v273 + 8, v153, v192);
        v249 = &v248;
        v196 = MEMORY[0x1EEE9AC00](v195);
        v194(&v248 - v193, &v267 + 8, v153, v196);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v197 = v260;
        v257 = v191;
        (v260)(&v248 - v193, v153);
        v198 = v197(&v248 - v193, v153);
        v250 = &v248;
        v288 = &v279 + 8;
        v199 = MEMORY[0x1EEE9AC00](v198);
        v200 = v259;
        v201 = (v259)(&v248 - v193, &v274, v153, v199);
        v249 = &v248;
        v202 = MEMORY[0x1EEE9AC00](v201);
        v200(&v248 - v193, &v268, v153, v202);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v203 = v260;
        (v260)(&v248 - v193, v153);
        v204 = v203(&v248 - v193, v153);
        v250 = &v248;
        v289 = &v280;
        v205 = MEMORY[0x1EEE9AC00](v204);
        v206 = (v200)(&v248 - v193, &v274 + 8, v153, v205);
        v249 = &v248;
        v207 = MEMORY[0x1EEE9AC00](v206);
        v200(&v248 - v193, (&v268 + 8), v153, v207);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v203(&v248 - v193, v153);
        v208 = v203(&v248 - v193, v153);
        v250 = &v248;
        v290 = &v280 + 8;
        v209 = MEMORY[0x1EEE9AC00](v208);
        v210 = v262;
        v211 = (&v248 - v262);
        v212 = (v200)(&v248 - v262, &v275, v153, v209);
        v249 = &v248;
        v213 = MEMORY[0x1EEE9AC00](v212);
        v200(&v248 - v210, &v269, v153, v213);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v214 = (&v248 - v210);
        v215 = v260;
        (v260)(v214, v153);
        v216 = v215(v211, v153);
        v250 = &v248;
        v291 = &v281;
        v217 = MEMORY[0x1EEE9AC00](v216);
        v218 = v262;
        v219 = (v200)(&v248 - v262, &v275 + 8, v153, v217);
        v249 = &v248;
        v220 = MEMORY[0x1EEE9AC00](v219);
        v200(&v248 - v218, (&v269 + 8), v153, v220);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v215((&v248 - v218), v153);
        v221 = v215((&v248 - v218), v153);
        v250 = &v248;
        v292 = &v281 + 8;
        v222 = MEMORY[0x1EEE9AC00](v221);
        v223 = v259;
        v224 = (v259)(&v248 - v218, &v276, v153, v222);
        v249 = &v248;
        v225 = MEMORY[0x1EEE9AC00](v224);
        v223(&v248 - v218, &v270, v153, v225);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v226 = v260;
        (v260)(&v248 - v218, v153);
        v227 = v226(&v248 - v218, v153);
        v250 = &v248;
        v293 = &v282;
        v228 = MEMORY[0x1EEE9AC00](v227);
        v229 = v262;
        v230 = (&v248 - v262);
        v231 = (v223)(&v248 - v262, &v276 + 8, v153, v228);
        v249 = &v248;
        v232 = MEMORY[0x1EEE9AC00](v231);
        v233 = (&v248 - v229);
        v223(v233, (&v270 + 8), v153, v232);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v226(v233, v153);
        v226(v230, v153);
        v294 = &v282 + 8;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v283, &v296);
        v234 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v235 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v302, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v235 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v235[2] + 1, 1, v235);
        }

        v236 = v252;
        v238 = v235[2];
        v237 = v235[3];
        if (v238 >= v237 >> 1)
        {
          v235 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v237 > 1), v238 + 1, 1, v235);
        }

        v235[2] = v238 + 1;
        v239 = &v235[13 * v238];
        v240 = v297;
        *(v239 + 2) = v296;
        *(v239 + 3) = v240;
        v241 = v298;
        v242 = v299;
        v243 = v301;
        *(v239 + 6) = v300;
        *(v239 + 7) = v243;
        *(v239 + 4) = v241;
        *(v239 + 5) = v242;
        v239[16] = v234;
        v264[3] = v251;
        v264[0] = v235;
        specialized Dictionary.subscript.setter(v264, v251);
        v244 = v302;

        *v236 = v244;
        v245 = v254;

        v246 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v256, v245, v136);
        v247 = swift_allocObject();
        *(v247 + 16) = v246;
        *v255 = v247;
      }
    }
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v58 = *a5;
        v60 = *a3;
        v18 = a3[2];
        v19 = a5[2];
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = vadd_f32(v18, v19);
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        *v26[3].f32 = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 1);
        v37 = *(a3 + 2);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        v41[5] = v36;
        v41[6] = v37;
        v41[7] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v59 = *a5;
        v61 = *a3;
        v44 = a3[2];
        v45 = a5[2];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = vadd_f32(v44, v45);
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        *v52[3].f32 = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, void *a5, double a6)
{
  v12 = *a5;
  v13 = (a5 + 1);
  v272 = *(a5 + 1);
  v15 = *(a5 + 2);
  v14 = *(a5 + 3);
  v16 = *a3;
  v17 = (a3 + 8);
  v18 = *(a3 + 1);
  v19 = *(a3 + 2);
  v20 = *(a3 + 3);
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
  if (v21 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v22 = v21;
    *&v265 = v16;
    v266 = v12;
    v267 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v22 == v23)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *&v265, v18, v19, v20, v267, v266, v272, v15, v14);
    }

    else
    {
      v261 = a4;
      v262 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v260 = v25;
      v26 = swift_dynamicCastClass();
      v259 = a2;
      if (v26)
      {
        v258 = *(v26 + 16);

        v27 = v17[3];
        v288 = v17[2];
        v289 = v27;
        v28 = v17[5];
        v290 = v17[4];
        v291 = v28;
        v29 = v17[1];
        v286 = *v17;
        v287 = v29;
        v30 = v13[3];
        v282 = v13[2];
        v283 = v30;
        v31 = v13[5];
        v284 = v13[4];
        v285 = v31;
        v32 = v13[1];
        v280 = *v13;
        v281 = v32;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v34 = v33;
        v257 = &v255;
        v35 = MEMORY[0x1E69E7DE0];
        v36 = *(MEMORY[0x1E69E7DE0] - 8);
        v37 = v36[8];
        v38 = MEMORY[0x1EEE9AC00](v33);
        v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
        v40 = v36[2];
        v41 = v40(&v255 - v39, &v286, v35, v38);
        v269 = v40;
        v256 = &v255;
        v42 = MEMORY[0x1EEE9AC00](v41);
        v43(&v255 - v39, &v280, v35, v42);
        v272 = *(v34 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v44 = v36[1];
        v44(&v255 - v39, v35);
        v45 = (v44)(&v255 - v39, v35);
        v257 = &v255;
        *&v305 = &v292;
        v255 = &v293;
        v268 = v37;
        v46 = MEMORY[0x1EEE9AC00](v45);
        v47 = v269;
        v48 = (v269)(&v255 - v39, &v286 + 8, v35, v46);
        v256 = &v255;
        v49 = MEMORY[0x1EEE9AC00](v48);
        v47(&v255 - v39, &v280 + 8, v35, v49);
        v50 = v255;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v271 = (v36 + 1);
        v44(&v255 - v39, v35);
        v51 = (v44)(&v255 - v39, v35);
        v257 = &v255;
        *(&v305 + 1) = v50;
        v52 = MEMORY[0x1EEE9AC00](v51);
        v270 = v39;
        v53 = v269;
        v54 = (v269)(&v255 - v39, &v287, v35, v52);
        v256 = &v255;
        v55 = MEMORY[0x1EEE9AC00](v54);
        v53(&v255 - v39, &v281, v35, v55);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v44(&v255 - v39, v35);
        v56 = (v44)(&v255 - v39, v35);
        v257 = &v255;
        *&v306 = &v294;
        v255 = &v295;
        v57 = MEMORY[0x1EEE9AC00](v56);
        v58 = v269;
        v59 = v270;
        v60 = &v255 - v270;
        v61 = (v269)(&v255 - v270, &v287 + 8, v35, v57);
        v256 = &v255;
        v62 = MEMORY[0x1EEE9AC00](v61);
        v263 = (v36 + 2);
        v58(&v255 - v59, &v281 + 8, v35, v62);
        v63 = v255;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v44(&v255 - v59, v35);
        v64 = (v44)(v60, v35);
        v257 = &v255;
        *(&v306 + 1) = v63;
        v255 = &v296;
        v65 = MEMORY[0x1EEE9AC00](v64);
        v66 = v269;
        v67 = v270;
        v68 = (v269)(&v255 - v270, &v288, v35, v65);
        v256 = &v255;
        v69 = MEMORY[0x1EEE9AC00](v68);
        v66(&v255 - v67, &v282, v35, v69);
        v70 = v255;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v264 = v44;
        v44(&v255 - v67, v35);
        v71 = (v44)(&v255 - v67, v35);
        v257 = &v255;
        *&v307 = v70;
        v72 = MEMORY[0x1EEE9AC00](v71);
        v73 = v269;
        v74 = (v269)(&v255 - v67, &v288 + 8, v35, v72);
        v256 = &v255;
        v75 = MEMORY[0x1EEE9AC00](v74);
        v73(&v255 - v67, &v282 + 8, v35, v75);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v76 = v264;
        v264(&v255 - v67, v35);
        v77 = v76(&v255 - v67, v35);
        v257 = &v255;
        *(&v307 + 1) = &v297;
        v78 = MEMORY[0x1EEE9AC00](v77);
        v79 = &v255 - v67;
        v80 = (v73)(&v255 - v67, &v289, v35, v78);
        v256 = &v255;
        v81 = MEMORY[0x1EEE9AC00](v80);
        v73(&v255 - v67, &v283, v35, v81);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v82 = &v255 - v67;
        v83 = v264;
        v264(v82, v35);
        v84 = v83(v79, v35);
        v257 = &v255;
        *&v308 = &v298;
        v85 = MEMORY[0x1EEE9AC00](v84);
        v86 = v270;
        v87 = &v255 - v270;
        v88 = (v73)(&v255 - v270, &v289 + 8, v35, v85);
        v256 = &v255;
        v89 = MEMORY[0x1EEE9AC00](v88);
        v73(&v255 - v86, &v283 + 8, v35, v89);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v83(&v255 - v86, v35);
        v90 = v83(v87, v35);
        v257 = &v255;
        *(&v308 + 1) = &v299;
        v91 = MEMORY[0x1EEE9AC00](v90);
        v92 = v270;
        v93 = &v255 - v270;
        v94 = (v73)(&v255 - v270, &v290, v35, v91);
        v256 = &v255;
        v95 = MEMORY[0x1EEE9AC00](v94);
        v73(&v255 - v92, &v284, v35, v95);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v96 = &v255 - v92;
        v97 = v264;
        v264(v96, v35);
        v98 = v97(v93, v35);
        v257 = &v255;
        *&v309 = &v300;
        v99 = MEMORY[0x1EEE9AC00](v98);
        v100 = v270;
        v101 = (v73)(&v255 - v270, &v290 + 8, v35, v99);
        v256 = &v255;
        v102 = MEMORY[0x1EEE9AC00](v101);
        v73(&v255 - v100, &v284 + 8, v35, v102);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v97(&v255 - v100, v35);
        v103 = v97(&v255 - v100, v35);
        v257 = &v255;
        *(&v309 + 1) = &v301;
        v104 = MEMORY[0x1EEE9AC00](v103);
        v105 = v270;
        v106 = (v73)(&v255 - v270, &v291, v35, v104);
        v256 = &v255;
        v107 = MEMORY[0x1EEE9AC00](v106);
        v73(&v255 - v105, &v285, v35, v107);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v97(&v255 - v105, v35);
        v108 = v97(&v255 - v105, v35);
        v257 = &v255;
        *&v310 = &v302;
        v109 = MEMORY[0x1EEE9AC00](v108);
        v111 = v269;
        v110 = v270;
        v112 = (v269)(&v255 - v270, &v291 + 8, v35, v109);
        v256 = &v255;
        v113 = MEMORY[0x1EEE9AC00](v112);
        v111(&v255 - v110, &v285 + 8, v35, v113);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v97(&v255 - v110, v35);
        v97(&v255 - v110, v35);
        v114 = v259;
        *(&v310 + 1) = &v303;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v305, &v312);
        v115 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v116 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v114, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v267;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116[2] + 1, 1, v116);
        }

        v119 = v266 + *&v265;
        v121 = v116[2];
        v120 = v116[3];
        if (v121 >= v120 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v116);
        }

        v116[2] = v121 + 1;
        v122 = &v116[14 * v121];
        *(v122 + 4) = v119;
        v123 = v312;
        *(v122 + 7) = v313;
        *(v122 + 5) = v123;
        v124 = v314;
        v125 = v315;
        v126 = v316;
        *(v122 + 15) = v317;
        *(v122 + 13) = v126;
        *(v122 + 11) = v125;
        *(v122 + 9) = v124;
        v122[17] = v115;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
        *(&v275 + 1) = v127;
        *&v274 = v116;
        specialized Dictionary.subscript.setter(&v274, v127);
        v128 = v261;

        v129 = v258;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
        }

        v131 = *(v129 + 2);
        v130 = *(v129 + 3);
        if (v131 >= v130 >> 1)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v129);
        }

        *(v129 + 2) = v131 + 1;
        v132 = &v129[16 * v131];
        *(v132 + 4) = v128;
        *(v132 + 5) = v118;
        v133 = swift_allocObject();
        *(v133 + 16) = v129;
        *v262 = v133;
      }

      else
      {
        v265 = v24;
        v311 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v134 = *a2;
        v135 = a3[5];
        v316 = a3[4];
        v317 = v135;
        v318 = *(a3 + 12);
        v136 = a3[1];
        v312 = *a3;
        v313 = v136;
        v137 = a3[3];
        v314 = a3[2];
        v315 = v137;

        v138 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v311, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        v139 = v267;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138[2] + 1, 1, v138);
        }

        v141 = v138[2];
        v140 = v138[3];
        if (v141 >= v140 >> 1)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v138);
        }

        v138[2] = v141 + 1;
        v142 = &v138[14 * v141];
        v143 = v312;
        v144 = v314;
        *(v142 + 3) = v313;
        *(v142 + 4) = v144;
        *(v142 + 2) = v143;
        v145 = v315;
        v146 = v317;
        v147 = v318;
        *(v142 + 6) = v316;
        *(v142 + 7) = v146;
        *(v142 + 5) = v145;
        v142[16] = v147;
        v142[17] = v134;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
        v304[3] = v148;
        v304[0] = v138;
        v264 = v148;
        specialized Dictionary.subscript.setter(v304, v148);
        v149 = *a3;
        v150 = *a5;
        v151 = v17[3];
        v282 = v17[2];
        v283 = v151;
        v152 = v17[5];
        v284 = v17[4];
        v285 = v152;
        v153 = v17[1];
        v280 = *v17;
        v281 = v153;
        v154 = v13[3];
        v276 = v13[2];
        v277 = v154;
        v155 = v13[5];
        v278 = v13[4];
        v279 = v155;
        v156 = v13[1];
        v274 = *v13;
        v275 = v156;
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v158 = v157;
        v263 = &v255;
        v159 = MEMORY[0x1E69E7DE0];
        v160 = *(MEMORY[0x1E69E7DE0] - 8);
        v161 = *(v160 + 8);
        v162 = MEMORY[0x1EEE9AC00](v157);
        v272 = v161;
        v163 = (*&v161 + 15) & 0xFFFFFFFFFFFFFFF0;
        v164 = v160[2];
        v165 = v164(&v255 - v163, &v280, v159, v162);
        v166 = MEMORY[0x1EEE9AC00](v165);
        v164(&v255 - v163, &v274, v159, v166);
        v270 = *(v158 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v167 = v160[1];
        v167(&v255 - v163, v159);
        v168 = (v167)(&v255 - v163, v159);
        v263 = &v255;
        v292 = &v286;
        v169 = MEMORY[0x1EEE9AC00](v168);
        v271 = v163;
        v170 = v164(&v255 - v163, (&v280 + 8), v159, v169);
        v258 = &v255;
        v171 = MEMORY[0x1EEE9AC00](v170);
        v268 = v164;
        v164(&v255 - v163, (&v274 + 8), v159, v171);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v167(&v255 - v163, v159);
        v172 = (v167)(&v255 - v163, v159);
        v263 = &v255;
        v293 = &v286 + 8;
        v257 = &v287;
        v173 = MEMORY[0x1EEE9AC00](v172);
        v174 = v271;
        v175 = (&v255 - v271);
        v176 = v164((&v255 - v271), &v281, v159, v173);
        v258 = &v255;
        v177 = MEMORY[0x1EEE9AC00](v176);
        v178 = (&v255 - v174);
        v164((&v255 - v174), &v275, v159, v177);
        v179 = v257;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v269 = v167;
        v167(v178, v159);
        v180 = (v167)(v175, v159);
        v263 = &v255;
        v294 = v179;
        v181 = MEMORY[0x1EEE9AC00](v180);
        v182 = v271;
        v183 = (&v255 - v271);
        v184 = v268;
        v185 = (v268)(&v255 - v271, &v281 + 8, v159, v181);
        v258 = &v255;
        v186 = MEMORY[0x1EEE9AC00](v185);
        v187 = (&v255 - v182);
        v184(v187, &v275 + 8, v159, v186);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v188 = v187;
        v189 = v269;
        (v269)(v188, v159);
        v190 = v189(v183, v159);
        v263 = &v255;
        v295 = &v287 + 8;
        v191 = MEMORY[0x1EEE9AC00](v190);
        v192 = v271;
        v193 = (v184)(&v255 - v271, &v282, v159, v191);
        v258 = &v255;
        v194 = MEMORY[0x1EEE9AC00](v193);
        v184((&v255 - v192), &v276, v159, v194);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v195 = v269;
        (v269)(&v255 - v192, v159);
        v196 = v195(&v255 - v192, v159);
        v197 = v160 + 1;
        v263 = &v255;
        v296 = &v288;
        v198 = MEMORY[0x1EEE9AC00](v196);
        v199 = v271;
        v200 = v268;
        v201 = (v268)(&v255 - v271, &v282 + 8, v159, v198);
        v258 = &v255;
        v202 = MEMORY[0x1EEE9AC00](v201);
        v200(&v255 - v199, &v276 + 8, v159, v202);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v203 = v269;
        v266 = *&v197;
        (v269)(&v255 - v199, v159);
        v204 = v203(&v255 - v199, v159);
        v263 = &v255;
        v297 = &v288 + 8;
        v205 = MEMORY[0x1EEE9AC00](v204);
        v206 = v268;
        v207 = (v268)(&v255 - v199, &v283, v159, v205);
        v258 = &v255;
        v208 = MEMORY[0x1EEE9AC00](v207);
        v206(&v255 - v199, &v277, v159, v208);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v209 = v269;
        (v269)(&v255 - v199, v159);
        v210 = v209(&v255 - v199, v159);
        v263 = &v255;
        v298 = &v289;
        v211 = MEMORY[0x1EEE9AC00](v210);
        v212 = (v206)(&v255 - v199, &v283 + 8, v159, v211);
        v258 = &v255;
        v213 = MEMORY[0x1EEE9AC00](v212);
        v206(&v255 - v199, (&v277 + 8), v159, v213);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v209(&v255 - v199, v159);
        v214 = v209(&v255 - v199, v159);
        v263 = &v255;
        v299 = &v289 + 8;
        v215 = MEMORY[0x1EEE9AC00](v214);
        v216 = v271;
        v217 = (&v255 - v271);
        v218 = (v206)(&v255 - v271, &v284, v159, v215);
        v258 = &v255;
        v219 = MEMORY[0x1EEE9AC00](v218);
        v206(&v255 - v216, &v278, v159, v219);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v220 = (&v255 - v216);
        v221 = v269;
        (v269)(v220, v159);
        v222 = v221(v217, v159);
        v263 = &v255;
        v300 = &v290;
        v223 = MEMORY[0x1EEE9AC00](v222);
        v224 = v271;
        v225 = (v206)(&v255 - v271, &v284 + 8, v159, v223);
        v258 = &v255;
        v226 = MEMORY[0x1EEE9AC00](v225);
        v206(&v255 - v224, (&v278 + 8), v159, v226);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v221((&v255 - v224), v159);
        v227 = v221((&v255 - v224), v159);
        v263 = &v255;
        v301 = &v290 + 8;
        v228 = MEMORY[0x1EEE9AC00](v227);
        v229 = v268;
        v230 = (v268)(&v255 - v224, &v285, v159, v228);
        v258 = &v255;
        v231 = MEMORY[0x1EEE9AC00](v230);
        v229(&v255 - v224, &v279, v159, v231);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v232 = v269;
        (v269)(&v255 - v224, v159);
        v233 = v232(&v255 - v224, v159);
        v263 = &v255;
        v302 = &v291;
        v234 = MEMORY[0x1EEE9AC00](v233);
        v235 = v271;
        v236 = (&v255 - v271);
        v237 = (v229)(&v255 - v271, &v285 + 8, v159, v234);
        v258 = &v255;
        v238 = MEMORY[0x1EEE9AC00](v237);
        v239 = (&v255 - v235);
        v229(v239, (&v279 + 8), v159, v238);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v232(v239, v159);
        v232(v236, v159);
        v303 = &v291 + 8;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v292, &v305);
        v240 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v241 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v311, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v241[2] + 1, 1, v241);
        }

        v242 = v259;
        v243 = v149 + v150;
        v245 = v241[2];
        v244 = v241[3];
        if (v245 >= v244 >> 1)
        {
          v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v244 > 1), v245 + 1, 1, v241);
        }

        v241[2] = v245 + 1;
        v246 = &v241[14 * v245];
        *(v246 + 4) = v243;
        v247 = v305;
        *(v246 + 7) = v306;
        *(v246 + 5) = v247;
        v248 = v307;
        v249 = v308;
        v250 = v309;
        *(v246 + 15) = v310;
        *(v246 + 13) = v250;
        *(v246 + 11) = v249;
        *(v246 + 9) = v248;
        v246[17] = v240;
        v273[3] = v264;
        v273[0] = v241;
        specialized Dictionary.subscript.setter(v273, v264);
        v251 = v311;

        *v242 = v251;
        v252 = v261;

        v253 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v265, v252, v139);
        v254 = swift_allocObject();
        *(v254 + 16) = v253;
        *v262 = v254;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, unint64_t *a2, __int128 *a3, uint64_t a4, __int128 *a5, double a6)
{
  v11 = a3[5];
  v102 = a3[4];
  v103 = v11;
  v12 = a3[7];
  v104 = a3[6];
  v105 = v12;
  v13 = a3[1];
  v98 = *a3;
  v99 = v13;
  v14 = a3[3];
  v100 = a3[2];
  v101 = v14;
  v15 = a5[5];
  v94 = a5[4];
  v95 = v15;
  v16 = a5[7];
  v96 = a5[6];
  v97 = v16;
  v17 = a5[1];
  v90 = *a5;
  v91 = v17;
  v18 = a5[3];
  v92 = a5[2];
  v93 = v18;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v19 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *&v98, *(&v98 + 1), *&v99, *(&v99 + 1), a6, *&v90, *(&v90 + 1), *&v91, *(&v91 + 1));
  }

  else
  {
    v20 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = *(v21 + 16);

      static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v98);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v24 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
      }

      v24[2] = v26 + 1;
      v27 = &v24[17 * v26];
      v28 = v82;
      v29 = v83;
      v30 = v85;
      *(v27 + 4) = v84;
      *(v27 + 5) = v30;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v31 = v86;
      v32 = v87;
      v33 = v89;
      *(v27 + 8) = v88;
      *(v27 + 9) = v33;
      *(v27 + 6) = v31;
      *(v27 + 7) = v32;
      v27[20] = v23;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState);
      *(&v74 + 1) = v34;
      *&v73 = v24;
      specialized Dictionary.subscript.setter(&v73, v34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = a4;
      *(v37 + 5) = a6;
      v38 = swift_allocObject();
      *(v38 + 16) = v22;
      *a1 = v38;
    }

    else
    {
      v81 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v39 = a3[5];
      v86 = a3[4];
      v87 = v39;
      v40 = a3[7];
      v88 = a3[6];
      v89 = v40;
      v41 = a3[1];
      v82 = *a3;
      v83 = v41;
      v42 = a3[3];
      v84 = a3[2];
      v85 = v42;
      v43 = *a2;

      v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v81, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      v47 = &v44[17 * v46];
      v48 = v82;
      v49 = v83;
      v50 = v85;
      *(v47 + 4) = v84;
      *(v47 + 5) = v50;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v51 = v86;
      v52 = v87;
      v53 = v89;
      *(v47 + 8) = v88;
      *(v47 + 9) = v53;
      *(v47 + 6) = v51;
      *(v47 + 7) = v52;
      v47[20] = v43;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState);
      v55 = v54;
      *(&v74 + 1) = v54;
      *&v73 = v44;
      specialized Dictionary.subscript.setter(&v73, v54);
      static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v98);
      v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v57 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v81, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
      }

      v59 = v57[2];
      v58 = v57[3];
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
        v60 = v59 + 1;
        v57 = v71;
      }

      v57[2] = v60;
      v61 = &v57[17 * v59];
      v62 = v73;
      v63 = v74;
      v64 = v76;
      *(v61 + 4) = v75;
      *(v61 + 5) = v64;
      *(v61 + 2) = v62;
      *(v61 + 3) = v63;
      v65 = v77;
      v66 = v78;
      v67 = v80;
      *(v61 + 8) = v79;
      *(v61 + 9) = v67;
      *(v61 + 6) = v65;
      *(v61 + 7) = v66;
      v61[20] = v56;
      v72[3] = v55;
      v72[0] = v57;
      specialized Dictionary.subscript.setter(v72, v55);
      v68 = v81;

      *a2 = v68;

      v69 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v20, a4, a6);
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *a1 = v70;
    }
  }
}

BOOL _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  v10 = *(a2 + 48);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || v5 != v8)
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return (v10 & 1) == 0 && v6 == v9;
  }

  return (v10 & 1) != 0;
}

BOOL _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 28);
  v7 = *(a2 + 28);
  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 32);
  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*(a1 + 16), *(a2 + 16));
  result = 0;
  if ((v12 & 1) != 0 && v9 == v8)
  {
    if (v11)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      return *(a1 + 48) == *(a2 + 48) && *(a1 + 40) == *(a2 + 40);
    }

    result = 0;
    if ((v10 & 1) == 0 && v6 == v7)
    {
      return *(a1 + 48) == *(a2 + 48) && *(a1 + 40) == *(a2 + 40);
    }
  }

  return result;
}

uint64_t _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(uint64_t result, float32x4_t **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != (*a2)[1].i64[0])
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(result + 16);
    v9 = *(result + 20);
    v20 = *(result + 28);
    v21 = *(result + 24);
    v10 = *(result + 32);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v15 = *(a2 + 8);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(*(result + 8), a2[1]))
    {
      v16 = v8 == v11 && v9 == v12;
      v17 = v16 && v21 == v13;
      v18 = v17 && v20 == v14;
      if (v18 && v10 == v15)
      {
        return 1;
      }
    }

    return 0;
  }

  f32 = v2[2].f32;
  v7 = v3[2].f32;
  while (v4)
  {
    if (*f32 != *v7)
    {
      return 0;
    }

    ++f32;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSd_ACy12CoreGraphics7CGFloatVACyAhCyAhCyACyA2HGAIGGGGTt1g5(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v6;
  v7 = *(a2 + 48);
  v12[0] = *(a2 + 32);
  v12[1] = v7;
  result = 0;
  if (v4 == v5)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v9 = v8;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    if (static AnimatablePair.== infix(_:_:)(v13, v12, v9, v9, v10, v10))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSf_AA16_ShapeStyle_PackV6EffectV4KindO0C4DataOTt1B5(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 48))
    {
      if (*(a2 + 48))
      {
        return 1;
      }
    }

    else if ((*(a2 + 48) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }
  }

  return 0;
}

char *_s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(char *result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 8 && ((v6 = 4 * v3 + 32, v2 + 32 < a2 + v6) ? (v7 = &a2[2] >= &v2[v6]) : (v7 = 1), v7))
    {
      v8 = v3 & 0x7FFFFFFFFFFFFFF8;
      v9 = a2 + 3;
      v10 = (v2 + 48);
      v11 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = vaddq_f32(*v9, *v10);
        v10[-1] = vaddq_f32(v9[-1], v10[-1]);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v3 == v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v3 - v8;
    v14 = 4 * v8 + 32;
    v15 = &v2[v14];
    v16 = (a2->f32 + v14);
    do
    {
      v17 = *v16++;
      *v15 = v17 + *v15;
      ++v15;
      --v13;
    }

    while (v13);
LABEL_21:
    *v5 = v2;
  }

  return result;
}

char *_s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(char *result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 0xC && ((v6 = (v2 + 32), v7 = 16 * (v3 - 1), &v2[v7 + 32] >= v2 + 32) ? (v8 = &v2[v7 + 36] >= v2 + 36) : (v8 = 0), v8 ? (v9 = &v2[v7 + 44] >= v2 + 44) : (v9 = 0), v9 ? (v10 = &v2[v7 + 40] >= v2 + 40) : (v10 = 0), v10 ? (v11 = (v3 - 1) >> 60 == 0) : (v11 = 0), v11 && ((v12 = a2 + 2, v13 = 16 * v3 + 32, v6 < (a2 + v13)) ? (v14 = v12 >= &v2[v13]) : (v14 = 1), v14)))
    {
      v15 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v16 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v17 = v12[2];
        v18 = v12[3];
        v19 = *v12;
        v20 = v12[1];
        v12 += 4;
        v21 = vaddq_f32(v20, v6[1]);
        v22 = vaddq_f32(v19, *v6);
        v23 = vaddq_f32(v18, v6[3]);
        v6[2] = vaddq_f32(v17, v6[2]);
        v6[3] = v23;
        *v6 = v22;
        v6[1] = v21;
        v6 += 4;
        v16 -= 4;
      }

      while (v16);
      if (v3 == v15)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = v3 - v15;
    v25 = 16 * v15 + 32;
    v26 = &v2[v25];
    v27 = (a2 + v25);
    do
    {
      v28 = *v27++;
      *v26 = vaddq_f32(v28, *v26);
      ++v26;
      --v24;
    }

    while (v24);
LABEL_35:
    *v5 = v2;
  }

  return result;
}

char *_s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(char *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 16) >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v6 = 0;
    v7 = 0;
    *v5 = v2;
    v8 = *(v2 + 2);
    do
    {
      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 56);
      v16 = *(a2 + v6 + 72);
      v17 = *(a2 + v6 + 80);
      v18 = &v2[v6];
      *&v2[v6 + 32] = *(a2 + v6 + 32) + *&v2[v6 + 32];
      if ((v17 & 1) == 0)
      {
        if (v18[80])
        {
          *(v18 + 5) = v14.i64[0];
          *(v18 + 3) = vextq_s8(v14, v15, 8uLL);
          *(v18 + 8) = *&v15.f64[1];
          v11 = v16;
        }

        else
        {
          v9 = *(v18 + 40);
          v10 = *(v18 + 56);
          v11 = *(v18 + 9) + v16;
          v12 = vadd_f32(vmovn_s64(v14), vmovn_s64(v9));
          v13.i64[0] = v12.u32[0];
          v13.i64[1] = v12.u32[1];
          *(v18 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v14, 0x20uLL), vshrn_n_s64(v9, 0x20uLL)), 0x20uLL), v13);
          *(v18 + 56) = vaddq_f64(v10, v15);
        }

        *(v18 + 9) = v11;
        v18[80] = 0;
      }

      ++v7;
      v6 += 56;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

char *_s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(char *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 16) >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v6 = 0;
    v7 = 0;
    *v5 = v2;
    v8 = *(v2 + 2);
    do
    {
      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 56);
      v16 = *(a2 + v6 + 72);
      v17 = *(a2 + v6 + 80);
      v18 = &v2[v6];
      *&v2[v6 + 32] = *&v2[v6 + 32] - *(a2 + v6 + 32);
      if ((v17 & 1) == 0)
      {
        if (v18[80])
        {
          *(v18 + 5) = v14.i64[0];
          *(v18 + 3) = vextq_s8(v14, v15, 8uLL);
          *(v18 + 8) = *&v15.f64[1];
          v11 = v16;
        }

        else
        {
          v9 = *(v18 + 40);
          v10 = *(v18 + 56);
          v11 = *(v18 + 9) - v16;
          v12 = vsub_f32(vmovn_s64(v9), vmovn_s64(v14));
          v13.i64[0] = v12.u32[0];
          v13.i64[1] = v12.u32[1];
          *(v18 + 40) = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v9, 0x20uLL), vshrn_n_s64(v14, 0x20uLL)), 0x20uLL), v13);
          *(v18 + 56) = vsubq_f64(v10, v15);
        }

        *(v18 + 9) = v11;
        v18[80] = 0;
      }

      ++v7;
      v6 += 56;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

char *_s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(char *result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 8 && ((v6 = 4 * v3 + 32, v2 + 32 < a2 + v6) ? (v7 = &a2[2] >= &v2[v6]) : (v7 = 1), v7))
    {
      v8 = v3 & 0x7FFFFFFFFFFFFFF8;
      v9 = a2 + 3;
      v10 = (v2 + 48);
      v11 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = vsubq_f32(*v10, *v9);
        v10[-1] = vsubq_f32(v10[-1], v9[-1]);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v3 == v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v3 - v8;
    v14 = 4 * v8 + 32;
    v15 = &v2[v14];
    v16 = (a2->f32 + v14);
    do
    {
      v17 = *v16++;
      *v15 = *v15 - v17;
      ++v15;
      --v13;
    }

    while (v13);
LABEL_21:
    *v5 = v2;
  }

  return result;
}

char *_s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(char *result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 0xC && ((v6 = (v2 + 32), v7 = 16 * (v3 - 1), &v2[v7 + 32] >= v2 + 32) ? (v8 = &v2[v7 + 36] >= v2 + 36) : (v8 = 0), v8 ? (v9 = &v2[v7 + 44] >= v2 + 44) : (v9 = 0), v9 ? (v10 = &v2[v7 + 40] >= v2 + 40) : (v10 = 0), v10 ? (v11 = (v3 - 1) >> 60 == 0) : (v11 = 0), v11 && ((v12 = a2 + 2, v13 = 16 * v3 + 32, v6 < (a2 + v13)) ? (v14 = v12 >= &v2[v13]) : (v14 = 1), v14)))
    {
      v15 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v16 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v17 = v12[2];
        v18 = v12[3];
        v19 = *v12;
        v20 = v12[1];
        v12 += 4;
        v21 = vsubq_f32(v6[1], v20);
        v22 = vsubq_f32(*v6, v19);
        v23 = vsubq_f32(v6[3], v18);
        v6[2] = vsubq_f32(v6[2], v17);
        v6[3] = v23;
        *v6 = v22;
        v6[1] = v21;
        v6 += 4;
        v16 -= 4;
      }

      while (v16);
      if (v3 == v15)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = v3 - v15;
    v25 = 16 * v15 + 32;
    v26 = &v2[v25];
    v27 = (a2 + v25);
    do
    {
      v28 = *v27++;
      *v26 = vsubq_f32(*v26, v28);
      ++v26;
      --v24;
    }

    while (v24);
LABEL_35:
    *v5 = v2;
  }

  return result;
}

unint64_t *specialized AnimatorState.__allocating_init(animation:interval:at:in:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  (*(v11 + 16))(v8, v6);
  v14 = v10;
  swift_allocObject();
  return AnimatorState.init(animation:interval:at:in:finishingDefinition:)(a1, v8, &v14, a4, 0, 0);
}

uint64_t specialized AnimatableAttribute.description.getter(uint64_t a1)
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0x626174616D696E41;
}

void type metadata accessor for AGAttribute?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for AnimatableAttribute(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  v9 = v7 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = *(v6 + 64) + 1;
  }

  v11 = v10 + 7;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || ((((((v10 + 7 + ((v8 + 12) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + (v9 & (v8 + 8))) | 4) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (v9 & (v8 + 16)));
  }

  else
  {
    v16 = AssociatedTypeWitness;
    *a1 = *a2;
    v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v19[1] = v20[1];
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + v8 + 4) & ~v8);
    v24 = ((v22 + v8 + 4) & ~v8);
    if ((*(v6 + 48))((v22 + v8 + 4) & ~v8, 1, AssociatedTypeWitness))
    {
      memcpy(v23, v24, v10);
    }

    else
    {
      (*(v6 + 16))(v23, v24, v16);
      (*(v6 + 56))(v23, 0, 1, v16);
    }

    v25 = ((v23 + v11) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + v11) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    *((v25 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

_DWORD *assignWithCopy for AnimatableAttribute(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = v4 + v9;
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = (v10 & ~(v8 | 7));
  *v12 = *v11;
  v12[1] = v11[1];
  v13 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + v8 + 4) & ~v8);
  v16 = ((v14 + v8 + 4) & ~v8);
  v17 = *(v7 + 48);
  v18 = v17(v15, 1, AssociatedTypeWitness);
  v19 = v17(v16, 1, AssociatedTypeWitness);
  if (v18)
  {
    if (!v19)
    {
      (*(v7 + 16))(v15, v16, AssociatedTypeWitness);
      (*(v7 + 56))(v15, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v20 = *(v7 + 84);
    v21 = *(v7 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v7 + 24))(v15, v16, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v15, AssociatedTypeWitness);
    v20 = *(v7 + 84);
    v21 = *(v7 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v15, v16, v22);
LABEL_12:
  if (*(v7 + 84))
  {
    v23 = *(v7 + 64);
  }

  else
  {
    v23 = *(v7 + 64) + 1;
  }

  v24 = v15 + v23 + 7;
  v25 = v16 + v23 + 7;
  v26 = (v25 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  v27 = (v24 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v27 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for AnimatableAttribute(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = v4 + v9;
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = (v10 & ~(v8 | 7));
  *v12 = *v11;
  v12[1] = v11[1];
  v13 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + v8 + 4) & ~v8);
  v16 = ((v14 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness))
  {
    v17 = *(v7 + 84);
    v18 = *(v7 + 64);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v15, v16, v19);
  }

  else
  {
    (*(v7 + 32))(v15, v16, AssociatedTypeWitness);
    v21 = *(v7 + 56);
    v20 = v7 + 56;
    v21(v15, 0, 1, AssociatedTypeWitness);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = ((v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for AnimatableAttribute(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = v4 + v9;
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = (v10 & ~(v8 | 7));
  *v12 = *v11;
  v12[1] = v11[1];
  v13 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + v8 + 4) & ~v8);
  v16 = ((v14 + v8 + 4) & ~v8);
  v17 = *(v7 + 48);
  v18 = v17(v15, 1, AssociatedTypeWitness);
  v19 = v17(v16, 1, AssociatedTypeWitness);
  if (v18)
  {
    if (!v19)
    {
      (*(v7 + 32))(v15, v16, AssociatedTypeWitness);
      (*(v7 + 56))(v15, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v20 = *(v7 + 84);
    v21 = *(v7 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v7 + 40))(v15, v16, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v15, AssociatedTypeWitness);
    v20 = *(v7 + 84);
    v21 = *(v7 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v15, v16, v22);
LABEL_12:
  if (*(v7 + 84))
  {
    v23 = *(v7 + 64);
  }

  else
  {
    v23 = *(v7 + 64) + 1;
  }

  v24 = v15 + v23 + 7;
  v25 = ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v24 & 0xFFFFFFFFFFFFFFF8) = *v25;
  v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v26 & 0xFFFFFFFFFFFFFFF8) = *((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableAttribute(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 | 7;
  v13 = v11 + 7;
  if (v9 < a2 && *(a1 + ((v10 + 8) & ~v12) + ((((v13 + ((v10 + 12) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v9 + *a1 + 1;
  }

  v15 = (v10 + ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v12 + 4) & ~v12) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v17 = *((v13 + v15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = (*(v6 + 48))(v15);
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

void storeEnumTagSinglePayload for AnimatableAttribute(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v9;
  }

  v12 = (v10 + 8) & ~(v10 | 7);
  v13 = (v10 + 12) & ~v10;
  if (v8)
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = (v12 + ((((v14 + 7 + v13) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) | 4;
  if (v11 >= a2)
  {
    if (v11 < a3)
    {
      *(a1 + v15) = 0;
    }

    if (a2)
    {
      v16 = ((v10 + ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7)) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v10);
      if (v9 < 0x7FFFFFFE)
      {
        v20 = (&v16[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v20 = a2;
        }
      }

      else if (v9 >= a2)
      {
        v21 = *(v7 + 56);

        v21(v16, a2 + 1);
      }

      else
      {
        if (v14 <= 3)
        {
          v17 = ~(-1 << (8 * v14));
        }

        else
        {
          v17 = -1;
        }

        if (v14)
        {
          v18 = v17 & (~v9 + a2);
          if (v14 <= 3)
          {
            v19 = v14;
          }

          else
          {
            v19 = 4;
          }

          bzero(v16, v14);
          if (v19 > 2)
          {
            if (v19 == 3)
            {
              *v16 = v18;
              v16[2] = BYTE2(v18);
            }

            else
            {
              *v16 = v18;
            }
          }

          else if (v19 == 1)
          {
            *v16 = v18;
          }

          else
          {
            *v16 = v18;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (v12 + ((((v14 + 7 + v13) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) | 4);
    *a1 = ~v11 + a2;
    if (v11 < a3)
    {
      *(a1 + v15) = 1;
    }
  }
}

uint64_t assignWithCopy for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  return a1;
}

__n128 __swift_memcpy85_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableFrameAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 85))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for AnimatableFrameAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for AnimatableFrameAttributeVFD(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v6;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for AnimatableFrameAttributeVFD(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableFrameAttributeVFD(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 146))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for AnimatableFrameAttributeVFD(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatableAttributeHelper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || ((((v9 + 7 + ((v8 + 12) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + v8 + 4) & ~v8);
    v21 = ((v19 + v8 + 4) & ~v8);
    if ((*(v6 + 48))((v19 + v8 + 4) & ~v8, 1, AssociatedTypeWitness))
    {
      memcpy(v20, v21, v9);
    }

    else
    {
      (*(v6 + 16))(v20, v21, v15);
      (*(v6 + 56))(v20, 0, 1, v15);
    }

    v22 = ((v20 + v10) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    *((v22 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

_DWORD *assignWithCopy for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 4) & ~v10);
  v12 = ((v7 + v10 + 4) & ~v10);
  v13 = *(v9 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v9 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v9 + 84))
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = v11 + v19 + 7;
  v21 = v12 + v19 + 7;
  v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v20 & 0xFFFFFFFFFFFFFFF8) = *(v21 & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v23 & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 4) & ~v10);
  v12 = ((v7 + v10 + 4) & ~v10);
  if ((*(v9 + 48))(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v9 + 32))(v11, v12, AssociatedTypeWitness);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, AssociatedTypeWitness);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 4) & ~v10);
  v12 = ((v7 + v10 + 4) & ~v10);
  v13 = *(v9 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v9 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v9 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v9 + 84))
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = v11 + v19 + 7;
  v21 = ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v20 & 0xFFFFFFFFFFFFFFF8) = *v21;
  v22 = (v20 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v22 & 0xFFFFFFFFFFFFFFF8) = *((v21 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableAttributeHelper(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v11 + 7;
  if (v9 < a2 && *(a1 + ((((v12 + ((v10 + 12) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v9 + *a1 + 1;
  }

  v14 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v16 = *((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if ((v16 + 1) >= 2)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = (*(v6 + 48))(v14);
    if (v15 >= 2)
    {
      return v15 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for AnimatableAttributeHelper(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v9;
  }

  v12 = (v10 + 12) & ~v10;
  if (v8)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  v14 = (((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v11 >= a2)
  {
    if (v11 < a3)
    {
      *(a1 + v14) = 0;
    }

    if (a2)
    {
      v15 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10);
      if (v9 < 0x7FFFFFFE)
      {
        v19 = (&v15[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else if (v9 >= a2)
      {
        v20 = *(v7 + 56);

        v20(v15, a2 + 1);
      }

      else
      {
        if (v13 <= 3)
        {
          v16 = ~(-1 << (8 * v13));
        }

        else
        {
          v16 = -1;
        }

        if (v13)
        {
          v17 = v16 & (~v9 + a2);
          if (v13 <= 3)
          {
            v18 = v13;
          }

          else
          {
            v18 = 4;
          }

          bzero(v15, v13);
          if (v18 > 2)
          {
            if (v18 == 3)
            {
              *v15 = v17;
              v15[2] = BYTE2(v17);
            }

            else
            {
              *v15 = v17;
            }
          }

          else if (v18 == 1)
          {
            *v15 = v17;
          }

          else
          {
            *v15 = v17;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4);
    *a1 = ~v11 + a2;
    if (v11 < a3)
    {
      *(a1 + v14) = 1;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatorState.Fork(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = *(v5 + 16);

    v14(v13 + 1, v12 + 1, v4);
    v15 = ((v13 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v12 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double destroy for AnimatorState.Fork(void *a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

void *initializeWithCopy for AnimatorState.Fork(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v10 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *assignWithCopy for AnimatorState.Fork(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = v5 & 0xFFFFFFFFFFFFFFF8;
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v10 + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 24))(v11, (v10 + 8 + v7) & ~v10);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for AnimatorState.Fork(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for AnimatorState.Fork(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v11 = (v9 + 8 + v5) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatorState.Fork(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for AnimatorState.Fork(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}