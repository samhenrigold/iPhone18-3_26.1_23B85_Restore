uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, double a6, double a7)
{
  v8 = v7;
  v43 = a4.n128_f64[0];
  v44 = a5.n128_f64[0];
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v42 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v42)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = v43;
    *(v7 + 40) = v44;
    *(v7 + 48) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a7 - *(v7 + 56);
  swift_beginAccess();
  v14 = *(v7 + 24);
  v15 = *(v7 + 128);

  v48[0] = v14;
  v48[1] = AGCreateWeakAttribute();
  v49 = 0;
  v50 = v15;
  v16 = *(v7 + 136);
  if (v16)
  {
    v17 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v45[3] = v20;
    v45[0] = v16;
    v45[1] = v17;
    specialized Dictionary.subscript.setter(v45, v19);
  }

  swift_beginAccess();
  v21 = *(v8 + 16);
  v22 = *(v8 + 24);
  swift_beginAccess();
  v23 = *(v8 + 32);
  v24 = *(v8 + 40);
  v25 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25);

  *(v8 + 128) = 0;
  v26 = *(v8 + 48);
  v46 = *(v8 + 32);
  v47 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, &v46, v48, v29, v31, v13);

  if (v29)
  {
    *(v8 + 24) = v48[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v33 = *(v8 + 32);
    v34 = *(v8 + 40);
    v35 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v33, v34, v35, v13, v43, v44, a6);
    swift_endAccess();
    swift_endAccess();
  }

  v36.f64[0] = v43;
  v36.f64[1] = v44;
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v36);
  *(v8 + 48) = *(v8 + 48) + a6;
  *(v8 + 72) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v38 & 1) == 0)
  {
    v39 = 0.0;
    if (*&result > 0.0)
    {
      v40 = log2(*&result * 240.0);
      v39 = exp2(floor(v40 + 0.01)) * 0.00416666667;
    }

    if (v39 >= *(v8 + 64))
    {
      v39 = *(v8 + 64);
    }

    *(v8 + 64) = v39;
    if (v39 >= 0.0166666667)
    {
      *&result = 0.0;
      v41 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v41 = *(v8 + 108);
      }

      else
      {
        v41 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v41;
  }

  return result;
}

{
  v8 = v7;
  v43 = a4.n128_f64[0];
  v44 = a5.n128_f64[0];
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v42 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v42)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = v43;
    *(v7 + 40) = v44;
    *(v7 + 48) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a7 - *(v7 + 56);
  swift_beginAccess();
  v14 = *(v7 + 24);
  v15 = *(v7 + 128);

  v48[0] = v14;
  v48[1] = AGCreateWeakAttribute();
  v49 = 0;
  v50 = v15;
  v16 = *(v7 + 136);
  if (v16)
  {
    v17 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v45[3] = v20;
    v45[0] = v16;
    v45[1] = v17;
    specialized Dictionary.subscript.setter(v45, v19);
  }

  swift_beginAccess();
  v21 = *(v8 + 16);
  v22 = *(v8 + 24);
  swift_beginAccess();
  v23 = *(v8 + 32);
  v24 = *(v8 + 40);
  v25 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25);

  *(v8 + 128) = 0;
  v26 = *(v8 + 48);
  v46 = *(v8 + 32);
  v47 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, &v46, v48, v29, v31, v13);

  if (v29)
  {
    *(v8 + 24) = v48[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v33 = *(v8 + 32);
    v34 = *(v8 + 40);
    v35 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v33, v34, v35, v13, v43, v44, a6);
    swift_endAccess();
    swift_endAccess();
  }

  v36.f64[0] = v43;
  v36.f64[1] = v44;
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v36);
  *(v8 + 48) = *(v8 + 48) + a6;
  *(v8 + 72) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v38 & 1) == 0)
  {
    v39 = 0.0;
    if (*&result > 0.0)
    {
      v40 = log2(*&result * 240.0);
      v39 = exp2(floor(v40 + 0.01)) * 0.00416666667;
    }

    if (v39 >= *(v8 + 64))
    {
      v39 = *(v8 + 64);
    }

    *(v8 + 64) = v39;
    if (v39 >= 0.0166666667)
    {
      *&result = 0.0;
      v41 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v41 = *(v8 + 108);
      }

      else
      {
        v41 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v41;
  }

  return result;
}

{
  v8 = v7;
  v43 = a4.n128_f64[0];
  v44 = a5.n128_f64[0];
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v42 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v42)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = v43;
    *(v7 + 40) = v44;
    *(v7 + 48) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a7 - *(v7 + 56);
  swift_beginAccess();
  v14 = *(v7 + 24);
  v15 = *(v7 + 128);

  v48[0] = v14;
  v48[1] = AGCreateWeakAttribute();
  v49 = 0;
  v50 = v15;
  v16 = *(v7 + 136);
  if (v16)
  {
    v17 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
    v45[3] = v20;
    v45[0] = v16;
    v45[1] = v17;
    specialized Dictionary.subscript.setter(v45, v19);
  }

  swift_beginAccess();
  v21 = *(v8 + 16);
  v22 = *(v8 + 24);
  swift_beginAccess();
  v23 = *(v8 + 32);
  v24 = *(v8 + 40);
  v25 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25);

  *(v8 + 128) = 0;
  v26 = *(v8 + 48);
  v46 = *(v8 + 32);
  v47 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, &v46, v48, v29, v31, v13);

  if (v29)
  {
    *(v8 + 24) = v48[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v33 = *(v8 + 32);
    v34 = *(v8 + 40);
    v35 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v33, v34, v35, v13, v43, v44, a6);
    swift_endAccess();
    swift_endAccess();
  }

  v36.f64[0] = v43;
  v36.f64[1] = v44;
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v36);
  *(v8 + 48) = *(v8 + 48) + a6;
  *(v8 + 72) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v38 & 1) == 0)
  {
    v39 = 0.0;
    if (*&result > 0.0)
    {
      v40 = log2(*&result * 240.0);
      v39 = exp2(floor(v40 + 0.01)) * 0.00416666667;
    }

    if (v39 >= *(v8 + 64))
    {
      v39 = *(v8 + 64);
    }

    *(v8 + 64) = v39;
    if (v39 >= 0.0166666667)
    {
      *&result = 0.0;
      v41 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v41 = *(v8 + 108);
      }

      else
      {
        v41 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v41;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, float32x4_t *a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (*(v5 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v32 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (static Semantics.forced < v32)
  {
LABEL_27:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = *a2;
    *(v5 + 48) = a2[1].i32[0];
    goto LABEL_10;
  }

LABEL_2:
  v11 = a5 - *(v5 + 56);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 128);

  v36[0] = v12;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v13;
  v14 = *(v5 + 136);
  if (v14)
  {
    v15 = *(v5 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    v33[3] = v18;
    v33[0] = v14;
    v33[1] = v15;
    specialized Dictionary.subscript.setter(v33, v17);
  }

  swift_beginAccess();
  v19 = *(v5 + 16);
  v20 = *(v5 + 24);
  swift_beginAccess();
  v41 = *(v5 + 32);
  v42 = *(v5 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v41);

  *(v5 + 128) = 0;
  v21 = *(v5 + 48);
  v34 = *(v5 + 32);
  v35 = v21;
  v22 = *(*a1 + 136);
  lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
  v24 = v23;

  LOBYTE(v24) = v22(v25, &v34, v36, &type metadata for Color.ResolvedHDR._Animatable, v24, v11);

  if (v24)
  {
    *(v6 + 24) = v36[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v39 = *(v6 + 32);
    v40 = *(v6 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v39, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v26 = a2[1].f32[0];
  *(v6 + 32) = vaddq_f32(*a2, *(v6 + 32));
  if (*(v6 + 48) > v26)
  {
    v26 = *(v6 + 48);
  }

  *(v6 + 48) = v26;
  *(v6 + 72) = a5;
LABEL_10:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 64))
    {
      v29 = *(v6 + 64);
    }

    *(v6 + 64) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 100);
        v31 = *(v6 + 104);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 100) = result;
    *(v6 + 104) = v31;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v34 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v34)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = *a2;
    *(v5 + 48) = a2[1].i32[0];
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 56);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 128);

  v38[0] = v12;
  v38[1] = AGCreateWeakAttribute();
  v39 = 0;
  v40 = v13;
  v14 = *(v5 + 136);
  if (v14)
  {
    v15 = *(v6 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
    v35[3] = v18;
    v35[0] = v14;
    v35[1] = v15;
    specialized Dictionary.subscript.setter(v35, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v43 = *(v6 + 32);
  v44 = *(v6 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v43);

  *(v6 + 128) = 0;
  v21 = *(v6 + 48);
  v36 = *(v6 + 32);
  v37 = v21;
  v22 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
  v24 = v23;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v26 = v25;

  LOBYTE(v24) = v22(v27, &v36, v38, v24, v26, v11);

  if (v24)
  {
    *(v6 + 24) = v38[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v41 = *(v6 + 32);
    v42 = *(v6 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v41, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v28 = a2[1].f32[0];
  *(v6 + 32) = vaddq_f32(*a2, *(v6 + 32));
  *(v6 + 48) = v28 + *(v6 + 48);
  *(v6 + 72) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v30 & 1) == 0)
  {
    v31 = 0.0;
    if (*&result > 0.0)
    {
      v32 = log2(*&result * 240.0);
      v31 = exp2(floor(v32 + 0.01)) * 0.00416666667;
    }

    if (v31 >= *(v6 + 64))
    {
      v31 = *(v6 + 64);
    }

    *(v6 + 64) = v31;
    if (v31 >= 0.0166666667)
    {
      *&result = 0.0;
      v33 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 100);
        v33 = *(v6 + 104);
      }

      else
      {
        v33 = 0;
      }
    }

    *(v6 + 100) = result;
    *(v6 + 104) = v33;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, char *a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  v39 = a2;
  if (*(v5 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v33 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v33)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a2;

    goto LABEL_8;
  }

LABEL_2:
  v10 = a5 - *(v6 + 40);
  swift_beginAccess();
  v11 = *(v6 + 24);
  v12 = *(v6 + 96);

  v36[0] = v11;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v12;
  v13 = *(v6 + 104);
  if (v13)
  {
    v14 = *(v6 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    v34[3] = v17;
    v34[0] = v13;
    v34[1] = v14;
    specialized Dictionary.subscript.setter(v34, v16);
  }

  swift_beginAccess();
  v18 = *(v6 + 16);
  v19 = *(v6 + 24);
  swift_beginAccess();
  v20 = *(v6 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, v20);

  *(v6 + 96) = 0;
  v21 = *(v6 + 16);
  v35[0] = *(v6 + 32);
  v22 = *(*a1 + 136);
  lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();
  v24 = v23;

  LOBYTE(v24) = v22(v21, v35, v36, &type metadata for ShaderVectorData, v24, v10);

  if (v24)
  {
    *(v6 + 24) = v36[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v25 = *(v6 + 32);
    swift_beginAccess();
    swift_beginAccess();
    v26 = v39;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v25, a1, v26, v10);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  specialized static ShaderVectorData.+= infix(_:_:)((v6 + 32), &v39);
  swift_endAccess();
  *(v6 + 56) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 48))
    {
      v29 = *(v6 + 48);
    }

    *(v6 + 48) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 72);
        v31 = *(v6 + 76);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 72) = result;
    *(v6 + 76) = v31;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (*(v5 + 137))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v39 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (static Semantics.forced < v39)
  {
LABEL_27:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v50, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v40 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v40;
    *(v5 + 64) = *(a2 + 32);

    goto LABEL_10;
  }

LABEL_2:
  v41 = a3;
  v11 = a5 - *(v5 + 72);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 160);

  v44[0] = v12;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v13;
  v14 = *(v5 + 168);
  if (v14)
  {
    v15 = *(v6 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
    *(&v51 + 1) = v18;
    *&v50 = v14;
    *(&v50 + 1) = v15;
    specialized Dictionary.subscript.setter(&v50, v17);
  }

  swift_beginAccess();
  v20 = *(v6 + 16);
  v19 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v50 = *(v6 + 32);
  v51 = v21;
  v52 = *(v6 + 64);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v50, &v47, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v19, &v50);

  outlined destroy of Slice<IndexSet>(&v50, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

  v22 = *(v6 + 40);
  *(v6 + 160) = 0;
  v23 = *(v6 + 16);
  v24 = *(v6 + 64);
  *&v47 = *(v6 + 32);
  *(&v47 + 1) = v22;
  v48 = *(v6 + 48);
  v49 = v24;
  v25 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>(0);
  v27 = v26;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v29 = v28;

  LOBYTE(v27) = v25(v23, &v47, v44, v27, v29, v11);

  if (v27)
  {
    *(v6 + 24) = v44[0];

    *(v6 + 16) = a1;

    v30 = a2;
    a3 = v41;
  }

  else
  {

    v31 = *(v6 + 48);
    v47 = *(v6 + 32);
    v48 = v31;
    v49 = *(v6 + 64);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v47, v43, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v30 = a2;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v47, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v47, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    a3 = v41;
  }

  swift_beginAccess();
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5((v6 + 32), *v30);
  v32 = *(v30 + 32);
  v42 = *(v30 + 16);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5((v6 + 40), *(v30 + 8));
  *(v6 + 48) = vaddq_f32(v42, *(v6 + 48));
  v33 = *(v6 + 64);
  if (v33 <= v32)
  {
    v33 = v32;
  }

  *(v6 + 64) = v33;
  swift_endAccess();
  *(v6 + 88) = a5;
LABEL_10:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v35 & 1) == 0)
  {
    v36 = 0.0;
    if (*&result > 0.0)
    {
      v37 = log2(*&result * 240.0);
      v36 = exp2(floor(v37 + 0.01)) * 0.00416666667;
    }

    if (v36 >= *(v6 + 80))
    {
      v36 = *(v6 + 80);
    }

    *(v6 + 80) = v36;
    if (v36 >= 0.0166666667)
    {
      *&result = 0.0;
      v38 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 132);
        v38 = *(v6 + 136);
      }

      else
      {
        v38 = 0;
      }
    }

    *(v6 + 132) = result;
    *(v6 + 136) = v38;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v38 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v38)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v39 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = *(a2 + 32);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 72);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 160);

  v40[0] = v12;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v13;
  v14 = *(v5 + 168);
  if (v14)
  {
    v15 = *(v6 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v47 + 1) = v18;
    *&v46 = v14;
    *(&v46 + 1) = v15;
    specialized Dictionary.subscript.setter(&v46, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v46 = *(v6 + 32);
  v47 = v21;
  v48 = *(v6 + 64);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v46);

  *(v6 + 160) = 0;
  v22 = *(v6 + 64);
  v23 = *(v6 + 48);
  v43 = *(v6 + 32);
  v44 = v23;
  v45 = v22;
  v24 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  v26 = v25;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v28 = v27;

  LOBYTE(v26) = v24(v29, &v43, v40, v26, v28, v11);

  if (v26)
  {
    *(v6 + 24) = v40[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 48);
    v43 = *(v6 + 32);
    v44 = v30;
    v45 = *(v6 + 64);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v43, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v31 = *(a2 + 32);
  v32 = vaddq_f64(*(a2 + 16), *(v6 + 48));
  *(v6 + 32) = vaddq_f32(*a2, *(v6 + 32));
  *(v6 + 48) = v32;
  *(v6 + 64) = v31 + *(v6 + 64);
  *(v6 + 88) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v34 & 1) == 0)
  {
    v35 = 0.0;
    if (*&result > 0.0)
    {
      v36 = log2(*&result * 240.0);
      v35 = exp2(floor(v36 + 0.01)) * 0.00416666667;
    }

    if (v35 >= *(v6 + 80))
    {
      v35 = *(v6 + 80);
    }

    *(v6 + 80) = v35;
    if (v35 >= 0.0166666667)
    {
      *&result = 0.0;
      v37 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 136);
        v37 = *(v6 + 140);
      }

      else
      {
        v37 = 0;
      }
    }

    *(v6 + 136) = result;
    *(v6 + 140) = v37;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 169))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v38 = *(v5 + 48);
    v52 = *(v5 + 32);
    v53 = v38;
    v54 = *(v5 + 64);
    v55 = *(v5 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v39 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 88);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 192);

  v45[0] = v12;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v47 = v13;
  v14 = *(v5 + 200);
  if (v14)
  {
    v15 = *(v6 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    *(&v53 + 1) = v18;
    *&v52 = v14;
    *(&v52 + 1) = v15;
    specialized Dictionary.subscript.setter(&v52, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v52 = *(v6 + 32);
  v53 = v21;
  v54 = *(v6 + 64);
  v55 = *(v6 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v52, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v52);

  outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

  v22 = *(v6 + 48);
  v43[0] = *(v6 + 32);
  v43[1] = v22;
  v24 = *(v6 + 32);
  v23 = *(v6 + 48);
  v43[2] = *(v6 + 64);
  *(v6 + 192) = 0;
  v25 = *(v6 + 16);
  v44 = *(v6 + 80);
  v48 = v24;
  v49 = v23;
  v50 = *(v6 + 64);
  v51 = *(v6 + 80);
  v26 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v43, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>(0);
  v28 = v27;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>, protocol conformance descriptor for AnimatablePair<A, B>);
  LOBYTE(v28) = v26(v25, &v48, v45, v28, v29, v11);

  outlined destroy of Slice<IndexSet>(v43, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  if (v28)
  {
    *(v6 + 24) = v45[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 48);
    v48 = *(v6 + 32);
    v49 = v30;
    v50 = *(v6 + 64);
    v51 = *(v6 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v48, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v48, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  }

  swift_beginAccess();
  v31 = vaddq_f64(*(a2 + 16), *(v6 + 48));
  *(v6 + 32) = vaddq_f64(*a2, *(v6 + 32));
  *(v6 + 48) = v31;
  v40 = *(a2 + 32);
  v41 = *(a2 + 48);
  ResolvedGradientVector.add(_:scaledBy:)(&v40, 1.0);
  swift_endAccess();
  *(v6 + 104) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v6 + 96))
    {
      v34 = *(v6 + 96);
    }

    *(v6 + 96) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 164);
        v36 = *(v6 + 168);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v6 + 164) = result;
    *(v6 + 168) = v36;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 173))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v38 = *(v5 + 48);
    v52 = *(v5 + 32);
    v53 = v38;
    v54 = *(v5 + 64);
    v55 = *(v5 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v39 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 88);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 192);

  v45[0] = v12;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v47 = v13;
  v14 = *(v5 + 200);
  if (v14)
  {
    v15 = *(v6 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v53 + 1) = v18;
    *&v52 = v14;
    *(&v52 + 1) = v15;
    specialized Dictionary.subscript.setter(&v52, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v52 = *(v6 + 32);
  v53 = v21;
  v54 = *(v6 + 64);
  v55 = *(v6 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v52, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v52);

  outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

  v22 = *(v6 + 48);
  v43[0] = *(v6 + 32);
  v43[1] = v22;
  v24 = *(v6 + 32);
  v23 = *(v6 + 48);
  v43[2] = *(v6 + 64);
  *(v6 + 192) = 0;
  v25 = *(v6 + 16);
  v44 = *(v6 + 80);
  v48 = v24;
  v49 = v23;
  v50 = *(v6 + 64);
  v51 = *(v6 + 80);
  v26 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v43, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>(0);
  v28 = v27;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  LOBYTE(v28) = v26(v25, &v48, v45, v28, v29, v11);

  outlined destroy of Slice<IndexSet>(v43, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  if (v28)
  {
    *(v6 + 24) = v45[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 48);
    v48 = *(v6 + 32);
    v49 = v30;
    v50 = *(v6 + 64);
    v51 = *(v6 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v48, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v48, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  }

  swift_beginAccess();
  v31 = *a2;
  v40 = *(a2 + 16);
  v41 = *(a2 + 32);
  *(v6 + 32) = vaddq_f64(v31, *(v6 + 32));
  ResolvedGradientVector.add(_:scaledBy:)(&v40, 1.0);
  *(v6 + 72) = vaddq_f64(*(a2 + 40), *(v6 + 72));
  swift_endAccess();
  *(v6 + 104) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v6 + 96))
    {
      v34 = *(v6 + 96);
    }

    *(v6 + 96) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 168);
        v36 = *(v6 + 172);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v6 + 168) = result;
    *(v6 + 172) = v36;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 173))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v38 = *(v5 + 48);
    v52 = *(v5 + 32);
    v53 = v38;
    v54 = *(v5 + 64);
    v55 = *(v5 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v39 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 88);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 192);

  v45[0] = v12;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v47 = v13;
  v14 = *(v5 + 200);
  if (v14)
  {
    v15 = *(v6 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    *(&v53 + 1) = v18;
    *&v52 = v14;
    *(&v52 + 1) = v15;
    specialized Dictionary.subscript.setter(&v52, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v52 = *(v6 + 32);
  v53 = v21;
  v54 = *(v6 + 64);
  v55 = *(v6 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v52, &v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v52);

  outlined destroy of Slice<IndexSet>(&v52, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

  v22 = *(v6 + 48);
  v43[0] = *(v6 + 32);
  v43[1] = v22;
  v24 = *(v6 + 32);
  v23 = *(v6 + 48);
  v43[2] = *(v6 + 64);
  *(v6 + 192) = 0;
  v25 = *(v6 + 16);
  v44 = *(v6 + 80);
  v48 = v24;
  v49 = v23;
  v50 = *(v6 + 64);
  v51 = *(v6 + 80);
  v26 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v43, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>(0);
  v28 = v27;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>, protocol conformance descriptor for AnimatablePair<A, B>);
  LOBYTE(v28) = v26(v25, &v48, v45, v28, v29, v11);

  outlined destroy of Slice<IndexSet>(v43, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  if (v28)
  {
    *(v6 + 24) = v45[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 48);
    v48 = *(v6 + 32);
    v49 = v30;
    v50 = *(v6 + 64);
    v51 = *(v6 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v48, v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v48, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v48, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  }

  swift_beginAccess();
  v31 = *a2;
  v40 = *(a2 + 16);
  v41 = *(a2 + 32);
  *(v6 + 32) = vaddq_f64(v31, *(v6 + 32));
  ResolvedGradientVector.add(_:scaledBy:)(&v40, 1.0);
  *(v6 + 72) = vaddq_f64(*(a2 + 40), *(v6 + 72));
  swift_endAccess();
  *(v6 + 104) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v6 + 96))
    {
      v34 = *(v6 + 96);
    }

    *(v6 + 96) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 168);
        v36 = *(v6 + 172);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v6 + 168) = result;
    *(v6 + 172) = v36;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 269))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v50 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v50)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v51 = *(v5 + 112);
    v79 = *(v5 + 96);
    v80 = v51;
    v81 = *(v5 + 128);
    v52 = *(v5 + 48);
    v75 = *(v5 + 32);
    v76 = v52;
    v53 = *(v5 + 80);
    v77 = *(v5 + 64);
    v78 = v53;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v68, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v54 = *(a2 + 80);
    *(v5 + 96) = *(a2 + 64);
    *(v5 + 112) = v54;
    *(v5 + 128) = *(a2 + 96);
    v55 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v55;
    v56 = *(a2 + 48);
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = v56;
    outlined destroy of Slice<IndexSet>(&v75, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 136);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 288);

  v65[0] = v12;
  v65[1] = AGCreateWeakAttribute();
  v66 = 0;
  v67 = v13;
  v14 = *(v5 + 296);
  if (v14)
  {
    v15 = *(v6 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v76 + 1) = v18;
    *&v75 = v14;
    *(&v75 + 1) = v15;
    specialized Dictionary.subscript.setter(&v75, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 112);
  v79 = *(v6 + 96);
  v80 = v21;
  v81 = *(v6 + 128);
  v22 = *(v6 + 48);
  v75 = *(v6 + 32);
  v76 = v22;
  v23 = *(v6 + 80);
  v77 = *(v6 + 64);
  v78 = v23;

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v75, &v68, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v75);

  outlined destroy of Slice<IndexSet>(&v75, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v24 = *(v6 + 80);
  v25 = *(v6 + 112);
  v62 = *(v6 + 96);
  v63 = v25;
  v26 = *(v6 + 48);
  v59[0] = *(v6 + 32);
  v59[1] = v26;
  v27 = *(v6 + 80);
  v29 = *(v6 + 32);
  v28 = *(v6 + 48);
  v60 = *(v6 + 64);
  v30 = v60;
  v61 = v27;
  v31 = *(v6 + 112);
  v72 = v62;
  v73 = v31;
  v68 = v29;
  v69 = v28;
  *(v6 + 288) = 0;
  v32 = *(v6 + 16);
  v64 = *(v6 + 128);
  v74 = *(v6 + 128);
  v70 = v30;
  v71 = v24;
  v33 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v59, v57, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(0);
  v35 = v34;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  LOBYTE(v35) = v33(v32, &v68, v65, v35, v36, v11);

  outlined destroy of Slice<IndexSet>(v59, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  if (v35)
  {
    *(v6 + 24) = v65[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v37 = *(v6 + 112);
    v72 = *(v6 + 96);
    v73 = v37;
    v74 = *(v6 + 128);
    v38 = *(v6 + 48);
    v68 = *(v6 + 32);
    v69 = v38;
    v39 = *(v6 + 80);
    v70 = *(v6 + 64);
    v71 = v39;
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v68, v57, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v68, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v68, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  }

  swift_beginAccess();
  v40 = *(a2 + 88);
  v41 = *(a2 + 80);
  v57[4] = *(a2 + 64);
  v57[5] = v41;
  v58 = *(a2 + 96);
  v42 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v42;
  v43 = *(a2 + 48);
  v57[2] = *(a2 + 32);
  v57[3] = v43;
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(v6 + 32, v57);
  v44 = v58;
  *(v6 + 120) = v40 + *(v6 + 120);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5((v6 + 128), v44);
  swift_endAccess();
  *(v6 + 152) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v46 & 1) == 0)
  {
    v47 = 0.0;
    if (*&result > 0.0)
    {
      v48 = log2(*&result * 240.0);
      v47 = exp2(floor(v48 + 0.01)) * 0.00416666667;
    }

    if (v47 >= *(v6 + 144))
    {
      v47 = *(v6 + 144);
    }

    *(v6 + 144) = v47;
    if (v47 >= 0.0166666667)
    {
      *&result = 0.0;
      v49 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 264);
        v49 = *(v6 + 268);
      }

      else
      {
        v49 = 0;
      }
    }

    *(v6 + 264) = result;
    *(v6 + 268) = v49;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 169))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v38 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v38)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v39 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = *(a2 + 48);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 88);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 192);

  v42[0] = v12;
  v42[1] = AGCreateWeakAttribute();
  v43 = 0;
  v44 = v13;
  v14 = *(v5 + 200);
  if (v14)
  {
    v15 = *(v6 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    *(&v48 + 1) = v18;
    *&v47 = v14;
    *(&v47 + 1) = v15;
    specialized Dictionary.subscript.setter(&v47, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v47 = *(v6 + 32);
  v48 = v21;
  v49 = *(v6 + 64);
  v50 = *(v6 + 80);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v47);

  *(v6 + 192) = 0;
  v22 = *(v6 + 72);
  v23 = *(v6 + 80);
  v24 = *(v6 + 40);
  *v45 = *(v6 + 32);
  *&v45[8] = v24;
  *&v45[24] = *(v6 + 56);
  *&v45[40] = v22;
  v46 = v23;
  v25 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(0);
  v27 = v26;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, protocol conformance descriptor for AnimatablePair<A, B>);
  v29 = v28;

  LOBYTE(v27) = v25(v30, v45, v42, v27, v29, v11);

  if (v27)
  {
    *(v6 + 24) = v42[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v31 = *(v6 + 48);
    *v45 = *(v6 + 32);
    *&v45[16] = v31;
    *&v45[32] = *(v6 + 64);
    v46 = *(v6 + 80);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v45, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v32 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v32;
  v40[2] = *(a2 + 32);
  v41 = *(a2 + 48);
  *(v6 + 32) = *v40 + *(v6 + 32);
  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(v6 + 40, v40 + 8);
  *(v6 + 104) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v34 & 1) == 0)
  {
    v35 = 0.0;
    if (*&result > 0.0)
    {
      v36 = log2(*&result * 240.0);
      v35 = exp2(floor(v36 + 0.01)) * 0.00416666667;
    }

    if (v35 >= *(v6 + 96))
    {
      v35 = *(v6 + 96);
    }

    *(v6 + 96) = v35;
    if (v35 >= 0.0166666667)
    {
      *&result = 0.0;
      v37 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 164);
        v37 = *(v6 + 168);
      }

      else
      {
        v37 = 0;
      }
    }

    *(v6 + 164) = result;
    *(v6 + 168) = v37;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v32 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v32)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = *a2;
    *(v5 + 48) = *(a2 + 16);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 56);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 128);

  v36[0] = v12;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v13;
  v14 = *(v5 + 136);
  if (v14)
  {
    v15 = *(v6 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
    v35 = v18;
    *&v33 = v14;
    *(&v33 + 1) = v15;
    specialized Dictionary.subscript.setter(&v33, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v33 = *(v6 + 32);
  v34 = *(v6 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v33);

  *(v6 + 128) = 0;
  v39 = *(v6 + 32);
  v40 = *(v6 + 48);
  v21 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
  v23 = v22;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v25 = v24;

  LOBYTE(v23) = v21(v26, &v39, v36, v23, v25, v11);

  if (v23)
  {
    *(v6 + 24) = v36[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v39 = *(v6 + 32);
    v40 = *(v6 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v39, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  *(v6 + 32) = vaddq_f32(*a2, *(v6 + 32));
  *(v6 + 48) = vadd_f32(*(a2 + 16), *(v6 + 48));
  *(v6 + 72) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 64))
    {
      v29 = *(v6 + 64);
    }

    *(v6 + 64) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 104);
        v31 = *(v6 + 108);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 104) = result;
    *(v6 + 108) = v31;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 269))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v138 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v138)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v139 = *(a2 + 80);
    *(v5 + 96) = *(a2 + 64);
    *(v5 + 112) = v139;
    *(v5 + 128) = *(a2 + 96);
    v140 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v140;
    v141 = *(a2 + 48);
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = v141;
    goto LABEL_8;
  }

