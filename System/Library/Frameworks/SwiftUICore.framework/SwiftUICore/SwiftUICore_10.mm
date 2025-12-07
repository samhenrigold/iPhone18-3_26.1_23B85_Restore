void PlacementContext.proposedSize.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v13 = *(v1 + 32);
  v5 = *(v1 + 48);
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v6)
  {
LABEL_7:
    if (v5)
    {
      InputValue = AGGraphGetInputValue();
      v8 = 0;
      v9 = 0;
      v3 = *InputValue;
      v4 = InputValue[1];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v10 = AGGraphGetInputValue();
    v11 = *v10;
    v4 = *(v10 + 8);
    v12 = *(v10 + 16);
  }

  else
  {
    v11 = v3;
    v12 = v13;
  }

  v18 = v11;
  v19 = v4;
  v20 = v12;
  ViewSize.proposal.getter(&v14);
  v3 = v14;
  v8 = v15;
  v4 = v16;
  v9 = v17;
LABEL_15:
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 24) = v9;
}

uint64_t ViewDimensions.subscript.getter(unint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = one-time initialization token for lockAssertionsAreEnabled;

  if (v9 != -1)
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
LABEL_16:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  (*(*v3 + 144))(a1, &v16);
  v11 = v10;

  if (v11)
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    if (a1 < 2)
    {
      __break(1u);
    }

    else if (a1 >> 1 <= *(off_1ED537F58 + 2))
    {
      v13 = (off_1ED537F58 + 16 * (a1 >> 1) + 16);
      v15 = *v13;
      v14 = v13[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      return (*(v14 + 8))(&v16, v15, v14);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

{
  return ViewDimensions.subscript.getter(a1);
}

uint64_t DynamicLayoutViewChildGeometry.updateValue()()
{
  v1 = v0;
  v17 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *&v13 = *Value;
  *(&v13 + 1) = v3;
  v14 = *(Value + 16);
  *&v15 = v4;
  BYTE8(v15) = v5;
  HIDWORD(v15) = v6;
  *&v12[0] = *(v1 + 8);

  v7 = DynamicContainer.Info.viewIndex(id:)(v12);
  LOBYTE(v3) = v8;

  if ((v3 & 1) == 0)
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    if (v7 < *(*AGGraphGetValue() + 16))
    {
      v9 = AGGraphGetValue();
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *(*v9 + 16))
      {
        v10 = (*v9 + (v7 << 6));
        v13 = v10[2];
        v14 = v10[3];
        v15 = v10[4];
        v16 = v10[5];
        v12[0] = v13;
        v12[1] = v14;
        v12[2] = v15;
        v12[3] = v16;
        return AGGraphSetOutputValue();
      }

      __break(1u);
    }
  }

  result = AGGraphGetOutputValue();
  if (result)
  {
    return result;
  }

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v13 = static ViewGeometry.zero;
  v14 = xmmword_1EAB13B40;
  v15 = xmmword_1EAB13B50;
  v16 = unk_1EAB13B60;
  return AGGraphSetOutputValue();
}

void specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(unint64_t a1@<X0>, int a2@<W1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v12 = a1;
  v14 = HIDWORD(a1);
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  v17 = *(a3 + 48);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v18 = static LayoutComputer.defaultValue;
  if (v17)
  {

    InputValue = AGGraphGetInputValue();
    v20 = *InputValue;
    v21 = InputValue[1];
    v22 = AGGraphGetInputValue();
    v23 = *v22;
    v16 = v22[1];
  }

  else
  {
    v23 = v15;

    v20 = v15;
    v21 = v16;
  }

  v54 = v12;
  v55 = v14;
  v56 = a2;
  v50 = a4;
  v51 = a5 & 1;
  v46 = a6;
  v52 = a6;
  v53 = a7 & 1;
  LayoutProxy.dimensions(in:)(&v50, &v57);
  v24 = *(&v57 + 1);
  v25 = v57;
  v26 = v58;
  v27 = v59;
  v29 = v60;
  v28 = v61;
  v31 = *(v9 + 96);
  v30 = *(v9 + 104);
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v31 < 2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v31 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = (off_1ED537F58 + 16 * (v31 >> 1) + 16);
  v33 = *v32;
  v34 = v32[1];
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v30 < 2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v30 >> 1 <= *(off_1ED537F58 + 2))
  {
    v35 = (off_1ED537F58 + 16 * (v30 >> 1) + 16);
    v36 = *v35;
    v37 = v35[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v57 = v18;
    v58 = v20;
    v59 = v21;
    v60 = v23;
    v61 = v16;
    v38 = (*(v34 + 8))(&v57, v33, v34);
    v39 = v20;
    v40 = v38;
    v57 = v18;
    v58 = v39;
    v59 = v21;
    v60 = v23;
    v61 = v16;
    v41 = (*(v37 + 8))(&v57, v36, v37);
    *&v57 = v25;
    *(&v57 + 1) = v24;
    v58 = v26;
    v59 = v27;
    v60 = v29;
    v61 = v28;
    ViewDimensions.subscript.getter(v31);
    v43 = v40 - v42;
    *&v57 = v25;
    *(&v57 + 1) = v24;
    v58 = v26;
    v59 = v27;
    v60 = v29;
    v61 = v28;
    ViewDimensions.subscript.getter(v30);
    v45 = v44;

    LOBYTE(v57) = a5 & 1;
    LOBYTE(v50) = a7 & 1;
    *a8 = a4;
    *(a8 + 8) = a5 & 1;
    *(a8 + 16) = v46;
    *(a8 + 24) = a7 & 1;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = v43;
    *(a8 + 56) = v41 - v45;
    return;
  }

LABEL_16:
  __break(1u);
}

{
  v10 = a1;
  v12 = HIDWORD(a1);
  v14 = *(v8 + 32);
  v13 = *(v8 + 40);
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  v17 = *(a3 + 48);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v18 = static LayoutComputer.defaultValue;
  if (v17)
  {

    InputValue = AGGraphGetInputValue();
    v20 = *InputValue;
    v21 = InputValue[1];
    v22 = AGGraphGetInputValue();
    v23 = *v22;
    v16 = v22[1];
  }

  else
  {
    v23 = v15;

    v20 = v15;
    v21 = v16;
  }

  v52 = v10;
  v53 = v12;
  v54 = a2;
  v48 = a4;
  v49 = a5 & 1;
  v50 = a6;
  v51 = a7 & 1;
  LayoutProxy.dimensions(in:)(&v48, &v55);
  v24 = *(&v55 + 1);
  v25 = v55;
  v26 = v56;
  v27 = v57;
  v29 = v58;
  v28 = v59;
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v14 < 2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = (off_1ED537F58 + 16 * (v14 >> 1) + 16);
  v31 = *v30;
  v32 = v30[1];
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v13 < 2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >> 1 <= *(off_1ED537F58 + 2))
  {
    v33 = (off_1ED537F58 + 16 * (v13 >> 1) + 16);
    v34 = *v33;
    v35 = v33[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v55 = v18;
    v56 = v20;
    v57 = v21;
    v58 = v23;
    v59 = v16;
    v36 = (*(v32 + 8))(&v55, v31, v32);
    v37 = v20;
    v38 = v36;
    v55 = v18;
    v56 = v37;
    v57 = v21;
    v58 = v23;
    v59 = v16;
    v39 = (*(v35 + 8))(&v55, v34, v35);
    *&v55 = v25;
    *(&v55 + 1) = v24;
    v56 = v26;
    v57 = v27;
    v58 = v29;
    v59 = v28;
    ViewDimensions.subscript.getter(v14);
    v41 = v38 - v40;
    *&v55 = v25;
    *(&v55 + 1) = v24;
    v56 = v26;
    v57 = v27;
    v58 = v29;
    v59 = v28;
    ViewDimensions.subscript.getter(v13);
    v43 = v42;

    LOBYTE(v55) = a5 & 1;
    LOBYTE(v48) = a7 & 1;
    *a8 = a4;
    *(a8 + 8) = a5 & 1;
    *(a8 + 16) = a6;
    *(a8 + 24) = a7 & 1;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = v41;
    *(a8 + 56) = v39 - v43;
    return;
  }

LABEL_16:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(uint64_t a1, uint64_t a2)
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

  type metadata accessor for _ContiguousArrayStorage<AnyTrackedValue>(0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance _FrameLayout(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  v25 = *v3;
  v26[0] = v5;
  v26[1] = v3[2];
  v6 = a2[1];
  v23[0] = *a2;
  v23[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v23[2] = a2[2];
  v9 = *a1;
  v10 = *(a1 + 8);
  v24 = *(a2 + 48);
  v19 = v8;
  v20 = v7;
  v21 = a2[2];
  v22 = *(a2 + 48);
  PlacementContext.proposedSize.getter(v15);
  v11 = &v17;
  if (BYTE8(v25))
  {
    v12 = v15;
  }

  else
  {
    v12 = &v25;
  }

  v13 = *v12;
  if (!BYTE8(v26[0]))
  {
    v11 = v26;
  }

  v14 = *v11;
  LOBYTE(v19) = BYTE8(v25) & v16;
  v15[0] = BYTE8(v26[0]) & v18;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v9, v10, v23, v13, BYTE8(v25) & v16, v14, BYTE8(v26[0]) & v18, a3);
}

void _FlexFrameLayout.childPlacementProposal(of:context:)(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 48);
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  if (v9)
  {
    v15 = *AGGraphGetInputValue();
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(a1 + 2);
    if ((v12 & 1) == 0)
    {
LABEL_17:
      v17 = 0;
      v18 = v15;
      goto LABEL_18;
    }
  }

  v30 = v6;
  v31 = *(a1 + 1);
  v32 = a1[3];
  v33 = v7;
  v34 = v8;
  v35 = *(a1 + 2);
  v36 = v9;
  PlacementContext.proposedSize.getter(v29);
  if ((v29[8] & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = -INFINITY;
  if (!v11)
  {
    v16 = v10;
  }

  if (v14)
  {
    if (v16 >= v15)
    {
      goto LABEL_17;
    }

    v17 = 1;
    v18 = 0.0;
    if (v15 >= INFINITY && v15 <= INFINITY)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 >= v15 || v15 >= v13)
    {
      goto LABEL_17;
    }

    v17 = 1;
    v18 = 0.0;
  }

LABEL_18:
  v20 = *(v3 + 48);
  v21 = *(v3 + 56);
  v22 = *(v3 + 72);
  v23 = *(v3 + 80);
  v24 = *(v3 + 88);
  if (v9)
  {
    v25 = *(AGGraphGetInputValue() + 8);
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v25 = v8;
    if ((v22 & 1) == 0)
    {
LABEL_33:
      v27 = 0;
      v28 = v25;
      goto LABEL_34;
    }
  }

  v30 = v6;
  v31 = *(a1 + 1);
  v32 = a1[3];
  v33 = v7;
  v34 = v8;
  v35 = *(a1 + 2);
  v36 = v9;
  PlacementContext.proposedSize.getter(v29);
  if ((v29[24] & 1) == 0)
  {
    goto LABEL_33;
  }

  v26 = -INFINITY;
  if (!v21)
  {
    v26 = v20;
  }

  if (v24)
  {
    if (v26 >= v25)
    {
      goto LABEL_33;
    }

    v27 = 1;
    v28 = 0.0;
    if (v25 >= INFINITY && v25 <= INFINITY)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v26 >= v25 || v25 >= v23)
    {
      goto LABEL_33;
    }

    v27 = 1;
    v28 = 0.0;
  }

LABEL_34:
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
}

void _PaddingLayout.placement(of:in:)(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v24 = *(a1 + 3);
  *v25 = *(a1 + 7);
  *&v25[13] = *(a1 + 41);
  v17 = COERCE_DOUBLE(__PAIR64__(v4, v3));
  v18 = v5;
  v6 = _PaddingLayout.effectiveInsets(in:)(&v17, a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  PlacementContext.proposedSize.getter(&v17);
  v13 = v17;
  v14 = v18;
  v15 = v20;
  if ((v18 & 1) == 0)
  {
    v13 = v17 - (v8 + v12);
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }
  }

  v16 = v19;
  if ((v20 & 1) == 0)
  {
    v16 = v19 - (v6 + v10);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = v6;
}

void ViewLayoutEngine.explicitAlignment(_:at:)(unint64_t a1, double *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v3 + *(a3 + 52);
  v11 = *(v10 + 16);
  v34[0] = *v10;
  v34[1] = v11;
  v33[0] = v6;
  v33[1] = v7;
  v33[2] = v8;
  v33[3] = v9;
  if (!specialized static ViewSize.== infix(_:_:)(v34, v33))
  {
    *v10 = v6;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v12 = *(a3 + 56);

    *(v3 + v12) = MEMORY[0x1E69E7CC0];
    v13 = v3 + *(a3 + 60);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v32 = *(off_1ED537F58 + (a1 >> 1) + 1);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  v14 = v3 + *(a3 + 60);
  v15 = *(v14 + 48);
  v16 = v32;
  if (!*v14 || v32 != *v14)
  {
    v17 = *(v14 + 24);
    if ((!v17 || v32 != v17) && (!v15 || v32 != v15))
    {
      MEMORY[0x1EEE9AC00](*(v14 + 32));
      v25[1] = *(a3 + 16);
      v26 = v6;
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = a1;
      v31 = v18;
      type metadata accessor for Axis?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for closure #1 in ViewLayoutEngine.explicitAlignment(_:at:), v25, a3, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
      v21 = *&v34[0];
      v22 = BYTE8(v34[0]);
      v23 = *(v14 + 40);
      *(v14 + 48) = *(v14 + 24);
      *(v14 + 64) = v23;
      v24 = *(v14 + 16);
      *(v14 + 24) = *v14;
      *(v14 + 40) = v24;
      *v14 = v16;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
    }
  }
}

void *closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v15 = a2;
  v26 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine(0, a5, a6, a4);
  result = closure #1 in closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)(v15, a1, a3, a4, a5, a6, &v24, a8, a9, a10, a11);
  v23 = v25;
  *a7 = v24;
  *(a7 + 8) = v23;
  return result;
}

uint64_t StackLayout.explicitAlignment(_:in:proposal:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  if (a3)
  {
    v15 = NAN;
  }

  else
  {
    v15 = *&a2;
  }

  if (a5)
  {
    v16 = NAN;
  }

  else
  {
    v16 = *&a4;
  }

  v17 = *(v9 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
  }

  v18 = *(v17 + 2);
  *&v22 = a8;
  *(&v22 + 1) = a9;
  v23 = v15;
  v24 = v16;
  *&result = COERCE_DOUBLE(StackLayout.UnmanagedImplementation.explicitAlignment(_:at:)(a1, &v22, v9, v17 + 2, v18));
  *(v9 + 104) = v17;
  if (a1)
  {
    v21 = a7;
  }

  else
  {
    v21 = a6;
  }

  if ((v20 & 1) == 0)
  {
    *&result = v21 + *&result;
  }

  return result;
}

uint64_t HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  return StackLayout.explicitAlignment(_:in:proposal:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8, a9);
}

{
  return HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t StackLayout.UnmanagedImplementation.explicitAlignment(_:at:)(unint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v10 = StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(&v39, a3);
  LOBYTE(v39) = v11 & 1;
  LOBYTE(v38[0]) = v12 & 1;
  StackLayout.UnmanagedImplementation.placeChildren(in:)(v10, v11 & 1, v13, v12 & 1, a3, a4, a5);
  v45 = 0;
  v46 = 1;
  if (!a4 || !a5)
  {
    return 0;
  }

  v14 = 0;
  v15 = 120 * a5;
  v16 = a1 >> 1;
  v17 = &type metadata instantiation cache for TupleTypeDescription;
  while (1)
  {
    v18 = *a4;
    v19 = a4[1];
    v20 = a4[2];
    v42 = a4[3];
    v22 = a4[5];
    v21 = a4[6];
    v23 = a4[4];
    *&v44[32] = *(a4 + 14);
    *v44 = v22;
    *&v44[16] = v21;
    v43 = v23;
    v40 = v19;
    v41 = v20;
    v39 = v18;
    v24 = *(&v42 + 1);
    v25 = v23;
    v36 = *&v44[8];
    v37 = *&v44[24];
    outlined init with copy of StackLayout.Child(&v39, v38);
    if (v17[337] != -1)
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
        break;
      }
    }

    v38[0] = v36;
    v38[1] = v37;
    v26 = (*(**(&v25 + 1) + 144))(a1, v38);
    if (v27)
    {
      outlined destroy of StackLayout.Child(&v39);
    }

    else
    {
      v28 = *&v26;
      if (a1)
      {
        v24 = *&v25;
      }

      if (one-time initialization token for typeCache != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static AlignmentKey.typeCache);
      if (a1 < 2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      if (v16 > *(off_1ED537F58 + 2))
      {
        goto LABEL_24;
      }

      v29 = v17;
      v30 = v24 + v28;
      v31 = (off_1ED537F58 + 16 * v16 + 16);
      v32 = *v31;
      v33 = v31[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      (*(v33 + 16))(v14, &v45, v32, v33, v30);
      outlined destroy of StackLayout.Child(&v39);
      if (__OFADD__(v14++, 1))
      {
        goto LABEL_25;
      }

      v17 = v29;
    }

    a4 = (a4 + 120);
    v15 -= 120;
    if (!v15)
    {
      return v45;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *closure #1 in closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v56 = a7;
  v51 = a3;
  v52 = a4;
  v53 = a6;
  v18 = type metadata accessor for ViewLayoutEngine(0, a5, a6, a3);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48[-v20];
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = _threadLayoutData();
  _setThreadLayoutData();
  v54 = v22;
  v26 = *(v22 + 16);
  v27 = a2;
  v26(v25, a2, a5);
  if (a1)
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    v37 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, v51, v52);
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v50 = 2 * v37;
    v62 = a8;
    v63 = a9;
    v64 = a10;
    v65 = a11;
    ViewSize.proposal.getter(&v58);
    v38 = v59;
    v51 = v60;
    v52 = v58;
    v49 = v61;
    (*(v19 + 16))(v21, v27, v18);
    v39 = &v21[v18[10]];
    LODWORD(v37) = *v39;
    v40 = v39[1];
    LOBYTE(v39) = v21[v18[11]];
    LOBYTE(v58) = 0;
    v67 = v39;
    v41 = *(v19 + 8);

    v41(v21, v18);
    LODWORD(v62) = v37;
    v63 = v40;
    LOBYTE(v64) = v58;
    BYTE1(v64) = v67;
    v42 = v18[9];
    v43 = *(v53 + 80);
    v66 = v38;
    v57 = v49;
    v35 = v43(v50 + 3, v52, v38, v51, v49, &v62, v27 + v42, a5, 0.0, 0.0, a8, a9, v53);
  }

  else
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    v28 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, v51, v52);
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v50 = 2 * v28;
    v62 = a8;
    v63 = a9;
    v64 = a10;
    v65 = a11;
    ViewSize.proposal.getter(&v58);
    v29 = v59;
    v51 = v60;
    v52 = v58;
    v49 = v61;
    (*(v19 + 16))(v21, v27, v18);
    v30 = &v21[v18[10]];
    LODWORD(v28) = *v30;
    v31 = v30[1];
    LOBYTE(v30) = v21[v18[11]];
    LOBYTE(v58) = 0;
    v67 = v30;
    v32 = *(v19 + 8);

    v32(v21, v18);
    LODWORD(v62) = v28;
    v63 = v31;
    LOBYTE(v64) = v58;
    BYTE1(v64) = v67;
    v33 = v18[9];
    v34 = *(v53 + 72);
    v66 = v29;
    v57 = v49;
    v35 = v34(v50 + 2, v52, v29, v51, v49, &v62, v27 + v33, a5, 0.0, 0.0, a8, a9, v53);
  }

  v44 = v35;
  v45 = v36;

  (*(v54 + 8))(v25, a5);
  result = _setThreadLayoutData();
  v47 = v56;
  *v56 = v44;
  *(v47 + 8) = v45 & 1;
  return result;
}

void _FlexFrameLayout.placement(of:in:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[1];
  v25 = *a2;
  v26 = v8;
  v27 = a2[2];
  v28 = *(a2 + 48);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v9 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v13 = a2[1];
    v16[0] = *a2;
    v16[1] = v13;
    v16[2] = a2[2];
    v17 = *(a2 + 48);
    _FlexFrameLayout.childPlacementProposal(of:context:)(v16, &v21);
    v10 = v21;
    v14 = v22;
    v12 = v23;
    v15 = v24;
    goto LABEL_13;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = v26;
  if (v28)
  {
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v12 = InputValue[1];
  }

  else
  {
    v12 = *(&v26 + 1);
  }

  v14 = 0;
  v15 = 0;
LABEL_13:
  LOBYTE(v16[0]) = v14;
  LOBYTE(v21) = v15;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v5 | (v6 << 32), v7, &v25, v10, v14, v12, v15, a3);
}

