uint64_t _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(uint64_t *a1, void *a2, uint64_t a3, char **a4, void (*a5)(uint64_t, uint64_t *, BOOL *), uint64_t a6)
{
  v11 = *a1;
  v27 = 0;
  while (1)
  {
    while ((v11 & ~a2[7]) != 0)
    {
      a2 = a2[5];
      if (!a2)
      {
        return 1;
      }
    }

    v12 = a2[3];
    if (v12)
    {
      v26 = v11;
      v13 = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(&v26, v12, a3, a4, a5, a6);
      v27 = (v13 & 1) == 0;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = a2[2];
    v15 = MEMORY[0x193AC2090](v14);
    if (v15 && v15 == a3)
    {
      v17 = *a4;
      v18 = *(*a4 + 2);
      v19 = 32;
      while (v18)
      {
        v20 = *&v17[v19];
        v19 += 8;
        --v18;
        if (v20 == v14)
        {
          goto LABEL_20;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        *a4 = v17;
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      if (v23 >= v22 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
        *a4 = v17;
      }

      *(v17 + 2) = v23 + 1;
      *&v17[8 * v23 + 32] = v14;
      _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(0, &lazy cache variable for type metadata for Stack<BodyInputElement>, &type metadata for BodyInputElement, type metadata accessor for Stack);
      (*(*a2 + 224))(&v26, v24, v24);
      a5(v14, &v26, &v27);

      if (v27)
      {
        return 0;
      }
    }

LABEL_20:
    a2 = a2[4];
    if (!a2)
    {
      return 1;
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd55V7forEach7keyType_Sbxm_y5ValueQz_SbztXEtAA0C3KeyRzlFys9k5VyAC7e3CG_U121XEfU_AA011TransactioncJ033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationJ033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tg5xSbRi_zRi0_zlyAA9AnimationVSgIsgnl_Tf1ncn_n0la15UI11Transactionnop5_yxm_rst1_uvwxyz5FyAG_U62XEfU_AA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_TG5xSbRi_zRi0_zlyAPIsgnl_Tf1nnc_nTf4nng_n(uint64_t *a1, void *a2, void (*a3)(uint64_t *, BOOL *, __n128), uint64_t a4)
{
  v7 = *a1;
  v14 = 0;
  while (1)
  {
    while ((v7 & ~a2[7]) != 0)
    {
      a2 = a2[5];
      if (!a2)
      {
        return 1;
      }
    }

    v8 = a2[3];
    if (v8)
    {
      v13 = v7;
      v9 = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd55V7forEach7keyType_Sbxm_y5ValueQz_SbztXEtAA0C3KeyRzlFys9k5VyAC7e3CG_U121XEfU_AA011TransactioncJ033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationJ033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tg5xSbRi_zRi0_zlyAA9AnimationVSgIsgnl_Tf1ncn_n0la15UI11Transactionnop5_yxm_rst1_uvwxyz5FyAG_U62XEfU_AA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_TG5xSbRi_zRi0_zlyAPIsgnl_Tf1nnc_nTf4nng_n(&v13, v8, a3, a4);
      v14 = (v9 & 1) == 0;
      if ((v9 & 1) == 0)
      {
        break;
      }
    }

    v10 = a2[2];
    type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    if (v10 == v11)
    {
      v13 = a2[9];

      (a3)(&v13, &v14);

      if (v14)
      {
        break;
      }
    }

    a2 = a2[4];
    if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ContentScrollPositionKey(int *a1, int *a2)
{

  return sub_18D3BFC2C(a1, a2);
}

uint64_t _SizedShape.size.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 36));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t _SizedShape.init(shape:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  result = type metadata accessor for _SizedShape(0, a2, a3, v11);
  v13 = (a4 + *(result + 36));
  *v13 = a5;
  v13[1] = a6;
  return result;
}

uint64_t _SizedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _SizedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*_SizedShape.animatableData.modify(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _SizedShape.animatableData.getter(a2, v16);
  return _SizedShape.animatableData.modify;
}

void _SizedShape.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _SizedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _SizedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _SizedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _SizedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _SizedShape<A>(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = v2;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _SizedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance _SizedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _SizedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _SizedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _SizedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Shape.size(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  (*(v11 + 32))(a3, v14, a1);
  result = type metadata accessor for _SizedShape(0, a1, a2, v15);
  v17 = (a3 + *(result + 36));
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t Shape.size(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v15 = *(a1 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, a1, v16);
  (*(v15 + 32))(a3, v18, a1);
  result = type metadata accessor for AnchoredSizedShape(0, a1, a2, v19);
  v21 = (a3 + *(result + 36));
  *v21 = a4;
  v21[1] = a5;
  v22 = (a3 + *(result + 40));
  *v22 = a6;
  v22[1] = a7;
  return result;
}

void *AnchoredSizedShape.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, double a5@<D2>, float64_t a6@<D3>)
{
  result = (*(*(a1 + 24) + 24))(&v37, *(a1 + 16), a3, a4, *(v6 + *(a1 + 36)), *(v6 + *(a1 + 36) + 8));
  v11 = v37;
  v12 = v38;
  v13 = v39;
  if (v39 <= 2u)
  {
    if (v39 && v39 != 1)
    {
      v14 = *(*&v37.f64[0] + 16);
      v15 = *(*&v37.f64[0] + 32);
    }

    else
    {
      v14 = v37;
      v15 = v38;
    }

    goto LABEL_17;
  }

  if (v39 == 5)
  {
    v16 = v37.f64[0];
    v32 = v38;
    v34 = v37;
    if (*(*&v37.f64[0] + 16))
    {
      if (*(*&v37.f64[0] + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v17 = MEMORY[0x193AC3640](*&v16 + 24);
      }

      width = v19;
      x = v17;
      height = v20;
      y = v18;
      goto LABEL_16;
    }

    v21 = *(*&v37.f64[0] + 24);
    if (v21)
    {
      v22 = v21;

      PathBoundingBox = CGPathGetPathBoundingBox(v22);
      width = PathBoundingBox.size.width;
      x = PathBoundingBox.origin.x;
      height = PathBoundingBox.size.height;
      y = PathBoundingBox.origin.y;

LABEL_16:
      result = outlined destroy of Path(&v37);
      v15.f64[0] = width;
      v14.f64[0] = x;
      v15.f64[1] = height;
      v14.f64[1] = y;
      v12 = v32;
      v11 = v34;
      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v39 != 6)
  {
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E695F050];
  v15 = *(MEMORY[0x1E695F050] + 16);
LABEL_17:
  v23 = (v6 + *(a1 + 40));
  v24 = *v23 * v15.f64[0];
  v15.f64[0] = a6;
  v25 = vmulq_n_f64(v15, v23[1]);
  v26 = vdupq_lane_s64(*&v25.f64[0], 0);
  v25.f64[0] = v24;
  v26.f64[0] = *v23 * a5;
  v27 = vsubq_f64(v26, vaddq_f64(v14, v25));
  *&v25.f64[0] = vmovn_s64(vceqzq_f64(v27));
  if ((LODWORD(v25.f64[0]) & HIDWORD(v25.f64[0]) & 1) == 0)
  {
    CGAffineTransformMakeTranslation(&v42, v27.f64[0], v27.f64[1]);
    Path.applying(_:)(&v42.a, v40);
    v33 = v40[1];
    v35 = v40[0];
    v13 = v41;
    result = outlined destroy of Path(&v37);
    v12 = v33;
    v11 = v35;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t AnchoredSizedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v22 - v7;
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  v22 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v13 = v12;
  *&v24.f64[0] = AssociatedTypeWitness;
  *&v24.f64[1] = v10;
  v25 = AssociatedConformanceWitness;
  v26 = v12;
  v14 = type metadata accessor for AnimatablePair(0, &v24);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  (*(v5 + 24))(v4, v5, v15);
  v24 = *(v2 + *(a1 + 36));
  v18 = AssociatedTypeWitness;
  v19 = v22;
  AnimatablePair.init(_:_:)(v8, &v24, v18, v22, AssociatedConformanceWitness, v13, v17);
  v24 = vmulq_f64(*(v2 + *(a1 + 40)), vdupq_n_s64(0x4060000000000000uLL));
  swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v14);
  return AnimatablePair.init(_:_:)(v17, &v24, v14, v19, v20, v13, v23);
}

double protocol witness for Shape.path(in:) in conformance AnchoredSizedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, double a5@<D2>, float64_t a6@<D3>)
{
  AnchoredSizedShape.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance AnchoredSizedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized AnchoredSizedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v8 = v7;
  v13 = AssociatedTypeWitness;
  v14 = v5;
  v15 = AssociatedConformanceWitness;
  v16 = v7;
  v9 = type metadata accessor for AnimatablePair(255, &v13);
  swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v9);
  v13 = v9;
  v14 = v5;
  v15 = v10;
  v16 = v8;
  v11 = type metadata accessor for AnimatablePair(0, &v13);
  return (*(*(v11 - 8) + 8))(a1, v11);
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnchoredSizedShape<A>(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x70uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[8] = v2;
  v6[9] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v13 = v12;
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v14 = type metadata accessor for AnimatablePair(255, v7);
  swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v14);
  v7[4] = v14;
  v7[5] = v10;
  v7[6] = v15;
  v7[7] = v13;
  v16 = type metadata accessor for AnimatablePair(0, (v7 + 4));
  v7[10] = v16;
  v17 = *(v16 - 8);
  v7[11] = v17;
  v18 = *(v17 + 64);
  if (v5)
  {
    v7[12] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v7[12] = malloc(*(v17 + 64));
    v19 = malloc(v18);
  }

  v7[13] = v19;
  AnchoredSizedShape.animatableData.getter(a2, v19);
  return protocol witness for Animatable.animatableData.modify in conformance AnchoredSizedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance AnchoredSizedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 96), v4, v5);
    v8 = specialized AnchoredSizedShape.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized AnchoredSizedShape.animatableData.setter(*(*a1 + 104), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

float64x2_t specialized AnchoredSizedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) + 8);
  v29 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v28 - v7;
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v13 = v12;
  v31 = AssociatedTypeWitness;
  v32 = v10;
  v33 = AssociatedConformanceWitness;
  v34 = v12;
  v14 = type metadata accessor for AnimatablePair(0, &v31);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  (*(v18 + 16))(&v28 - v16, a1, v14, v15);
  (*(v6 + 32))(v8, v17, AssociatedTypeWitness);
  v19 = (a1 + *(v14 + 52));
  v20 = *v19;
  v21 = v19[1];
  swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v14);
  v31 = v14;
  v32 = v10;
  v33 = v22;
  v34 = v13;
  v23 = type metadata accessor for AnimatablePair(0, &v31);
  v24 = *(v4 + 32);
  v28 = *(a1 + *(v23 + 52));
  v25 = v30;
  v24(v8, v29, v4);
  v26 = (v25 + *(a2 + 36));
  *v26 = v20;
  v26[1] = v21;
  result = vmulq_f64(v28, vdupq_n_s64(0x3F80000000000000uLL));
  *(v25 + *(a2 + 40)) = result;
  return result;
}

uint64_t specialized _SizedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  (*(v11 + 16))(v21 - v9, a1, AssociatedTypeWitness, v8);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v21[0] = AssociatedTypeWitness;
  v21[1] = v13;
  v21[2] = AssociatedConformanceWitness;
  v21[3] = v15;
  v16 = (a1 + *(type metadata accessor for AnimatablePair(0, v21) + 52));
  v17 = *v16;
  v18 = v16[1];
  result = (*(v6 + 32))(v10, v5, v6);
  v20 = (v2 + *(a2 + 36));
  *v20 = v17;
  v20[1] = v18;
  return result;
}

uint64_t assignWithCopy for _SizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t assignWithTake for _SizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

double get_witness_table_7SwiftUI5ShapeRzlAA06_SizedC0VyxGAaBHPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);

  return swift_getWitnessTable(a3, v4);
}

uint64_t type metadata completion function for AnchoredSizedShape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnchoredSizedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for AnchoredSizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AnchoredSizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t initializeWithTake for AnchoredSizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnchoredSizedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for AnchoredSizedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for AnchoredSizedShape(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double TappableEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double TappableEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double TappableEvent.binding.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void TappableEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void TappableEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t TappableEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t TappableEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  v7 = *(a3 + 8);
  v7[1](&v10, a2, v7);
  *a4 = v10;
  v7[2](&v10, a2, v7);
  *(a4 + 8) = v10;
  v7[6](&v10, a2, v7);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v9 = v11;
  *(a4 + 24) = v10;
  *(a4 + 32) = v9;
  return result;
}

uint64_t TappableEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v12, v5);
  *a2 = v12;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(*(v6 + 8) + 16))(&v12, v7);
  *(a2 + 8) = v12;
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(*(v8 + 8) + 48))(&v12, v9);
  v10 = v13;
  *(a2 + 24) = v12;
  *(a2 + 32) = v10;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

{
  outlined init with copy of AnyTrackedValue(a1, v18);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TappableEventType, &protocol descriptor for TappableEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v16, v21);
    outlined init with copy of AnyTrackedValue(v21, v18);
    v5 = v19;
    v4 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v4 + 8) + 8))(v16, v5);
    v6 = v16[0];
    v8 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v7 + 8) + 16))(v16, v8);
    v9 = *&v16[0];
    v11 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v10 + 8) + 48))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v12 = *&v16[0];
    v13 = BYTE8(v16[0]);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = 0;
    *a2 = v6;
    *(a2 + 32) = v13;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    result = outlined destroy of TappableEventType?(v16, type metadata accessor for TappableEventType?);
    v9 = 0;
    v12 = 0;
    *a2 = 0;
    *(a2 + 32) = 0;
    v15 = 1;
  }

  *(a2 + 8) = v9;
  *(a2 + 16) = v15;
  *(a2 + 24) = v12;
  return result;
}

void type metadata accessor for TappableEventType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TappableEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for TappableEventType, &protocol descriptor for TappableEventType);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TappableEventType?);
    }
  }
}

double TappableSpatialEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double TappableSpatialEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double TappableSpatialEvent.binding.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void TappableSpatialEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void TappableSpatialEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t TappableSpatialEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t TappableSpatialEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  v8 = *(a3 + 8);
  v8[1](&v13, a2, v8);
  *a4 = v13;
  v8[2](&v13, a2, v8);
  *(a4 + 8) = v13;
  *(a4 + 24) = (*(a3 + 16))(a2, a3);
  *(a4 + 32) = v9;
  *(a4 + 40) = (*(a3 + 40))(a2, a3);
  *(a4 + 48) = v10;
  *(a4 + 56) = (*(a3 + 64))(a2, a3);
  v8[6](&v13, a2, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v12 = v14;
  *(a4 + 64) = v13;
  *(a4 + 72) = v12;
  return result;
}

uint64_t TappableSpatialEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v20, v5);
  *a2 = v20;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(*(v6 + 8) + 16))(&v20, v7);
  *(a2 + 8) = v20;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *(a2 + 24) = (*(v9 + 16))(v8, v9);
  *(a2 + 32) = v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  *(a2 + 40) = (*(v12 + 40))(v11, v12);
  *(a2 + 48) = v13;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *(a2 + 56) = (*(v15 + 64))(v14, v15);
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(*(v16 + 8) + 48))(&v20, v17);
  v18 = v21;
  *(a2 + 64) = v20;
  *(a2 + 72) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double TappableSpatialEvent.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  type metadata accessor for SpatialEventType & TappableEventType();
  if (swift_dynamicCast())
  {
    outlined init with take of Decodable & Encodable(v10, v12);
    outlined init with copy of Decodable & Encodable(v12, v7);
    TappableSpatialEvent.init(_:)(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v4 = v9[0];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v4;
    *(a2 + 57) = *(v9 + 9);
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of TappableEventType?(v10, type metadata accessor for (SpatialEventType & TappableEventType)?);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *&v5 = 0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0;
  }

  return *&v5;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance TappableSpatialEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

BOOL specialized static TappableEvent.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_14:

    return 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_11:
  if (a1[4])
  {
    return (a2[4] & 1) != 0;
  }

  if (*(a1 + 3) == *(a2 + 3))
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 1;
  }

  return (v7 & 1) == 0;
}