LABEL_2:
  v146 = a3;
  v11 = a5 - *(v5 + 136);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 288);

  v182[0] = v12;
  v182[1] = AGCreateWeakAttribute();
  v183 = 0;
  v184 = v13;
  v14 = *(v5 + 296);
  if (v14)
  {
    v15 = *(v6 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    *(&v188 + 1) = v18;
    *&v187 = v14;
    *(&v187 + 1) = v15;
    specialized Dictionary.subscript.setter(&v187, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 112);
  v191 = *(v6 + 96);
  v192 = v21;
  v193 = *(v6 + 128);
  v22 = *(v6 + 48);
  v187 = *(v6 + 32);
  v188 = v22;
  v23 = *(v6 + 80);
  v189 = *(v6 + 64);
  v190 = v23;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v187);

  *(v6 + 288) = 0;
  v24 = *(v6 + 112);
  v180[4] = *(v6 + 96);
  v180[5] = v24;
  v181 = *(v6 + 128);
  v25 = *(v6 + 48);
  v180[0] = *(v6 + 32);
  v180[1] = v25;
  v26 = *(v6 + 80);
  v180[2] = *(v6 + 64);
  v180[3] = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, v180, v182, v29, v31, v11);

  if (v29)
  {
    *(v6 + 24) = v182[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v33 = *(v6 + 112);
    v185[4] = *(v6 + 96);
    v185[5] = v33;
    v186 = *(v6 + 128);
    v34 = *(v6 + 48);
    v185[0] = *(v6 + 32);
    v185[1] = v34;
    v35 = *(v6 + 80);
    v185[2] = *(v6 + 64);
    v185[3] = v35;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v185, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  *(v6 + 32) = *a2 + *(v6 + 32);
  v36 = *(a2 + 56);
  v156 = *(a2 + 40);
  v157 = v36;
  v37 = *(a2 + 88);
  v158 = *(a2 + 72);
  v159 = v37;
  v38 = *(a2 + 24);
  v154 = *(a2 + 8);
  v155 = v38;
  v39 = *(v6 + 88);
  v162 = *(v6 + 72);
  v163 = v39;
  v40 = *(v6 + 120);
  v164 = *(v6 + 104);
  v165 = v40;
  v41 = *(v6 + 56);
  v160 = *(v6 + 40);
  v161 = v41;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v153 = v42;
  v145 = &v142;
  v43 = MEMORY[0x1E69E7DE0];
  v44 = *(MEMORY[0x1E69E7DE0] - 8);
  v45 = v44[8];
  v46 = MEMORY[0x1EEE9AC00](v42);
  v151 = v45;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v47;
  v48 = v44 + 2;
  v49 = v44[2];
  v50 = v49(&v142 - v47, &v160, v43, v46);
  v150 = v49;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52(&v142 - v47, &v154, v43, v51);
  v152 = v153[1];
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v54 = v44 + 1;
  v53 = v44[1];
  v153 = v54;
  v53(&v142 - v47, v43);
  v55 = (v53)(&v142 - v47, v43);
  v145 = &v142;
  v178[0] = &v166;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = v149;
  v57 = v150;
  v148 = v48;
  v59 = (v150)(&v142 - v149, &v160 + 8, v43, v56);
  v144 = &v142;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v57(&v142 - v58, &v154 + 8, v43, v60);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(&v142 - v58, v43);
  v61 = (v53)(&v142 - v58, v43);
  v145 = &v142;
  v178[1] = &v167;
  v143 = &v168;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v63 = &v142 - v58;
  v64 = v150;
  v65 = (v150)(&v142 - v58, &v161, v43, v62);
  v144 = &v142;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = &v142 - v58;
  v64(&v142 - v58, &v155, v43, v66);
  v68 = v143;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(v67, v43);
  v69 = (v53)(v63, v43);
  v145 = &v142;
  v178[2] = v68;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = v149;
  v72 = v150;
  v73 = &v142 - v149;
  v74 = (v150)(&v142 - v149, &v161 + 8, v43, v70);
  v144 = &v142;
  v75 = MEMORY[0x1EEE9AC00](v74);
  v72(&v142 - v71, &v155 + 8, v43, v75);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(&v142 - v71, v43);
  v76 = (v53)(v73, v43);
  v145 = &v142;
  v178[3] = &v169;
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = v149;
  v78 = v150;
  v80 = (v150)(&v142 - v149, &v162, v43, v77);
  v144 = &v142;
  v81 = MEMORY[0x1EEE9AC00](v80);
  v78(&v142 - v79, &v156, v43, v81);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(&v142 - v79, v43);
  v82 = (v53)(&v142 - v79, v43);
  v145 = &v142;
  v178[4] = &v170;
  v83 = MEMORY[0x1EEE9AC00](v82);
  v84 = &v142 - v79;
  v85 = (v78)(&v142 - v79, &v162 + 8, v43, v83);
  v144 = &v142;
  v86 = MEMORY[0x1EEE9AC00](v85);
  v87 = &v142 - v79;
  v78(&v142 - v79, (&v156 + 8), v43, v86);
  v88 = v78;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(v87, v43);
  v89 = (v53)(v84, v43);
  v145 = &v142;
  v178[5] = &v171;
  v143 = &v172;
  v90 = MEMORY[0x1EEE9AC00](v89);
  v91 = v149;
  v92 = &v142 - v149;
  v93 = (v78)(&v142 - v149, &v163, v43, v90);
  v144 = &v142;
  v94 = MEMORY[0x1EEE9AC00](v93);
  v78(&v142 - v91, &v157, v43, v94);
  v95 = v143;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(&v142 - v91, v43);
  v96 = (v53)(v92, v43);
  v145 = &v142;
  v178[6] = v95;
  v97 = MEMORY[0x1EEE9AC00](v96);
  v98 = v149;
  v99 = v88(&v142 - v149, &v163 + 8, v43, v97);
  v144 = &v142;
  v100 = MEMORY[0x1EEE9AC00](v99);
  v88(&v142 - v98, &v157 + 8, v43, v100);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53(&v142 - v98, v43);
  v101 = (v53)(&v142 - v98, v43);
  v145 = &v142;
  v178[7] = &v173;
  v102 = MEMORY[0x1EEE9AC00](v101);
  v103 = v150;
  v104 = (v150)(&v142 - v98, &v164, v43, v102);
  v144 = &v142;
  v105 = MEMORY[0x1EEE9AC00](v104);
  v103(&v142 - v98, &v158, v43, v105);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v147 = v53;
  v53(&v142 - v98, v43);
  v106 = (v53)(&v142 - v98, v43);
  v145 = &v142;
  v178[8] = &v174;
  v107 = MEMORY[0x1EEE9AC00](v106);
  v108 = v149;
  v109 = v150;
  v110 = &v142 - v149;
  v111 = (v150)(&v142 - v149, &v164 + 8, v43, v107);
  v144 = &v142;
  v112 = MEMORY[0x1EEE9AC00](v111);
  v109(&v142 - v108, &v158 + 8, v43, v112);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v113 = &v142 - v108;
  v114 = v147;
  v147(v113, v43);
  v115 = v114(v110, v43);
  v145 = &v142;
  v178[9] = &v175;
  v116 = MEMORY[0x1EEE9AC00](v115);
  v118 = v149;
  v117 = v150;
  v119 = (v150)(&v142 - v149, &v165, v43, v116);
  v144 = &v142;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v117(&v142 - v118, &v159, v43, v120);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v121 = v147;
  v147(&v142 - v118, v43);
  v122 = v121(&v142 - v118, v43);
  v145 = &v142;
  v178[10] = &v176;
  v123 = MEMORY[0x1EEE9AC00](v122);
  v124 = v149;
  v125 = &v142 - v149;
  v126 = v150;
  v127 = (v150)(&v142 - v149, &v165 + 8, v43, v123);
  v144 = &v142;
  v128 = MEMORY[0x1EEE9AC00](v127);
  v129 = &v142 - v124;
  v126(v129, &v159 + 8, v43, v128);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v121(v129, v43);
  v121(v125, v43);
  v178[11] = &v177;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v178, v179);
  v130 = v179[3];
  *(v6 + 72) = v179[2];
  *(v6 + 88) = v130;
  v131 = v179[5];
  *(v6 + 104) = v179[4];
  *(v6 + 120) = v131;
  v132 = v179[1];
  *(v6 + 40) = v179[0];
  *(v6 + 56) = v132;
  swift_endAccess();
  *(v6 + 152) = a5;
  a3 = v146;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v134 & 1) == 0)
  {
    v135 = 0.0;
    if (*&result > 0.0)
    {
      v136 = log2(*&result * 240.0);
      v135 = exp2(floor(v136 + 0.01)) * 0.00416666667;
    }

    if (v135 >= *(v6 + 144))
    {
      v135 = *(v6 + 144);
    }

    *(v6 + 144) = v135;
    if (v135 >= 0.0166666667)
    {
      *&result = 0.0;
      v137 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 264);
        v137 = *(v6 + 268);
      }

      else
      {
        v137 = 0;
      }
    }

    *(v6 + 264) = result;
    *(v6 + 268) = v137;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v32 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v32)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = *a2;
    *(v5 + 48) = *(a2 + 16);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 56);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 128);

  v36[0] = v12;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v13;
  v14 = *(v5 + 136);
  if (v14)
  {
    v15 = *(v6 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v35 = v18;
    *&v33 = v14;
    *(&v33 + 1) = v15;
    specialized Dictionary.subscript.setter(&v33, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v33 = *(v6 + 32);
  v34 = *(v6 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v33);

  *(v6 + 128) = 0;
  v39 = *(v6 + 32);
  v40 = *(v6 + 48);
  v21 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  v23 = v22;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v25 = v24;

  LOBYTE(v23) = v21(v26, &v39, v36, v23, v25, v11);

  if (v23)
  {
    *(v6 + 24) = v36[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v39 = *(v6 + 32);
    v40 = *(v6 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v39, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  *(v6 + 32) = vaddq_f32(*a2, *(v6 + 32));
  *(v6 + 48) = vadd_f32(*(a2 + 16), *(v6 + 48));
  *(v6 + 72) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 64))
    {
      v29 = *(v6 + 64);
    }

    *(v6 + 64) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 104);
        v31 = *(v6 + 108);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 104) = result;
    *(v6 + 108) = v31;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, float32x4_t *a2, unint64_t a3, char a4, void *a5, uint64_t a6, double a7)
{
  v8 = v7;
  v15 = HIDWORD(a3);
  if (*(v7 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v49 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v49)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *(v7 + 44) = v15;
    *(v7 + 48) = a4 & 1;

    goto LABEL_8;
  }

LABEL_2:
  v50 = v15;
  v51 = a2;
  v16 = a4;
  v52 = a5;
  v17 = a7 - *(v7 + 56);
  swift_beginAccess();
  v18 = *(v7 + 24);
  v19 = *(v7 + 128);

  v62[0] = v18;
  v62[1] = AGCreateWeakAttribute();
  v63 = 0;
  v64 = v19;
  v20 = *(v7 + 136);
  if (v20)
  {
    v21 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
    v23 = v22;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
    v53[3] = v24;
    v53[0] = v20;
    v53[1] = v21;
    specialized Dictionary.subscript.setter(v53, v23);
  }

  swift_beginAccess();
  v25 = *(v7 + 16);
  v26 = *(v7 + 24);
  swift_beginAccess();
  v27 = *(v7 + 32);
  v28 = *(v7 + 40);
  v29 = *(v7 + 48);
  v30 = *(v8 + 44);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v25, v26, v27, v28 | (v30 << 32), v29);

  *(v8 + 128) = 0;
  v31 = *(v8 + 16);
  v32 = *(v8 + 40);
  v33 = *(v8 + 44);
  v34 = *(v8 + 48);
  v58 = *(v8 + 32);
  v59 = v32;
  v60 = v33;
  v61 = v34;
  v35 = *(*a1 + 136);
  lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
  v37 = v36;

  LOBYTE(v37) = v35(v31, &v58, v62, &type metadata for ResolvedGradientVector, v37, v17);

  if (v37)
  {
    *(v8 + 24) = v62[0];

    *(v8 + 16) = a1;

    v38 = v51;
    a5 = v52;
  }

  else
  {

    v39 = *(v8 + 32);
    v40 = *(v8 + 40);
    v41 = *(v8 + 48);
    v42 = *(v8 + 44);
    swift_beginAccess();
    swift_beginAccess();

    v43 = v40 | (v42 << 32);
    v38 = v51;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), v39, v43, v41, a1, v51, a3 & 0xFFFFFFFF000000FFLL, v17, v16 & 1);
    swift_endAccess();
    swift_endAccess();

    a5 = v52;
  }

  swift_beginAccess();
  v54 = v38;
  v55 = a3;
  v56 = v50;
  v57 = v16 & 1;
  ResolvedGradientVector.add(_:scaledBy:)(&v54, 1.0);
  swift_endAccess();
  *(v8 + 72) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
  if ((v45 & 1) == 0)
  {
    v46 = 0.0;
    if (*&result > 0.0)
    {
      v47 = log2(*&result * 240.0);
      v46 = exp2(floor(v47 + 0.01)) * 0.00416666667;
    }

    if (v46 >= *(v8 + 64))
    {
      v46 = *(v8 + 64);
    }

    *(v8 + 64) = v46;
    if (v46 >= 0.0166666667)
    {
      *&result = 0.0;
      v48 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 100);
        v48 = *(v8 + 104);
      }

      else
      {
        v48 = 0;
      }
    }

    *(v8 + 100) = result;
    *(v8 + 104) = v48;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  v10 = a2[3];
  v59 = a2[2];
  v60 = v10;
  v61 = a2[4];
  v62 = *(a2 + 80);
  v11 = a2[1];
  v57 = *a2;
  v58 = v11;
  if (*(v5 + 233))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v41 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v41)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    v42 = a2[3];
    v67 = a2[2];
    v68 = v42;
    v69 = a2[4];
    v70 = *(a2 + 80);
    v43 = a2[1];
    v65 = *a2;
    v66 = v43;
    v44 = *(v6 + 80);
    v73 = *(v6 + 64);
    v74 = v44;
    v75 = *(v6 + 96);
    v76 = *(v6 + 112);
    v45 = *(v6 + 48);
    v71 = *(v6 + 32);
    v72 = v45;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v65, v63);
    v46 = v68;
    *(v6 + 64) = v67;
    *(v6 + 80) = v46;
    *(v6 + 96) = v69;
    *(v6 + 112) = v70;
    v47 = v66;
    *(v6 + 32) = v65;
    *(v6 + 48) = v47;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v71);
    goto LABEL_8;
  }

LABEL_2:
  v12 = a5 - *(v6 + 120);
  swift_beginAccess();
  v13 = *(v6 + 24);
  v14 = *(v6 + 256);

  v54[0] = v13;
  v54[1] = AGCreateWeakAttribute();
  v55 = 0;
  v56 = v14;
  v15 = *(v6 + 264);
  if (v15)
  {
    v16 = *(v6 + 272);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v18 = v17;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v72 + 1) = v19;
    *&v71 = v15;
    *(&v71 + 1) = v16;
    specialized Dictionary.subscript.setter(&v71, v18);
  }

  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  swift_beginAccess();
  v22 = *(v6 + 80);
  v73 = *(v6 + 64);
  v74 = v22;
  v75 = *(v6 + 96);
  v76 = *(v6 + 112);
  v23 = *(v6 + 48);
  v71 = *(v6 + 32);
  v72 = v23;

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v71, &v65);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, &v71);

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v71);

  v24 = *(v6 + 80);
  v25 = *(v6 + 48);
  v50 = *(v6 + 64);
  v51 = v24;
  v26 = *(v6 + 80);
  v52 = *(v6 + 96);
  v27 = *(v6 + 48);
  v49[0] = *(v6 + 32);
  v28 = v49[0];
  v49[1] = v27;
  v67 = v50;
  v68 = v26;
  v69 = *(v6 + 96);
  *(v6 + 256) = 0;
  v29 = *(v6 + 16);
  v53 = *(v6 + 112);
  v70 = *(v6 + 112);
  v65 = v28;
  v66 = v25;
  v30 = *(*a1 + 136);

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v49, v63);
  lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
  v32 = v30(v29, &v65, v54, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v31, v12);

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v49);
  if (v32)
  {
    *(v6 + 24) = v54[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v33 = *(v6 + 80);
    v63[2] = *(v6 + 64);
    v63[3] = v33;
    v63[4] = *(v6 + 96);
    v64 = *(v6 + 112);
    v34 = *(v6 + 48);
    v63[0] = *(v6 + 32);
    v63[1] = v34;
    swift_beginAccess();
    swift_beginAccess();
    v67 = v59;
    v68 = v60;
    v69 = v61;
    v70 = v62;
    v65 = v57;
    v66 = v58;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v63, v48);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v63, a1, &v65, v12);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v63);
  }

  swift_beginAccess();
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(v6 + 32, &v57);
  swift_endAccess();
  *(v6 + 136) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v36 & 1) == 0)
  {
    v37 = 0.0;
    if (*&result > 0.0)
    {
      v38 = log2(*&result * 240.0);
      v37 = exp2(floor(v38 + 0.01)) * 0.00416666667;
    }

    if (v37 >= *(v6 + 128))
    {
      v37 = *(v6 + 128);
    }

    *(v6 + 128) = v37;
    if (v37 >= 0.0166666667)
    {
      *&result = 0.0;
      v39 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 228);
        v39 = *(v6 + 232);
      }

      else
      {
        v39 = 0;
      }
    }

    *(v6 + 228) = result;
    *(v6 + 232) = v39;
  }

  return result;
}

