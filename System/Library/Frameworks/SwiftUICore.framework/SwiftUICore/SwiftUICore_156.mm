uint64_t CornerMaskingConfiguration.replacing(corner:with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[4];
  v8 = *(a2 + 40);
  v9 = a2[6];
  v10 = *v3;
  v11 = *(a2 + 1);
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v14 = *(v3 + 48);
  v15 = *(v3 + 56);
  v16 = *(v3 + 64);
  v17 = *(v3 + 72);
  v18 = *(v3 + 88);
  v19 = *(v3 + 96);
  v20 = *(v3 + 104);
  v21 = *(v3 + 112);
  v22 = *(v3 + 120);
  v23 = *(v3 + 128);
  v24 = *(v3 + 144);
  v25 = *(v3 + 152);
  v26 = *(v3 + 160);
  result = *(v3 + 168);
  v28 = *(v3 + 176);
  v29 = *(v3 + 184);
  v30 = *(v3 + 200);
  v31 = *(v3 + 208);
  v32 = *(v3 + 216);
  if (v4 > 1)
  {
    v40[0] = *(v3 + 8);
    v39[0] = *(v3 + 40);
    v36[0] = *(v3 + 120);
    if (v4 == 2)
    {
      v38[0] = v6;
      v16 = v6;
      v37[0] = v8;
      v19 = v8;
      v6 = v40[0];
      v35[0] = *(v3 + 152);
      v8 = v39[0];
      v15 = v5;
      v34[0] = *(v3 + 176);
      v18 = v7;
      v20 = v9;
      v17 = v11;
      v33[0] = *(v3 + 208);
    }

    else
    {
      v34[0] = v6;
      v28 = v6;
      v33[0] = v8;
      v31 = v8;
      v6 = v40[0];
      v35[0] = *(v3 + 152);
      v8 = v39[0];
      result = v5;
      v38[0] = *(v3 + 64);
      v30 = v7;
      v32 = v9;
      v29 = v11;
      v37[0] = *(v3 + 96);
    }
  }

  else
  {
    if (v4)
    {
      v40[0] = *(v3 + 8);
      v39[0] = *(v3 + 40);
      v36[0] = v6;
      v35[0] = v8;
      v22 = v6;
      v38[0] = *(v3 + 64);
      v25 = v8;
      v6 = v40[0];
      v37[0] = *(v3 + 96);
      v8 = v39[0];
      v21 = v5;
      v34[0] = *(v3 + 176);
      v24 = v7;
      v26 = v9;
      v23 = v11;
    }

    else
    {
      v40[0] = v6;
      v39[0] = v8;
      v36[0] = *(v3 + 120);
      v35[0] = *(v3 + 152);
      v38[0] = *(v3 + 64);
      v37[0] = *(v3 + 96);
      v10 = v5;
      v34[0] = *(v3 + 176);
      v13 = v7;
      v14 = v9;
      v12 = v11;
    }

    v33[0] = *(v3 + 208);
  }

  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 9) = *v40;
  *(a3 + 12) = *&v40[3];
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v8;
  *(a3 + 41) = *v39;
  *(a3 + 44) = *&v39[3];
  *(a3 + 48) = v14;
  *(a3 + 56) = v15;
  *(a3 + 64) = v16;
  *(a3 + 68) = *&v38[3];
  *(a3 + 65) = *v38;
  *(a3 + 72) = v17;
  *(a3 + 88) = v18;
  *(a3 + 96) = v19;
  *(a3 + 100) = *&v37[3];
  *(a3 + 97) = *v37;
  *(a3 + 104) = v20;
  *(a3 + 112) = v21;
  *(a3 + 120) = v22;
  *(a3 + 121) = *v36;
  *(a3 + 124) = *&v36[3];
  *(a3 + 128) = v23;
  *(a3 + 144) = v24;
  *(a3 + 152) = v25;
  *(a3 + 156) = *&v35[3];
  *(a3 + 153) = *v35;
  *(a3 + 160) = v26;
  *(a3 + 168) = result;
  *(a3 + 176) = v28;
  *(a3 + 180) = *&v34[3];
  *(a3 + 177) = *v34;
  *(a3 + 184) = v29;
  *(a3 + 200) = v30;
  *(a3 + 208) = v31;
  *(a3 + 212) = *&v33[3];
  *(a3 + 209) = *v33;
  *(a3 + 216) = v32;
  return result;
}

double CornerMaskingConfiguration.CornerStyle.animatableData.getter()
{
  v1 = v0[2];
  v2 = *(v0 + 6);
  v7 = *(v0 + 3);
  v8 = v1;
  v6 = v2;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v3 = MEMORY[0x1E69E7DE0];
  v4 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v4(&v6, MEMORY[0x1E69E7DE0]);
  v4(&v7, v3);
  v4(&v8, v3);
  return v1;
}

void CornerMaskingConfiguration.CornerStyle.animatableData.setter(double a1, double a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 48) = a3;
  v4 = a1;
  if (a2 == 1.0)
  {
    v4 = 0.0;
  }

  *v3 = v4;
  *(v3 + 8) = a2 == 1.0;
  *(v3 + 32) = a3;
  *(v3 + 40) = 0;
}

uint64_t (*CornerMaskingConfiguration.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x208uLL);
  }

  *a1 = v3;
  *(v3 + 512) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  *(v3 + 128) = v1[8];
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[13];
  *(v3 + 192) = v1[12];
  *(v3 + 208) = v13;
  *(v3 + 160) = v11;
  *(v3 + 176) = v12;
  CornerMaskingConfiguration.animatableData.getter((v3 + 416));
  return CornerMaskingConfiguration.animatableData.modify;
}

void CornerMaskingConfiguration.animatableData.modify(_OWORD **a1, char a2)
{
  v2 = *a1;
  v3 = 20;
  if (a2)
  {
    v3 = 14;
  }

  v4 = &v2[v3];
  v5 = v2[29];
  v4[2] = v2[28];
  v4[3] = v5;
  v6 = v2[31];
  v4[4] = v2[30];
  v4[5] = v6;
  v7 = v2[27];
  *v4 = v2[26];
  v4[1] = v7;
  CornerMaskingConfiguration.animatableData.setter(&v2[v3]);

  free(v2);
}

Swift::Int CornerMaskingConfiguration.CornerStyle.Representation.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x193AC11E0](v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CornerMaskingConfiguration.CornerStyle.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CornerMaskingConfiguration.CornerStyle.Representation()
{
  if (v0[1])
  {
    return MEMORY[0x193AC11A0](1);
  }

  v2 = *v0;
  MEMORY[0x193AC11A0](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x193AC11E0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CornerMaskingConfiguration.CornerStyle.Representation(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x193AC11E0](v4);
  }

  return Hasher._finalize()();
}

void static CornerMaskingConfiguration.CornerStyle.capsule.getter(uint64_t a1@<X8>)
{
  *a1 = 0x7FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0x7FF0000000000000;
  *(a1 + 40) = 0;
}

uint64_t key path getter for CornerMaskingConfiguration.CornerStyle.animatableData : CornerMaskingConfiguration.CornerStyle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v5 = a1[6];
  v10 = a1[3];
  v4 = v10;
  v11 = v3;
  v9 = v5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v6 = MEMORY[0x1E69E7DE0];
  v7 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v7(&v9, MEMORY[0x1E69E7DE0]);
  v7(&v10, v6);
  result = (v7)(&v11, v6);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void (*CornerMaskingConfiguration.CornerStyle.animatableData.modify(void *a1))(double **a1)
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
  v3[6] = v1;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v3[3] = v5;
  v8 = v3 + 3;
  v3[4] = v6;
  v9 = v3 + 4;
  v3[5] = v7;
  v10 = v3 + 5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v11 = MEMORY[0x1E69E7DE0];
  v12 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v12(v10, MEMORY[0x1E69E7DE0]);
  v12(v9, v11);
  v12(v8, v11);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return CornerMaskingConfiguration.CornerStyle.animatableData.modify;
}

void CornerMaskingConfiguration.CornerStyle.animatableData.modify(double **a1)
{
  v1 = *a1;
  v2 = *(v1 + 6);
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *v1;
  if (v3 == 1.0)
  {
    v5 = 0.0;
  }

  *(v2 + 16) = *v1;
  *(v2 + 24) = v3;
  *(v2 + 48) = v4;
  *v2 = v5;
  *(v2 + 8) = v3 == 1.0;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  free(v1);
}

uint64_t CornerMaskingConfiguration.CornerStyle.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 4);
  v4 = *(v0 + 40);
  v5 = v0[6];
  if (v0[1])
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    v6 = *v0;
    MEMORY[0x193AC11A0](0);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x193AC11E0](*&v7);
  }

  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (v1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v1;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v4)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
  }

  v11 = 0.0;
  if (v5 != 0.0)
  {
    v11 = v5;
  }

  return MEMORY[0x193AC11E0](*&v11);
}

Swift::Int CornerMaskingConfiguration.CornerStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
  }

  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v6)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x193AC11E0](v11);
  }

  v12 = 0.0;
  if (v7 != 0.0)
  {
    v12 = v7;
  }

  MEMORY[0x193AC11E0](*&v12);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CornerMaskingConfiguration.CornerStyle(uint64_t a1)
{
  Hasher.init(_seed:)();
  CornerMaskingConfiguration.CornerStyle.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for Animatable.animatableData.getter in conformance CornerMaskingConfiguration.CornerStyle(uint64_t a1@<X8>)
{
  *a1 = CornerMaskingConfiguration.CornerStyle.animatableData.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

double *protocol witness for Animatable.animatableData.setter in conformance CornerMaskingConfiguration.CornerStyle(double *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 2);
  *(v1 + 16) = *result;
  *(v1 + 24) = v3;
  *(v1 + 48) = v4;
  v5 = v2;
  if (v3 == 1.0)
  {
    v5 = 0;
  }

  *v1 = v5;
  *(v1 + 8) = v3 == 1.0;
  *(v1 + 32) = v4;
  *(v1 + 40) = 0;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CornerMaskingConfiguration.CornerStyle(void *a1))(void *a1)
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
  v2[4] = CornerMaskingConfiguration.CornerStyle.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

double protocol witness for Animatable.animatableData.getter in conformance CornerMaskingConfiguration@<D0>(_OWORD *a1@<X8>)
{
  CornerMaskingConfiguration.animatableData.getter(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CornerMaskingConfiguration(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x208uLL);
  }

  *a1 = v3;
  *(v3 + 512) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  *(v3 + 128) = v1[8];
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[13];
  *(v3 + 192) = v1[12];
  *(v3 + 208) = v13;
  *(v3 + 160) = v11;
  *(v3 + 176) = v12;
  CornerMaskingConfiguration.animatableData.getter((v3 + 416));
  return CornerMaskingConfiguration.animatableData.modify;
}

unint64_t *Edge.Corner.Style.init(_:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[4];
  if (result[1])
  {
    if (result[5])
    {
      v3 = 1;
      _Q2 = xmmword_18DDAB500;
      v5 = 0;
      v2 = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v3 = 1;
      __asm { FMOV            V2.2D, #1.0 }

      *&_Q2 = result[4];
      v5 = 0;
    }
  }

  else
  {
    v5 = *result;
    v3 = 0;
    if (result[5])
    {
      v6 = 1;
      _Q2 = *result;
      v2 = 0;
    }

    else
    {
      v6 = 0;
      _Q2 = *result;
    }
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = _Q2;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  *(a2 + 48) = v6;
  *(a2 + 56) = v2;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ContainerShapeKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = &type metadata for DefaultContainerShapeType;
  *(a1 + 8) = &protocol witness table for DefaultContainerShapeType;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  return result;
}

__n128 specialized CornerConfigurationShape_v1.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  LOBYTE(v14) = 0;
  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  *&v14 = v4;
  BYTE8(v14) = 0;
  v15 = *&v4;
  *&v16 = 0;
  BYTE8(v16) = 0;
  v17.n128_u64[0] = 0;
  v17.n128_f64[1] = v4;
  LOBYTE(v18) = 0;
  *(&v18 + 1) = v4;
  v19 = 0uLL;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = 0;
  *&v21 = v4;
  BYTE8(v21) = 0;
  v22 = *&v4;
  *&v23 = 0;
  BYTE8(v23) = 0;
  *&v24 = 0;
  *(&v24 + 1) = v4;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v4;
  v26 = 0uLL;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v14);
  v5 = v25;
  v6 = v27;
  *(a1 + 192) = v26;
  *(a1 + 208) = v6;
  v7 = v21;
  v8 = v23;
  v9 = v24;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 176) = v5;
  v10 = v19;
  v11 = v20;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  *(a1 + 224) = v28;
  *(a1 + 96) = v11;
  *(a1 + 112) = v7;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t _CornerConfigurationToRoundedRectangularShape.corners(in:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    (*(*(a4 + 32) + 16))(v8, *(a4 + 16));
  }

  else
  {
    (*(*(a4 + 32) + 24))(v8, *(a4 + 16), a1, a2);
  }

  type metadata accessor for CornerMaskingConfiguration?();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _CornerConfigurationToRoundedRectangularShape.corners(in:), 0, MEMORY[0x1E69E73E0], &type metadata for RoundedRectangularShapeCorners, v6, a5);
}

double _CornerConfigurationToRoundedRectangularShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(*(a1 + 24) + 8) + 24))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t _CornerConfigurationToRoundedRectangularShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*_CornerConfigurationToRoundedRectangularShape.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v9 = a2 + 16;
  v8 = *(a2 + 16);
  v10 = *(*(*(v9 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v7[3] = v12;
  v13 = *(v12 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v7[5] = v14;
  (*(v10 + 24))(v8, v10);
  return _CornerConfigurationToRoundedRectangularShape.animatableData.modify;
}

void _CornerConfigurationToRoundedRectangularShape.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _CornerConfigurationToRoundedRectangularShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _CornerConfigurationToRoundedRectangularShape<A>(void *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = _CornerConfigurationToRoundedRectangularShape.animatableData.modify(v4, a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

double protocol witness for Shape.path(in:) in conformance _CornerConfigurationToRoundedRectangularShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _CornerConfigurationToRoundedRectangularShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 Rectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = 0uLL;
  *&v13 = 0;
  BYTE8(v13) = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  BYTE8(v18) = 0;
  v19 = 0uLL;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v21 = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 protocol witness for CornerConfigurationShape_v1.corners.getter in conformance Rectangle@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = 0uLL;
  *&v13 = 0;
  BYTE8(v13) = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  BYTE8(v18) = 0;
  v19 = 0uLL;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v21 = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 RoundedRectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[1] < *v1)
  {
    v3 = v1[1];
  }

  *&v13 = v3;
  BYTE8(v13) = 0;
  v14 = *&v3;
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = v3;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = v3;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = v3;
  BYTE8(v20) = 0;
  v21 = *&v3;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = v3;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v3;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

__n128 Circle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0x7FF0000000000000;
  BYTE8(v11) = 0;
  *&v13 = 0;
  v12 = 0x7FF0000000000000uLL;
  BYTE8(v13) = 0;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = 0x7FF0000000000000;
  LOBYTE(v15) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0x7FF0000000000000;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0x7FF0000000000000;
  BYTE8(v18) = 0;
  *&v20 = 0;
  v19 = 0x7FF0000000000000uLL;
  BYTE8(v20) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0x7FF0000000000000;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0x7FF0000000000000;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 Circle.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  LOBYTE(v13) = 0;
  if (a2 >= a3)
  {
    a2 = a3;
  }

  *&v13 = a2 * 0.5;
  BYTE8(v13) = 0;
  v14 = COERCE_UNSIGNED_INT64(a2 * 0.5);
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = a2 * 0.5;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = a2 * 0.5;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = a2 * 0.5;
  BYTE8(v20) = 0;
  *&v21 = a2 * 0.5;
  *(&v21 + 1) = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = a2 * 0.5;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = a2 * 0.5;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

__n128 Capsule.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0x7FF0000000000000;
  BYTE8(v11) = 0;
  *&v13 = 0;
  v12 = 0x7FF0000000000000uLL;
  BYTE8(v13) = 0;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = 0x7FF0000000000000;
  LOBYTE(v15) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0x7FF0000000000000;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0x7FF0000000000000;
  BYTE8(v18) = 0;
  *&v20 = 0;
  v19 = 0x7FF0000000000000uLL;
  BYTE8(v20) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0x7FF0000000000000;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0x7FF0000000000000;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

_BYTE *closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(_BYTE *result)
{
  v1 = *result;
  if (*result && v1 != 1 && v1 != 2 && v1 != 3)
  {
    __break(1u);
  }

  return result;
}

__n128 RootContainerShape.overrideValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 RootContainerShape.overrideValue.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

double RootContainerShape.value.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 != 2)
  {
    v11 = *v1;
    v12 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v12;
    *(a1 + 32) = v3 & 1;
    return *&v11;
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v4 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_8:
    *(a1 + 32) = 1;
    *&v11 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return *&v11;
  }

  v5 = *(v4 + 208);

  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for RootContainerShapeProvider();
  (*(v5 + 16))(v18, v7, v7, ObjectType, v5);
  swift_unknownObjectRelease();
  v8 = v19;
  if (!v19)
  {
    outlined destroy of RootContainerShapeProvider?(v18);
    goto LABEL_8;
  }

  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v9 + 8))(v16, v8, v9);
  v10 = v17;
  v14 = v16[1];
  v15 = v16[0];
  __swift_destroy_boxed_opaque_existential_1(v18);
  *&v11 = v15;
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v10;
  return *&v11;
}