unint64_t type metadata accessor for SpatialEventType & TappableEventType()
{
  result = lazy cache variable for type metadata for SpatialEventType & TappableEventType;
  if (!lazy cache variable for type metadata for SpatialEventType & TappableEventType)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SpatialEventType & TappableEventType);
  }

  return result;
}

uint64_t outlined destroy of TappableEventType?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (SpatialEventType & TappableEventType)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SpatialEventType & TappableEventType)?)
  {
    type metadata accessor for SpatialEventType & TappableEventType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (SpatialEventType & TappableEventType)?);
    }
  }
}

uint64_t specialized static TappableSpatialEvent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v4 = *(a1 + 2);
    v6 = *(a1 + 3);
    v5 = *(a1 + 4);
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v9 = *(a1 + 7);
    v10 = *(a1 + 8);
    v11 = a1[72];
    v12 = *(a2 + 2);
    v13 = *(a2 + 3);
    if (v4)
    {
      if (v12)
      {
        result = 0;
        if (v4 != v12 || v6 != v13)
        {
          return result;
        }

LABEL_13:
        if (v5 != *(a2 + 4) || v8 != *(a2 + 5) || v7 != *(a2 + 6) || v9 != *(a2 + 7))
        {
          return result;
        }

        if (v11)
        {
          if (a2[72])
          {
            return 1;
          }
        }

        else
        {
          if (v10 == *(a2 + 8))
          {
            v14 = a2[72];
          }

          else
          {
            v14 = 1;
          }

          if ((v14 & 1) == 0)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else if (!v12)
    {
      result = 0;
      if (v6 != v13)
      {
        return result;
      }

      goto LABEL_13;
    }

    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for TappableSpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for TappableSpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v4;
  return a1;
}

uint64_t assignWithTake for TappableSpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for TappableSpatialEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TappableSpatialEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

SwiftUI::ProtobufFormat::Field_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.nextField()()
{
  v3 = v1[1];
  if (v3 >= v1[2])
  {
    v4 = 0;
    v1[3] = 0;
    goto LABEL_10;
  }

  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];
    if (v3 < v5)
    {
      goto LABEL_10;
    }

    if (v5 < v3)
    {
LABEL_8:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      v4 = swift_willThrow();
      goto LABEL_11;
    }

    v1[3] = 0;
  }

  v6 = v0;
  v4 = ProtobufDecoder.decodeVarint()(v4);
  if (!v2)
  {
    v0 = v6;
    if (v4 < 8)
    {
      goto LABEL_8;
    }

LABEL_10:
    *v0 = v4;
    *(v0 + 8) = v4 == 0;
  }

LABEL_11:
  result.value.rawValue = v4;
  result.is_nil = v7;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.skipField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v2 = *a1.rawValue & 7;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 5)
      {
        v3 = *(v1 + 8) + 4;
        if (*(v1 + 16) >= v3)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_9;
    }

    ProtobufDecoder.decodeDataBuffer()(a1.rawValue);
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = *(v1 + 8) + 8;
        if (*(v1 + 16) >= v3)
        {
LABEL_10:
          *(v1 + 8) = v3;
          return;
        }
      }

LABEL_9:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }

    ProtobufDecoder.decodeVarint()(a1.rawValue);
  }
}

Swift::UInt64 ProtobufDecoder.enumField<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = ProtobufDecoder.uint64Field(_:)(&v7);
  if (!v6)
  {
    return (*(a3 + 16))(result, a2, a3);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.stringField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1.rawValue;
  v6 = ProtobufDecoder.dataField(_:)(&v16);
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    if (v11)
    {
      v5 = v10;
      a1.rawValue = v11;
    }

    else
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v5 = swift_allocError();
      swift_willThrow();
    }

    outlined consume of Data._Representation(v8, v9);
  }

  v12 = v5;
  rawValue = a1.rawValue;
  result._object = rawValue;
  result._countAndFlagsBits = v12;
  return result;
}

void ProtobufDecoder.codableField<A>(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = *(v4 + 4);
  v11 = *(v4 + 5);
  v12 = *(v4 + 6);
  v13 = v4[1];
  v22 = *v4;
  v23 = v13;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v21 = v9;
  v14 = v22;

  v15 = ProtobufDecoder.dataField(_:)(&v21);
  if (v5)
  {
  }

  else
  {
    v17 = a4;
    v18 = v15;
    v19 = v16;
    ProtobufDecoder.value<A>(fromBinaryPlist:type:)(a2, a3, v17);
    v20 = v22;

    outlined consume of Data._Representation(v18, v19);
  }
}

uint64_t ProtobufDecoder.messageField<A>(_:_:)(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if ((*a1 & 7) == 2)
  {
    return ProtobufDecoder.decodeMessage<A>(_:)(a2);
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.intField(_:)(Swift::Int result)
{
  v3 = *result;
  if ((*result & 7) == 0)
  {
LABEL_8:
    result = ProtobufDecoder.decodeVarint()(result);
    if (!v2)
    {
      return -(result & 1) ^ (result >> 1);
    }

    return result;
  }

  if ((*result & 7) != 2)
  {
LABEL_6:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (!v2)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v4 = v1[1] + result;
    if (v1[2] < v4)
    {
      goto LABEL_6;
    }

    v1[3] = v3 & 0xFFFFFFFFFFFFFFF8;
    v1[4] = v4;
    goto LABEL_8;
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.BOOLField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  if ((*a1.rawValue & 7) == 0)
  {
    goto LABEL_8;
  }

  if ((*a1.rawValue & 7) != 2)
  {
LABEL_6:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  a1.rawValue = ProtobufDecoder.decodeVarint()(a1.rawValue);
  if (!v2)
  {
    if ((a1.rawValue & 0x8000000000000000) != 0)
    {
      __break(1u);
      return a1.rawValue;
    }

    v5 = v1[1] + a1.rawValue;
    if (v1[2] < v5)
    {
      goto LABEL_6;
    }

    v1[3] = v3 & 0xFFFFFFFFFFFFFFF8;
    v1[4] = v5;
LABEL_8:
    v6 = ProtobufDecoder.decodeVarint()(a1.rawValue);
    if (!v2)
    {
      v4 = v6 != 0;
    }
  }

LABEL_10:
  LOBYTE(a1.rawValue) = v4;
  return a1.rawValue;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.floatField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  v4 = *a1.rawValue & 7;
  if (v4 == 2)
  {
    v8 = ProtobufDecoder.decodeVarint()(a1.rawValue);
    if (v2)
    {
      return result;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v1[1];
    v6 = v1[2];
    if (v6 >= v5 + v8)
    {
      v1[3] = v3 & 0xFFFFFFFFFFFFFFF8 | 5;
      v1[4] = v5 + v8;
LABEL_4:
      if (v6 >= (v5 + 1))
      {
        result = *v5;
        v1[1] = v5 + 1;
        return result;
      }
    }
  }

  else if (v4 == 5)
  {
    v5 = v1[1];
    v6 = v1[2];
    goto LABEL_4;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return result;
}

uint64_t ProtobufDecoder.dataBufferField(_:)(void *a1)
{
  if ((*a1 & 7) == 2)
  {
    return ProtobufDecoder.decodeDataBuffer()(a1);
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

Swift::Int ProtobufDecoder.DecodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.fixed32Field(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  v4 = *a1.rawValue & 7;
  if (v4 != 2)
  {
    if (v4 == 5)
    {
      v5 = v1[1];
      v6 = v1[2];
      goto LABEL_4;
    }

LABEL_9:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    LODWORD(v7) = swift_willThrow();
    return v7;
  }

  v7 = ProtobufDecoder.decodeVarint()(a1.rawValue);
  if (v2)
  {
    return v7;
  }

  if (v7 < 0)
  {
    __break(1u);
    return v7;
  }

  v5 = v1[1];
  v6 = v1[2];
  if (v6 < v5 + v7)
  {
    goto LABEL_9;
  }

  v1[3] = v3 & 0xFFFFFFFFFFFFFFF8 | 5;
  v1[4] = v5 + v7;
LABEL_4:
  if (v6 < (v5 + 1))
  {
    goto LABEL_9;
  }

  LODWORD(v7) = *v5;
  v1[1] = v5 + 1;
  return v7;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.fixed64Field(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  v4 = *a1.rawValue & 7;
  if (v4 == 2)
  {
    result = ProtobufDecoder.decodeVarint()(a1.rawValue);
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v5 = v1[1];
    v6 = v1[2];
    if (v6 >= v5 + result)
    {
      v1[3] = v3 & 0xFFFFFFFFFFFFFFF8 | 1;
      v1[4] = v5 + result;
LABEL_4:
      if (v6 >= (v5 + 1))
      {
        result = *v5;
        v1[1] = v5 + 1;
        return result;
      }
    }
  }

  else if (v4 == 1)
  {
    v5 = v1[1];
    v6 = v1[2];
    goto LABEL_4;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t ProtobufDecoder.decodeMessage<A>(_:)(void (*a1)(uint64_t))
{
  v3 = v1;
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    a1(v1);
    v6 = *(v1 + 40);
    if (*(v6 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
LABEL_5:
          v8 = v7 - 1;
          v9 = *(v6 + 8 * v8 + 32);
          *(v6 + 16) = v8;
          *(v3 + 40) = v6;
          *(v3 + 16) = v9;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    v7 = *(result + 16);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

void ProtobufDecoder.codableWithConfigurationField<A>(_:configuration:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = *v5;
  v18 = *a1;
  v11 = v17;

  v12 = ProtobufDecoder.dataField(_:)(&v18);
  if (v6)
  {
  }

  else
  {
    v14 = a5;
    v15 = v12;
    v16 = v13;
    ProtobufDecoder.value<A>(fromBinaryPlist:type:configuration:)(a2, a3, a4, v14);

    outlined consume of Data._Representation(v15, v16);
  }
}

double destroy for ProtobufDecoder(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for ProtobufDecoder(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ProtobufDecoder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for ProtobufDecoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void EnvironmentValues.capitalizationContext.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v2, a1);
  }
}

uint64_t EnvironmentValues.capitalizationContext.setter(uint64_t a1)
{
  v2 = v1;
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  outlined init with copy of EnvironmentValues.CapitalizationContext(a1, v12 - v8);
  v10 = *v2;
  outlined init with copy of EnvironmentValues.CapitalizationContext(v9, v6);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v2, v6);

  outlined destroy of EnvironmentValues.CapitalizationContext(v6);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE0K033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Ttg5(v10, *v2);
  }

  outlined destroy of EnvironmentValues.CapitalizationContext(a1);
  return outlined destroy of EnvironmentValues.CapitalizationContext(v9);
}

void key path getter for EnvironmentValues.capitalizationContext : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v2, a2);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(*a1, a2);
  }
}

uint64_t key path setter for EnvironmentValues.capitalizationContext : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of EnvironmentValues.CapitalizationContext(a1, &v9 - v6);
  outlined init with copy of EnvironmentValues.CapitalizationContext(v7, v4);
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE0N033_B2C9C13C743DF2F6E22ED614C39E3A5DLLV_Tt0g5(v4);
  outlined destroy of EnvironmentValues.CapitalizationContext(v4);
  return outlined destroy of EnvironmentValues.CapitalizationContext(v7);
}

void (*EnvironmentValues.capitalizationContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EnvironmentValues.CapitalizationContext(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v5[5] = malloc(v6);
    v5[6] = malloc(v6);
    v5[7] = malloc(v6);
    v5[8] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[9] = v7;
  v9 = *v1;
  v5[10] = *v1;
  v10 = *(v1 + 8);
  v5[11] = v10;
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v9, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v9, v7);
  }

  v5[12] = 0;
  return EnvironmentValues.capitalizationContext.modify;
}

void EnvironmentValues.capitalizationContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);
    v8 = *(v2 + 24);
    v7 = *(v2 + 32);
    outlined init with copy of EnvironmentValues.CapitalizationContext(v4, v5);
    outlined init with copy of EnvironmentValues.CapitalizationContext(v5, v6);
    outlined init with copy of EnvironmentValues.CapitalizationContext(v6, v7);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v8, v7);

    outlined destroy of EnvironmentValues.CapitalizationContext(v7);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE0K033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Ttg5(*(v2 + 80), **(v2 + 24));
    }

    v10 = *(v2 + 64);
    v9 = *(v2 + 72);
    v12 = *(v2 + 48);
    v11 = *(v2 + 56);
    v14 = *(v2 + 32);
    v13 = *(v2 + 40);

    outlined destroy of EnvironmentValues.CapitalizationContext(v13);
    v15 = v12;
  }

  else
  {
    v17 = *(v2 + 56);
    v16 = *(v2 + 64);
    v18 = *(v2 + 24);
    outlined init with copy of EnvironmentValues.CapitalizationContext(v4, v16);
    outlined init with copy of EnvironmentValues.CapitalizationContext(v16, v17);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v18, v17);

    outlined destroy of EnvironmentValues.CapitalizationContext(v17);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE0K033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Ttg5(*(v2 + 80), **(v2 + 24));
    }

    v12 = *(v2 + 64);
    v9 = *(v2 + 72);
    v15 = *(v2 + 48);
    v11 = *(v2 + 56);
    v14 = *(v2 + 32);
    v13 = *(v2 + 40);

    v10 = v12;
  }

  outlined destroy of EnvironmentValues.CapitalizationContext(v12);
  outlined destroy of EnvironmentValues.CapitalizationContext(v9);
  free(v9);
  free(v10);
  free(v11);
  free(v15);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t Date.RelativeFormatStyle.capitalizationContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v22 = a4;
  v9 = type metadata accessor for FormatStyleCapitalizationContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = a2(v14);
  MEMORY[0x193ABCD20](v17);
  LOBYTE(a2) = MEMORY[0x193ABCD10](v16, v12);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v16, v9);
  v19 = a3(0);
  result = (*(*(v19 - 8) + 16))(a5, v5, v19);
  if (a2)
  {
    (*(v10 + 16))(v16, v21, v9);
    return v22(v16);
  }

  return result;
}

uint64_t Date.FormatStyle.Attributed.capitalizationContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  swift_getKeyPath();
  MEMORY[0x193ABCF80]();

  MEMORY[0x193ABCD20](v12);
  v13 = MEMORY[0x193ABCD10](v11, v8);
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  v15 = type metadata accessor for Date.FormatStyle.Attributed();
  result = (*(*(v15 - 8) + 16))(a2, v2, v15);
  if (v13)
  {
    swift_getKeyPath();
    (*(v6 + 16))(v11, a1, v5);
    return Date.FormatStyle.Attributed.subscript.setter();
  }

  return result;
}