{
  v6 = v5;
  v10 = a2[1];
  v42 = *a2;
  *v43 = v10;
  *&v43[9] = *(a2 + 25);
  if (*(v5 + 153))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v35 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v35)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v36 = *&v43[16];
    v37 = v43[24];
    v38 = *v43;
    *(v5 + 32) = v42;
    *(v5 + 48) = v38;
    *(v5 + 64) = v36;
    *(v5 + 72) = v37;
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 80);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 176);

  v39[0] = v12;
  v39[1] = AGCreateWeakAttribute();
  v40 = 0;
  v41 = v13;
  v14 = *(v5 + 184);
  if (v14)
  {
    v15 = *(v5 + 192);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    *&v49[8] = v18;
    *&v48 = v14;
    *(&v48 + 1) = v15;
    specialized Dictionary.subscript.setter(&v48, v17);
  }

  swift_beginAccess();
  v19 = *(v5 + 16);
  v20 = *(v5 + 24);
  swift_beginAccess();
  v21 = *(v5 + 48);
  v48 = *(v5 + 32);
  *v49 = v21;
  *&v49[9] = *(v5 + 57);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v48);

  *(v5 + 176) = 0;
  v22 = *(v5 + 64);
  v23 = *(v5 + 72);
  v24 = *(v5 + 48);
  v46 = *(v5 + 32);
  *v47 = v24;
  *&v47[16] = v22;
  v47[24] = v23;
  v25 = *(*a1 + 136);
  lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
  v27 = v26;

  LOBYTE(v27) = v25(v28, &v46, v39, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v27, v11);

  if (v27)
  {
    *(v6 + 24) = v39[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v29 = *(v6 + 48);
    v44 = *(v6 + 32);
    v45[0] = v29;
    *(v45 + 9) = *(v6 + 57);
    swift_beginAccess();
    swift_beginAccess();
    v46 = v42;
    *v47 = *v43;
    *&v47[9] = *&v43[9];
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v44, a1, &v46, v11);
    swift_endAccess();
    swift_endAccess();
  }

  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(v6 + 32, &v42);
  *(v6 + 96) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v31 & 1) == 0)
  {
    v32 = 0.0;
    if (*&result > 0.0)
    {
      v33 = log2(*&result * 240.0);
      v32 = exp2(floor(v33 + 0.01)) * 0.00416666667;
    }

    if (v32 >= *(v6 + 88))
    {
      v32 = *(v6 + 88);
    }

    *(v6 + 88) = v32;
    if (v32 >= 0.0166666667)
    {
      *&result = 0.0;
      v34 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 148);
        v34 = *(v6 + 152);
      }

      else
      {
        v34 = 0;
      }
    }

    *(v6 + 148) = result;
    *(v6 + 152) = v34;
  }

  return result;
}

{
  v6 = v5;
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  if (*(v5 + 317))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v50 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v50)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    v51 = a2[5];
    *(v6 + 96) = a2[4];
    *(v6 + 112) = v51;
    v52 = a2[7];
    *(v6 + 128) = a2[6];
    *(v6 + 144) = v52;
    v53 = a2[1];
    *(v6 + 32) = *a2;
    *(v6 + 48) = v53;
    v54 = a2[3];
    *(v6 + 64) = a2[2];
    *(v6 + 80) = v54;
    goto LABEL_8;
  }

LABEL_2:
  v14 = a5 - *(v6 + 160);
  swift_beginAccess();
  v15 = *(v6 + 24);
  v16 = *(v6 + 336);

  v56[0] = v15;
  v56[1] = AGCreateWeakAttribute();
  v57 = 0;
  v58 = v16;
  v17 = *(v6 + 344);
  if (v17)
  {
    v18 = *(v6 + 352);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v20 = v19;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v77 + 1) = v21;
    *&v76 = v17;
    *(&v76 + 1) = v18;
    specialized Dictionary.subscript.setter(&v76, v20);
  }

  swift_beginAccess();
  v22 = *(v6 + 16);
  v23 = *(v6 + 24);
  swift_beginAccess();
  v24 = *(v6 + 112);
  v80 = *(v6 + 96);
  v81 = v24;
  v25 = *(v6 + 144);
  v82 = *(v6 + 128);
  v83 = v25;
  v26 = *(v6 + 48);
  v76 = *(v6 + 32);
  v77 = v26;
  v27 = *(v6 + 80);
  v78 = *(v6 + 64);
  v79 = v27;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v22, v23, &v76);

  *(v6 + 336) = 0;
  v28 = *(v6 + 112);
  v72 = *(v6 + 96);
  v73 = v28;
  v29 = *(v6 + 144);
  v74 = *(v6 + 128);
  v75 = v29;
  v30 = *(v6 + 48);
  v68 = *(v6 + 32);
  v69 = v30;
  v31 = *(v6 + 80);
  v70 = *(v6 + 64);
  v71 = v31;
  v32 = *(*a1 + 136);
  lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();
  v34 = v33;

  LOBYTE(v34) = v32(v35, &v68, v56, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v34, v14);

  if (v34)
  {
    *(v6 + 24) = v56[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v36 = *(v6 + 112);
    v67[4] = *(v6 + 96);
    v67[5] = v36;
    v37 = *(v6 + 144);
    v67[6] = *(v6 + 128);
    v67[7] = v37;
    v38 = *(v6 + 48);
    v67[0] = *(v6 + 32);
    v67[1] = v38;
    v39 = *(v6 + 80);
    v67[2] = *(v6 + 64);
    v67[3] = v39;
    swift_beginAccess();
    swift_beginAccess();
    v72 = v63;
    v73 = v64;
    v74 = v65;
    v75 = v66;
    v68 = v59;
    v69 = v60;
    v70 = v61;
    v71 = v62;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v67, a1, &v68, v14);
    swift_endAccess();
    swift_endAccess();
  }

  v40 = *(v6 + 112);
  v55[4] = *(v6 + 96);
  v55[5] = v40;
  v41 = *(v6 + 144);
  v55[6] = *(v6 + 128);
  v55[7] = v41;
  v42 = *(v6 + 48);
  v55[0] = *(v6 + 32);
  v55[1] = v42;
  v43 = *(v6 + 80);
  v55[2] = *(v6 + 64);
  v55[3] = v43;
  static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(v55);
  *(v6 + 176) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v45 & 1) == 0)
  {
    v46 = 0.0;
    if (*&result > 0.0)
    {
      v47 = log2(*&result * 240.0);
      v46 = exp2(floor(v47 + 0.01)) * 0.00416666667;
    }

    if (v46 >= *(v6 + 168))
    {
      v46 = *(v6 + 168);
    }

    *(v6 + 168) = v46;
    if (v46 >= 0.0166666667)
    {
      *&result = 0.0;
      v48 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 312);
        v48 = *(v6 + 316);
      }

      else
      {
        v48 = 0;
      }
    }

    *(v6 + 312) = result;
    *(v6 + 316) = v48;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, float a7, double a8)
{
  v9 = v8;
  v47 = a5.n128_f32[0];
  v48 = a6.n128_f32[0];
  v49 = a4.n128_f32[0];
  if (*(v8 + 93))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v46 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v46)
  {
LABEL_25:
    swift_beginAccess();
    *(v8 + 16) = a1;

    swift_beginAccess();
    *(v8 + 32) = v49;
    *(v8 + 36) = v47;
    *(v8 + 40) = v48;
    *(v8 + 44) = a7;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a8 - *(v8 + 48);
  swift_beginAccess();
  v14 = *(v8 + 24);
  v15 = *(v8 + 112);

  v53[0] = v14;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v15;
  v16 = *(v8 + 120);
  if (v16)
  {
    v17 = *(v9 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v51[3] = v20;
    v51[0] = v16;
    v51[1] = v17;
    specialized Dictionary.subscript.setter(v51, v19);
  }

  swift_beginAccess();
  v21 = *(v9 + 16);
  v22 = *(v9 + 24);
  swift_beginAccess();
  v23 = *(v9 + 32);
  v24 = *(v9 + 36);
  v25 = *(v9 + 40);
  v26 = *(v9 + 44);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25, v26);

  *(v9 + 112) = 0;
  v52 = *(v9 + 32);
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, &v52, v53, v29, v31, v13);

  if (v29)
  {
    *(v9 + 24) = v53[0];

    *(v9 + 16) = a1;

    v34.f32[0] = v49;
    v33 = a7;
    v36 = v47;
    v35 = v48;
  }

  else
  {

    v37 = *(v9 + 32);
    v38 = *(v9 + 36);
    v39 = *(v9 + 40);
    v40 = *(v9 + 44);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v9 + 16), (v9 + 24), a1, v37, v38, v39, v40, v13, v49, v47, v48, a7);
    swift_endAccess();
    swift_endAccess();
    v36 = v47;
    v35 = v48;
    v34.f32[0] = v49;
    v33 = a7;
  }

  v34.f32[1] = v36;
  v34.i64[1] = __PAIR64__(LODWORD(v33), LODWORD(v35));
  *(v9 + 32) = vaddq_f32(*(v9 + 32), v34);
  *(v9 + 64) = a8;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v42 & 1) == 0)
  {
    v43 = 0.0;
    if (*&result > 0.0)
    {
      v44 = log2(*&result * 240.0);
      v43 = exp2(floor(v44 + 0.01)) * 0.00416666667;
    }

    if (v43 >= *(v9 + 56))
    {
      v43 = *(v9 + 56);
    }

    *(v9 + 56) = v43;
    if (v43 >= 0.0166666667)
    {
      *&result = 0.0;
      v45 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v9 + 88);
        v45 = *(v9 + 92);
      }

      else
      {
        v45 = 0;
      }
    }

    *(v9 + 88) = result;
    *(v9 + 92) = v45;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, double *a2, void *a3, uint64_t a4, double a5)
{
  v10 = v5;
  if (*(v5 + 253))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v142 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v142)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v143 = *(a2 + 3);
    *(v5 + 64) = *(a2 + 2);
    *(v5 + 80) = v143;
    v144 = *(a2 + 5);
    *(v5 + 96) = *(a2 + 4);
    *(v5 + 112) = v144;
    v145 = *(a2 + 1);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v145;
    goto LABEL_8;
  }

LABEL_2:
  v150 = a3;
  v11 = a5 - *(v5 + 128);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 272);

  v185[0] = v12;
  v185[1] = AGCreateWeakAttribute();
  v186 = 0;
  v187 = v13;
  v14 = *(v5 + 280);
  if (v14)
  {
    v15 = *(v10 + 288);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    *(&v190 + 1) = v18;
    *&v189 = v14;
    *(&v189 + 1) = v15;
    specialized Dictionary.subscript.setter(&v189, v17);
  }

  swift_beginAccess();
  v19 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_beginAccess();
  v21 = *(v10 + 80);
  v191 = *(v10 + 64);
  v192 = v21;
  v22 = *(v10 + 112);
  v193 = *(v10 + 96);
  v194 = v22;
  v23 = *(v10 + 48);
  v189 = *(v10 + 32);
  v190 = v23;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v189);

  *(v10 + 272) = 0;
  v24 = *(v10 + 80);
  v184[2] = *(v10 + 64);
  v184[3] = v24;
  v25 = *(v10 + 112);
  v184[4] = *(v10 + 96);
  v184[5] = v25;
  v26 = *(v10 + 48);
  v184[0] = *(v10 + 32);
  v184[1] = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
  v31 = v30;

  LOBYTE(v29) = v27(v32, v184, v185, v29, v31, v11);

  if (v29)
  {
    *(v10 + 24) = v185[0];

    *(v10 + 16) = a1;
  }

  else
  {

    v33 = *(v10 + 80);
    v188[2] = *(v10 + 64);
    v188[3] = v33;
    v34 = *(v10 + 112);
    v188[4] = *(v10 + 96);
    v188[5] = v34;
    v35 = *(v10 + 48);
    v188[0] = *(v10 + 32);
    v188[1] = v35;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v10 + 16), (v10 + 24), v188, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v149 = v10;
  swift_beginAccess();
  v36 = *(v10 + 80);
  v166 = *(v10 + 64);
  v167 = v36;
  v37 = *(v10 + 112);
  v168 = *(v10 + 96);
  v169 = v37;
  v38 = *(v10 + 48);
  v164 = *(v10 + 32);
  v165 = v38;
  v39 = *(a2 + 3);
  v160 = *(a2 + 2);
  v161 = v39;
  v40 = *(a2 + 5);
  v162 = *(a2 + 4);
  v163 = v40;
  v41 = *(a2 + 1);
  v158 = *a2;
  v159 = v41;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v43 = v42;
  v148 = &v146;
  v44 = MEMORY[0x1E69E7DE0];
  v45 = *(MEMORY[0x1E69E7DE0] - 8);
  v46 = v45[8];
  v47 = MEMORY[0x1EEE9AC00](v42);
  v155 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v45[2];
  v49 = v48(&v146 - v155, &v164, v44, v47);
  v156 = v48;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = &v146 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52(v51, &v158, v44, v50);
  v154 = *(v43 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v53 = v45[1];
  v53(v51, v44);
  v54 = (v53)(v51, v44);
  v148 = &v146;
  v182[0] = &v170;
  v153 = v46;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = v155;
  v56 = v156;
  v58 = (v156)(&v146 - v155, &v164 + 8, v44, v55);
  v147 = &v146;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v56(&v146 - v57, &v158 + 8, v44, v59);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v157 = v53;
  v53(&v146 - v57, v44);
  v60 = (v53)(&v146 - v57, v44);
  v148 = &v146;
  v182[1] = &v171;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v62 = v156;
  v63 = (v156)(&v146 - v57, &v165, v44, v61);
  v147 = &v146;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v62(&v146 - v57, &v159, v44, v64);
  v151 = v45 + 2;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v65 = v157;
  v157(&v146 - v57, v44);
  v66 = v65(&v146 - v57, v44);
  v148 = &v146;
  v182[2] = &v172;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v68 = v57;
  v69 = &v146 - v57;
  v70 = &v146 - v57;
  v71 = v156;
  v72 = (v156)(v70, &v165 + 8, v44, v67);
  v147 = &v146;
  v73 = MEMORY[0x1EEE9AC00](v72);
  v71(&v146 - v68, &v159 + 8, v44, v73);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v74 = v157;
  v157(&v146 - v68, v44);
  v75 = v74(v69, v44);
  v148 = &v146;
  v182[3] = &v173;
  v76 = MEMORY[0x1EEE9AC00](v75);
  v77 = v155;
  v78 = &v146 - v155;
  v79 = (v71)(&v146 - v155, &v166, v44, v76);
  v147 = &v146;
  v80 = MEMORY[0x1EEE9AC00](v79);
  v71(&v146 - v77, &v160, v44, v80);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v81 = v157;
  v152 = v45 + 1;
  v157(&v146 - v77, v44);
  v82 = v81(v78, v44);
  v148 = &v146;
  v182[4] = &v174;
  v83 = MEMORY[0x1EEE9AC00](v82);
  v85 = v155;
  v84 = v156;
  v86 = &v146 - v155;
  v87 = (v156)(&v146 - v155, &v166 + 8, v44, v83);
  v147 = &v146;
  v88 = MEMORY[0x1EEE9AC00](v87);
  v84(&v146 - v85, &v160 + 8, v44, v88);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v89 = &v146 - v85;
  v90 = v157;
  v157(v89, v44);
  v91 = v90(v86, v44);
  v148 = &v146;
  v182[5] = &v175;
  v92 = MEMORY[0x1EEE9AC00](v91);
  v93 = v155;
  v94 = v156;
  v95 = (v156)(&v146 - v155, &v167, v44, v92);
  v147 = &v146;
  v96 = MEMORY[0x1EEE9AC00](v95);
  v94(&v146 - v93, &v161, v44, v96);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v97 = v157;
  v157(&v146 - v93, v44);
  v98 = v97(&v146 - v93, v44);
  v148 = &v146;
  v182[6] = &v176;
  v99 = MEMORY[0x1EEE9AC00](v98);
  v100 = v155;
  v101 = &v146 - v155;
  v102 = (v94)(&v146 - v155, &v167 + 8, v44, v99);
  v147 = &v146;
  v103 = MEMORY[0x1EEE9AC00](v102);
  v94(&v146 - v100, (&v161 + 8), v44, v103);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v104 = v157;
  v157(&v146 - v100, v44);
  v105 = v104(v101, v44);
  v148 = &v146;
  v182[7] = &v177;
  v106 = MEMORY[0x1EEE9AC00](v105);
  v108 = v155;
  v107 = v156;
  v109 = &v146 - v155;
  v110 = (v156)(&v146 - v155, &v168, v44, v106);
  v147 = &v146;
  v111 = MEMORY[0x1EEE9AC00](v110);
  v107(&v146 - v108, &v162, v44, v111);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v112 = &v146 - v108;
  v113 = v157;
  v157(v112, v44);
  v114 = v113(v109, v44);
  v148 = &v146;
  v182[8] = &v178;
  v115 = MEMORY[0x1EEE9AC00](v114);
  v117 = v155;
  v116 = v156;
  v118 = &v146 - v155;
  v119 = (v156)(&v146 - v155, &v168 + 8, v44, v115);
  v147 = &v146;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v121 = &v146 - v117;
  v116(v121, &v162 + 8, v44, v120);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v113(v121, v44);
  v122 = v113(v118, v44);
  v148 = &v146;
  v182[9] = &v179;
  v123 = MEMORY[0x1EEE9AC00](v122);
  v124 = v155;
  v125 = (v116)(&v146 - v155, &v169, v44, v123);
  v147 = &v146;
  v126 = MEMORY[0x1EEE9AC00](v125);
  v116(&v146 - v124, &v163, v44, v126);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v127 = v157;
  v157(&v146 - v124, v44);
  v128 = v127(&v146 - v124, v44);
  v148 = &v146;
  v182[10] = &v180;
  v129 = MEMORY[0x1EEE9AC00](v128);
  v130 = v156;
  v131 = (v156)(&v146 - v124, &v169 + 8, v44, v129);
  v147 = &v146;
  v132 = MEMORY[0x1EEE9AC00](v131);
  v130(&v146 - v124, &v163 + 8, v44, v132);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v127(&v146 - v124, v44);
  v127(&v146 - v124, v44);
  v182[11] = &v181;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v182, v183);
  v133 = v183[3];
  v134 = v149;
  *(v149 + 64) = v183[2];
  *(v134 + 80) = v133;
  v135 = v183[5];
  *(v134 + 96) = v183[4];
  *(v134 + 112) = v135;
  v136 = v183[1];
  *(v134 + 32) = v183[0];
  *(v134 + 48) = v136;
  swift_endAccess();
  v10 = v134;
  *(v134 + 144) = a5;
  a3 = v150;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v138 & 1) == 0)
  {
    v139 = 0.0;
    if (*&result > 0.0)
    {
      v140 = log2(*&result * 240.0);
      v139 = exp2(floor(v140 + 0.01)) * 0.00416666667;
    }

    if (v139 >= *(v10 + 136))
    {
      v139 = *(v10 + 136);
    }

    *(v10 + 136) = v139;
    if (v139 >= 0.0166666667)
    {
      *&result = 0.0;
      v141 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v10 + 248);
        v141 = *(v10 + 252);
      }

      else
      {
        v141 = 0;
      }
    }

    *(v10 + 248) = result;
    *(v10 + 252) = v141;
  }

  return result;
}

uint64_t AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, double *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v6 = v5;
  v10 = *(*v5 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v45 - v12);
  v15 = *v14;
  v17 = *(v5 + *(v16 + 160));
  v18 = *(v16 + 88);
  v52 = v18;
  if (v17)
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v39 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    v40 = dyld_program_sdk_at_least();
    v18 = v52;
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v41 = static Semantics.forced >= v39;
    v18 = v52;
    if (!v41)
    {
LABEL_25:
      swift_beginAccess();
      v5[2] = a1;

      v42 = *(*v5 + 112);
      swift_beginAccess();
      (*(v11 + 24))(v6 + v42, a2, v10);
      swift_endAccess();
      goto LABEL_8;
    }
  }

LABEL_2:
  v49 = a1;
  v50 = a2;
  v51 = a4;
  v19 = v15 - *(v5 + *(*v5 + 120));
  swift_beginAccess();
  v54[0] = v5[3];
  v48 = *(*v5 + 184);
  v20 = *(v5 + v48);

  AnimationContext.init(state:environment:isLogicallyComplete:)(v54, v20, v55);
  v22 = (v5 + *(*v5 + 192));
  v23 = *v22;
  if (*v22)
  {
    v24 = v22[1];
    v25 = type metadata accessor for AnimationContext(0, v10, v18, v21);
    AnimationContext.finishingDefinition.setter(v23, v24, v25);
  }

  swift_beginAccess();
  v26 = v5[2];
  v53[0] = v5[3];
  v27 = *(*v5 + 112);
  swift_beginAccess();
  v28 = *(v11 + 16);
  v28(v13, v5 + v27, v10);

  AnimatorState.forkListeners(animation:state:interval:)(v26, v53, v13);

  v29 = *(v11 + 8);
  v29(v13, v10);

  *(v5 + v48) = 0;
  v48 = v27;
  v46 = v28;
  v28(v13, v5 + v27, v10);

  v31 = v49;
  LOBYTE(v26) = Animation.shouldMerge<A>(previous:value:time:context:)(v30, v13, v55, v49, v10, v52);

  v47 = v29;
  v29(v13, v10);
  if (v26)
  {
    v5[3] = v55[0];

    v5[2] = v31;
  }

  else
  {

    v46(v13, v5 + v48, v10);
    swift_beginAccess();
    swift_beginAccess();
    combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(v5 + 2, v5 + 3, v13, v31, v50, v10, v52, v19);
    swift_endAccess();
    swift_endAccess();
    v47(v13, v10);
  }

  a4 = v51;
  swift_beginAccess();
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  swift_endAccess();
  *(v5 + *(*v5 + 136)) = v15;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    v36 = *(*v6 + 128);
    if (v34 >= *(v6 + v36))
    {
      v34 = *(v6 + v36);
    }

    *(v6 + v36) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v37 = *v6;
      v38 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      v37 = *v6;
      if ((result & 0x100000000) != 0)
      {
        v43 = *(v37 + 152);
        result = *(v6 + v43);
        v38 = *(v6 + v43 + 4);
      }

      else
      {
        v38 = 0;
      }
    }

    v44 = v6 + *(v37 + 152);
    *v44 = result;
    v44[4] = v38;
  }

  return result;
}