unint64_t DynamicContainer.Info.viewIndex(id:)(unsigned int *a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = *v2;
  v5 = a1[1];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(*(v3 + 56) + 8 * v6);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AC03C0](result, v4);
LABEL_7:
    v10 = *(v9 + 76);

    if (!__OFADD__(v10, v5))
    {
      return (v10 + v5);
    }

    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for LayoutDirection, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _AnyHashableBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t CoreColorClass(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CoreColorClass_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a1;
  if (CoreColorClass_uiOnce != -1)
  {
    dispatch_once(&CoreColorClass_uiOnce, block);
  }

  if (a1)
  {
    return 0;
  }

  else
  {
    return CoreColorClass_uiClass;
  }
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance LazyLayoutReuseIdleInput(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
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

Swift::Double __swiftcall ViewLayoutEngine.layoutPriority()()
{
  result = -INFINITY;
  if (*(*(v1 + *(v0 + 40) + 8) + 16))
  {
    return 0.0;
  }

  return result;
}

uint64_t specialized AnimatorState.removeListeners()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

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

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 56 * v17);
      v19 = v18[6];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[17] = MEMORY[0x1E69E7CC0];
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

uint64_t specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      v8 = (a2 + 56);
      v9 = 32;
      while (!__OFADD__(v7, 1))
      {
        v17 = *(v6 + 17);
        if (v17)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }

        if (*(v6 + 17))
        {
          v19 = 0;
        }

        else
        {
          v19 = a4;
        }

        v20 = *(v6 + 88);
        v21 = *(v20 + 16);
        if (*(v6 + 96))
        {
          if (v7 >= v21)
          {
            goto LABEL_41;
          }

          v22 = (v20 + 12 * v7 + 32);
        }

        else
        {
          if (v7 >= v21)
          {
            goto LABEL_42;
          }

          v22 = (v20 + v9);
        }

        v44 = *(v6 + 80);
        v45 = *v22;
        v40 = v18;
        v41 = (v17 ^ 1 | a5) & 1;
        v42 = v19;
        v43 = (v17 | a5) & 1;
        LayoutProxy.dimensions(in:)(&v40, &v36);
        v23 = v36;
        v24 = v37;
        v25 = v38;
        v26 = *v6;
        v27 = one-time initialization token for lockAssertionsAreEnabled;

        if (v27 != -1)
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
            goto LABEL_46;
          }
        }

        v36 = v24;
        v37 = v25;
        v28 = (*(*v23 + 144))(v26, &v36);
        v30 = v29;

        if (v30)
        {
          if (one-time initialization token for typeCache != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&static AlignmentKey.typeCache);
          if (v26 < 2)
          {
            goto LABEL_43;
          }

          if (v26 >> 1 > *(off_1ED537F58 + 2))
          {
            goto LABEL_44;
          }

          v31 = (off_1ED537F58 + 16 * (v26 >> 1) + 16);
          v32 = *v31;
          v33 = v31[1];
          os_unfair_lock_unlock(&static AlignmentKey.typeCache);
          v36 = v23;
          v37 = v24;
          v38 = v25;
          (*(v33 + 8))(&v36, v32, v33);
        }

        else
        {
          v10 = *&v28;
        }

        v11 = INFINITY;
        if ((*&v10 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v11 = v10;
        }

        v12 = *v8;
        v13 = v8[1];
        ++v7;
        if ((~*&v10 & 0x7FF0000000000000) == 0)
        {
          v10 = v11;
        }

        v14 = -v10;
        v15 = v8[3];
        if (*(v6 + 17))
        {
          v16 = v14;
        }

        else
        {
          v16 = 0.0;
        }

        if (*(v6 + 17))
        {
          v14 = 0.0;
        }

        v38 = v8[2];
        v39 = v15;
        v36 = v12;
        v37 = v13;
        *v8 = v16;
        *(v8 + 1) = v14;
        v8[1] = v23;
        v8[2] = v24;
        v8[3] = v25;
        result = outlined destroy of ViewGeometry(&v36);
        v9 += 8;
        v8 = (v8 + 120);
        if (v7 == a3)
        {
          return result;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

uint64_t closure #1 in static HStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for HStack(0, a2, a3, a4);
  v10 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _HStackLayout, a2, &protocol witness table for _HStackLayout);
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

void *protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _HStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout()
{
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _HStackLayout, &type metadata for _HStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    swift_getWitnessTable("q{'bH\b\a", &type metadata for _HStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _HStackLayout, &type metadata for _HStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }
}

void instantiation function for generic protocol witness table for _HStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  *(a1 + 8) = v2;
}

uint64_t LayoutEngineBox.childPlacement(at:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*(v2 + 184) + 72))(v5, *(v2 + 176));
}

void *EnvironmentValues.dynamicTypeSize.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }

    *a1 = v5;
  }

  return result;
}

void *EnvironmentValues.displayScale.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
}

void *EnvironmentValues.layoutDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t EnvironmentValues.backgroundLevel.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = v5;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1, v5);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = (v3 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = &static BackgroundInfoKey.defaultValue;
    }
  }

  return *v2;
}

void *EnvironmentValues.displayGamut.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ZStackLayout(uint64_t a1)
{
  result = _threadLayoutData();
  if (result)
  {
    if (*result == 1)
    {
      v3 = *(result + 16);
      v4 = *(result + 48);
      v5[0] = *(result + 32);
      v5[1] = v4;
      return (*(v3 + 8))(a1, v5, *(result + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  return sub_18D0D7264(a1);
}

uint64_t static ViewLayoutEngine.defaultAlignment(_:size:data:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  v7 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v38 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for ViewLayoutEngine(0, a4, a5, a4);
  v11 = *(a3 + *(v10 + 40) + 8);
  v12 = *(v10 + 56);
  v13 = *(a3 + v12);
  v14 = *(v13 + 2);
  if (v14 == *(v11 + 16))
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    *v42 = v7;
    *&v42[8] = v38;
    *&v42[24] = v9;

    v13 = ViewLayoutEngine.childGeometries(at:origin:)(v42, v10, 0.0, 0.0);
    *(a3 + v12) = v13;
    swift_bridgeObjectRetain_n();

    v14 = *(v13 + 2);
  }

  v40 = 0;
  v41 = 1;

  if (!v14)
  {

    return 0;
  }

  v32 = v10;
  v33 = a3;
  v15 = 0;
  v16 = 0;
  v36 = *MEMORY[0x1E698D3F8];
  v34 = a1 >> 1;
  v17 = (v13 + 5);
  v18 = 32;
  v35 = v14;
  while (v16 < *(v13 + 2))
  {
    if (v16 >= *(v11 + 16))
    {
      goto LABEL_46;
    }

    v37 = *v17;
    v39 = *(v17 - 1);
    if (*(v11 + v18) == v36)
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

    v20 = *InputValue;
    v21 = one-time initialization token for lockAssertionsAreEnabled;

    if (v21 != -1)
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
        goto LABEL_50;
      }
    }

    *v42 = v39;
    *&v42[16] = v37;
    v22 = COERCE_DOUBLE((*(*v20 + 144))(a1, v42));
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      if (a1)
      {
        v25 = &v13[4 * v16 + 2] + 1;
      }

      else
      {
        v25 = v17 - 6;
        if (*(v33 + *(v32 + 44)) == 1)
        {
          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v26 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if (dyld_program_sdk_at_least())
            {
LABEL_41:
              v43.origin.x = *(v17 - 6);
              v43.origin.y = *(v17 - 5);
              v43.size.width = *(v17 - 2);
              v43.size.height = *(v17 - 1);
              v27 = v7 + v22 - CGRectGetMaxX(v43);
              goto LABEL_33;
            }
          }

          else if (static Semantics.forced >= v26)
          {
            goto LABEL_41;
          }
        }
      }

      v27 = *v25 + v22;
LABEL_33:
      if (one-time initialization token for typeCache != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static AlignmentKey.typeCache);
      if (a1 < 2)
      {
        goto LABEL_47;
      }

      if (v34 > *(off_1ED537F58 + 2))
      {
        goto LABEL_48;
      }

      v28 = (off_1ED537F58 + 16 * v34 + 16);
      v29 = *v28;
      v30 = v28[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      (*(v30 + 16))(v15, &v40, v29, v30, v27);
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_49;
      }
    }

    ++v16;
    v17 += 8;
    v18 += 8;
    if (v35 == v16)
    {

      return v40;
    }
  }

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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized UnaryChildGeometry.value.getter(uint64_t a3@<X8>)
{
  Value = AGGraphGetValue();
  v23 = Value[1];
  v24 = *Value;
  v5 = *AGGraphGetValue();
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_6:
    v25 = v24;
    v26 = v23;
    (*(*v5 + 152))(&v27, &v25);

    v7 = v27;
    v8 = v28;
    v9 = rect;
    v10 = v30;
    v12 = *(&v30 + 1);
    v11 = v31;
    v14 = v32;
    v13 = v33;
    if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v15 = *AGGraphGetValue();
  *&v25 = v7;
  BYTE8(v25) = v8;
  *&v26 = v9;
  BYTE8(v26) = v10;
  LayoutProxy.dimensions(in:)(&v25, &v27);
  v16 = v27;
  v17 = v28;
  v18 = rect;
  v19 = v31;
  v20 = v14 - v12 * rect;
  v21 = v30;
  v22 = v13 - v11 * *&v30;
  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v21;
  *(a3 + 56) = v19;
  if (v15 == 1)
  {
    *a3 = *&v24 - CGRectGetMaxX(*&v20);
  }
}

void ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = v5 + *(a4 + 40);

  *v11 = v9;
  *(v11 + 8) = v10;
  *v17 = v8;
  swift_getKeyPath();
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  LOBYTE(v10) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v5 + *(a4 + 44)) = v10;
  (*(*(*(a4 + 16) - 8) + 24))(v5, a1);
  v16[0] = 1;
  v17[0] = 1;
  v12 = v5 + *(a4 + 48);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  *(v12 + 48) = 1;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 1;
  v13 = *(a4 + 56);

  *(v5 + v13) = MEMORY[0x1E69E7CC0];
  v14 = v5 + *(a4 + 60);
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 17) = *v16;
  *(v14 + 20) = *&v16[3];
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 41) = *v17;
  *(v14 + 44) = *&v17[3];
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  v15 = *(a4 + 64);

  *(v5 + v15) = 0;
  ViewLayoutEngine.updateCache()();
}

uint64_t protocol witness for ViewList.traits.getter in conformance ModifiedViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

void *specialized RendererEffectDisplayList.value.getter@<X0>(uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v5 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v4;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return result;
  }

  v5 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v43 = v6;
  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v39 = HIDWORD(v9);
  v11 = AGCreateWeakAttribute();
  v40 = v8;
  v12 = v11;
  v38 = HIDWORD(v11);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v37 = HIDWORD(v13);
  v15 = AGCreateWeakAttribute();
  v16 = v15;
  v41 = v5;
  v17 = HIDWORD(v15);
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v20 = HIDWORD(v18);
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v42 = v7;
  v23 = HIDWORD(v21);
  _threadGeometryProxyData();
  *&v53 = __PAIR64__(v39, v10);
  *(&v53 + 1) = __PAIR64__(v38, v12);
  *&v54 = __PAIR64__(v37, v14);
  *(&v54 + 1) = __PAIR64__(v17, v16);
  *&v55 = __PAIR64__(v20, v19);
  *(&v55 + 1) = __PAIR64__(v23, v22);
  LODWORD(v56[0]) = v40;
  _setThreadGeometryProxyData();
  v24 = *AGGraphGetValue();
  AGGraphGetValue();
  *&v25 = v24;
  v26 = v25;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = v28 - *v30;
  v32 = v29 - v30[1];
  v33 = AGGraphGetValue();
  v34 = *v2;
  *&v47 = v31;
  *(&v47 + 1) = v32;
  v48 = *v33;
  *v50 = 0x400000000;
  *&v50[8] = v42;
  *&v50[16] = v43 | v41;
  *&v50[24] = v34;
  *&v49 = v40;
  *(&v49 + 1) = v26;
  LOBYTE(v53) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v53);
  v51[2] = v49;
  v52[0] = *v50;
  *(v52 + 12) = *&v50[12];
  v51[0] = v47;
  v51[1] = v48;
  v45[2] = v49;
  v46[0] = *v50;
  *(v46 + 12) = *&v50[12];
  v45[0] = v47;
  v45[1] = v48;
  outlined init with copy of DisplayList.Item(v51, &v53);
  DisplayList.init(_:)(v45, a2);
  v55 = v49;
  v56[0] = *v50;
  *(v56 + 12) = *&v50[12];
  v53 = v47;
  v54 = v48;
  return outlined destroy of DisplayList.Item(&v53);
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(uint64_t *, void, void, unsigned int *))
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), (v2 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), (v2 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

BOOL specialized AnimatableAttributeHelper.checkReset()(void (*a1)(void))
{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 40);
  if (v3 != v4)
  {
    if (*(v1 + 32))
    {
      a1();
    }

    *(v1 + 32) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 40) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 48);
  if (v3 != v4)
  {
    if (*(v1 + 40))
    {
      a1();
    }

    *(v1 + 40) = 0;
    *(v1 + 20) = 0;
    *(v1 + 12) = 0;
    *(v1 + 28) = 0;
    *(v1 + 32) = 1;
    *(v1 + 48) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 72);
  if (v3 != v4)
  {
    if (*(v1 + 64))
    {
      a1();
    }

    *(v1 + 64) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v1 + 72) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 80);
  if (v3 != v4)
  {
    if (*(v1 + 72))
    {
      a1();
    }

    *(v1 + 72) = 0;

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 80) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 56);
  if (v3 != v4)
  {
    if (*(v1 + 48))
    {
      a1();
    }

    *(v1 + 48) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = 0;
    *(v1 + 40) = 1;
    *(v1 + 56) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 48);
  if (v3 != v4)
  {
    if (*(v1 + 40))
    {
      a1();
    }

    *(v1 + 40) = 0;
    *(v1 + 12) = 0;
    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 1;
    *(v1 + 48) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 64);
  if (v3 != v4)
  {
    if (*(v1 + 56))
    {
      a1();
    }

    *(v1 + 56) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 1;
    *(v1 + 64) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, char *a4)
{
  v214 = *MEMORY[0x1E69E9840];
  v194 = type metadata accessor for OSSignpostID();
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v11 = (&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v176 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v176 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v176 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v176 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v176 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v193 = v17;
  v195 = v11;
  AGGraphClearUpdate();
  v184 = a4;
  v29 = *(a4 + 4);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v184;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v183 = a1;
  v180 = a3;
  v179 = v30;
  v178 = v32;
  v181 = v29;
  if (!v29)
  {
    v176 = v14;
    v208 = &type metadata for OpacityRendererEffect;
    type metadata accessor for OpacityRendererEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v203;
    }

    else
    {
      v52 = 0;
    }

    v177 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v193) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v193)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v191) = v56;
    (*(*v32 + 96))(&v208);
    v58 = v208;
    v57 = v209;
    v59 = v213;
    v201 = NAN;
    v202 = v208;
    v198 = 0x3FF0000000000000;
    v199 = NAN;
    v197 = 0x7FF8000000000000;
    v203 = v209;
    v204 = *&v210;
    v60 = v210;
    v61 = v211;
    v205 = v211;
    v206 = v212;
    v62 = v212;
    LOBYTE(v207) = v213;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v201, &v199, &v198, &v197);
    v4 = v201;
    v63 = v198;
    v64 = *&v199;
    v65 = v197;
    if (one-time initialization token for enabledCategories != -1)
    {
      v190 = *&v199;
      v188 = v198;
      v189 = v197;
      swift_once();
      v65 = v189;
      v63 = v188;
      v64 = v190;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v193;
          LODWORD(v190) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v202) = v191;
          BYTE4(v202) = v67;
          v203 = &type metadata for OpacityRendererEffect;
          v204 = v4;
          v205 = v64;
          v206 = v63;
          v207 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v190);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v183;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v108 = one-time initialization token for animationState;

      if (v108 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v109 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v202 = v71;
        v203 = v72;
        LOBYTE(v204) = a4;
        BYTE1(v204) = v74;
        BYTE2(v204) = v109;
        v110 = Signpost.isEnabled.getter();
        LODWORD(v35) = v193;
        if ((v110 & 1) == 0)
        {

          v121 = v177;

          a4 = v184;
          *(v184 + 32) = v121;
          goto LABEL_120;
        }

        v111 = one-time initialization token for _signpostLog;

        if (v111 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v202) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, a3, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v191) = v36;
  (*(*v32 + 96))(&v208);
  v38 = v208;
  v37 = v209;
  v40 = v210;
  v39 = v211;
  v41 = v212;
  v201 = NAN;
  v202 = v208;
  v198 = 0x3FF0000000000000;
  v199 = NAN;
  v197 = 0x7FF8000000000000;
  v203 = v209;
  v204 = *&v210;
  v205 = v211;
  v206 = v212;
  LODWORD(v195) = v213;
  LOBYTE(v207) = v213;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v201, &v199, &v198, &v197);
  v4 = v201;
  v42 = v198;
  v43 = *&v199;
  v44 = v197;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v177 = Counter;
    if (v45)
    {
      v190 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v189 = v41;
        v47 = *(v46 + 16);
        LODWORD(v202) = v191;
        BYTE4(v202) = a4 == v35;
        v203 = &type metadata for OpacityRendererEffect;
        v204 = v4;
        v205 = v43;
        v206 = v42;
        v207 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v191 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v190, v189, v195);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v190, v41, v195);
      }

      LOBYTE(Counter) = v177;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v195);
    }

    v70 = one-time initialization token for animationState;

    a4 = v184;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v202 = v71;
    v203 = v72;
    LOBYTE(v204) = v73;
    BYTE1(v204) = v74;
    BYTE2(v204) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v195) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v80;
        *(a4 + 4) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v82;
          *(a4 + 18) = v81;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v83;
          *(a4 + 14) = 0xD000000000000015;
          *(a4 + 15) = 0x800000018DD7EDD0;
          v84 = v177;
          if (v74)
          {
            LOBYTE(v197) = v195;
            v201 = COERCE_DOUBLE(&dword_18D018000);
            v202 = v71;
            v198 = a4;
            *&v199 = v78;
            v203 = v72;
            LOBYTE(v204) = v73;
            v208 = "Animation: (%p) [%d] %{public}@ updated";
            v209 = 39;
            LOBYTE(v210) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v197, &v201, &v199, &v202, v177, &v208, &v198);

            (*(v192 + 8))(v84, v194);
          }

          else
          {
            v85 = v71;
            if (v71 == 20)
            {
              v86 = 3;
            }

            else
            {
              v86 = 4;
            }

            v87 = bswap32(v71) | (4 * WORD1(v71));
            LODWORD(v35) = v195;
            v88 = v192 + 16;
            v89 = v86;
            v182 = *(v192 + 16);
            v90 = v182(v193, v177, v194);
            v40 = 0;
            LOBYTE(v208) = 1;
            v190 = 16 * v89;
            v185 = v88;
            v191 = (v88 - 8);
            v189 = a4 + 32;
            v188 = v85;
            v187 = v89;
            do
            {
              v195 = &v176;
              MEMORY[0x1EEE9AC00](v90);
              v93 = &v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v93 + 8;
              v94 = v89;
              v95 = v93 + 8;
              do
              {
                *(v95 - 1) = 0;
                *v95 = 0;
                v95 += 16;
                --v94;
              }

              while (v94);
              v96 = &v189[40 * v40];
              while (1)
              {
                v97 = *(a4 + 2);
                if (v40 == v97)
                {
                  break;
                }

                if (v40 >= v97)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v96, &v202);
                v98 = v205;
                v99 = v206;
                v100 = __swift_project_boxed_opaque_existential_1(&v202, v205);
                v101 = v99;
                v78 = v100;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v87 | v35, v98, v101);
                *a1 = v102 & 1;
                a1 += 16;
                v91 = __swift_destroy_boxed_opaque_existential_1(&v202);
                v96 += 40;
                if (!--v89)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v208) = 0;