uint64_t key path setter for Date.FormatStyle.capitalizationContext : Date.FormatStyle(uint64_t a1)
{
  v2 = type metadata accessor for FormatStyleCapitalizationContext();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Date.FormatStyle.capitalizationContext.setter();
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentValues.CapitalizationContext(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
    }

    else
    {
      v8 = type metadata accessor for FormatStyleCapitalizationContext();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithCopy for EnvironmentValues.CapitalizationContext(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EnvironmentValues.CapitalizationContext(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = a2[1];
      *a1 = *a2;
      a1[1] = v5;
    }

    else
    {
      v6 = type metadata accessor for FormatStyleCapitalizationContext();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for EnvironmentValues.CapitalizationContext(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for EnvironmentValues.CapitalizationContext(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EnvironmentValues.CapitalizationContext(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a2;
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v12 = a1;
  v13 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v13);
  }

  v28 = &v19;
  v14 = *(v13 + 2);
  v31[0] = (v13 + 32);
  v31[1] = v14;
  v15 = _minimumMergeRunLength(_:)(v14);
  if (v15 >= v14)
  {
    if (v14)
    {
      LOBYTE(v30[0]) = a10 & 1;
      v32[0] = a12 & 1;
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v14, 1, v31, v24, v25, v26, v27, v23, v22, v21, a9, a10 & 1, a11, a12 & 1);
    }
  }

  else
  {
    v16 = v15;
    v20 = v12;
    v17 = v14 >> 1;
    if (v14 >= 2)
    {
      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v18 + 16) = v17;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v30[0] = v18 + 32;
    v30[1] = v17;
    v32[0] = a10 & 1;
    v29 = a12 & 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v30, v32, v31, v16, v24, v25, v26, v27, v23, v22, v21, a9, a10 & 1, a11, a12 & 1);
    *(v18 + 16) = 0;

    v12 = v20;
  }

  *v12 = v13;
}

void specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v9 = *(a5 + 17);
  if (*(a5 + 17))
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  if ((v10 & 1) == 0)
  {
    v11 = a7;
    v13 = a5;
    v16 = *(a5 + 24);
    LOBYTE(v104[0]) = a2 & 1;
    LOBYTE(v100) = a4 & 1;
    StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(a6, a7, a1, a2 & 1, a3, a4 & 1, a5, a6, a7);
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = -8;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return;
      }

      v18 = 0;
      v19 = (v17 + 48);
      if (v9)
      {
        v20 = a3;
      }

      else
      {
        v20 = a1;
      }

      v21 = *&v20 - v16;
      v95 = *MEMORY[0x1E698D3F8];
      if (0.0 - a9 > 0.0)
      {
        v22 = 0.0 - a9;
      }

      else
      {
        v22 = 0.0;
      }

      v89 = v11;
      v93 = v19;
      v94 = a6;
      v99 = v13;
      while (v18 < v11)
      {
        v24 = 15 * v18;
        if ((v18 * 120) >> 64 != (120 * v18) >> 63)
        {
          goto LABEL_147;
        }

        v25 = v19[15 * v18];
        v23 = v18 == v11;
        if (v18 != v11)
        {
          v26 = v18;
          while ((v26 * 120) >> 64 == (120 * v26) >> 63)
          {
            if (*(a6 + 120 * v19[15 * v26]) != *(a6 + 120 * v25))
            {
              goto LABEL_28;
            }

            if (v18 < 0)
            {
              goto LABEL_135;
            }

            v23 = v11 == ++v26;
            if (v11 == v26)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_134;
        }

LABEL_27:
        v26 = v11;
LABEL_28:
        if (v26 < v18)
        {
          goto LABEL_148;
        }

        if (v26 > v11)
        {
          goto LABEL_149;
        }

        v27 = 0.0;
        if (v25 == *v19)
        {
          if (v26 != v11)
          {
            v28 = v26;
            while ((v28 * 120) >> 64 == (120 * v28) >> 63)
            {
              if (v26 < 0)
              {
                goto LABEL_138;
              }

              v29 = a6 + 120 * v19[15 * v28];
              if (*(v29 + 16))
              {
                goto LABEL_152;
              }

              ++v28;
              v27 = v27 + *(v29 + 8);
              if (v11 == v28)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_136;
          }

LABEL_37:
          v21 = v21 - v27;
        }

        else
        {
          if (v26 != v18)
          {
            if (v18 <= v11)
            {
              v30 = v11;
            }

            else
            {
              v30 = v18;
            }

            v31 = v18;
            while ((v31 * 120) >> 64 == (120 * v31) >> 63)
            {
              if (v30 == v31)
              {
                goto LABEL_139;
              }

              v32 = a6 + 120 * v19[15 * v31];
              if (*(v32 + 16))
              {
                goto LABEL_153;
              }

              ++v31;
              v27 = v27 + *(v32 + 8);
              if (v26 == v31)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_137;
          }

LABEL_47:
          v21 = v21 + v27;
        }

        v33 = v26 - v18;
        v91 = v26;
        if (v26 != v18)
        {
          if (v26 < 0)
          {
            goto LABEL_150;
          }

          v90 = v23;
          if (v18 <= v11)
          {
            v34 = v11;
          }

          else
          {
            v34 = v18;
          }

          if ((v18 * 120) >> 64 == (v24 * 8) >> 63)
          {
            v35 = v18 + 1;
            v96 = -v26;
            v97 = -v34;
            while (v97 + v35 != 1)
            {
              v36 = v19[v24];
              v37 = *(v13 + 17);
              v38 = (a6 + 120 * v36);
              v40 = *v38;
              v39 = v38[1];
              v41 = v38[2];
              v105 = v38[3];
              v42 = *(v38 + 14);
              v44 = v38[5];
              v43 = v38[6];
              v45 = v38[4];
              if (v21 / v33 > 0.0)
              {
                v46 = v21 / v33;
              }

              else
              {
                v46 = 0.0;
              }

              v107 = v38[5];
              v108 = v43;
              v106 = v45;
              v104[1] = v39;
              v104[2] = v41;
              v104[0] = v40;
              v109 = v42;
              v47 = *(&v105 + 1);
              v48 = *&v45;
              v49 = *(&v44 + 1);
              v50 = *&v43;
              outlined init with copy of StackLayout.Child(v104, &v100);
              v110.origin.x = v47;
              v110.origin.y = v48;
              v110.size.width = v49;
              v110.size.height = v50;
              IsNull = CGRectIsNull(v110);
              outlined destroy of StackLayout.Child(v104);
              v52 = v22;
              if (!IsNull)
              {
                if (a8)
                {
                  v53 = v50;
                }

                else
                {
                  v53 = v49;
                }

                if (a8)
                {
                  v54 = v48;
                }

                else
                {
                  v54 = v47;
                }

                v55 = v54 + v53;
                if (v55 >= v54)
                {
                  v56 = v54;
                }

                else
                {
                  v56 = v55;
                }

                if (v54 <= v55)
                {
                  v54 = v55;
                }

                v52 = v22;
                if (v56 <= v54)
                {
                  v52 = v54 - a9;
                  if (v54 - a9 <= 0.0)
                  {
                    v52 = 0.0;
                  }
                }
              }

              v57 = a9 - v52;
              if (v37)
              {
                v58 = v57;
              }

              else
              {
                v58 = v46;
              }

              if (v37)
              {
                v59 = v46;
              }

              else
              {
                v59 = v57;
              }

              v60 = *(v13 + 88);
              if (*(v13 + 96))
              {
                if ((v36 & 0x8000000000000000) != 0)
                {
                  goto LABEL_141;
                }

                if (v36 >= *(v60 + 16))
                {
                  goto LABEL_143;
                }

                v61 = v60 + 12 * v36;
              }

              else
              {
                if ((v36 & 0x8000000000000000) != 0)
                {
                  goto LABEL_140;
                }

                if (v36 >= *(v60 + 16))
                {
                  goto LABEL_142;
                }

                v61 = v60 + 8 * v36;
              }

              if (*(v61 + 32) == v95)
              {
                InputValue = &static LayoutComputer.defaultValue;
                if (one-time initialization token for defaultValue != -1)
                {
                  swift_once();
                  InputValue = &static LayoutComputer.defaultValue;
                }
              }

              else
              {
                InputValue = AGGraphGetInputValue();
              }

              v64 = *InputValue;
              v63 = *(InputValue + 1);
              v65 = one-time initialization token for lockAssertionsAreEnabled;

              if (v65 != -1)
              {
                swift_once();
              }

              v66 = lockAssertionsAreEnabled;
              if (lockAssertionsAreEnabled)
              {
                if (one-time initialization token for _lock != -1)
                {
                  swift_once();
                }

                if (!_MovableLockIsOwner(static Update._lock))
                {
                  goto LABEL_155;
                }
              }

              *&v100 = v58;
              BYTE8(v100) = 0;
              *&v101 = v59;
              BYTE8(v101) = 0;
              v67 = (*(*v64 + 120))(&v100);
              v69 = v68;
              v70 = *v99;
              if (v66)
              {
                v71 = one-time initialization token for _lock;

                if (v71 != -1)
                {
                  swift_once();
                }

                if (!_MovableLockIsOwner(static Update._lock))
                {
                  goto LABEL_155;
                }
              }

              else
              {
              }

              *&v100 = v67;
              *(&v100 + 1) = v69;
              *&v101 = v58;
              *(&v101 + 1) = v59;
              *&v72 = COERCE_DOUBLE((*(*v64 + 144))(v70, &v100));
              v74 = v73;

              if (v74)
              {
                if (one-time initialization token for typeCache != -1)
                {
                  swift_once();
                }

                os_unfair_lock_lock(&static AlignmentKey.typeCache);
                if (v70 < 2)
                {
                  goto LABEL_144;
                }

                if (v70 >> 1 > *(off_1ED537F58 + 2))
                {
                  goto LABEL_145;
                }

                v75 = (off_1ED537F58 + 16 * (v70 >> 1) + 16);
                v76 = *v75;
                v77 = v75[1];
                os_unfair_lock_unlock(&static AlignmentKey.typeCache);
                *&v100 = v64;
                *(&v100 + 1) = v63;
                *&v101 = v67;
                *(&v101 + 1) = v69;
                *&v102 = v58;
                *(&v102 + 1) = v59;
                (*(v77 + 8))(&v100, v76, v77);
              }

              else
              {
                v78 = *&v72;
              }

              v79 = INFINITY;
              v13 = v99;
              if ((*&v78 & 0xFFFFFFFFFFFFFLL) == 0)
              {
                v79 = v78;
              }

              v80 = *(v38 + 56);
              v81 = *(v38 + 72);
              if ((~*&v78 & 0x7FF0000000000000) == 0)
              {
                v78 = v79;
              }

              v82 = -v78;
              v83 = *(v38 + 104);
              if (*(v99 + 17))
              {
                v84 = v82;
              }

              else
              {
                v84 = 0.0;
              }

              if (*(v99 + 17))
              {
                v82 = 0.0;
              }

              v102 = *(v38 + 88);
              v103 = v83;
              v100 = v80;
              v101 = v81;
              *(v38 + 7) = v84;
              *(v38 + 12) = v69;
              *(v38 + 8) = v82;
              *(v38 + 9) = v64;
              *(v38 + 10) = v63;
              *(v38 + 11) = v67;
              *(v38 + 13) = v58;
              *(v38 + 14) = v59;
              outlined destroy of ViewGeometry(&v100);
              if (*(v99 + 17))
              {
                v85 = (v38 + 6);
              }

              else
              {
                v85 = v38 + 11;
              }

              v86 = v21 - *v85;
              if ((*&v86 & 0xFFFFFFFFFFFFFLL) != 0)
              {
                v87 = v21;
              }

              else
              {
                v87 = v86;
              }

              if ((~*&v86 & 0x7FF0000000000000) != 0)
              {
                v21 = v86;
              }

              else
              {
                v21 = v87;
              }

              a6 = v94;
              if (!(v96 + v35))
              {
                v11 = v89;
                v19 = v93;
                v23 = v90;
                goto LABEL_18;
              }

              v24 = 15 * v35;
              v88 = (v35 * 120) >> 64 == (120 * v35) >> 63;
              ++v35;
              --v33;
              v19 = v93;
              if (!v88)
              {
                goto LABEL_132;
              }
            }
          }

          else
          {
LABEL_132:
            __break(1u);
          }

          __break(1u);
LABEL_134:
          __break(1u);
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
          break;
        }

LABEL_18:
        v18 = v91;
        if (v23)
        {
          return;
        }
      }

      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
    }

    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
  }

  __break(1u);
LABEL_155:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void slowPath #1 (_:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v12 = *(a1 + 8);
  if (v12 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = *a1;
  if (!v12)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v23 = a3;
  v24 = a2;
  v21 = a5;
  v22 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v12, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(v25, (v17 + 32), v12, v13, v12) != v12)
  {
LABEL_18:
    __break(1u);

    __break(1u);
    return;
  }

  a8 = v16;
  a7 = v15;
  a6 = v14;
  a5 = v21;
  a4 = v22;
  a3 = v23;
  a2 = v24;
LABEL_6:
  v25[0] = v17;
  specialized MutableCollection<>.sort(by:)(v25, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, a12 & 1);
  v18 = v25[0];
  if (v12)
  {
    v19 = 0;
    v20 = *(v25[0] + 2);
    while (v20 != v19)
    {
      if (v19 >= *(v18 + 2))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v19 == 0x111111111111112)
      {
        goto LABEL_16;
      }

      *v13 = *&v18[8 * v19 + 32];
      v13 += 15;
      if (v12 == ++v19)
      {
        break;
      }
    }
  }
}

void specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v9 = a7;
  v10 = a6;
  if (*(a5 + 17))
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(a5, a6, a7, a8 & 1, a9);
  }

  else
  {
    LOBYTE(v48[0]) = a2 & 1;
    v47[0] = a4 & 1;
    specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8 & 1, a9);
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v10)
  {
    if (v9)
    {
      v16 = 120 * v9;
      v17 = v10;
      while (1)
      {
        v18 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 32);
        v49 = *(v17 + 48);
        v21 = *(v17 + 112);
        v23 = *(v17 + 80);
        v22 = *(v17 + 96);
        v50 = *(v17 + 64);
        v51 = v23;
        v52 = v22;
        v48[1] = v19;
        v48[2] = v20;
        v48[0] = v18;
        v53 = v21;
        v24 = *(a5 + 17);
        v25 = *(&v49 + 1);
        v26 = *&v50;
        v27 = *(&v23 + 1);
        v28 = *&v22;
        outlined init with copy of StackLayout.Child(v48, v47);
        v54.origin.x = v25;
        v54.origin.y = v26;
        v54.size.width = v27;
        v54.size.height = v28;
        IsNull = CGRectIsNull(v54);
        outlined destroy of StackLayout.Child(v48);
        v30 = 0.0;
        v31 = 0.0;
        if (!IsNull)
        {
          if (v24)
          {
            v32 = v27;
          }

          else
          {
            v32 = v28;
          }

          if (v24)
          {
            v33 = v25;
          }

          else
          {
            v33 = v26;
          }

          v31 = v33 + v32;
          if (v31 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v31;
          }

          if (v33 > v31)
          {
            v31 = v33;
          }

          if (v34 <= v31)
          {
            v30 = v34;
          }

          else
          {
            v31 = 0.0;
            v30 = 0.0;
          }
        }

        if (v30 < v14)
        {
          v14 = v30;
        }

        if (v15 <= v31)
        {
          v15 = v31;
        }

        if (v14 > v15)
        {
          break;
        }

        v17 += 120;
        v16 -= 120;
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
LABEL_31:
    if (v9)
    {
      if (v9 < 0)
      {
LABEL_62:
        __break(1u);
        return;
      }

      v35 = *(a5 + 17);
      v36 = 56;
      if (*(a5 + 17))
      {
        v37 = 64;
      }

      else
      {
        v37 = 56;
      }

      if (!*(a5 + 17))
      {
        v36 = 64;
      }

      v13 = 0.0;
      do
      {
        v39 = v13 + *(v10 + 40);
        if ((~*&v39 & 0x7FF0000000000000) != 0 || (*&v39 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          *(v10 + v37) = v39;
        }

        v41 = *(v10 + v36) - v14;
        v42 = ~*&v41 & 0x7FF0000000000000;
        v43 = *&v41 & 0xFFFFFFFFFFFFFLL;
        if (v42)
        {
          v44 = 1;
        }

        else
        {
          v44 = v43 == 0;
        }

        if (v44)
        {
          *(v10 + v36) = *(v10 + v36) - v14;
        }

        if (v35)
        {
          v38 = 96;
        }

        else
        {
          v38 = 88;
        }

        v13 = v39 + *(v10 + v38);
        v10 += 120;
        --v9;
      }

      while (v9);
    }
  }

  v45 = v15 - v14;
  if (*(a5 + 17))
  {
    v46 = v15 - v14;
  }

  else
  {
    v46 = v13;
  }

  if (*(a5 + 17))
  {
    v45 = v13;
  }

  *(a5 + 64) = v46;
  *(a5 + 72) = v45;
}

void StackLayout.UnmanagedImplementation.resizeAnyChildrenWithTrailingOverflow(in:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a5 + 17))
  {
    v7 = result;
  }

  else
  {
    v7 = a3;
  }

  if (*(a5 + 17))
  {
    v8 = a2;
  }

  else
  {
    v8 = a4;
  }

  v9 = 72;
  if (*(a5 + 17))
  {
    v9 = 64;
  }

  v10 = *(a5 + v9);
  v11 = *&v7;
  if (v8)
  {
    v11 = INFINITY;
  }

  if (v10 > v11)
  {
    if (a6 && a7)
    {
      v12 = (a6 + 96);
      v13 = 120 * a7;
      while (1)
      {
        v14 = v12 - 1;
        if (!*(a5 + 17))
        {
          v14 = v12;
        }

        if (*v14 == v10)
        {
          break;
        }

        v12 += 15;
        v13 -= 120;
        if (!v13)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(result, a2 & 1, a3, a4 & 1, a5, a6, a7, *(a5 + 17) ^ 1, v11);
    }
  }
}