BOOL _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_AA0C4PairVyA2HGQP_Tt1g5(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v34 = a1;
  *&v34[1] = a2;
  *&v34[2] = a3;
  *v33 = a4;
  *&v33[1] = a5;
  *&v33[2] = a6;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v6 = MEMORY[0x1E69E7DE0];
  v7 = *(MEMORY[0x1E69E7DE0] - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  type metadata accessor for (CGFloat, AnimatablePair<CGFloat, CGFloat>)(0);
  v15 = v14;
  v16 = *(v7 + 16);
  v16(v10, v34 + *(v14 + 32), v6);
  v16(v13, v33 + *(v15 + 32), v6);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v13, v6);
  v18(v10, v6);
  result = 0;
  if (v17)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v20 = v19;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v21 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v22);
    v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v28 = v33 - v27;
    v29 = *(v21 + 16);
    v29(v24, v34 + *(v15 + 48), v20, v26);
    (v29)(v28, v33 + *(v15 + 48), v20);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v21 + 8);
    v31(v28, v20);
    v31(v24, v20);
    if (v30)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A2HQP_Tt1g5(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v43 = a1;
  *&v43[1] = a2;
  *&v43[2] = a3;
  *v42 = a4;
  *&v42[1] = a5;
  *&v42[2] = a6;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v6 = MEMORY[0x1E69E7DE0];
  v7 = *(MEMORY[0x1E69E7DE0] - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  type metadata accessor for (CGFloat, CGFloat, CGFloat)();
  v15 = v14;
  v16 = *(v7 + 16);
  v16(v10, v43 + *(v14 + 32), v6);
  v16(v13, v42 + *(v15 + 32), v6);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v13, v6);
  v18(v10, v6);
  if (v17)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v19 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v20);
    v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v23);
    v25 = v42 - v24;
    type metadata accessor for (CGFloat, CGFloat, CGFloat)();
    v27 = v26;
    v28 = *(v19 + 16);
    v28(v22, v43 + *(v26 + 48), v6);
    v28(v25, v42 + *(v27 + 48), v6);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *(v19 + 8);
    v29(v25, v6);
    v29(v22, v6);
    if (v17)
    {
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      v30 = *(v6 - 8);
      MEMORY[0x1EEE9AC00](v31);
      v33 = v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v34);
      v36 = v42 - v35;
      type metadata accessor for (CGFloat, CGFloat, CGFloat)();
      v38 = v37;
      v39 = *(v30 + 16);
      v39(v33, v43 + *(v37 + 64), v6);
      v39(v36, v42 + *(v38 + 64), v6);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v30 + 8);
      v40(v36, v6);
      v40(v33, v6);
    }
  }

  return v17 & 1;
}

uint64_t _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v31[2] = a1[2];
  v31[3] = v2;
  v3 = a1[5];
  v31[4] = a1[4];
  v31[5] = v3;
  v4 = a1[1];
  v31[0] = *a1;
  v31[1] = v4;
  v5 = a2[3];
  v30[2] = a2[2];
  v30[3] = v5;
  v6 = a2[5];
  v30[4] = a2[4];
  v30[5] = v6;
  v7 = a2[1];
  v30[0] = *a2;
  v30[1] = v7;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v29 = v8;
  v9 = *(MEMORY[0x1E69E7DE0] - 8);
  v25[1] = *(v9 + 64);
  type metadata accessor for (CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat)();
  v27 = v10;
  v26 = *(v9 + 16);
  v28 = v9 + 16;
  v11 = (v9 + 8);
  for (i = 32; i != 224; i += 16)
  {
    MEMORY[0x1EEE9AC00](v10);
    v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = v25 - v17;
    v19 = v27;
    v20 = MEMORY[0x1E69E7DE0];
    v21 = v26;
    (v26)(v14, v31 + *(v27 + i), MEMORY[0x1E69E7DE0], v16);
    v21(v18, v30 + *(v19 + i), v20);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v11;
    (*v11)(v18, v20);
    v10 = (v23)(v14, v20);
    if ((v22 & 1) == 0)
    {
      break;
    }
  }

  return v22 & 1;
}

Swift::Void __swiftcall AnimatableAttributeHelper.removeListeners()()
{
  if (*(v1 + *(v0 + 48)))
  {
    AnimatorState.removeListeners()();
  }
}

double AnimatableFrameAttributeVFD.init(position:size:pixelLength:environment:phase:time:transaction:animationsDisabled:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  result = 0.0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 145) = a8;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0;
  *(a9 + 144) = 1;
  return result;
}

double AnimatableFrameAttribute.init(position:size:pixelLength:environment:phase:time:transaction:animationsDisabled:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  result = 0.0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 84) = a8;
  return result;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, a2, a3, a4, type metadata accessor for CombinedAnimationState);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v6, v9);
  outlined init with take of Any(v9, v10);
  outlined init with take of Any(v10, v9);
  swift_dynamicCast();
  return v11;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, &v6);
  swift_dynamicCast();
  return v9;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVySdGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  type metadata accessor for AnimationFinishingDefinitionKey<Double>?(0);
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVyAMGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, v7);
  swift_dynamicCast();
  return v9;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);
  outlined init with take of Any(v8, v9);
  outlined init with take of Any(v9, &v7);
  swift_dynamicCast();
  return v10;
}

Swift::Void __swiftcall AnimatableFrameAttribute.destroy()()
{
  if (*(v0 + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

void protocol witness for ObservedAttribute.destroy() in conformance AnimatableFrameAttribute()
{
  if (*(v0 + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v227 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v203 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v9 = (v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v187 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v204 = (v187 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v187 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v205 = v187 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v195 = v187 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_128;
  }

  GlassContainerCache.UnwrappedMaterial.animatableData.getter(&v224);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, &v218, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!v218)
  {
    outlined destroy of HitTestableEvent?(&v218, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    goto LABEL_127;
  }

  v190 = v17;
  v222[0] = v218;
  v222[1] = v219;
  v223 = v220;
  v26 = v218;
  if (v224 == v218 && ((*(v224 + 88))(&v224 + 8, v222 + 8) & 1) != 0)
  {
    outlined destroy of _AnyAnimatableData(v222);
    goto LABEL_127;
  }

  v207 = a2;
  v196 = a1;
  v201 = v9;
  v187[0] = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial, &type metadata for GlassContainerCache.UnwrappedMaterial, type metadata accessor for AnimatableAttributeHelper);
  Counter = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial, &type metadata for GlassContainerCache.UnwrappedMaterial, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v28 = Transaction.effectiveAnimation.getter(Counter);
  if (v28)
  {
    v29 = v28;
    goto LABEL_18;
  }

  v29 = v207;
  if (v207)
  {

LABEL_18:
    v30 = v196;
    outlined init with copy of _AnyAnimatableData(&v224, &v216);
    v31 = v216;
    if (v216 == v26)
    {
      v216[13](v217, v222 + 8);
    }

    else if (v31 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v216);
      outlined init with copy of _AnyAnimatableData(v222, &v216);
      (v216[14])(v217);
    }

    v24 = *AGGraphGetValue();
    v192 = a4;
    v32 = *(a4 + 56);
    v189 = a3;
    v187[1] = v29;
    v188 = Counter;
    if (!v32)
    {
      outlined init with copy of _AnyAnimatableData(&v216, &v218);
      v211 = &type metadata for GlassContainerCache.UnwrappedMaterial;
      type metadata accessor for GlassContainerCache.UnwrappedMaterial.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type, &type metadata for _AnyAnimatableData);
      v54 = swift_dynamicCast();
      if (v54)
      {
        v55 = v212;
      }

      else
      {
        v55 = 0;
      }

      if (v54)
      {
        v56 = *(&v212 + 1);
      }

      else
      {
        v56 = 0;
      }

      v191 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v57, &v218, Counter, v55, v56, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v59) = CurrentAttribute;
      LODWORD(Counter) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v60) = 0;
      }

      else
      {
        LODWORD(v60) = CurrentAttribute;
      }

      v61 = *v30;
      v62 = v30[1];
      outlined copy of Material?(*v30, v62);
      v63 = outlined consume of Material?(v61, v62);
      (*(*v29 + 96))(&v212, v63);
      v65 = *(&v212 + 1);
      v64 = v212;
      v66 = *(&v213 + 1);
      v67 = v213;
      v68 = v214;
      v210 = 0x7FF8000000000000;
      v211 = 0x7FF8000000000000;
      v208 = NAN;
      v209 = 0x3FF0000000000000;
      v218 = v212;
      v219 = v213;
      v220 = v214;
      LODWORD(v207) = v215;
      LOBYTE(v221) = v215;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v211, &v210, &v209, &v208);
      v69 = v210;
      v70 = v211;
      v71 = v208;
      v72 = v209;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_42;
    }

    LOBYTE(v218) = 0;
    v191 = v32;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v29, &v216, Counter, a3, v24);
    v33 = AGGraphGetCurrentAttribute();
    LODWORD(Counter) = v33;
    v34 = *MEMORY[0x1E698D3F8];
    if (v33 == *MEMORY[0x1E698D3F8])
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    v36 = *v30;
    v37 = v30[1];
    outlined copy of Material?(*v30, v37);
    v38 = outlined consume of Material?(v36, v37);
    (*(*v29 + 96))(&v212, v38);
    v39 = v212;
    v41 = *(&v213 + 1);
    v40 = v213;
    v42 = v214;
    v43 = v215;
    v210 = 0x7FF8000000000000;
    v211 = 0x7FF8000000000000;
    v208 = NAN;
    v209 = 0x3FF0000000000000;
    v218 = v212;
    v219 = v213;
    v220 = v214;
    LOBYTE(v221) = v215;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v211, &v210, &v209, &v208);
    v44 = v210;
    v45 = v211;
    v46 = v208;
    v47 = v209;
    if (one-time initialization token for enabledCategories != -1)
    {
      v207 = v211;
      v201 = v210;
      v202 = v209;
      v200 = v208;
      swift_once();
      v46 = v200;
      v44 = v201;
      v47 = v202;
      v45 = v207;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_199:
      swift_once();
LABEL_52:
      v86 = *(&static Signpost.animationState + 1);
      v60 = static Signpost.animationState;
      v87 = word_1ED5283E8;
      v88 = HIBYTE(word_1ED5283E8);
      v89 = byte_1ED5283EA;
      v90 = static os_signpost_type_t.event.getter();
      v218 = __PAIR128__(v86, v60);
      LOBYTE(v219) = v87;
      BYTE1(v219) = v88;
      BYTE2(v219) = v89;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v192;
        goto LABEL_126;
      }

      LODWORD(v202) = v90;
      v91 = one-time initialization token for _signpostLog;

      if (v91 != -1)
      {
        swift_once();
      }

      v92 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v41)
      {
        __break(1u);
      }

      else
      {
        v94 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v95 = MEMORY[0x1E69E6870];
        *(v93 + 56) = MEMORY[0x1E69E6810];
        *(v93 + 64) = v95;
        *(v93 + 32) = Counter;
        v96 = AGGraphGetCurrentAttribute();
        if (v96 != v41)
        {
          v97 = MEMORY[0x1E69E76D0];
          *(v93 + 96) = MEMORY[0x1E69E7668];
          *(v93 + 104) = v97;
          *(v93 + 72) = v96;
          v207 = v93;
          *(v93 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v207 + 144) = v98;
          *(v207 + 112) = 0xD000000000000011;
          *(v207 + 120) = 0x800000018DD7EDF0;
          Counter = v207;
          if (v88)
          {
            LOBYTE(v208) = v202;
            v210 = v92;
            v211 = &dword_18D018000;
            *&v218 = v60;
            *(&v218 + 1) = v86;
            LOBYTE(v219) = v87;
            *&v212 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v212 + 1) = 39;
            LOBYTE(v213) = 2;
            v209 = v207;
            v99 = v190;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v208, &v211, &v210, &v218, v190, &v212, &v209);

            (*(v203 + 8))(v99, v206);
          }

          else
          {
            v100 = v60;
            if (v60 == 20)
            {
              v101 = 3;
            }

            else
            {
              v101 = 4;
            }

            a4 = bswap32(v60) | (4 * WORD1(v60));
            v102 = v202;
            v103 = (v203 + 16);
            v193 = *(v203 + 16);
            v104 = v193(v204, v190, v206);
            v60 = 0;
            LOBYTE(v212) = 1;
            v202 = v101;
            v194 = v103;
            v199 = 16 * v101;
            *&v200 = v103 - 8;
            v197 = v100;
            v198 = (Counter + 4);
            do
            {
              v201 = v187;
              MEMORY[0x1EEE9AC00](v104);
              a1 = (v187 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
              v107 = a1 + 1;
              v108 = v202;
              v109 = a1 + 1;
              do
              {
                *(v109 - 1) = 0;
                *v109 = 0;
                v109 += 2;
                v108 = (v108 - 1);
              }

              while (v108);
              v110 = (v198 + 40 * v60);
              v111 = v202;
              while (1)
              {
                v112 = *(v207 + 16);
                if (v60 == v112)
                {
                  break;
                }

                if (v60 >= v112)
                {
                  goto LABEL_191;
                }

                ++v60;
                outlined init with copy of AnyTrackedValue(v110, &v218);
                v113 = *(&v219 + 1);
                Counter = v220;
                __swift_project_boxed_opaque_existential_1(&v218, *(&v219 + 1));
                *(v107 - 1) = CVarArg.kdebugValue(_:)(a4 | v102, v113, Counter);
                *v107 = v114 & 1;
                v107 += 2;
                v105 = __swift_destroy_boxed_opaque_existential_1(&v218);
                v110 += 5;
                v111 = (v111 - 1);
                if (!v111)
                {
                  goto LABEL_72;
                }
              }

              LOBYTE(v212) = 0;
LABEL_72:
              v115 = v197;
              if (v197 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (*(a1 + 8) == 1)
              {
                kdebug_trace_string();
              }

              if (*(a1 + 24) == 1)
              {
                kdebug_trace_string();
              }

              if (*(a1 + 40) == 1)
              {
                kdebug_trace_string();
              }

              if (v115 != 20 && *(a1 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              Counter = **&v200;
              v116 = v204;
              v117 = v206;
              (**&v200)(v204, v206);
              v118 = __swift_project_value_buffer(v117, static OSSignpostID.continuation);
              v104 = v193(v116, v118, v117);
            }

            while ((v212 & 1) != 0);

            v119 = v206;
            (Counter)(v204, v206);
            (Counter)(v190, v119);
          }

          a4 = v192;
          goto LABEL_126;
        }
      }

      __break(1u);
      goto LABEL_207;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v48 = v35;
      v49 = v43;
      v50 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v51 = Counter == v34;
        v207 = *(static CustomEventTrace.recorder + 24);
        *(v207 + 4) = 1602;
        v52 = *(v50 + 16);
        LODWORD(v218) = v48;
        BYTE4(v218) = v51;
        *(&v218 + 1) = &type metadata for GlassContainerCache.UnwrappedMaterial;
        *&v219 = v45;
        *(&v219 + 1) = v44;
        v220 = v47;
        v221 = v46;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v202 = v53;

        Counter = v52;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v39, *(&v39 + 1), v40, v41, v42, v49);

        goto LABEL_51;
      }

      v80 = *(&v39 + 1);
      v79 = v39;
      v81 = v40;
      v82 = v41;
      v83 = v42;
      v84 = v49;
    }

    else
    {
      v80 = *(&v39 + 1);
      v79 = v39;
      v81 = v40;
      v82 = v41;
      v83 = v42;
      v84 = v43;
    }

    outlined consume of Animation.Function(v79, v80, v81, v82, v83, v84);
LABEL_51:
    LODWORD(v41) = v34;
    v85 = one-time initialization token for animationState;

    if (v85 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_199;
  }

  outlined destroy of _AnyAnimatableData(v222);

  a1 = v196;
LABEL_127:
  while (1)
  {
    result = outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    v152 = v225;
    *(a4 + 16) = v224;
    *(a4 + 32) = v152;
    *(a4 + 48) = v226;
LABEL_128:
    v111 = *(a4 + 56);
    if (!v111)
    {
      return result;
    }

    GlassContainerCache.UnwrappedMaterial.animatableData.getter(&v218);
    LOBYTE(v212) = 0;
    v153 = specialized AnimatorState.update(_:at:environment:)(&v218, a3, v24);
    v105 = AGGraphGetCurrentAttribute();
    LODWORD(v60) = *MEMORY[0x1E698D3F8];
    if (v105 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(Counter) = 0;
    }

    else
    {
      LODWORD(Counter) = v105;
    }

    v110 = &type metadata instantiation cache for TupleTypeDescription;
    if (v153)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_134;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_195;
    }

LABEL_147:
    v165 = v110[77];
    if (*(v165 + 16) >= 0x43uLL)
    {
      if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v212) = Counter;
        BYTE4(v212) = v105 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_182;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_139:
    v59 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v67 = word_1ED5283E8;
    v156 = HIBYTE(word_1ED5283E8);
    v157 = byte_1ED5283EA;
    v158 = static os_signpost_type_t.end.getter();
    v212 = __PAIR128__(v59, v68);
    LOBYTE(v213) = v67;
    BYTE1(v213) = v156;
    BYTE2(v213) = v157;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_181;
    }

    LODWORD(v204) = v158;
    v159 = one-time initialization token for _signpostLog;
    v65 = v194;

    if (v159 != -1)
    {
      swift_once();
    }

    v64 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    v204 = v70;
    *&v199 = v71;
    v200 = *&v69;
    v202 = v72;
    swift_once();
    v71 = *&v199;
    *&v69 = v200;
    v72 = v202;
    v70 = v204;
LABEL_42:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_204:
      swift_once();
      goto LABEL_90;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v73 = v60;
      v74 = Counter;
      Counter = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v75 = v59 == v74;
        v204 = *(static CustomEventTrace.recorder + 24);
        *(v204 + 2) = 322;
        v76 = Counter[2];
        LODWORD(v218) = v73;
        BYTE4(v218) = v75;
        *(&v218 + 1) = &type metadata for GlassContainerCache.UnwrappedMaterial;
        *&v219 = v70;
        *(&v219 + 1) = v69;
        v220 = v72;
        v221 = v71;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v202 = v77;

        v78 = v76;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v64, v65, v67, v66, v68, v207);
        LODWORD(Counter) = v74;
      }

      else
      {
        outlined consume of Animation.Function(v64, v65, v67, v66, v68, v207);
        LODWORD(Counter) = v74;
      }
    }

    else
    {
      outlined consume of Animation.Function(v64, v65, v67, v66, v68, v207);
    }

    v120 = one-time initialization token for animationState;
    v65 = v191;

    if (v120 != -1)
    {
      goto LABEL_204;
    }

LABEL_90:
    v93 = *(&static Signpost.animationState + 1);
    v60 = static Signpost.animationState;
    LOBYTE(v86) = word_1ED5283E8;
    LOBYTE(v41) = HIBYTE(word_1ED5283E8);
    v121 = byte_1ED5283EA;
    v122 = static os_signpost_type_t.begin.getter();
    v218 = __PAIR128__(v93, v60);
    LOBYTE(v219) = v86;
    BYTE1(v219) = v41;
    BYTE2(v219) = v121;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v204) = v122;
      v123 = one-time initialization token for _signpostLog;

      if (v123 != -1)
      {
LABEL_207:
        swift_once();
      }

      v124 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == Counter)
      {
        __break(1u);
LABEL_209:
        __break(1u);
      }

      v126 = Counter;
      v127 = AGGraphGetAttributeGraph();
      v128 = AGGraphGetCounter();

      v129 = MEMORY[0x1E69E6870];
      *(v125 + 56) = MEMORY[0x1E69E6810];
      *(v125 + 64) = v129;
      *(v125 + 32) = v128;
      v130 = AGGraphGetCurrentAttribute();
      if (v130 == v126)
      {
        goto LABEL_209;
      }

      v131 = MEMORY[0x1E69E76D0];
      *(v125 + 96) = MEMORY[0x1E69E7668];
      *(v125 + 104) = v131;
      *(v125 + 72) = v130;
      v207 = v125;
      *(v125 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v207 + 144) = v132;
      *(v207 + 112) = 0xD000000000000011;
      *(v207 + 120) = 0x800000018DD7EDF0;
      Counter = v207;
      if (v41)
      {
        LOBYTE(v208) = v204;
        v210 = v124;
        v211 = &dword_18D018000;
        *&v218 = v60;
        *(&v218 + 1) = v93;
        LOBYTE(v219) = v86;
        *&v212 = "Animation: (%p) [%d] %{public}@ started";
        *(&v212 + 1) = 39;
        LOBYTE(v213) = 2;
        v209 = v207;
        v133 = v187[0];
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v208, &v211, &v210, &v218, v187[0], &v212, &v209);
        v134 = v191;

        (*(v203 + 8))(v133, v206);
      }

      else
      {
        v135 = v60;
        if (v60 == 20)
        {
          v136 = 3;
        }

        else
        {
          v136 = 4;
        }

        a1 = (bswap32(v60) | (4 * WORD1(v60)));
        LODWORD(v60) = v204;
        v137 = (v203 + 16);
        v193 = *(v203 + 16);
        v138 = v193(v201, v187[0], v206);
        v111 = 0;
        LOBYTE(v212) = 1;
        v204 = v136;
        v194 = v137;
        v199 = 16 * v136;
        *&v200 = v137 - 8;
        v197 = v135;
        v198 = (Counter + 4);
        do
        {
          v202 = v187;
          MEMORY[0x1EEE9AC00](v138);
          v140 = v187 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
          v141 = v140 + 8;
          v142 = v204;
          v143 = v140 + 8;
          do
          {
            *(v143 - 1) = 0;
            *v143 = 0;
            v143 += 16;
            v142 = (v142 - 1);
          }

          while (v142);
          v110 = (v198 + 40 * v111);
          a4 = v204;
          while (1)
          {
            v144 = *(v207 + 16);
            if (v111 == v144)
            {
              break;
            }

            if (v111 >= v144)
            {
              goto LABEL_192;
            }

            v111 = (v111 + 1);
            outlined init with copy of AnyTrackedValue(v110, &v218);
            v145 = *(&v219 + 1);
            Counter = v220;
            __swift_project_boxed_opaque_existential_1(&v218, *(&v219 + 1));
            *(v141 - 1) = CVarArg.kdebugValue(_:)(a1 | v60, v145, Counter);
            *v141 = v146 & 1;
            v141 += 16;
            v105 = __swift_destroy_boxed_opaque_existential_1(&v218);
            v110 += 5;
            if (!--a4)
            {
              goto LABEL_109;
            }
          }

          LOBYTE(v212) = 0;
LABEL_109:
          v147 = v197;
          if (v197 == 20)
          {
            v148 = v201;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v148 = v201;
          }

          if (v140[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v140[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v140[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v147 != 20 && v140[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          Counter = **&v200;
          v149 = v206;
          (**&v200)(v148, v206);
          v150 = __swift_project_value_buffer(v149, static OSSignpostID.continuation);
          v138 = v193(v148, v150, v149);
        }

        while ((v212 & 1) != 0);
        v134 = v191;

        v151 = v206;
        (Counter)(v148, v206);
        (Counter)(v187[0], v151);
      }

      a4 = v192;
      *(v192 + 56) = v134;
    }

    else
    {

      a4 = v192;
      *(v192 + 56) = v65;
    }

LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v188);

    outlined destroy of _AnyAnimatableData(&v216);
    outlined destroy of _AnyAnimatableData(v222);
    a1 = v196;
    a3 = v189;
  }

  v65 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v160 = MEMORY[0x1E69E6870];
  *(v66 + 56) = MEMORY[0x1E69E6810];
  *(v66 + 64) = v160;
  *(v66 + 32) = Counter;
  v161 = AGGraphGetCurrentAttribute();
  if (v161 == v60)
  {
    goto LABEL_201;
  }

  v162 = MEMORY[0x1E69E76D0];
  *(v66 + 96) = MEMORY[0x1E69E7668];
  *(v66 + 104) = v162;
  *(v66 + 72) = v161;
  v207 = v66;
  *(v66 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v207 + 144) = v163;
  *(v207 + 112) = 0xD000000000000011;
  *(v207 + 120) = 0x800000018DD7EDF0;
  Counter = v207;
  if (v156)
  {
    LOBYTE(v210) = v204;
    *&v222[0] = &dword_18D018000;
    v216 = v64;
    *&v212 = v68;
    *(&v212 + 1) = v59;
    LOBYTE(v213) = v67;
    *&v224 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v224 + 1) = 37;
    LOBYTE(v225) = 2;
    v211 = v207;
    v164 = v195;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, v222, &v216, &v212, v195, &v224, &v211);

    (*(v203 + 8))(v164, v206);
    goto LABEL_180;
  }

  v166 = v68;
  if (v68 == 20)
  {
    a4 = 3;
  }

  else
  {
    a4 = 4;
  }

  LODWORD(v60) = bswap32(v68) | (4 * WORD1(v68));
  v111 = v204;
  v167 = v203 + 16;
  v197 = *(v203 + 16);
  v168 = v197(v205, v195, v206);
  v169 = 0;
  LOBYTE(v224) = 1;
  v203 = v167;
  v201 = (16 * a4);
  v202 = (v167 - 8);
  v199 = v166;
  *&v200 = Counter + 4;
  v198 = a4;
  do
  {
    v204 = v187;
    MEMORY[0x1EEE9AC00](v168);
    a1 = (v187 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0));
    v171 = a1 + 1;
    v172 = a4;
    v173 = a1 + 1;
    do
    {
      *(v173 - 1) = 0;
      *v173 = 0;
      v173 += 2;
      --v172;
    }

    while (v172);
    v110 = (*&v200 + 40 * v169);
    while (1)
    {
      v174 = *(v207 + 16);
      if (v169 == v174)
      {
        break;
      }

      if (v169 >= v174)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        v185 = v105;
        swift_once();
        v105 = v185;
LABEL_134:
        v154 = v110[77];
        if (*(v154 + 16) >= 0x43uLL)
        {
          if (*(v154 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v212) = Counter;
            BYTE4(v212) = v105 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v192 = a4;
          v196 = a1;
          v155 = one-time initialization token for animationState;
          v194 = v111;

          if (v155 != -1)
          {
            goto LABEL_197;
          }

          goto LABEL_139;
        }

        __break(1u);
LABEL_195:
        v186 = v105;
        swift_once();
        v105 = v186;
        goto LABEL_147;
      }

      ++v169;
      outlined init with copy of AnyTrackedValue(v110, &v212);
      v175 = *(&v213 + 1);
      Counter = v214;
      __swift_project_boxed_opaque_existential_1(&v212, *(&v213 + 1));
      *(v171 - 1) = CVarArg.kdebugValue(_:)(v60 | v111, v175, Counter);
      *v171 = v176 & 1;
      v171 += 2;
      v105 = __swift_destroy_boxed_opaque_existential_1(&v212);
      v110 += 5;
      if (!--a4)
      {
        goto LABEL_165;
      }
    }

    LOBYTE(v224) = 0;