LABEL_65:
              v103 = v188;
              if (v188 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v89 = v187;
              if (v93[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v103 != 20 && v93[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v104 = *v191;
              v105 = v193;
              v78 = v194;
              (*v191)(v193, v194);
              v106 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v90 = v182(v105, v106, v78);
            }

            while ((v208 & 1) != 0);

            v107 = v194;
            v104(v193, v194);
            v104(v177, v107);
          }

          a1 = v183;
          a4 = v184;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v112 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v113 = AGGraphGetAttributeGraph();
      v114 = AGGraphGetCounter();

      v115 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v115;
      *(a1 + 4) = v114;
      v116 = AGGraphGetCurrentAttribute();
      if (v116 == v35)
      {
        goto LABEL_197;
      }

      v117 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v117;
      *(a1 + 18) = v116;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v118;
      *(a1 + 14) = 0xD000000000000015;
      *(a1 + 15) = 0x800000018DD7EDD0;
      v119 = v176;
      if (v74)
      {
        LOBYTE(v197) = Counter;
        v201 = COERCE_DOUBLE(&dword_18D018000);
        v202 = v71;
        v198 = a1;
        *&v199 = v112;
        v203 = v72;
        LOBYTE(v204) = a4;
        v208 = "Animation: (%p) [%d] %{public}@ started";
        v209 = 39;
        LOBYTE(v210) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v197, &v201, &v199, &v202, v176, &v208, &v198);
        v120 = v177;

        (*(v192 + 8))(v119, v194);
      }

      else
      {
        v122 = v71;
        v123 = Counter;
        v124 = v71 == 20 ? 3 : 4;
        v125 = bswap32(v71) | (4 * WORD1(v71));
        LODWORD(v35) = v123;
        v78 = v192 + 16;
        v182 = *(v192 + 16);
        v126 = v182(v195, v176, v194);
        v40 = 0;
        LOBYTE(v208) = 1;
        v190 = 16 * v124;
        v185 = v78;
        v191 = (v78 - 8);
        v189 = a1 + 32;
        v188 = v122;
        v187 = v124;
        do
        {
          v193 = &v176;
          MEMORY[0x1EEE9AC00](v126);
          v128 = &v176 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v128 + 8;
          v129 = v124;
          v130 = v128 + 8;
          do
          {
            *(v130 - 1) = 0;
            *v130 = 0;
            v130 += 16;
            --v129;
          }

          while (v129);
          v96 = &v189[40 * v40];
          while (1)
          {
            v131 = *(a1 + 2);
            if (v40 == v131)
            {
              break;
            }

            if (v40 >= v131)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v96, &v202);
            v132 = v205;
            v133 = v206;
            v134 = __swift_project_boxed_opaque_existential_1(&v202, v205);
            v135 = v133;
            v78 = v134;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v125 | v35, v132, v135);
            *a4 = v136 & 1;
            a4 += 16;
            v91 = __swift_destroy_boxed_opaque_existential_1(&v202);
            v96 += 40;
            if (!--v124)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v208) = 0;
LABEL_103:
          v137 = v188;
          if (v188 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v124 = v187;
          if (v128[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v128[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v128[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v137 != 20 && v128[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v138 = *v191;
          v139 = v195;
          v78 = v194;
          (*v191)(v195, v194);
          v140 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v126 = v182(v139, v140, v78);
        }

        while ((v208 & 1) != 0);
        v120 = v177;

        v141 = v194;
        v138(v195, v194);
        v138(v176, v141);
      }

      a4 = v184;
      *(v184 + 32) = v120;
    }

    else
    {
    }

    a1 = v183;
LABEL_120:
    a3 = v180;
    specialized AnimatorState.addListeners(transaction:)(v179);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v96 = *(a4 + 4);
    if (!v96)
    {
      return result;
    }

    v201 = *a1;

    LOBYTE(v202) = 0;
    v142 = specialized AnimatorState.update(_:at:environment:)(&v201, a3, v27);
    v91 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v91 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v91;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v142)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v153 = *(v78 + 616);
    if (*(v153 + 16) >= 0x43uLL)
    {
      if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v202) = v40;
        BYTE4(v202) = v91 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v145 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v146 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v202 = v40;
    v203 = v145;
    LOBYTE(v204) = v41;
    BYTE1(v204) = Counter;
    BYTE2(v204) = v146;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v184 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v183 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v190 = v43;
    v188 = v42;
    v189 = v44;
    swift_once();
    v44 = v189;
    v42 = v188;
    v43 = v190;
  }

  v39 = AGGraphGetAttributeGraph();
  v147 = AGGraphGetCounter();

  v148 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v148;
  *(a4 + 4) = v147;
  v149 = AGGraphGetCurrentAttribute();
  if (v149 == v35)
  {
    goto LABEL_187;
  }

  v150 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v150;
  *(a4 + 18) = v149;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v151;
  *(a4 + 14) = 0xD000000000000015;
  *(a4 + 15) = 0x800000018DD7EDD0;
  if (Counter)
  {
    v200 = v38;
    v198 = v37;
    *&v199 = &dword_18D018000;
    v202 = v40;
    v203 = v145;
    LOBYTE(v204) = v41;
    v208 = "Animation: (%p) [%d] %{public}@ ended";
    v209 = 37;
    LOBYTE(v210) = 2;
    v197 = a4;
    v152 = v186;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v200, &v199, &v198, &v202, v186, &v208, &v197);

    (*(v192 + 8))(v152, v194);
    goto LABEL_174;
  }

  v154 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v155 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v156 = v192 + 16;
  v187 = *(v192 + 16);
  v157 = v187(v196, v186, v194);
  v35 = 0;
  LOBYTE(v208) = 1;
  v195 = v78;
  v190 = 16 * v78;
  v192 = v156;
  v191 = (v156 - 8);
  v189 = a4 + 32;
  v188 = v154;
  do
  {
    v193 = &v176;
    MEMORY[0x1EEE9AC00](v157);
    a1 = &v176 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = a1 + 8;
    v160 = v195;
    v161 = a1 + 8;
    do
    {
      *(v161 - 1) = 0;
      *v161 = 0;
      v161 += 16;
      v160 = (v160 - 1);
    }

    while (v160);
    v96 = &v189[40 * v35];
    v162 = v195;
    while (1)
    {
      v163 = *(a4 + 2);
      if (v35 == v163)
      {
        break;
      }

      if (v35 >= v163)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v174 = v91;
        swift_once();
        v91 = v174;
LABEL_128:
        v143 = *(v78 + 616);
        if (*(v143 + 16) >= 0x43uLL)
        {
          if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v202) = v40;
            BYTE4(v202) = v91 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v144 = one-time initialization token for animationState;
          v185 = v96;

          if (v144 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v175 = v91;
        swift_once();
        v91 = v175;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v96, &v202);
      v164 = v205;
      v165 = v206;
      v166 = __swift_project_boxed_opaque_existential_1(&v202, v205);
      v167 = v165;
      v78 = v166;
      *(v159 - 1) = CVarArg.kdebugValue(_:)(v155 | v40, v164, v167);
      *v159 = v168 & 1;
      v159 += 16;
      v91 = __swift_destroy_boxed_opaque_existential_1(&v202);
      v96 += 40;
      v162 = (v162 - 1);
      if (!v162)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v208) = 0;
LABEL_159:
    v169 = v188;
    if (v188 == 20)
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

    if (v169 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v170 = *v191;
    v171 = v196;
    v78 = v194;
    (*v191)(v196, v194);
    v172 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v157 = v187(v171, v172, v78);
  }

  while ((v208 & 1) != 0);

  v173 = v194;
  v170(v196, v194);
  v170(v186, v173);
LABEL_174:

  a1 = v183;
  a4 = v184;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v201;
  a1[8] = 1;
  return result;
}

uint64_t partial apply for closure #1 in TransitionHelper.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v6 = v4[3];
  v9 = v4[4];
  v8 = v4[5];
  v10 = type metadata accessor for TransitionHelper(0, v7, v6, a4);
  result = (*(*(v7 - 8) + 24))(v9 + *(v10 + 44), a1, v7);
  *v8 = 1;
  return result;
}

double TransitionHelper.info.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;

  return result;
}

void TransitionHelper.list.getter(uint64_t a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, a1);
  }
}

void protocol witness for Transition.body(content:phase:) in conformance OpacityTransition(char a1@<W1>, double *a2@<X8>)
{
  v2 = 0.0;
  if (a1 == 1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
}

uint64_t ViewListTransition.updateValue()(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v6, v7);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v12 = type metadata accessor for TransitionHelper(0, v4, v3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v18 = type metadata accessor for UncheckedSendable(0, v12, v16, v17);
  v27 = *(v18 - 8);
  v28 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  if ((TransitionHelper.update()(v12) & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    (*(v13 + 16))(v15, v1, v12);
    UncheckedSendable.init(_:)(v15, v12, v20);
    v23 = closure #1 in ViewListTransition.updateValue()(v20, v4, v3, v22, v10);
    v24 = MEMORY[0x1EEE9AC00](v23);
    *(&v27 - 2) = a1;
    swift_getWitnessTable(protocol conformance descriptor for ViewListTransition<A>, a1, v24);
    *(&v27 - 1) = v25;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in StatefulRule.value.setter, (&v27 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
    (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
    return (*(v27 + 8))(v20, v28);
  }

  return result;
}

uint64_t TransitionHelper.update()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v29 = 0;
  TransitionHelper.info.getter(v26);
  v9 = v26[1];

  if (*(v9 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(*(v2 + 8));
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      TransitionHelper.info.getter(v26);
      v13 = v26[0];

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v13 + 8 * v12 + 32);

          goto LABEL_7;
        }

        __break(1u);
        return result;
      }

      v15 = MEMORY[0x193AC03C0](v12, v13);
LABEL_7:

      swift_beginAccess();
      v16 = *(v15 + 84);

      if (v16 != 3)
      {
        v17 = *(a1 + 48);
        v29 = *(v2 + v17) != v16;
        *(v2 + v17) = v16;
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  if (*(v2 + *(a1 + 48)) != 2)
  {
    TransitionHelper.list.getter(v26);
    v18 = v27;
    if (v27)
    {
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v19 + 56))(&v25, v18, v19);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      outlined destroy of ViewList?(v26);
      v20 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for opacity != -1)
    {
      swift_once();
    }

    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v20);

    v21 = *(a1 + 24);
    v22 = AnyTransition.base<A>(as:)(v4, v21, v8);
    MEMORY[0x1EEE9AC00](v22);
    v24[-4] = v4;
    v24[-3] = v21;
    v24[-2] = v2;
    v24[-1] = &v29;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TransitionHelper.update(), &v24[-6], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v23, v26);

    (*(v6 + 8))(v8, v5);
  }

  return v29;
}

uint64_t closure #1 in ViewListTransition.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for TransitionHelper(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v19 - v15;
  (*(v10 + 16))(v12, a1, v9, v14);
  v17 = *(v9 + 44);
  PlaceholderContentView.init()();
  (*(a3 + 24))();
  (*(*(a2 - 8) + 8))(&v12[v17], a2);
  return UncheckedSendable.init(_:)(v16, AssociatedTypeWitness, a5);
}

uint64_t AnyTransition.base<A>(as:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for TransitionBox(0, a2, a3, a3);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v11 = *(a2 - 8);
    (*(v11 + 16))(a4, v6 + *(*v6 + 136), a2);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a2 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a4, v8, 1, a2);
}

uint64_t StatefulRule<>.update<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a1;
  return StatefulRule<>.update<A>(modify:create:)(partial apply for closure #1 in StatefulRule<>.update<A>(to:), v7, partial apply for closure #2 in StatefulRule<>.update<A>(to:), v6, a2, a3, a4, a5);
}

uint64_t initializeWithCopy for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t storeEnumTagSinglePayload for RBColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t InvalidatableLeafLayoutComputer.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for PlatformViewLayoutEngine(0, v6, v7, a4);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v37 - v9;
  v11 = type metadata accessor for ViewLeafView(0, v6, v7, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v46 = v4;
  InvalidatableLeafLayoutComputer.view.getter(a1, v18, &v37 - v16);
  v19 = *(v12 + 8);
  swift_unknownObjectRetain();
  v38 = v19;
  v19(v17, v11);
  swift_getAssociatedTypeWitness();
  v39 = v7;
  v40 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 40);
  v22 = swift_checkMetadataState();
  v21(&v47, v22, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v23 = v48;
  outlined destroy of ViewGraphHost.LayoutInvalidator?(&v47, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator);
  v44 = a1;
  v45 = v14;
  if (v23)
  {
    v25 = v46;
    InvalidatableLeafLayoutComputer.view.getter(a1, v24, v14);
    swift_unknownObjectRetain();
    v38(v14, v11);
    swift_weakLoadStrong();
    result = AGGraphGetCurrentAttribute();
    v27 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_8;
    }

    v28 = AGCreateWeakAttribute();
    v29 = v28;
    v30 = HIDWORD(v28);
    swift_weakInit();
    swift_weakAssign();

    *(&v47 + 1) = __PAIR64__(v30, v29);
    LOBYTE(v48) = 0;
    (*(AssociatedConformanceWitness + 48))(&v47, v22, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = *MEMORY[0x1E698D3F8];
    v25 = v46;
  }

  v32 = v44;
  v31 = v45;
  InvalidatableLeafLayoutComputer.view.getter(v44, v24, v45);
  result = AGGraphGetCurrentAttribute();
  if (result != v27)
  {
    v33 = *(v25 + 4);
    v63 = 1;
    v62 = 1;
    v61 = 1;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    memset(&v60[7], 0, 48);
    memset(&v59[7], 0, 48);
    v50 = 1;
    *&v53[15] = 0;
    *v53 = *&v60[32];
    v52 = *&v60[16];
    v51 = *v60;
    v54 = 1;
    *&v57[15] = 0;
    *v57 = *&v59[32];
    v56 = *&v59[16];
    v55 = *v59;
    v58 = 1;
    v34 = v41;
    PlatformViewLayoutEngine.init(cache:view:environment:context:)(&v47, v31, v33, result, v40, v39, v41);
    swift_getWitnessTable(protocol conformance descriptor for InvalidatableLeafLayoutComputer<A>, v32);
    v35 = v43;
    StatefulRule<>.update<A>(to:)(v34, v32, v43, v36, &protocol witness table for PlatformViewLayoutEngine<A>);
    return (*(v42 + 8))(v34, v35);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t InvalidatableLeafLayoutComputer.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for ViewLeafView(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

void MergedTransaction.value.getter(uint64_t a1, uint64_t a2)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v2 = 1;
  }

  else
  {
    v2 = *AGGraphGetValue();
  }

  AGGraphGetValue();

  if (v2 != 1)
  {
    PropertyList.merge(_:)(v2);
    outlined consume of Transaction?(v2);
  }
}

uint64_t DynamicTransaction.updateValue()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = *(AGGraphGetValue() + 8);
  if (!*(v4 + 16))
  {
    return AGGraphSetOutputValue();
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v6 & 1) == 0)
  {
    return AGGraphSetOutputValue();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *AGGraphGetValue();
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v7 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_32;
  }

  v9 = MEMORY[0x193AC03C0](v7, v8);

LABEL_7:
  swift_beginAccess();
  v10 = *(v9 + 84);

  if (v10 == 3)
  {
    return AGGraphSetOutputValue();
  }

  v22 = *AGGraphGetValue();
  v12 = v22;
  v13 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v10)
  {
    v14 = swift_retain_n();
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v14);
    if (v15 && !v15[9])
    {
    }

    else
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(0);
      *(swift_allocObject() + 72) = 0;
      type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey);
      value = PropertyList.Element.init(keyType:before:after:)(v16, 0, v22).value;

      v12 = value;
    }

    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v19);
    if (!v20 || *(v20 + 72) != 1)
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>(0);
      *(swift_allocObject() + 72) = 1;
      type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey);
      PropertyList.Element.init(keyType:before:after:)(v21, 0, v12);
    }

    goto LABEL_28;
  }

  if (v10 != 1)
  {

    if (v13)
    {
LABEL_22:
      *(v1 + 12) = 1;
      goto LABEL_28;
    }

    v2 = *AGGraphGetValue();
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v2 + 8 * v7 + 32);

        goto LABEL_20;
      }

      __break(1u);
    }

LABEL_32:

    v17 = MEMORY[0x193AC03C0](v7, v2);

LABEL_20:
    v18 = *(v17 + 56);

    if (v18)
    {
      Transaction.addAnimationListener(_:)(v18);
    }

    goto LABEL_22;
  }

LABEL_28:
  AGGraphSetOutputValue();
}

uint64_t PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  v12 = a4[1];
  v13 = *(a4 + 16);
  v14 = *(type metadata accessor for PlatformViewRepresentableContext(0, a5, a6, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v14, a1, AssociatedTypeWitness);
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = v13;
  return result;
}

double outlined copy of RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformViewRepresentableContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))((*(v10 + 80) + 33 + a1) & ~*(v10 + 80), (a2 + *(v10 + 80) + 33) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t PlatformViewRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t destroy for PlatformViewRepresentableContext(uint64_t a1, uint64_t a2)
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 33) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