double protocol witness for static Rule.initialValue.getter in conformance RootContainerShape@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

BOOL specialized static CornerMaskingConfiguration.CornerStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (v3 == v8)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != 1 || v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 8))
    {
      return result;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 || v2 != v7)
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return v6 == *(a2 + 48);
}

uint64_t specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

void type metadata accessor for CornerMaskingConfiguration?()
{
  if (!lazy cache variable for type metadata for CornerMaskingConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CornerMaskingConfiguration?);
    }
  }
}

unint64_t type metadata accessor for RootContainerShapeProvider()
{
  result = lazy cache variable for type metadata for RootContainerShapeProvider;
  if (!lazy cache variable for type metadata for RootContainerShapeProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RootContainerShapeProvider);
  }

  return result;
}

uint64_t outlined destroy of RootContainerShapeProvider?(uint64_t a1)
{
  type metadata accessor for RootContainerShapeProvider?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for RootContainerShapeProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RootContainerShapeProvider?)
  {
    type metadata accessor for RootContainerShapeProvider();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RootContainerShapeProvider?);
    }
  }
}

void instantiation function for generic protocol witness table for ContainerRelativeShape._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void instantiation function for generic protocol witness table for _CornerConfigurationToRoundedRectangularShape<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>);
  *(a1 + 8) = v2;
}

void instantiation function for generic protocol witness table for _CornerConfigurationToRoundedRectangularShape<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>);
  *(a1 + 8) = v5;
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>, a2, WitnessTable);
  *(a1 + 16) = v6;
}

void lazy protocol witness table accessor for type RootContainerShape and conformance RootContainerShape()
{
  if (!lazy protocol witness table cache variable for type RootContainerShape and conformance RootContainerShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootContainerShape, &type metadata for RootContainerShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootContainerShape and conformance RootContainerShape);
  }
}

uint64_t getEnumTagSinglePayload for PartialContainerRelativeShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[240])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialContainerRelativeShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for CornerMaskingConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CornerMaskingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
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

  *(result + 224) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootContainerShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RootContainerShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerShapeEnvironment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerShapeEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation()
{
  if (!lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation)
  {
    swift_getWitnessTable(protocol conformance descriptor for CornerMaskingConfiguration.CornerStyle.Representation, &type metadata for CornerMaskingConfiguration.CornerStyle.Representation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation);
  }
}

uint64_t _ResolvedKeyframeTrackContent.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _ResolvedKeyframeTrackContent.Segment(0, a1, a2, a4);
  result = static Array._allocateUninitialized(_:)();
  *a3 = result;
  return result;
}

uint64_t _ResolvedKeyframeTrackContent.Segment.end.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear(0, v4, v5, a2);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v10 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring(0, v4, v5, v9);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v14 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic(0, v4, v5, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v34, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = v33;
      (*(v33 + 32))(v12, v21, v10);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(v35, v12, AssociatedTypeWitness);
      return (*(v26 + 8))(v12, v10);
    }

    else
    {
      (*(v31 + 32))(v8, v21, v32);
      v29 = swift_getAssociatedTypeWitness();
      return (*(*(v29 - 8) + 32))(v35, v8, v29);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v15 + 32))(v17, v21, v14);
    v28 = swift_getAssociatedTypeWitness();
    (*(*(v28 - 8) + 16))(v35, v17, v28);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v24 = swift_getAssociatedTypeWitness();
    return (*(*(v24 - 8) + 32))(v35, v21, v24);
  }
}

uint64_t MergedKeyframeTrackContent.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for MergedKeyframeTrackContent(0, v17);
  return (*(*(a5 - 8) + 32))(a8 + *(v15 + 60), a2, a5);
}

uint64_t KeyframeTrackContent<>._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 40))(a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t _ResolvedKeyframeTrackContent.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment(0, *(a2 + 16), *(a2 + 24), a4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v10 - v7, a1, v5, v6);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t _ResolvedKeyframeTrackContent.Cubic.init(to:startVelocity:endVelocity:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic(0, a4, a5, v15);
  v17 = v16[9];
  v18 = type metadata accessor for Optional();
  v19 = *(*(v18 - 8) + 32);
  v19(a6 + v17, a2, v18);
  result = (v19)(a6 + v16[10], a3, v18);
  *(a6 + v16[11]) = a7;
  return result;
}

uint64_t _ResolvedKeyframeTrackContent._Spring.init(to:spring:startVelocity:duration:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = *a2;
  v15 = *(a2 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v18 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring(0, a6, a7, v17);
  v19 = a8 + v18[9];
  *v19 = v24;
  *(v19 + 16) = v15;
  v20 = v18[10];
  v21 = type metadata accessor for Optional();
  result = (*(*(v21 - 8) + 32))(a8 + v20, a3, v21);
  v23 = a8 + v18[11];
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  return result;
}

__n128 _ResolvedKeyframeTrackContent.Linear.init(to:duration:timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(a2 + 16);
  v19 = *a2;
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v15 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear(0, a3, a4, v14);
  *(a5 + *(v15 + 36)) = a6;
  v16 = a5 + *(v15 + 40);
  result = v19;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v12;
  return result;
}

uint64_t CubicKeyframe.init(_:duration:startVelocity:endVelocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v60 = a3;
  v68 = a2;
  v65 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v51 - v21;
  v67 = AssociatedTypeWitness;
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v58 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic(0, a4, a5, v25);
  v56 = *(v58 - 8);
  v26 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v51 - v27;
  v28 = *(a5 + 24);
  v57 = v24;
  v63 = a1;
  v28(a4, a5, v26);
  v29 = v12;
  v53 = *(v12 + 16);
  v54 = v11;
  v53(v16, v68, v11);
  v30 = *(a4 - 8);
  v31 = 1;
  v52 = *(v30 + 48);
  v32 = v52(v16, 1, a4);
  v64 = a5;
  v62 = v29;
  v51 = v28;
  if (v32 == 1)
  {
    v33 = v29;
    v34 = v54;
    v35 = v54;
    v36 = v16;
    v37 = v66;
  }

  else
  {
    v37 = v66;
    (v28)(a4, a5);
    v31 = 0;
    v33 = v30;
    v35 = a4;
    v34 = v54;
    v36 = v16;
  }

  (*(v33 + 8))(v36, v35);
  v38 = *(v69 + 56);
  v69 += 56;
  v38(v37, v31, 1, v67);
  v40 = v60;
  v39 = v61;
  v53(v61, v60, v34);
  if (v52(v39, 1, a4) == 1)
  {
    v41 = *(v62 + 8);
    v41(v40, v34);
    v41(v68, v34);
    (*(v30 + 8))(v63, a4);
    v41(v39, v34);
    v42 = 1;
    v43 = v64;
    v44 = v59;
  }

  else
  {
    v44 = v59;
    v54 = v38;
    v45 = v34;
    v43 = v64;
    v51(a4, v64);
    v46 = *(v62 + 8);
    v46(v40, v45);
    v47 = v45;
    v38 = v54;
    v46(v68, v47);
    v48 = *(v30 + 8);
    v48(v63, a4);
    v48(v39, a4);
    v42 = 0;
  }

  v38(v44, v42, 1, v67);
  v49 = v55;
  _ResolvedKeyframeTrackContent.Cubic.init(to:startVelocity:endVelocity:duration:)(v57, v66, v44, a4, v43, v55, a7);
  return (*(v56 + 32))(v65, v49, v58);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance CubicKeyframe<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CubicKeyframe<A>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

uint64_t SpringKeyframe.init(_:duration:spring:startVelocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a5;
  v41 = a3;
  v42 = a2;
  v43 = a8;
  v46 = a1;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44 = &v34 - v17;
  v40 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v39 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring(0, a6, a7, v21);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v23 = &v34 - v22;
  v34 = *a4;
  v24 = *(a4 + 16);
  v25 = *(a7 + 24);
  v38 = v20;
  v45 = a7;
  v25(a6, a7);
  v47 = v34;
  v48 = v24;
  v26 = v35;
  v27 = v11;
  (*(v12 + 16))(v14);
  v28 = *(a6 - 8);
  if ((*(v28 + 48))(v14, 1, a6) == 1)
  {
    v29 = *(v12 + 8);
    v29(v26, v27);
    (*(v28 + 8))(v46, a6);
    v29(v14, v27);
    v30 = 1;
  }

  else
  {
    v25(a6, v45);
    (*(v12 + 8))(v26, v27);
    v31 = *(v28 + 8);
    v31(v46, a6);
    v31(v14, a6);
    v30 = 0;
  }

  v32 = v44;
  (*(v37 + 56))(v44, v30, 1, v40);
  _ResolvedKeyframeTrackContent._Spring.init(to:spring:startVelocity:duration:)(v38, &v47, v32, v42, v41 & 1, a6, v45, v23);
  return (*(v36 + 32))(v43, v23, v39);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance SpringKeyframe<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SpringKeyframe<A>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

void LinearKeyframe.init(_:duration:timingCurve:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v18 - v14;
  v16 = *(a2 + 32);
  (*(a4 + 24))(a3, a4, v13);
  (*(*(a3 - 8) + 8))(a1, a3);
  v17 = *a2;
  v19[1] = a2[1];
  v19[0] = v17;
  v20 = v16;
  _ResolvedKeyframeTrackContent.Linear.init(to:duration:timingCurve:)(v15, v19, a3, a4, a5, a6);
}

uint64_t CubicKeyframe._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, double), uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment(0, v6, v7, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = a3(0, v6, v7, v10);
  (*(*(v13 - 8) + 16))(v12, v4, v13);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for _ResolvedKeyframeTrackContent(0, v6, v7, v14);
  _ResolvedKeyframeTrackContent.append(_:)(v12, v15, v16, v17);
  return (*(v9 + 8))(v12, v8);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance LinearKeyframe<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LinearKeyframe<A>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

uint64_t MoveKeyframe._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment(0, v4, v5, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  (*(v5 + 24))(v4, v5, v8);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for _ResolvedKeyframeTrackContent(0, v4, v5, v11);
  _ResolvedKeyframeTrackContent.append(_:)(v10, v12, v13, v14);
  return (*(v7 + 8))(v10, v6);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance MoveKeyframe<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MoveKeyframe<A>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance MergedKeyframeTrackContent<A, B, C>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MergedKeyframeTrackContent<A, B, C>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance EmptyKeyframeTrackContent<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for EmptyKeyframeTrackContent<A>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

uint64_t ArrayKeyframeTrackContent._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v20 = a5;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v18 = v9;
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x193ABF2C0](v11, v12, v8);
  if (result)
  {
    v14 = 0;
    v15 = *(v20 + 48);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, a4);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v18 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v7 + 16))(v10, &v21, a4);
        result = swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v15(v19, a4, v20);
      (*(v7 + 8))(v10, a4);
      result = MEMORY[0x193ABF2C0](a2, a4);
      ++v14;
    }

    while (v17 != result);
  }

  return result;
}

void protocol witness for KeyframeTrackContent.body.getter in conformance ArrayKeyframeTrackContent<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ArrayKeyframeTrackContent<A, B>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>, a1);

  PrimitiveKeyframeTrackContent.body.getter(a1);
}

uint64_t default associated conformance accessor for KeyframeTrackContent.KeyframeTrackContent.Value: Animatable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for CubicKeyframe(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    v18 = *(v6 + 48);

    return v18(a1);
  }

  v10 = ((v9 + ((v9 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_27:
    if (v7)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v16 = v15 - 1;
  if (v11)
  {
    v16 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for CubicKeyframe(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!v8)
  {
    ++v9;
  }

  v12 = ((v9 + ((v9 + v10 + v11) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v15 = 0;
    v16 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (((v9 + ((v9 + v10 + v11) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v8 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_16:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
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
      v19 = *(v7 + 56);

      v19(a1, a2);
      return;
    }
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v12)
  {
    v18 = ~v8 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }
}

uint64_t getEnumTagSinglePayload for SpringKeyframe(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v7 + 7;
  v9 = v7 + 8;
  if (v6)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_30:
    v18 = *(v5 + 48);

    return v18(a1);
  }

  v10 = ((v9 + (((v8 & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 24) & ~*(v5 + 80))) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 <= 3)
  {
    v11 = ((a2 - v6 + 255) >> 8) + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v13 || (v14 = a1[v10]) == 0)
  {
LABEL_29:
    if (v6)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v15 = (v14 - 1) << (8 * v10);
  v16 = v10 > 3;
  if (v10 <= 3)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v20 = *a1;
  }

  else
  {
    v20 = *a1;
  }

  return v6 + (v20 | v17) + 1;
}

void storeEnumTagSinglePayload for SpringKeyframe(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v9 + 7;
  v11 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = v9 + 8;
  if (v8)
  {
    v12 = v10;
  }

  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v16 = 0;
    if (v8 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v8 >= a2)
    {
LABEL_16:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        }

        *&a1[v13] = 0;
      }

      else if (v16)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      if (!a2)
      {
        return;
      }

LABEL_31:
      v19 = *(v7 + 56);

      v19(a1, a2);
      return;
    }
  }

  v17 = ~v8 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v16 > 1)
    {
LABEL_26:
      if (v16 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v16 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v16)
  {
    a1[v13] = v18;
  }
}

uint64_t getEnumTagSinglePayload for LinearKeyframe(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    v16 = *(v6 + 48);

    return v16(a1);
  }

  v8 = ((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 <= 3)
  {
    v9 = ((a2 - v7 + 255) >> 8) + 1;
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

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = *&a1[v8];
      if (!v12)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v11 || (v12 = a1[v8]) == 0)
  {
LABEL_27:
    if (v7)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v13 = (v12 - 1) << (8 * v8);
  v14 = v8 > 3;
  if (v8 <= 3)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v18 = *a1;
  }

  else
  {
    v18 = *a1;
  }

  return v7 + (v18 | v15) + 1;
}

void storeEnumTagSinglePayload for LinearKeyframe(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v12 = 0;
    if (v8 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v10 = ((a3 - v8 + 255) >> 8) + 1;
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

    if (v8 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v9] = 0;
      }

      else if (v12)
      {
        a1[v9] = 0;
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
      v15 = *(v7 + 56);

      v15(a1, a2);
      return;
    }
  }

  v13 = ~v8 + a2;
  bzero(a1, v9);
  if (v9 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v9] = v14;
      }

      else
      {
        *&a1[v9] = v14;
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
    a1[v9] = v14;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for LinearKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = *v13;
    v14 = *(v13 + 16);
    v16 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v16 + 32) = *(v13 + 32);
    *v16 = v15;
    *(v16 + 16) = v14;
  }

  return a1;
}

uint64_t destroy for LinearKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for LinearKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = v7 + a1;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v11;
  v12 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  return a1;
}

uint64_t assignWithCopy for LinearKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = v7 + a1;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v11;
  v12 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  return a1;
}

uint64_t initializeWithTake for LinearKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = v7 + a1;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v11;
  v12 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  return a1;
}