LABEL_165:
    v177 = v199;
    if (v199 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a4 = v198;
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v177 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v178 = *v202;
    Counter = v205;
    v179 = v206;
    (*v202)(v205, v206);
    v180 = __swift_project_value_buffer(v179, static OSSignpostID.continuation);
    v168 = v197(Counter, v180, v179);
  }

  while ((v224 & 1) != 0);

  v181 = v206;
  v178(v205, v206);
  v178(v195, v181);
LABEL_180:

LABEL_181:
  specialized AnimatorState.removeListeners()();

  *(v192 + 56) = 0;
  a1 = v196;
LABEL_182:
  outlined init with copy of _AnyAnimatableData(&v218, &v212);
  if (*(a1 + 8) == 0xFF)
  {

    goto LABEL_187;
  }

  outlined init with copy of _AnyAnimatableData(&v212, &v224);
  if (*(a1 + 8) == 1)
  {
    v182 = *a1;
    v183 = *(**a1 + 152);

    v184 = v183(&v224);
    outlined consume of Material.ID(v182, 1u);

    outlined destroy of _AnyAnimatableData(&v224);
    outlined destroy of _AnyAnimatableData(&v212);
    outlined destroy of _AnyAnimatableData(&v218);
    result = outlined consume of Material.ID(*a1, *(a1 + 8));
    *a1 = v184;
    *(a1 + 8) = 1;
  }

  else
  {

    outlined destroy of _AnyAnimatableData(&v224);
LABEL_187:
    outlined destroy of _AnyAnimatableData(&v212);
    result = outlined destroy of _AnyAnimatableData(&v218);
  }

  *(a1 + 16) = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v232 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v202 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v9 = (&v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v186 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v204 = (&v186 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v186 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v186 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    a1[340] = 1;
  }

  else if (a1[340] != 1)
  {
    goto LABEL_130;
  }

  (*(**(a1 + 15) + 96))(v230);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, v225, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!*v225)
  {
    outlined destroy of HitTestableEvent?(v225, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    goto LABEL_129;
  }

  v189 = v17;
  v228[0] = *v225;
  v228[1] = *&v225[16];
  v229 = *&v225[32];
  v25 = *v225;
  if (*&v230[0] == *v225 && ((*(*&v230[0] + 88))(v230 + 8, v228 + 8) & 1) != 0)
  {
    goto LABEL_128;
  }

  v207 = a2;
  v196 = a1;
  v203 = v9;
  v186 = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for AnimatableAttributeHelper);
  v26 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v190 = v26;
  v191 = Transaction.effectiveAnimation.getter(v26);
  if (!v191)
  {
    if (!v207)
    {
      outlined destroy of _AnyAnimatableData(v228);

      a1 = v196;
      goto LABEL_129;
    }
  }

  v27 = v196;
  outlined init with copy of _AnyAnimatableData(v230, &v226);
  v28 = v226;
  if (v226 == v25)
  {
    (*(v226 + 104))(v227, v228 + 8);
  }

  else if (v28 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(&v226);
    outlined init with copy of _AnyAnimatableData(v228, &v226);
    (*(v226 + 112))(v227);
  }

  v24 = *AGGraphGetValue();
  v192 = a4;
  v29 = *(a4 + 56);
  v188 = a3;
  if (!v29)
  {
    outlined init with copy of _AnyAnimatableData(&v226, v225);
    v218 = &type metadata for GlassEffectShapeModifier;
    type metadata accessor for GlassEffectShapeModifier.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type, &type metadata for _AnyAnimatableData);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v224[0];
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v224[1];
    }

    else
    {
      v55 = 0;
    }

    v56 = v190;

    v57 = v191;

    v32 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v58, v225, v56, v54, v55, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    LODWORD(v55) = CurrentAttribute;
    LODWORD(v60) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v61 = 0;
    }

    else
    {
      v61 = CurrentAttribute;
    }

    LODWORD(v201) = v61;
    memcpy(v224, v27, 0x154uLL);
    memcpy(v225, v27, sizeof(v225));
    outlined init with copy of GlassEffectShapeModifier(v224, &v218);
    v62 = outlined destroy of GlassEffectShapeModifier(v225);
    (*(*v57 + 96))(&v212, v62);
    v63 = v212;
    v64 = v213;
    v66 = v214;
    v65 = v215;
    a3 = v216;
    v210 = 0x7FF8000000000000;
    v211 = 0x7FF8000000000000;
    v208 = NAN;
    v209 = 0x3FF0000000000000;
    v218 = v212;
    v219 = v213;
    v220 = v214;
    v221 = v215;
    v222 = v216;
    LODWORD(v207) = v217;
    LOBYTE(v223) = v217;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v211, &v210, &v209, &v208);
    v67 = v210;
    v68 = v211;
    v69 = v208;
    v70 = v209;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_201;
    }

    goto LABEL_40;
  }

  v225[0] = 0;
  v30 = v191;
  v187 = v29;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v191, &v226, v190, a3, v24);
  v31 = AGGraphGetCurrentAttribute();
  v32 = v31;
  v33 = *MEMORY[0x1E698D3F8];
  if (v31 == *MEMORY[0x1E698D3F8])
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  memcpy(v224, v27, 0x154uLL);
  memcpy(v225, v27, sizeof(v225));
  outlined init with copy of GlassEffectShapeModifier(v224, &v218);
  v35 = outlined destroy of GlassEffectShapeModifier(v225);
  (*(*v30 + 96))(&v212, v35);
  Counter = v212;
  v37 = v213;
  v39 = v214;
  v38 = v215;
  v40 = v216;
  v41 = v217;
  v210 = 0x7FF8000000000000;
  v211 = 0x7FF8000000000000;
  v208 = NAN;
  v209 = 0x3FF0000000000000;
  v218 = v212;
  v219 = v213;
  v220 = v214;
  v221 = v215;
  v222 = v216;
  LOBYTE(v223) = v217;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v211, &v210, &v209, &v208);
  v42 = v210;
  v43 = v211;
  v44 = *&v208;
  v45 = v209;
  if (one-time initialization token for enabledCategories != -1)
  {
    v207 = v211;
    v200 = *&v208;
    v201 = v210;
    v203 = v209;
    swift_once();
    v44 = v200;
    v42 = v201;
    v45 = v203;
    v43 = v207;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v46 = v34;
      v47 = v41;
      v48 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v49 = v32 == v33;
        v207 = *(static CustomEventTrace.recorder + 24);
        *(v207 + 4) = 1602;
        v50 = *(v48 + 16);
        LODWORD(v218) = v46;
        BYTE4(v218) = v49;
        v219 = &type metadata for GlassEffectShapeModifier;
        v220 = v43;
        v221 = v42;
        v222 = v45;
        v223 = *&v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v203 = v51;

        v52 = v50;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(Counter, v37, v39, v38, v40, v47);

        goto LABEL_49;
      }

      v78 = Counter;
      v79 = v37;
      v80 = v39;
      v81 = v38;
      v82 = v40;
      v83 = v47;
    }

    else
    {
      v78 = Counter;
      v79 = v37;
      v80 = v39;
      v81 = v38;
      v82 = v40;
      v83 = v41;
    }

    outlined consume of Animation.Function(v78, v79, v80, v81, v82, v83);
LABEL_49:
    LODWORD(v39) = v33;
    v84 = one-time initialization token for animationState;
    v32 = v187;

    if (v84 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_198;
  }

  __break(1u);
LABEL_198:
  swift_once();
LABEL_50:
  v86 = *(&static Signpost.animationState + 1);
  v85 = static Signpost.animationState;
  v87 = word_1ED5283E8;
  v88 = HIBYTE(word_1ED5283E8);
  v89 = byte_1ED5283EA;
  v90 = static os_signpost_type_t.event.getter();
  v218 = v85;
  v219 = v86;
  LOBYTE(v220) = v87;
  BYTE1(v220) = v88;
  BYTE2(v220) = v89;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v207) = v90;
    v91 = one-time initialization token for _signpostLog;

    if (v91 != -1)
    {
      swift_once();
    }

    v92 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v39)
    {
      __break(1u);
    }

    else
    {
      v32 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v94 = MEMORY[0x1E69E6870];
      *(v93 + 56) = MEMORY[0x1E69E6810];
      *(v93 + 64) = v94;
      *(v93 + 32) = Counter;
      v95 = AGGraphGetCurrentAttribute();
      if (v95 != v39)
      {
        a3 = v93;
        v96 = MEMORY[0x1E69E76D0];
        *(v93 + 96) = MEMORY[0x1E69E7668];
        *(v93 + 104) = v96;
        *(v93 + 72) = v95;
        *(v93 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v93 + 144) = v97;
        *(v93 + 112) = 0xD00000000000003FLL;
        *(v93 + 120) = 0x800000018DD7EE50;
        if (v88)
        {
          LOBYTE(v208) = v207;
          v210 = v92;
          v211 = &dword_18D018000;
          v218 = v85;
          v219 = v86;
          LOBYTE(v220) = v87;
          v212 = "Animation: (%p) [%d] %{public}@ updated";
          v213 = 39;
          LOBYTE(v214) = 2;
          v209 = v93;
          v98 = v189;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v208, &v211, &v210, &v218, v189, &v212, &v209);

          (*(v202 + 8))(v98, v206);
        }

        else
        {
          v60 = v85;
          if (v85 == 20)
          {
            v99 = 3;
          }

          else
          {
            v99 = 4;
          }

          a4 = bswap32(v85) | (4 * (v85 >> 16));
          LODWORD(v207) = v207;
          v100 = (v202 + 16);
          v193 = *(v202 + 16);
          v101 = v193(v204, v189, v206);
          v102 = 0;
          LOBYTE(v212) = 1;
          v194 = v100;
          v200 = 16 * v99;
          v201 = v100 - 8;
          v198 = v60;
          v199 = a3 + 32;
          v197 = *&v99;
          do
          {
            v203 = &v186;
            MEMORY[0x1EEE9AC00](v101);
            a1 = &v186 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = a1 + 8;
            v106 = v99;
            v107 = a1 + 8;
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              --v106;
            }

            while (v106);
            v108 = v199 + 40 * v102;
            while (1)
            {
              v109 = *(a3 + 16);
              if (v102 == v109)
              {
                break;
              }

              if (v102 >= v109)
              {
                goto LABEL_190;
              }

              ++v102;
              outlined init with copy of AnyTrackedValue(v108, &v218);
              v60 = a3;
              v110 = v221;
              v111 = v222;
              __swift_project_boxed_opaque_existential_1(&v218, v221);
              v112 = v111;
              a3 = v60;
              *(v105 - 1) = CVarArg.kdebugValue(_:)(a4 | v207, v110, v112);
              *v105 = v113 & 1;
              v105 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v218);
              v108 += 40;
              if (!--v99)
              {
                goto LABEL_70;
              }
            }

            LOBYTE(v212) = 0;
LABEL_70:
            v60 = v198;
            if (v198 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a1[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a1[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a1[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v60 != 20 && a1[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v114 = *v201;
            v115 = v204;
            v116 = v206;
            (*v201)(v204, v206);
            v117 = __swift_project_value_buffer(v116, static OSSignpostID.continuation);
            v101 = v193(v115, v117, v116);
            v99 = *&v197;
          }

          while ((v212 & 1) != 0);

          v118 = v206;
          v114(v204, v206);
          v114(v189, v118);
        }

        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_206;
  }

LABEL_86:
  a1 = v196;
  a4 = v192;
  while (1)
  {
    a3 = v188;
    specialized AnimatorState.addListeners(transaction:)(v190);

    outlined destroy of _AnyAnimatableData(&v226);
LABEL_128:
    outlined destroy of _AnyAnimatableData(v228);
LABEL_129:
    outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    v149 = v230[1];
    *(a4 + 16) = v230[0];
    *(a4 + 32) = v149;
    *(a4 + 48) = v231;
LABEL_130:
    v99 = *(a4 + 56);
    if (!v99)
    {
      return;
    }

    v150 = *(**(a1 + 15) + 96);

    v150(v225, v151);
    LOBYTE(v224[0]) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(v225, a3, v24);
    v103 = AGGraphGetCurrentAttribute();
    LODWORD(v60) = *MEMORY[0x1E698D3F8];
    if (v103 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v108) = 0;
    }

    else
    {
      LODWORD(v108) = v103;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v152)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_192;
      }

      goto LABEL_136;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_194;
    }

LABEL_149:
    v165 = *(v102 + 616);
    if (*(v165 + 16) >= 0x43uLL)
    {
      if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v224[0]) = v108;
        BYTE4(v224[0]) = v103 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_184;
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_141:
    v64 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v66 = word_1ED5283E8;
    v155 = HIBYTE(word_1ED5283E8);
    v156 = byte_1ED5283EA;
    v157 = static os_signpost_type_t.end.getter();
    v224[0] = v55;
    v224[1] = v64;
    LOBYTE(v224[2]) = v66;
    BYTE1(v224[2]) = v155;
    BYTE2(v224[2]) = v156;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v204) = v157;
    v158 = one-time initialization token for _signpostLog;
    v32 = v194;

    if (v158 != -1)
    {
      swift_once();
    }

    v63 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    v199 = v70;
    v200 = v68;
    v197 = v69;
    v198 = v67;
    swift_once();
    v69 = v197;
    v67 = v198;
    v70 = v199;
    v68 = v200;
LABEL_40:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_203:
      swift_once();
      goto LABEL_90;
    }

    v71 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v204) = v60;
    if (v71 == 1)
    {
      v72 = v32;
      v73 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v74 = v55 == v204;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v200 = a3;
        v75 = *(v73 + 16);
        LODWORD(v218) = v201;
        BYTE4(v218) = v74;
        v219 = &type metadata for GlassEffectShapeModifier;
        v220 = v68;
        v221 = v67;
        v222 = v70;
        v223 = v69;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v201 = v76;

        v77 = v75;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v63, v64, v66, v65, v200, v207);
      }

      else
      {
        outlined consume of Animation.Function(v63, v64, v66, v65, a3, v207);
      }

      v32 = v72;
    }

    else
    {
      outlined consume of Animation.Function(v63, v64, v66, v65, a3, v207);
    }

    v119 = one-time initialization token for animationState;

    if (v119 != -1)
    {
      goto LABEL_203;
    }