uint64_t outlined consume of RepresentableContextValues.EnvironmentStorage(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

uint64_t static _ConditionalContent<>._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v44 = a1[2];
  v45 = v10;
  v46 = a1[4];
  v11 = a1[1];
  v43[0] = *a1;
  v43[1] = v11;
  v13 = (a1 + 65);
  v12 = *(a1 + 65);
  v47[0] = v43[0];
  v47[1] = v11;
  v47[2] = v44;
  v47[3] = v10;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = *(a1 + 9);
  *(&v48 + 1) = v12;
  v40 = v44;
  v41 = v10;
  v42 = v48;
  v38 = v43[0];
  v39 = v11;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v43, v49);
  outlined init with copy of _ViewListCountInputs(v47, v49);
  v15 = v14(&v38, a2, a4);
  LOBYTE(a2) = v16;
  v49[2] = v40;
  v49[3] = v41;
  v49[4] = v42;
  v49[0] = v38;
  v49[1] = v39;
  outlined destroy of _ViewListCountInputs(v49);
  if (a2)
  {
    v17 = a1[1];
    v38 = *a1;
    v39 = v17;
    v18 = a1[3];
    v40 = a1[2];
    v41 = v18;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = *v13;
    *(&v42 + 1) = *(v13 + 7);
    outlined destroy of _ViewListCountInputs(&v38);
  }

  else
  {
    v19 = a1[1];
    v33[0] = *a1;
    v33[1] = v19;
    v20 = a1[3];
    v34 = a1[2];
    v35 = v20;
    LOBYTE(v36) = 0;
    *(&v36 + 1) = *v13;
    *(&v36 + 1) = *(v13 + 7);
    v30 = v34;
    v31 = v20;
    v32 = v36;
    v28 = v33[0];
    v29 = v19;
    v21 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(v33, &v38);
    v22 = v21(&v28, a3, a5);
    v24 = v23;
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v32;
    v37[0] = v28;
    v37[1] = v29;
    outlined destroy of _ViewListCountInputs(v37);
    v25 = a1[1];
    v38 = *a1;
    v39 = v25;
    v26 = a1[3];
    v40 = a1[2];
    v41 = v26;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = *v13;
    *(&v42 + 1) = *(v13 + 7);
    outlined destroy of _ViewListCountInputs(&v38);
    if (v24 & 1 | (v15 != v22))
    {
      return 0;
    }
  }

  return v15;
}

uint64_t closure #6 in ForEachState.item(at:offset:)(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(a2[2]);
  if (v7 && *(v7 + 72) == 1)
  {
    *(a3 + 9) = a1;
    *(a3 + 64) = 1;
  }

  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[4];
  v26 = a3[3];
  v27 = v10;
  v11 = *a3;
  v12 = *a3;
  v25[1] = a3[1];
  v25[2] = v9;
  v22 = v9;
  v23 = v26;
  v24 = a3[4];
  v25[0] = v11;
  v13 = *(v6 + 96);
  v20 = v12;
  v21 = v8;
  v14 = *(v6 + 120);
  v15 = *(v14 + 40);
  outlined init with copy of _ViewListCountInputs(v25, v28);
  v16 = v15(&v20, v13, v14);
  LOBYTE(v14) = v17;
  v28[2] = v22;
  v28[3] = v23;
  v28[4] = v24;
  v28[0] = v20;
  v28[1] = v21;
  result = outlined destroy of _ViewListCountInputs(v28);
  v19 = a2 + *(*a2 + 176);
  *v19 = v16;
  v19[8] = v14 & 1;
  v19[9] = 0;
  return result;
}

uint64_t initializeWithCopy for _ViewListCountInputs(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 4);

  return a1;
}

uint64_t static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  return (*(a5 + 40))(v9, partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:), v8, a3);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance _OffsetEffect(_OWORD *a1, uint64_t (*a2)(_OWORD *))
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

uint64_t partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1)
{
  v2 = *(v1 + 32);
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(v2 + 40))(v6);
}

uint64_t _ViewListCountInputs.popLast<A, B>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  PropertyList.subscript.getter(a1, *v5, a1, v9);
  v12 = type metadata accessor for Stack(0, a2, v10, v11);
  Stack.pop()(v12, a4);
  v14[0] = v14[1];
  return PropertyList.subscript.setter(v14, a1, a1, v9);
}

void static ViewModifier.viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v13[4] = a1[4];
  v10 = a1[1];
  v13[0] = *a1;
  v13[1] = v10;
  v11 = type metadata accessor for _ViewModifier_Content(0, a4, a5, a4);
  v12[2] = a4;
  v12[3] = a5;
  static _ViewListCountInputs.withBodyCache<A>(type:inputs:content:body:)(v11, v13, a2, a3, partial apply for closure #1 in static ViewModifier.viewListCount(inputs:body:), v12, v11);
}

unint64_t type metadata accessor for (_:)()
{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [LayoutDirection](255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(255, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for AGSubgraphRef(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for AtomicBuffer<TrackerData>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Int?();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Attribute<ContentShapePathData>(255, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

uint64_t _ViewListCountInputs.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(a5 + 8);
  PropertyList.subscript.getter(a3, *v6, a3, v10);
  v13 = type metadata accessor for Stack(0, a4, v11, v12);
  Stack.push(_:)(a1, v13);
  v15[0] = v15[1];
  return PropertyList.subscript.setter(v15, a3, a3, v10);
}

uint64_t closure #1 in static ViewModifier.viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v8[4] = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

void static ViewModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static ViewModifier.viewListCount(inputs:body:)(a1, a2, a3, a4, a5);
}

{
  static ViewModifier._viewListCount(inputs:body:)(a1, a2, a3, a4, a5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t AnyGestureStorage.__allocating_init(gesture:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 136), a1);
  return v2;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectGroupModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t AnyTransition.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized AnyTransition.init<A>(_:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t specialized AnyTransition.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransitionBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return AnyGestureStorage.__allocating_init(gesture:)(v6);
}

uint64_t AnyGestureStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for _TraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectTransitionModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectIDModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t ViewGraphHost.preferenceValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    ViewGraphRootValueUpdater._preferenceValue<A>(_:)(a1, ObjectType, a2, v15, a3, v14);
    swift_unknownObjectRelease();
    v17 = *(AssociatedTypeWitness - 8);
    (*(v17 + 56))(v14, 0, 1, AssociatedTypeWitness);
    return (*(v17 + 32))(a4, v14, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(AssociatedTypeWitness - 8);
    (*(v19 + 56))(v14, 1, 1, AssociatedTypeWitness);
    (*(v9 + 16))(a2, v9);
    result = (*(v19 + 48))(v14, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachChild(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17IsInLazyContainerV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17IsInLazyContainerV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for IsInLazyContainer)
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

uint64_t closure #1 in ForEachState.item(at:offset:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v21[2] = a2;
  v28 = *a1;
  v4 = v28;
  v5 = *(v28 + 104);
  v21[1] = *(*(v5 + 8) + 8);
  v6 = *(v28 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v21 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = a1 + *(v4 + 160);
  swift_beginAccess();
  v15 = *(v4 + 112);
  v24 = v6;
  v25 = *(v28 + 88);
  v26 = v5;
  v27 = v15;
  v16 = type metadata accessor for ForEach(0, &v24);
  result = (*(*(v16 - 8) + 48))(v14, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v14[*(v16 + 60)];
    (*(v10 + 16))(v13, v14, v6);

    v19 = dispatch thunk of Collection.subscript.read();
    v20 = AssociatedTypeWitness;
    (*(v7 + 16))(v9);
    v19(&v24, 0);
    (*(v10 + 8))(v13, v6);
    v18(v9);

    return (*(v7 + 8))(v9, v20);
  }

  return result;
}

uint64_t closure #2 in ForEachState.item(at:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, _DWORD *a7@<X6>, uint64_t a8@<X8>)
{
  v108 = a7;
  v107 = a6;
  v120 = a5;
  v122 = a4;
  v123 = a1;
  v118 = a8;
  v133 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v11 = *a3;
  v116 = type metadata accessor for ObservationTracking._AccessList();
  v125 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v106 - v14;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v106 - v16;
  v17 = v10[11];
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  v22 = v10[10];
  v23 = *(v11 + 6);
  v24 = v10[14];
  v25 = v10[15];
  *&v129 = v22;
  *(&v129 + 1) = v17;
  v124 = v23;
  v130 = v23;
  v131 = v24;
  v132 = v25;
  v115 = type metadata accessor for ForEachChild(0, &v129);
  v119 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v27 = (&v106 - v26);
  _GraphInputs.pushStableID<A>(_:)(a2, v17);
  if (*(a3 + 164))
  {
    __break(1u);
  }

  v114 = a3;
  v28 = *(a3 + 160);
  (*(v18 + 16))(v21, a2, v17);
  *v27 = v28;
  v111 = v22;
  *&v129 = v22;
  *(&v129 + 1) = v17;
  v130 = v124;
  v112 = v24;
  v131 = v24;
  v132 = v25;
  v121 = v25;
  v29 = type metadata accessor for ForEachChild(0, &v129);
  v30 = *(v18 + 32);
  v31 = v27 + *(v29 + 68);
  v113 = v17;
  v32 = v30(v31, v21, v17);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v124;
  *(&v106 - 4) = v124;
  v34 = v115;
  *(&v106 - 3) = v115;
  swift_getWitnessTable(protocol conformance descriptor for ForEachChild<A, B, C>, v34);
  *(&v106 - 2) = v35;
  v36 = type metadata accessor for Attribute();
  v37 = MEMORY[0x1E69E73E0];
  v38 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v106 - 6), v34, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v39);
  v40 = (*(v119 + 8))(v27, v34);
  v41 = v129;
  MEMORY[0x1EEE9AC00](v40);
  *(&v106 - 2) = v124;
  *(&v106 - 2) = v41;
  v42 = v122;
  v122 = v33;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, partial apply for closure #1 in Attribute.setValue(_:), (&v106 - 4), v33, v37, MEMORY[0x1E69E6370], v38, v43);
  v119 = 0;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v44 = static ObservationCenter._current;
  swift_beginAccess();
  v45 = pthread_getspecific(v44[2]);
  v46 = v125;
  v47 = v117;
  v48 = v116;
  if (!v45)
  {
    v49 = swift_slowAlloc();
    pthread_setspecific(v44[2], v49);
    *(&v130 + 1) = type metadata accessor for ObservationCenter();
    *&v129 = v44[3];
    outlined init with take of Any(&v129, v49);

    v45 = v49;
  }

  outlined init with copy of Any(v45, &v129);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  outlined init with copy of ObservationTracking._AccessList?(v120, v47);
  v50 = v46[6](v47, 1, v48);
  LODWORD(v120) = v41;
  if (v50 == 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v52 = v46[4];
    v53 = v109;
    v52(v109, v47, v48);
    type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking._AccessList>, MEMORY[0x1E69E6F90]);
    v54 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDA6EB0;
    v52(v51 + v54, v53, v48);
  }

  v55 = v121;
  v56 = *(v51 + 16);
  if (v56)
  {
    v58 = v46[2];
    v57 = (v46 + 2);
    v125 = v58;
    v59 = (v57[64] + 32) & ~v57[64];
    v117 = v51;
    v60 = v51 + v59;
    v61 = *(v57 + 7);
    v62 = v110;
    v63 = v120;
    do
    {
      (v125)(v62, v60, v48);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v63, v62);
      (*(v57 - 1))(v62, v48);
      v60 += v61;
      --v56;
    }

    while (v56);

    v55 = v121;
  }

  else
  {
  }

  v65 = v123;
  v66 = v118;
  v67 = v114;
  v68 = v113;
  v69 = v122;
  if ((*(v123 + 58) & 1) == 0)
  {
    goto LABEL_23;
  }

  v70 = *(v114 + 144);
  if (v70 == 255)
  {
    LODWORD(v127) = *MEMORY[0x1E698D3F8];
    v128 = 0;
    *&v83 = MEMORY[0x1EEE9AC00](v64);
    *&v129 = v84;
    *(&v129 + 1) = v68;
    v130 = v83;
    v131 = v85;
    v132 = v55;
    v86 = type metadata accessor for ForEachState.ItemOffset(0, &v129);
    *(&v106 - 2) = v86;
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ItemOffset, v86);
    *(&v106 - 1) = v87;
    type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    v78 = v119;
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v127, closure #1 in Attribute.init<A>(_:)partial apply, (&v106 - 4), v86, MEMORY[0x1E69E73E0], v88, MEMORY[0x1E69E7410], v89);
    v71 = 0;
LABEL_20:
    v82 = v129;
    goto LABEL_21;
  }

  v71 = *(v114 + 128);
  if ((v70 & 1) == 0)
  {
    LODWORD(v127) = *MEMORY[0x1E698D3F8];
    v128 = 0;
    *&v90 = MEMORY[0x1EEE9AC00](v64);
    *&v129 = v91;
    *(&v129 + 1) = v68;
    v130 = v90;
    v131 = v92;
    v132 = v55;
    v93 = type metadata accessor for ForEachState.ItemOffset(0, &v129);
    *(&v106 - 2) = v93;
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ItemOffset, v93);
    *(&v106 - 1) = v94;
    type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    v78 = v119;
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v127, closure #1 in Attribute.init<A>(_:)partial apply, (&v106 - 4), v93, MEMORY[0x1E69E73E0], v95, MEMORY[0x1E69E7410], v96);
    goto LABEL_20;
  }

  v72 = *(v114 + 136);
  LODWORD(v127) = *(v114 + 128);
  v128 = 0;
  *&v73 = MEMORY[0x1EEE9AC00](v64);
  *&v129 = v74;
  *(&v129 + 1) = v68;
  v130 = v73;
  v131 = v75;
  v132 = v121;
  v76 = type metadata accessor for ForEachState.ItemOffset(0, &v129);
  *(&v106 - 2) = v76;
  swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ItemOffset, v76);
  *(&v106 - 1) = v77;
  type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
  v78 = v119;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v127, closure #1 in Attribute.init<A>(_:)partial apply, (&v106 - 4), v76, MEMORY[0x1E69E73E0], v79, MEMORY[0x1E69E7410], v80);
  v55 = v121;
  v82 = v129;
  v71 = v72;
LABEL_21:
  v65 = v123;
  *(v123 + 112) = v82;
  *(v65 + 120) = v71;
  *(v65 + 128) = 1;
  if (*(v67 + 172))
  {
    __break(1u);
    goto LABEL_32;
  }

  v119 = v78;
  AGGraphAddInput();
  v97 = v107;
  *v107 = v82;
  *(v97 + 4) = 0;
  v69 = v122;