void *static VerticalStackOrientationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v5;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v6 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v6;
  v7 = DWORD1(v20) & 0xFFFFFFF3 | 4;
  v24 = v19[0];
  v25 = v6;
  *v26 = *(a2 + 32);
  *&v26[4] = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  *&v26[36] = *(a2 + 68);
  *&v26[24] = v9;
  *&v26[8] = v8;
  v15 = *v26;
  v16 = *&v26[16];
  v17 = *&v26[32];
  v18 = *&v26[48];
  v13 = v19[0];
  v14 = v25;
  outlined init with copy of _ViewInputs(v19, v29);
  v10 = outlined init with copy of _ViewInputs(&v24, v29);
  a3(v10, &v13);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  v11 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v11;
  v30 = *(a2 + 32);
  v31 = v7;
  v32 = *(a2 + 40);
  *v33 = *(a2 + 56);
  *&v33[12] = *(a2 + 68);
  return outlined destroy of _ViewInputs(v29);
}

uint64_t assignWithCopy for StackLayout.Header(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v6) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for StackLayout.Header(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v4) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

uint64_t getEnumTagSinglePayload for StackLayout.Header(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 99))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StackLayout.Header(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a3 == a2)
  {
    return;
  }

  v15 = a9;
  v80 = *MEMORY[0x1E698D3F8];
  v87 = *a4;
  v16 = (v87 + 8 * a3 - 8);
  v17 = a1 - a3;
LABEL_5:
  v74 = a3;
  v18 = *(v87 + 8 * a3);
  v72 = v17;
  v73 = v16;
  while (1)
  {
    v19 = 120 * v18;
    if ((v18 * 120) >> 64 != (120 * v18) >> 63)
    {
      break;
    }

    v20 = *v16;
    v21 = 120 * *v16;
    if ((*v16 * 120) >> 64 != v21 >> 63)
    {
      goto LABEL_137;
    }

    v22 = *(a5 + 120 * v18);
    v23 = *(a5 + v21);
    if (v23 < v22)
    {
      goto LABEL_132;
    }

    if (v22 < v23)
    {
      goto LABEL_4;
    }

    v24 = a7 + v19;
    if (*(a7 + v19 + 8))
    {
      v25 = *(v15 + 17);
      if (*(v15 + 17))
      {
        v26 = a12;
      }

      else
      {
        v26 = 0;
      }

      if (*(v15 + 17))
      {
        v27 = 0;
      }

      else
      {
        v27 = a14;
      }

      v28 = *(v15 + 88);
      if (*(v15 + 96))
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        if (v18 >= *(v28 + 16))
        {
          goto LABEL_141;
        }

        v29 = v28 + 12 * v18;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_139;
        }

        if (v18 >= *(v28 + 16))
        {
          goto LABEL_140;
        }

        v29 = v28 + 8 * v18;
      }

      v75 = v26;
      v77 = v27;
      if (*(v29 + 32) == v80)
      {
        InputValue = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          InputValue = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v38 = *InputValue;
      v39 = one-time initialization token for lockAssertionsAreEnabled;

      if (v39 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_155;
        }
      }

      v83 = v75;
      v84 = v25 & a13;
      v85 = v77;
      v86 = (v25 ^ 1) & a15;
      v30 = (*(*v38 + 128))(&v83, v25);

      *v24 = v30;
      *(v24 + 8) = 0;
      if ((*(v24 + 24) & 1) == 0)
      {
LABEL_52:
        v40 = *(v24 + 16);
        goto LABEL_61;
      }
    }

    else
    {
      v30 = *v24;
      if ((*(v24 + 24) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v31 = *(v15 + 17);
    if (*(v15 + 17))
    {
      v32 = a12;
    }

    else
    {
      v32 = 0x7FF0000000000000;
    }

    if (*(v15 + 17))
    {
      v33 = 0x7FF0000000000000;
    }

    else
    {
      v33 = a14;
    }

    v34 = *(v15 + 88);
    if (*(v15 + 96))
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }

      if (v18 >= *(v34 + 16))
      {
        goto LABEL_147;
      }

      v35 = v34 + 12 * v18;
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_143;
      }

      if (v18 >= *(v34 + 16))
      {
        goto LABEL_146;
      }

      v35 = v34 + 8 * v18;
    }

    v76 = v32;
    v78 = v33;
    if (*(v35 + 32) == v80)
    {
      v37 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v37 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v37 = AGGraphGetInputValue();
    }

    v41 = *v37;
    v42 = one-time initialization token for lockAssertionsAreEnabled;

    if (v42 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_155;
      }
    }

    v83 = v76;
    v84 = v31 & a13;
    v85 = v78;
    v86 = (v31 ^ 1) & a15;
    v40 = (*(*v41 + 128))(&v83, v31);

    *(v24 + 16) = v40;
    *(v24 + 24) = 0;
LABEL_61:
    v43 = a7 + v21;
    if (*(v43 + 8))
    {
      v44 = *(v15 + 17);
      v45 = v15;
      if (*(v15 + 17))
      {
        v46 = a12;
      }

      else
      {
        v46 = 0;
      }

      if (v44)
      {
        v47 = 0;
      }

      else
      {
        v47 = a14;
      }

      v48 = *(v45 + 88);
      if (*(v45 + 96))
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        if (v20 >= *(v48 + 16))
        {
          goto LABEL_149;
        }

        v49 = v48 + 12 * v20;
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        if (v20 >= *(v48 + 16))
        {
          goto LABEL_151;
        }

        v49 = v48 + 8 * v20;
      }

      if (*(v49 + 32) == v80)
      {
        v56 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v56 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v56 = AGGraphGetInputValue();
      }

      v58 = *v56;
      v59 = one-time initialization token for lockAssertionsAreEnabled;

      if (v59 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_155;
        }
      }

      v83 = v46;
      v84 = v44 & a13;
      v85 = v47;
      v86 = (v44 ^ 1) & a15;
      v50 = (*(*v58 + 128))(&v83, v44);

      *v43 = v50;
      *(v43 + 8) = 0;
      v15 = a9;
      if ((*(v43 + 24) & 1) == 0)
      {
LABEL_103:
        v60 = *(v43 + 16);
        goto LABEL_112;
      }
    }

    else
    {
      v50 = *v43;
      if ((*(v43 + 24) & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    v51 = *(v15 + 17);
    if (*(v15 + 17))
    {
      v52 = a12;
    }

    else
    {
      v52 = 0x7FF0000000000000;
    }

    if (*(v15 + 17))
    {
      v53 = 0x7FF0000000000000;
    }

    else
    {
      v53 = a14;
    }

    v54 = *(v15 + 88);
    if (*(v15 + 96))
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_148;
      }

      if (v20 >= *(v54 + 16))
      {
        goto LABEL_152;
      }

      v55 = v54 + 12 * v20;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_150;
      }

      if (v20 >= *(v54 + 16))
      {
        goto LABEL_153;
      }

      v55 = v54 + 8 * v20;
    }

    v79 = v52;
    if (*(v55 + 32) == v80)
    {
      v57 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v57 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v57 = AGGraphGetInputValue();
    }

    v61 = *v57;
    v62 = one-time initialization token for lockAssertionsAreEnabled;

    if (v62 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_155;
      }
    }

    v83 = v79;
    v84 = v51 & a13;
    v85 = v53;
    v86 = (v51 ^ 1) & a15;
    v60 = (*(*v61 + 128))(&v83, v51);

    *(v43 + 16) = v60;
    *(v43 + 24) = 0;
LABEL_112:
    v63 = v40 - v30;
    v64 = v60 - v50;
    if (v40 - v30 == INFINITY)
    {
      v65 = v60 - v50;
      if (v64 == INFINITY)
      {
        if (v30 <= v50)
        {
          goto LABEL_122;
        }

        goto LABEL_132;
      }
    }

    else
    {
      v65 = INFINITY;
      if (v64 != INFINITY)
      {
        v65 = v60 - v50;
        if (v63 == v64)
        {
          v66 = 0.0;
          v67 = 0.0;
LABEL_128:
          if (v67 < v66)
          {
            goto LABEL_4;
          }

          goto LABEL_131;
        }
      }
    }

    if (v63 >= v65)
    {
      if (v64 == INFINITY)
      {
        v64 = INFINITY;
        if (v63 == INFINITY)
        {
LABEL_122:
          v67 = -v50;
          v66 = -v30;
          goto LABEL_128;
        }
      }

      else
      {
        v66 = 0.0;
        v68 = v63 != INFINITY && v64 == v63;
        v67 = 0.0;
        if (v68)
        {
          goto LABEL_128;
        }
      }

      if (v64 < v63)
      {
        goto LABEL_4;
      }

LABEL_131:
      if (v18 >= v20)
      {
        goto LABEL_4;
      }
    }

LABEL_132:
    if (!v87)
    {
      goto LABEL_154;
    }

    v69 = *v16;
    v18 = v16[1];
    *v16 = v18;
    v16[1] = v69;
    --v16;
    if (__CFADD__(v17++, 1))
    {
LABEL_4:
      a3 = v74 + 1;
      v16 = v73 + 1;
      v17 = v72 - 1;
      if (v74 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }
  }

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
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15)
{
  v19 = v15;
  v228 = a7;
  v208 = a1;
  v224 = a15;
  v227 = a14;
  v223 = a13;
  v226 = a12;
  v217 = a11;
  v216 = a10;
  v225 = a9;
  v218 = a3;
  v20 = *(a3 + 8);
  *v220 = a5;
  if (v20 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_373:
    v16 = *v208;
    if (!*v208)
    {
      goto LABEL_450;
    }

    LODWORD(v17) = a6;
    LODWORD(v18) = a8;
    v222 = &v203;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_375;
  }

  v21 = a5;
  v206 = a4;
  LODWORD(v222) = *MEMORY[0x1E698D3F8];
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v212 = a8;
  *v215 = a6;
LABEL_3:
  v213 = v22;
  v24 = v22 + 1;
  if (v22 + 1 >= v20)
  {
    goto LABEL_173;
  }

  v207 = v23;
  v23 = *v218;
  v25 = *(*v218 + 8 * v24);
  v26 = 120 * v25;
  if ((v25 * 120) >> 64 != (120 * v25) >> 63)
  {
    goto LABEL_422;
  }

  v17 = v24;
  v27 = v213;
  v16 = *(v23 + 8 * v213);
  if ((v16 * 120) >> 64 != (120 * v16) >> 63)
  {
    goto LABEL_423;
  }

  v28 = *(v21 + 120 * v25);
  v29 = *(v21 + 120 * v16);
  v221 = v20;
  if (v29 >= v28)
  {
    if (v28 < v29)
    {
      v30 = 0;
      goto LABEL_24;
    }

    v31 = v228 + v26;
    if (*(v228 + v26 + 8))
    {
      v18 = a8;
      LOBYTE(v231) = v223 & 1;
      LOBYTE(v229) = v224 & 1;
      specialized majorAxisLength #1 (ofChild:forMajorProposal:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(v25, v225, v226, v223 & 1, v227, v224 & 1, 0.0);
      v33 = v32;
      *v31 = v32;
      *(v31 + 8) = 0;
      if ((*(v31 + 24) & 1) == 0)
      {
LABEL_12:
        v34 = *(v31 + 16);
        goto LABEL_15;
      }
    }

    else
    {
      v18 = a8;
      v33 = *v31;
      if ((*(v31 + 24) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v231) = v223 & 1;
    LOBYTE(v229) = v224 & 1;
    specialized majorAxisLength #1 (ofChild:forMajorProposal:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(v25, v225, v226, v223 & 1, v227, v224 & 1, INFINITY);
    v34 = v35;
    *(v31 + 16) = v35;
    *(v31 + 24) = 0;
LABEL_15:
    v36 = (v228 + 120 * v16);
    v21 = *v220;
    if (v36[1])
    {
      LOBYTE(v231) = v223 & 1;
      LOBYTE(v229) = v224 & 1;
      specialized majorAxisLength #1 (ofChild:forMajorProposal:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(v16, v225, v226, v223 & 1, v227, v224 & 1, 0.0);
      v38 = v37;
      *v36 = v37;
      *(v36 + 8) = 0;
      if ((v36[3] & 1) == 0)
      {
LABEL_17:
        v39 = v36[2];
LABEL_20:
        v231 = v33;
        v232 = v34;
        v229 = v38;
        v230 = v39;
        if (specialized static _LayoutTraits.FlexibilityEstimate.< infix(_:_:)(&v231, &v229))
        {
          v30 = 1;
        }

        else
        {
          v231 = v33;
          v232 = v34;
          v229 = v38;
          v230 = v39;
          v30 = (v25 < v16) & ~specialized static _LayoutTraits.FlexibilityEstimate.< infix(_:_:)(&v229, &v231);
        }

        v27 = v213;
        v20 = v221;
        a8 = v18;
        goto LABEL_24;
      }
    }

    else
    {
      v38 = *v36;
      if ((v36[3] & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    LOBYTE(v231) = v223 & 1;
    LOBYTE(v229) = v224 & 1;
    specialized majorAxisLength #1 (ofChild:forMajorProposal:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(v16, v225, v226, v223 & 1, v227, v224 & 1, INFINITY);
    v39 = v40;
    v36[2] = v40;
    *(v36 + 24) = 0;
    goto LABEL_20;
  }

  v30 = 1;
LABEL_24:
  v41 = v27 + 2;
  if (v27 + 2 >= v20)
  {
    v42 = v27 + 2;
    v194 = v17;
LABEL_161:
    v24 = v42;
    v23 = v207;
    if (v30)
    {
      goto LABEL_162;
    }

LABEL_173:
    v94 = v218[1];
    v214 = v24;
    if (v24 >= v94)
    {
      goto LABEL_315;
    }

    if (__OFSUB__(v24, v213))
    {
      goto LABEL_424;
    }

    if (v24 - v213 >= v206)
    {
      goto LABEL_315;
    }

    if (__OFADD__(v213, v206))
    {
      goto LABEL_425;
    }

    if (v213 + v206 < v94)
    {
      v94 = v213 + v206;
    }

    if (v94 < v213)
    {
      goto LABEL_426;
    }

    if (v214 == v94)
    {
      goto LABEL_315;
    }

    v209 = v94;
    v207 = v23;
    v205 = v19;
    v221 = *v218;
    v19 = v221 + 8 * v214 - 8;
    v18 = v213 - v214;
    v95 = v214;
LABEL_183:
    v214 = v95;
    v23 = *(v221 + 8 * v95);
    v210 = v18;
    v211 = v19;
    while (1)
    {
      v96 = 120 * v23;
      if ((v23 * 120) >> 64 != (120 * v23) >> 63)
      {
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
        goto LABEL_407;
      }

      v17 = *v19;
      v97 = 120 * *v19;
      if ((*v19 * 120) >> 64 != v97 >> 63)
      {
        goto LABEL_386;
      }

      v98 = *(v21 + 120 * v23);
      v99 = *(v21 + v97);
      if (v99 < v98)
      {
        goto LABEL_310;
      }

      if (v98 < v99)
      {
        goto LABEL_182;
      }

      v100 = v228 + v96;
      if (*(v228 + v96 + 8))
      {
        v101 = *(v225 + 17);
        if (*(v225 + 17))
        {
          v102 = v226;
        }

        else
        {
          v102 = 0;
        }

        if (*(v225 + 17))
        {
          v103 = 0;
        }

        else
        {
          v103 = v227;
        }

        v104 = *(v225 + 88);
        if (*(v225 + 96))
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_390;
          }

          if (v23 >= *(v104 + 16))
          {
            goto LABEL_393;
          }

          v105 = v104 + 12 * v23;
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_391;
          }

          if (v23 >= *(v104 + 16))
          {
            goto LABEL_392;
          }

          v105 = v104 + 8 * v23;
        }

        v112 = *(v105 + 32);
        v219 = v102;
        if (v112 == v222)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v16 = *InputValue;
        v116 = one-time initialization token for lockAssertionsAreEnabled;

        if (v116 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_451;
          }
        }

        v231 = v219;
        LOBYTE(v232) = v101 & v223;
        v233 = v103;
        v234 = (v101 ^ 1) & v224;
        v106 = (*(*v16 + 128))(&v231, v101);

        *v100 = v106;
        *(v100 + 8) = 0;
        if ((*(v100 + 24) & 1) == 0)
        {
LABEL_230:
          v117 = *(v100 + 16);
          goto LABEL_239;
        }
      }

      else
      {
        v106 = *v100;
        if ((*(v100 + 24) & 1) == 0)
        {
          goto LABEL_230;
        }
      }

      v107 = *(v225 + 17);
      if (*(v225 + 17))
      {
        v108 = v226;
      }

      else
      {
        v108 = 0x7FF0000000000000;
      }

      if (*(v225 + 17))
      {
        v109 = 0x7FF0000000000000;
      }

      else
      {
        v109 = v227;
      }

      v110 = *(v225 + 88);
      if (*(v225 + 96))
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_395;
        }

        if (v23 >= *(v110 + 16))
        {
          goto LABEL_399;
        }

        v111 = v110 + 12 * v23;
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_394;
        }

        if (v23 >= *(v110 + 16))
        {
          goto LABEL_398;
        }

        v111 = v110 + 8 * v23;
      }

      v114 = *(v111 + 32);
      v219 = v108;
      if (v114 == v222)
      {
        v115 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v115 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v115 = AGGraphGetInputValue();
      }

      v16 = *v115;
      v118 = one-time initialization token for lockAssertionsAreEnabled;

      if (v118 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_451;
        }
      }

      v231 = v219;
      LOBYTE(v232) = v107 & v223;
      v233 = v109;
      v234 = (v107 ^ 1) & v224;
      v117 = (*(*v16 + 128))(&v231, v107);

      *(v100 + 16) = v117;
      *(v100 + 24) = 0;