uint64_t assignWithTake for LinearKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = v7 + a1;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v11;
  v12 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  return a1;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent._Spring(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SpringKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  if (*(v6 + 84))
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = v7 + 1;
  }

  v11 = v8 & 0x100000;
  if (v9 > 7 || v11 != 0 || ((v10 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v9 & 0xF8 ^ 0x1F8) & (v9 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    v16 = *(v6 + 16);
    v16(a1, a2, AssociatedTypeWitness);
    v17 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = *(v18 + 16);
    *v17 = *v18;
    *(v17 + 16) = v19;
    if ((*(v6 + 48))(v18 + 24, 1, v15))
    {
      memcpy((v17 + 24), (v18 + 24), v10);
    }

    else
    {
      v16((v17 + 24), (v18 + 24), v15);
      (*(v6 + 56))(v17 + 24, 0, 1, v15);
    }

    v20 = (v18 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v20;
    v22 = (v17 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
    *(v22 + 8) = *(v20 + 8);
    *v22 = v21;
  }

  return a1;
}

uint64_t destroy for SpringKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v10 = *(v4 + 8);
  v10(a1, AssociatedTypeWitness);
  v5 = *(v4 + 48);
  v4 += 48;
  v6 = (a1 + *(v4 + 16) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 32);
  v8 = v6 + v7 + 24;
  result = v5(v8 & ~v7, 1, AssociatedTypeWitness);
  if (!result)
  {

    return (v10)(v8 & ~v7, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for SpringKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 16);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v10 = (v9 + 7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  v13 = *(v6 + 80);
  v14 = ((v13 + 24 + v10) & ~v13);
  v15 = ((v13 + 24 + v11) & ~v13);
  if ((*(v7 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v7 + 84);
    if (v16)
    {
      v17 = v9;
    }

    else
    {
      v17 = v9 + 1;
    }

    memcpy(v14, v15, v17);
  }

  else
  {
    v8(v14, v15, AssociatedTypeWitness);
    (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v7 + 84);
  }

  if (v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  v19 = v14 + v18 + 7;
  v20 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  return a1;
}

uint64_t assignWithCopy for SpringKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 24);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v25 = a1;
  v10 = ((v9 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v12 = *(v6 + 80);
  v13 = ((v10 + v12 + 24) & ~v12);
  v14 = ((v11 + v12 + 24) & ~v12);
  v15 = *(v7 + 48);
  v16 = v15(v13, 1, AssociatedTypeWitness);
  v17 = v15(v14, 1, AssociatedTypeWitness);
  if (v16)
  {
    if (!v17)
    {
      (*(v7 + 16))(v13, v14, AssociatedTypeWitness);
      (*(v7 + 56))(v13, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
  }

  else
  {
    if (!v17)
    {
      v8(v13, v14, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v13, AssociatedTypeWitness);
    v18 = *(v7 + 84);
  }

  if (v18)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v7 + 84))
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  v21 = v13 + v20 + 7;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  v21 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = v23;
  return v25;
}

uint64_t initializeWithTake for SpringKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 32);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v10 = (v9 + 7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  v13 = *(v6 + 80);
  v14 = ((v13 + 24 + v10) & ~v13);
  v15 = ((v13 + 24 + v11) & ~v13);
  if ((*(v7 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v7 + 84);
    if (v16)
    {
      v17 = v9;
    }

    else
    {
      v17 = v9 + 1;
    }

    memcpy(v14, v15, v17);
  }

  else
  {
    v8(v14, v15, AssociatedTypeWitness);
    (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v7 + 84);
  }

  if (v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  v19 = v14 + v18 + 7;
  v20 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  return a1;
}

uint64_t assignWithTake for SpringKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 40);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v25 = a1;
  v10 = ((v9 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v12 = *(v6 + 80);
  v13 = ((v10 + v12 + 24) & ~v12);
  v14 = ((v11 + v12 + 24) & ~v12);
  v15 = *(v7 + 48);
  v16 = v15(v13, 1, AssociatedTypeWitness);
  v17 = v15(v14, 1, AssociatedTypeWitness);
  if (v16)
  {
    if (!v17)
    {
      (*(v7 + 32))(v13, v14, AssociatedTypeWitness);
      (*(v7 + 56))(v13, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
  }

  else
  {
    if (!v17)
    {
      v8(v13, v14, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v13, AssociatedTypeWitness);
    v18 = *(v7 + 84);
  }

  if (v18)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v7 + 84))
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  v21 = v13 + v20 + 7;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  v21 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = v23;
  return v25;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Cubic(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CubicKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  if (*(v6 + 84))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = v7 + 1;
  }

  v12 = ((v11 + 7 + ((v11 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v8 & 0x100000;
  if (v9 > 7 || v13 != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = (v16 + ((v9 & 0xF8 ^ 0x1F8) & (v9 + 16)));
  }

  else
  {
    v18 = AssociatedTypeWitness;
    v19 = ~v9;
    v20 = *(v6 + 16);
    v20(a1, a2, AssociatedTypeWitness);
    v27 = a1;
    v21 = ((a1 + v10) & ~v9);
    v22 = ((a2 + v10) & ~v9);
    v26 = *(v6 + 48);
    if (v26(v22, 1, v18))
    {
      memcpy(v21, v22, v11);
    }

    else
    {
      v20(v21, v22, v18);
      (*(v6 + 56))(v21, 0, 1, v18);
    }

    v23 = ((v21 + v9 + v11) & v19);
    v24 = ((v22 + v9 + v11) & v19);
    if (v26(v24, 1, v18))
    {
      memcpy(v23, v24, v11);
    }

    else
    {
      v20(v23, v24, v18);
      (*(v6 + 56))(v23, 0, 1, v18);
    }

    v17 = v27;
    *((v23 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v17;
}

uint64_t destroy for CubicKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4;
  v13 = *(v4 + 8);
  v13(a1, AssociatedTypeWitness);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64) + v6;
  v8 = ~v6;
  v9 = (v7 + a1) & ~v6;
  v10 = *(v5 + 48);
  if (!v10(v9, 1, AssociatedTypeWitness))
  {
    v13(v9, AssociatedTypeWitness);
  }

  if (*(v5 + 84))
  {
    v11 = v7 + v9;
  }

  else
  {
    v11 = v7 + v9 + 1;
  }

  result = (v10)(v11 & v8, 1, AssociatedTypeWitness);
  if (!result)
  {

    return (v13)(v11 & v8, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for CubicKeyframe(void *a1, const void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 16);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80);
  v20 = ~v10;
  v11 = ((a1 + v9 + v10) & ~v10);
  v12 = ((a2 + v9 + v10) & ~v10);
  v13 = *(v7 + 48);
  v19 = v8;
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v7 + 84);
    if (v14)
    {
      v15 = v9;
    }

    else
    {
      v15 = v9 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    v8(v11, v12, AssociatedTypeWitness);
    (*(v7 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v7 + 84);
  }

  if (!v14)
  {
    ++v9;
  }

  v16 = ((v11 + v10 + v9) & v20);
  v17 = ((v12 + v10 + v9) & v20);
  if (v13(v17, 1, AssociatedTypeWitness))
  {
    memcpy(v16, v17, v9);
  }

  else
  {
    v19(v16, v17, AssociatedTypeWitness);
    (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
  }

  *((v16 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for CubicKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v22 = *(v6 + 24);
  v22(a1, a2, AssociatedTypeWitness);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v23 = ~v9;
  v24 = a1;
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  LODWORD(a1) = v12(v10, 1, AssociatedTypeWitness);
  v13 = v12(v11, 1, AssociatedTypeWitness);
  if (a1)
  {
    if (!v13)
    {
      (*(v7 + 16))(v10, v11, AssociatedTypeWitness);
      (*(v7 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
  }

  else
  {
    if (!v13)
    {
      v22(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v10, AssociatedTypeWitness);
    v14 = *(v7 + 84);
  }

  if (v14)
  {
    v15 = v8;
  }

  else
  {
    v15 = v8 + 1;
  }

  memcpy(v10, v11, v15);
LABEL_12:
  if (*(v7 + 84))
  {
    v16 = v8;
  }

  else
  {
    v16 = v8 + 1;
  }

  v17 = ((v10 + v9 + v16) & v23);
  v18 = ((v11 + v9 + v16) & v23);
  v19 = v12(v17, 1, AssociatedTypeWitness);
  v20 = v12(v18, 1, AssociatedTypeWitness);
  if (!v19)
  {
    if (!v20)
    {
      v22(v17, v18, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v7 + 8))(v17, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_20:
    memcpy(v17, v18, v16);
    goto LABEL_21;
  }

  (*(v7 + 16))(v17, v18, AssociatedTypeWitness);
  (*(v7 + 56))(v17, 0, 1, AssociatedTypeWitness);
LABEL_21:
  *((v17 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v24;
}

void *initializeWithTake for CubicKeyframe(void *a1, const void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 32);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80);
  v20 = ~v10;
  v11 = ((a1 + v9 + v10) & ~v10);
  v12 = ((a2 + v9 + v10) & ~v10);
  v13 = *(v7 + 48);
  v19 = v8;
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v7 + 84);
    if (v14)
    {
      v15 = v9;
    }

    else
    {
      v15 = v9 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    v8(v11, v12, AssociatedTypeWitness);
    (*(v7 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v7 + 84);
  }

  if (!v14)
  {
    ++v9;
  }

  v16 = ((v11 + v10 + v9) & v20);
  v17 = ((v12 + v10 + v9) & v20);
  if (v13(v17, 1, AssociatedTypeWitness))
  {
    memcpy(v16, v17, v9);
  }

  else
  {
    v19(v16, v17, AssociatedTypeWitness);
    (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
  }

  *((v16 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for CubicKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v22 = *(v6 + 40);
  v22(a1, a2, AssociatedTypeWitness);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v23 = ~v9;
  v24 = a1;
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  LODWORD(a1) = v12(v10, 1, AssociatedTypeWitness);
  v13 = v12(v11, 1, AssociatedTypeWitness);
  if (a1)
  {
    if (!v13)
    {
      (*(v7 + 32))(v10, v11, AssociatedTypeWitness);
      (*(v7 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
  }

  else
  {
    if (!v13)
    {
      v22(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v7 + 8))(v10, AssociatedTypeWitness);
    v14 = *(v7 + 84);
  }

  if (v14)
  {
    v15 = v8;
  }

  else
  {
    v15 = v8 + 1;
  }

  memcpy(v10, v11, v15);
LABEL_12:
  if (*(v7 + 84))
  {
    v16 = v8;
  }

  else
  {
    v16 = v8 + 1;
  }

  v17 = ((v10 + v9 + v16) & v23);
  v18 = ((v11 + v9 + v16) & v23);
  v19 = v12(v17, 1, AssociatedTypeWitness);
  v20 = v12(v18, 1, AssociatedTypeWitness);
  if (!v19)
  {
    if (!v20)
    {
      v22(v17, v18, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v7 + 8))(v17, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_20:
    memcpy(v17, v18, v16);
    goto LABEL_21;
  }

  (*(v7 + 32))(v17, v18, AssociatedTypeWitness);
  (*(v7 + 56))(v17, 0, 1, AssociatedTypeWitness);
LABEL_21:
  *((v17 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v24;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Segment(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic(319, v2, v1, v4);
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for _ResolvedKeyframeTrackContent._Spring(319, v2, v1, v6);
      if (v9 <= 0x3F)
      {
        result = type metadata accessor for _ResolvedKeyframeTrackContent.Linear(319, v2, v1, v8);
        if (v10 <= 0x3F)
        {
          swift_initEnumMetadataMultiPayload();
          return 0;
        }
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _ResolvedKeyframeTrackContent.Segment(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  if (*(v6 + 84))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = v7 + 1;
  }

  v12 = v11 + v8;
  v13 = v11 + 7;
  v14 = ((v11 + 7 + ((v12 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v7)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v15 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v13 + ((v15 + v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 > v14)
  {
    v14 = ((v13 + ((v15 + v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v17 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  v19 = v8 & 0x100000;
  v20 = v9 <= 7 && v19 == 0;
  if (!v20 || v18 + 1 > 0x18)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = (v24 + ((v9 & 0xF8 ^ 0x1F8) & (v9 + 16)));

    return v25;
  }

  v21 = *(a2 + v18);
  v55 = v17;
  if (v21 >= 4)
  {
    if (v18 <= 3)
    {
      v22 = v18;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *a2;
        if (v18 >= 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v22 == 3)
        {
          v23 = *a2 | (*(a2 + 2) << 16);
          if (v18 < 4)
          {
            goto LABEL_34;
          }

LABEL_32:
          v21 = v23 + 4;
          goto LABEL_35;
        }

        v23 = *a2;
        if (v18 >= 4)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v21 = (v23 | ((v21 - 4) << (8 * v18))) + 4;
      goto LABEL_35;
    }

    if (!v22)
    {
      goto LABEL_35;
    }

    v23 = *a2;
    if (v18 < 4)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_35:
  v53 = AssociatedTypeWitness;
  v54 = *(v6 + 84);
  v56 = v16;
  v57 = v11 + 7;
  v58 = (v7 + v9) & ~v9;
  __n = v11;
  v60 = ~v9;
  v52 = *(v6 + 16);
  (v52)(a1, a2);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v25 = a1;
      v27 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = *v28;
      *(v27 + 16) = *(v28 + 16);
      *v27 = v29;
      v30 = (v27 + 24);
      v31 = (v28 + 24);
      if ((*(v6 + 48))(v28 + 24, 1, v53))
      {
        v32 = __n;
        memcpy(v30, v31, __n);
      }

      else
      {
        v52(v30, v31, v53);
        (*(v6 + 56))(v30, 0, 1, v53);
        v32 = __n;
      }

      v41 = v7 + 8;
      if (v54)
      {
        v41 = v7 + 7;
      }

      v42 = (v30 + v41) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v31 + v41) & 0xFFFFFFFFFFFFFFF8;
      v44 = *v43;
      *(v42 + 8) = *(v43 + 8);
      *v42 = v44;
      v45 = ((v57 + ((v58 + v9 + v32) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v45 <= v7)
      {
        v45 = v7;
      }

      if (v56 > v45)
      {
        v45 = v56;
      }

      if (v55 > v45)
      {
        v45 = v55;
      }

      *(a1 + v45) = 2;
    }

    else
    {
      v25 = a1;
      v35 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      v36 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v35 = *v36;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = *v37;
      v39 = *(v37 + 16);
      v40 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v40 + 32) = *(v37 + 32);
      *v40 = v38;
      *(v40 + 16) = v39;
      *(a1 + v18) = 3;
    }
  }

  else if (v21)
  {
    v25 = a1;
    v33 = ((a1 + v10) & v60);
    v34 = ((a2 + v10) & v60);
    v51 = *(v6 + 48);
    if (v51(v34, 1, v53))
    {
      memcpy(v33, v34, __n);
    }

    else
    {
      v52(v33, v34, v53);
      (*(v6 + 56))(v33, 0, 1, v53);
    }

    v46 = ((v33 + v12) & v60);
    v47 = ((v34 + v12) & v60);
    if (v51(v47, 1, v53))
    {
      v48 = __n;
      memcpy(v46, v47, __n);
    }

    else
    {
      v52(v46, v47, v53);
      (*(v6 + 56))(v46, 0, 1, v53);
      v48 = __n;
    }

    v49 = v7 + 8;
    if (v54)
    {
      v49 = v7 + 7;
    }

    *((v46 + v49) & 0xFFFFFFFFFFFFFFF8) = *((v47 + v49) & 0xFFFFFFFFFFFFFFF8);
    v50 = ((v57 + ((v58 + v9 + v48) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v50 <= v7)
    {
      v50 = v7;
    }

    if (v56 > v50)
    {
      v50 = v56;
    }

    if (v55 > v50)
    {
      v50 = v55;
    }

    *(a1 + v50) = 1;
  }

  else
  {
    v25 = a1;
    *(a1 + v18) = 0;
  }

  return v25;
}

uint64_t destroy for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = ((v8 + 7 + ((v8 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= v6)
  {
    v9 = v6;
  }

  v10 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + v10 + 24) & ~v7;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 9 > v9)
  {
    v9 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v12 > v9)
  {
    v9 = v12;
  }

  v13 = *(a1 + v9);
  if (v13 >= 4)
  {
    if (v9 <= 3)
    {
      v14 = v9;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_25;
          }

LABEL_23:
          v13 = v15 + 4;
          goto LABEL_26;
        }

        v15 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v13 = (v15 | ((v13 - 4) << (8 * v9))) + 4;
      goto LABEL_26;
    }

    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = *a1;
    if (v9 < 4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_26:
  v16 = ~v7;
  v21 = *(v5 + 8);
  result = v21(a1, AssociatedTypeWitness);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      return result;
    }

    v20 = (((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & v16;
    result = (*(v5 + 48))(v20, 1, AssociatedTypeWitness);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    v18 = (a1 + v6 + v7) & v16;
    v19 = *(v5 + 48);
    if (!v19(v18, 1, AssociatedTypeWitness))
    {
      v21(v18, AssociatedTypeWitness);
    }

    v20 = (v18 + v7 + v8) & v16;
    result = (v19)(v20, 1, AssociatedTypeWitness);
    if (!result)
    {
LABEL_35:

      return v21(v20, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t initializeWithCopy for _ResolvedKeyframeTrackContent.Segment(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v47 = *(v5 + 84);
  if (v47)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = v6 + 1;
  }

  v50 = (v6 + v7) & ~v7;
  v46 = v9 + v7;
  v10 = ((v9 + 7 + ((v9 + v7 + v50) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v6)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v11 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v13 = (v9 + 7 + ((v7 + v11 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 9 > v10)
  {
    v10 = v13 + 9;
  }

  v51 = v12;
  if (v12 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(a2 + v14);
  v48 = v13 + 9;
  v49 = v9 + 7;
  if (v15 >= 4)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
        if (v14 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a2 | (*(a2 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v15 = v17 + 4;
          goto LABEL_27;
        }

        v17 = *a2;
        if (v14 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v15 = (v17 | ((v15 - 4) << (8 * v14))) + 4;
      goto LABEL_27;
    }

    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = *a2;
    if (v14 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  __n = v9;
  v53 = ~v7;
  v18 = *(v5 + 16);
  v18(a1, a2, AssociatedTypeWitness);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v20 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = *v21;
      *(v20 + 16) = *(v21 + 16);
      *v20 = v22;
      v23 = ((v20 + v7 + 24) & v53);
      v24 = ((v21 + v7 + 24) & v53);
      if ((*(v5 + 48))(v24, 1, AssociatedTypeWitness))
      {
        v25 = __n;
        memcpy(v23, v24, __n);
      }

      else
      {
        v18(v23, v24, AssociatedTypeWitness);
        (*(v5 + 56))(v23, 0, 1, AssociatedTypeWitness);
        v25 = __n;
      }

      v33 = v6 + 8;
      if (v47)
      {
        v33 = v6 + 7;
      }

      v34 = (v23 + v33) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v24 + v33) & 0xFFFFFFFFFFFFFFF8;
      v36 = *v35;
      *(v34 + 8) = *(v35 + 8);
      *v34 = v36;
      v37 = ((v49 + ((v50 + v7 + v25) & v53)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v37 <= v6)
      {
        v37 = v6;
      }

      if (v48 > v37)
      {
        v37 = v48;
      }

      if (v51 <= v37)
      {
        v14 = v37;
      }

      else
      {
        v14 = v51;
      }

      v19 = 2;
    }

    else
    {
      v27 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v28 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v28 = *v27;
      v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      v30 = *v29;
      v31 = *(v29 + 16);
      v32 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v32 + 32) = *(v29 + 32);
      *v32 = v30;
      *(v32 + 16) = v31;
      v19 = 3;
    }
  }

  else if (v15)
  {
    __dst = ((v8 + a1) & v53);
    v26 = ((a2 + v8) & v53);
    v44 = *(v5 + 48);
    if (v44(v26, 1, AssociatedTypeWitness))
    {
      memcpy(__dst, v26, __n);
    }

    else
    {
      v18(__dst, v26, AssociatedTypeWitness);
      (*(v5 + 56))(__dst, 0, 1, AssociatedTypeWitness);
    }

    v38 = ((__dst + v46) & v53);
    v39 = ((v26 + v46) & v53);
    if (v44(v39, 1, AssociatedTypeWitness))
    {
      v40 = __n;
      memcpy(v38, v39, __n);
    }

    else
    {
      v18(v38, v39, AssociatedTypeWitness);
      (*(v5 + 56))(v38, 0, 1, AssociatedTypeWitness);
      v40 = __n;
    }

    v41 = v6 + 8;
    if (v47)
    {
      v41 = v6 + 7;
    }

    *((v38 + v41) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v41) & 0xFFFFFFFFFFFFFFF8);
    v42 = ((v49 + ((v50 + v7 + v40) & v53)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v42 <= v6)
    {
      v42 = v6;
    }

    if (v48 > v42)
    {
      v42 = v48;
    }

    if (v51 <= v42)
    {
      v14 = v42;
    }

    else
    {
      v14 = v51;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  result = a1;
  *(a1 + v14) = v19;
  return result;
}

unsigned __int16 *assignWithCopy for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v52 = v7 + v8;
    v55 = *(v6 + 84);
    if (v55)
    {
      v9 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v9 = v7 + 1;
    }

    v58 = (v7 + v8) & ~v8;
    __n = v9;
    v10 = v9 + 7;
    v11 = ((v9 + 7 + ((v9 + v8 + v58) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v11 <= v7)
    {
      v11 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v54 = v9 + v8;
    v12 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v14 = (v10 + ((v8 + v12 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
    if (v14 + 9 > v11)
    {
      v11 = v14 + 9;
    }

    if (v13 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(a1 + v15);
    v56 = v14 + 9;
    v57 = v10;
    if (v16 < 4)
    {
LABEL_28:
      v61 = ~v8;
      v19 = *(v6 + 8);
      v60 = AssociatedTypeWitness;
      v19(a1, AssociatedTypeWitness);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v21 = (((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & v61;
          if (!(*(v6 + 48))(v21, 1, v60))
          {
LABEL_36:
            v19(v21, v60);
          }
        }
      }

      else if (v16)
      {
        v20 = (a1 + v52) & v61;
        v51 = *(v6 + 48);
        if (!v51(v20, 1, v60))
        {
          v19(v20, v60);
        }

        v21 = (v54 + v20) & v61;
        if (!v51(v21, 1, v60))
        {
          goto LABEL_36;
        }
      }

      v22 = *(a2 + v15);
      if (v22 < 4)
      {
        goto LABEL_53;
      }

      if (v15 <= 3)
      {
        v23 = v15;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = *a2;
          if (v15 >= 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v23 == 3)
          {
            v24 = *a2 | (*(a2 + 2) << 16);
            if (v15 < 4)
            {
              goto LABEL_52;
            }

LABEL_50:
            v22 = v24 + 4;
            goto LABEL_53;
          }

          v24 = *a2;
          if (v15 >= 4)
          {
            goto LABEL_50;
          }
        }

LABEL_52:
        v22 = (v24 | ((v22 - 4) << (8 * v15))) + 4;
LABEL_53:
        v25 = *(v6 + 16);
        v25(a1, a2, v60);
        if (v22 > 1)
        {
          if (v22 != 2)
          {
            v34 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
            v35 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v34 = *v35;
            v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
            v37 = *v36;
            v38 = *(v36 + 16);
            v39 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v39 + 32) = *(v36 + 32);
            *v39 = v37;
            *(v39 + 16) = v38;
            *(a1 + v15) = 3;
            return a1;
          }

          v26 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
          v28 = *v27;
          *(v26 + 16) = *(v27 + 16);
          *v26 = v28;
          v29 = ((v26 + v8 + 24) & v61);
          v30 = ((v27 + v8 + 24) & v61);
          if ((*(v6 + 48))(v30, 1, v60))
          {
            v31 = __n;
            memcpy(v29, v30, __n);
          }

          else
          {
            v25(v29, v30, v60);
            (*(v6 + 56))(v29, 0, 1, v60);
            v31 = __n;
          }

          v40 = v7 + 8;
          if (v55)
          {
            v40 = v7 + 7;
          }

          v41 = (v29 + v40) & 0xFFFFFFFFFFFFFFF8;
          v42 = (v30 + v40) & 0xFFFFFFFFFFFFFFF8;
          v43 = *v42;
          *(v41 + 8) = *(v42 + 8);
          *v41 = v43;
          v44 = ((v57 + ((v58 + v8 + v31) & v61)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 <= v7)
          {
            v44 = v7;
          }

          if (v56 > v44)
          {
            v44 = v56;
          }

          if (v13 > v44)
          {
            v44 = v13;
          }

          v45 = 2;
        }

        else
        {
          if (!v22)
          {
            *(a1 + v15) = 0;
            return a1;
          }

          v32 = ((a1 + v52) & v61);
          v33 = ((a2 + v52) & v61);
          v53 = *(v6 + 48);
          if (v53(v33, 1, v60))
          {
            memcpy(v32, v33, __n);
          }

          else
          {
            v25(v32, v33, v60);
            (*(v6 + 56))(v32, 0, 1, v60);
          }

          v46 = ((v32 + v54) & v61);
          v47 = ((v33 + v54) & v61);
          if (v53(v47, 1, v60))
          {
            v48 = __n;
            memcpy(v46, v47, __n);
          }

          else
          {
            v25(v46, v47, v60);
            (*(v6 + 56))(v46, 0, 1, v60);
            v48 = __n;
          }

          v49 = v7 + 8;
          if (v55)
          {
            v49 = v7 + 7;
          }

          *((v46 + v49) & 0xFFFFFFFFFFFFFFF8) = *((v47 + v49) & 0xFFFFFFFFFFFFFFF8);
          v44 = ((v57 + ((v58 + v8 + v48) & v61)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 <= v7)
          {
            v44 = v7;
          }

          if (v56 > v44)
          {
            v44 = v56;
          }

          if (v13 > v44)
          {
            v44 = v13;
          }

          v45 = 1;
        }

        *(a1 + v44) = v45;
        return a1;
      }

      if (!v23)
      {
        goto LABEL_53;
      }

      v24 = *a2;
      if (v15 < 4)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v15 <= 3)
    {
      v17 = v15;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *a1 | (*(a1 + 2) << 16);
          if (v15 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v16 = v18 + 4;
          goto LABEL_28;
        }

        v18 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v16 = (v18 | ((v16 - 4) << (8 * v15))) + 4;
      goto LABEL_28;
    }

    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = *a1;
    if (v15 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return a1;
}

uint64_t initializeWithTake for _ResolvedKeyframeTrackContent.Segment(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v47 = *(v5 + 84);
  if (v47)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = v6 + 1;
  }

  v50 = (v6 + v7) & ~v7;
  v46 = v9 + v7;
  v10 = ((v9 + 7 + ((v9 + v7 + v50) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v6)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v11 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v13 = (v9 + 7 + ((v7 + v11 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 9 > v10)
  {
    v10 = v13 + 9;
  }

  v51 = v12;
  if (v12 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(a2 + v14);
  v48 = v13 + 9;
  v49 = v9 + 7;
  if (v15 >= 4)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
        if (v14 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a2 | (*(a2 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v15 = v17 + 4;
          goto LABEL_27;
        }

        v17 = *a2;
        if (v14 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v15 = (v17 | ((v15 - 4) << (8 * v14))) + 4;
      goto LABEL_27;
    }

    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = *a2;
    if (v14 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  __n = v9;
  v53 = ~v7;
  v18 = *(v5 + 32);
  v18(a1, a2, AssociatedTypeWitness);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v20 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = *v21;
      *(v20 + 16) = *(v21 + 16);
      *v20 = v22;
      v23 = ((v20 + v7 + 24) & v53);
      v24 = ((v21 + v7 + 24) & v53);
      if ((*(v5 + 48))(v24, 1, AssociatedTypeWitness))
      {
        v25 = __n;
        memcpy(v23, v24, __n);
      }

      else
      {
        v18(v23, v24, AssociatedTypeWitness);
        (*(v5 + 56))(v23, 0, 1, AssociatedTypeWitness);
        v25 = __n;
      }

      v33 = v6 + 8;
      if (v47)
      {
        v33 = v6 + 7;
      }

      v34 = (v23 + v33) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v24 + v33) & 0xFFFFFFFFFFFFFFF8;
      v36 = *v35;
      *(v34 + 8) = *(v35 + 8);
      *v34 = v36;
      v37 = ((v49 + ((v50 + v7 + v25) & v53)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v37 <= v6)
      {
        v37 = v6;
      }

      if (v48 > v37)
      {
        v37 = v48;
      }

      if (v51 <= v37)
      {
        v14 = v37;
      }

      else
      {
        v14 = v51;
      }

      v19 = 2;
    }

    else
    {
      v27 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v28 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v28 = *v27;
      v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      v30 = *v29;
      v31 = *(v29 + 16);
      v32 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v32 + 32) = *(v29 + 32);
      *v32 = v30;
      *(v32 + 16) = v31;
      v19 = 3;
    }
  }

  else if (v15)
  {
    __dst = ((v8 + a1) & v53);
    v26 = ((a2 + v8) & v53);
    v44 = *(v5 + 48);
    if (v44(v26, 1, AssociatedTypeWitness))
    {
      memcpy(__dst, v26, __n);
    }

    else
    {
      v18(__dst, v26, AssociatedTypeWitness);
      (*(v5 + 56))(__dst, 0, 1, AssociatedTypeWitness);
    }

    v38 = ((__dst + v46) & v53);
    v39 = ((v26 + v46) & v53);
    if (v44(v39, 1, AssociatedTypeWitness))
    {
      v40 = __n;
      memcpy(v38, v39, __n);
    }

    else
    {
      v18(v38, v39, AssociatedTypeWitness);
      (*(v5 + 56))(v38, 0, 1, AssociatedTypeWitness);
      v40 = __n;
    }

    v41 = v6 + 8;
    if (v47)
    {
      v41 = v6 + 7;
    }

    *((v38 + v41) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v41) & 0xFFFFFFFFFFFFFFF8);
    v42 = ((v49 + ((v50 + v7 + v40) & v53)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v42 <= v6)
    {
      v42 = v6;
    }

    if (v48 > v42)
    {
      v42 = v48;
    }

    if (v51 <= v42)
    {
      v14 = v42;
    }

    else
    {
      v14 = v51;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  result = a1;
  *(a1 + v14) = v19;
  return result;
}

unsigned __int16 *assignWithTake for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v52 = v7 + v8;
    v55 = *(v6 + 84);
    if (v55)
    {
      v9 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v9 = v7 + 1;
    }

    v58 = (v7 + v8) & ~v8;
    __n = v9;
    v10 = v9 + 7;
    v11 = ((v9 + 7 + ((v9 + v8 + v58) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v11 <= v7)
    {
      v11 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v54 = v9 + v8;
    v12 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v14 = (v10 + ((v8 + v12 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
    if (v14 + 9 > v11)
    {
      v11 = v14 + 9;
    }

    if (v13 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(a1 + v15);
    v56 = v14 + 9;
    v57 = v10;
    if (v16 < 4)
    {
LABEL_28:
      v61 = ~v8;
      v19 = *(v6 + 8);
      v60 = AssociatedTypeWitness;
      v19(a1, AssociatedTypeWitness);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v21 = (((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & v61;
          if (!(*(v6 + 48))(v21, 1, v60))
          {
LABEL_36:
            v19(v21, v60);
          }
        }
      }

      else if (v16)
      {
        v20 = (a1 + v52) & v61;
        v51 = *(v6 + 48);
        if (!v51(v20, 1, v60))
        {
          v19(v20, v60);
        }

        v21 = (v54 + v20) & v61;
        if (!v51(v21, 1, v60))
        {
          goto LABEL_36;
        }
      }

      v22 = *(a2 + v15);
      if (v22 < 4)
      {
        goto LABEL_53;
      }

      if (v15 <= 3)
      {
        v23 = v15;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = *a2;
          if (v15 >= 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v23 == 3)
          {
            v24 = *a2 | (*(a2 + 2) << 16);
            if (v15 < 4)
            {
              goto LABEL_52;
            }

LABEL_50:
            v22 = v24 + 4;
            goto LABEL_53;
          }

          v24 = *a2;
          if (v15 >= 4)
          {
            goto LABEL_50;
          }
        }

LABEL_52:
        v22 = (v24 | ((v22 - 4) << (8 * v15))) + 4;
LABEL_53:
        v25 = *(v6 + 32);
        v25(a1, a2, v60);
        if (v22 > 1)
        {
          if (v22 != 2)
          {
            v34 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
            v35 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v34 = *v35;
            v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
            v37 = *v36;
            v38 = *(v36 + 16);
            v39 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v39 + 32) = *(v36 + 32);
            *v39 = v37;
            *(v39 + 16) = v38;
            *(a1 + v15) = 3;
            return a1;
          }

          v26 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
          v28 = *v27;
          *(v26 + 16) = *(v27 + 16);
          *v26 = v28;
          v29 = ((v26 + v8 + 24) & v61);
          v30 = ((v27 + v8 + 24) & v61);
          if ((*(v6 + 48))(v30, 1, v60))
          {
            v31 = __n;
            memcpy(v29, v30, __n);
          }

          else
          {
            v25(v29, v30, v60);
            (*(v6 + 56))(v29, 0, 1, v60);
            v31 = __n;
          }

          v40 = v7 + 8;
          if (v55)
          {
            v40 = v7 + 7;
          }

          v41 = (v29 + v40) & 0xFFFFFFFFFFFFFFF8;
          v42 = (v30 + v40) & 0xFFFFFFFFFFFFFFF8;
          v43 = *v42;
          *(v41 + 8) = *(v42 + 8);
          *v41 = v43;
          v44 = ((v57 + ((v58 + v8 + v31) & v61)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 <= v7)
          {
            v44 = v7;
          }

          if (v56 > v44)
          {
            v44 = v56;
          }

          if (v13 > v44)
          {
            v44 = v13;
          }

          v45 = 2;
        }

        else
        {
          if (!v22)
          {
            *(a1 + v15) = 0;
            return a1;
          }

          v32 = ((a1 + v52) & v61);
          v33 = ((a2 + v52) & v61);
          v53 = *(v6 + 48);
          if (v53(v33, 1, v60))
          {
            memcpy(v32, v33, __n);
          }

          else
          {
            v25(v32, v33, v60);
            (*(v6 + 56))(v32, 0, 1, v60);
          }

          v46 = ((v32 + v54) & v61);
          v47 = ((v33 + v54) & v61);
          if (v53(v47, 1, v60))
          {
            v48 = __n;
            memcpy(v46, v47, __n);
          }

          else
          {
            v25(v46, v47, v60);
            (*(v6 + 56))(v46, 0, 1, v60);
            v48 = __n;
          }

          v49 = v7 + 8;
          if (v55)
          {
            v49 = v7 + 7;
          }

          *((v46 + v49) & 0xFFFFFFFFFFFFFFF8) = *((v47 + v49) & 0xFFFFFFFFFFFFFFF8);
          v44 = ((v57 + ((v58 + v8 + v48) & v61)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 <= v7)
          {
            v44 = v7;
          }

          if (v56 > v44)
          {
            v44 = v56;
          }

          if (v13 > v44)
          {
            v44 = v13;
          }

          v45 = 1;
        }

        *(a1 + v44) = v45;
        return a1;
      }

      if (!v23)
      {
        goto LABEL_53;
      }

      v24 = *a2;
      if (v15 < 4)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v15 <= 3)
    {
      v17 = v15;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *a1 | (*(a1 + 2) << 16);
          if (v15 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v16 = v18 + 4;
          goto LABEL_28;
        }

        v18 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v16 = (v18 | ((v16 - 4) << (8 * v15))) + 4;
      goto LABEL_28;
    }

    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = *a1;
    if (v15 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + v7 + 24) & ~v7;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (*(v5 + 84))
  {
    v11 = v6;
  }

  else
  {
    v11 = v6 + 1;
  }

  v12 = ((v11 + 7 + ((v11 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 > v6)
  {
    v6 = v12;
  }

  if (((v11 + 7 + v9) & 0xFFFFFFFFFFFFFFF8) + 9 > v6)
  {
    v6 = ((v11 + 7 + v9) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v10 <= v6)
  {
    v10 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_32;
  }

  v13 = v10 + 1;
  v14 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 < 2)
    {
LABEL_32:
      v19 = *(a1 + v10);
      if (v19 >= 4)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_32;
  }

LABEL_21:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 253;
}

void storeEnumTagSinglePayload for _ResolvedKeyframeTrackContent.Segment(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v9 + 24) & ~v9;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (*(v7 + 84))
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  v14 = ((v13 + 7 + ((v13 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 > v8)
  {
    v8 = v14;
  }

  if (((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 9 > v8)
  {
    v8 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v12 > v8)
  {
    v8 = v12;
  }

  v15 = v8 + 1;
  if (a3 < 0xFD)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 252) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFC)
  {
    v17 = a2 - 253;
    if (v15 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v8 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_46:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v8] = -a2;
      return;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_31;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_32;
  }
}

uint64_t getEnumTag for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  if (*(v3 + 84))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 + 1;
  }

  v7 = (v6 + v5 + ((v4 + v5) & ~v5)) & ~v5;
  v8 = v6 + 7;
  v9 = ((v8 + v7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= v4)
  {
    v9 = v4;
  }

  v10 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v5 + 24) & ~v5;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v13 = ((v8 + v11) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= v9)
  {
    v13 = v9;
  }

  if (v12 <= v13)
  {
    v12 = v13;
  }

  result = *(a1 + v12);
  if (result >= 4)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          return (v16 + 4);
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v12 < 4)
          {
            return (v16 | ((result - 4) << (8 * v12))) + 4;
          }

          return (v16 + 4);
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          return (v16 + 4);
        }
      }

      return (v16 | ((result - 4) << (8 * v12))) + 4;
    }

    if (!v15)
    {
      return result;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      return (v16 | ((result - 4) << (8 * v12))) + 4;
    }

    return (v16 + 4);
  }

  return result;
}

void destructiveInjectEnumTag for _ResolvedKeyframeTrackContent.Segment(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = (v8 + v7 + ((v6 + v7) & ~v7)) & ~v7;
  v10 = v8 + 7;
  v11 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v6)
  {
    v11 = v6;
  }

  v12 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 24) & ~v7;
  if (a2 > 3)
  {
    v16 = ((v10 + v13) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v16 > v11)
    {
      v11 = v16;
    }

    if (((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v11)
    {
      v11 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    v17 = a2 - 4;
    if (v11 < 4)
    {
      a1[v11] = (v17 >> (8 * v11)) + 4;
      if (!v11)
      {
        return;
      }

      v17 &= ~(-1 << (8 * v11));
    }

    else
    {
      a1[v11] = 4;
    }

    if (v11 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v11;
    }

    bzero(a1, v11);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      else
      {
        *a1 = v17;
      }
    }

    else if (v18 == 1)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }
  }

  else
  {
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v15 = ((v10 + v13) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v15 > v11)
    {
      v11 = v15;
    }

    if (v14 > v11)
    {
      v11 = v14;
    }

    a1[v11] = a2;
  }
}

void specialized PrimitiveKeyframeTrackContent.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(a1, a2, a3, MEMORY[0x1E69E8560]);
}

{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(a1, a2, a3, MEMORY[0x1E69E8570]);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor, protocol conformance descriptor for _ImpossibleExecutor);

  return a4(a1, v6, v7);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1)
{
  return MEMORY[0x1EEE6D878](a1, *v1);
}

{
  return MEMORY[0x1EEE6D888](a1, *v1);
}

double static _ImpossibleActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static _ImpossibleActor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static _ImpossibleActor.shared = a1;

  return result;
}

uint64_t (*static _ImpossibleActor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

double key path getter for static _ImpossibleActor.shared : _ImpossibleActor.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static _ImpossibleActor.shared;

  return result;
}

double key path setter for static _ImpossibleActor.shared : _ImpossibleActor.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static _ImpossibleActor.shared = v1;

  return result;
}

uint64_t _ImpossibleActor.unownedExecutor.getter()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor, protocol conformance descriptor for _ImpossibleExecutor);
  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t protocol witness for Actor.unownedExecutor.getter in conformance _ImpossibleActor()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor, protocol conformance descriptor for _ImpossibleExecutor);
  return SerialExecutor.asUnownedSerialExecutor()();
}

double protocol witness for static GlobalActor.shared.getter in conformance _ImpossibleActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance _ImpossibleActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ImpossibleActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

void lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  if (!*a1)
  {
    v6 = a3(a2);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

BOOL static PhaseAnimator.Behavior.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      if (v2 != v3)
      {
        v4 = *(*v2 + 88);
        swift_retain_n();
        swift_retain_n();
        LOBYTE(v4) = v4(v3);

        return v4 & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t PhaseAnimator.init<A, B>(_:trigger:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28[1] = a7;
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v29 = a3;
  v17 = *(a10 - 8);
  v28[2] = a14;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  (*(v20 + 16))(v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a9);
  v23 = Array.init<A>(_:)();
  v24 = v29;
  v25 = v30;
  *a8 = v23;
  *(a8 + 8) = v24;
  v26 = v32;
  *(a8 + 24) = v31;
  *(a8 + 32) = v25;
  *(a8 + 16) = v26;
  (*(v17 + 16))(v19, a2, a10);
  AnyEquatable.init<A>(_:)(v19, a10, &v33);
  (*(v17 + 8))(a2, a10);
  result = (*(v20 + 8))(a1, a9);
  *(a8 + 40) = v33;
  return result;
}

uint64_t PhaseAnimator.init<A>(_:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a5;
  v17 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  (*(v17 + 16))(&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19);
  v20 = Array.init<A>(_:)();
  result = (*(v17 + 8))(a1, a7);
  *a8 = v20;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v23;
  *(a8 + 40) = 0;
  return result;
}

double PhaseAnimator.body.getter(void *a1)
{
  *&v54 = *v1;
  v3 = a1[2];
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v4);
  if (Collection.isEmpty.getter())
  {
    v5 = a1[3];
    v6 = a1[4];
    v45 = a1[5];
    *&v54 = v3;
    *(&v54 + 1) = v5;
    *&v55 = v6;
    *(&v55 + 1) = v45;
    v7 = type metadata accessor for PhaseAnimator.EmptyPhasesView(0, &v54);
    swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.EmptyPhasesView, v7);
    v9 = v8;
    View.onAppear(perform:)();
    v10 = v54;
    v11 = v55;
    v58 = v54;
    v59 = v55;
    v13 = type metadata accessor for ModifiedContent(0, v7, &type metadata for _AppearanceActionModifier, v12);
    v46[0] = v9;
    v46[1] = &protocol witness table for _AppearanceActionModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v46);
    v15 = v14;
    static ViewBuilder.buildExpression<A>(_:)();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10, *(&v10 + 1));
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11, *(&v11 + 1));
    v16 = v62;
    v17 = v63;
    v54 = v62;
    v55 = v63;
    static ViewBuilder.buildExpression<A>(_:)();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v16, *(&v16 + 1));
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v17, *(&v17 + 1));
    v18 = v58;
    v19 = v59;
    v50 = v58;
    v51 = v59;
    *&v54 = v3;
    *(&v54 + 1) = v5;
    *&v55 = v6;
    *(&v55 + 1) = v45;
    v20 = type metadata accessor for PhaseAnimator.StateTransitioningContainer(0, &v54);
    static ViewBuilder.buildEither<A, B>(first:)(&v50, v13, v20, v15, &v54);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v18, *(&v18 + 1));
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v19, *(&v19 + 1));
  }

  else
  {
    v43 = a1[4];
    v44 = a1[3];
    v42 = a1[5];
    *&v62 = v3;
    *(&v62 + 1) = v44;
    *&v63 = v43;
    *(&v63 + 1) = v42;
    v21 = type metadata accessor for PhaseAnimator.StateTransitioningContainer(0, &v62);
    static ViewBuilder.buildExpression<A>(_:)();

    v56 = v64;
    static ViewBuilder.buildExpression<A>(_:)();

    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    *&v54 = v3;
    *(&v54 + 1) = v44;
    *&v55 = v43;
    *(&v55 + 1) = v42;
    v22 = type metadata accessor for PhaseAnimator.EmptyPhasesView(255, &v54);
    v24 = type metadata accessor for ModifiedContent(0, v22, &type metadata for _AppearanceActionModifier, v23);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.EmptyPhasesView, v22);
    v49[0] = v26;
    v49[1] = &protocol witness table for _AppearanceActionModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v24, v49, WitnessTable);
    static ViewBuilder.buildEither<A, B>(second:)(&v50, v24, v21, v27, &v54);
  }

  v28 = a1[3];
  v29 = a1[4];
  v30 = a1[5];
  *&v62 = v3;
  *(&v62 + 1) = v28;
  *&v63 = v29;
  *(&v63 + 1) = v30;
  v31 = type metadata accessor for PhaseAnimator.EmptyPhasesView(255, &v62);
  v33 = type metadata accessor for ModifiedContent(255, v31, &type metadata for _AppearanceActionModifier, v32);
  *&v62 = v3;
  *(&v62 + 1) = v28;
  *&v63 = v29;
  *(&v63 + 1) = v30;
  v34 = type metadata accessor for PhaseAnimator.StateTransitioningContainer(255, &v62);
  v36 = type metadata accessor for _ConditionalContent(0, v33, v34, v35);
  v37 = swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.EmptyPhasesView, v31);
  v48[0] = v38;
  v48[1] = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v33, v48, v37);
  v47[0] = v40;
  v47[1] = &protocol witness table for PhaseAnimator<A, B>.StateTransitioningContainer;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v36, v47, v39);
  static ViewBuilder.buildExpression<A>(_:)();
  return outlined consume of _ConditionalContent<ModifiedContent<PhaseAnimator<A, B>.EmptyPhasesView, _AppearanceActionModifier>, PhaseAnimator<A, B>.StateTransitioningContainer>.Storage<A, B>(v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57);
}

uint64_t closure #1 in PhaseAnimator.body.getter(uint64_t a1)
{
  v1 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = static Log.runtimeIssuesLog;
  v3 = MEMORY[0x1E69E7CC0];

  return os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "PhaseAnimator requires at least one phase value", 47, 2, v3);
}

double outlined consume of _ConditionalContent<ModifiedContent<PhaseAnimator<A, B>.EmptyPhasesView, _AppearanceActionModifier>, PhaseAnimator<A, B>.StateTransitioningContainer>.Storage<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1, a2);

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
  }

  return result;
}

void *static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  v90 = *MEMORY[0x1E69E9840];
  v43 = *a1;
  v11 = a2[3];
  v81 = a2[2];
  v82 = v11;
  v83 = a2[4];
  v84 = *(a2 + 20);
  v12 = a2[1];
  v79 = *a2;
  v80 = v12;
  Attribute.init<A>(body:value:flags:update:)();
  v13 = AGCreateWeakAttribute();
  *&v74 = -1;
  BYTE8(v74) = 0;
  *&v85 = v10;
  *(&v85 + 1) = a4;
  *&v86 = a5;
  *(&v86 + 1) = a6;
  v54 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion(0, &v85);
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v74, partial apply for closure #1 in Attribute.init(value:), v53, v54, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v16 = AGCreateWeakAttribute();
  LODWORD(v10) = DWORD2(v80);
  v17 = HIDWORD(v80);
  v41 = HIDWORD(v80);
  v18 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v19 = *(v18 + 68);

  v76 = 0uLL;
  LODWORD(v77) = 0;
  LOBYTE(v55) = 1;
  LOBYTE(v71[0]) = 1;
  *&v74 = __PAIR64__(v17, v43);
  *(&v74 + 1) = __PAIR64__(v10, v19);
  *&v75 = v16;
  *(&v75 + 1) = v13;
  *(&v77 + 1) = 0;
  v78[0] = 1;
  *&v78[4] = *&v45[3];
  *&v78[1] = *v45;
  *&v78[8] = xmmword_18DD85500;
  *&v78[24] = 0;
  v78[28] = 1;
  *&v85 = a3;
  *(&v85 + 1) = a4;
  *&v86 = a5;
  *(&v86 + 1) = a6;
  v50 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, &v85);
  *&v85 = a3;
  *(&v85 + 1) = a4;
  *&v86 = a5;
  *(&v86 + 1) = a6;
  v20 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child(0, &v85);
  v51 = v20;
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.StateTransitioningContainer.Child, v20);
  v52 = v21;
  v22 = type metadata accessor for Attribute();
  v23 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v74, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v49, v20, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v24);
  v87 = v76;
  v88 = v77;
  v89[0] = *v78;
  *(v89 + 13) = *&v78[13];
  v85 = v74;
  v86 = v75;
  (*(*(v20 - 8) + 8))(&v85, v20);
  LODWORD(v20) = v65;
  v25 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  LODWORD(v10) = *(v25 + 68);

  closure #1 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a3, a4, a5, a6);
  LODWORD(v25) = AGGraphCreateOffsetAttribute2();
  closure #2 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a3, a4, a5, a6);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v65 = __PAIR64__(v10, v41);
  *(&v65 + 1) = __PAIR64__(OffsetAttribute2, v25);
  *&v74 = a3;
  *(&v74 + 1) = a4;
  *&v75 = a5;
  *(&v75 + 1) = a6;
  v47 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.TransactionRule(0, &v74);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.StateTransitioningContainer.TransactionRule, v47);
  v48 = v27;
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for Attribute<Transaction>, &type metadata for Transaction, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, closure #1 in Attribute.init<A>(_:)partial apply, v46, v47, MEMORY[0x1E69E73E0], v28, v23, v29);
  v42 = __PAIR64__(v20, v74);
  v30 = static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(v13, 1);
  v32 = v31;
  v33 = static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(v13, 0);
  *&v74 = v30;
  *(&v74 + 1) = v32;
  *&v75 = v33;
  *(&v75 + 1) = v34;

  v35 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v65 = v79;
  v66 = v80;
  v37 = v81;
  LODWORD(v67) = 0;
  v74 = v79;
  v75 = v80;
  *&v78[16] = v84;
  v77 = v82;
  *v78 = v83;
  v76 = v67;
  v38 = *MEMORY[0x1E698D3F8];
  *&v71[0] = __PAIR64__(DWORD2(v80), v35);
  WORD4(v72) = 0;
  *(&v71[0] + 1) = 1;
  v71[1] = 0uLL;
  *&v72 = 0;
  HIDWORD(v72) = 0;
  v73 = v38;
  v61 = v71[0];
  v62 = 0uLL;
  v63 = v72;
  v64 = v38;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v79, &v55);
  outlined init with copy of _ViewInputs(&v74, &v55);
  lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AppearanceEffect(v71);
  AGGraphSetFlags();
  v57 = v76;
  v58 = v77;
  v59 = *v78;
  v60 = *&v78[16];
  v55 = v74;
  v56 = v75;
  closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(&v55, v42, a3, a4, a5, a6, a7);
  outlined destroy of _ViewInputs(&v74);
  LODWORD(v67) = v37;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a7, &v65);
    AGSubgraphEndTreeElement();
  }

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v55 = v65;
  v56 = v66;
  return outlined destroy of _ViewInputs(&v55);
}

uint64_t closure #1 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, v12);
  v7 = *(v6 + 52);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for Transaction, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t closure #2 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v6 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, v14);
  v7 = *(v6 + 56);
  v13[2] = v6;
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

double (*static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(unint64_t a1, char a2))()
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  swift_weakInit();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 28) = v4;
  *(v6 + 32) = a2;
  return partial apply for closure #1 in static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:);
}

void *closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v12;
  v54[4] = *(a1 + 64);
  v55 = *(a1 + 80);
  v13 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v13;
  if (*(*(a5 - 8) + 64))
  {
    outlined init with copy of _ViewInputs(v54, v49);
    closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a4, a5, a6, a7, type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value, partial apply for closure #1 in static PointerOffset.of(_:));
  }

  else
  {
    outlined init with copy of _ViewInputs(v54, v49);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v26);
  v17 = v26;
  *v49 = *a1;
  *&v49[12] = *(a1 + 12);
  v18 = *(a1 + 48);
  v50 = *(a1 + 32);
  v51 = v18;
  v52 = *(a1 + 64);
  v19 = *(a1 + 80);
  *&v49[28] = a2;
  v53 = v19;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v41 = v50;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v39 = *v49;
  v40 = *&v49[16];
  v21 = v50;
  LODWORD(v41) = 0;
  *v27 = v17;
  v45[0] = *v49;
  v45[1] = *&v49[16];
  v46 = v53;
  v45[3] = v51;
  v45[4] = v52;
  v45[2] = v41;
  v35 = v41;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v33 = *v49;
  v34 = *&v49[16];
  v22 = *(a7 + 24);
  outlined init with copy of _ViewInputs(v49, v47);
  outlined init with copy of _ViewInputs(v45, v47);
  v22(v27, &v33, a5, a7);
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v48 = v38;
  v47[0] = v33;
  v47[1] = v34;
  outlined destroy of _ViewInputs(v47);
  LODWORD(v41) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v39);
    AGSubgraphEndTreeElement();
  }

  *v27 = *a1;
  *&v27[12] = *(a1 + 12);
  v28 = a2;
  v23 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v23;
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  outlined destroy of _ViewInputs(v27);
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v33 = v39;
  v34 = v40;
  return outlined destroy of _ViewInputs(&v33);
}

double PhaseAnimator.StateTransitioningContainer.Child.view.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v3;
  type metadata accessor for PhaseAnimator.StateTransitioningContainer(0, v9);
  Value = AGGraphGetValue();
  v6 = *(Value + 32);
  v5 = *(Value + 40);
  v8 = *(Value + 16);
  *a2 = *Value;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;

  return result;
}

uint64_t PhaseAnimator.StateTransitioningContainer.Child.Value.init(content:phaseChangeTransaction:phaseChangeTransactionSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, v17);
  *(a8 + *(result + 52)) = a2;
  v16 = a8 + *(result + 56);
  *v16 = a3;
  *(v16 + 4) = BYTE4(a3) & 1;
  return result;
}

void PhaseAnimator.StateTransitioningContainer.Child.clampedIndex.getter(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 7);
  v4 = *(v1 + 64);
  if ((v4 & 1) == 0 || !v3)
  {
    v5 = *(a1 + 16);
    v6 = v1[1];
    v10 = *v1;
    v11 = v6;
    v12 = v2;
    v13 = *(v1 + 40);
    v14 = v3;
    v15 = v4;
    *v16 = *(v1 + 65);
    *&v16[12] = *(v1 + 77);
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(a1, &v9);
    v7 = v9;

    v8 = MEMORY[0x193ABF270](v7, v5);

    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.updateValue()()
{
  v2 = v0;
  v3 = *(v1 + 48);
  if (v3 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 48) = *AGGraphGetValue() >> 1;
    *(v1 + 32) = 0;
    outlined consume of SafeAreaInsets.OptionalValue?(*(v1 + 72));
    *(v1 + 72) = 1;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    ++*(v1 + 40);
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *&v39 = v5;
  *(&v39 + 1) = v4;
  *&v40 = v6;
  *(&v40 + 1) = v7;
  v8 = type metadata accessor for PhaseAnimator.StateTransitioningContainer(0, &v39);
  Value = AGGraphGetValue();
  v11 = v10;
  v13 = Value[1];
  v12 = Value[2];
  v39 = *Value;
  v40 = v13;
  v41 = v12;
  Attribute = AGWeakAttributeGetAttribute();
  v15 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v16 = *(v8 - 8);
    (*(v16 + 16))(&v35, &v39, v8);
    $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(v1, &v39, v5, v4, v6, v7);
    (*(v16 + 8))(&v39, v8);
    return;
  }

  v33 = *(v8 - 8);
  (*(v33 + 16))(&v35, &v39, v8);
  v17 = AGGraphGetValue();
  if (v18)
  {
    if (*v17 == 1)
    {
      if (!*(&v41 + 1))
      {
        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
      }
    }

    else
    {
      *(v1 + 32) = 0;
      outlined consume of SafeAreaInsets.OptionalValue?(*(v1 + 72));
      *(v1 + 72) = 1;
      *(v1 + 56) = 0;
      *(v1 + 64) = 1;
      ++*(v1 + 40);
    }
  }

  if (v11)
  {
    v19 = *(v1 + 56);
    v20 = *(v1 + 64);
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    if (v20 == 1 && v19 && !*(&v41 + 1))
    {
      PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
    }
  }

  v21 = *(v1 + 72);
  if (v21 != 1)
  {
    v32 = v7;
    v22 = *(&v41 + 1);
    v34 = *(v1 + 72);
    v35 = *(&v41 + 1);
    outlined copy of SafeAreaInsets.OptionalValue?(v21);

    v23 = static PhaseAnimator.Behavior.== infix(_:_:)(&v35, &v34);

    if (v23)
    {
      goto LABEL_17;
    }

    if (!v21)
    {
      v7 = v32;
      if (v22)
      {
        PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(0);
      }

      goto LABEL_28;
    }

    v7 = v32;
    if (v22)
    {
      if (v21 != v22)
      {
        v31 = *(*v21 + 88);

        if (v31(v24))
        {

          outlined consume of SafeAreaInsets.OptionalValue?(v21);
          goto LABEL_18;
        }

        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(0);

LABEL_17:
        outlined consume of SafeAreaInsets.OptionalValue?(v21);
LABEL_18:
        v7 = v32;
        goto LABEL_28;
      }
    }

    else
    {
      PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
    }

    outlined consume of SafeAreaInsets.OptionalValue?(v21);
  }

LABEL_28:
  v25 = *(&v41 + 1);
  v26 = *(v1 + 72);
  *(v1 + 72) = *(&v41 + 1);

  outlined consume of SafeAreaInsets.OptionalValue?(v26);
  if (AGWeakAttributeGetAttribute() != v15)
  {
    v35 = v5;
    v36 = v4;
    v37 = v6;
    v38 = v7;
    type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion(0, &v35);
    v27 = AGGraphGetValue();
    if ((v28 & 1) != 0 && *v27 == *(v1 + 40))
    {
      v29 = *(v27 + 8);
      v35 = v5;
      v36 = v4;
      v37 = v6;
      v38 = v7;
      type metadata accessor for PhaseAnimator.Behavior(0, &v35);
      if (!v25 || *(v1 + 32))
      {
        if (v29)
        {
          *(v1 + 56) = 0;
          *(v1 + 64) = 1;
          v30 = *(v1 + 32);
        }

        else
        {
          v30 = *(v1 + 32);
          v35 = v5;
          v36 = v4;
          v37 = v6;
          v38 = v7;
          type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.EndlessLoopState(0, &v35);
          if (*(v1 + 64) == 1 && !*(v1 + 56))
          {
            *(v1 + 56) = v30;
            *(v1 + 64) = 0;
          }
        }

        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(v30);
      }
    }
  }

  $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(v1, &v39, v5, v4, v6, v7);
  (*(v33 + 8))(&v39, v8);
}

uint64_t $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = v17;
  *(&v44 + 1) = v18;
  *&v45 = v19;
  *(&v45 + 1) = v20;
  v35 = v19;
  v36 = v20;
  v38 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, &v44);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v22 = &v33 - v21;
  v23 = a2[1];
  v33 = a2[2];
  v34 = v23;
  v24 = a1[3];
  v46 = a1[2];
  v47 = v24;
  v48[0] = a1[4];
  *(v48 + 13) = *(a1 + 77);
  v25 = a1[1];
  v44 = *a1;
  v45 = v25;
  v43[0] = a3;
  v43[1] = a4;
  v43[2] = a5;
  v43[3] = a6;
  v26 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child(0, v43);
  PhaseAnimator.StateTransitioningContainer.Child.clampedIndex.getter(v26);
  Array.subscript.getter();
  v34(v13);
  (*(v37 + 8))(v13, a3);
  v27 = *(a1 + 10);
  v28 = *(a1 + 22);
  LOBYTE(v44) = *(a1 + 92);
  PhaseAnimator.StateTransitioningContainer.Child.Value.init(content:phaseChangeTransaction:phaseChangeTransactionSeed:)(v16, v27, v28 | (v44 << 32), a3, a4, v35, v36, v22);
  v41 = v26;
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>.StateTransitioningContainer.Child, v26);
  v42 = v29;

  v30 = v38;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in StatefulRule.value.setter, v40, v38, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v31);
  return (*(v39 + 8))(v22, v30);
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(Swift::Int from)
{
  v3 = v2;
  v4 = v1;
  v6 = v2[3];
  v26 = v2[2];
  v27 = v6;
  v28[0] = v2[4];
  *(v28 + 13) = *(v2 + 77);
  v7 = v2[1];
  v24 = *v2;
  v25 = v7;
  PhaseAnimator.StateTransitioningContainer.Child.view.getter(v1, v21);
  v8 = *&v21[0];

  v9 = *(v4 + 16);
  v10 = MEMORY[0x193ABF270](v8, v9);

  if (v10 >= 2)
  {
    v11 = v3[3];
    v26 = v3[2];
    v27 = v11;
    v28[0] = v3[4];
    *(v28 + 13) = *(v3 + 77);
    v12 = v3[1];
    v24 = *v3;
    v25 = v12;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(v4, v23);
    v13 = v23[5];

    if (v13)
    {

      v14 = from + 1;
      if (__OFADD__(from, 1))
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = from + 1;
      if (__OFADD__(from, 1))
      {
        __break(1u);
        return;
      }
    }

    v15 = v3[3];
    v21[2] = v3[2];
    v21[3] = v15;
    v22[0] = v3[4];
    *(v22 + 13) = *(v3 + 77);
    v16 = v3[1];
    v21[0] = *v3;
    v21[1] = v16;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(v4, &v20);
    v17 = v20;

    v18 = MEMORY[0x193ABF270](v17, v9);

    if (v14 >= v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(v19);
  }
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(Swift::Int to)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[2];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](to);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 7);
  if (*(v2 + 64) == 1)
  {
    if (v10)
    {
      return;
    }
  }

  else if (v10 == to)
  {
    *(v2 + 7) = 1;
    *(v2 + 64) = 1;
    *(v2 + 4) = 0;
    return;
  }

  v11 = v2[3];
  *&v48[16] = v2[2];
  v49 = v11;
  *v50 = v2[4];
  *&v50[13] = *(v2 + 77);
  v12 = v2[1];
  v47 = *v2;
  *v48 = v12;
  PhaseAnimator.StateTransitioningContainer.Child.view.getter(v4, &v44);
  v13 = v44;

  v14 = MEMORY[0x193ABF270](v13, v6);

  if (v14 <= to)
  {

    PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(to);
  }

  else
  {
    v39 = v7;
    v15 = v3[1];
    v47 = *v3;
    *v48 = v15;
    v16 = *(v3 + 4);
    v17 = *(v3 + 5);
    v18 = v3[4];
    v49 = v3[3];
    *v50 = v18;
    *&v50[13] = *(v3 + 77);
    *&v48[16] = v16;
    *&v48[24] = v17;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(v4, &v44);
    Array.subscript.getter();

    *(v3 + 4) = to;
    *(v3 + 5) = v17 + 1;
    AGGraphClearUpdate();
    v19 = v4[4];
    v20 = v4[5];
    v40 = v4[3];
    v42 = v19;
    v41 = v20;
    closure #1 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(v6, v40, v19, v20, &v47);
    AGGraphSetUpdate();
    v21 = v47;
    v47 = *v3;
    *&v48[8] = *(v3 + 24);
    v22 = v3[4];
    v49 = v3[3];
    v38[1] = v21;
    v43 = v21;
    v23 = *(v3 + 4);
    v24 = *(v3 + 5);
    v25 = *(v3 + 5);
    *v50 = v22;
    v26 = *(v3 + 10);
    *&v50[24] = *(v3 + 22);
    v50[28] = *(v3 + 92);
    v27 = v23;
    *v48 = v23;
    *&v48[4] = v24;
    *&v48[24] = v25;
    v38[2] = v26;
    *&v50[16] = v26;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(v4, &v44);
    v28 = v46;

    v29 = v28(v9);

    if (v29)
    {
      v30 = swift_allocObject();
      specialized static GraphHost.currentHost.getter();
      swift_weakInit();

      v31 = swift_allocObject();
      v32 = v40;
      *(v31 + 16) = v6;
      *(v31 + 24) = v32;
      v33 = v41;
      *(v31 + 32) = v42;
      *(v31 + 40) = v33;
      *(v31 + 48) = v30;
      *(v31 + 56) = v27;
      *(v31 + 60) = v24;
      *(v31 + 64) = v25;
      type metadata accessor for CompletionListener();
      v34 = swift_allocObject();
      *(v34 + 24) = v31;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0;
      *(v34 + 16) = partial apply for closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:);

      swift_retain_n();

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v43, v29);

      Transaction.addAnimationLogicalListener(_:)(v34);
      LOBYTE(v47) = 17;

      static Update.enqueueAction(reason:_:)(&v47, partial apply for closure #3 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:), v34);
    }

    else
    {
      specialized static GraphHost.currentHost.getter();
      v44 = v25;
      v45 = 0;
      *&v47 = v6;
      *(&v47 + 1) = v40;
      *v48 = v42;
      *&v48[8] = v41;
      v35 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion(0, &v47);
      GraphHost.continueTransaction<A>(setting:to:)(v27 | (v24 << 32), &v44, v35);
    }

    v36 = v43;

    *(v3 + 10) = v36;
    AGGraphClearUpdate();
    *&v47 = v6;
    *(&v47 + 1) = v40;
    *v48 = v42;
    *&v48[8] = v41;
    type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child(0, &v47);
    v37 = *AGGraphGetValue();
    AGGraphSetUpdate();
    (*(v39 + 8))(v9, v6);

    *(v3 + 22) = v37;
    *(v3 + 92) = 0;
  }
}

double closure #1 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child(0, v8);
  *a6 = *AGGraphGetValue();

  return result;
}

uint64_t closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v16 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(a2, a3, a4, a1 & 1, a5, a6, a7, a8);
  static Update.end()();

  return _MovableLockUnlock(v16);
}

double closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (*(v17 + 128) == 1)
    {
      v18 = swift_allocObject();
      v19 = a4;
      v20 = v18;
      *(v18 + 16) = a5;
      *(v18 + 24) = a6;
      *(v18 + 32) = a7;
      *(v18 + 40) = a8;
      *(v18 + 48) = a2;
      *(v18 + 56) = a3;
      *(v18 + 64) = v19 & 1;
      v21 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v21, partial apply for closure #1 in closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:), v20, 1, 1);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[4] = *MEMORY[0x1E69E9840];
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v14 = result;
    v19 = a2;
    v20 = a3 & 1;
    MEMORY[0x1EEE9AC00](result);
    v21[0] = a4;
    v21[1] = a5;
    v21[2] = a6;
    v21[3] = a7;
    v17 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion(0, v21);
    v18 = v14;
    return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, partial apply for closure #1 in Attribute.setValue(_:), &v16, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v15);
  }

  return result;
}

uint64_t static PhaseAnimator.StateTransitioningContainer.Child.EndlessLoopState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance PhaseAnimator<A, B>.StateTransitioningContainer.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.TransactionRule.updateValue()()
{
  AGGraphGetValue();

  AGGraphGetValue();
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  if ((*(Value + 4) & 1) == 0)
  {
    v1 = *Value;
    AGGraphClearUpdate();
    v2 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (v2 == v1)
    {
    }
  }

  AGGraphSetOutputValue();
}

double closure #1 in static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = _threadTransactionData();
    if (v6)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastClassUnconditional();
    }

    v7 = _threadTransactionID();
    if (a3)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v6, v7, a2, v8, 1, 0);
  }

  return result;
}

double PhaseAnimator.EmptyPhasesView.body.getter@<D0>(uint64_t a1@<X8>)
{
  specialized Image.init(systemName:)(0xD00000000000001BLL, 0x800000018DD80650);
  v3 = v2;
  type metadata accessor for FontBox<Font.SystemProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0x4040000000000000;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 33) = 3588;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for red != -1)
  {
    swift_once();
  }

  v6 = static Color.red;
  v7 = one-time initialization token for yellow;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static Color.yellow;
  *a1 = v3;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v4;
  *(a1 + 24) = 15;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  *(a1 + 88) = 15;

  return result;
}

uint64_t View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *&v28 = a8;
  *(&v28 + 1) = a11;
  *&v29 = a13;
  *(&v29 + 1) = a16;
  v17 = type metadata accessor for PhaseAnimator(0, &v28);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v17);
  v19 = v18;
  partial apply for closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(&v28);
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v23 = v28;
  v24 = v29;
  v22[0] = a7;
  v22[1] = v17;
  v22[2] = a12;
  v22[3] = v19;
  v20 = type metadata accessor for CustomModifier(0, v22);
  View.modifier<A>(_:)();
  return (*(*(v20 - 8) + 8))(&v28, v20);
}

uint64_t closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v58 = a8;
  v59 = a4;
  v47 = a7;
  v55 = a5;
  v56 = a6;
  v54 = a3;
  v57 = a9;
  v53 = a17;
  v52 = a16;
  v51 = a15;
  v45 = a11;
  v19 = *(a11 - 8);
  v46 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v50 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v23);
  (*(v19 + 16))(v21, a2, a11);
  v26 = swift_allocObject();
  v26[2] = a7;
  v27 = v58;
  v26[3] = v58;
  v26[4] = a10;
  v48 = a10;
  v26[5] = a11;
  v26[6] = a12;
  v26[7] = a13;
  v26[8] = a14;
  v28 = v51;
  v29 = v52;
  v26[9] = v51;
  v26[10] = v29;
  v31 = v53;
  v30 = v54;
  v26[11] = v53;
  v26[12] = v30;
  v26[13] = v59;
  v32 = swift_allocObject();
  v33 = v46;
  v32[2] = v47;
  v32[3] = v27;
  v32[4] = a10;
  v34 = v45;
  v32[5] = v45;
  v32[6] = a12;
  v32[7] = v33;
  v32[8] = a14;
  v32[9] = v28;
  v32[10] = v29;
  v35 = v55;
  v36 = v56;
  v32[11] = v31;
  v32[12] = v35;
  v32[13] = v36;

  v37 = v26;
  v38 = v58;
  PhaseAnimator.init<A, B>(_:trigger:content:animation:)(v50, v49, partial apply for closure #1 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:), v37, partial apply for closure #2 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:), v32, v58, &v75, v48, v34, v42, v43, v28, v29);
  *&v70 = v38;
  *(&v70 + 1) = a12;
  *&v71 = a14;
  *(&v71 + 1) = v31;
  v39 = type metadata accessor for PhaseAnimator(0, &v70);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v39);
  static ViewBuilder.buildExpression<A>(_:)();
  v72 = v77;
  v73 = v78;
  v74 = v79;
  v70 = v75;
  v71 = v76;
  v40 = *(*(v39 - 8) + 8);
  v40(&v70, v39);
  v62 = v67;
  v63 = v68;
  v64 = v69;
  v60 = v65;
  v61 = v66;
  static ViewBuilder.buildExpression<A>(_:)();
  v77 = v62;
  v78 = v63;
  v79 = v64;
  v75 = v60;
  v76 = v61;
  return (v40)(&v75, v39);
}

uint64_t closure #1 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  PlaceholderContentView.init()();
  a2();
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v10 + 8);
  v16(v12, a8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v15, a8);
}

uint64_t View.phaseAnimator<A, B, C>(_:content:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v31 = a7;
  *(&v31 + 1) = a9;
  *&v32 = a11;
  *(&v32 + 1) = a13;
  v16 = type metadata accessor for PhaseAnimator(0, &v31);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v16);
  v18 = v17;
  closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)(a1, a2, a3, a4, a5, a6, a7, &v31, a9, a10, a11, a12, a13);
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  v25[0] = a6;
  v25[1] = v16;
  v25[2] = a10;
  v25[3] = v18;
  v19 = type metadata accessor for CustomModifier(0, v25);
  View.modifier<A>(_:)();
  return (*(*(v19 - 8) + 8))(&v31, v19);
}

uint64_t closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a6;
  v39 = a4;
  v40 = a5;
  v36 = a2;
  v37 = a3;
  v41 = a8;
  v33 = a10;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v38 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18;
  (*(v17 + 16))(v15);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v35 = a7;
  v20[4] = v19;
  v20[5] = a9;
  v20[6] = a10;
  v20[7] = a11;
  v20[8] = a12;
  v20[9] = a13;
  v21 = v37;
  v20[10] = v36;
  v20[11] = v21;
  v22 = swift_allocObject();
  v23 = v33;
  v22[2] = v34;
  v22[3] = a7;
  v22[4] = v19;
  v22[5] = a9;
  v22[6] = v23;
  v22[7] = a11;
  v22[8] = a12;
  v22[9] = a13;
  v24 = v40;
  v22[10] = v39;
  v22[11] = v24;

  v25 = v20;
  v26 = v35;
  PhaseAnimator.init<A>(_:content:animation:)(v38, partial apply for closure #1 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:), v25, partial apply for closure #2 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:), v22, v19, &v57, v30, v31, a12);
  *&v52 = v26;
  *(&v52 + 1) = a9;
  *&v53 = a11;
  *(&v53 + 1) = a13;
  v27 = type metadata accessor for PhaseAnimator(0, &v52);
  swift_getWitnessTable(protocol conformance descriptor for PhaseAnimator<A, B>, v27);
  static ViewBuilder.buildExpression<A>(_:)();
  v54 = v59;
  v55 = v60;
  v56 = v61;
  v52 = v57;
  v53 = v58;
  v28 = *(*(v27 - 8) + 8);
  v28(&v52, v27);
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v42 = v47;
  v43 = v48;
  static ViewBuilder.buildExpression<A>(_:)();
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v57 = v42;
  v58 = v43;
  return (v28)(&v57, v27);
}

double destroy for PhaseAnimator()
{

  return result;
}

uint64_t initializeWithCopy for PhaseAnimator(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v4;
  v5 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v5;
  v6 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v6;

  return a1;
}

uint64_t *assignWithCopy for PhaseAnimator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

uint64_t assignWithTake for PhaseAnimator(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t closure #1 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  PlaceholderContentView.init()();
  a2();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v9 + 8);
  v15(v11, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, a7);
}

uint64_t closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *), uint64_t a7)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v13[2] = a6(0, v14);
  v13[3] = a3;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a7, v13, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t CompletionListener.animationWasRemoved()()
{
  v1 = *(v0 + 32) - 1;
  *(v0 + 32) = v1;
  if (!v1 && (*(v0 + 41) & 1) == 0)
  {
    result = (*(v0 + 16))(1);
    *(v0 + 41) = 1;
  }

  return result;
}

uint64_t CompletionListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double destroy for PhaseAnimator.StateTransitioningContainer()
{

  return result;
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t *assignWithCopy for PhaseAnimator.StateTransitioningContainer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  a1[5] = a2[5];

  return a1;
}

_OWORD *assignWithTake for PhaseAnimator.StateTransitioningContainer(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

double destroy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 72);
  if (v5 != 1)
  {
  }

  v6 = *(a2 + 80);
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t assignWithCopy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v5;
  v6 = (a1 + 72);
  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  if (v7 == 1)
  {
    if (v8 != 1)
    {
      *v6 = v8;

      goto LABEL_9;
    }

    v9 = 1;
  }

  else
  {
    if (v8 != 1)
    {
      *v6 = v8;

      goto LABEL_9;
    }

    v10 = *(a3 + 32);
    v14[0] = *(a3 + 16);
    v14[1] = v10;
    v11 = type metadata accessor for PhaseAnimator.Behavior(0, v14);
    (*(*(v11 - 8) + 8))(v6, v11);
    v9 = *(a2 + 72);
  }

  *v6 = v9;
LABEL_9:
  *(a1 + 80) = *(a2 + 80);

  v12 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v12;
  return a1;
}

uint64_t assignWithTake for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = (a1 + 72);
  v7 = *(a2 + 72);
  if (*(a1 + 72) != 1)
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_6;
    }

    v8 = *(a3 + 32);
    v11[0] = *(a3 + 16);
    v11[1] = v8;
    v9 = type metadata accessor for PhaseAnimator.Behavior(0, v11);
    (*(*(v9 - 8) + 8))(v6, v9);
    v7 = *(a2 + 72);
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t getEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 93))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5) > 0x18)
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
    v12 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
    *(v14 + 4) = *(v12 + 4);
    *v14 = v13;
  }

  return v3;
}

double destroy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 4);
  *v9 = *v10;
  *(v9 + 4) = v11;

  return a1;
}