LABEL_90:
    v86 = *(&static Signpost.animationState + 1);
    v85 = static Signpost.animationState;
    LOBYTE(Counter) = word_1ED5283E8;
    LOBYTE(v39) = HIBYTE(word_1ED5283E8);
    v120 = byte_1ED5283EA;
    v121 = static os_signpost_type_t.begin.getter();
    v218 = v85;
    v219 = v86;
    LOBYTE(v220) = Counter;
    BYTE1(v220) = v39;
    BYTE2(v220) = v120;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v201) = v121;
      v122 = one-time initialization token for _signpostLog;

      if (v122 != -1)
      {
LABEL_206:
        swift_once();
      }

      v123 = _signpostLog;
      v187 = v32;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_18DDAF080;
      v125 = AGGraphGetCurrentAttribute();
      v126 = v204;
      if (v125 == v204)
      {
        __break(1u);
LABEL_208:
        __break(1u);
      }

      v127 = AGGraphGetAttributeGraph();
      v99 = AGGraphGetCounter();

      v128 = MEMORY[0x1E69E6870];
      *(v124 + 56) = MEMORY[0x1E69E6810];
      *(v124 + 64) = v128;
      *(v124 + 32) = v99;
      v129 = AGGraphGetCurrentAttribute();
      if (v129 == v126)
      {
        goto LABEL_208;
      }

      v130 = MEMORY[0x1E69E76D0];
      *(v124 + 96) = MEMORY[0x1E69E7668];
      *(v124 + 104) = v130;
      *(v124 + 72) = v129;
      v207 = v124;
      *(v124 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v207 + 144) = v131;
      *(v207 + 112) = 0xD00000000000003FLL;
      *(v207 + 120) = 0x800000018DD7EE50;
      v132 = v207;
      if (v39)
      {
        LOBYTE(v208) = v201;
        v210 = v123;
        v211 = &dword_18D018000;
        v218 = v85;
        v219 = v86;
        LOBYTE(v220) = Counter;
        v212 = "Animation: (%p) [%d] %{public}@ started";
        v213 = 39;
        LOBYTE(v214) = 2;
        v209 = v207;
        v133 = v186;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v208, &v211, &v210, &v218, v186, &v212, &v209);
        v32 = v187;

        (*(v202 + 8))(v133, v206);
      }

      else
      {
        v134 = v85;
        if (v85 == 20)
        {
          a4 = 3;
        }

        else
        {
          a4 = 4;
        }

        a1 = (bswap32(v85) | (4 * (v85 >> 16)));
        LODWORD(v60) = v201;
        v135 = (v202 + 16);
        v193 = *(v202 + 16);
        v136 = v193(v203, v186, v206);
        v102 = 0;
        LOBYTE(v212) = 1;
        v194 = v135;
        v200 = 16 * a4;
        v201 = v135 - 8;
        v198 = v134;
        v199 = v132 + 32;
        v197 = *&a4;
        do
        {
          v204 = &v186;
          MEMORY[0x1EEE9AC00](v136);
          v138 = &v186 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
          a3 = (v138 + 8);
          v139 = a4;
          v140 = v138 + 8;
          do
          {
            *(v140 - 1) = 0;
            *v140 = 0;
            v140 += 16;
            --v139;
          }

          while (v139);
          v108 = v199 + 40 * v102;
          while (1)
          {
            v141 = *(v207 + 16);
            if (v102 == v141)
            {
              break;
            }

            if (v102 >= v141)
            {
              goto LABEL_191;
            }

            ++v102;
            outlined init with copy of AnyTrackedValue(v108, &v218);
            v142 = v221;
            v99 = v222;
            __swift_project_boxed_opaque_existential_1(&v218, v221);
            *(a3 - 8) = CVarArg.kdebugValue(_:)(a1 | v60, v142, v99);
            *a3 = v143 & 1;
            a3 += 16;
            v103 = __swift_destroy_boxed_opaque_existential_1(&v218);
            v108 += 40;
            if (!--a4)
            {
              goto LABEL_109;
            }
          }

          LOBYTE(v212) = 0;
LABEL_109:
          v144 = v198;
          if (v198 == 20)
          {
            v99 = v203;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v99 = v203;
          }

          a4 = *&v197;
          if (v138[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v138[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v138[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v144 != 20 && v138[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v145 = *v201;
          v146 = v206;
          (*v201)(v99, v206);
          v147 = __swift_project_value_buffer(v146, static OSSignpostID.continuation);
          v136 = v193(v99, v147, v146);
        }

        while ((v212 & 1) != 0);
        v32 = v187;

        v148 = v206;
        v145(v99, v206);
        v145(v186, v148);
      }
    }

    else
    {
    }

    a4 = v192;
    *(v192 + 56) = v32;
    a1 = v196;
  }

  v32 = AGGraphGetAttributeGraph();
  a3 = AGGraphGetCounter();

  v159 = MEMORY[0x1E69E6870];
  *(v65 + 56) = MEMORY[0x1E69E6810];
  *(v65 + 64) = v159;
  *(v65 + 32) = a3;
  v160 = AGGraphGetCurrentAttribute();
  if (v160 == v60)
  {
    goto LABEL_200;
  }

  v161 = MEMORY[0x1E69E76D0];
  *(v65 + 96) = MEMORY[0x1E69E7668];
  *(v65 + 104) = v161;
  *(v65 + 72) = v160;
  v207 = v65;
  *(v65 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v207 + 144) = v162;
  *(v207 + 112) = 0xD00000000000003FLL;
  *(v207 + 120) = 0x800000018DD7EE50;
  v163 = v207;
  if (v155)
  {
    LOBYTE(v226) = v204;
    v212 = &dword_18D018000;
    *&v230[0] = v63;
    v224[0] = v55;
    v224[1] = v64;
    LOBYTE(v224[2]) = v66;
    v218 = "Animation: (%p) [%d] %{public}@ ended";
    v219 = 37;
    LOBYTE(v220) = 2;
    *&v228[0] = v207;
    v164 = v195;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v226, &v212, v230, v224, v195, &v218, v228);

    (*(v202 + 8))(v164, v206);
    goto LABEL_182;
  }

  v166 = v55;
  if (v55 == 20)
  {
    a3 = 3;
  }

  else
  {
    a3 = 4;
  }

  LODWORD(v60) = bswap32(v55) | (4 * WORD1(v55));
  v99 = v204;
  v167 = v202 + 16;
  v197 = *(v202 + 16);
  v168 = (*&v197)(v205, v195, v206);
  v102 = 0;
  LOBYTE(v218) = 1;
  v204 = a3;
  v202 = v167;
  v200 = 16 * a3;
  v201 = (v167 - 8);
  v198 = v166;
  v199 = v163 + 32;
  do
  {
    v203 = &v186;
    MEMORY[0x1EEE9AC00](v168);
    a1 = &v186 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = a1 + 8;
    v171 = v204;
    v172 = a1 + 8;
    do
    {
      *(v172 - 1) = 0;
      *v172 = 0;
      v172 += 16;
      v171 = (v171 - 1);
    }

    while (v171);
    v108 = v199 + 40 * v102;
    a4 = v204;
    while (1)
    {
      v173 = *(v207 + 16);
      if (v102 == v173)
      {
        break;
      }

      if (v102 >= v173)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        v184 = v103;
        swift_once();
        v103 = v184;
LABEL_136:
        v153 = *(v102 + 616);
        if (*(v153 + 16) >= 0x43uLL)
        {
          if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v224[0]) = v108;
            BYTE4(v224[0]) = v103 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v192 = a4;
          v196 = a1;
          v154 = one-time initialization token for animationState;
          v194 = v99;

          if (v154 != -1)
          {
            goto LABEL_196;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_194:
        v185 = v103;
        swift_once();
        v103 = v185;
        goto LABEL_149;
      }

      ++v102;
      outlined init with copy of AnyTrackedValue(v108, v224);
      v174 = v224[3];
      a3 = v224[4];
      __swift_project_boxed_opaque_existential_1(v224, v224[3]);
      *(v170 - 1) = CVarArg.kdebugValue(_:)(v60 | v99, v174, a3);
      *v170 = v175 & 1;
      v170 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(v224);
      v108 += 40;
      if (!--a4)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v218) = 0;
LABEL_167:
    v176 = v198;
    if (v198 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v176 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v177 = *v201;
    a3 = v205;
    v178 = v206;
    (*v201)(v205, v206);
    v179 = __swift_project_value_buffer(v178, static OSSignpostID.continuation);
    v168 = (*&v197)(a3, v179, v178);
  }

  while ((v218 & 1) != 0);

  v180 = v206;
  v177(v205, v206);
  v177(v195, v180);
LABEL_182:

LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(v192 + 56) = 0;
  a1 = v196;
LABEL_184:
  outlined init with copy of _AnyAnimatableData(v225, v224);
  outlined init with copy of _AnyAnimatableData(v224, &v218);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v182 = *(a1 + 15);
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(&v218, &v212);
    (*(*v182 + 104))(&v212);

    outlined destroy of _AnyAnimatableData(&v218);
    outlined destroy of _AnyAnimatableData(v224);
    outlined destroy of _AnyAnimatableData(v225);
  }

  else
  {
    v183 = (*(*v182 + 120))(&v218);

    outlined destroy of _AnyAnimatableData(&v218);
    outlined destroy of _AnyAnimatableData(v224);
    outlined destroy of _AnyAnimatableData(v225);

    *(a1 + 15) = v183;
  }

  a1[340] = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v284 = *MEMORY[0x1E69E9840];
  v246 = type metadata accessor for OSSignpostID();
  v242 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v15 = (&v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v244 = &v226 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v226 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v245 = &v226 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v236 = &v226 - v27;
  if (*(a4 + 6))
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  v31 = &v268;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v32 = *(a1 + 16);
  v265 = *a1;
  v266 = v32;
  v267 = *(a1 + 32);
  v33 = GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter();
  v4 = *&v33;
  v5 = *&v34;
  v6 = *&v35;
  if (*(a4 + 40))
  {
    goto LABEL_128;
  }

  v8 = *(a4 + 3);
  v7 = *(a4 + 4);
  v9 = *(a4 + 2);
  if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_AA0C4PairVyA2HGQP_Tt1g5(v33, v34, v35, v9, *&v8, *&v7))
  {
    goto LABEL_128;
  }

  v226 = v18;
  v227 = v23;
  v241 = v15;
  v229 = a3;
  AGGraphClearUpdate();
  v36 = a4[1];
  v281 = *a4;
  v282 = v36;
  *v283 = a4[2];
  *&v283[12] = *(a4 + 44);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v281, &v275, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  v37 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v231 = v37;
  v38 = Transaction.effectiveAnimation.getter(v37);
  if (v38)
  {
    v230 = v38;
    v234 = a1;
    v235 = a4;
  }

  else
  {
    if (!a2)
    {

      a3 = v229;
      v31 = &v268;
      goto LABEL_128;
    }

    v234 = a1;
    v235 = a4;

    v230 = a2;
  }

  v259[1] = v6;
  v260 = v4;
  v258 = v9;
  v259[0] = v5;
  v257[0] = v8;
  v257[1] = v7;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v40 = v39;
  v243 = &v226;
  v41 = MEMORY[0x1E69E7DE0];
  v42 = *(MEMORY[0x1E69E7DE0] - 8);
  v43 = v42[8];
  v44 = MEMORY[0x1EEE9AC00](v39);
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v42[2];
  v47 = v46(&v226 - v45, &v260, v41, v44);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v46(&v226 - v45, &v258, v41, v48);
  v239 = *(v40 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v49 = v42[1];
  v247 = v49;
  v49(&v226 - v45, v41);
  v49(&v226 - v45, v41);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v51 = v50;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v53 = v52;
  v243 = &v226;
  v54 = *(v51 - 8);
  v55 = v54[8];
  v56 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v226 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v54[2];
  v59 = v58(v57, v259, v51, v56);
  v240 = &v226;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v58(v57, v257, v51, v60);
  v61 = *(v53 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v62 = v54[1];
  v62(v57, v51);
  v62(v57, v51);
  v63 = v261[0];
  v65 = v262;
  v64 = *&v263;
  v62(&v262, v51);
  (v247)(v261, MEMORY[0x1E69E7DE0]);
  v66 = *&v283[16];
  v30 = *AGGraphGetValue();
  if (!v66)
  {
    v243 = v5;
    v244 = v4;
    v256[2] = &type metadata for GlassAppearanceScaleEffect;
    type metadata accessor for GlassAppearanceScaleEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    LODWORD(v238) = swift_dynamicCast();
    v237 = v256[0];
    v240 = v256[1];
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
    v85 = swift_allocObject();
    *(v85 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v86 = MEMORY[0x1E69E7DE0];
    v233 = v61;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v87 = v254[1];
    v88 = v255;
    v89 = v254[0];
    v62(v254, v51);
    v90 = v86;
    v91 = v247;
    (v247)(&v255, v90);
    *(v85 + 32) = v88;
    *(v85 + 40) = v89;
    *(v85 + 48) = v87;
    *(v85 + 72) = 0;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v93 = v252[1];
    v92 = v253;
    v94 = v252[0];
    v95 = v51;
    v96 = v230;
    v97 = v85;
    v62(v252, v95);
    v91(&v253, MEMORY[0x1E69E7DE0]);
    if (v238)
    {
      v98 = v237;
    }

    else
    {
      v98 = 0;
    }

    if (v238)
    {
      v99 = v240;
    }

    else
    {
      v99 = 0;
    }

    *(v85 + 80) = v92;
    *(v85 + 88) = v94;
    *(v85 + 96) = v93;
    *(v85 + 104) = 0;
    *(v85 + 108) = 1;
    v100 = MEMORY[0x1E69E7CC0];
    *(v85 + 112) = MEMORY[0x1E69E7CC0];
    *(v85 + 120) = v100;
    *(v85 + 128) = 0;
    *(v85 + 136) = 0;
    *(v85 + 144) = 0;
    *(v85 + 152) = v100;
    *(v85 + 16) = v96;
    swift_beginAccess();
    *(v85 + 32) = v63;
    *(v85 + 40) = v65;
    *(v85 + 48) = v64;
    *(v85 + 136) = v98;
    *(v85 + 144) = v99;
    v101 = v231;
    *(v85 + 56) = v30;
    *(v85 + 72) = v30;

    v102 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v101));
    if (v103)
    {

      v104 = 0;
      *(v85 + 64) = 0;
      LOBYTE(v85) = 1;
      v5 = v243;
      v4 = v244;
      goto LABEL_79;
    }

    if (v102 <= 0.0)
    {
      *(v85 + 64) = 0;
      v5 = v243;
      v4 = v244;
    }

    else
    {
      v110 = log2(v102 * 240.0);
      v111 = exp2(floor(v110 + 0.01)) * 0.00416666667;
      *(v85 + 64) = v111;
      v5 = v243;
      v4 = v244;
      if (v111 >= 0.0166666667)
      {

        v104 = 0;
        LOBYTE(v85) = 1;
        goto LABEL_79;
      }
    }

    v149 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v101);
    v104 = v149;
    v85 = HIDWORD(v149) & 1;

LABEL_79:
    *(v97 + 104) = v104;
    v228 = v97;
    *(v97 + 108) = v85;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v151 = CurrentAttribute;
    LODWORD(v112) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v152 = 0;
    }

    else
    {
      v152 = CurrentAttribute;
    }

    (*(*v96 + 96))(&v268);
    v154 = v268;
    v153 = v269;
    v31 = v270;
    v155 = v271;
    v156 = v272;
    v250 = 0x7FF8000000000000;
    v251 = 0x7FF8000000000000;
    v248 = 0x7FF8000000000000;
    *&v249 = 1.0;
    v275 = v268;
    v276 = v269;
    v277 = v270;
    v278 = v271;
    v279 = v272;
    LODWORD(v247) = v273;
    LOBYTE(v280) = v273;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v275, &v251, &v250, &v249, &v248);
    v8 = v250;
    v7 = v251;
    v157 = v248;
    v9 = *&v249;
    if (one-time initialization token for enabledCategories != -1)
    {
      v244 = v248;
      swift_once();
      v157 = v244;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v158 = static CustomEventTrace.recorder) != 0)
      {
        v159 = v151 == v112;
        v244 = v156;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v160 = *(v158 + 16);
        LODWORD(v275) = v152;
        BYTE4(v275) = v159;
        v276 = &type metadata for GlassAppearanceScaleEffect;
        v277 = v7;
        v278 = v8;
        v279 = *&v9;
        v280 = v157;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v161 = v160;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v154, v153, v31, v155, v244, v247);
      }

      else
      {
        outlined consume of Animation.Function(v154, v153, v31, v155, v156, v247);
      }

      v162 = one-time initialization token for animationState;

      v31 = &v268;
      if (v162 == -1)
      {
        goto LABEL_90;
      }
    }

    swift_once();
LABEL_90:
    v118 = *(&static Signpost.animationState + 1);
    v113 = static Signpost.animationState;
    LOBYTE(v77) = word_1ED5283E8;
    v114 = HIBYTE(word_1ED5283E8);
    v163 = byte_1ED5283EA;
    v164 = static os_signpost_type_t.begin.getter();
    v275 = v113;
    v276 = v118;
    LOBYTE(v277) = v77;
    BYTE1(v277) = v114;
    BYTE2(v277) = v163;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v174 = v228;

      goto LABEL_126;
    }

    LODWORD(v244) = v164;
    v165 = one-time initialization token for _signpostLog;

    if (v165 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_92;
  }

  v67 = &type metadata for GlassAppearanceScaleEffect;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v281, &v275, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v275) = 0;
  v68 = v230;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v230, v231, v229, v63, v65, v64, v30);
  v69 = AGGraphGetCurrentAttribute();
  LODWORD(v70) = v69;
  v71 = *MEMORY[0x1E698D3F8];
  if (v69 == *MEMORY[0x1E698D3F8])
  {
    v72 = 0;
  }

  else
  {
    v72 = v69;
  }

  LODWORD(v243) = v72;
  (*(*v68 + 96))(&v268);
  v73 = v268;
  v74 = v269;
  v76 = v270;
  v75 = v271;
  v77 = v272;
  v274[0] = 0x7FF8000000000000;
  v256[0] = 0x7FF8000000000000;
  v254[0] = 1.0;
  v252[0] = NAN;
  v275 = v268;
  v276 = v269;
  v277 = v270;
  v278 = v271;
  v279 = v272;
  LODWORD(v247) = v273;
  LOBYTE(v280) = v273;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v275, v274, v256, v254, v252);
  v7 = v274[0];
  v8 = v256[0];
  v9 = v254[0];
  v78 = *&v252[0];
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      v79 = *(static CustomEventTrace.enabledCategories + 98);
      v228 = v66;
      if (v79 == 1)
      {
        v241 = v77;
        v80 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v81 = v67;
          v82 = *(v80 + 16);
          LODWORD(v275) = v243;
          BYTE4(v275) = v70 == v71;
          v276 = v81;
          v277 = v7;
          v278 = v8;
          v279 = *&v9;
          v280 = v78;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v243 = v83;

          v84 = v82;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v73, v74, v76, v75, v241, v247);

          goto LABEL_39;
        }

        v105 = v73;
        v106 = v74;
        v107 = v76;
        v108 = v75;
        v109 = v241;
      }

      else
      {
        v105 = v73;
        v106 = v74;
        v107 = v76;
        v108 = v75;
        v109 = v77;
      }

      outlined consume of Animation.Function(v105, v106, v107, v108, v109, v247);