LABEL_239:
      v119 = v228 + v97;
      if (*(v228 + v97 + 8))
      {
        v120 = *(v225 + 17);
        if (*(v225 + 17))
        {
          v121 = v226;
        }

        else
        {
          v121 = 0;
        }

        if (*(v225 + 17))
        {
          v122 = 0;
        }

        else
        {
          v122 = v227;
        }

        v123 = *(v225 + 88);
        if (*(v225 + 96))
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_397;
          }

          if (v17 >= *(v123 + 16))
          {
            goto LABEL_400;
          }

          v124 = v123 + 12 * v17;
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_396;
          }

          if (v17 >= *(v123 + 16))
          {
            goto LABEL_403;
          }

          v124 = v123 + 8 * v17;
        }

        if (*(v124 + 32) == v222)
        {
          v131 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v131 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v131 = AGGraphGetInputValue();
        }

        v16 = *v131;
        v133 = one-time initialization token for lockAssertionsAreEnabled;

        if (v133 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_451;
          }
        }

        v231 = v121;
        LOBYTE(v232) = v120 & v223;
        v233 = v122;
        v234 = (v120 ^ 1) & v224;
        v125 = (*(*v16 + 128))(&v231, v120);

        *v119 = v125;
        *(v119 + 8) = 0;
        if ((*(v119 + 24) & 1) == 0)
        {
LABEL_281:
          v134 = *(v119 + 16);
          goto LABEL_290;
        }
      }

      else
      {
        v125 = *v119;
        if ((*(v119 + 24) & 1) == 0)
        {
          goto LABEL_281;
        }
      }

      v126 = *(v225 + 17);
      if (*(v225 + 17))
      {
        v127 = v226;
      }

      else
      {
        v127 = 0x7FF0000000000000;
      }

      if (*(v225 + 17))
      {
        v128 = 0x7FF0000000000000;
      }

      else
      {
        v128 = v227;
      }

      v129 = *(v225 + 88);
      if (*(v225 + 96))
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_401;
        }

        if (v17 >= *(v129 + 16))
        {
          goto LABEL_404;
        }

        v130 = v129 + 12 * v17;
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_402;
        }

        if (v17 >= *(v129 + 16))
        {
          goto LABEL_405;
        }

        v130 = v129 + 8 * v17;
      }

      if (*(v130 + 32) == v222)
      {
        v132 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v132 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v132 = AGGraphGetInputValue();
      }

      v16 = *v132;
      v135 = one-time initialization token for lockAssertionsAreEnabled;

      if (v135 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_451;
        }
      }

      v231 = v127;
      LOBYTE(v232) = v126 & v223;
      v233 = v128;
      v234 = (v126 ^ 1) & v224;
      v134 = (*(*v16 + 128))(&v231, v126);

      *(v119 + 16) = v134;
      *(v119 + 24) = 0;
LABEL_290:
      v136 = v117 - v106;
      v137 = v134 - v125;
      v21 = *v220;
      if (v117 - v106 == INFINITY)
      {
        v138 = v134 - v125;
        if (v137 == INFINITY)
        {
          if (v106 <= v125)
          {
            goto LABEL_300;
          }

          goto LABEL_310;
        }
      }

      else
      {
        v138 = INFINITY;
        if (v137 != INFINITY)
        {
          v138 = v134 - v125;
          if (v136 == v137)
          {
            v139 = 0.0;
            v140 = 0.0;
LABEL_306:
            if (v140 < v139)
            {
              goto LABEL_182;
            }

            goto LABEL_309;
          }
        }
      }

      if (v136 >= v138)
      {
        if (v137 == INFINITY)
        {
          v137 = INFINITY;
          if (v136 == INFINITY)
          {
LABEL_300:
            v140 = -v125;
            v139 = -v106;
            goto LABEL_306;
          }
        }

        else
        {
          v139 = 0.0;
          v141 = v136 != INFINITY && v137 == v136;
          v140 = 0.0;
          if (v141)
          {
            goto LABEL_306;
          }
        }

        if (v137 < v136)
        {
          goto LABEL_182;
        }

LABEL_309:
        if (v23 >= v17)
        {
          goto LABEL_182;
        }
      }

LABEL_310:
      if (!v221)
      {
        goto LABEL_445;
      }

      v142 = *v19;
      v23 = *(v19 + 8);
      *v19 = v23;
      *(v19 + 8) = v142;
      v19 -= 8;
      if (__CFADD__(v18++, 1))
      {
LABEL_182:
        v95 = v214 + 1;
        v19 = v211 + 8;
        v18 = v210 - 1;
        if (v214 + 1 != v209)
        {
          goto LABEL_183;
        }

        v214 = v209;
        v19 = v205;
        a8 = v212;
        v23 = v207;
LABEL_315:
        if (v214 < v213)
        {
          goto LABEL_421;
        }

        v18 = a8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
        }

        v144 = v23;
        v145 = *(v23 + 16);
        v146 = v144;
        v147 = *(v144 + 24);
        v148 = v145 + 1;
        v149 = v213;
        if (v145 >= v147 >> 1)
        {
          v195 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v145 + 1, 1, v146);
          a8 = v18;
          v149 = v213;
          v146 = v195;
        }

        else
        {
          a8 = v18;
        }

        *(v146 + 2) = v148;
        v150 = &v146[16 * v145];
        *(v150 + 4) = v149;
        *(v150 + 5) = v214;
        v151 = *v208;
        if (!*v208)
        {
          goto LABEL_449;
        }

        if (v145)
        {
          v23 = v146;
          while (1)
          {
            v16 = v148 - 1;
            if (v148 >= 4)
            {
              break;
            }

            if (v148 == 3)
            {
              v152 = *(v23 + 32);
              v153 = *(v23 + 40);
              v162 = __OFSUB__(v153, v152);
              v154 = v153 - v152;
              v155 = v162;
LABEL_336:
              if (v155)
              {
                goto LABEL_410;
              }

              v168 = (v23 + 16 * v148);
              v170 = *v168;
              v169 = v168[1];
              v171 = __OFSUB__(v169, v170);
              v172 = v169 - v170;
              v173 = v171;
              if (v171)
              {
                goto LABEL_413;
              }

              v174 = (v23 + 32 + 16 * v16);
              v176 = *v174;
              v175 = v174[1];
              v162 = __OFSUB__(v175, v176);
              v177 = v175 - v176;
              if (v162)
              {
                goto LABEL_416;
              }

              if (__OFADD__(v172, v177))
              {
                goto LABEL_417;
              }

              if (v172 + v177 >= v154)
              {
                if (v154 < v177)
                {
                  v16 = v148 - 2;
                }

                goto LABEL_357;
              }

              goto LABEL_350;
            }

            v178 = (v23 + 16 * v148);
            v180 = *v178;
            v179 = v178[1];
            v162 = __OFSUB__(v179, v180);
            v172 = v179 - v180;
            v173 = v162;
LABEL_350:
            if (v173)
            {
              goto LABEL_412;
            }

            v181 = v23 + 16 * v16;
            v183 = *(v181 + 32);
            v182 = *(v181 + 40);
            v162 = __OFSUB__(v182, v183);
            v184 = v182 - v183;
            if (v162)
            {
              goto LABEL_415;
            }

            if (v184 < v172)
            {
              goto LABEL_367;
            }

LABEL_357:
            v17 = v23;
            v23 = v16 - 1;
            if (v16 - 1 >= v148)
            {
              goto LABEL_387;
            }

            v189 = *v218;
            if (!*v218)
            {
              goto LABEL_446;
            }

            v190 = *(v17 + 32 + 16 * v23);
            v191 = *(v17 + 32 + 16 * v16 + 8);
            v192 = (v189 + 8 * *(v17 + 32 + 16 * v16));
            LOBYTE(v231) = v223 & 1;
            LOBYTE(v229) = v224 & 1;
            specialized _merge<A>(low:mid:high:buffer:by:)((v189 + 8 * v190), v192, (v189 + 8 * v191), v151, v21, v215[0], v228, a8, v225, v216, v217, v226, v223 & 1, v227, v224 & 1);
            if (v19)
            {

              return;
            }

            if (v191 < v190)
            {
              goto LABEL_388;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
            }

            if (v23 >= *(v17 + 16))
            {
              goto LABEL_389;
            }

            v193 = v17 + 16 * v23;
            *(v193 + 32) = v190;
            *(v193 + 40) = v191;
            v235 = v17;
            specialized Array.remove(at:)(v16);
            v23 = v235;
            v148 = *(v235 + 16);
            a8 = v18;
            if (v148 <= 1)
            {
              goto LABEL_367;
            }
          }

          v156 = v23 + 32 + 16 * v148;
          v157 = *(v156 - 64);
          v158 = *(v156 - 56);
          v162 = __OFSUB__(v158, v157);
          v159 = v158 - v157;
          if (v162)
          {
            goto LABEL_408;
          }

          v161 = *(v156 - 48);
          v160 = *(v156 - 40);
          v162 = __OFSUB__(v160, v161);
          v154 = v160 - v161;
          v155 = v162;
          if (v162)
          {
            goto LABEL_409;
          }

          v163 = (v23 + 16 * v148);
          v165 = *v163;
          v164 = v163[1];
          v162 = __OFSUB__(v164, v165);
          v166 = v164 - v165;
          if (v162)
          {
            goto LABEL_411;
          }

          v162 = __OFADD__(v154, v166);
          v167 = v154 + v166;
          if (v162)
          {
            goto LABEL_414;
          }

          if (v167 >= v159)
          {
            v185 = (v23 + 32 + 16 * v16);
            v187 = *v185;
            v186 = v185[1];
            v162 = __OFSUB__(v186, v187);
            v188 = v186 - v187;
            if (v162)
            {
              goto LABEL_418;
            }

            if (v154 < v188)
            {
              v16 = v148 - 2;
            }

            goto LABEL_357;
          }

          goto LABEL_336;
        }

        v23 = v146;