uint64_t assignWithCopy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 4) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v10 = v11;
  return a1;
}

uint64_t initializeWithTake for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 4);
  *v9 = *v10;
  *(v9 + 4) = v11;
  return a1;
}

uint64_t assignWithTake for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v8 += 11;
  *v7 = v9;

  v10 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 4) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v10 = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child.Value(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

void storeEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child.Value(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v14 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v14 = a2;
        }

        *v13 = v14;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, type metadata accessor for _BackgroundStyleModifier);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &protocol witness table for _ForegroundStyleModifier<A>);
    v6[0] = v4;
    v6[1] = &protocol witness table for _BackgroundStyleModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v9 = a3(255);
    type metadata accessor for _ForegroundStyleModifier<Color>(255, a4, a5);
    v12 = type metadata accessor for ModifiedContent(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _PaddingLayout, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255);
    v4 = type metadata accessor for ModifiedContent(a1, &type metadata for Image, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for Attribute<Transaction>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ForegroundStyleModifier<Color>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Color, &protocol witness table for Color);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4[0] = &protocol witness table for Image;
    v4[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t partial apply for closure #3 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    result = (*(v0 + 16))(0);
    *(v0 + 41) = 1;
  }

  return result;
}

uint64_t type metadata completion function for TimeDataFormatting.Configuration(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    (**(v12 - 8))(v10, v11);
    v13 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 24);
    if (v15 < 0xFFFFFFFF)
    {
      v16 = *v14;
      v17 = *(v14 + 16);
      *(v13 + 32) = *(v14 + 32);
      *v13 = v16;
      *(v13 + 16) = v17;
    }

    else
    {
      *(v13 + 24) = v15;
      *(v13 + 32) = *(v14 + 32);
      (**(v15 - 8))();
    }
  }

  return v3;
}