LABEL_39:
      LODWORD(v77) = v71;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v281, &v275, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_40;
      }

      goto LABEL_197;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_40:
    v112 = *(&static Signpost.animationState + 1);
    v113 = static Signpost.animationState;
    v114 = word_1ED5283E8;
    v31 = HIBYTE(word_1ED5283E8);
    v115 = byte_1ED5283EA;
    v116 = static os_signpost_type_t.event.getter();
    v275 = v113;
    v276 = v112;
    LOBYTE(v277) = v114;
    BYTE1(v277) = v31;
    BYTE2(v277) = v115;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_76:
      a4 = v235;
      v31 = &v268;
      goto LABEL_127;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v281, &v275, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v116;
    v117 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v77)
    {
      __break(1u);
    }

    else
    {
      v119 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v121 = MEMORY[0x1E69E6870];
      *(v118 + 56) = MEMORY[0x1E69E6810];
      *(v118 + 64) = v121;
      *(v118 + 32) = Counter;
      v122 = AGGraphGetCurrentAttribute();
      if (v122 != v77)
      {
        v66 = v118;
        v123 = MEMORY[0x1E69E76D0];
        *(v118 + 96) = MEMORY[0x1E69E7668];
        *(v118 + 104) = v123;
        *(v118 + 72) = v122;
        *(v118 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v118 + 144) = v124;
        *(v118 + 112) = 0xD000000000000041;
        *(v118 + 120) = 0x800000018DD7EC20;
        if (v31)
        {
          LOBYTE(v252[0]) = v247;
          v274[0] = &dword_18D018000;
          v256[0] = v117;
          v275 = v113;
          v276 = v112;
          LOBYTE(v277) = v114;
          v268 = "Animation: (%p) [%d] %{public}@ updated";
          v269 = 39;
          LOBYTE(v270) = 2;
          *&v254[0] = v118;
          v125 = v227;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v252, v274, v256, &v275, v227, &v268, v254);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v242 + 8))(v125, v246);
        }

        else
        {
          v126 = v113;
          if (v113 == 20)
          {
            v127 = 3;
          }

          else
          {
            v127 = 4;
          }

          v31 = bswap32(v113) | (4 * (v113 >> 16));
          LODWORD(v247) = v247;
          v128 = (v242 + 16);
          v232 = *(v242 + 16);
          v129 = v232(v244, v227, v246);
          a1 = 0;
          LOBYTE(v268) = 1;
          v243 = v127;
          v233 = v128;
          v239 = 16 * v127;
          v240 = (v128 - 8);
          v237 = v126;
          v238 = v66 + 32;
          do
          {
            v241 = &v226;
            MEMORY[0x1EEE9AC00](v129);
            v132 = &v226 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
            v75 = (v132 + 8);
            v133 = v243;
            v134 = v132 + 8;
            do
            {
              *(v134 - 1) = 0;
              *v134 = 0;
              v134 += 16;
              v133 = (v133 - 1);
            }

            while (v133);
            v135 = (v238 + 40 * a1);
            v136 = v243;
            while (1)
            {
              v137 = *(v66 + 16);
              if (a1 == v137)
              {
                break;
              }

              if (a1 >= v137)
              {
                goto LABEL_186;
              }

              ++a1;
              outlined init with copy of AnyTrackedValue(v135, &v275);
              v138 = v278;
              v139 = v66;
              v140 = v279;
              __swift_project_boxed_opaque_existential_1(&v275, v278);
              v141 = v140;
              v66 = v139;
              *(v75 - 8) = CVarArg.kdebugValue(_:)(v31 | v247, v138, v141);
              *v75 = v142 & 1;
              v75 += 16;
              v130 = __swift_destroy_boxed_opaque_existential_1(&v275);
              v135 += 5;
              v136 = (v136 - 1);
              if (!v136)
              {
                goto LABEL_60;
              }
            }

            LOBYTE(v268) = 0;
LABEL_60:
            v143 = v237;
            if (v237 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v132[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v132[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v132[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v143 != 20 && v132[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v144 = *v240;
            v145 = v244;
            v146 = v246;
            (*v240)(v244, v246);
            v147 = __swift_project_value_buffer(v146, static OSSignpostID.continuation);
            v129 = v232(v145, v147, v146);
          }

          while ((v268 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          v148 = v246;
          v144(v244, v246);
          v144(v227, v148);
        }

        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_92:
    v243 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v112)
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v167 = AGGraphGetAttributeGraph();
    v168 = AGGraphGetCounter();

    v169 = MEMORY[0x1E69E6870];
    *(v166 + 56) = MEMORY[0x1E69E6810];
    *(v166 + 64) = v169;
    *(v166 + 32) = v168;
    v170 = AGGraphGetCurrentAttribute();
    if (v170 == v112)
    {
      goto LABEL_204;
    }

    v171 = MEMORY[0x1E69E76D0];
    *(v166 + 96) = MEMORY[0x1E69E7668];
    *(v166 + 104) = v171;
    *(v166 + 72) = v170;
    v247 = v166;
    *(v166 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v247 + 144) = v172;
    *(v247 + 112) = 0xD000000000000041;
    *(v247 + 120) = 0x800000018DD7EC20;
    v66 = v247;
    if (v114)
    {
      LOBYTE(v248) = v244;
      v250 = v243;
      v251 = &dword_18D018000;
      v275 = v113;
      v276 = v118;
      LOBYTE(v277) = v77;
      v268 = "Animation: (%p) [%d] %{public}@ started";
      v269 = 39;
      LOBYTE(v270) = 2;
      v249 = v247;
      v173 = v226;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v248, &v251, &v250, &v275, v226, &v268, &v249);
      v174 = v228;

      (*(v242 + 8))(v173, v246);
    }

    else
    {
      v237 = v113;
      v175 = v113 == 20 ? 3 : 4;
      v176 = bswap32(v113) | (4 * (v113 >> 16));
      a1 = v244;
      v177 = (v242 + 16);
      v232 = *(v242 + 16);
      v178 = v232(v241, v226, v246);
      v75 = 0;
      LOBYTE(v268) = 1;
      v244 = v175;
      v233 = v177;
      v239 = 16 * v175;
      v240 = (v177 - 8);
      v238 = v66 + 32;
      do
      {
        v243 = &v226;
        MEMORY[0x1EEE9AC00](v178);
        v136 = (&v226 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
        v180 = v136 + 1;
        v181 = v244;
        v182 = v136 + 1;
        do
        {
          *(v182 - 1) = 0;
          *v182 = 0;
          v182 += 16;
          --v181;
        }

        while (v181);
        v135 = (v238 + 40 * v75);
        v31 = v244;
        while (1)
        {
          v183 = *(v247 + 16);
          if (v75 == v183)
          {
            break;
          }

          if (v75 >= v183)
          {
            goto LABEL_187;
          }

          ++v75;
          outlined init with copy of AnyTrackedValue(v135, &v275);
          v184 = v278;
          v66 = v279;
          __swift_project_boxed_opaque_existential_1(&v275, v278);
          *(v180 - 1) = CVarArg.kdebugValue(_:)(v176 | a1, v184, v66);
          *v180 = v185 & 1;
          v180 += 16;
          v130 = __swift_destroy_boxed_opaque_existential_1(&v275);
          v135 += 5;
          if (!--v31)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v268) = 0;
LABEL_109:
        v186 = v237;
        if (v237 == 20)
        {
          v187 = v241;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
          v31 = &v268;
        }

        else
        {
          kdebug_trace();
          v31 = &v268;
          v187 = v241;
        }

        if (*(v136 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v136 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v136 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v186 != 20 && *(v136 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v66 = *v240;
        v188 = v246;
        (*v240)(v187, v246);
        v189 = __swift_project_value_buffer(v188, static OSSignpostID.continuation);
        v178 = v232(v187, v189, v188);
      }

      while ((v268 & 1) != 0);
      v174 = v228;

      v190 = v246;
      (v66)(v187, v246);
      (v66)(v226, v190);
    }

LABEL_126:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
    a4 = v235;
    *(v235 + 6) = v174;
LABEL_127:
    specialized AnimatorState.addListeners(transaction:)(v231);

    a1 = v234;
    a3 = v229;
LABEL_128:
    *(a4 + 2) = v4;
    *(a4 + 3) = v5;
    *(a4 + 4) = v6;
    *(a4 + 40) = 0;
LABEL_129:
    v136 = *(a4 + 6);
    if (!v136)
    {
      return;
    }

    v235 = a4;
    v191 = *(a1 + 16);
    v281 = *a1;
    v282 = v191;
    *v283 = *(a1 + 32);

    v268 = COERCE_CONST_CHAR_(GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter());
    v269 = v192;
    v270 = v193;
    LOBYTE(v275) = 0;
    v194 = specialized AnimatorState.update(_:at:environment:)(&v268, a3, v30);
    v130 = AGGraphGetCurrentAttribute();
    v75 = *MEMORY[0x1E698D3F8];
    if (v130 == v75)
    {
      v66 = 0;
    }

    else
    {
      v66 = v130;
    }

    v135 = &type metadata instantiation cache for TupleTypeDescription;
    if (v194)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v206 = v135[77];
    if (*(v206 + 16) >= 0x43uLL)
    {
      if (*(v206 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v275) = v66;
        BYTE4(v275) = v130 == v75;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v70 = *(&static Signpost.animationState + 1);
    v67 = static Signpost.animationState;
    v77 = word_1ED5283E8;
    v71 = HIBYTE(word_1ED5283E8);
    v197 = byte_1ED5283EA;
    v198 = static os_signpost_type_t.end.getter();
    v275 = v67;
    v276 = v70;
    LOBYTE(v277) = v77;
    BYTE1(v277) = v71;
    BYTE2(v277) = v197;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    LODWORD(v244) = v198;
    v199 = one-time initialization token for _signpostLog;
    v74 = v233;

    if (v199 != -1)
    {
      swift_once();
    }

    v73 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v75)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    v241 = v78;
    swift_once();
    v78 = v241;
  }

  v74 = AGGraphGetAttributeGraph();
  v66 = AGGraphGetCounter();

  v200 = MEMORY[0x1E69E6870];
  *(v76 + 56) = MEMORY[0x1E69E6810];
  *(v76 + 64) = v200;
  *(v76 + 32) = v66;
  v201 = AGGraphGetCurrentAttribute();
  if (v201 == v75)
  {
    goto LABEL_194;
  }

  v202 = MEMORY[0x1E69E76D0];
  *(v76 + 96) = MEMORY[0x1E69E7668];
  *(v76 + 104) = v202;
  *(v76 + 72) = v201;
  v247 = v76;
  *(v76 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v247 + 144) = v203;
  *(v247 + 112) = 0xD000000000000041;
  *(v247 + 120) = 0x800000018DD7EC20;
  v204 = v247;
  if (v71)
  {
    LOBYTE(v254[0]) = v244;
    v259[0] = &dword_18D018000;
    v257[0] = v73;
    v275 = v67;
    v276 = v70;
    LOBYTE(v277) = v77;
    v262 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ ended");
    v263 = 37;
    v264 = 2;
    v256[0] = v247;
    v205 = v236;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v254, v259, v257, &v275, v236, &v262, v256);

    (*(v242 + 8))(v205, v246);
    goto LABEL_181;
  }

  v207 = v67;
  if (v67 == 20)
  {
    v66 = 3;
  }

  else
  {
    v66 = 4;
  }

  a1 = bswap32(v67) | (4 * (v67 >> 16));
  v136 = v244;
  v208 = v242 + 16;
  v237 = *(v242 + 16);
  v209 = (v237)(v245, v236, v246);
  v75 = 0;
  LOBYTE(v262) = 1;
  v244 = v66;
  v242 = v208;
  v240 = (16 * v66);
  v241 = (v208 - 8);
  v238 = v207;
  v239 = v204 + 32;
  do
  {
    v243 = &v226;
    MEMORY[0x1EEE9AC00](v209);
    v211 = &v226 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = (v211 + 8);
    v212 = v244;
    v213 = v211 + 8;
    do
    {
      *(v213 - 1) = 0;
      *v213 = 0;
      v213 += 16;
      --v212;
    }

    while (v212);
    v135 = (v239 + 40 * v75);
    v214 = v244;
    while (1)
    {
      v215 = *(v247 + 16);
      if (v75 == v215)
      {
        break;
      }

      if (v75 >= v215)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v224 = v130;
        swift_once();
        v130 = v224;
LABEL_135:
        v195 = v135[77];
        if (*(v195 + 16) >= 0x43uLL)
        {
          if (*(v195 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v275) = v66;
            BYTE4(v275) = v130 == v75;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v233 = v136;
          v234 = a1;
          v196 = one-time initialization token for animationState;

          if (v196 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v225 = v130;
        swift_once();
        v130 = v225;
        goto LABEL_148;
      }

      ++v75;
      outlined init with copy of AnyTrackedValue(v135, &v275);
      v216 = v278;
      v66 = v279;
      __swift_project_boxed_opaque_existential_1(&v275, v278);
      *(v31 - 8) = CVarArg.kdebugValue(_:)(a1 | v136, v216, v66);
      *v31 = v217 & 1;
      v31 += 16;
      v130 = __swift_destroy_boxed_opaque_existential_1(&v275);
      v135 += 5;
      if (!--v214)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v262) = 0;
LABEL_166:
    v218 = v238;
    if (v238 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v211[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v211[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v211[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v218 != 20 && v211[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v219 = *v241;
    v66 = v245;
    v220 = v246;
    (*v241)(v245, v246);
    v221 = __swift_project_value_buffer(v220, static OSSignpostID.continuation);
    v209 = (v237)(v66, v221, v220);
  }

  while ((LOBYTE(v262) & 1) != 0);

  v222 = v246;
  v219(v245, v246);
  v219(v236, v222);
LABEL_181:

LABEL_182:
  v223 = v235;
  specialized AnimatorState.removeListeners()();

  *(v223 + 6) = 0;
  a1 = v234;
  v31 = &v268;
LABEL_183:
  *a1 = v268;
  *(a1 + 8) = vmulq_f64(*(v31 + 8), vdupq_n_s64(0x3F80000000000000uLL));
  *(a1 + 48) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(float64x2_t *a1, char *a2, unsigned int a3, uint64_t a4)
{
  v270 = *MEMORY[0x1E69E9840];
  v230 = type metadata accessor for OSSignpostID();
  v227 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v13 = v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v205 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v228 = v205 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v205 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v229 = v205 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v219 = v205 - v25;
  if (*(a4 + 88))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    LOBYTE(a1[4].f64[0]) = 1;
  }

  else if (LOBYTE(a1[4].f64[0]) != 1)
  {
    goto LABEL_124;
  }

  v6 = a1[3].f64[0];
  v29 = vdupq_n_s64(0x4060000000000000uLL);
  v30 = vmulq_f64(*a1, v29);
  v31 = vmulq_f64(a1[1], v29);
  v32 = vmulq_f64(a1[2], v29);
  v33 = a1[3].f64[1] * 128.0;
  v238 = v30;
  v239 = v31;
  v240 = v32;
  v241 = v6;
  v242 = v33;
  if (*(a4 + 80))
  {
    goto LABEL_123;
  }

  v222 = v32;
  v223 = v31;
  v224 = v30;
  v7 = *(a4 + 16);
  v34 = *(a4 + 24);
  v36 = *(a4 + 32);
  v35 = *(a4 + 40);
  v37 = *(a4 + 48);
  v4 = *(a4 + 56);
  v5 = *(a4 + 64);
  v38 = *(a4 + 72);
  *v243 = v7;
  *&v243[1] = v34;
  *&v243[2] = v36;
  *&v243[3] = v35;
  v231 = v35;
  v226 = v37;
  *&v243[4] = v37;
  *&v243[5] = v4;
  v243[6] = v5;
  v243[7] = v38;
  v217 = v38;
  if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSd_ACy12CoreGraphics7CGFloatVACyAhCyAhCyACyA2HGAIGGGGTt1g5(&v238, v243))
  {
    goto LABEL_122;
  }

  v221 = v13;
  v225 = v16;
  v209 = v21;
  v212 = a3;
  v220 = AGGraphClearUpdate();
  v39 = *(a4 + 80);
  v260 = *(a4 + 64);
  v261 = v39;
  v262 = *(a4 + 96);
  v40 = *(a4 + 16);
  v256 = *a4;
  v257 = v40;
  v41 = *(a4 + 48);
  v258 = *(a4 + 32);
  v259 = v41;
  v13 = &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v256, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  v42 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v211 = v42;
  v43 = Transaction.effectiveAnimation.getter(v42);
  if (v43)
  {
    v13 = v43;
    v208 = v33;
    v206 = v6;
    a3 = v212;
  }

  else
  {
    a3 = v212;
    if (!a2)
    {

      goto LABEL_122;
    }

    v208 = v33;
    v206 = v6;

    v13 = a2;
  }

  v220 = a1;
  v44 = *(&v261 + 1);
  v45 = v238.f64[0] - v7;
  v46 = v238.f64[1] - v34;
  v47 = v239.f64[0] - v36;
  v48 = v239.f64[1] - v231;
  v49 = v240.f64[0] - v226;
  v50 = v240.f64[1] - v4;
  v51 = v241 - *&v5;
  v52 = v242 - *&v217;
  v207 = *AGGraphGetValue();
  v218 = a4;
  v205[1] = v13;
  if (!v44)
  {
    *&v249 = v45;
    *(&v249 + 1) = v46;
    v250 = v47;
    v251 = v48;
    v252 = v49;
    v253 = v50;
    v254 = v51;
    v255 = v52;
    *&v244 = &type metadata for _Rotation3DEffect;
    type metadata accessor for _Rotation3DEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Type, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v263;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v263 + 1);
    }

    else
    {
      v69 = 0;
    }

    v73 = v211;

    v28 = v207;
    v210 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAVyAyVyAyVyAVyA2YGAZGGGGG_Tt4B5(v70, &v249, v73, v68, v69, v207);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v72 = CurrentAttribute;
    LODWORD(v73) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v74 = 0;
    }

    else
    {
      v74 = CurrentAttribute;
    }

    LODWORD(v228) = v74;
    (*(*v13 + 96))(&v244);
    v75 = v244;
    v76 = v245;
    *&v77 = v246;
    v78 = v247;
    *&v232 = NAN;
    v233[0] = 0x7FF8000000000000;
    v235 = 1.0;
    v236 = NAN;
    v263 = v244;
    v264 = *&v245;
    v265 = v246;
    v266 = v247;
    LODWORD(v231) = v248;
    LOBYTE(v267) = v248;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v263, v233, &v236, &v235, &v232);
    v7 = *&v232;
    v4 = *v233;
    v6 = v235;
    *&v5 = v236;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v33 = v208;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_194;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v226 = *&v77;
      v79 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v217 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v80 = *(v79 + 16);
        LODWORD(v263) = v228;
        BYTE4(v263) = v72 == v73;
        *(&v263 + 1) = &type metadata for _Rotation3DEffect;
        v264 = v4;
        v265 = *&v5;
        v266 = *&v6;
        v267 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v81 = v80;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v75, *(&v75 + 1), v76, *&v226, v217, LOBYTE(v231));

        goto LABEL_84;
      }

      v89 = *(&v75 + 1);
      v88 = v75;
      v90 = v76;
      v91 = *&v226;
    }

    else
    {
      v89 = *(&v75 + 1);
      v88 = v75;
      v90 = v76;
      v91 = v77;
    }

    outlined consume of Animation.Function(v88, v89, v90, v91, v78, LOBYTE(v231));
LABEL_84:
    v128 = one-time initialization token for animationState;

    v6 = v206;
    if (v128 == -1)
    {
LABEL_85:
      v93 = *(&static Signpost.animationState + 1);
      *&v92 = static Signpost.animationState;
      LODWORD(v13) = word_1ED5283E8;
      v94 = HIBYTE(word_1ED5283E8);
      v129 = byte_1ED5283EA;
      v130 = static os_signpost_type_t.begin.getter();
      v263 = __PAIR128__(*&v93, *&v92);
      LOBYTE(v264) = v13;
      BYTE1(v264) = v94;
      BYTE2(v264) = v129;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v141 = v210;

        goto LABEL_92;
      }

      LODWORD(v231) = v130;
      v131 = one-time initialization token for _signpostLog;

      if (v131 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_87;
    }

LABEL_194:
    swift_once();
    goto LABEL_85;
  }

  *&v263 = v45;
  *(&v263 + 1) = v46;
  v264 = v47;
  v265 = v48;
  v266 = *&v49;
  v267 = v50;
  v268 = v51;
  v269 = v52;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v256, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v249) = 0;
  v28 = v207;
  v210 = v44;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v13, &v263, v211, a3, v207);
  v53 = AGGraphGetCurrentAttribute();
  v54 = v13;
  LODWORD(v13) = v53;
  LODWORD(v55) = *MEMORY[0x1E698D3F8];
  if (v53 == *MEMORY[0x1E698D3F8])
  {
    v56 = 0;
  }

  else
  {
    v56 = v53;
  }

  LODWORD(v231) = v56;
  (*(*v54 + 96))(&v244);
  v57 = *(&v244 + 1);
  v58 = v244;
  v59 = v245;
  v60 = v247;
  LODWORD(v61) = v248;
  *&v232 = NAN;
  v233[0] = 0x7FF8000000000000;
  v235 = 1.0;
  v236 = NAN;
  v249 = v244;
  v250 = *&v245;
  v251 = v246;
  v62 = *&v246;
  v252 = *&v247;
  LOBYTE(v253) = v248;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v249, v233, &v236, &v235, &v232);
  v7 = *&v232;
  v4 = *v233;
  v6 = v235;
  *&v5 = v236;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    v33 = v208;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v226) = LODWORD(v61);
        v63 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v64 = v13 == v55;
          LODWORD(v225) = v55;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v65 = *(v63 + 16);
          LODWORD(v249) = LODWORD(v231);
          BYTE4(v249) = v64;
          *(&v249 + 1) = &type metadata for _Rotation3DEffect;
          v250 = v4;
          v251 = *&v5;
          v252 = v6;
          v253 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v231 = v66;

          v13 = v65;
          LODWORD(v55) = v225;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, *&v57, v59, v62, v60, LOBYTE(v226));

          goto LABEL_44;
        }

        v82 = v58;
        v83 = *&v57;
        v84 = v59;
        v85 = v62;
        v86 = v60;
        v87 = LOBYTE(v226);
      }

      else
      {
        v82 = v58;
        v83 = *&v57;
        v84 = v59;
        v85 = v62;
        v86 = v60;
        v87 = LOBYTE(v61);
      }

      outlined consume of Animation.Function(v82, v83, v84, v85, v86, v87);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v256, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      v6 = v206;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_192;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_45:
    v92 = *(&static Signpost.animationState + 1);
    v73 = static Signpost.animationState;
    *&v93 = word_1ED5283E8;
    v94 = HIBYTE(word_1ED5283E8);
    v95 = byte_1ED5283EA;
    v96 = static os_signpost_type_t.event.getter();
    v249 = __PAIR128__(*&v92, v73);
    LOBYTE(v250) = LOBYTE(v93);
    BYTE1(v250) = v94;
    BYTE2(v250) = v95;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      a4 = v218;
      goto LABEL_121;
    }

    LODWORD(v231) = v96;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v256, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v97 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v98 = COERCE_DOUBLE(swift_allocObject());
    *(v98 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v13) = v55;
      v99 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v101 = MEMORY[0x1E69E6870];
      *(v98 + 56) = MEMORY[0x1E69E6810];
      *(v98 + 64) = v101;
      *(v98 + 32) = Counter;
      v102 = AGGraphGetCurrentAttribute();
      if (v102 != v13)
      {
        v103 = v98;
        v104 = MEMORY[0x1E69E76D0];
        *(v98 + 96) = MEMORY[0x1E69E7668];
        *(v98 + 104) = v104;
        *(v98 + 72) = v102;
        *(v98 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v98 + 144) = v105;
        *(v98 + 112) = 0xD000000000000011;
        *(v98 + 120) = 0x800000018DD7ED50;
        if (v94)
        {
          LOBYTE(v232) = LOBYTE(v231);
          v233[0] = &dword_18D018000;
          v235 = *&v98;
          v236 = v97;
          *&v249 = v73;
          *(&v249 + 1) = v92;
          LOBYTE(v250) = LOBYTE(v93);
          *&v244 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v244 + 1) = 39;
          LOBYTE(v245) = 2;
          v106 = v209;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v232, v233, &v236, &v249, v209, &v244, &v235);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v227 + 8))(v106, v230);
        }

        else
        {
          v107 = v73;
          if (v73 == 20)
          {
            v108 = 3;
          }

          else
          {
            v108 = 4;
          }

          LODWORD(v109) = bswap32(v73) | (4 * (v73 >> 16));
          LODWORD(v231) = LOBYTE(v231);
          v110 = (v227 + 16);
          v213 = *(v227 + 16);
          v111 = v213(v228, v209, v230);
          v60 = 0;
          LOBYTE(v244) = 1;
          v226 = *&v108;
          v214 = v110;
          v215 = v107;
          v221 = v110 - 8;
          v216 = (v103 + 4);
          v217 = 16 * v108;
          do
          {
            v225 = v205;
            MEMORY[0x1EEE9AC00](v111);
            v13 = v205 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
            v114 = v13 + 8;
            v115 = v226;
            v116 = v13 + 8;
            do
            {
              *(v116 - 1) = 0;
              *v116 = 0;
              v116 += 16;
              --*&v115;
            }

            while (v115 != 0.0);
            *&v61 = v216 + 40 * v60;
            v117 = v226;
            while (1)
            {
              v118 = v103[2];
              if (v60 == v118)
              {
                break;
              }

              if (v60 >= v118)
              {
                goto LABEL_181;
              }

              ++v60;
              outlined init with copy of AnyTrackedValue(*&v61, &v249);
              v119 = *&v251;
              v107 = v103;
              v120 = *&v252;
              __swift_project_boxed_opaque_existential_1(&v249, *&v251);
              v121 = v120;
              v103 = v107;
              *(v114 - 1) = CVarArg.kdebugValue(_:)(v109 | LODWORD(v231), v119, v121);
              *v114 = v122 & 1;
              v114 += 16;
              v112 = __swift_destroy_boxed_opaque_existential_1(&v249);
              *&v61 += 40;
              --*&v117;
              if (v117 == 0.0)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v244) = 0;
LABEL_65:
            v107 = v215;
            if (v215 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v13[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v13[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v13[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v107 != 20 && v13[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v123 = *v221;
            v124 = v228;
            v125 = v230;
            (*v221)(v228, v230);
            v126 = __swift_project_value_buffer(v125, static OSSignpostID.continuation);
            v111 = v213(v124, v126, v125);
          }

          while ((v244 & 1) != 0);
          v13 = type metadata accessor for AnimatableAttributeHelper;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          v127 = v230;
          v123(v228, v230);
          v123(v209, v127);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_87:
    v132 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v133 = COERCE_DOUBLE(swift_allocObject());
    *(v133 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v73)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v134 = AGGraphGetAttributeGraph();
    v135 = AGGraphGetCounter();

    v136 = MEMORY[0x1E69E6870];
    *(v133 + 56) = MEMORY[0x1E69E6810];
    *(v133 + 64) = v136;
    *(v133 + 32) = v135;
    v137 = AGGraphGetCurrentAttribute();
    if (v137 == v73)
    {
      goto LABEL_199;
    }

    v138 = MEMORY[0x1E69E76D0];
    *(v133 + 96) = MEMORY[0x1E69E7668];
    *(v133 + 104) = v138;
    *(v133 + 72) = v137;
    *(v133 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v133 + 144) = v139;
    *(v133 + 112) = 0xD000000000000011;
    *(v133 + 120) = 0x800000018DD7ED50;
    if (v94)
    {
      LOBYTE(v232) = LOBYTE(v231);
      v233[0] = &dword_18D018000;
      v235 = *&v133;
      v236 = v132;
      *&v263 = v92;
      *(&v263 + 1) = v93;
      LOBYTE(v264) = v13;
      *&v244 = "Animation: (%p) [%d] %{public}@ started";
      *(&v244 + 1) = 39;
      LOBYTE(v245) = 2;
      v140 = v225;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v232, v233, &v236, &v263, v225, &v244, &v235);
      v141 = v210;

      (*(v227 + 8))(v140, v230);

LABEL_92:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v218;
      *(v218 + 88) = v141;
    }

    else
    {
      v142 = LOBYTE(v92);
      v143 = LOBYTE(v92) == 20 ? 3 : 4;
      LODWORD(v109) = bswap32(LOWORD(v92)) | (4 * HIWORD(LODWORD(v92)));
      v107 = LOBYTE(v231);
      v144 = (v227 + 16);
      v209 = *(v227 + 16);
      v145 = v209(v221, v225, v230);
      v60 = 0;
      LOBYTE(v244) = 1;
      v228 = v143;
      v213 = v144;
      v214 = v142;
      v216 = 16 * v143;
      v217 = v144 - 8;
      v231 = *&v133;
      v215 = (v133 + 32);
      do
      {
        v226 = COERCE_DOUBLE(v205);
        MEMORY[0x1EEE9AC00](v145);
        v147 = v205 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = v147 + 8;
        v148 = v228;
        v149 = v147 + 8;
        do
        {
          *(v149 - 1) = 0;
          *v149 = 0;
          v149 += 16;
          --v148;
        }

        while (v148);
        *&v61 = &v215[40 * v60];
        v150 = v228;
        while (1)
        {
          v151 = *(*&v231 + 16);
          if (v60 == v151)
          {
            break;
          }

          if (v60 >= v151)
          {
            goto LABEL_182;
          }

          ++v60;
          outlined init with copy of AnyTrackedValue(*&v61, &v263);
          v152 = *&v265;
          v153 = v266;
          __swift_project_boxed_opaque_existential_1(&v263, *&v265);
          *(v13 - 1) = CVarArg.kdebugValue(_:)(v109 | v107, v152, v153);
          *v13 = v154 & 1;
          v13 += 16;
          v112 = __swift_destroy_boxed_opaque_existential_1(&v263);
          *&v61 += 40;
          if (!--v150)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v244) = 0;
LABEL_105:
        v13 = v214;
        if (v214 == 20)
        {
          v155 = v221;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
          v156 = v225;
        }

        else
        {
          kdebug_trace();
          v156 = v225;
          v155 = v221;
        }

        if (v147[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v147[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v147[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v13 != 20 && v147[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v157 = *v217;
        v158 = v230;
        (*v217)(v155, v230);
        v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
        v145 = v209(v155, v159, v158);
      }

      while ((v244 & 1) != 0);
      v160 = v210;

      v161 = v230;
      v157(v155, v230);
      v157(v156, v161);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v218;
      *(v218 + 88) = v160;
    }

LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v211);

    a1 = v220;
    a3 = v212;
LABEL_122:
    v31 = v223;
    v30 = v224;
    v32 = v222;
LABEL_123:
    LOBYTE(v256.f64[0]) = 0;
    *(a4 + 16) = v30;
    *(a4 + 32) = v31;
    *(a4 + 48) = v32;
    *(a4 + 64) = v6;
    *(a4 + 72) = v33;
    *(a4 + 80) = 0;
LABEL_124:
    v61 = *(a4 + 88);
    if (v61 == 0.0)
    {
      return;
    }

    v218 = a4;
    v162 = a1[3].f64[0];
    v163 = vdupq_n_s64(0x4060000000000000uLL);
    v164 = a1[3].f64[1] * 128.0;
    v165 = vmulq_f64(a1[1], v163);
    v256 = vmulq_f64(*a1, v163);
    v257 = v165;
    v220 = a1;
    v258 = vmulq_f64(a1[2], v163);
    *&v259 = v162;
    *(&v259 + 1) = v164;

    LOBYTE(v244) = 0;
    v166 = specialized AnimatorState.update(_:at:environment:)(&v256, a3, v28);
    v112 = AGGraphGetCurrentAttribute();
    v60 = *MEMORY[0x1E698D3F8];
    if (v112 == v60)
    {
      LODWORD(v109) = 0;
    }

    else
    {
      LODWORD(v109) = v112;
    }

    v107 = &type metadata instantiation cache for TupleTypeDescription;
    if (v166)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v178 = *(v107 + 616);
    if (*(v178 + 16) >= 0x43uLL)
    {
      if (*(v178 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v244) = v109;
        BYTE4(v244) = v112 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v169 = *(&static Signpost.animationState + 1);
    v62 = static Signpost.animationState;
    v59 = word_1ED5283E8;
    v58 = HIBYTE(word_1ED5283E8);
    v170 = byte_1ED5283EA;
    v171 = static os_signpost_type_t.end.getter();
    v244 = __PAIR128__(v169, v62);
    LOBYTE(v245) = v59;
    BYTE1(v245) = v58;
    BYTE2(v245) = v170;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    LODWORD(v231) = v171;
    v172 = one-time initialization token for _signpostLog;

    if (v172 != -1)
    {
      swift_once();
    }

    v57 = COERCE_DOUBLE(_signpostLog);
    *&v217 = v61;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v55 = COERCE_DOUBLE(swift_allocObject());
    *(v55 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    swift_once();
  }

  v61 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  v13 = AGGraphGetCounter();

  v173 = MEMORY[0x1E69E6870];
  *(v55 + 56) = MEMORY[0x1E69E6810];
  *(v55 + 64) = v173;
  *(v55 + 32) = v13;
  v174 = AGGraphGetCurrentAttribute();
  if (v174 == v60)
  {
    goto LABEL_189;
  }

  v13 = v55;
  v175 = MEMORY[0x1E69E76D0];
  *(v55 + 96) = MEMORY[0x1E69E7668];
  *(v55 + 104) = v175;
  *(v55 + 72) = v174;
  *(v55 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 144) = v176;
  *(v55 + 112) = 0xD000000000000011;
  *(v55 + 120) = 0x800000018DD7ED50;
  if (v58)
  {
    v237 = LOBYTE(v231);
    v235 = v57;
    v236 = COERCE_DOUBLE(&dword_18D018000);
    *&v244 = v62;
    *(&v244 + 1) = v169;
    LOBYTE(v245) = v59;
    v233[0] = "Animation: (%p) [%d] %{public}@ ended";
    v233[1] = 37;
    v234 = 2;
    v232 = v55;
    v177 = v219;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v237, &v236, &v235, &v244, v219, v233, &v232);

    (*(v227 + 8))(v177, v230);
    goto LABEL_176;
  }

  *&v179 = v62;
  if (v62 == 20)
  {
    v180 = 3;
  }

  else
  {
    v180 = 4;
  }

  v107 = bswap32(v62) | (4 * WORD1(v62));
  LODWORD(v231) = LOBYTE(v231);
  v181 = v227 + 16;
  v221 = *(v227 + 16);
  v182 = (v221)(v229, v219, v230);
  v60 = 0;
  LOBYTE(v233[0]) = 1;
  v227 = v181;
  v225 = (16 * v180);
  *&v226 = v181 - 8;
  *&v224.f64[0] = v13 + 32;
  v223.f64[0] = v179;
  *&v222.f64[0] = v180;
  do
  {
    v228 = v205;
    MEMORY[0x1EEE9AC00](v182);
    v184 = v205 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
    v109 = v184 + 8;
    v185 = v180;
    v186 = v184 + 8;
    do
    {
      *(v186 - 1) = 0;
      *v186 = 0;
      v186 += 16;
      --v185;
    }

    while (v185);
    *&v61 = *&v224.f64[0] + 40 * v60;
    while (1)
    {
      v187 = *(v13 + 2);
      if (v60 == v187)
      {
        break;
      }

      if (v60 >= v187)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v203 = v112;
        swift_once();
        v112 = v203;
LABEL_130:
        v167 = *(v107 + 616);
        if (*(v167 + 16) >= 0x43uLL)
        {
          if (*(v167 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v244) = v109;
            BYTE4(v244) = v112 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v168 = one-time initialization token for animationState;

          if (v168 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v204 = v112;
        swift_once();
        v112 = v204;
        goto LABEL_143;
      }

      ++v60;
      outlined init with copy of AnyTrackedValue(*&v61, &v244);
      v188 = v13;
      v189 = *&v246;
      v190 = v247;
      __swift_project_boxed_opaque_existential_1(&v244, *&v246);
      v191 = v190;
      v13 = v188;
      *(v109 - 1) = CVarArg.kdebugValue(_:)(v107 | LODWORD(v231), v189, v191);
      *v109 = v192 & 1;
      v109 += 16;
      v112 = __swift_destroy_boxed_opaque_existential_1(&v244);
      *&v61 += 40;
      if (!--v180)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v233[0]) = 0;
LABEL_161:
    v193 = v223.f64[0];
    if (*&v223.f64[0] == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v180 = *&v222.f64[0];
    if (v184[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v184[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v184[40] == 1)
    {
      kdebug_trace_string();
    }

    if (*&v193 != 20 && v184[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v194 = **&v226;
    v196 = v229;
    v195 = v230;
    (**&v226)(v229, v230);
    v197 = __swift_project_value_buffer(v195, static OSSignpostID.continuation);
    v182 = (v221)(v196, v197, v195);
  }

  while ((v233[0] & 1) != 0);

  v198 = v230;
  v194(v229, v230);
  v194(v219, v198);
LABEL_176:

LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(v218 + 88) = 0;
LABEL_178:
  v199 = v220;
  v200 = v259;
  v201 = vdupq_n_s64(0x3F80000000000000uLL);
  v202 = vmulq_f64(v257, v201);
  *v220 = vmulq_f64(v256, v201);
  v199[1] = v202;
  v199[2] = vmulq_f64(v258, v201);
  *&v199[3].f64[0] = v200;
  v199[3].f64[1] = *(&v200 + 1) * 0.0078125;
  LOBYTE(v199[4].f64[0]) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v190 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v9 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v173 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v191 = (&v173 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v173 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v192 = &v173 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v183 = &v173 - v21;
  if (*(a4 + 3))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  if (a4[8] != *AGGraphGetValue() >> 1)
  {
    specialized AnimatableAttributeHelper.reset()();
    *(a1 + 28) = 1;
    goto LABEL_11;
  }

  if (*(a1 + 28) == 1)
  {
LABEL_11:
    v26 = *a1;
    v27 = *a1;
    ShaderVectorData.init(rbShader:)(v26, &v200);
    v28 = *(a4 + 2);
    v29 = v200;
    if (!v28)
    {
      goto LABEL_121;
    }

    v199 = *(a4 + 2);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16ShaderVectorDataV7ElementO_Tt1g5(v200, v28))
    {
      goto LABEL_121;
    }

    v174 = v17;
    v188 = v9;
    v173 = v12;

    AGGraphClearUpdate();
    LODWORD(v189) = a4[1];
    v30 = *(a4 + 3);

    v31 = *AGGraphGetValue();

    v178 = v30;

    v32 = v31;
    AGGraphSetUpdate();
    v177 = Transaction.effectiveAnimation.getter(v31);
    if (!v177)
    {
      if (!a2)
      {

        goto LABEL_121;
      }

      v177 = a2;
    }

    v182 = a4;
    v198 = v29;

    specialized static ShaderVectorData.-= infix(_:_:)(&v198, &v199);
    v24 = *AGGraphGetValue();
    v33 = v198;
    v181 = a1;
    v176 = a3;
    v175 = v31;
    if (v178)
    {

      LOBYTE(v201) = 0;
      v34 = v177;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v177, v33, v32, a3, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v36 = CurrentAttribute;
      v37 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v38) = 0;
      }

      else
      {
        LODWORD(v38) = CurrentAttribute;
      }

      (*(*v34 + 96))(&v207);
      v40 = v207;
      v39 = v208;
      v42 = v209;
      v41 = v210;
      v25 = v211;
      v196 = 0x7FF8000000000000;
      v197 = 0x7FF8000000000000;
      v195 = 0x3FF0000000000000;
      v194 = NAN;
      v201 = v207;
      v202 = v208;
      v203 = v209;
      v204 = v210;
      v205 = v211;
      LODWORD(v189) = v212;
      LOBYTE(v206) = v212;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v197, &v196, &v195, &v194);
      v43 = v196;
      v44 = v197;
      v45 = v195;
      v46 = v194;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_187;
      }

      goto LABEL_21;
    }

    v207 = &type metadata for Shader.ResolvedShader;
    type metadata accessor for Shader.ResolvedShader.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ShaderVectorData>.Type, &type metadata for ShaderVectorData);

    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v201;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v202;
    }

    else
    {
      v69 = 0;
    }

    v70 = v177;

    v72 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16ShaderVectorDataV_Tt4B5(v71, v33, v31, v68, v69, v24);
    v73 = AGGraphGetCurrentAttribute();
    v74 = v73;
    LODWORD(v191) = *MEMORY[0x1E698D3F8];
    if (v73 == v191)
    {
      v75 = 0;
    }

    else
    {
      v75 = v73;
    }

    (*(*v70 + 96))(&v207);
    v77 = v207;
    v76 = v208;
    v78 = v209;
    v79 = v212;
    v196 = 0x7FF8000000000000;
    v197 = 0x7FF8000000000000;
    v195 = 0x3FF0000000000000;
    v194 = NAN;
    v201 = v207;
    v202 = v208;
    v203 = v209;
    v204 = v210;
    v80 = v210;
    v81 = v211;
    v205 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v197, &v196, &v195, &v194);
    v82 = v196;
    v83 = v197;
    v84 = v195;
    v85 = v194;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = v197;
      v186 = v196;
      v187 = v195;
      v185 = v194;
      swift_once();
      v85 = v185;
      v84 = v187;
      v82 = v186;
      v83 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v86 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v174 = v72;
      if (v86)
      {
        v87 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v88 = v74 == v191;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          LODWORD(v189) = v79;
          v89 = *(v87 + 16);
          LODWORD(v201) = v75;
          BYTE4(v201) = v88;
          v202 = &type metadata for Shader.ResolvedShader;
          v203 = v83;
          v204 = v82;
          v205 = v84;
          v206 = v85;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v90 = v89;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v77, v76, v78, v80, v81, v189);
        }

        else
        {
          outlined consume of Animation.Function(v77, v76, v78, v80, v81, v79);
        }

        v72 = v174;
      }

      else
      {
        outlined consume of Animation.Function(v77, v76, v78, v80, v81, v79);
      }

      v110 = one-time initialization token for animationState;

      if (v110 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    v59 = *(&static Signpost.animationState + 1);
    v51 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v54 = HIBYTE(word_1ED5283E8);
    v111 = byte_1ED5283EA;
    LOBYTE(v52) = static os_signpost_type_t.begin.getter();
    v201 = v51;
    v202 = v59;
    LOBYTE(v203) = v56;
    BYTE1(v203) = v54;
    BYTE2(v203) = v111;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_119;
    }

    v112 = one-time initialization token for _signpostLog;

    if (v112 != -1)
    {
      goto LABEL_194;
    }

    goto LABEL_86;
  }

  v25 = *(a4 + 3);
  if (*&v25 == 0.0)
  {
    return;
  }

  while (1)
  {
    v182 = a4;
    v59 = *a1;
    v40 = *a1;

    ShaderVectorData.init(rbShader:)(v59, &v200);
    LOBYTE(v201) = 0;
    v140 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v24);
    v95 = AGGraphGetCurrentAttribute();
    v37 = *MEMORY[0x1E698D3F8];
    if (v95 == *MEMORY[0x1E698D3F8])
    {
      v91 = 0;
    }

    else
    {
      v91 = v95;
    }

    v60 = &type metadata instantiation cache for TupleTypeDescription;
    if (v140)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v151 = v60[77];
    if (*(v151 + 16) >= 0x43uLL)
    {
      if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v91;
        BYTE4(v201) = v95 == v37;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v143 = *(&static Signpost.animationState + 1);
    v38 = static Signpost.animationState;
    v36 = word_1ED5283E8;
    v41 = HIBYTE(word_1ED5283E8);
    v144 = byte_1ED5283EA;
    v42 = static os_signpost_type_t.end.getter();
    v201 = v38;
    v202 = v143;
    LOBYTE(v203) = v36;
    BYTE1(v203) = v41;
    BYTE2(v203) = v144;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      v152 = v182;
      goto LABEL_174;
    }

    v178 = v40;
    v145 = one-time initialization token for _signpostLog;

    if (v145 != -1)
    {
      swift_once();
    }

    v39 = _signpostLog;
    v179 = v25;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v37)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v188 = v44;
    v186 = v43;
    v187 = v45;
    v185 = v46;
    swift_once();
    v46 = v185;
    v45 = v187;
    v43 = v186;
    v44 = v188;
LABEL_21:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_27;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v47 = static CustomEventTrace.recorder) != 0)
    {
      v188 = v25;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v48 = *(v47 + 16);
      LODWORD(v201) = v38;
      BYTE4(v201) = v36 == v37;
      v202 = &type metadata for Shader.ResolvedShader;
      v203 = v44;
      v204 = v43;
      v205 = v45;
      v206 = v46;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v49 = v48;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v40, v39, v42, v41, v188, v189);
    }

    else
    {
      outlined consume of Animation.Function(v40, v39, v42, v41, v25, v189);
    }

    v50 = one-time initialization token for animationState;

    if (v50 != -1)
    {
      goto LABEL_189;
    }

LABEL_27:
    v52 = *(&static Signpost.animationState + 1);
    v51 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v54 = HIBYTE(word_1ED5283E8);
    v55 = byte_1ED5283EA;
    v56 = static os_signpost_type_t.event.getter();
    v201 = v51;
    v202 = v52;
    LOBYTE(v203) = v53;
    BYTE1(v203) = v54;
    BYTE2(v203) = v55;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_80:
      a4 = v182;
      goto LABEL_120;
    }

    v57 = one-time initialization token for _signpostLog;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v37)
    {
      __break(1u);
    }

    else
    {
      v60 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v62 = MEMORY[0x1E69E6870];
      *(v59 + 56) = MEMORY[0x1E69E6810];
      *(v59 + 64) = v62;
      *(v59 + 32) = Counter;
      v63 = AGGraphGetCurrentAttribute();
      if (v63 != v37)
      {
        v64 = MEMORY[0x1E69E76D0];
        *(v59 + 96) = MEMORY[0x1E69E7668];
        *(v59 + 104) = v64;
        *(v59 + 72) = v63;
        *(v59 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v59 + 144) = v65;
        strcpy((v59 + 112), "ResolvedShader");
        *(v59 + 127) = -18;
        if (v54)
        {
          LOBYTE(v194) = v56;
          v196 = v58;
          v197 = &dword_18D018000;
          v201 = v51;
          v202 = v52;
          LOBYTE(v203) = v53;
          v207 = "Animation: (%p) [%d] %{public}@ updated";
          v208 = 39;
          LOBYTE(v209) = 2;
          v195 = v59;
          v66 = v174;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v201, v174, &v207, &v195);

          (*(v190 + 8))(v66, v193);
        }

        else
        {
          v25 = v51;
          if (v51 == 20)
          {
            v40 = 3;
          }

          else
          {
            v40 = 4;
          }

          v37 = bswap32(v51) | (4 * WORD1(v51));
          v91 = v56;
          v92 = (v190 + 16);
          v179 = *(v190 + 16);
          v93 = v179(v191, v174, v193);
          v94 = 0;
          LOBYTE(v207) = 1;
          v187 = (16 * v40);
          v180 = v92;
          v188 = v92 - 1;
          v186 = v59 + 32;
          v185 = *&v25;
          v184 = v40;
          do
          {
            v189 = &v173;
            MEMORY[0x1EEE9AC00](v93);
            v97 = &v173 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            a1 = v97 + 8;
            v98 = v40;
            v99 = v97 + 8;
            do
            {
              *(v99 - 1) = 0;
              *v99 = 0;
              v99 += 16;
              --v98;
            }

            while (v98);
            v100 = v186 + 40 * v94;
            while (1)
            {
              v101 = *(v59 + 16);
              if (v94 == v101)
              {
                break;
              }

              if (v94 >= v101)
              {
                goto LABEL_178;
              }

              ++v94;
              outlined init with copy of AnyTrackedValue(v100, &v201);
              v102 = v204;
              v25 = v205;
              v103 = __swift_project_boxed_opaque_existential_1(&v201, v204);
              v104 = v102;
              v60 = v103;
              *(a1 - 1) = CVarArg.kdebugValue(_:)(v37 | v91, v104, v25);
              *a1 = v105 & 1;
              a1 += 2;
              v95 = __swift_destroy_boxed_opaque_existential_1(&v201);
              v100 += 40;
              if (!--v40)
              {
                goto LABEL_64;
              }
            }

            LOBYTE(v207) = 0;
LABEL_64:
            *&v25 = v185;
            if (*&v185 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            v40 = v184;
            if (v97[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v97[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v97[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v25 != 20 && v97[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v106 = *v188;
            v107 = v191;
            v60 = v193;
            (*v188)(v191, v193);
            v108 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
            v93 = v179(v107, v108, v60);
          }

          while ((v207 & 1) != 0);

          v109 = v193;
          v106(v191, v193);
          v106(v174, v109);
        }

        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_86:
    v113 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v191)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v114 = AGGraphGetAttributeGraph();
    *&v25 = COERCE_DOUBLE(AGGraphGetCounter());

    v115 = MEMORY[0x1E69E6870];
    *(v40 + 56) = MEMORY[0x1E69E6810];
    *(v40 + 64) = v115;
    *(v40 + 32) = *&v25;
    v116 = AGGraphGetCurrentAttribute();
    if (v116 == v191)
    {
      goto LABEL_196;
    }

    v117 = MEMORY[0x1E69E76D0];
    *(v40 + 96) = MEMORY[0x1E69E7668];
    *(v40 + 104) = v117;
    *(v40 + 72) = v116;
    *(v40 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 144) = v118;
    strcpy((v40 + 112), "ResolvedShader");
    *(v40 + 127) = -18;
    if (v54)
    {
      LOBYTE(v194) = v52;
      v196 = v113;
      v197 = &dword_18D018000;
      v201 = v51;
      v202 = v59;
      LOBYTE(v203) = v56;
      v207 = "Animation: (%p) [%d] %{public}@ started";
      v208 = 39;
      LOBYTE(v209) = 2;
      v195 = v40;
      v119 = v173;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v201, v173, &v207, &v195);
      v120 = v174;

      (*(v190 + 8))(v119, v193);

      a4 = v182;
      *(v182 + 3) = v120;
    }

    else
    {
      v121 = v51;
      if (v51 == 20)
      {
        v122 = 3;
      }

      else
      {
        v122 = 4;
      }

      v37 = bswap32(v51) | (4 * WORD1(v51));
      v91 = v52;
      v60 = (v190 + 16);
      v179 = *(v190 + 16);
      v123 = v179(v188, v173, v193);
      v124 = 0;
      LOBYTE(v207) = 1;
      v191 = v122;
      v186 = 16 * v122;
      v180 = v60;
      v187 = v60 - 1;
      *&v185 = v40 + 32;
      v184 = v121;
      do
      {
        v189 = &v173;
        MEMORY[0x1EEE9AC00](v123);
        a1 = (&v173 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
        v126 = a1 + 1;
        v127 = v191;
        v128 = a1 + 1;
        do
        {
          *(v128 - 1) = 0;
          *v128 = 0;
          v128 += 16;
          v127 = (v127 - 1);
        }

        while (v127);
        v129 = *&v185 + 40 * v124;
        v59 = v191;
        while (1)
        {
          v130 = *(v40 + 16);
          if (v124 == v130)
          {
            break;
          }

          if (v124 >= v130)
          {
            goto LABEL_179;
          }

          ++v124;
          outlined init with copy of AnyTrackedValue(v129, &v201);
          v131 = v204;
          v25 = v205;
          v132 = __swift_project_boxed_opaque_existential_1(&v201, v204);
          v133 = v131;
          v60 = v132;
          *(v126 - 1) = CVarArg.kdebugValue(_:)(v37 | v91, v133, v25);
          *v126 = v134 & 1;
          v126 += 16;
          v95 = __swift_destroy_boxed_opaque_existential_1(&v201);
          v129 += 40;
          if (!--v59)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v207) = 0;
LABEL_103:
        v135 = v184;
        if (v184 == 20)
        {
          v25 = v188;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v25 = v188;
        }

        if (*(a1 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v135 != 20 && *(a1 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v136 = *v187;
        v60 = v193;
        (*v187)(v25, v193);
        v137 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
        v123 = v179(v25, v137, v60);
      }

      while ((v207 & 1) != 0);
      v138 = v174;

      v139 = v193;
      v136(v25, v193);
      v136(v173, v139);

      v72 = v138;

LABEL_119:
      a4 = v182;
      *(v182 + 3) = v72;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v175);

    v29 = v200;
    a1 = v181;
    a3 = v176;
LABEL_121:

    *(a4 + 2) = v29;
    v25 = *(a4 + 3);
    if (*&v25 == 0.0)
    {
      return;
    }
  }

  v60 = AGGraphGetAttributeGraph();
  *&v25 = COERCE_DOUBLE(AGGraphGetCounter());

  v146 = MEMORY[0x1E69E6870];
  *(v40 + 56) = MEMORY[0x1E69E6810];
  *(v40 + 64) = v146;
  *(v40 + 32) = *&v25;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v37)
  {
    goto LABEL_186;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(v40 + 96) = MEMORY[0x1E69E7668];
  *(v40 + 104) = v148;
  *(v40 + 72) = v147;
  *(v40 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v40 + 144) = v149;
  strcpy((v40 + 112), "ResolvedShader");
  *(v40 + 127) = -18;
  if (v41)
  {
    LOBYTE(v196) = v42;
    v198 = v39;
    v199 = &dword_18D018000;
    v201 = v38;
    v202 = v143;
    LOBYTE(v203) = v36;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v197 = v40;
    v150 = v183;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v199, &v198, &v201, v183, &v207, &v197);

    (*(v190 + 8))(v150, v193);
    goto LABEL_173;
  }

  v25 = v38;
  if (v38 == 20)
  {
    v153 = 3;
  }

  else
  {
    v153 = 4;
  }

  v37 = bswap32(v38) | (4 * WORD1(v38));
  v91 = v42;
  v154 = v190 + 16;
  v184 = *(v190 + 16);
  v155 = v184(v192, v183, v193);
  v59 = 0;
  LOBYTE(v207) = 1;
  v188 = (16 * v153);
  v190 = v154;
  v189 = (v154 - 8);
  v187 = (v40 + 32);
  v185 = *&v25;
  v186 = v153;
  do
  {
    v191 = &v173;
    MEMORY[0x1EEE9AC00](v155);
    v157 = &v173 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v157 + 8;
    v158 = v153;
    v159 = v157 + 8;
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      --v158;
    }

    while (v158);
    v160 = &v187[5 * v59];
    while (1)
    {
      v161 = *(v40 + 16);
      if (v59 == v161)
      {
        break;
      }

      if (v59 >= v161)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v171 = v95;
        swift_once();
        v95 = v171;
LABEL_127:
        v141 = v60[77];
        if (*(v141 + 16) >= 0x43uLL)
        {
          if (*(v141 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v91;
            BYTE4(v201) = v95 == v37;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v180 = v59;
          v181 = a1;
          v142 = one-time initialization token for animationState;

          if (v142 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v172 = v95;
        swift_once();
        v95 = v172;
        goto LABEL_140;
      }

      ++v59;
      outlined init with copy of AnyTrackedValue(v160, &v201);
      v162 = v204;
      v25 = v205;
      v163 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v164 = v162;
      v60 = v163;
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v37 | v91, v164, v25);
      *a1 = v165 & 1;
      a1 += 2;
      v95 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v160 += 40;
      if (!--v153)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v207) = 0;
LABEL_158:
    *&v25 = v185;
    if (*&v185 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v153 = v186;
    if (v157[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v157[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v157[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v25 != 20 && v157[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v166 = *v189;
    v167 = v192;
    v60 = v193;
    (*v189)(v192, v193);
    v168 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
    v155 = v184(v167, v168, v60);
  }

  while ((v207 & 1) != 0);

  v169 = v193;
  v166(v192, v193);
  v166(v183, v169);
LABEL_173:

  v152 = v182;
  v40 = v178;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(v152 + 3) = 0;
  a1 = v181;
  v59 = v180;
LABEL_175:
  v201 = v200;

  v170 = ShaderVectorData.updating(rbShader:)(v59);

  swift_bridgeObjectRelease_n();

  *a1 = v170;
  *(a1 + 28) = 1;
}