LABEL_367:
        v20 = v218[1];
        v22 = v214;
        LODWORD(a6) = v215[0];
        if (v214 >= v20)
        {
          goto LABEL_373;
        }

        goto LABEL_3;
      }
    }
  }

  v23 += 8 * v27 + 16;
  LODWORD(v219) = v30;
  while (1)
  {
    v42 = v41;
    v17 = *v23;
    v43 = 120 * *v23;
    if ((*v23 * 120) >> 64 != v43 >> 63)
    {
      goto LABEL_406;
    }

    v44 = v19;
    v18 = *(v23 - 8);
    v19 = 120 * v18;
    if ((v18 * 120) >> 64 != (120 * v18) >> 63)
    {
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
LABEL_409:
      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
LABEL_436:
      __break(1u);
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
LABEL_375:
      v235 = v23;
      v196 = *(v23 + 16);
      if (v196 >= 2)
      {
        v197 = v18;
        do
        {
          v198 = *v218;
          if (!*v218)
          {
            goto LABEL_447;
          }

          v199 = *(v23 + 16 * v196);
          v200 = *(v23 + 16 * (v196 - 1) + 40);
          v201 = (v198 + 8 * *(v23 + 16 * (v196 - 1) + 32));
          LOBYTE(v231) = v223 & 1;
          LOBYTE(v229) = v224 & 1;
          specialized _merge<A>(low:mid:high:buffer:by:)((v198 + 8 * v199), v201, (v198 + 8 * v200), v16, *v220, v17, v228, v197, v225, v216, v217, v226, v223 & 1, v227, v224 & 1);
          if (v19)
          {
            break;
          }

          if (v200 < v199)
          {
            goto LABEL_419;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          }

          if (v196 - 2 >= *(v23 + 16))
          {
            goto LABEL_420;
          }

          v202 = (v23 + 16 * v196);
          *v202 = v199;
          v202[1] = v200;
          v235 = v23;
          specialized Array.remove(at:)(v196 - 1);
          v23 = v235;
          v196 = *(v235 + 16);
          v197 = v18;
        }

        while (v196 > 1);
      }

      return;
    }

    v45 = *(v21 + v43);
    v46 = *(v21 + 120 * v18);
    if (v46 < v45)
    {
      v19 = v44;
      if ((v30 & 1) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_27;
    }

    if (v45 < v46)
    {
      v19 = v44;
      if (v30)
      {
        break;
      }

      goto LABEL_27;
    }

    v47 = v228 + v43;
    if (*(v228 + v43 + 8))
    {
      v48 = *(v225 + 17);
      if (*(v225 + 17))
      {
        v49 = v226;
      }

      else
      {
        v49 = 0;
      }

      if (*(v225 + 17))
      {
        v50 = 0;
      }

      else
      {
        v50 = v227;
      }

      v51 = *(v225 + 88);
      if (*(v225 + 96))
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_427;
        }

        if (v17 >= *(v51 + 16))
        {
          goto LABEL_430;
        }

        v52 = v51 + 12 * v17;
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_428;
        }

        if (v17 >= *(v51 + 16))
        {
          goto LABEL_432;
        }

        v52 = v51 + 8 * v17;
      }

      v211 = v49;
      v60 = *(v52 + 32);
      v214 = v50;
      if (v60 == v222)
      {
        v61 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v61 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v61 = AGGraphGetInputValue();
      }

      v16 = *v61;
      v64 = one-time initialization token for lockAssertionsAreEnabled;

      if (v64 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_451;
        }
      }

      v231 = v211;
      LOBYTE(v232) = v48 & v223;
      v233 = v214;
      v234 = (v48 ^ 1) & v224;
      v53 = (*(*v16 + 128))(&v231, v48);

      *v47 = v53;
      *(v47 + 8) = 0;
      v20 = v221;
      v30 = v219;
      if ((*(v47 + 24) & 1) == 0)
      {
LABEL_76:
        v65 = *(v47 + 16);
        goto LABEL_85;
      }
    }

    else
    {
      v53 = *v47;
      if ((*(v47 + 24) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v54 = *(v225 + 17);
    v55 = *(v225 + 17) ? v226 : 0x7FF0000000000000;
    v56 = *(v225 + 17) ? 0x7FF0000000000000 : v227;
    v57 = *(v225 + 88);
    v58 = *(v225 + 96);
    v214 = v55;
    if (v58)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_431;
      }

      if (v17 >= *(v57 + 16))
      {
        goto LABEL_434;
      }

      v59 = v57 + 12 * v17;
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_429;
      }

      if (v17 >= *(v57 + 16))
      {
        goto LABEL_433;
      }

      v59 = v57 + 8 * v17;
    }

    v62 = *(v59 + 32);
    v211 = v56;
    if (v62 == v222)
    {
      v63 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v63 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v63 = AGGraphGetInputValue();
    }

    v16 = *v63;
    v66 = one-time initialization token for lockAssertionsAreEnabled;

    if (v66 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_451;
      }
    }

    v231 = v214;
    LOBYTE(v232) = v54 & v223;
    v233 = v211;
    v234 = (v54 ^ 1) & v224;
    v65 = (*(*v16 + 128))(&v231, v54);

    *(v47 + 16) = v65;
    *(v47 + 24) = 0;
    v20 = v221;
    v30 = v219;
LABEL_85:
    v19 += v228;
    if (*(v19 + 8))
    {
      v67 = *(v225 + 17);
      if (*(v225 + 17))
      {
        v68 = v226;
      }

      else
      {
        v68 = 0;
      }

      if (*(v225 + 17))
      {
        v69 = 0;
      }

      else
      {
        v69 = v227;
      }

      v70 = *(v225 + 88);
      if (*(v225 + 96))
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_435;
        }

        if (v18 >= *(v70 + 16))
        {
          goto LABEL_437;
        }

        v71 = v70 + 12 * v18;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_436;
        }

        if (v18 >= *(v70 + 16))
        {
          goto LABEL_440;
        }

        v71 = v70 + 8 * v18;
      }

      v78 = *(v71 + 32);
      v214 = v68;
      if (v78 == v222)
      {
        v79 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v79 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v79 = AGGraphGetInputValue();
      }

      v16 = *v79;
      v82 = one-time initialization token for lockAssertionsAreEnabled;

      if (v82 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_451;
        }
      }

      v231 = v214;
      LOBYTE(v232) = v67 & v223;
      v233 = v69;
      v234 = (v67 ^ 1) & v224;
      v72 = (*(*v16 + 128))(&v231, v67);

      *v19 = v72;
      *(v19 + 8) = 0;
      v21 = *v220;
      v20 = v221;
      v30 = v219;
      if ((*(v19 + 24) & 1) == 0)
      {
LABEL_127:
        v83 = *(v19 + 16);
        goto LABEL_136;
      }
    }

    else
    {
      v72 = *v19;
      v21 = *v220;
      if ((*(v19 + 24) & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    v73 = *(v225 + 17);
    v74 = *(v225 + 17) ? v226 : 0x7FF0000000000000;
    v75 = *(v225 + 17) ? 0x7FF0000000000000 : v227;
    v76 = *(v225 + 88);
    if (*(v225 + 96))
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_438;
      }

      if (v18 >= *(v76 + 16))
      {
        goto LABEL_442;
      }

      v77 = v76 + 12 * v18;
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_439;
      }

      if (v18 >= *(v76 + 16))
      {
        goto LABEL_441;
      }

      v77 = v76 + 8 * v18;
    }

    v80 = *(v77 + 32);
    v214 = v74;
    if (v80 == v222)
    {
      v81 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v81 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v81 = AGGraphGetInputValue();
    }

    v16 = *v81;
    v84 = one-time initialization token for lockAssertionsAreEnabled;

    if (v84 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_451;
      }
    }

    v231 = v214;
    LOBYTE(v232) = v73 & v223;
    v233 = v75;
    v234 = (v73 ^ 1) & v224;
    v83 = (*(*v16 + 128))(&v231, v73);

    *(v19 + 16) = v83;
    *(v19 + 24) = 0;
    v21 = *v220;
    v20 = v221;
    v30 = v219;
LABEL_136:
    v85 = v65 - v53;
    v86 = v83 - v72;
    v19 = v44;
    if (v65 - v53 == INFINITY)
    {
      v87 = v83 - v72;
      if (v86 == INFINITY)
      {
        if (v53 > v72)
        {
          goto LABEL_144;
        }

LABEL_148:
        if (-v72 >= -v53)
        {
          goto LABEL_157;
        }

        goto LABEL_155;
      }
    }

    else
    {
      v87 = INFINITY;
      if (v86 != INFINITY)
      {
        v87 = v83 - v72;
        if (v85 == v86)
        {
          goto LABEL_157;
        }
      }
    }

    if (v85 < v87)
    {
LABEL_144:
      if ((v30 & 1) == 0)
      {
LABEL_172:
        v24 = v42;
        a8 = v212;
        v23 = v207;
        goto LABEL_173;
      }

      goto LABEL_27;
    }

    if (v86 == INFINITY)
    {
      v86 = INFINITY;
      if (v85 == INFINITY)
      {
        goto LABEL_148;
      }
    }

    else if (v85 != INFINITY && v86 == v85)
    {
LABEL_157:
      if (((v30 ^ (v17 >= v18)) & 1) == 0)
      {
        v194 = v42 - 1;
        a8 = v212;
        goto LABEL_161;
      }

      goto LABEL_27;
    }

    if (v86 >= v85)
    {
      goto LABEL_157;
    }

LABEL_155:
    if (v30)
    {
      break;
    }

LABEL_27:
    v23 += 8;
    v41 = v42 + 1;
    a8 = v212;
    if (v20 == v42 + 1)
    {
      v194 = v42;
      v42 = v20;
      goto LABEL_161;
    }
  }

  v194 = v42 - 1;
  a8 = v212;
  v23 = v207;
LABEL_162:
  v89 = v213;
  if (v42 >= v213)
  {
    if (v213 <= v194)
    {
      v90 = v42 - 1;
      do
      {
        if (v89 != v90)
        {
          v93 = *v218;
          if (!*v218)
          {
            goto LABEL_448;
          }

          v91 = *(v93 + 8 * v89);
          *(v93 + 8 * v89) = *(v93 + 8 * v90);
          *(v93 + 8 * v90) = v91;
        }
      }

      while (++v89 < v90--);
    }

    v24 = v42;
    goto LABEL_173;
  }

  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
LABEL_449:
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  LODWORD(v204) = 0;
  v203 = 68;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v155 = a5;
  v15 = a4;
  v16 = a3;
  v17 = __dst;
  v18 = __src;
  v19 = __dst - __src;
  v20 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v20 = __dst - __src;
  }

  v21 = v20 >> 3;
  v22 = a3 - __dst;
  v23 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v23 = a3 - __dst;
  }

  v24 = v23 >> 3;
  if (v21 < v23 >> 3)
  {
    if (a4 != __src || &__src[8 * v21] <= a4)
    {
      memmove(a4, __src, 8 * v21);
    }

    v25 = &v15[v21];
    if (v19 >= 8 && v17 < v16)
    {
      v144 = *MEMORY[0x1E698D3F8];
      v149 = &v15[v21];
      while (1)
      {
        v26 = *v17;
        v27 = 120 * *v17;
        if ((*v17 * 120) >> 64 != v27 >> 63)
        {
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
          goto LABEL_297;
        }

        v28 = *v15;
        v29 = 120 * *v15;
        if ((*v15 * 120) >> 64 != v29 >> 63)
        {
          goto LABEL_295;
        }

        v30 = *(v155 + v27);
        v31 = *(v155 + v29);
        if (v31 < v30)
        {
LABEL_15:
          v32 = v17;
          v76 = v18 == v17++;
          if (v76)
          {
            goto LABEL_17;
          }

LABEL_16:
          *v18 = *v32;
          goto LABEL_17;
        }

        if (v30 >= v31)
        {
          break;
        }

LABEL_21:
        v32 = v15;
        v76 = v18 == v15++;
        if (!v76)
        {
          goto LABEL_16;
        }

LABEL_17:
        v18 += 8;
        if (v15 >= v25 || v17 >= v16)
        {
          goto LABEL_288;
        }
      }

      v33 = a7 + v27;
      v146 = v15;
      v140 = a7 + v27;
      if (*(a7 + v27 + 8))
      {
        v34 = *(a9 + 17);
        if (*(a9 + 17))
        {
          v35 = a12;
        }

        else
        {
          v35 = 0;
        }

        if (*(a9 + 17))
        {
          v36 = 0;
        }

        else
        {
          v36 = a14;
        }

        v37 = *(a9 + 88);
        if (*(a9 + 96))
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_314;
          }

          if (v26 >= *(v37 + 16))
          {
            goto LABEL_317;
          }

          v38 = v37 + 12 * v26;
        }

        else
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_315;
          }

          if (v26 >= *(v37 + 16))
          {
            goto LABEL_316;
          }

          v38 = v37 + 8 * v26;
        }

        v134 = v35;
        if (*(v38 + 32) == v144)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v47 = *InputValue;
        v48 = one-time initialization token for lockAssertionsAreEnabled;

        if (v48 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_330;
          }
        }

        v151 = v134;
        v152 = v34 & a13;
        v153 = v36;
        v154 = (v34 ^ 1) & a15;
        v39 = (*(*v47 + 128))(&v151, v34);

        v33 = v140;
        *v140 = v39;
        *(v140 + 8) = 0;
        v15 = v146;
        v25 = v149;
        if ((*(v140 + 24) & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v39 = *v33;
        if ((*(v33 + 24) & 1) == 0)
        {
LABEL_66:
          v49 = *(v33 + 16);
          goto LABEL_75;
        }
      }

      v40 = *(a9 + 17);
      if (*(a9 + 17))
      {
        v41 = a12;
      }

      else
      {
        v41 = 0x7FF0000000000000;
      }

      if (*(a9 + 17))
      {
        v42 = 0x7FF0000000000000;
      }

      else
      {
        v42 = a14;
      }

      v43 = *(a9 + 88);
      if (*(a9 + 96))
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_318;
        }

        if (v26 >= *(v43 + 16))
        {
          goto LABEL_322;
        }

        v44 = v43 + 12 * v26;
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_319;
        }

        if (v26 >= *(v43 + 16))
        {
          goto LABEL_323;
        }

        v44 = v43 + 8 * v26;
      }

      v135 = v41;
      if (*(v44 + 32) == v144)
      {
        v46 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v46 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v46 = AGGraphGetInputValue();
      }

      v50 = *v46;
      v51 = one-time initialization token for lockAssertionsAreEnabled;

      if (v51 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_330;
        }
      }

      v151 = v135;
      v152 = v40 & a13;
      v153 = v42;
      v154 = (v40 ^ 1) & a15;
      v49 = (*(*v50 + 128))(&v151, v40);

      *(v140 + 16) = v49;
      *(v140 + 24) = 0;
      v15 = v146;
      v25 = v149;
LABEL_75:
      v52 = a7 + v29;
      if (*(v52 + 8))
      {
        v53 = *(a9 + 17);
        if (*(a9 + 17))
        {
          v54 = a12;
        }

        else
        {
          v54 = 0;
        }

        if (*(a9 + 17))
        {
          v55 = 0;
        }

        else
        {
          v55 = a14;
        }

        v56 = *(a9 + 88);
        if (*(a9 + 96))
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_320;
          }

          if (v28 >= *(v56 + 16))
          {
            goto LABEL_324;
          }

          v57 = v56 + 12 * v28;
        }

        else
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_321;
          }

          if (v28 >= *(v56 + 16))
          {
            goto LABEL_327;
          }

          v57 = v56 + 8 * v28;
        }

        v141 = v54;
        if (*(v57 + 32) == v144)
        {
          v64 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v64 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v64 = AGGraphGetInputValue();
        }

        v66 = *v64;
        v67 = one-time initialization token for lockAssertionsAreEnabled;

        if (v67 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_330;
          }
        }

        v151 = v141;
        v152 = v53 & a13;
        v153 = v55;
        v154 = (v53 ^ 1) & a15;
        v58 = (*(*v66 + 128))(&v151, v53);

        *v52 = v58;
        *(v52 + 8) = 0;
        v15 = v146;
        v25 = v149;
        if ((*(v52 + 24) & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v58 = *v52;
        if ((*(v52 + 24) & 1) == 0)
        {
LABEL_117:
          v68 = *(v52 + 16);
          goto LABEL_126;
        }
      }

      v59 = *(a9 + 17);
      if (*(a9 + 17))
      {
        v60 = a12;
      }

      else
      {
        v60 = 0x7FF0000000000000;
      }

      if (*(a9 + 17))
      {
        v61 = 0x7FF0000000000000;
      }

      else
      {
        v61 = a14;
      }

      v62 = *(a9 + 88);
      if (*(a9 + 96))
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_325;
        }

        if (v28 >= *(v62 + 16))
        {
          goto LABEL_329;
        }

        v63 = v62 + 12 * v28;
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_326;
        }

        if (v28 >= *(v62 + 16))
        {
          goto LABEL_328;
        }

        v63 = v62 + 8 * v28;
      }

      v142 = v60;
      if (*(v63 + 32) == v144)
      {
        v65 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v65 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v65 = AGGraphGetInputValue();
      }

      v69 = *v65;
      v70 = one-time initialization token for lockAssertionsAreEnabled;

      if (v70 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_330;
        }
      }

      v151 = v142;
      v152 = v59 & a13;
      v153 = v61;
      v154 = (v59 ^ 1) & a15;
      v68 = (*(*v69 + 128))(&v151, v59);

      *(v52 + 16) = v68;
      *(v52 + 24) = 0;
      v15 = v146;
      v25 = v149;