void *destroy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = ((v4 + 47) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 24) = v9;
  *(v7 + 32) = *(v8 + 32);
  (**(v9 - 8))(v7, v8);
  v10 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v13 = *v11;
    v14 = *(v11 + 16);
    *(v10 + 32) = *(v11 + 32);
    *v10 = v13;
    *(v10 + 16) = v14;
  }

  else
  {
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    (**(v12 - 8))();
  }

  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  v6.n128_f64[0] = (*v5)();
  v7 = *(v5 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(v8, v9, v6);
  v11 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 24);
  if (*(v11 + 24) < 0xFFFFFFFFuLL)
  {
    if (v13 < 0xFFFFFFFF)
    {
      v17 = *v12;
      v18 = *(v12 + 16);
      *(v11 + 32) = *(v12 + 32);
      *v11 = v17;
      *(v11 + 16) = v18;
    }

    else
    {
      *(v11 + 24) = v13;
      *(v11 + 32) = *(v12 + 32);
      (**(v13 - 8))(v10.n128_f64[0]);
    }
  }

  else if (v13 < 0xFFFFFFFF)
  {
    v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v15 = *v12;
    v16 = *(v12 + 16);
    *(v14 + 32) = *(v12 + 32);
    *v14 = v15;
    *(v14 + 16) = v16;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v11, v12, v10);
  }

  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(v11 + 32) = *(v12 + 32);
  *v11 = v13;
  *(v11 + 16) = v14;
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v7);
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  }

  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(v11 + 32) = *(v12 + 32);
  *v11 = v13;
  *(v11 + 16) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
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