LABEL_23:
  _GraphValue.init(_:)(v120, &v127);
  v98 = v127;
  outlined init with copy of _ViewListInputs(v65, &v129);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v126[0] = v98;
  (*(v55 + 32))(v126, &v129, v69, v55);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v98, v69, v55);
  result = outlined destroy of _ViewListInputs(&v129);
  if ((*(v67 + 73) & 8) != 0)
  {
    v99 = _ViewListOutputs.makeAttribute(inputs:)(v67 + 16);
    LODWORD(v127) = v99;
    v128 = 0;
    MEMORY[0x1EEE9AC00](v99);
    *&v100 = v111;
    *(&v100 + 1) = v68;
    v129 = v100;
    v130 = v124;
    v131 = v112;
    v132 = v55;
    v101 = type metadata accessor for ForEachState.ItemList(0, &v129);
    *(&v106 - 2) = v101;
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ItemList, v101);
    *(&v106 - 1) = v102;
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v127, closure #1 in Attribute.init<A>(_:)partial apply, (&v106 - 4), v101, MEMORY[0x1E69E73E0], v103, MEMORY[0x1E69E7410], v104);
    result = v129;
    v105 = v108;
    *v108 = v129;
    *(v105 + 4) = 0;
    if ((*(v67 + 172) & 1) == 0)
    {
      result = AGGraphAddInput();
      if ((v105[1] & 1) == 0)
      {
        LODWORD(v129) = *v105;
        *(&v129 + 1) = 0;
        LOBYTE(v132) = 1;
        return outlined assign with take of _ViewListOutputs.Views(&v129, v66);
      }

LABEL_33:
      __break(1u);
      return result;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ObservationTracking._AccessList();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ForEachState.viewsPerElement.getter()
{
  v1 = v0 + *(*v0 + 176);
  result = *v1;
  if (*(v1 + 9) & 1) == 0 && (*(v1 + 8))
  {
    v3 = *(*v0 + 168);
    v4 = *(v0 + v3);
    if (v4)
    {
      swift_beginAccess();
      result = *(v4 + 16);
      if ((*(v4 + 24) & 1) == 0)
      {
        *(v0 + v3) = 0;
        v5 = result;

        result = v5;
        *v1 = v5;
        *(v1 + 8) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized ForEachChild.info.getter(_OWORD *a1)
{
  v1 = a1[2];
  v3[0] = a1[1];
  v3[1] = v1;
  v3[2] = a1[3];
  type metadata accessor for ForEachState.Info(0, v3);
  return *AGGraphGetValue();
}

uint64_t *specialized ForEachState.Item.init(id:reuseID:views:subgraph:index:offset:contentID:seed:state:isConstant:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v17 = *v10;
  swift_weakInit();
  *(v10 + *(*v10 + 232)) = 8;
  *(v10 + *(*v10 + 240)) = 0;
  *(v10 + *(*v10 + 248)) = 0;
  (*(*(*(v17 + 120) - 8) + 32))(v10 + *(*v10 + 160), a1);
  *(v10 + *(*v10 + 168)) = a2;
  v18 = (v10 + *(*v10 + 176));
  v19 = a3[1];
  *v18 = *a3;
  v18[1] = v19;
  *(v18 + 25) = *(a3 + 25);
  swift_weakAssign();
  v20 = *(*v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v10 + v20, a5, AssociatedTypeWitness);
  *(v10 + *(*v10 + 200)) = a6;
  *(v10 + *(*v10 + 208)) = a7;
  *(v10 + *(*v10 + 216)) = a8;
  *(v10 + *(*v10 + 224)) = a10;
  *(v10 + 6) = 1;
  v10[2] = a4;
  return v10;
}

uint64_t ForEach.IDGenerator.makeID(data:index:offset:)@<X0>(uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a2;
  v15 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  if (*v4)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    (*(v7 + 16))(v10);
    v11(v16, 0);
    swift_getAtKeyPath();
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  else
  {
    result = v15;
    v16[0] = v14;
    v13 = *(a3[3] - 8);
    if (*(v13 + 64) == 8)
    {
      return (*(v13 + 16))(v15, v16, v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  outlined init with copy of AnyTrackedValue(a2, v22);
  v16 = v23;
  v17 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v21 = a4;
  v19 = v14;
  v20 = v15;
  *a8 = (*(v17 + 64))(a3, &v21, a5, &v19, a6, a7, v16, v17) & 1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t *ForEachState.item(at:offset:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v171 = a2;
  v172 = a1;
  v199 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v166 = v4;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  v150 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = (&v141 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v159 = &v141 - v10;
  v11 = v4[12];
  v158 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v141 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v141 - v17;
  v18 = v4[13];
  v19 = v4[10];
  v153 = *(*(v18 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = *(AssociatedTypeWitness - 8);
  v162 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v147 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v141 - v23;
  v24 = v4[11];
  v25 = type metadata accessor for Optional();
  v164 = *(v25 - 8);
  v165 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v141 - v26;
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v141 - v29;
  v168 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v146 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v141 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v141 - v36;
  *(v3 + v4[33]) = 1;
  v37 = v3 + *(*v3 + 160);
  swift_beginAccess();
  v169 = v19;
  v170 = v24;
  *&v38 = v19;
  *(&v38 + 1) = v24;
  v167 = v11;
  *&v39 = v11;
  *(&v39 + 1) = v18;
  v40 = v4[14];
  v173 = v39;
  v174 = v38;
  v192 = v39;
  v191 = v38;
  v193 = v40;
  v41 = type metadata accessor for ForEach(0, &v191);
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v42 + 48;
  if (v43(v37, 1, v41) == 1)
  {
    __break(1u);
LABEL_63:
    __break(1u);
  }

  *&v181 = *&v37[*(v41 + 64)];
  v160 = v41;
  v154 = v44;
  v155 = v43;
  if (v43(v37, 1, v41) == 1)
  {
    goto LABEL_63;
  }

  v45 = v169;
  (*(v27 + 16))(v30, v37, v169);

  v192 = v173;
  v191 = v174;
  v193 = v40;
  v46 = type metadata accessor for ForEach.IDGenerator(0, &v191);
  v47 = v175;
  ForEach.IDGenerator.makeID(data:index:offset:)(v171, v46, v175);
  (*(v27 + 8))(v30, v45);

  swift_beginAccess();
  v48 = v170;
  type metadata accessor for Set();
  v49 = v163;
  Set.remove(_:)();
  swift_endAccess();
  v50 = v48;
  (*(v164 + 8))(v49, v165);
  v51 = v40;
  v52 = *(*v3 + 200);
  swift_beginAccess();
  v53 = *(v3 + v52);
  v54 = v166[15];
  v192 = v173;
  v191 = v174;
  v193 = v51;
  v194 = v54;
  v55 = type metadata accessor for ForEachState.Item(0, &v191);
  v56 = v47;
  v57 = v50;
  v58 = v53;
  v59 = v55;
  MEMORY[0x193ABE750](&v198, v56, v58, v50, v55, v51);
  v60 = v198;
  if (v198)
  {
    swift_endAccess();
    v61 = *v60;
    if (*(v60 + *(*v60 + 240)) == 1)
    {
      ForEachState.uneraseItem(_:)(v60);
      v61 = *v60;
    }

    v62 = v61[27];
    v63 = *(*v3 + 240);
    v64 = v175;
    if (*(v60 + v62) == *(v3 + v63))
    {
      v65 = v61[31];
      if (*(v60 + v65))
      {
        goto LABEL_40;
      }

      v66 = v61[24];
      swift_beginAccess();
      v68 = v161;
      v67 = v162;
      v69 = v145;
      (*(v161 + 16))(v145, v60 + v66, v162);
      swift_getAssociatedConformanceWitness();
      LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v68 + 8))(v69, v67);
      if (v66)
      {
        goto LABEL_40;
      }

      if (one-time initialization token for v3 != -1)
      {
        swift_once();
      }

      v70 = static Semantics.v3;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if (dyld_program_sdk_at_least())
        {
          goto LABEL_59;
        }
      }

      else if (static Semantics.forced >= v70)
      {
LABEL_59:
        *(v60 + v65) = 1;
        *&v197[0] = 0;
        *(&v197[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(92);
        v135 = _typeName(_:qualified:)();
        MEMORY[0x193ABEDD0](v135);

        MEMORY[0x193ABEDD0](0x444920656874203ALL, 0xE900000000000020);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x193ABEDD0](0xD00000000000004FLL, 0x800000018DD83090);
        specialized static Log.externalWarning(_:)(*&v197[0], *(&v197[0] + 1));
      }
    }

    else
    {
      v122 = v61[24];
      swift_beginAccess();
      (*(v161 + 24))(v60 + v122, v172, v162);
      swift_endAccess();
      *(v60 + *(*v60 + 200)) = v171;
      *(v60 + *(*v60 + 208)) = *(v3 + *(*v3 + 232));
      *(v60 + v62) = *(v3 + v63);
    }

LABEL_40:
    *(v60 + *(*v60 + 232)) = 8;
LABEL_56:
    (*(v168 + 8))(v64, v57);
    return v60;
  }

  v164 = v54;
  v165 = v51;
  v143 = v59;
  v144 = v52;
  v145 = v37;
  swift_endAccess();
  v71 = AGSubgraphGetGraph();
  if (*(v3 + 172) == 1)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v72 = v71;
  v73 = AGSubgraphCreate2();

  v166 = v73;
  AGSubgraphAddChild();
  outlined init with copy of _ViewListInputs((v3 + 2), &v191);
  v74 = v192;
  swift_beginAccess();
  v75 = v74[3];
  v197[1] = v74[2];
  v197[2] = v75;
  v76 = v74[5];
  v197[3] = v74[4];
  v197[4] = v76;
  v197[0] = v74[1];
  type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v77 = swift_allocObject();
  memmove((v77 + 16), v74 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v197, &v181);

  *&v192 = v77;
  v195 = 0;
  v78 = v167;
  v52 = v151;
  if ((v196 & 1) == 0)
  {
    v196 |= 1uLL;
  }

  v142 = v3[2];
  v79 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v142);
  if (v79 && *(v79 + 72) == 1 && !*(v3 + *(*v3 + 168)))
  {
    type metadata accessor for MutableBox<Int?>(0);
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    *(v134 + 24) = 1;
    v163 = v134;
    swift_weakAssign();
  }

  else
  {
    v163 = 0;
  }

  v179 = 0;
  v180 = 1;
  v177 = 0;
  v178 = 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v80 = static ObservationCenter._current;
  swift_beginAccess();
  v81 = pthread_getspecific(v80[2]);
  if (!v81)
  {
    v82 = swift_slowAlloc();
    pthread_setspecific(v80[2], v82);
    *(&v182 + 1) = type metadata accessor for ObservationCenter();
    *&v181 = v80[3];
    outlined init with take of Any(&v181, v82);

    v81 = v82;
  }

  outlined init with copy of Any(v81, &v181);
  type metadata accessor for ObservationCenter();
  v83 = swift_dynamicCast();
  MEMORY[0x1EEE9AC00](v83);
  v139 = v3;
  v140 = v172;
  v84 = type metadata accessor for ObservationTracking._AccessList();
  v85 = (*(*(v84 - 8) + 56))(v52, 1, 1, v84);
  MEMORY[0x1EEE9AC00](v85);
  *(&v141 - 4) = v78;
  *(&v141 - 3) = partial apply for closure #1 in ForEachState.item(at:offset:);
  v139 = &v141 - 4;
  v86 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  v87 = v148;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v52, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v141 - 6), v150, v86, v78, MEMORY[0x1E69E7288], &v181);

  v88 = *(v158 + 32);
  v89 = v149;
  v88(v149, v87, v78);
  v90 = v152;
  outlined init with take of ObservationTracking._AccessList?(v52, v152);
  v91 = v157;
  v88(v157, v89, v78);
  v92 = v159;
  outlined init with take of ObservationTracking._AccessList?(v90, v159);
  AGGraphClearUpdate();
  v93 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #2 in ForEachState.item(at:offset:)(&v191, v175, v3, v91, v92, &v177, &v179, v189);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v94 = v145;
  v95 = v160;
  v96 = v155(v145, 1, v160);
  if (v96 == 1)
  {
    goto LABEL_65;
  }

  v152 = &v141;
  *&v186 = *&v94[*(v95 + 68)];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v172;
  v139 = v3;
  v140 = v172;
  swift_getAssociatedTypeWitness();
  v98 = MEMORY[0x1E69E6530];
  type metadata accessor for KeyPath();
  v52 = type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in ForEachState.item(at:offset:), (&v141 - 4), MEMORY[0x1E69E73E0], v98, v99, &v181);
  v151 = 0;

  v100 = v181;
  v101 = BYTE8(v181);
  v153 = *(v168 + 16);
  v153(v156, v175, v170);
  outlined init with copy of _ViewListOutputs.Views(v189, &v181);
  v102 = v147;
  v103 = v97;
  v104 = v160;
  (*(v161 + 16))(v147, v103, v162);
  v105 = *v3;
  if (v155(v94, 1, v104) != 1)
  {
    if (v101)
    {
      v100 = v167;
    }

    v106 = *(v105 + 232);
    v107 = *(v3 + *(v105 + 240));
    v108 = *(v3 + v106);
    v109 = *&v94[*(v104 + 64)] == 0;
    swift_allocObject();
    v110 = v166;
    v60 = specialized ForEachState.Item.init(id:reuseID:views:subgraph:index:offset:contentID:seed:state:isConstant:)(v156, v100, &v181, v166, v102, v171, v108, v107, v3, v109);
    v57 = v170;
    v153(v146, v175, v170);
    *&v186 = v60;
    swift_beginAccess();
    v111 = v165;
    type metadata accessor for Dictionary();
    v112 = v110;

    Dictionary.subscript.setter();
    swift_endAccess();
    v113 = v164;
    if ((v180 & 1) == 0)
    {
      v181 = v174;
      v182 = v173;
      *&v183 = v111;
      *(&v183 + 1) = v164;
      v114 = type metadata accessor for ForEachState.ItemList(0, &v181);
      MEMORY[0x1EEE9AC00](v114);
      *(&v141 - 4) = v115;
      *(&v141 - 3) = partial apply for closure #4 in ForEachState.item(at:offset:);
      v139 = v60;
      AGGraphMutateAttribute();
    }

    if ((v178 & 1) == 0)
    {
      v181 = v174;
      v182 = v173;
      *&v183 = v111;
      *(&v183 + 1) = v113;
      v116 = type metadata accessor for ForEachState.ItemOffset(0, &v181);
      MEMORY[0x1EEE9AC00](v116);
      *(&v141 - 4) = v117;
      *(&v141 - 3) = partial apply for closure #5 in ForEachState.item(at:offset:);
      v139 = v60;
      AGGraphMutateAttribute();
    }

    v118 = v167;
    if (*(v3 + *(*v3 + 224)) <= v171)
    {
      v119 = *(*v60 + 160);
      swift_beginAccess();
      v181 = v174;
      v182 = v173;
      *&v183 = v165;
      *(&v183 + 1) = v164;
      v120 = type metadata accessor for ForEachState.LazyEdits(0, &v181);
      ForEachState.LazyEdits.appendInsert(id:)(v60 + v119, v120);
      swift_endAccess();
    }

    ForEachState.viewsPerElement.getter();
    v64 = v175;
    if ((v121 & 0x100) != 0)
    {
      if (v190)
      {
        outlined init with copy of _ViewListInputs(&v191, &v181);
        LOBYTE(v188) = 0;
        *(&v188 + 1) = 0;
        *(v187 + 8) = 0u;
        *(&v187[1] + 8) = 0u;
        BYTE8(v187[2]) = 0;
        *&v186 = v181;
        LODWORD(v187[0]) = DWORD1(v183);
        v123 = *(&v184 + 1);

        outlined destroy of _ViewListInputs(&v181);
        *(&v186 + 1) = v123;
        v176[0] = 0;
        closure #6 in ForEachState.item(at:offset:)(v176, v3, &v186);
        v124 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v142);
        if (!v124 || *(v124 + 72) != 1)
        {
          goto LABEL_53;
        }

        if (v163)
        {
          if (v176[0] == 1)
          {
            v125 = ForEachState.viewsPerElement.getter();
            if ((v126 & 0x100) == 0 && (v126 & 1) == 0)
            {
              v136 = v3 + *(*v3 + 176);
              *v136 = 0;
              *(v136 + 4) = 1;
              v137 = v125;
              v138 = v163;

              v183 = v187[1];
              v184 = v187[2];
              v185 = v188;
              v181 = v186;
              v182 = v187[0];
              outlined destroy of _ViewListCountInputs(&v181);
              outlined destroy of _ViewListOutputs(v189);
              swift_beginAccess();
              *(v138 + 2) = v137;
              v138[24] = 0;

              *(v3 + *(*v3 + 168)) = v138;

              goto LABEL_55;
            }
          }
        }

        ForEachState.viewsPerElement.getter();
        if (v127 & 0x100) == 0 && (v127 & 1) != 0 && (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA18LogForEachSlowPath33_1A3DD35AB7F6976908CD7AF959F34D1FLLV_Ttg5())
        {
          *&v181 = 0;
          *(&v181 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(186);
          MEMORY[0x193ABEDD0](0xD000000000000042, 0x800000018DD82FC0);
          v128 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v128);

          v64 = v175;
          MEMORY[0x193ABEDD0](0xD000000000000076, 0x800000018DD83010);
          specialized static Log.externalWarning(_:)(v181, *(&v181 + 1));

          v183 = v187[1];
          v184 = v187[2];
          v185 = v188;
          v130 = v186;
          v129 = v187[0];
        }

        else
        {
LABEL_53:

          v183 = v187[1];
          v184 = v187[2];
          v185 = v188;
          v130 = v186;
          v129 = v187[0];
        }

        v181 = v130;
        v182 = v129;
        outlined destroy of _ViewListCountInputs(&v181);
        outlined destroy of _ViewListOutputs(v189);
      }

      else
      {
        v131 = v189[7];
        outlined destroy of _ViewListOutputs(v189);

        v132 = v3 + *(*v3 + 176);
        *v132 = v131;
        *(v132 + 4) = 0;
      }
    }

    else
    {
      outlined destroy of _ViewListOutputs(v189);
    }

LABEL_55:
    outlined destroy of ObservationTracking._AccessList?(v159);
    (*(v158 + 8))(v157, v118);
    outlined destroy of _ViewListInputs(&v191);
    goto LABEL_56;
  }

LABEL_66:
  __break(1u);
  result = outlined destroy of ObservationTracking._AccessList?(v52);
  __break(1u);
  return result;
}

uint64_t ForEachChild.updateValue()(char *a1)
{
  v104[4] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v96 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v83 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v83 - v9;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = (&v83 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v83 - v15;
  v16 = *(a1 + 4);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v83 - v23;
  v24 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = specialized ForEachChild.info.getter(a1);
  (*(v24 + 16))(v27, v1, a1);
  v29 = *(a1 + 17);
  v30 = *(*v28 + 200);
  swift_beginAccess();
  v31 = *(v28 + v30);
  v32 = *(a1 + 1);
  *&v33 = v16;
  *(&v33 + 1) = *(a1 + 5);
  v99 = v33;
  v100 = v32;

  v101 = v100;
  v102 = v99;
  v99 = *(a1 + 3);
  v103 = v99;
  v34 = type metadata accessor for ForEachState.Item(0, &v101);
  v35 = *(&v100 + 1);
  MEMORY[0x193ABE750](v104, &v27[v29], v31, *(&v100 + 1), v34, v99);
  (*(*(v35 - 8) + 8))(&v27[v29], v35);
  v36 = v104[0];
  if (!v104[0])
  {
    swift_endAccess();
  }

  v37 = swift_endAccess();
  v38 = v28;
  if (*&v36[*(*v36 + 216)] != *(v28 + *(*v28 + 240)))
  {
  }

  *&v100 = v16;
  *&v99 = v17;
  v88 = &v83;
  MEMORY[0x1EEE9AC00](v37);
  v87 = (&v83 - 4);
  *(&v83 - 2) = v28;
  *(&v83 - 1) = v36;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v39 = static ObservationCenter._current;
  swift_beginAccess();
  v40 = pthread_getspecific(v39[2]);
  v41 = v96;
  v42 = v93;
  v43 = v94;
  if (!v40)
  {
    v44 = swift_slowAlloc();
    pthread_setspecific(v39[2], v44);
    *(&v102 + 1) = type metadata accessor for ObservationCenter();
    *&v101 = v39[3];
    outlined init with take of Any(&v101, v44);
    v43 = v94;

    v40 = v44;
  }

  outlined init with copy of Any(v40, &v101);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v45 = v104[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_23;
  }

  v83 = v5;
  v84 = CurrentAttribute;
  v86 = v38;
  swift_beginAccess();
  v85 = *(v45 + 24);
  *(v45 + 24) = MEMORY[0x1E69E7CC0];
  v47 = *(v41 + 7);
  v94 = v3;
  v48 = v47(v42, 1, 1, v3);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v100;
  *(&v83 - 4) = v100;
  *(&v83 - 3) = partial apply for closure #1 in ForEachChild.updateValue();
  *(&v83 - 2) = v87;
  v50 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  v51 = v41;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, (&v83 - 6), v89, v50, v49, MEMORY[0x1E69E7288], v104);
  v89 = 0;
  v52 = v99;
  v53 = v49;
  v3 = *(v99 + 32);
  (v3)(v97, v43, v53);
  v54 = v95;
  outlined init with take of ObservationTracking._AccessList?(v42, v95);
  v55 = v90;
  outlined init with copy of ObservationTracking._AccessList?(v54, v90);
  v56 = v94;
  if ((*(v51 + 6))(v55, 1, v94) != 1)
  {
    v60 = v92;
    v93 = *(v51 + 4);
    v93(v92, v55, v56);
    (*(v51 + 2))(v91, v60, v56);
    v39 = *(v45 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + 24) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_14:
      v58 = v100;
      v63 = v39[2];
      v62 = v39[3];
      v87 = v3;
      if (v63 >= v62 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v39);
      }

      v39[2] = v63 + 1;
      v64 = v39 + ((v96[80] + 32) & ~v96[80]) + *(v96 + 9) * v63;
      v65 = v96;
      v66 = v94;
      v93(v64, v91, v94);
      *(v45 + 24) = v39;
      v51 = v65;
      (*(v65 + 1))(v92, v66);
      v52 = v99;
      v57 = v95;
      v3 = v87;
      goto LABEL_17;
    }

LABEL_23:
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    *(v45 + 24) = v39;
    goto LABEL_14;
  }

  outlined destroy of ObservationTracking._AccessList?(v54);
  v57 = v55;
  v58 = v100;
LABEL_17:
  outlined destroy of ObservationTracking._AccessList?(v57);
  (v3)(v98, v97, v58);
  v67 = *(v45 + 24);
  v68 = *(v67 + 16);
  if (v68)
  {
    v96 = v36;
    v97 = a1;
    v70 = *(v51 + 2);
    v69 = v51 + 16;
    *&v100 = v70;
    v71 = v67 + ((v69[64] + 32) & ~v69[64]);
    v72 = v58;
    v73 = *(v69 + 7);
    v74 = (v69 - 8);
    v95 = v67;

    v75 = v84;
    v76 = v94;
    v77 = v83;
    do
    {
      (v100)(v77, v71, v76);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v75, v77);
      (*v74)(v77, v76);
      v71 += v73;
      --v68;
    }

    while (v68);

    v52 = v99;
    v58 = v72;
    a1 = v97;
  }

  *(v45 + 24) = v85;

  v79 = MEMORY[0x1EEE9AC00](v78);
  *(&v83 - 2) = a1;
  swift_getWitnessTable(protocol conformance descriptor for ForEachChild<A, B, C>, a1, v79);
  *(&v83 - 1) = v80;
  v81 = v98;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v98, partial apply for closure #1 in StatefulRule.value.setter, (&v83 - 4), v58, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v82);

  return (*(v52 + 8))(v81, v58);
}

uint64_t outlined init with take of LinkDestination.Configuration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 8 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
      v18 = *(*(v17 - 8) + 72);
      v19 = v18 * v3;
      result = v16 + v18 * v3;
      v20 = v18 * v6;
      v21 = v16 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v2;
    v29 = v4;
    do
    {
      v30 = 20 * v6;
      v9 = *(v2 + 48) + 20 * v6;
      v10 = *v9;
      v11 = *(v9 + 4);
      v12 = *(v9 + 8);
      v13 = *(v9 + 12);
      v31 = *(v9 + 17);
      v14 = v7;
      v15 = v3;
      v16 = *(v9 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v13);
      v17 = v16;
      v3 = v15;
      v7 = v14;
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v31);
      result = Hasher._finalize()();
      v18 = result & v14;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          v2 = v28;
          v4 = v29;
          goto LABEL_4;
        }

        v2 = v28;
        if (v3 >= v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = v28;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = v19 + 20 * v3;
          v21 = (v19 + v30);
          if (20 * v3 < v30 || v20 >= v21 + 20 || v3 != v6)
          {
            v22 = *v21;
            *(v20 + 16) = *(v21 + 4);
            *v20 = v22;
          }

          v23 = *(v2 + 56);
          result = v23 + (v3 << 7);
          v24 = (v23 + (v6 << 7));
          v4 = v29;
          if (v3 != v6 || result >= v24 + 128)
          {
            result = memmove(result, v24, 0x80uLL);
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      v4 = v29;
LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 640 * v3;
        v15 = (v14 + 640 * v6);
        if (640 * v3 < (640 * v6) || result >= v15 + 640 || v3 != v6)
        {
          result = memmove(result, v15, 0x280uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t destroy for ObservationGraphMutation(void *a1)
{
}

uint64_t outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v19 = v11;
LABEL_13:
    v21 = __clz(__rbit64(v9)) | (v19 << 6);
    v22 = *(a1 + 56);
    v43 = *(*(a1 + 48) + 8 * v21);
    v44 = *(v22 + 16 * v21);
    swift_unknownObjectRetain();

    a2(&v41, &v43);

    swift_unknownObjectRelease();
    v23 = v41;
    v40 = v42;
    v24 = *v45;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a4 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {
      v12 = 16 * v26;
      v13 = (v33[7] + 16 * v26);
      v14 = *v13;
      v15 = v13[1];
      swift_unknownObjectRetain();

      v17 = specialized Set.union<A>(_:)(v16, v15);

      swift_unknownObjectRelease();
      v18 = (v33[7] + v12);
      *v18 = v14;
      v18[1] = v17;

      swift_unknownObjectRelease();
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      *(v33[7] + 16 * v26) = v40;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v19;
  }

  v20 = v11;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v19);
    ++v20;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  swift_unknownObjectRetain();

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ObservationEntry>, MEMORY[0x1E69E5FE0], &type metadata for ObservationEntry, MEMORY[0x1E69E5FE8]);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        swift_unknownObjectRetain();
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

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key, &type metadata for Spacing.Key, &type metadata for Spacing.Value);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v26 + 32) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 40 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *(v21 + 32);
      v23 = *(v4 + 48) + v17;
      v24 = *v21;
      v25 = *(v21 + 16);
      *v23 = v19;
      *(v23 + 8) = v18;
      v26 = *(v4 + 56) + v20;
      *v26 = v24;
      *(v26 + 16) = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6530]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue, outlined init with take of AnyTrackedValue);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<CachedVectorImageContents.CacheKey, CGImageRef>, type metadata accessor for CGImageRef, lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey, &type metadata for CachedVectorImageContents.CacheKey);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