LABEL_126:
      v71 = v49 - v39;
      v72 = v68 - v58;
      if (v49 - v39 == INFINITY)
      {
        v73 = v68 - v58;
        if (v72 == INFINITY)
        {
          if (v39 > v58)
          {
            goto LABEL_15;
          }

          goto LABEL_136;
        }
      }

      else
      {
        v73 = INFINITY;
        if (v72 != INFINITY)
        {
          v73 = v68 - v58;
          if (v71 == v72)
          {
            v74 = 0.0;
            v75 = 0.0;
            goto LABEL_142;
          }
        }
      }

      if (v71 < v73)
      {
        goto LABEL_15;
      }

      if (v72 == INFINITY)
      {
        v72 = INFINITY;
        if (v71 == INFINITY)
        {
LABEL_136:
          v75 = -v58;
          v74 = -v39;
          goto LABEL_142;
        }
      }

      else
      {
        v74 = 0.0;
        v76 = v71 != INFINITY && v72 == v71;
        v75 = 0.0;
        if (v76)
        {
LABEL_142:
          if (v75 < v74)
          {
            goto LABEL_21;
          }

          goto LABEL_145;
        }
      }

      if (v72 < v71)
      {
        goto LABEL_21;
      }

LABEL_145:
      if (v26 < v28)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

LABEL_288:
    v17 = v18;
LABEL_290:
    if (v17 != v15 || v17 >= (v15 + ((v25 - v15 + (v25 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v17, v15, 8 * (v25 - v15));
    }

    return 1;
  }

  if (a4 != __dst || &__dst[8 * v24] <= a4)
  {
    memmove(a4, __dst, 8 * v24);
  }

  v25 = &v15[v24];
  if (v22 < 8 || v17 <= v18)
  {
    goto LABEL_290;
  }

  v143 = *MEMORY[0x1E698D3F8];
  v147 = v15;
LABEL_153:
  v131 = v17;
  v77 = v17 - 1;
  v16 -= 8;
  v78 = v25;
  v145 = v17 - 1;
  while (1)
  {
    v80 = *--v78;
    v79 = v80;
    v81 = 120 * v80;
    if ((v80 * 120) >> 64 != (120 * v80) >> 63)
    {
      goto LABEL_296;
    }

    v82 = *v77;
    v83 = 120 * *v77;
    if ((*v77 * 120) >> 64 != v83 >> 63)
    {
      break;
    }

    v84 = *(v155 + v81);
    v85 = *(v155 + v83);
    if (v85 < v84)
    {
      goto LABEL_283;
    }

    if (v84 < v85)
    {
      goto LABEL_281;
    }

    v86 = a7 + v81;
    v150 = v25;
    if (*(a7 + v81 + 8))
    {
      v87 = *(a9 + 17);
      if (*(a9 + 17))
      {
        v88 = a12;
      }

      else
      {
        v88 = 0;
      }

      if (*(a9 + 17))
      {
        v89 = 0;
      }

      else
      {
        v89 = a14;
      }

      v90 = *(a9 + 88);
      v136 = v88;
      if (*(a9 + 96))
      {
        if ((v79 & 0x8000000000000000) != 0)
        {
          goto LABEL_298;
        }

        if (v79 >= *(v90 + 16))
        {
          goto LABEL_302;
        }

        v91 = v90 + 12 * v79;
      }

      else
      {
        if ((v79 & 0x8000000000000000) != 0)
        {
          goto LABEL_299;
        }

        if (v79 >= *(v90 + 16))
        {
          goto LABEL_303;
        }

        v91 = v90 + 8 * v79;
      }

      v132 = v89;
      if (*(v91 + 32) == v143)
      {
        v98 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v98 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v98 = AGGraphGetInputValue();
      }

      v100 = *v98;
      v101 = one-time initialization token for lockAssertionsAreEnabled;

      if (v101 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_330;
        }
      }

      v151 = v136;
      v152 = v87 & a13;
      v153 = v132;
      v154 = (v87 ^ 1) & a15;
      v92 = (*(*v100 + 128))(&v151, v87);

      *v86 = v92;
      *(v86 + 8) = 0;
      v25 = v150;
      v77 = v145;
      if ((*(v86 + 24) & 1) == 0)
      {
LABEL_201:
        v102 = *(v86 + 16);
        goto LABEL_210;
      }
    }

    else
    {
      v92 = *v86;
      if ((*(v86 + 24) & 1) == 0)
      {
        goto LABEL_201;
      }
    }

    v93 = *(a9 + 17);
    if (*(a9 + 17))
    {
      v94 = a12;
    }

    else
    {
      v94 = 0x7FF0000000000000;
    }

    if (*(a9 + 17))
    {
      v95 = 0x7FF0000000000000;
    }

    else
    {
      v95 = a14;
    }

    v96 = *(a9 + 88);
    v137 = v94;
    if (*(a9 + 96))
    {
      if ((v79 & 0x8000000000000000) != 0)
      {
        goto LABEL_301;
      }

      if (v79 >= *(v96 + 16))
      {
        goto LABEL_307;
      }

      v97 = v96 + 12 * v79;
    }

    else
    {
      if ((v79 & 0x8000000000000000) != 0)
      {
        goto LABEL_300;
      }

      if (v79 >= *(v96 + 16))
      {
        goto LABEL_304;
      }

      v97 = v96 + 8 * v79;
    }

    v133 = v95;
    if (*(v97 + 32) == v143)
    {
      v99 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v99 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v99 = AGGraphGetInputValue();
    }

    v103 = *v99;
    v104 = one-time initialization token for lockAssertionsAreEnabled;

    if (v104 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_330;
      }
    }

    v151 = v137;
    v152 = v93 & a13;
    v153 = v133;
    v154 = (v93 ^ 1) & a15;
    v102 = (*(*v103 + 128))(&v151, v93);

    *(v86 + 16) = v102;
    *(v86 + 24) = 0;
    v25 = v150;
    v77 = v145;
LABEL_210:
    v105 = a7 + v83;
    if (*(v105 + 8))
    {
      v106 = *(a9 + 17);
      if (*(a9 + 17))
      {
        v107 = a12;
      }

      else
      {
        v107 = 0;
      }

      if (*(a9 + 17))
      {
        v108 = 0;
      }

      else
      {
        v108 = a14;
      }

      v109 = *(a9 + 88);
      if (*(a9 + 96))
      {
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_306;
        }

        if (v82 >= *(v109 + 16))
        {
          goto LABEL_309;
        }

        v110 = v109 + 12 * v82;
      }

      else
      {
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_305;
        }

        if (v82 >= *(v109 + 16))
        {
          goto LABEL_308;
        }

        v110 = v109 + 8 * v82;
      }

      v138 = v107;
      if (*(v110 + 32) == v143)
      {
        v117 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v117 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v117 = AGGraphGetInputValue();
      }

      v119 = *v117;
      v120 = one-time initialization token for lockAssertionsAreEnabled;

      if (v120 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_330;
        }
      }

      v151 = v138;
      v152 = v106 & a13;
      v153 = v108;
      v154 = (v106 ^ 1) & a15;
      v111 = (*(*v119 + 128))(&v151, v106);

      *v105 = v111;
      *(v105 + 8) = 0;
      v77 = v145;
      v15 = v147;
      v25 = v150;
      if ((*(v105 + 24) & 1) == 0)
      {
LABEL_252:
        v121 = *(v105 + 16);
        goto LABEL_261;
      }
    }

    else
    {
      v111 = *v105;
      v15 = v147;
      if ((*(v105 + 24) & 1) == 0)
      {
        goto LABEL_252;
      }
    }

    v112 = *(a9 + 17);
    if (*(a9 + 17))
    {
      v113 = a12;
    }

    else
    {
      v113 = 0x7FF0000000000000;
    }

    if (*(a9 + 17))
    {
      v114 = 0x7FF0000000000000;
    }

    else
    {
      v114 = a14;
    }

    v115 = *(a9 + 88);
    if (*(a9 + 96))
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_311;
      }

      if (v82 >= *(v115 + 16))
      {
        goto LABEL_313;
      }

      v116 = v115 + 12 * v82;
    }

    else
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_310;
      }

      if (v82 >= *(v115 + 16))
      {
        goto LABEL_312;
      }

      v116 = v115 + 8 * v82;
    }

    v139 = v113;
    if (*(v116 + 32) == v143)
    {
      v118 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v118 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v118 = AGGraphGetInputValue();
    }

    v122 = *v118;
    v123 = one-time initialization token for lockAssertionsAreEnabled;

    if (v123 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_330;
      }
    }

    v151 = v139;
    v152 = v112 & a13;
    v153 = v114;
    v154 = (v112 ^ 1) & a15;
    v121 = (*(*v122 + 128))(&v151, v112);

    *(v105 + 16) = v121;
    *(v105 + 24) = 0;
    v77 = v145;
    v15 = v147;
    v25 = v150;
LABEL_261:
    v124 = v102 - v92;
    v125 = v121 - v111;
    if (v102 - v92 == INFINITY)
    {
      v126 = v121 - v111;
      if (v125 == INFINITY)
      {
        if (v92 > v111)
        {
          goto LABEL_283;
        }

LABEL_271:
        v128 = -v111;
        v127 = -v92;
        goto LABEL_277;
      }
    }

    else
    {
      v126 = INFINITY;
      if (v125 != INFINITY)
      {
        v126 = v121 - v111;
        if (v124 == v125)
        {
          v127 = 0.0;
          v128 = 0.0;
          goto LABEL_277;
        }
      }
    }

    if (v124 < v126)
    {
      goto LABEL_283;
    }

    if (v125 == INFINITY)
    {
      v125 = INFINITY;
      if (v124 != INFINITY)
      {
        goto LABEL_279;
      }

      goto LABEL_271;
    }

    v127 = 0.0;
    v129 = v124 != INFINITY && v125 == v124;
    v128 = 0.0;
    if (!v129)
    {
LABEL_279:
      if (v125 < v124)
      {
        goto LABEL_281;
      }

      goto LABEL_280;
    }

LABEL_277:
    if (v128 < v127)
    {
      goto LABEL_281;
    }

LABEL_280:
    if (v79 < v82)
    {
LABEL_283:
      if (v16 + 8 != v131)
      {
        *v16 = *v77;
      }

      if (v25 <= v15 || (v17 = v77, v77 <= v18))
      {
        v17 = v77;
        goto LABEL_290;
      }

      goto LABEL_153;
    }

LABEL_281:
    if (v16 + 8 != v25)
    {
      *v16 = *v78;
    }

    v16 -= 8;
    v25 = v78;
    if (v78 <= v15)
    {
      v25 = v78;
      v17 = v131;
      goto LABEL_290;
    }
  }

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
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      v8 = 0.0 - a5;
      v9 = (a2 + 56);
      v10 = 1;
      v11 = 32;
      if (v8 > 0.0)
      {
        v12 = v8;
      }

      else
      {
        v12 = 0.0;
      }

      do
      {
        v13 = v10;
        v14 = *(v6 + 17);
        v15 = *(v9 - 40);
        v16 = *(v9 - 8);
        v17 = *(v9 - 56);
        v68[2] = *(v9 - 24);
        v69 = v16;
        v68[0] = v17;
        v68[1] = v15;
        v18 = *(v9 + 24);
        v19 = *(v9 + 40);
        v20 = *(v9 + 8);
        v73 = *(v9 + 7);
        v71 = v18;
        v72 = v19;
        v70 = v20;
        v21 = *(&v69 + 1);
        v22 = *&v20;
        v23 = *(&v18 + 1);
        v24 = *&v19;
        outlined init with copy of StackLayout.Child(v68, &v64);
        v74.origin.x = v21;
        v74.origin.y = v22;
        v74.size.width = v23;
        v74.size.height = v24;
        IsNull = CGRectIsNull(v74);
        outlined destroy of StackLayout.Child(v68);
        v26 = v12;
        if (!IsNull)
        {
          if (a4)
          {
            v27 = v24;
          }

          else
          {
            v27 = v23;
          }

          if (a4)
          {
            v28 = v22;
          }

          else
          {
            v28 = v21;
          }

          v29 = v28 + v27;
          if (v29 >= v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = v29;
          }

          if (v28 <= v29)
          {
            v28 = v29;
          }

          v26 = v12;
          if (v30 <= v28)
          {
            v26 = v28 - a5;
            if (v28 - a5 <= 0.0)
            {
              v26 = 0.0;
            }
          }
        }

        v31 = v13 - 1;
        v32 = a5 - v26;
        v33 = v32;
        if (v14)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0.0;
        }

        if (v14)
        {
          v33 = 0.0;
        }

        v35 = *(v6 + 88);
        v36 = *(v35 + 16);
        if (*(v6 + 96))
        {
          if (v31 >= v36)
          {
            goto LABEL_58;
          }

          v37 = (v35 + v11);
        }

        else
        {
          if (v31 >= v36)
          {
            goto LABEL_59;
          }

          v37 = (v35 + 8 * v7 + 32);
        }

        v62 = *(v6 + 80);
        v63 = *v37;
        v58 = v34;
        v59 = v14 ^ 1;
        v60 = v33;
        v61 = v14;
        LayoutProxy.dimensions(in:)(&v58, &v64);
        v38 = v64;
        v39 = v65;
        v40 = v66;
        v41 = *v6;
        v42 = one-time initialization token for lockAssertionsAreEnabled;

        if (v42 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_63;
          }
        }

        v64 = v39;
        v65 = v40;
        *&v43 = COERCE_DOUBLE((*(*v38 + 144))(v41, &v64));
        v45 = v44;

        if (v45)
        {
          if (one-time initialization token for typeCache != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&static AlignmentKey.typeCache);
          if (v41 < 2)
          {
            goto LABEL_60;
          }

          if (v41 >> 1 > *(off_1ED537F58 + 2))
          {
            goto LABEL_61;
          }

          v46 = (off_1ED537F58 + 16 * (v41 >> 1) + 16);
          v47 = *v46;
          v48 = v46[1];
          os_unfair_lock_unlock(&static AlignmentKey.typeCache);
          v64 = v38;
          v65 = v39;
          v66 = v40;
          (*(v48 + 8))(&v64, v47, v48);
        }

        else
        {
          v49 = *&v43;
        }

        v50 = INFINITY;
        if ((*&v49 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v50 = v49;
        }

        v51 = *v9;
        v52 = v9[1];
        if ((~*&v49 & 0x7FF0000000000000) == 0)
        {
          v49 = v50;
        }

        v53 = -v49;
        if (*(v6 + 17))
        {
          v54 = v53;
        }

        else
        {
          v54 = 0.0;
        }

        v55 = v9[3];
        if (*(v6 + 17))
        {
          v53 = 0.0;
        }

        v66 = v9[2];
        v67 = v55;
        v64 = v51;
        v65 = v52;
        *v9 = v54;
        *(v9 + 1) = v53;
        v9[1] = v38;
        v9[2] = v39;
        v9[3] = v40;
        result = outlined destroy of ViewGeometry(&v64);
        if (a3 == v13)
        {
          return result;
        }

        v10 = v13 + 1;
        v9 = (v9 + 120);
        v11 += 12;
        v7 = v13;
      }

      while (!__OFADD__(v13, 1));
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    __break(1u);
LABEL_63:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized majorAxisLength #1 (ofChild:forMajorProposal:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, double a7)
{
  v8 = *(a2 + 17);
  if (!v8)
  {
    a3 = *&a7;
  }

  if (*(a2 + 17))
  {
    v10 = *&a7;
  }

  else
  {
    v10 = a5;
  }

  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v25 = *(a2 + 80);
  v13 = *(a2 + 97);
  v14 = v8 & a4;
  v15 = a6 & ~v8;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  LayoutSubviews.subscript.getter(a1, &v23);
  v16 = *(a2 + 17);
  v21 = v23;
  v22 = v24;
  v17 = a3;
  v18 = v14;
  v19 = v10;
  v20 = v15 & 1;
  LayoutProxy.lengthThatFits(_:in:)(&v17, v16);
}

uint64_t assignWithCopy for StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
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
  return a1;
}

uint64_t assignWithTake for StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for StackLayout.Child(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StackLayout.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetDeltaModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MayNotInsertCALayersEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IgnoresAutomaticPaddingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AutomaticPaddingViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScrollPositionBindingModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, specialized static ScrollPositionBindingModifier._makeInputs(modifier:inputs:));
}

void *specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F00816D8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F00B84C8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F00BCAD8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