double storeEnumTagSinglePayload for TimeDataFormatting.Configuration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
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
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t static TimeDataFormatting.Configuration.makeConfiguration(from:format:sizeVariant:secondsUpdateFrequencyBudget:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v32 = a2;
  v36 = a1;
  v34 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v31 - v18;
  v20 = *a5;
  v22 = *(v21 + 48);
  *&v42 = v20;
  v35 = FormatStyle.exactSizeVariant(_:)(&v31 - v18, &v42, a7);
  v19[v22] = v35 & 1;
  *&v37 = v20;
  v23 = v15;
  v24 = a6;
  v25 = v32;
  v26 = a6;
  v27 = v33;
  DiscreteFormatStyle.alwaysOnDisplayFormat<A>(source:secondsUpdateFrequencyBudget:sizeVariant:)(v32, &v37, a7, v26, a9, v33, &v42, a3);
  v28 = *(v34 + 16);
  v34 = v23;
  v28(v23, v25, v24);
  DiscreteFormatStyle.paused<A>(accordingTo:)(v25, a7, v24, v27, v41);
  (*(v17 + 8))(v19, TupleTypeMetadata2);
  if (*&v43[8])
  {
    outlined init with copy of AnyTrackedValue(&v42, &v37);
    v38[24] = v43[24];
  }

  else
  {
    v37 = v42;
    *v38 = *v43;
    *&v38[9] = *&v43[9];
  }

  if (*&v38[8])
  {
    outlined init with take of AnyTrackedValue(&v37, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    v40 = 0;
  }

  TimeDataFormatting.Configuration.init(source:highFrequencyFormat:lowFrequencyFormat:)(v34, v41, v39, v24, a7, v27, a9, v36);
  if (v35)
  {
    if (*&v43[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    return 1;
  }

  else
  {
    *&v38[9] = *&v43[9];
    *v38 = *v43;
    v37 = v42;
    if (*&v43[8])
    {
      v30 = v38[24];
      __swift_destroy_boxed_opaque_existential_1(&v37);
      return v30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t TimeDataFormatting.Configuration.formatAndFrequency(for:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v13 = *v12;
  if (*(v12 + 8))
  {

    v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v13);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*v12);
    if (v15)
    {
      v14 = *(v15 + 72);
    }

    else
    {
      v14 = 0;
    }
  }

  ResolvableStringResolutionContext.date.getter(v11);
  v18 = v14 & 1;
  TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(a1, a2, v11, &v18, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t static TimeDataFormatting.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v44 = a3;
  *(&v44 + 1) = a4;
  *&v45 = a5;
  *(&v45 + 1) = a6;
  v12 = type metadata accessor for TimeDataFormatting.Configuration(0, &v44);
  v37 = a1;
  v13 = (a1 + *(v12 + 52));
  v15 = v13[3];
  v14 = v13[4];
  v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
  v36 = a2;
  v17 = (a2 + *(v12 + 52));
  v18 = v17[3];
  v19 = __swift_project_boxed_opaque_existential_1(v17, v18);
  *(&v45 + 1) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
  LOBYTE(v19) = equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(v16, &v44, a3, a4, v15, a5, a6, *(*(*(v14 + 8) + 24) + 8));
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

  v21 = v37 + *(v12 + 56);
  if (*(v21 + 24))
  {
    outlined init with copy of AnyTrackedValue(v37 + *(v12 + 56), &v41);
    if (!*(&v42 + 1))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v23 = *(v21 + 16);
    v41 = *v21;
    v42 = v23;
    v43 = *(v21 + 32);
    if (!*(&v23 + 1))
    {
LABEL_4:
      if (*(v21 + 24))
      {
        goto LABEL_5;
      }

LABEL_14:
      v32 = *(v21 + 16);
      v44 = *v21;
      v45 = v32;
      v46 = *(v21 + 32);
      if (*(&v32 + 1))
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  outlined init with take of AnyTrackedValue(&v41, &v44);
  v24 = v36 + *(v12 + 56);
  if (*(v24 + 24))
  {
    outlined init with copy of AnyTrackedValue(v24, &v38);
    if (*(&v39 + 1))
    {
LABEL_11:
      outlined init with take of AnyTrackedValue(&v38, &v41);
      v26 = *(&v45 + 1);
      v25 = v46;
      v27 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v28 = *(&v42 + 1);
      v29 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      *(&v39 + 1) = v28;
      v30 = __swift_allocate_boxed_opaque_existential_1(&v38);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      v22 = equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(v27, &v38, a3, a4, v26, a5, a6, *(*(*(v25 + 8) + 24) + 8));
      __swift_destroy_boxed_opaque_existential_1(&v38);
      __swift_destroy_boxed_opaque_existential_1(&v41);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v44);
      return v22 & 1;
    }
  }

  else
  {
    v31 = *(v24 + 16);
    v38 = *v24;
    v39 = v31;
    v40 = *(v24 + 32);
    if (*(&v31 + 1))
    {
      goto LABEL_11;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (!*(v21 + 24))
  {
    goto LABEL_14;
  }

LABEL_5:
  outlined init with copy of AnyTrackedValue(v21, &v44);
  if (*(&v45 + 1))
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(&v44);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

LABEL_15:
  v33 = v36 + *(v12 + 56);
  if (*(v33 + 24))
  {
    outlined init with copy of AnyTrackedValue(v33, &v44);
  }

  else
  {
    v34 = *(v33 + 16);
    v44 = *v33;
    v45 = v34;
    v46 = *(v33 + 32);
  }

  v22 = *(&v45 + 1) == 0;
  if (*(&v45 + 1))
  {
    goto LABEL_19;
  }

  return v22 & 1;
}

uint64_t TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v43 = a3;
  v45 = a2;
  v8 = *(a5 + 32);
  v9 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  _s10Foundation4DateVSgMaTm_4(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Date();
  v20 = MEMORY[0x1EEE9AC00](v17);
  if (*a4 != 1)
  {
    v30 = v44 + *(a5 + 52);
    v31 = a1;
    goto LABEL_5;
  }

  v39 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v19;
  v42 = a1;
  v21 = v10;
  v22 = a5;
  v23 = v44;
  v24 = (*(v8 + 72))(v9, v8, v20);
  v40 = &v38;
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(v22 + 24);
  *(&v38 - 6) = v9;
  *(&v38 - 5) = v25;
  v26 = *(v22 + 40);
  *(&v38 - 4) = v8;
  *(&v38 - 3) = v26;
  *(&v38 - 2) = v23;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TimeDataFormatting.Configuration.formatAndFrequency(for:mode:), (&v38 - 8), MEMORY[0x1E69E73E0], v17, v27, v16);
  v28 = v21;
  v29 = v41;
  (*(v11 + 8))(v13, v28);
  if ((*(v29 + 48))(v16, 1, v17) != 1)
  {
    v33 = v39;
    (*(v29 + 32))(v39, v16, v17);
    lazy protocol witness table accessor for type Date and conformance Date();
    v34 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v29 + 8))(v33, v17);
    if ((v34 & 1) == 0)
    {
      goto LABEL_8;
    }

    v30 = v23 + *(v22 + 52);
    v31 = v42;
LABEL_5:
    result = outlined init with copy of AnyTrackedValue(v30, v31);
    goto LABEL_13;
  }

  _s10Foundation4DateVSgWOhTm_3(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
LABEL_8:
  v35 = v23 + *(v22 + 56);
  if (*(v35 + 24))
  {
    outlined init with copy of AnyTrackedValue(v35, &v46);
  }

  else
  {
    v36 = *(v35 + 16);
    v46 = *v35;
    v47 = v36;
    v48 = *(v35 + 32);
  }

  if (!*(&v47 + 1))
  {
    result = outlined init with copy of AnyTrackedValue(v23 + *(v22 + 52), v42);
    v37 = 2;
    goto LABEL_14;
  }

  result = outlined init with take of AnyTrackedValue(&v46, v42);
LABEL_13:
  v37 = 3;
LABEL_14:
  *v45 = v37;
  return result;
}

uint64_t DiscreteFormatStyle.alwaysOnDisplayFormat<A>(source:secondsUpdateFrequencyBudget:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v9 = v8;
  v61 = a6;
  v60 = a4;
  v59 = a1;
  v63 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v54 = &v52 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v23 = type metadata accessor for _MixedAoDFrequencyFormatInitializer(0, a3, a5, v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v62 = *a2;
  v27 = *(v15 + 16);
  v58 = v9;
  v27(v21, v9, a3, v24);
  v56 = v15;
  v28 = *(v15 + 32);
  v53 = v21;
  v52 = v28;
  v28(v26, v21, a3);
  v57 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  v65[0] = AssociatedTypeWitness;
  v65[1] = v30;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v72, &v68);
    v31 = *(&v69 + 1);
    v32 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    v65[0] = v62;
    LOBYTE(v31) = (*(v32 + 24))(&v72, v65, v31, v32, a8);
    v33 = v73;
    __swift_project_boxed_opaque_existential_1(&v72, v73);
    v34 = v63;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v59, v33, v60, v61, v63);
    *(v34 + 40) = v31 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    return __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    v36 = v62;
    v37 = v63;
    (v27)(v18, v58, a3);
    type metadata accessor for UpdateFrequencyDependentFormatStyle();
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v68, &v72);
      v38 = v73;
      v39 = v74;
      __swift_project_boxed_opaque_existential_1(&v72, v73);
      LOBYTE(v68) = 2;
      v40 = *(v39 + 16);
      v66 = v38;
      v67 = v39;
      __swift_allocate_boxed_opaque_existential_1(v65);
      v40(&v68, v38, v39);
      v41 = v66;
      v42 = v67;
      v43 = __swift_project_boxed_opaque_existential_1(v65, v66);
      v64 = v36;
      v44 = *(v41 - 8);
      MEMORY[0x1EEE9AC00](v43);
      v46 = &v52 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = FormatStyle.exactSizeVariant(_:)(v46, &v64, v41);
      *(&v69 + 1) = v41;
      v70 = v42;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
      (*(v44 + 32))(boxed_opaque_existential_1, v46, v41);
      v71 = v47 & 1;
      type metadata accessor for (style: UpdateFrequencyDependentFormatStyle, exact: Bool)(0);
      v49 = v54;
      v50 = TupleTypeMetadata2;
      swift_dynamicCast();
      LOBYTE(v50) = v49[*(v50 + 48)];
      v51 = v53;
      v52(v53, v49, a3);
      __swift_destroy_boxed_opaque_existential_1(v65);
      DiscreteFormatStyle.paused<A>(accordingTo:)(v59, a3, v60, v61, v37);
      (*(v56 + 8))(v51, a3);
      *(v37 + 40) = v50;
      return __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      result = _s10Foundation4DateVSgWOhTm_3(&v68, &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle?, type metadata accessor for UpdateFrequencyDependentFormatStyle);
      *(v37 + 25) = 0u;
      *v37 = 0u;
      *(v37 + 1) = 0u;
    }
  }

  return result;
}

uint64_t DiscreteFormatStyle.paused<A>(accordingTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  (*(a4 + 72))(a3, a4, v19);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness);
  (*(v18 + 8))(v21, v17);
  v22 = (v35 + 16);
  if (AssociatedTypeWitness == 1)
  {
    v23 = v37;
    a5[3] = a2;
    a5[4] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*v22)(boxed_opaque_existential_1, v36, a2);
  }

  else
  {
    v26 = v33;
    (*(v12 + 16))(v33, a1, a3);
    v27 = v34;
    (*v22)(v34, v36, a2);
    v38[0] = a3;
    v38[1] = a2;
    v28 = v37;
    v38[2] = a4;
    v38[3] = v37;
    v29 = type metadata accessor for PausedFormatStyle(0, v38);
    a5[3] = v29;
    swift_getWitnessTable(protocol conformance descriptor for PausedFormatStyle<A, B>, v29);
    a5[4] = v30;
    v31 = __swift_allocate_boxed_opaque_existential_1(a5);
    return PausedFormatStyle.init(source:base:)(v26, v27, a3, a2, a4, v28, v31);
  }
}