{
  v1 = v0;
  v2 = type metadata accessor for NamedImage.BitmapKey(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>(0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = *(v4 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v27 = v4;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = v28;
        v23 = *(v29 + 72) * v21;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v4 + 48) + v23, v28, type metadata accessor for NamedImage.BitmapKey);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(*(v4 + 56) + 96 * v21, v31, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
        v24 = v30;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v22, *(v30 + 48) + v23, type metadata accessor for NamedImage.BitmapKey);
        v4 = v27;
        _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v31, *(v24 + 56) + 96 * v21, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for _ContiguousArrayStorage<Any>);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v6 = v30;
        goto LABEL_21;
      }

      v20 = *(v8 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
}

{
  v1 = v0;
  v2 = type metadata accessor for NamedImage.VectorKey(0);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>(0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v22 = v1;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v11 << 6);
      v20 = *(v23 + 72) * v19;
      outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v5 + 48) + v20, v4, type metadata accessor for NamedImage.VectorKey);
      v19 *= 88;
      outlined init with copy of NamedImage.VectorInfo(*(v5 + 56) + v19, v24);
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v4, *(v7 + 48) + v20, type metadata accessor for NamedImage.VectorKey);
      outlined init with take of NamedImage.VectorInfo(v24, *(v7 + 56) + v19);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v18 = *(v5 + 64 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<CFStringRef, Any>(0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Font.RatioKey, CGFloat>, lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey, &type metadata for Font.RatioKey, MEMORY[0x1E69E7DE0]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  v28 = type metadata accessor for URL();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>(0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v30 + 32;
    v25[2] = v30 + 16;
    v26 = v3;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v30;
        v21 = *(v30 + 72) * v19;
        v23 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v21, v28);
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v3 + 56) + 8 * v19, v32, type metadata accessor for WeakBox<CUICatalog>);
        v24 = v29;
        (*(v20 + 32))(*(v29 + 48) + v21, v23, v22);
        v3 = v26;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v32, *(v24 + 56) + 8 * v19, type metadata accessor for WeakBox<CUICatalog>);
        v14 = v31;
      }

      while (v31);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v5 = v29;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v31 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ColorCacheKey, NamedColorInfo>, lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey, &type metadata for ColorCacheKey, &type metadata for NamedColorInfo);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v6 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 1);
        v20 = *(v18 + 2);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v18 + 24);
        v25 = *(v4 + 48) + 32 * v17;
        *v25 = *v18;
        *(v25 + 1) = v19;
        *(v25 + 2) = v20;
        *(v25 + 8) = v21;
        *(v25 + 16) = v22;
        *(v25 + 24) = v24;
        *(*(v4 + 56) + 8 * v17) = v23;
        v26 = v23;

        v27 = v24;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>, type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria), lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom, &type metadata for Solarium.EnablementIdiom);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CUIDesignLibraryCacheKey, CUIDesignLibraryCacheKey.Entry>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey, &type metadata for CUIDesignLibraryCacheKey, &type metadata for CUIDesignLibraryCacheKey.Entry);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v29 + 20) = v26)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 9);
      v22 = *(v18 + 10);
      v23 = *(v18 + 16);
      v24 = *(v2 + 56) + v17;
      v25 = *(v24 + 16);
      v26 = *(v24 + 20);
      v27 = *(v4 + 48) + v17;
      v28 = *v24;
      *v27 = v19;
      *(v27 + 8) = v20;
      *(v27 + 9) = v21;
      *(v27 + 10) = v22;
      *(v27 + 16) = v23;
      v29 = *(v4 + 56) + v17;
      *v29 = v28;
      *(v29 + 16) = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DynamicTypeSize, CGFloat>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata for DynamicTypeSize, MEMORY[0x1E69E7DE0]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UnsafeRawPointer, String>, MEMORY[0x1E69E6270], MEMORY[0x1E69E6158], MEMORY[0x1E69E6278]);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<ConstantKey, AGAttribute>, type metadata accessor for AGAttribute, lazy protocol witness table accessor for type ConstantKey and conformance ConstantKey, &type metadata for ConstantKey);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>(0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        v22 = *(*(v5 + 48) + 8 * v20);
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v5 + 56) + v21, v4, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
        *(*(v7 + 48) + 8 * v20) = v22;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v4, *(v7 + 56) + v21, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>(0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(*(v2 + 56) + 4 * v14);
      v19 = *(v4 + 48) + 24 * v14;
      v20 = *v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 20);
      *(v19 + 22) = *(v17 + 22);
      *(v19 + 20) = v22;
      *(v19 + 16) = v21;
      *v19 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, _DisplayList_StableIdentity>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity, &type metadata for _DisplayList_Identity, &type metadata for _DisplayList_StableIdentity);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 16);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Int>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6530], MEMORY[0x1E69E69C0]);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6168]);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UUID, NamedImage.DecodedInfo>(0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = (v5 + 64);
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, v36, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v43 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    v39 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v41;
        v22 = v42;
        v23 = *(v42 + 72) * v20;
        v24 = v40;
        (*(v42 + 16))(v40, *(v5 + 48) + v23, v41);
        v25 = *(v5 + 56);
        v26 = 48 * v20;
        v27 = v25 + 48 * v20;
        v28 = *v27;
        v44 = *(v27 + 16);
        v29 = *(v27 + 32);
        v30 = *(v27 + 40);
        v31 = v43;
        v32 = *(v22 + 32);
        LOBYTE(v22) = *(v27 + 8);
        v32(*(v43 + 48) + v23, v24, v21);
        v33 = *(v31 + 56) + v26;
        v5 = v39;
        *v33 = v28;
        *(v33 + 8) = v22;
        *(v33 + 16) = v44;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        outlined copy of GraphicsImage.Contents(v28, v22);
        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v43;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_21;
      }

      v19 = *(v36 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }
}

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Int, Any>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>(0);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>, MEMORY[0x1E69E6530], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6540]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DynamicPropertyCache.Fields>, MEMORY[0x1E69E5FE0], &type metadata for DynamicPropertyCache.Fields, MEMORY[0x1E69E5FE8]);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LODWORD(v18) = *(v18 + 20);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v18;
        outlined copy of DynamicPropertyCache.Fields.Layout(v19, v20, v21);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6810], MEMORY[0x1E69E5FE8]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, Int>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6530], MEMORY[0x1E69E7678]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, &type metadata for LazyLayoutCacheChildren);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v2 + 56) + v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v24 = (*(v4 + 56) + v17);
        *v24 = v21;
        v24[1] = v22;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>(0);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v19);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>(0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>, MEMORY[0x1E69E6158], &type metadata for AttributeInfoTrace.History, MEMORY[0x1E69E6168]);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 12;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 8);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 8) = v23;
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>, type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item>, type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>, type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>, type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v4 + 48) + 24 * v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E7668], MEMORY[0x1E69E5FE8]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>(0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        memcpy(__dst, (*(v2 + 56) + 640 * v17), 0x27CuLL);
        *(*(v4 + 48) + 8 * v17) = v18;
        memcpy((*(v4 + 56) + 640 * v17), __dst, 0x27CuLL);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v19, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, outlined init with take of AnyTrackedValue);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>(0);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 12);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        v24 = *(v18 + 8);
        *v23 = *v18;
        *(v23 + 8) = v24;
        *(v23 + 12) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        outlined copy of Material.ID(v19, v24);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>(0);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 12);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 16 * v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 12) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        outlined copy of Material.ID(v19, v23);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>(0);
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        LODWORD(v24) = *(v24 + 8);
        v26 = *(v4 + 48) + v18;
        v27 = *(v19 + 32);
        *v26 = *v19;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v27;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v24;
        outlined copy of ResolvedIDs.Key(v20, v21, v22, v23, v27);
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

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>(0);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, Int>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6530]);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v4 + 48) + 24 * v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Int>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6530]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AnyFontModifier>, type metadata accessor for AnyFontModifier, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyFontModifier>, type metadata accessor for AnyFontModifier, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
}