void *specialized static ViewModifier<>._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *a2;
  v5 = a2[3];
  v24 = a2[2];
  v25 = v5;
  v26 = a2[4];
  v27 = *(a2 + 20);
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  outlined init with copy of _ViewInputs(a2, v20);
  v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(&v22, v7 | 1);

  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

{
  v27 = *a2;
  v4 = a2[3];
  v23 = a2[2];
  v24 = v4;
  v25 = a2[4];
  v26 = *(a2 + 20);
  v5 = a2[1];
  v21 = *a2;
  v22 = v5;
  outlined init with copy of _ViewInputs(a2, v19);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v6 = static StyleContextInput.defaultValue;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v21, v6, *(&v6 + 1));
  outlined destroy of PropertyList(&v27);
  v15[2] = v23;
  v15[3] = v24;
  v15[4] = v25;
  v16 = v26;
  v15[0] = v21;
  v15[1] = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v9 = v21;
  v10 = v22;
  v7 = outlined init with copy of _ViewInputs(v15, v19);
  a3(v7, &v9);
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v18 = v14;
  v17[0] = v9;
  v17[1] = v10;
  outlined destroy of _ViewInputs(v17);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v20 = v26;
  v19[0] = v21;
  v19[1] = v22;
  return outlined destroy of _ViewInputs(v19);
}

{
  v26 = *a2;
  v4 = a2[3];
  v22 = a2[2];
  v23 = v4;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v5 = a2[1];
  v20 = *a2;
  v21 = v5;
  outlined init with copy of _ViewInputs(a2, v18);
  outlined init with copy of PropertyList(&v26, v18);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA36ContainerContextStylingDisabledInputV_Tt2g5(&v20, 1);
  outlined destroy of PropertyList(&v26);
  v14[2] = v22;
  v14[3] = v23;
  v14[4] = v24;
  v15 = v25;
  v14[0] = v20;
  v14[1] = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v8 = v20;
  v9 = v21;
  v6 = outlined init with copy of _ViewInputs(v14, v18);
  a3(v6, &v8);
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v17 = v13;
  v16[0] = v8;
  v16[1] = v9;
  outlined destroy of _ViewInputs(v16);
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v19 = v25;
  v18[0] = v20;
  v18[1] = v21;
  return outlined destroy of _ViewInputs(v18);
}

void *_s7SwiftUI12ViewModifierPA2A012_GraphInputsD0Rzs5NeverO4BodyACRtzrlE05_makeC08modifier6inputs4bodyAA01_C7OutputsVAA01_E5ValueVyxG_AA01_cF0VAnA01_E0V_AStctFZAA022_EnvironmentKeyWritingD0VyAA16RedactionReasonsVG_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v6 = *a2;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = *(a2 + 52);
  v41 = *(a2 + 36);
  v42 = v9;
  v43 = *(a2 + 68);
  v44 = v6;
  swift_beginAccess();
  v28 = __PAIR64__(*(v8 + 16), a1);
  *&v29 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(a2, &v34);
  type metadata accessor for ChildEnvironment<RedactionReasons>(0, &lazy cache variable for type metadata for ChildEnvironment<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ChildEnvironment<RedactionReasons>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 256;
  *(v13 + 82) = v17;
  *(v13 + 86) = v18;
  *(v13 + 88) = v12;

  v25 = v44;
  *&v26 = v13;
  *(&v26 + 1) = v7;
  LODWORD(v27[0]) = v5 | 0x20;
  *(&v27[2] + 4) = v43;
  *(&v27[1] + 4) = v42;
  *(v27 + 4) = v41;
  v21 = v27[0];
  v22 = v27[1];
  v23 = v27[2];
  v24 = HIDWORD(v43);
  v19 = v44;
  v20 = v26;
  v14 = outlined init with copy of _ViewInputs(&v25, &v34);
  a3(v14, &v19);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  outlined destroy of _ViewInputs(&v28);
  v34 = v44;
  v35 = v13;
  v36 = v7;
  v37 = v5 | 0x20;
  v38 = v41;
  v39 = v42;
  v40 = v43;
  return outlined destroy of _ViewInputs(&v34);
}

void *specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(_OWORD *, __int128 *))
{
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v21 = a2[4];
  v22 = *(a2 + 20);
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  LODWORD(v25[0]) = a1;
  outlined init with copy of _ViewInputs(a2, v27);
  a5(v25, &v17);
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v23, v27);
  a3(v9, &v11);
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26 = v16;
  v25[0] = v11;
  v25[1] = v12;
  outlined destroy of _ViewInputs(v25);
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v28 = v22;
  v27[0] = v17;
  v27[1] = v18;
  return outlined destroy of _ViewInputs(v27);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScrollValueModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, specialized static ScrollValueModifier._makeInputs(modifier:inputs:));
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ColorMonochromeEffect._Resolved(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DisableAccessibilityNodesModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

void *specialized static ViewModifier<>._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(__int128 *, uint64_t, _BYTE *))
{
  v7 = a2[3];
  v26 = a2[2];
  v27 = v7;
  v28 = a2[4];
  v29 = *(a2 + 20);
  v8 = a2[1];
  v24 = *a2;
  v25 = v8;
  outlined init with copy of _ViewInputs(a2, v22);
  a5(&v24, 1, v21);
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v28;
  v18 = v29;
  v17[0] = v24;
  v17[1] = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v11 = v24;
  v12 = v25;
  v9 = outlined init with copy of _ViewInputs(v17, v22);
  a3(v9, &v11);
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v20 = v16;
  v19[0] = v11;
  v19[1] = v12;
  outlined destroy of _ViewInputs(v19);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return outlined destroy of _ViewInputs(v22);
}

void *specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F0053278;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DisableAccessibilityNodesModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _s7SwiftUI18ViewInputsModifierPAAE05_makeC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cgD0VAiA01_L0V_ANtctFZAA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVG_Tt3B503_s7a24UI15ModifiedContentVA2A4c7RzAA0E8e8R_rlE05_f26E4List4view6inputsAA01_eH7k6VAA11_lm19VyACyxq_GG_AA01_eH6d37VtFZAjA01_L0V_APtcfU0_AA5ImageV_AA25_nop6VyAA15qr4VAA5S5VGTG5AKyAA0vW0VyAA5ImageVAWGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      if (AGSubgraphShouldRecordTree())
      {
        AGSubgraphBeginTreeElement();
        LODWORD(v38) = OffsetAttribute2;
        static Image._makeViewList(view:inputs:)(a2, x8_0);
        AGSubgraphEndTreeElement();
      }

      else
      {
        LODWORD(v38) = OffsetAttribute2;
        static Image._makeViewList(view:inputs:)(a2, x8_0);
      }

      return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2);
    }
  }

  else if (static Semantics.forced < v7)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 32);
  v10 = *a2;
  v47 = *(a2 + 16);
  v48 = v9;
  v11 = *MEMORY[0x1E698D3F8];
  v12 = v9;
  v45 = v10;
  v46 = v10;
  v13 = *(&v47 + 1);
  v23 = *(a2 + 36);
  v24 = *(a2 + 44);
  swift_beginAccess();
  *&v27 = __PAIR64__(*(v47 + 16), a1);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GraphInputs(&v46, &v38);
  type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment();
  lazy protocol witness table accessor for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ChildEnvironment<RedactionReasons>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 256;
  *(v17 + 82) = v25;
  *(v17 + 86) = v26;
  *(v17 + 88) = v16;

  v18 = v12 | 0x20;
  v19 = a2;
  v20 = v13;
  outlined init with copy of _ViewListInputs(v19, &v38);
  v41 = v45;
  v44[0] = v38;
  v44[1] = v39;
  *&v42 = v17;
  *(&v42 + 1) = v13;
  LODWORD(v43) = v18;
  *(&v43 + 4) = v23;
  HIDWORD(v43) = v24;
  v44[2] = v40;
  outlined init with copy of _GraphInputs(&v41, &v27);
  outlined destroy of _GraphInputs(v44);
  v38 = v41;
  v39 = v42;
  v40 = v43;
  v21 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    LODWORD(v27) = v21;
    static Image._makeViewList(view:inputs:)(&v38, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    LODWORD(v27) = v21;
    static Image._makeViewList(view:inputs:)(&v38, x8_0);
  }

  v27 = v45;
  v28 = v17;
  v29 = v20;
  v30 = v18;
  v31 = v23;
  v32 = v24;
  v33 = v15;
  v34 = vdupq_n_s32(v11);
  v35 = v11;
  v36 = v11;
  v37 = v11;
  outlined destroy of _ViewInputs(&v27);
  return outlined destroy of _ViewListInputs(&v38);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ForegroundColorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ForegroundColorModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentCaptureProtectionPreferenceWriter(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance VariantThatFitsModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19VariantThatFitsFlagV_Tt2g5);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectContainerModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void protocol witness for ViewModifier.body(content:) in conformance GlassEffectContainerModifier()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectHiddenModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DefaultStyleContextWriter(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DefaultStyleContextWriter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  outlined init with copy of _ViewListInputs(a2, v7);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v4 = static StyleContextInput.defaultValue;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(v7, v4, *(&v4 + 1));

  a3(v5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ExtendedBlendModeEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GraphicsBlendModeEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ColorMatrixEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _PremultipliedColorMatrixEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ContrastEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MoveTransition.MoveLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ConcentricPaddingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ColorInvertEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectBackdropProxyModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ForegroundLayerColorMatrixEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ForegroundLayerLevelViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ForegroundLayerLevelColorMatrixEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _GrayscaleEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectZIndexModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ShadowEffect._Resolved(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RequiresSourceModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BrightnessEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GraphicsFilter(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GraphicsBlendMode(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AlphaThresholdEffect._Resolved(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _PositionLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance VariableBlurStyle(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ShaderFilterEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance Shader.ResolvedShader(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ViewListArchivedAnimation.Effect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PreferTextLayoutManagerInputModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PreferTextLayoutManagerInputModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance EnableLegacyScrollEdgeEffectTag(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LineLimitModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LineLimitModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = off_1F00816D8(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance HiddenForLayoutModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _LuminanceToAlphaEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CAFilterEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AlignmentLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LuminanceCurveEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BackdropGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BackdropGroupEffect2(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BackdropGroupEffect_temp(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BackdropGroupEffect_temp2(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TextSuffixModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, specialized static TextSuffixModifier._makeInputs(modifier:inputs:));
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassContainerTintConfigModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance HiddenForReuseEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DisableContainerContextStylingModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance VariantThatFitsModifier(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, _BYTE *, __n128))
{
  outlined init with copy of _ViewListInputs(a2, v12);

  (a7)(v12, 1, v11);

  (a3)(v9, v12);
  return outlined destroy of _ViewListInputs(v12);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LayoutPriorityLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UnanimatableModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v5;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v6 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v6;
  v7 = DWORD1(v20) | 1;
  v24 = v19[0];
  v25 = v6;
  *v26 = *(a2 + 32);
  *&v26[4] = DWORD1(v20) | 1;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  *&v26[36] = *(a2 + 68);
  *&v26[24] = v9;
  *&v26[8] = v8;
  v15 = *v26;
  v16 = *&v26[16];
  v17 = *&v26[32];
  v18 = *&v26[48];
  v13 = v19[0];
  v14 = v25;
  outlined init with copy of _ViewInputs(v19, v29);
  v10 = outlined init with copy of _ViewInputs(&v24, v29);
  a3(v10, &v13);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  v11 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v11;
  v30 = *(a2 + 32);
  v31 = v7;
  v32 = *(a2 + 40);
  *v33 = *(a2 + 56);
  *&v33[12] = *(a2 + 68);
  return outlined destroy of _ViewInputs(v29);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UnanimatableModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = outlined init with copy of _ViewListInputs(a2, v6);
  v7 |= 1u;
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance VerticalStackOrientationModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA26MayNotInsertCALayersEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD82010);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized ViewModifier.bodyError()()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD81FF0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD81FD0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD81D00);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA22_ColorMonochromeEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD787B0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_FixedSizeLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD81FB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014LayoutPriorityH0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD81B70);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_AlignmentLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD81CA0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_BlendModeEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD81F30);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_FlexFrameLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD81BC0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_GrayscaleEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7ED70);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA16_TransformEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD81D60);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17GraphicsBlendModeO_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD81DC0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17VariableBlurStyleV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7EB90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_BrightnessEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7ED30);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_Rotation3DEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7ED50);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_SaturationEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7ECB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA18_AspectRatioLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD81D20);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA18_ColorInvertEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD81EB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA18_ColorMatrixEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD81EF0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA18_HueRotationEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7EC70);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA19_DrawingGroupEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD81DE0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA19_ShaderFilterEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD81D40);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA20LuminanceCurveEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD81C80);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA20_BackdropGroupEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD81C40);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA20_ColorMultiplyEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD78770);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA20_GeometryGroupEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD81DA0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA012_TransactionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD81A90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA21OpacityRendererEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7EDD0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA21_AlphaThresholdEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD78790);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA21_BackdropGroupEffect2V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD81C20);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA23ContentTransitionEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81B10);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA015OnWorldRecenterD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81F70);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA23_CompositingGroupEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81D80);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA23_ContentTransitionGroupV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81B30);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA23_LuminanceToAlphaEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81CC0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA23_SafeAreaIgnoringLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81AF0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA015_SafeAreaInsetsD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD81A70);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA24_ExtendedBlendModeEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD81F10);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA016_ForegroundColorD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD81F90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA25DefaultStyleContextWriterV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81F50);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA017SystemColorSchemeD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81A50);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA017_AlignmentWritingD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81CE0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA017_AllowsHitTestingD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81AB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA017_AppearanceActionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81C60);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA25_BackdropGroupEffect_tempV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000019, 0x800000018DD81C00);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA26_BackdropGroupEffect_temp2V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD81BE0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA018_ContentTransitionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD81B50);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA016_ForegroundLayercD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD81E90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA30_SafeAreaRegionsIgnoringLayoutV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD81AD0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA31_PremultipliedColorMatrixEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001FLL, 0x800000018DD81ED0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA33_ForegroundLayerColorMatrixEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000021, 0x800000018DD81E60);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA021_ForegroundLayerLevelcD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000021, 0x800000018DD81E30);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA030DisableContainerContextStylingD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000026, 0x800000018DD81B90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA38_ForegroundLayerLevelColorMatrixEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000026, 0x800000018DD81E00);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA13_OffsetEffectV_Ttg5Tm(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a1, a2);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static EmptyModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t ModifiedContent<>.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(a2 + 24))(v11, a2, v13);
  (*(a3 + 24))(v7, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  return AnimatablePair.init(_:_:)(v15, v10, v12, AssociatedTypeWitness, AssociatedConformanceWitness, v17, v20);
}

uint64_t ModifiedContent<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized ModifiedContent<>.animatableData.setter(a1, a2, a3, a4);
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedTypeWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for AnimatablePair(0, v7);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void (*ModifiedContent<>.animatableData.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[6] = a4;
  v9[7] = v4;
  v9[4] = a2;
  v9[5] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *v10 = AssociatedTypeWitness;
  v10[1] = v12;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v14;
  v15 = type metadata accessor for AnimatablePair(0, v10);
  v10[8] = v15;
  v16 = *(v15 - 8);
  v10[9] = v16;
  v17 = *(v16 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v10[10] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v10[10] = malloc(v17);
    v18 = malloc(v17);
  }

  v10[11] = v18;
  ModifiedContent<>.animatableData.getter(a2, a3, a4, v18);
  return ModifiedContent<>.animatableData.modify;
}

void ModifiedContent<>.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 80), v4, v5);
    specialized ModifiedContent<>.animatableData.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized ModifiedContent<>.animatableData.setter(*(*a1 + 88), v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}