__n128 TimeDataFormatting.Configuration.init(source:highFrequencyFormat:lowFrequencyFormat:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v15 = type metadata accessor for TimeDataFormatting.Configuration(0, v19);
  outlined init with take of AnyTrackedValue(a2, a8 + *(v15 + 52));
  v16 = a8 + *(v15 + 56);
  result = *a3;
  v18 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v18;
  *(v16 + 32) = *(a3 + 32);
  return result;
}

__n128 TimeDataFormatting.Configuration.hash(into:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + *(a2 + 52)), *(v2 + *(a2 + 52) + 24));
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 56);
  if (*(v4 + 24))
  {
    outlined init with copy of AnyTrackedValue(v4, &v7);
    if (!*(&v8 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *v4;
    v6 = *(v4 + 16);
    v7 = *v4;
    v8 = v6;
    v9 = *(v4 + 32);
    if (!*(&v6 + 1))
    {
      return result;
    }
  }

  outlined init with take of AnyTrackedValue(&v7, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return result;
}

uint64_t equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-v12];
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v22);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, a5);
    (*(v14 + 32))(v17, v13, a5);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v17, a5);
  }

  else
  {
    v19(v13, 1, 1, a5);
    (*(v11 + 8))(v13, v10);
    v20 = 0;
  }

  return v20 & 1;
}