{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v4 + 56) + v23, v26, type metadata accessor for LocalizedStringKey.FormatArgument);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v22, *(v24 + 56) + v23, type metadata accessor for LocalizedStringKey.FormatArgument);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_21;
      }

      v19 = *(v4 + 64 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>, MEMORY[0x1E69E5FE0], &type metadata for AttributedString.Keys, MEMORY[0x1E69E5FE8]);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>(0);
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
        v18 = 16 * v17;
        v20 = *(*(v2 + 48) + 16 * v17);
        v19 = 40 * v17;
        outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v20;
        outlined init with take of AnyTrackedValue(v21, *(v4 + 56) + v19);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.CallbackKey, RBDisplayListContents>, type metadata accessor for RBDisplayListContents, lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey, &type metadata for DisplayList.GraphicsRenderer.Cache.CallbackKey);
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        swift_unknownObjectRetain();
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

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>(0);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 10);
        v21 = *(v18 + 8);
        v22 = *(v18 + 11);
        LOBYTE(v18) = *(v18 + 13);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 16 * v17;
        *v24 = v19;
        *(v24 + 8) = v21;
        *(v24 + 10) = v20;
        *(v24 + 11) = v22;
        *(v24 + 13) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;
        v25 = v23;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(0);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<EventID, EventType>(0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        outlined init with take of AnyTrackedValue(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, &type metadata for ViewIdentity, &type metadata for GlassContainer.ItemData);
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *(v20 + 32);
        v22 = *(v20 + 16);
        v27 = *v20;
        v28 = v22;
        v29 = v21;
        *(*(v4 + 48) + v18) = v19;
        v23 = *(v4 + 56) + v17;
        v24 = v27;
        v25 = v28;
        *(v23 + 32) = v29;
        *v23 = v24;
        *(v23 + 16) = v25;
        outlined init with copy of GlassContainer.ItemData(&v27, v26);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7668], MEMORY[0x1E69E6168]);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollEdgeEffectTag.ID, Int>, lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6530]);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>, type metadata accessor for LazyLayoutCacheItem, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>, MEMORY[0x1E69E6530], &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6540]);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = v18[1];
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyAccessibilityPropertiesEntry>, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry, &protocol descriptor for AnyAccessibilityPropertiesEntry, outlined init with take of _ViewList_Elements);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>(0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>(0);
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v18;
        *(*(v4 + 56) + 8 * v17) = v22;
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

{
  v1 = v0;
  v2 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AccessibilityCustomAttributes.Value>, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = (*(v4 + 48) + 16 * v20);
        v24 = v4;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v22 + v28, v33, type metadata accessor for AccessibilityCustomAttributes.Value);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v4 = v24;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v27, *(v29 + 56) + v28, type metadata accessor for AccessibilityCustomAttributes.Value);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v6 = v35;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ForwardedEventDispatcher>, &lazy cache variable for type metadata for ForwardedEventDispatcher, &protocol descriptor for ForwardedEventDispatcher, outlined init with take of _ViewList_Elements);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, Int>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6530]);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ForegroundLayerLevel, _ColorMatrix>, lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel, &type metadata for _ForegroundLayerLevel, &type metadata for _ColorMatrix);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *v26 = v25)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = *(*(v2 + 48) + 4 * v14);
      v19 = 80 * v14;
      v20 = (*(v2 + 56) + v19);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v25 = *v20;
      v24 = v20[1];
      *(*(v4 + 48) + v17) = v18;
      v26 = (*(v4 + 56) + v19);
      v26[3] = v22;
      v26[4] = v23;
      v26[1] = v24;
      v26[2] = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, &type metadata for EventBinding);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>(0);
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 32;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 24);
        v27 = *(v24 + 28);
        v28 = *(v4 + 48) + v18;
        v29 = *(v24 + 8);
        v30 = *(v19 + 32);
        *v28 = *v19;
        *(v28 + 8) = v21;
        *(v28 + 16) = v22;
        *(v28 + 24) = v23;
        *(v28 + 32) = v30;
        v31 = *(v4 + 56) + v17;
        *v31 = v25;
        *(v31 + 8) = v29;
        *(v31 + 24) = v26;
        *(v31 + 28) = v27;
        outlined copy of GlassContainer.Entry.ModelID(v20, v21, v22, v23, v30);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Axis, FocusableFillerBounds.Metrics>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, &type metadata for FocusableFillerBounds.Metrics);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, PinnedSection>, MEMORY[0x1E69E7668], &type metadata for PinnedSection, MEMORY[0x1E69E7678]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *v20 = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 6));
      v18 = v17[1];
      *v21 = v17[2];
      *&v21[9] = *(v17 + 41);
      v19 = *v17;
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = (*(v4 + 56) + (v14 << 6));
      *(v20 + 41) = *&v21[9];
      v20[1] = v18;
      v20[2] = *v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, SymbolRenderer.CachedResolvedSymbol>, MEMORY[0x1E69E69B8], &type metadata for SymbolRenderer.CachedResolvedSymbol, MEMORY[0x1E69E69C0]);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v25);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(v4 + 48) + 40 * v17;
        v21 = *v18;
        v22 = v26;
        v23 = v25[1];
        *v20 = v25[0];
        *(v20 + 16) = v23;
        *(v20 + 32) = v22;
        v24 = *(v4 + 56) + 24 * v17;
        *v24 = v21;
        *(v24 + 16) = v19;
        swift_unknownObjectRetain();
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewInfo);
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
        v18 = 20 * v17;
        v19 = *(v2 + 48) + 20 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v17 <<= 7;
        v22 = (*(v2 + 56) + v17);
        v23 = *v19;
        v24 = v22[7];
        v26 = v22[4];
        v25 = v22[5];
        v45 = v22[6];
        v46 = v24;
        v43 = v26;
        v44 = v25;
        v28 = *v22;
        v27 = v22[1];
        v29 = v22[3];
        v41 = v22[2];
        v42 = v29;
        v39 = v28;
        v40 = v27;
        v30 = *(v4 + 48) + v18;
        *v30 = v23;
        *(v30 + 16) = v20;
        *(v30 + 17) = v21;
        v31 = (*(v4 + 56) + v17);
        v32 = v39;
        v33 = v40;
        v34 = v42;
        v31[2] = v41;
        v31[3] = v34;
        *v31 = v32;
        v31[1] = v33;
        v35 = v43;
        v36 = v44;
        v37 = v46;
        v31[6] = v45;
        v31[7] = v37;
        v31[4] = v35;
        v31[5] = v36;
        outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v39, &v38);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<OpaquePointer, DisplayList.ViewUpdater.ViewCache.Key>, MEMORY[0x1E69E6B70], &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6B78]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 20 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 17);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 20 * v14;
      *v21 = v20;
      *(v21 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>(0);
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

{
  v1 = v0;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v31 = v2;
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v30 = v28 - v3;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>(0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28[0] = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v28[1] = v33 + 32;
    v28[2] = v33 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v33;
      v23 = *(v33 + 72) * v19;
      v25 = v30;
      v24 = v31;
      (*(v33 + 16))(v30, v20 + v23, v31);
      v26 = v32;
      *(*(v32 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      v27 = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28[0];
        v6 = v32;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<AttributedString.AnyAttribute, AttributedString.Keys>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, &type metadata for AttributedString.Keys);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        outlined copy of AttributedString.AnyAttribute(v19, *(&v19 + 1));
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>(0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 8 * (v13 | (v8 << 6));
      v17 = *(*(v2 + 48) + v16);
      outlined init with copy of WeakBox<AnyLocationBase>(*(v2 + 56) + v16, v18);
      *(*(v4 + 48) + v16) = v17;
      _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v18, *(v4 + 56) + v16, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>(0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role, &type metadata for ScrollAnchorStorage.Role, &type metadata for UnitPoint);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewCache.AnimatorInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.AnimatorInfo);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v18 = 20 * v17;
        v19 = *(v2 + 48) + 20 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v29 = *v19;
        v22 = 56 * v17;
        outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(*(v2 + 56) + 56 * v17, v30);
        v23 = *(v4 + 48) + v18;
        *v23 = v29;
        *(v23 + 16) = v20;
        *(v23 + 17) = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v31;
        v26 = v30[2];
        v27 = v30[1];
        *v24 = v30[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>(0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DisplayList.ViewUpdater.ViewCache.AsyncValues>, MEMORY[0x1E69E5FE0], &type metadata for DisplayList.ViewUpdater.ViewCache.AsyncValues, MEMORY[0x1E69E5FE8]);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & AnyViewFactory.Type>, type metadata accessor for Decodable & AnyViewFactory.Type, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CAHostingLayerEvent.MouseButton, Int>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6530]);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBindingBridge.TrackedEventState>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, &type metadata for EventBindingBridge.TrackedEventState);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v24 + 8) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v2 + 56) + v17;
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 8);
      v23 = (*(v4 + 48) + v17);
      *v23 = v20;
      v23[1] = v19;
      v24 = *(v4 + 56) + v17;
      *v24 = v22;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewDebug.Property, Any>, lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property, &type metadata for _ViewDebug.Property, MEMORY[0x1E69E7CA0] + 8);
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
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
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

{
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, &type metadata for CanvasSymbols.Child);
  v30 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = v18[1];
        v16 *= 48;
        v20 = *(v1 + 56) + v16;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 40);
        v26 = (*(v3 + 48) + v17);
        v27 = *(v20 + 32);
        *v26 = *v18;
        v26[1] = v19;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v27;
        *(v28 + 40) = v25;

        v29 = v22;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, CGSize>, type metadata accessor for CGSize, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v22) = v24)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + 32 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      v22 = 16 * v14;
      v23 = *(v4 + 48) + v17;
      v24 = *(*(v2 + 56) + v22);
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      *(v23 + 24) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<TintPlacement, AnyShapeStyle>, lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement, &type metadata for TintPlacement, &type metadata for AnyShapeStyle);
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
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
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

{
  specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
}