Swift::Int TimeDataFormatting.Configuration.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Configuration.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t PausedFormatStyle.init(source:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PausedFormatStyle(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t PausedFormatStyle.endDate.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 3;
  v5 = a1 + 5;
  v6 = a1[4];
  v7 = a1[2];
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  (*(v6 + 72))(v7, v6, v10);
  *&v13 = v7;
  *(&v13 + 1) = *v4;
  *&v14 = v6;
  *(&v14 + 1) = *v5;
  v19 = v13;
  v20 = v14;
  v21 = v2;
  v15 = type metadata accessor for Date();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PausedFormatStyle.endDate.getter, v18, MEMORY[0x1E69E73E0], v15, v16, a2);
  return (*(v9 + 8))(v12, v8);
}

uint64_t PausedFormatStyle.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a1;
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(a2 + 32);
  v30 = a2;
  v10 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(v9 + 72))(v10, v9, v18);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v21 = *(v9 + 48);
    v21(v32, v10, v9);
    v22 = v27;
    v21(v20, v10, v9);
    v23 = static Date.> infix(_:_:)();
    v24 = v29;
    v25 = *(v28 + 8);
    v25(v22, v29);
    v25(v8, v24);
    if (v23)
    {
      dispatch thunk of FormatStyle.format(_:)();
      return (*(v16 + 8))(v20, AssociatedTypeWitness);
    }

    (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  return dispatch thunk of FormatStyle.format(_:)();
}

uint64_t PausedFormatStyle.discreteInput(before:)@<X0>(void (*a1)(void, void, void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a3;
  v66 = a1;
  v6 = a2[2];
  v62 = a2[4];
  v63 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v49 - v8;
  _s10Foundation4DateVSgMaTm_4(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = AssociatedTypeWitness;
  v61 = &v49 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
  v24 = v4;
  PausedFormatStyle.endDate.getter(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    return (*(v19 + 32))(v65, v23, v18);
  }

  v55 = v23;
  v56 = v19;
  v57 = v18;
  v26 = v61;
  (*(v13 + 32))(v61, v11, v12);
  v27 = v62;
  v28 = v63;
  v29 = v66;
  v66 = *(v62 + 48);
  v66(v29, v63, v62);
  v30 = static Date.< infix(_:_:)();
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v31 = v33;
  v33(v15, v12);
  if (v30)
  {
    v51 = v15;
    v52 = v24;
    v53 = v32;
    v54 = v31;
    v35 = v55;
    v34 = v56;
    v36 = v59;
    v37 = v57;
    (*(v56 + 16))(v59, v55, v57);
    v38 = v60;
    if ((*(v64 + 48))(v36, 1, v60) == 1)
    {
      v54(v26, v12);
      v39 = *(v34 + 8);
      v39(v35, v37);
      v39(v36, v37);
      return (*(v64 + 56))(v65, 1, 1, v38);
    }

    v40 = *(v64 + 32);
    v41 = v58;
    v59 = (v64 + 32);
    v50 = v40;
    v40();
    v42 = v51;
    v43 = v62;
    v44 = v63;
    v66(v41, v63, v62);
    v45 = static Date.> infix(_:_:)();
    v46 = v42;
    v47 = v54;
    v54(v46, v12);
    if (v45)
    {
      v47(v26, v12);
      (*(v56 + 8))(v55, v57);
      v48 = v65;
      (v50)(v65, v41, v38);
      return (*(v64 + 56))(v48, 0, 1, v38);
    }

    (*(v43 + 72))(v44, v43);
    (*(v64 + 8))(v41, v38);
    v47(v26, v12);
  }

  else
  {
    (*(v27 + 72))(v28, v27);
    v31(v26, v12);
  }

  return (*(v56 + 8))(v55, v57);
}