void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t *a7, void *a8, int a9, void *a10, int a11, char a12, _DWORD *a13, uint64_t *a14, uint64_t *a15, char a16)
{
  v30[69] = *MEMORY[0x29EDCA608];
  v18 = *(a1 + 1);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v19)
  {
    v19 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v18, (v19 + 56), a1, a2);
  BYTE5(v21) = a16;
  BYTE4(v21) = a12;
  LODWORD(v21) = a11;
  sub_29AEC053C(v30, a14, a15, a3, a4, a5, a6, a7, a8, a9, a10, v21);
  v29 = a2;
  v20 = sub_29AEC13B0(a1 + 3, a2, &unk_29B4D6118, &v29, &v28);
  sub_29AEBD9F8((v20 + 5), v30);
  sub_29AEC0710(v30);
}

void sub_29AEBDD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddCube(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, char a4, _DWORD *a5, uint64_t *a6, void *a7, int a8, void *a9, int a10)
{
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v18)
  {
    v18 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((*(v18 + 8) ^ *a6) <= 7)
  {
    sub_29AEBE080(&unk_29B712FF0, 8, v38);
    sub_29AEBE114(&unk_29B713050, 12, v37);
    sub_29AEBE114(&unk_29B713080, 36, v36);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(a1, a2, a3, v38, v37, v36, &v21, a7, a8, a9, a10, a4, a5, a6, v19 + 71, 0);
  }

  sub_29AEBE080(&unk_29B712FF0, 8, v38);
  sub_29AEBE114(&unk_29B713110, 6, v37);
  sub_29AEBE114(&unk_29B713128, 24, v36);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v20)
  {
    v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(a1, a2, a3, v38, v37, v36, &v21, a7, a8, a9, a10, a4, a5, a6, v20 + 71, 0);
}

void *sub_29AEBE080@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A193124(a3, a2);
  result = sub_29A1935CC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 12 * v6);
  }

  return result;
}

void *sub_29AEBE114@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A19D6E4(a3, a2);
  result = sub_29A19DBEC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 4 * v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddGrid(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, BOOL a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  v9 = 0;
  v37[2] = *MEMORY[0x29EDCA608];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  do
  {
    for (i = 0; i != 22; i += 2)
    {
      v12 = i / 10.0 + -1.0;
      *v25 = v12;
      *&v11 = (2 * v9) / 10.0 + -1.0;
      *(v25 + 4) = v11;
      sub_29A8F3D60(v34, v25);
    }

    ++v9;
  }

  while (v9 != 11);
  v13 = 0;
  v14 = 11;
  do
  {
    v15 = 10;
    v16 = v14;
    do
    {
      LODWORD(v25[0]) = 4;
      sub_29A7ACA64(v32, v25);
      LODWORD(v25[0]) = v16 - 11;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16 - 10;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16 + 1;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16;
      sub_29A7ACA64(v30, v25);
      ++v16;
      --v15;
    }

    while (v15);
    ++v13;
    v14 += 11;
  }

  while (v13 != 10);
  sub_29A1935CC(v34);
  sub_29AEBE080(v35, v34[0], v29);
  sub_29A19DBEC(v32);
  sub_29AEBE114(v33, v32[0], v28);
  sub_29A19DBEC(v30);
  sub_29AEBE114(v31, v30[0], v27);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v37[1] = &off_2A2042840 + 2;
  v17 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v17 = _D0;
  v17[2] = 0;
  atomic_store(0, v17 + 3);
  atomic_fetch_add_explicit(v17 + 3, 1u, memory_order_relaxed);
  v36[1] = &unk_2A2044C63;
  v37[0] = v17;
  LODWORD(v36[0]) = 1065353216;
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v23)
  {
    v23 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(this, a2, a3, v29, v28, v27, v25, v37, 0, v36, 0, 0, a5, v23 + 7, v24 + 71, 0);
}

void sub_29AEBE4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddTet(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, char a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v25[2] = *MEMORY[0x29EDCA608];
  sub_29AEBE080(&unk_29B713188, 21, v23);
  sub_29AEBE114(&unk_29B713284, 24, v22);
  sub_29AEBE114(&unk_29B7132E4, 96, v21);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v25[1] = &off_2A2042840 + 2;
  v12 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v12 = _D0;
  v12[2] = 1065353216;
  atomic_store(0, v12 + 3);
  atomic_fetch_add_explicit(v12 + 3, 1u, memory_order_relaxed);
  v24[1] = &unk_2A2044C63;
  v25[0] = v12;
  LODWORD(v24[0]) = 1065353216;
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(this, a2, a3, v23, v22, v21, v19, v25, 0, v24, 0, a4, a5, a6, v18 + 71, 0);
}

void sub_29AEBE74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetRefineLevel(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v5 = a2;
  *(sub_29AD04BE4(this + 12, a2, &unk_29B4D6118, &v5) + 9) = a3;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2);
}

uint64_t ***pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetReprSelector@<X0>(uint64_t ***this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A55CDFC((this + 3), a2);
  if (this + 4 == result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v10 = a2;
    result = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v10, &v9);
    v7 = result[73];
    *a3 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v8;
      }
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetReprName(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3), a2))
  {
    v8 = a2;
    v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v8, &v7);
    sub_29A166F2C(v6 + 73, a3);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2);
  }
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetExtent(uint64_t ***this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a3 + 16) = xmmword_29B43C5A0;
  *(a3 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (this + 4 != sub_29A55CDFC((this + 3), a2))
  {
    *&v11.f64[0] = a2;
    v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v11, &v13);
    sub_29A4ADDE0(v15, (v6 + 23));
  }

  sub_29A1935CC(v15);
  v7 = v16;
  sub_29A1935CC(v15);
  v13 = v7;
  v14 = v16 + 12 * *&v15[0];
  while (v13 != v14)
  {
    v10 = sub_29A21D194(&v13, v8, v9);
    v11 = vcvtq_f64_f32(*v10);
    v12 = v10[1].f32[0];
    sub_29A87C7EC(a3, &v11);
    sub_29A21D214(&v13);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

char *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetTransform@<X0>(uint64_t ***this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  if (this + 4 != sub_29A55CDFC((this + 3), a2))
  {
    v18 = a2;
    result = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v18, &v17);
    v7 = *(result + 56);
    v8 = *(result + 72);
    v9 = *(result + 104);
    a3[2] = *(result + 88);
    a3[3] = v9;
    *a3 = v7;
    a3[1] = v8;
    v10 = *(result + 120);
    v11 = *(result + 136);
    v12 = *(result + 152);
    v13 = *(result + 168);
LABEL_5:
    a3[6] = v12;
    a3[7] = v13;
    a3[4] = v10;
    a3[5] = v11;
    return result;
  }

  if (this + 19 != sub_29A55CDFC((this + 18), a2))
  {
    v18 = a2;
    result = sub_29AEC0B38(this + 18, a2, &unk_29B4D6118, &v18);
    v14 = *(result + 40);
    v15 = *(result + 56);
    v16 = *(result + 88);
    a3[2] = *(result + 72);
    a3[3] = v16;
    *a3 = v14;
    a3[1] = v15;
    v10 = *(result + 104);
    v11 = *(result + 120);
    v12 = *(result + 136);
    v13 = *(result + 152);
    goto LABEL_5;
  }

  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMeshTopology(uint64_t ***this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v9);
  v11 = a2;
  v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v11, &v10);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v7)
  {
    v7 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, v7 + 7, v8 + 71, (v6 + 28), (v6 + 33), 0);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::Get@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v22[2] = *MEMORY[0x29EDCA608];
  v8 = sub_29A2F4F50(this + 28, a2);
  v22[1] = 0;
  if (!v8 || (v9 = sub_29A16039C(v8 + 3, a3)) == 0)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v10 + 59) ^ *a3) <= 7)
    {
      if ((this + 32) != sub_29A55CDFC(this + 24, a2))
      {
        v21 = a2;
        v11 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v21, &v20) + 23;
LABEL_9:
        a4[1] = &off_2A20433C0;
        sub_29A18ECC8(a4, v11);
        return sub_29A186B14(v22);
      }

      goto LABEL_36;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v12 + 19) ^ *a3) > 7)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v14)
      {
        v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v14 + 20) ^ *a3) > 7)
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        if (!v15)
        {
          v15 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        }

        if ((*(v15 + 8) ^ *a3) > 7)
        {
          v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          if (!v16)
          {
            v16 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          }

          if ((*(v16 + 7) ^ *a3) > 7)
          {
            v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
            if (!v18)
            {
              v18 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
            }

            if ((*(v18 + 9) ^ *a3) <= 7 && (this + 56) != sub_29A55CDFC(this + 48, a2))
            {
              v21 = a2;
              v11 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v21, &v20) + 15;
              goto LABEL_9;
            }
          }

          else if ((this + 56) != sub_29A55CDFC(this + 48, a2))
          {
            v21 = a2;
            v17 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v21, &v20);
            a4[1] = &off_2A20435E8;
            sub_29A18ECC8(a4, (v17 + 10));
            return sub_29A186B14(v22);
          }
        }

        else if ((this + 56) != sub_29A55CDFC(this + 48, a2))
        {
          v21 = a2;
          v11 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v21, &v20) + 5;
          goto LABEL_9;
        }

LABEL_36:
        a4[1] = 0;
        return sub_29A186B14(v22);
      }

      if ((this + 32) == sub_29A55CDFC(this + 24, a2))
      {
        goto LABEL_36;
      }

      v21 = a2;
      v13 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v21, &v20) + 70;
    }

    else
    {
      if ((this + 32) == sub_29A55CDFC(this + 24, a2))
      {
        goto LABEL_36;
      }

      v21 = a2;
      v13 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v21, &v20) + 67;
    }

    sub_29A186EF4(a4, v13);
    return sub_29A186B14(v22);
  }

  sub_29A1854E8(v22, v9 + 3);
  sub_29A186A3C(a4, v22);
  return sub_29A186B14(v22);
}

void sub_29AEBF050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_29A19D6E4(a4, 0);
  v8 = sub_29A55CDFC(this + 48, a2);
  v9 = (this + 56) == v8;
  if ((this + 56) == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 5;
  }

  if (!v9)
  {
    v11 = v8[33];
    v12 = (v8[34] - v11) >> 3;
    v13 = 0;
    if (v8[34] != v11)
    {
      if (v12 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = (v8[34] - v11) >> 3;
      }

      while (*(v11 + 8 * v13) != *a3)
      {
        if (v14 == ++v13)
        {
          v13 = v14;
          break;
        }
      }
    }

    if (v13 != v12 && v10[15])
    {
      v15 = 0;
      do
      {
        sub_29A19DBEC((v10 + 15));
        if (v13 == *(v10[19] + 4 * v15))
        {
          v16 = v15;
          sub_29A7ACA64(a4, &v16);
        }

        ++v15;
      }

      while (v15 < v10[15]);
    }
  }
}

pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A55CDFC(this + 48, a2);
  if ((this + 56) != result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerTransform(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, float64x2_t *a3@<X8>)
{
  v5 = sub_29A55CDFC(this + 48, a2);
  if ((this + 56) == v5)
  {

    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(a3, v5 + 25);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetDisplayStyle(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 13 == sub_29A1EF6EC((this + 12), a2))
  {
    v4 = (this + 21);
  }

  else
  {
    v7 = a2;
    v4 = sub_29AD04BE4(this + 12, a2, &unk_29B4D6118, &v7) + 9;
  }

  sub_29AD01650(&v6, *v4, 0, 1, 0, 0, 0);
  return v6;
}

unint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetPrimvarDescriptors@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v28 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (a3 == 3)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v8)
    {
      v8 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v9 = a4[1];
    if (v9 >= a4[2])
    {
      v10 = sub_29AD04E7C(a4, v7 + 59, &v28, v8 + 4);
    }

    else
    {
      sub_29ACCA394(a4[1], v7 + 59, v28, v8 + 4, 0);
      v10 = v9 + 32;
    }

    a4[1] = v10;
  }

  result = sub_29A55CDFC(a1 + 24, a2);
  if (a1 + 32 == result)
  {
    goto LABEL_27;
  }

  v30[0] = a2;
  v12 = sub_29AEC13B0((a1 + 24), a2, &unk_29B4D6118, v30, &v29);
  if (*(v12 + 138) == v28)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v14)
    {
      v14 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v15 = a4[1];
    if (v15 >= a4[2])
    {
      v16 = sub_29AD04E7C(a4, v13 + 19, &v28, v14 + 1);
    }

    else
    {
      sub_29ACCA394(a4[1], v13 + 19, v28, v14 + 1, 0);
      v16 = v15 + 32;
    }

    a4[1] = v16;
  }

  v30[0] = a2;
  result = sub_29AEC13B0((a1 + 24), a2, &unk_29B4D6118, v30, &v29);
  v17 = v28;
  if (*(result + 576) == v28)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v19 = a4[1];
    if (v19 >= a4[2])
    {
      result = sub_29AD04FA4(a4, v18 + 20, &v28);
    }

    else
    {
      sub_29AD050C0(a4, a4[1], v18 + 20, &v28);
      result = v19 + 32;
    }

    a4[1] = result;
LABEL_27:
    v17 = v28;
  }

  if (v17 == 5)
  {
    result = sub_29A55CDFC(a1 + 48, a2);
    if (a1 + 56 != result)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v20)
      {
        v20 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v21 = a4[1];
      if (v21 >= a4[2])
      {
        v22 = sub_29AD04FA4(a4, v20 + 8, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v20 + 8, &v28);
        v22 = v21 + 32;
      }

      a4[1] = v22;
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
        v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v24 = a4[1];
      if (v24 >= a4[2])
      {
        v25 = sub_29AD04FA4(a4, v23 + 7, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v23 + 7, &v28);
        v25 = v24 + 32;
      }

      a4[1] = v25;
      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v26)
      {
        v26 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v27 = a4[1];
      if (v27 >= a4[2])
      {
        result = sub_29AD04FA4(a4, v26 + 9, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v26 + 9, &v28);
        result = v27 + 32;
      }

      a4[1] = result;
    }
  }

  return result;
}

void sub_29AEBF674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v12 + 8) = v13;
  a12 = v12;
  sub_29ABEE9FC(&a12);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMaterialResource(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v6, (v7 + 152), a1, a2);
  v10 = a2;
  v8 = sub_29AD04B48((a1 + 72), a2, &unk_29B4D6118, &v10);
  return sub_29A1854E8(v8 + 5, a3);
}

int *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::BindMaterial(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = a2;
  v4 = sub_29A326108(this + 22, a2, &unk_29B4D6118, &v6);
  sub_29A2258F0(v4 + 9, a3);
  return sub_29A225948(v4 + 10, a3 + 1);
}

BOOL pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMaterialId@<W0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 176, a2, a3);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A55CDFC(this + 72, a2);
  if ((this + 80) == result)
  {
    a3[1] = 0;
  }

  else
  {

    return sub_29A186EF4(a3, result + 5);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerId@<W0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 200, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetCameraParamValue@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v6 = sub_29A2F4F50(this + 28, a2);
  v9[1] = 0;
  if (v6 && (v7 = sub_29A16039C(v6 + 3, a3)) != 0)
  {
    sub_29A1854E8(v9, v7 + 3);
    sub_29A186A3C(a4, v9);
  }

  else
  {
    a4[1] = 0;
  }

  return sub_29A186B14(v9);
}

void sub_29AEBF98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetRenderBufferDescriptor@<D0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = sub_29A2F4F50(this + 28, a2);
  if (v4)
  {
    v5 = v4;
    v11 = 0;
    v6 = atomic_load(&qword_2A174F8D8);
    if (!v6)
    {
      v6 = sub_29AEC14F4();
    }

    v7 = sub_29A16039C(v5 + 3, v6);
    if (v7 && (sub_29A1854E8(&v10, v7 + 3), (sub_29AEBFAC0(&v10) & 1) != 0))
    {
      if ((v11 & 4) != 0)
      {
        v8 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v8 = v10;
      }

      *a3 = *v8;
      *(a3 + 16) = *(v8 + 16);
    }

    else
    {
      *a3 = xmmword_29B6C2BB0;
      *(a3 + 16) = 0;
    }

    sub_29A186B14(&v10);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_29B6C2BB0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_29AEBFAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEBFAC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B71374CLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209A888);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetTaskRenderTags@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A2F4F50(this + 28, a2);
  if (result)
  {
    v5 = result;
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v6)
    {
      v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    result = sub_29A160470(v5 + 3, v6 + 70);
    if (result)
    {
      sub_29A1DE690((result + 3));
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;

      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::WriteRenderBufferToFile(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, char *a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(v4, (v5 + 312), a2);
}

void sub_29AEBFFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A1847D4(va);
  _Unwind_Resume(a1);
}

void sub_29AEC0054(uint64_t a1)
{
  sub_29AEC07B8(a1);

  operator delete(v1);
}

uint64_t sub_29AEC007C(uint64_t a1)
{
  sub_29AEC00B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AEC00B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AEC00FC(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AEC00FC(_DWORD *a1)
{
  sub_29AC1E22C((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29AEC0144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v8 + 1) = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 88);
  v7[4] = *(a1 + 72);
  v7[5] = v2;
  v3 = *(a1 + 120);
  v7[6] = *(a1 + 104);
  v7[7] = v3;
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  v5 = *(a1 + 56);
  v7[2] = *(a1 + 40);
  v7[3] = v5;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_29AEC027C(a2, v7, &v8, 1uLL);
}

uint64_t *sub_29AEC01DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v8 + 1) = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 88);
  v7[4] = *(a1 + 72);
  v7[5] = v2;
  v3 = *(a1 + 120);
  v7[6] = *(a1 + 104);
  v7[7] = v3;
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  v5 = *(a1 + 56);
  v7[2] = *(a1 + 40);
  v7[3] = v5;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_29AEC027C(a2, v7, &v8, 1uLL);
}

uint64_t *sub_29AEC027C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A79C588(result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      v7[2] = a2[2];
      v7[3] = v10;
      *v7 = v8;
      v7[1] = v9;
      v11 = a2[4];
      v12 = a2[5];
      v13 = a2[7];
      v7[6] = a2[6];
      v7[7] = v13;
      v7[4] = v11;
      v7[5] = v12;
      a2 += 8;
      v7 += 8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_29AEC02F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEC0310(uint64_t a1)
{
  *(a1 + 28) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 44) = 0x404000003F800000;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 257;
  *(a1 + 62) = 1;
  *(a1 + 64) = xmmword_29B47CF20;
  *(a1 + 80) = xmmword_29B6DBB70;
  *(a1 + 96) = 1077936128;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 156) = 0x3F80000000000000;
  *(a1 + 164) = 3;
  *(a1 + 168) = 1;
  *(a1 + 172) = 7;
  *(a1 + 180) = -1;
  *(a1 + 189) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = xmmword_29B6DBBA0;
  *(a1 + 216) = 1;
  *(a1 + 233) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 241) = 257;
  *(a1 + 243) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 244));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 248));
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((a1 + 252));
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 4;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_29AEC0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  sub_29A1DCEA8((v10 + 244));
  a10 = (v10 + 128);
  sub_29AC943DC(&a10);
  a10 = v12;
  sub_29AC943DC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC0468(uint64_t a1)
{
  *a1 = 0;
  v2 = (a1 + 8);
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  sub_29A34A4F0(v2, 1uLL, v5);
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((a1 + 76));
  *(a1 + 112) = 0;
  *(a1 + 116) = 2;
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial((a1 + 120));
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_29AEC0504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  sub_29A1DCEA8(v10);
  _Unwind_Resume(a1);
}

double sub_29AEC053C(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, void *a9, int a10, void *a11, uint64_t a12)
{
  v13 = *a2;
  *a1 = *a2;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a3;
  *(a1 + 8) = *a3;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *a4;
  v16 = a4[1];
  v17 = a4[3];
  *(a1 + 48) = a4[2];
  *(a1 + 64) = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  v18 = a4[4];
  v19 = a4[5];
  v20 = a4[7];
  *(a1 + 112) = a4[6];
  *(a1 + 128) = v20;
  *(a1 + 80) = v18;
  *(a1 + 96) = v19;
  v21 = *(a5 + 16);
  *(a1 + 144) = *a5;
  *(a1 + 160) = v21;
  v22 = *(a5 + 32);
  *(a1 + 176) = v22;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(a1 + 168))
    {
      v23 = *(a1 + 168);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  v24 = *a6;
  *(a1 + 200) = a6[1];
  *(a1 + 184) = v24;
  v25 = *(a6 + 4);
  *(a1 + 216) = v25;
  if (v25)
  {
    v26 = (v25 - 16);
    if (*(a1 + 208))
    {
      v26 = *(a1 + 208);
    }

    atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
  }

  v27 = *(a7 + 16);
  *(a1 + 224) = *a7;
  *(a1 + 240) = v27;
  v28 = *(a7 + 32);
  *(a1 + 256) = v28;
  if (v28)
  {
    v29 = (v28 - 16);
    if (*(a1 + 248))
    {
      v29 = *(a1 + 248);
    }

    atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
  }

  sub_29AB6F3BC(a1 + 264, a8);
  sub_29A186EF4((a1 + 496), a9);
  *(a1 + 512) = a10;
  sub_29A186EF4((a1 + 520), a11);
  *(a1 + 536) = a12;
  *(a1 + 540) = BYTE4(a12);
  *(a1 + 541) = BYTE5(a12);
  *(a1 + 544) = 0;
  return result;
}

void sub_29AEC0710(void *a1)
{
  v2 = a1[68];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14((a1 + 65));
  sub_29A186B14((a1 + 62));
  sub_29AB72D70(a1 + 33);
}

void sub_29AEC07B8(uint64_t a1)
{
  *a1 = &unk_2A209A470;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 268));
  sub_29A1DE3A4((a1 + 264));
  sub_29AEC007C(a1 + 224);
  sub_29A1EF938(a1 + 200, *(a1 + 208));
  sub_29A1EF938(a1 + 176, *(a1 + 184));
  sub_29AEC0A9C(a1 + 144, *(a1 + 152));
  sub_29AEC0A00(a1 + 120, *(a1 + 128));
  sub_29A447324(a1 + 96, *(a1 + 104));
  sub_29AD0392C(a1 + 72, *(a1 + 80));
  sub_29AEC0928(a1 + 48, *(a1 + 56));
  sub_29AEC0884(a1 + 24, *(a1 + 32));

  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(a1);
}

void sub_29AEC0884(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AEC0884(a1, *a2);
    sub_29AEC0884(a1, a2[1]);
    sub_29AEC08E0((a2 + 4));
  }
}

void sub_29AEC0928(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AEC0928(a1, *a2);
    sub_29AEC0928(a1, a2[1]);
    sub_29AEC0984((a2 + 4));
  }
}

void sub_29AEC0984(uint64_t a1)
{
  v1 = (a1 + 232);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AEC0A00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AEC0A00(a1, *a2);
    sub_29AEC0A00(a1, a2[1]);
    sub_29AEC0A5C(a2 + 7);

    operator delete(a2);
  }
}

_DWORD *sub_29AEC0A5C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AEC0A9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AEC0A9C(a1, *a2);
    sub_29AEC0A9C(a1, a2[1]);
    sub_29AEC0AF8(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29AEC0AF8(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

char *sub_29AEC0B38(uint64_t ***a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0xA8uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 152) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

void *sub_29AEC0BF4(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      for (result = *v9; result; result = *result)
      {
        v11 = result[1];
        if (v11 == v6)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AD1D9B8(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AEC0E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEC0E3C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AEC0E3C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AEC00FC(v2 + 4);
    }

    operator delete(v2);
  }
}

void sub_29AEC0E9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AEC0EC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_29AEC0EF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209A6F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AEC0F34(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC0F54(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AEC1080(a1);
}

char *sub_29AEC1068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A209A708;
  return sub_29AEC1190(a2, v2);
}

void sub_29AEC1080(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    operator delete(v1);
  }
}

uint64_t sub_29AEC10E8(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    v3 = *a1;
    v4 = operator new(0x30uLL);
    v5 = v4;
    v6 = *(v3 + 8);
    *v4 = *v3;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(v3 + 16);
    *(v4 + 29) = *(v3 + 29);
    *(v4 + 1) = v7;
    atomic_store(0, v4 + 10);
    atomic_fetch_add_explicit(v4 + 10, 1u, memory_order_relaxed);
    sub_29AEC1080(a1);
    *a1 = v5;
    v9 = 0;
    sub_29AEC1080(&v9);
  }

  return *a1;
}

char *sub_29AEC1190(void *a1, uint64_t a2)
{
  result = operator new(0x30uLL);
  v5 = *(a2 + 8);
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 1) = *(a2 + 16);
  *(result + 29) = *(a2 + 29);
  atomic_store(0, result + 10);
  *a1 = result;
  atomic_fetch_add_explicit(result + 10, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AEC11F8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B713716 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209A7C0);
}

double sub_29AEC1284@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 29) = 0;
  *a1 = v2;
  a1[1] = sub_29AEC12D4;
  a1[2] = &stru_2A209A7C0;
  return result;
}

void sub_29AEC12D4(void *__p)
{
  if (__p)
  {
    v2 = __p[1];
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    operator delete(__p);
  }
}

uint64_t sub_29AEC131C(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AEC1354(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AEC1354(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AEC00FC(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29AEC13B0(uint64_t ***a1, uint64_t a2, uint64_t a3, _DWORD **a4, uint64_t a5)
{
  v7 = sub_29A38932C(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AEC1448(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

double sub_29AEC1448@<D0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x250uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1E21F4(v6 + 8, v7);
  sub_29A1E2240(v6 + 9, v7 + 1);
  result = 0.0;
  *(v6 + 184) = 0u;
  v6 += 184;
  *(v6 + 45) = 0;
  *(v6 + 48) = 0;
  *(v6 + 50) = 0;
  *(v6 - 18) = 0;
  *(v6 - 17) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AEC14F4()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "renderBufferDescriptor");
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8D8, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F8D8);
  }

  return v0;
}

void sub_29AEC1614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AEC1660(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 20), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC167C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 5, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AEC16A4(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

_DWORD *sub_29AEC17BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209A7D0;
  result = operator new(0x18uLL);
  v5 = *(v3 + 16);
  *result = *v3;
  result[4] = v5;
  atomic_store(0, result + 5);
  *a2 = result;
  atomic_fetch_add_explicit(result + 5, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29AEC1818(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 5);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x18uLL);
  v5 = v2[4];
  *v3 = *v2;
  v3[4] = v5;
  atomic_store(0, v3 + 5);
  atomic_fetch_add_explicit(v3 + 5, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 5, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void sub_29AEC18B4(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x333333333333333)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
    {
      v6 = 0x333333333333333;
    }

    else
    {
      v6 = v3;
    }

    v11 = a1;
    if (v6)
    {
      v7 = sub_29A09AEA8(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = &v7[80 * v2];
    v10 = &v7[80 * v6];
    sub_29AE9CD44(a1, v9, a2);
  }

  sub_29A00C9A4();
}

void sub_29AEC19D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AE9CE08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AEC19E8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC1A08(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AEC1B3C(a1);
}

void sub_29AEC1B3C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29AC943DC(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29AEC1B94(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 4);
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::hash_value(v2);
      if (v4)
      {
        v7 += (v7 + v5 + (v7 + v5) * (v7 + v5)) >> 1;
      }

      v2 += 80;
      v4 = 1;
      v5 = v7;
      --v6;
    }

    while (v6);
    v3 = 0x9E3779B97F4A7C55 * v7;
  }

  return bswap64(v3);
}

uint64_t sub_29AEC1C20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if ((v3 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 10;
    v4 += 10;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29AEC1C94(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29AEC1CFC();
  }

  return *a1;
}

void sub_29AEC1CFC()
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
}

void sub_29AEC1D80(void *a1)
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
}

void sub_29AEC1E24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC1E90@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC1F00(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC1ED8(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC1F00@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x68uLL);
  result = sub_29AEC1F64(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC1F64(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209A9F0;
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::HdxRenderTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC1FE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A9F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEC2070(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AA40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC20DC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC214C(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC2124(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC214C@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xE8uLL);
  result = sub_29AEC21B0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC21B0(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209AAD0;
  pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::HdxRenderSetupTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC2230(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AEC229C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 336), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC22BC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AEC23E8(a1);
}

void sub_29AEC23D0(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209AB10;
  sub_29AEC2674(a2, v2);
}

void sub_29AEC23E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 336), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v1 + 248));
      sub_29A1DE3A4((v1 + 244));
      v2 = (v1 + 128);
      sub_29AC943DC(&v2);
      v2 = (v1 + 104);
      sub_29AC943DC(&v2);
      operator delete(v1);
    }
  }
}

uint64_t sub_29AEC2468(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 336));
  if (v1 != 1)
  {
    sub_29AEC24D0(*a1);
  }

  return *a1;
}

void sub_29AEC2534(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
}

void sub_29AEC265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC943DC(va);
  _Unwind_Resume(a1);
}

void sub_29AEC26F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209ABE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC2764@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC27D4(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC27AC(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC27D4@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x198uLL);
  result = sub_29AEC2838(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC2838(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209AC78;
  pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::HdxSimpleLightTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC28B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AEC2924(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 208), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC2944(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AEC2A70(a1);
}

void sub_29AEC2A58(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209ACB8;
  sub_29AEC2CC4(a2, v2);
}

void sub_29AEC2A70(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 208), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial((v1 + 120));
      v3 = (v1 + 32);
      sub_29A1E234C(&v3);
      v3 = (v1 + 8);
      sub_29A1E234C(&v3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v1 + 4));
      v2 = sub_29A1DE3A4(v1);
      operator delete(v2);
    }
  }
}

uint64_t sub_29AEC2AF4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 208));
  if (v1 != 1)
  {
    sub_29AEC2B5C(*a1);
  }

  return *a1;
}

void sub_29AEC2BC0(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AEC2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E234C(va);
  sub_29A1DCEA8(v3);
  _Unwind_Resume(a1);
}

void sub_29AEC2D48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AD90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC2DB4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC2E24(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC2DFC(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC2E24@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  result = sub_29AEC2E88(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC2E88(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209AE20;
  pxrInternal__aapl__pxrReserved__::HdxShadowTask::HdxShadowTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC2F08(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AEC2F74(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 60), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC2F90(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 15, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AEC2FB8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

char *sub_29AEC30CC@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209AE60;
  result = operator new(0x40uLL);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(result + 44) = *(v3 + 44);
  *(result + 1) = v6;
  *(result + 2) = v5;
  *result = v7;
  atomic_store(0, result + 15);
  *a2 = result;
  atomic_fetch_add_explicit(result + 15, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29AEC3130(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 15);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x40uLL);
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  v7 = *v2;
  *(v3 + 44) = *(v2 + 11);
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;
  *v3 = v7;
  atomic_store(0, v3 + 15);
  atomic_fetch_add_explicit(v3 + 15, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 15, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void sub_29AEC31F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AF38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC3260@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC32D0(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC32A8(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC32D0@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x80uLL);
  result = sub_29AEC3334(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC3334(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209AFC8;
  pxrInternal__aapl__pxrReserved__::HdxSelectionTask::HdxSelectionTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC33B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209AFC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEC3440(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209B018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC34AC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC351C(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC34F4(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC351C@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  result = sub_29AEC3580(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC3580(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209B0A8;
  pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::HdxDrawTargetTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC3600(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209B0A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AEC366C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEC3688(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 16, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AEC36B0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29AEC37C4@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209B0E8;
  result = operator new(0x44uLL);
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  *(result + 2) = v3[2];
  *(result + 3) = v5;
  *result = v7;
  *(result + 1) = v6;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

void sub_29AEC3840(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209B1C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AEC38AC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AEC391C(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AEC38F4(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AEC391C@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x368uLL);
  result = sub_29AEC3980(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEC3980(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209B250;
  pxrInternal__aapl__pxrReserved__::HdxPickTask::HdxPickTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEC3A00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209B250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AEC3B7C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A209B290 + 1;
  return result;
}

void *sub_29AEC3B9C(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A209B368;
  result[1] = v3;
  return result;
}

uint64_t sub_29AEC3BE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A209B368;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AEC3C38(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209B3C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdxAovInputTask *pxrInternal__aapl__pxrReserved__::HdxAovInputTask::HdxAovInputTask(pxrInternal__aapl__pxrReserved__::HdxAovInputTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209B3E8;
  *(v4 + 24) = 0;
  *(v4 + 28) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v4 + 7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 8);
  *(this + 36) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 10);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::~HdxAovInputTask(pxrInternal__aapl__pxrReserved__::HdxAovInputTask *this)
{
  *this = &unk_2A209B3E8;
  v2 = this + 64;
  if (*(this + 8))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 56))(Hgi, v2);
  }

  if (*(this + 12))
  {
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v4 + 56))(v4, this + 96);
  }

  if (*(this + 10))
  {
    v5 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v5 + 56))(v5, this + 80);
  }

  if (*(this + 14))
  {
    v6 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v6 + 56))(v6, this + 112);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 10);
  sub_29A1DE3A4(this + 9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 8);
  sub_29A1DE3A4(this + 7);

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxAovInputTask::~HdxAovInputTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_Sync(int *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_29A0ECEEC(&v12, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) != 0)
  {
    sub_29AEC50C0(&v8);
    if (sub_29AEC3FC0(a1, a2, &v8))
    {
      sub_29A2258F0(a1 + 7, &v8);
      sub_29A225948(a1 + 8, &v9);
      sub_29A2258F0(a1 + 9, &v10);
      sub_29A225948(a1 + 10, &v11);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    result = sub_29A1DE3A4(&v8);
  }

  *a4 = 0;
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29AEC3FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AEC4154(&a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC3FC0(uint64_t a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v13, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEC5110(&v13);
  if (v7)
  {
    if ((v14 & 4) != 0)
    {
      v8 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v8 = v13;
    }

    sub_29A2258F0(a3, v8);
    sub_29A225948(a3 + 1, v8 + 1);
    sub_29A2258F0(a3 + 2, v8 + 2);
    sub_29A225948(a3 + 3, v8 + 3);
  }

  else
  {
    v11[0] = "hd/task.h";
    v11[1] = "_GetTaskParams";
    v11[2] = 242;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxAovInputTaskParams]";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v13);
  return v7;
}

void sub_29AEC4134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AEC4154(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::Prepare(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  (*(*Hgi + 216))(Hgi);
  a1[6] = 0;
  v6 = a1 + 6;
  a1[7] = 0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7))
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v7 + 312), (a1 + 28));
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9))
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v8 + 312), (a1 + 36));
  }

  if (*v6)
  {
    pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateIntermediateTexture(a1, (a1 + 12), *v6, 1);
  }

  v9 = a1[7];
  if (v9)
  {

    pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateIntermediateTexture(a1, (a1 + 14), v9, 2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateIntermediateTexture(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*a3 + 48))(a3);
  v9 = (*(*a3 + 56))(a3);
  v10 = (*(*a3 + 64))(a3);
  v11 = (*(*a3 + 72))(a3);
  if (v11 == 14)
  {
    v11 = 15;
  }

  HgiFormat = pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHgiFormat(v11);
  if (!*a2)
  {
    goto LABEL_15;
  }

  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  v14 = v8 == Descriptor[13] && v9 == Descriptor[14];
  if (!v14 || (v10 == Descriptor[15] ? (v15 = HgiFormat == Descriptor[7]) : (v15 = 0), !v15))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 56))(Hgi, a2);
  }

  if (!*a2)
  {
LABEL_15:
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    v20 = 0;
    v22 = xmmword_29B70A5A0;
    v23 = xmmword_29B70A5B0;
    *v24 = 0x1000100000000;
    *&v24[8] = 1;
    v25 = 0;
    v26 = 0;
    MEMORY[0x29C2C1A60](__p, "AovInput Intermediate Texture");
    *(&v23 + 1) = __PAIR64__(v9, v8);
    *v24 = v10;
    *&v24[4] = 0x100010001;
    v21 = a4 | 8;
    LODWORD(v22) = HgiFormat;
    v17 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    *a2 = (*(*v17 + 48))(v17, __p);
    *(a2 + 8) = v18;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29AEC4500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxAovInputTask::Execute(uint64_t a1, float *a2)
{
  v41[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v35, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::Execute(HdTaskContext *)");
  result = *(a1 + 48);
  if (result)
  {
    v5 = (*(*result + 120))(result);
    *(a1 + 24) = v5;
    v6 = *(a1 + 56);
    if (v6)
    {
      if (v5)
      {
        v7 = (*(*v6 + 120))(v6);
      }

      else
      {
        v7 = 0;
      }

      *(a1 + 24) = v7;
    }

    (*(**(a1 + 48) + 112))(*(a1 + 48));
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(*v8 + 112))(v8);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v9)
    {
      v9 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AC1E69C(a2, v9);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v10)
    {
      v10 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AC1E69C(a2, v10 + 1);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    if (!v11)
    {
      v11 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    }

    sub_29AC1E69C(a2, v11);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    if (!v12)
    {
      v12 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    }

    sub_29AC1E69C(a2, v12 + 1);
    (*(**(a1 + 48) + 128))(v41);
    v13 = sub_29AE8A2C8(v41);
    v14 = v13;
    if (v13)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v15)
      {
        v15 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v39 = v15;
      v16 = sub_29AC1E77C(a2, v15, &unk_29B4D6118, &v39);
      sub_29A1854E8(v16 + 3, v41);
    }

    v40 = &off_2A20986C0;
    v17 = operator new(0x18uLL);
    *v17 = *(a1 + 96);
    atomic_store(0, v17 + 4);
    v39 = v17;
    atomic_fetch_add_explicit(v17 + 4, 1u, memory_order_relaxed);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    if (!v18)
    {
      v18 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    }

    v38[0] = v18;
    v19 = sub_29AC1E77C(a2, v18, &unk_29B4D6118, v38);
    sub_29A18606C(v19 + 3, &v39);
    sub_29A186B14(&v39);
    v21 = *(a1 + 56);
    if (v21)
    {
      (*(*v21 + 128))(&v39);
      if (sub_29AE8A2C8(&v39))
      {
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v22)
        {
          v22 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        v38[0] = (v22 + 8);
        v23 = sub_29AC1E77C(a2, v22 + 1, &unk_29B4D6118, v38);
        sub_29A1854E8(v23 + 3, &v39);
      }

      v38[1] = &off_2A20986C0;
      v24 = operator new(0x18uLL);
      *v24 = *(a1 + 112);
      atomic_store(0, v24 + 4);
      v38[0] = v24;
      atomic_fetch_add_explicit(v24 + 4, 1u, memory_order_relaxed);
      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      if (!v25)
      {
        v25 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      }

      v37 = (v25 + 8);
      v26 = sub_29AC1E77C(a2, v25 + 1, &unk_29B4D6118, &v37);
      sub_29A18606C(v26 + 3, v38);
      sub_29A186B14(v38);
      sub_29A186B14(&v39);
    }

    if ((v14 & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateTexture(a1, v20, a1 + 64, *(a1 + 48), 1);
      if (*(a1 + 64))
      {
        v40 = &off_2A20986C0;
        v28 = operator new(0x18uLL);
        *v28 = *(a1 + 64);
        atomic_store(0, v28 + 4);
        v39 = v28;
        atomic_fetch_add_explicit(v28 + 4, 1u, memory_order_relaxed);
        v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v29)
        {
          v29 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        v38[0] = v29;
        v30 = sub_29AC1E77C(a2, v29, &unk_29B4D6118, v38);
        sub_29A18606C(v30 + 3, &v39);
        sub_29A186B14(&v39);
      }

      v31 = *(a1 + 56);
      if (v31)
      {
        pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateTexture(a1, v27, a1 + 80, v31, 2);
        if (*(a1 + 80))
        {
          v40 = &off_2A20986C0;
          v32 = operator new(0x18uLL);
          *v32 = *(a1 + 80);
          atomic_store(0, v32 + 4);
          v39 = v32;
          atomic_fetch_add_explicit(v32 + 4, 1u, memory_order_relaxed);
          v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          if (!v33)
          {
            v33 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          }

          v38[0] = (v33 + 8);
          v34 = sub_29AC1E77C(a2, v33 + 1, &unk_29B4D6118, v38);
          sub_29A18606C(v34 + 3, &v39);
          sub_29A186B14(&v39);
        }
      }
    }

    result = sub_29A186B14(v41);
  }

  else
  {
    *(a1 + 24) = 1;
  }

  if (v35)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v36, v35);
  }

  return result;
}

void sub_29AEC4A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateTexture(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_29A0ECEEC(&v43, "hdx", "void pxrInternal__aapl__pxrReserved__::HdxAovInputTask::_UpdateTexture(HdTaskContext *, HgiTextureHandle &, HdRenderBuffer *, HgiTextureUsageBits)");
  v9 = (*(*a4 + 48))(a4);
  v10 = (*(*a4 + 56))(a4);
  v11 = (*(*a4 + 64))(a4);
  v12 = (*(*a4 + 88))(a4);
  v14 = (*(*a4 + 72))(a4);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (v14 == 14)
  {
    v31 = a1;
    v15 = a5;
    v16 = 3 * v9 * v10 * v11;
    if (0xAAAAAAAAAAAAAAABLL * v16 < 0x5555555555555556)
    {
      if (v12)
      {
        sub_29A0A171C(&v40, 4 * v16 / 3uLL);
        v17 = v40;
        if (v16)
        {
          v18 = v40 + 4 * (4 * v16 / 3uLL);
          v19 = v40;
          do
          {
            *v19 = *v12;
            *(v19 + 1) = v12[1];
            *(v19 + 2) = v12[2];
            *(v19 + 3) = 1065353216;
            v12 += 3;
            v19 += 16;
          }

          while (v19 != v18);
        }
      }

      else
      {
        v17 = 0;
      }

      v14 = 15;
    }

    else
    {
      __p = "hdx/aovInputTask.cpp";
      v33 = "_ConvertRGBtoRGBA";
      v34 = 199;
      *v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ConvertRGBtoRGBA(const float *, size_t, std::vector<float> *)";
      v35[8] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Value count should be divisible by 3.", v13);
      v14 = 15;
      v17 = v40;
    }

    a5 = v15;
    a1 = v31;
  }

  else
  {
    v17 = v12;
  }

  HgiFormat = pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHgiFormat(v14);
  v21 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfFormat(v14) * v10 * v9 * v11;
  if (*a3)
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a3);
    v24 = Descriptor[13] == v9 && Descriptor[14] == v10 && Descriptor[15] == v11;
    if (v24 && *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a3) + 28) == HgiFormat)
    {
      v34 = 0;
      *v35 = 0;
      __p = v17;
      v33 = v21;
      *&v35[8] = *a3;
      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      (*(*Hgi + 32))(&v39);
      (*(*v39 + 24))(v39, "Upload CPU texels");
      (*(*v39 + 48))(v39, &__p);
      (*(*v39 + 32))(v39);
      v26 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v26, v39, 0);
      v27 = v39;
      v39 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      goto LABEL_29;
    }

    if (*a3)
    {
      v28 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      (*(*v28 + 56))(v28, a3);
    }
  }

  __p = 0;
  v33 = 0;
  *v35 = 0;
  v34 = 0;
  *&v35[4] = xmmword_29B70A5A0;
  *&v35[20] = xmmword_29B70A5B0;
  *v36 = 0x1000100000000;
  *&v36[8] = 1;
  v37 = 0;
  v38 = 0;
  MEMORY[0x29C2C1A60](&__p, "AovInput Texture");
  *&v35[28] = v9;
  *&v35[32] = v10;
  *v36 = v11;
  v37 = v21;
  v38 = v17;
  *&v36[4] = 0x100010001;
  *v35 = a5 | 8;
  *&v35[4] = HgiFormat;
  v29 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *a3 = (*(*v29 + 48))(v29, &__p);
  *(a3 + 8) = v30;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

LABEL_29:
  (*(*a4 + 96))(a4);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v44, v43);
  }
}

void sub_29AEC4FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v26 - 96);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AEC50C0(_DWORD *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a1 + 3);
  return a1;
}

uint64_t sub_29AEC5110(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B716908 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B448);
}

pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType *sub_29AEC519C(atomic_ullong *a1)
{
  result = sub_29AEC51E4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType::~HdxAovTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AEC51E4()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType::HdxAovTokens_StaticTokenType(v0);
  return v0;
}

__n128 pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::HdxBoundingBoxTask(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209B468;
  *(v3 + 24) = xmmword_29B6C6450;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0;
  *(v3 + 14) = 15;
  *(v3 + 60) = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 12) = 0;
  *(v3 + 104) = xmmword_29B6C6450;
  *(v3 + 15) = 0;
  *(v3 + 16) = 0;
  *(v3 + 34) = 15;
  *(v3 + 140) = 0;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 24) = 0;
  *(v3 + 25) = 2;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 13) = 0u;
  *(v3 + 14) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 19) = result;
  *(v3 + 80) = 1077936128;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::~HdxBoundingBoxTask(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  *this = &unk_2A209B468;
  v2 = this + 184;
  if (*(this + 23))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 104))(Hgi, v2);
  }

  if (*(this + 26))
  {
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v4 + 104))(v4, this + 208);
  }

  if (*(this + 28))
  {
    pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DestroyShaderProgram(this);
  }

  if (*(this + 30))
  {
    v5 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v5 + 152))(v5, this + 240);
  }

  if (*(this + 32))
  {
    v6 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v6 + 168))(v6, this + 256);
  }

  v7 = *(this + 35);
  if (v7)
  {
    *(this + 36) = v7;
    operator delete(v7);
  }

  v8 = *(this + 34);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::~HdxBoundingBoxTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DestroyShaderProgram(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  v3 = this + 224;
  result = *(this + 28);
  if (result)
  {
    v4 = (*(*result + 32))(result);
    v5 = *v4;
    v6 = v4[1];
    while (v5 != v6)
    {
      v7 = *v5++;
      v10 = v7;
      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*Hgi + 120))(Hgi, &v10);
    }

    v9 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    return (*(*v9 + 136))(v9, v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateShaderResources(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  if (*(this + 28))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::HdxPackageBoundingBoxShader(&v55);
  if ((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v5)
  {
    v5 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v59, EmptyString, v5 + 14);
  if ((v55.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  memset(&v58, 0, sizeof(v58));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v55);
  v6 = atomic_load(&qword_2A174F8E0);
  if (!v6)
  {
    v6 = sub_29AEC7D34();
  }

  if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::string::operator=(&v55, v7);
  v56 = 1;
  sub_29A008E78(&v42, "position");
  sub_29A008E78(&v47, "vec3");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v55, &v42, &v47, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "hd_InstanceID");
  sub_29A008E78(&v47, "uint");
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v8)
  {
    v8 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v8 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((*(v8 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v55, &v42, &v47, v9);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "gl_Position");
  sub_29A008E78(&v47, "vec4");
  sub_29A008E78(&__p, "position");
  memset(&v35, 0, sizeof(v35));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v55, &v42, &v47, &__p, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v10 = pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc::HgiShaderFunctionParamDesc(&v47);
  MEMORY[0x29C2C1A60](&v47, "dashStart", v10);
  MEMORY[0x29C2C1A60](&v48, "vec2");
  v50 = 1;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v55, &v47, v11);
  sub_29AEC5F14(&v55);
  sub_29A008E78(&v42, "worldViewProj");
  sub_29A008E78(&__p, "mat4");
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(&v55, &v42, &__p, 1, 3, *(this + 50));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v12 = atomic_load(&qword_2A174F8E0);
  if (!v12)
  {
    v12 = sub_29AEC7D34();
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v59, v12, &v42);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v42;
  }

  else
  {
    v13 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&v58, v13, size);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v15 = &v58;
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v58.__r_.__value_.__r.__words[0];
  }

  v57 = v15;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  *&v46 = (*(*Hgi + 112))(Hgi, &v55);
  *(&v46 + 1) = v17;
  memset(&v45, 0, sizeof(v45));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v42);
  sub_29A008E78(&__p, "gl_FragCoord");
  sub_29A008E78(&v35, "vec4");
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v18)
  {
    v18 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v18 + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = ((*(v18 + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v42, &__p, &v35, v19);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v42, &v47, v20);
  sub_29A008E78(&__p, "hd_FragColor");
  sub_29A008E78(&v35, "vec4");
  sub_29A008E78(&v41, "color");
  memset(&v40, 0, sizeof(v40));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v42, &__p, &v35, &v41, &v40);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29AEC5F14(&v42);
  v21 = atomic_load(&qword_2A174F8E0);
  if (!v21)
  {
    v21 = sub_29AEC7D34();
  }

  if ((v21[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v22 = ((v21[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
  }

  std::string::operator=(&v42, v22);
  v43 = 2;
  v23 = atomic_load(&qword_2A174F8E0);
  if (!v23)
  {
    v23 = sub_29AEC7D34();
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v59, (v23 + 1), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v45, p_p, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v26 = &v45;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = v45.__r_.__value_.__r.__words[0];
  }

  v44 = v26;
  v27 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  v41.__r_.__value_.__r.__words[0] = (*(*v27 + 112))(v27, &v42);
  v41.__r_.__value_.__l.__size_ = v28;
  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&__p);
  v29 = atomic_load(&qword_2A174F8E0);
  if (!v29)
  {
    v29 = sub_29AEC7D34();
  }

  if ((v29[2] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v30 = ((v29[2] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
  }

  std::string::operator=(&__p, v30);
  sub_29A03A998(v39, &v46);
  sub_29A03A998(v39, &v41);
  v31 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  v32 = (*(*v31 + 128))(v31, &__p);
  *(this + 28) = v32;
  *(this + 29) = v33;
  if (*(*v32 + 16))(v32) && (*(*v46 + 16))(v46) && ((*(*v41.__r_.__value_.__l.__data_ + 16))(v41.__r_.__value_.__r.__words[0]))
  {
    v1 = 1;
  }

  else
  {
    v35.__r_.__value_.__r.__words[0] = "hdx/boundingBoxTask.cpp";
    v35.__r_.__value_.__l.__size_ = "_CreateShaderResources";
    v35.__r_.__value_.__r.__words[2] = 162;
    v36 = "BOOL pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateShaderResources()";
    v37 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Failed to create bounding box shader");
    pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_PrintCompileErrors(this);
    pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DestroyShaderProgram(this);
    v1 = 0;
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v42);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v55);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  sub_29ADC1D14(v59);
  return v1;
}

void sub_29AEC5D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  sub_29AA85810(&a15);
  sub_29AB89F90(&a27);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_29AB8B508(&STACK[0x228]);
  sub_29AB89F90(&STACK[0x2A0]);
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  sub_29ADC1D14(&STACK[0x428]);
  _Unwind_Resume(a1);
}

void sub_29AEC5F14(uint64_t a1)
{
  sub_29A008E78(&v4, "color");
  sub_29A008E78(&v3, "vec4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a1, &v4, &v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v4, "viewport");
  sub_29A008E78(&v3, "vec4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a1, &v4, &v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v4, "dashSize");
  sub_29A008E78(&v3, "float");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a1, &v4, &v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_29AEC6080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_PrintCompileErrors(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  result = *(this + 28);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v6 = MEMORY[0x29EDC93C8];
      v7 = MEMORY[0x29EDC93D0];
      do
      {
        v8 = (*(**v4 + 24))();
        v9 = *(v8 + 23);
        if (v9 >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = *(v8 + 23);
        }

        else
        {
          v11 = *(v8 + 8);
        }

        v12 = sub_29A00911C(v6, v10, v11);
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v13 = std::locale::use_facet(&v20, v7);
        (v13->__vftable[2].~facet_0)(v13, 10);
        std::locale::~locale(&v20);
        std::ostream::put();
        std::ostream::flush();
        v4 += 16;
      }

      while (v4 != v5);
    }

    v14 = (*(**(this + 28) + 24))(*(this + 28));
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = sub_29A00911C(MEMORY[0x29EDC93C8], v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateBufferResources(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  __dst[36] = *MEMORY[0x29EDCA608];
  if (!*(this + 23))
  {
    goto LABEL_5;
  }

  if (*(this + 26))
  {
    if ((0x6F96F96F96F96F97 * ((*(this + 36) - *(this + 35)) >> 3)) <= *(this + 25))
    {
      return 1;
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 168))(Hgi, this + 256);
    pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DestroyShaderProgram(this);
    v3 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v3 + 152))(v3, this + 240);
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v4 + 104))(v4, this + 208);
    if (!*(this + 23))
    {
LABEL_5:
      memcpy(__dst, &unk_29B7140A0, 0x120uLL);
      __p[0] = 0;
      __p[1] = 0;
      v11 = 0;
      v12 = 1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      MEMORY[0x29C2C1A60](__p, "HdxBoundingBoxTask VertexBuffer");
      v12 = 4;
      v15 = __dst;
      v13 = 288;
      v14 = 12;
      v5 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      *(this + 23) = (*(*v5 + 96))(v5, __p);
      *(this + 24) = v6;
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  *(this + 25) = 0x6F96F96F96F96F97 * ((*(this + 36) - *(this + 35)) >> 3);
  memset(__dst, 0, 24);
  LODWORD(__dst[3]) = 1;
  __dst[4] = 0;
  LODWORD(__dst[5]) = 0;
  __dst[6] = 0;
  MEMORY[0x29C2C1A60](__dst, "HdxBoundingBoxTask TransformsBuffer");
  LODWORD(__dst[3]) = 1;
  __dst[4] = (*(this + 25) << 6);
  v7 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  *(this + 26) = (*(*v7 + 96))(v7, __dst);
  *(this + 27) = v8;
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_29AEC6580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateResourceBindings(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this)
{
  if (!*(this + 30))
  {
    v2 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v12);
    MEMORY[0x29C2C1A60](v2);
    pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(v7);
    __p[3] = 0x100000004;
    v10 = 1;
    v6 = 0;
    sub_29A00D250(v8, &v6);
    v6 = 0;
    sub_29A00D250(__p, &v6);
    sub_29A03A998(v7, this + 13);
    v11 = 0;
    sub_29ADEB7F8(v14, v7);
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 30) = (*(*Hgi + 144))(Hgi, v12);
    *(this + 31) = v4;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }

    v7[0] = &v15;
    sub_29AB88D58(v7);
    v7[0] = v14;
    sub_29AB88B40(v7);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  return 1;
}

void sub_29AEC66FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29ADEB844(va);
  sub_29ADE69D4(v5 - 88);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreatePipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2, pxrInternal__aapl__pxrReserved__::HgiTexture **a3)
{
  v6 = *(a1 + 256);
  if (v6)
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(v6);
    if (*a2)
    {
      v8 = *(Descriptor + 132);
      v9 = *(a1 + 24);
      v10 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
      v11 = *(v10 + 28) == v9 && *(v10 + 68) == v8;
      if (v11 && *a3)
      {
        v12 = *(a1 + 104);
        v13 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a3);
        if (*(v13 + 28) == v12 && *(v13 + 68) == v8)
        {
          return 1;
        }
      }
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 168))(Hgi, a1 + 256);
  }

  v16 = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v28);
  MEMORY[0x29C2C1A60](v28, "BoundingBox Pipeline", v16);
  v30 = 1;
  v31 = *(a1 + 224);
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v26);
  v26 = 12;
  v27 = 0;
  pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(&v23);
  LODWORD(v23) = 0;
  v25 = 12;
  sub_29A3A429C(__p, &v26);
  sub_29AEC69C8(v34, &v23);
  v17 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 68);
  v32 = v17 != 1;
  v33 = v17;
  *(a1 + 24) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 28);
  *(a1 + 28) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 24);
  sub_29AB8F8F8(v35, (a1 + 24));
  *(a1 + 104) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a3) + 28);
  *(a1 + 108) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a3) + 24);
  v18 = *(a1 + 152);
  v38 = *(a1 + 136);
  v39 = v18;
  v40 = *(a1 + 168);
  v19 = *(a1 + 120);
  v36 = *(a1 + 104);
  v37 = v19;
  v41 = 0x300000024;
  v20 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *(a1 + 256) = (*(*v20 + 160))(v20, v28);
  *(a1 + 264) = v21;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  v23 = v34;
  sub_29AB87628(&v23);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  return 1;
}

void sub_29AEC698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29AB8FA10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC69C8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AEC7F4C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_ComputeViewProjectionMatrix@<D0>(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdStRenderPassState *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  (*(*a2 + 24))(&v39, a2);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  (*(*a2 + 32))(&v31, a2);
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  if ((*((*(*Hgi + 200))(Hgi) + 49) & 2) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0x3FF0000000000000;
    v23 = 0x3FF0000000000000;
    v24 = 0u;
    v25 = 0u;
    v26 = 0x3FE0000000000000;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = xmmword_29B714090;
    v16 = v35;
    v17 = v36;
    v18 = v37;
    v19 = v38;
    v12 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v12, &v20);
    v35 = v16;
    v36 = v17;
    v37 = v18;
    v38 = v19;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
  }

  v7 = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = v7;
  v8 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v8;
  v9 = v40;
  *a3 = v39;
  *(a3 + 16) = v9;
  v10 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v10;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a3, &v31);
}

void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_UpdateShaderConstants(float32x4_t *a1, uint64_t a2, int32x4_t *a3, pxrInternal__aapl__pxrReserved__::HdStRenderPassState *a4)
{
  memset(v46, 0, sizeof(v46));
  pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_ComputeViewProjectionMatrix(a1, a4, v46);
  v7 = a1[12].u64[1];
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(&v55, 1.0);
  sub_29AEC809C(__src, v7, &v55);
  v8 = a1[17].i64[1];
  if (a1[18].i64[0] != v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v36 = _Q0;
    do
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *v37 = 0u;
      v38 = 0u;
      pxrInternal__aapl__pxrReserved__::GfTransform::SetIdentity(&v55);
      v17 = v8 + v10;
      v18 = *(v17 + 40);
      v19 = *(v17 + 16);
      v20 = (v18 - v19) * 0.5;
      v21 = v18 * 0.5 + v19 * 0.5;
      v22 = *(v17 + 24);
      v23 = *v17;
      *&v58[8] = vmulq_f64(vsubq_f64(v22, *v17), v36);
      *&v58[24] = v20;
      v55 = vaddq_f64(vmulq_f64(v22, v36), vmulq_f64(v23, v36));
      *v56.i64 = v21;
      pxrInternal__aapl__pxrReserved__::GfTransform::GetMatrix(&v55, v47.i64);
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v44 = v54;
      *v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v37, (v17 + 48));
      *&v58[16] = v41;
      v59 = v42;
      v60 = v43;
      v61 = v44;
      v55 = *v37;
      v56 = v38;
      v57 = v39;
      *v58 = v40;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v55.f64, v46);
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v47, &v55);
      v24 = (__src[0] + v9);
      v25 = v47;
      v26 = v48;
      v27 = v50;
      v24[2] = v49;
      v24[3] = v27;
      *v24 = v25;
      v24[1] = v26;
      ++v11;
      v8 = a1[17].i64[1];
      v10 += 312;
      v9 += 64;
    }

    while (v11 < 0x6F96F96F96F96F97 * ((a1[18].i64[0] - v8) >> 3));
  }

  v28 = (*(*a1[13].i64[0] + 32))(a1[13].i64[0]);
  memcpy(v28, __src[0], a1[12].i64[1] << 6);
  v55 = v28;
  v56 = a1[13];
  v29 = a1[12].i64[1] << 6;
  v57.i64[0] = 0;
  v57.i64[1] = v29;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  (*(*Hgi + 32))(v37);
  (*(*v37[0] + 64))(v37[0], &v55);
  v31 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v31, v37[0], 0);
  v32 = a1[20].f32[0];
  if (v32 < 1.0)
  {
    v32 = 0.0;
  }

  __asm { FMOV            V3.4S, #1.0 }

  v34 = vcvtq_f32_s32(*a3);
  v47 = vbicq_s8(vbslq_s8(vcgtq_f32(a1[19], _Q3), _Q3, a1[19]), vcltzq_f32(a1[19]));
  v48 = v34;
  v49.f32[0] = v32;
  (*(*a2 + 72))(a2, a1[16].i64[0], a1[16].i64[1], 3, 0, 36, &v47);
  v35 = v37[0];
  v37[0] = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_29AEC6F38(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DrawBBoxes(uint64_t a1, _OWORD *a2, _OWORD *a3, pxrInternal__aapl__pxrReserved__::HdStRenderPassState *a4)
{
  *&v28 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = xmmword_29B6C6450;
  v20 = 0uLL;
  *v21 = 15;
  v21[4] = 0;
  memset(&v21[8], 0, 48);
  v22 = 0u;
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_29AB8F8F8(&v16, (a1 + 24));
  sub_29A03A998(&v21[48], a2);
  v20 = *(a1 + 120);
  *v21 = *(a1 + 136);
  *&v21[16] = *(a1 + 152);
  *&v21[32] = *(a1 + 168);
  v19 = *(a1 + 104);
  *(v24 + 8) = *a3;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  (*(*Hgi + 24))(&v15);
  (*(*v15 + 24))(v15, "BoundingBox");
  (*(*v15 + 56))(v15, *(a1 + 256), *(a1 + 264));
  v9 = v15;
  v26 = *(a1 + 184);
  v27 = 0;
  v14 = 0;
  __p = 0uLL;
  sub_29AB90D54(__p.i64, &v26, &v28, 1uLL);
  (*(*v9 + 80))(v9, &__p);
  if (__p.i64[0])
  {
    __p.i64[1] = __p.i64[0];
    operator delete(__p.i64[0]);
  }

  __p.i64[0] = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeViewport(a4);
  __p.i64[1] = v10;
  (*(*v15 + 40))(v15, &__p);
  pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_UpdateShaderConstants(a1, v15, &__p, a4);
  (*(*v15 + 64))(v15, *(a1 + 240), *(a1 + 248));
  (*(*v15 + 88))(v15, 24, 0, -1762037865 * ((*(a1 + 288) - *(a1 + 280)) >> 3), 0);
  (*(*v15 + 32))(v15);
  v11 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v11, v15, 0);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (*&v21[48])
  {
    *&v22 = *&v21[48];
    operator delete(*&v21[48]);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_29AEC72FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_29AB905FC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_29A0ECEEC(&v8, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) != 0)
  {
    result = sub_29AEC7404(a1, a2, a1 + 272);
  }

  *a4 = 0;
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }

  return result;
}

uint64_t sub_29AEC7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v14, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEC8128(&v14);
  if (v7)
  {
    if ((v15 & 4) != 0)
    {
      v8 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v8 = v14;
    }

    sub_29A166F2C(a3, v8);
    if (v8 != a3)
    {
      sub_29AEC81B4((a3 + 8), *(v8 + 8), *(v8 + 16), 0x6F96F96F96F96F97 * ((*(v8 + 16) - *(v8 + 8)) >> 3));
    }

    v9 = *(v8 + 32);
    *(a3 + 48) = *(v8 + 48);
    *(a3 + 32) = v9;
  }

  else
  {
    v12[0] = "hd/task.h";
    v12[1] = "_GetTaskParams";
    v12[2] = 242;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTaskParams]";
    v13 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v14);
  return v7;
}

void sub_29AEC7594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::Execute(pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask *a1, void *a2)
{
  sub_29A0ECEEC(&v18, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::Execute(HdTaskContext *)");
  if (*(a1 + 35) != *(a1 + 36))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v4)
    {
      v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    if ((*v4 ^ *(a1 + 34)) <= 7)
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v5)
      {
        v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if (pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v5))
      {
        v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v6)
        {
          v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        if (pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v6 + 1))
        {
          v17 = 0uLL;
          v16 = 0uLL;
          v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          if (!v7)
          {
            v7 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          }

          sub_29AEC7840(a2, v7, &v17);
          v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          if (!v8)
          {
            v8 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          }

          sub_29AEC7840(a2, v8 + 1, &v16);
          pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateBufferResources(a1);
          if (pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateShaderResources(a1) & 1) != 0 || (lpsrc = "hdx/boundingBoxTask.cpp", v12 = "Execute", v13 = 511, v14 = "virtual void pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::Execute(HdTaskContext *)", v15 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&lpsrc, "_CreateShaderResources()", 0)))
          {
            pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreateResourceBindings(a1);
            pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_CreatePipeline(a1, &v17, &v16);
            lpsrc = 0;
            v12 = 0;
            v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
            if (!v9)
            {
              v9 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
            }

            sub_29AEC7990(a2, v9 + 23, &lpsrc);
            if (lpsrc)
            {
              if (v10)
              {
                pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::_DrawBBoxes(a1, &v17, &v16, v10);
              }
            }

            if (v12)
            {
              sub_29A014BEC(v12);
            }
          }
        }
      }
    }
  }

  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }
}

uint64_t sub_29AEC7840(uint64_t result, void *a2, _OWORD *a3)
{
  if (!result)
  {
    return result;
  }

  v4 = sub_29A16039C(result, a2);
  if (!v4)
  {
    v8 = "hd/task.h";
    v9 = "_GetTaskContextData";
    v10 = 214;
    v11 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Token %s missing from task context");
    return 0;
  }

  v5 = v4;
  if ((sub_29AE8A2C8((v4 + 3)) & 1) == 0)
  {
    v8 = "hd/task.h";
    v9 = "_GetTaskContextData";
    v10 = 221;
    v11 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Token %s in task context is of mismatched type");
    return 0;
  }

  v6 = v5[4];
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 3);
  }

  else
  {
    v7 = v5[3];
  }

  *a3 = *v7;
  return 1;
}

uint64_t sub_29AEC7990(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  v4 = sub_29A16039C(result, a2);
  if (!v4)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 214;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdRenderPassState>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s missing from task context");
    return 0;
  }

  v5 = v4;
  if ((sub_29AEC8408((v4 + 3)) & 1) == 0)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 221;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdRenderPassState>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s in task context is of mismatched type");
    return 0;
  }

  v6 = v5[4];
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 3);
  }

  else
  {
    v7 = v5[3];
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  *a3 = v9;
  a3[1] = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return 1;
}

uint64_t *sub_29AEC7D34()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "BoundingBoxVertex");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "BoundingBoxFragment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "boundingBoxShader");
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8E0, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174F8E0);
  }

  return v0;
}

void sub_29AEC7EB0(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AEC7F4C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[40 * v6];
  *v8 = *a2;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 3) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v8 + 4) = *(a2 + 32);
  *&v17 = v8 + 40;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ADE7D64(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ADE7E30(&v15);
  return v14;
}

void sub_29AEC8088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ADE7E30(va);
  _Unwind_Resume(a1);
}

void *sub_29AEC809C(void *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1BF94C(a1, a2);
    v6 = a1[1];
    v7 = &v6[4 * a2];
    v8 = a2 << 6;
    do
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[3];
      v6[2] = a3[2];
      v6[3] = v11;
      *v6 = v9;
      v6[1] = v10;
      v6 += 4;
      v8 -= 64;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29AEC810C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEC8128(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B716780 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B4C8);
}

void **sub_29AEC81B4(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x6F96F96F96F96F97 * ((v8 - *result) >> 3) >= a4)
  {
    v16 = result[1];
    v17 = v16 - v9;
    if (0x6F96F96F96F96F97 * ((v16 - v9) >> 3) >= a4)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20 - 6);
      }

      v15 = &v9[v20];
    }

    else
    {
      v18 = &__src[v17];
      if (v16 != v9)
      {
        result = memmove(*result, __src, v17 - 6);
        v16 = v7[1];
      }

      v19 = (a3 - v18);
      if (a3 != v18)
      {
        result = memmove(v16, v18, (v19 - 6));
      }

      v15 = &v19[v16];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 > 0xD20D20D20D20D2)
    {
      sub_29A00C9A4();
    }

    v10 = 0x6F96F96F96F96F97 * (v8 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0x69069069069069)
    {
      v12 = 0xD20D20D20D20D2;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29AEC832C(v7, v12);
    v13 = v7[1];
    v14 = a3 - __src;
    if (v14)
    {
      result = memmove(v7[1], __src, v14 - 6);
    }

    v15 = (v13 + v14);
  }

  v7[1] = v15;
  return result;
}

char *sub_29AEC832C(void *a1, unint64_t a2)
{
  if (a2 >= 0xD20D20D20D20D3)
  {
    sub_29A00C9A4();
  }

  result = sub_29A79DBDC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[312 * v4];
  return result;
}

pxrInternal__aapl__pxrReserved__::HdxTokens_StaticTokenType *sub_29AEC837C(atomic_ullong *a1)
{
  result = sub_29AEC83C4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxTokens_StaticTokenType::~HdxTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxTokens_StaticTokenType *sub_29AEC83C4()
{
  v0 = operator new(0x120uLL);
  pxrInternal__aapl__pxrReserved__::HdxTokens_StaticTokenType::HdxTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AEC8408(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B71423DLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B4D8);
}

pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::HdxColorizeSelectionTask(pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209B4F8;
  sub_29AECA07C(v4 + 24);
  *(this + 23) = -1;
  *(this + 96) = 0;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0;
  *(this + 26) = 0x500000000;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 232) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::~HdxColorizeSelectionTask(pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *this)
{
  *this = &unk_2A209B4F8;
  v2 = *(this + 21);
  if (v2)
  {
    operator delete[](v2);
  }

  if (*(this + 27))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 56))(Hgi, this + 216);
  }

  v4 = *(this + 24);
  *(this + 24) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

{
  pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::~HdxColorizeSelectionTask(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_Sync(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_29A0ECEEC(&v10, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if (!*(a1 + 24))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    v9 = operator new(0x398uLL);
    sub_29A008E78(__p, "ColorizeSelection");
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::HdxFullscreenShader(v9, Hgi, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(a1 + 24);
    *(a1 + 24) = v9;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((*a4 & 4) != 0)
  {
    result = sub_29AEC87C8(a1, a2, (a1 + 24));
  }

  *a4 = 0;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void sub_29AEC8784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  sub_29A0E9CEC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC87C8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v15, a2, a1 + 8, v6 + 440);
  v7 = sub_29AECA10C(&v15);
  if (v7)
  {
    if ((v16 & 4) != 0)
    {
      v8 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(&v15);
    }

    else
    {
      v8 = v15;
    }

    v9 = *v8;
    v10 = *(v8 + 16);
    *(a3 + 28) = *(v8 + 28);
    *a3 = v9;
    a3[1] = v10;
    sub_29A2258F0(a3 + 11, (v8 + 44));
    sub_29A225948(a3 + 12, (v8 + 48));
    sub_29A2258F0(a3 + 13, (v8 + 52));
    sub_29A225948(a3 + 14, (v8 + 56));
    sub_29A2258F0(a3 + 15, (v8 + 60));
    sub_29A225948(a3 + 16, (v8 + 64));
  }

  else
  {
    v13[0] = "hd/task.h";
    v13[1] = "_GetTaskParams";
    v13[2] = 242;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTaskParams]";
    v14 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v15);
  return v7;
}

void sub_29AEC8964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  sub_29A0ECEEC(&v9, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Prepare(HdTaskContext *, HdRenderIndex *)");
  v8[0] = 0;
  v8[1] = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v6)
  {
    v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29AEC8B64(a2, v6 + 26, v8))
  {
    (*(*v8[0] + 16))(v8[0], a3);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v7 + 312), (a1 + 68));
}

void sub_29AEC8B44(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC8B64(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  v4 = sub_29A16039C(result, a2);
  if (!v4)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 214;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdxSelectionTracker>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s missing from task context");
    return 0;
  }

  v5 = v4;
  if ((sub_29AECA198((v4 + 3)) & 1) == 0)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 221;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdxSelectionTracker>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s in task context is of mismatched type");
    return 0;
  }

  v6 = v5[4];
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 3);
  }

  else
  {
    v7 = v5[3];
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  *a3 = v9;
  a3[1] = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Execute(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v37, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Execute(HdTaskContext *)");
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v4)
  {
    v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if (!pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v4))
  {
    goto LABEL_12;
  }

  v36 = 0uLL;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v5)
  {
    v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  sub_29AEC7840(a2, v5, &v36);
  v6 = *(a1 + 144);
  if (!v6 || (*(a1 + 96) & 1) == 0)
  {
LABEL_12:
    *(a1 + 184) = 1;
    goto LABEL_13;
  }

  (*(*v6 + 112))(v6);
  *(a1 + 184) = (*(**(a1 + 144) + 120))(*(a1 + 144));
  v7 = (*(**(a1 + 144) + 48))(*(a1 + 144));
  v8 = (*(**(a1 + 144) + 56))(*(a1 + 144)) * v7;
  v9 = *(a1 + 152);
  if (v9)
  {
    (*(*v9 + 112))(v9);
    v10 = (*(**(a1 + 152) + 48))(*(a1 + 152));
    if ((*(**(a1 + 152) + 56))(*(a1 + 152)) * v10 != v8)
    {
      v33.__r_.__value_.__r.__words[0] = "hdx/colorizeSelectionTask.cpp";
      v33.__r_.__value_.__l.__size_ = "Execute";
      v33.__r_.__value_.__r.__words[2] = 156;
      v34 = "virtual void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Execute(HdTaskContext *)";
      v35 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 76));
      v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 68));
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Instance Id buffer %s has different dimensions than Prim Id buffer %s", v14, Text, v13);
      goto LABEL_13;
    }

    if (*(a1 + 184) == 1)
    {
      v11 = (*(**(a1 + 152) + 120))(*(a1 + 152));
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 184) = v11;
  }

  v15 = *(a1 + 160);
  if (v15)
  {
    (*(*v15 + 112))(v15);
    v16 = (*(**(a1 + 160) + 48))(*(a1 + 160));
    if ((*(**(a1 + 160) + 56))(*(a1 + 160)) * v16 != v8)
    {
      v33.__r_.__value_.__r.__words[0] = "hdx/colorizeSelectionTask.cpp";
      v33.__r_.__value_.__l.__size_ = "Execute";
      v33.__r_.__value_.__r.__words[2] = 168;
      v34 = "virtual void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::Execute(HdTaskContext *)";
      v35 = 0;
      v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 84));
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 68));
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Element Id buffer %s has different dimensions than Prim Id buffer %s", v20, v18, v19);
      goto LABEL_13;
    }

    if (*(a1 + 184) == 1)
    {
      v17 = (*(**(a1 + 160) + 120))(*(a1 + 160));
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 184) = v17;
  }

  v21 = *(a1 + 168);
  if (!v21)
  {
    goto LABEL_29;
  }

  if (*(a1 + 176) != v8)
  {
    operator delete[](v21);
LABEL_29:
    *(a1 + 168) = operator new[](4 * v8);
    *(a1 + 176) = v8;
  }

  pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_ColorizeSelection(a1);
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v33);
  v22 = atomic_load(&qword_2A174F8E8);
  if (!v22)
  {
    v22 = sub_29AECA224();
  }

  if ((*v22 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v22 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  std::string::operator=(&v33, EmptyString);
  LODWORD(v34) = 2;
  sub_29A008E78(v30, "uvOut");
  sub_29A008E78(&__p, "vec2");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v33, v30, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v30, "colorIn");
  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v33, v30, 0, 2u, &__p, 0);
  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v30, "texelSize");
  sub_29A008E78(&__p, "vec2");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v33, v30, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v30, "enableOutline");
  sub_29A008E78(&__p, "int");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v33, v30, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v30, "radius");
  sub_29A008E78(&__p, "int");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v33, v30, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v30, "hd_FragColor");
  sub_29A008E78(&__p, "vec4");
  sub_29A008E78(&v39, "color");
  memset(&v31, 0, sizeof(v31));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v33, v30, &__p, &v39, &v31);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  v24 = *(a1 + 192);
  pxrInternal__aapl__pxrReserved__::HdxPackageOutlineShader(v30);
  v25 = atomic_load(&qword_2A174F8E8);
  if (!v25)
  {
    v25 = sub_29AECA224();
  }

  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(v24, v30, v25, &v33);
  if ((v30[0].__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = (*(**(a1 + 144) + 48))(*(a1 + 144));
  v27 = (*(**(a1 + 144) + 56))(*(a1 + 144));
  pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_CreateTexture(a1, v26, v27, 3, *(a1 + 168));
  v28 = *(a1 + 192);
  *&v39.__r_.__value_.__l.__data_ = *(a1 + 216);
  memset(v30, 0, 24);
  sub_29AECA4EC(v30, &v39, &v39.__r_.__value_.__r.__words[2], 1uLL);
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindTextures(v28, &v30[0].__r_.__value_.__l.__data_, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30[0].__r_.__value_.__r.__words[0])
  {
    v30[0].__r_.__value_.__l.__size_ = v30[0].__r_.__value_.__r.__words[0];
    operator delete(v30[0].__r_.__value_.__l.__data_);
  }

  if (pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_UpdateParameterBuffer(a1))
  {
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetShaderConstants(*(a1 + 192), 0x10u, (a1 + 200));
  }

  if ((*(a1 + 232) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HgiDepthStencilState::HgiDepthStencilState(v30);
    LOWORD(v30[0].__r_.__value_.__l.__data_) = 0;
    v30[0].__r_.__value_.__s.__data_[20] = 0;
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetDepthState(*(a1 + 192), v30);
    *(a1 + 232) = 1;
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetBlendState(*(a1 + 192), 1, 1, 6, 0, 0, 1, 0);
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetAttachmentLoadStoreOp(*(a1 + 192), 2, 1);
  }

  v29 = *(a1 + 192);
  *&v30[0].__r_.__value_.__l.__data_ = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::Draw(v29, &v36, v30);
  sub_29AB89F90(&v33);
LABEL_13:
  if (v37)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v38, v37);
  }
}

void sub_29AEC9560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_29AB89F90(&a36);
  sub_29A0E9CEC(v36 - 96);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_ColorizeSelection(pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *this)
{
  result = (*(**(this + 18) + 88))(*(this + 18));
  v40 = result;
  if (result)
  {
    v3 = *(this + 19);
    if (v3)
    {
      v4 = (*(*v3 + 88))(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 20);
    if (v5)
    {
      v6 = (*(*v5 + 88))(v5);
    }

    else
    {
      v6 = 0;
    }

    if (*(this + 22))
    {
      v7 = 0;
      v8 = vdup_n_s32(0x437F0000u);
      v38 = v6;
      v39 = v4;
      do
      {
        if (v4)
        {
          v9 = *(v4 + 4 * v7);
          if (v6)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v9 = -1;
          if (v6)
          {
LABEL_12:
            v10 = *(v6 + 4 * v7);
            goto LABEL_15;
          }
        }

        v10 = -1;
LABEL_15:
        v41 = v10;
        v11 = *(v40 + 4 * v7);
        sub_29A19DBEC(this + 104);
        if (**(this + 17) >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.0;
          v15 = 0.0;
          while (1)
          {
            if (v11 == -1)
            {
              goto LABEL_49;
            }

            sub_29A19DBEC(this + 104);
            v16 = *(*(this + 17) + 4 * v12 + 4);
            if (!v16)
            {
              goto LABEL_49;
            }

            sub_29A19DBEC(this + 104);
            v17 = *(*(this + 17) + 4 * v16);
            sub_29A19DBEC(this + 104);
            if (v11 < v17 || v11 >= *(*(this + 17) + 4 * v16 + 4))
            {
              goto LABEL_49;
            }

            sub_29A19DBEC(this + 104);
            v19 = *(*(this + 17) + 4 * (v11 + 2 + v16 - v17));
            if (v19 >= 2 && (v19 & 1) == 0)
            {
              v21 = v19 >> 1;
              v22 = v19 >> 1;
              sub_29A19DBEC(this + 104);
              if (*(*(this + 17) + 4 * v22) == 3 && ((sub_29A19DBEC(this + 104), v23 = *(*(this + 17) + 4 * v21 + 4), sub_29A19DBEC(this + 104), v9 >= v23) ? (v24 = v9 < *(*(this + 17) + 4 * v21 + 8)) : (v24 = 0), v24))
              {
                sub_29A19DBEC(this + 104);
                v19 = *(*(this + 17) + 4 * (v9 + 3 + v21 - v23));
                v21 = v19 >> 1;
                v22 = v19 >> 1;
              }

              else
              {
                v19 = 0;
              }

              sub_29A19DBEC(this + 104);
              if (!*(*(this + 17) + 4 * v22))
              {
                sub_29A19DBEC(this + 104);
                v25 = *(*(this + 17) + 4 * v22 + 4);
                sub_29A19DBEC(this + 104);
                if (v41 >= v25 && v41 < *(*(this + 17) + 4 * v22 + 8))
                {
                  break;
                }
              }
            }

            if (v19)
            {
              goto LABEL_42;
            }

LABEL_49:
            ++v12;
            sub_29A19DBEC(this + 104);
            if (v12 >= **(this + 17))
            {
              v34 = vcvt_s32_f32(vmul_f32(v13, v8));
              v35 = (v15 * 255.0);
              v36 = (v14 * 255.0);
              v6 = v38;
              v4 = v39;
              goto LABEL_54;
            }
          }

          sub_29A19DBEC(this + 104);
          if (((v19 | *(*(this + 17) + 4 * (v41 + 3 + v21 - v25))) & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_42:
          if (v12)
          {
            if (v12 == 1)
            {
              v27 = 44;
              v28 = 48;
              v29 = 52;
              v30 = 56;
              goto LABEL_46;
            }

            v33 = 0;
            v32 = 0.0;
            v31 = 0.0;
          }

          else
          {
            v27 = 28;
            v28 = 32;
            v29 = 36;
            v30 = 40;
LABEL_46:
            v31 = *(this + v29);
            v32 = *(this + v30);
            v33.i32[0] = *(this + v28);
            v33.i32[1] = *(this + v27);
          }

          v13 = vadd_f32(vmul_n_f32(v13, 1.0 - v32), vmul_n_f32(v33, v32));
          v15 = (v32 * v31) + (v15 * (1.0 - v32));
          v14 = v14 * (1.0 - v32);
          goto LABEL_49;
        }

        LOBYTE(v35) = 0;
        v34 = 0;
        LOBYTE(v36) = -1;
LABEL_54:
        *(*(this + 21) + 4 * v7) = v34.i8[4];
        *(*(this + 21) + 4 * v7 + 1) = v34.i8[0];
        *(*(this + 21) + 4 * v7 + 2) = v35;
        *(*(this + 21) + 4 * v7++ + 3) = v36;
      }

      while (v7 < *(this + 22));
    }

    result = (*(**(this + 18) + 96))(*(this + 18));
    if (v4)
    {
      result = (*(**(this + 19) + 96))(*(this + 19));
    }

    if (v6)
    {
      v37 = *(**(this + 20) + 96);

      return v37();
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_CreateTexture(pxrInternal__aapl__pxrReserved__::HdxTask *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  sub_29A0ECEEC(&v23, "hdx", "void pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_CreateTexture(int, int, HdFormat, void *)");
  if (*(a1 + 27))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 56))(Hgi, a1 + 216);
  }

  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v11 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfFormat(v6);
        __p[0] = 0;
        __p[1] = 0;
        v17 = 0;
        v16 = 0;
        v18 = xmmword_29B70A5A0;
        v19 = xmmword_29B70A5B0;
        *v20 = 0x1000100000000;
        *&v20[8] = 1;
        v21 = 0;
        v22 = 0;
        MEMORY[0x29C2C1A60](__p, "HdxColorizeSelectionTask texture");
        *(&v19 + 1) = __PAIR64__(a3, a2);
        *v20 = 1;
        HgiFormat = pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHgiFormat(v6);
        *&v20[4] = 0x100010001;
        v21 = v11 * (a3 * a2);
        v22 = a5;
        v17 = 8;
        LODWORD(v18) = HgiFormat;
        v13 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
        *(a1 + 27) = (*(*v13 + 48))(v13, __p);
        *(a1 + 28) = v14;
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_UpdateParameterBuffer(pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *this)
{
  if ((*(**(this + 18) + 48))(*(this + 18)) && (*(**(this + 18) + 56))(*(this + 18)))
  {
    v1 = 1.0 / (*(**(this + 18) + 48))(*(this + 18));
    v3 = 1.0 / (*(**(this + 18) + 56))(*(this + 18));
    v4 = *(this + 60);
    v5 = *(this + 16);
    if (v1 == *(this + 50) && v3 == *(this + 51) && *(this + 52) == v4 && v5 == *(this + 53))
    {
      return 0;
    }
  }

  else
  {
    v4 = *(this + 60);
    v5 = *(this + 16);
  }

  *(this + 50) = v1;
  *(this + 51) = v3;
  result = 1;
  *(this + 52) = v4;
  *(this + 53) = v5;
  return result;
}

float pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::_GetColorForMode(pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask *this, int a2)
{
  if (a2)
  {
    result = 0.0;
    if (a2 != 1)
    {
      return result;
    }

    v3 = 44;
  }

  else
  {
    v3 = 28;
  }

  return *(this + v3);
}

uint64_t sub_29AECA07C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  *(a1 + 40) = 5;
  *(a1 + 44) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 44));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 48));
  *(a1 + 52) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 52));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 56));
  *(a1 + 60) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 60));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 64));
  return a1;
}

uint64_t sub_29AECA10C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B7142CALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B558);
}

uint64_t sub_29AECA198(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B7409BALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B568);
}

uint64_t *sub_29AECA224()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "OutlineFragment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "colorIn");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "enableOutline");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "radius");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "texelSize");
  v1 = v0 + 5;
  v2 = *v0;
  v17 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v3;
    }
  }

  v4 = v0[1];
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = v0[2];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = v0[3];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = v0[4];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  *v1 = 0;
  v0[6] = 0;
  v0[7] = 0;
  sub_29A12EF7C(v1, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v13 = *(&v17 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8E8, &v14, v0);
  if (v14)
  {
    v15 = sub_29AB82814(v0);
    operator delete(v15);
    return atomic_load(&qword_2A174F8E8);
  }

  return v0;
}

void sub_29AECA410(_Unwind_Exception *a1)
{
  v4 = 32;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

char *sub_29AECA4EC(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AECA544(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdxColorChannelTask *pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::HdxColorChannelTask(pxrInternal__aapl__pxrReserved__::HdxColorChannelTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209B588;
  *(v4 + 3) = 0;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  if (!v5)
  {
    v5 = sub_29AECB0E0(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  }

  v6 = *v5;
  *(this + 6) = *v5;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

void sub_29AECA5F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3);
  *(v1 + 3) = 0;
  if (v3)
  {
    sub_29B2CB690(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::~HdxColorChannelTask(pxrInternal__aapl__pxrReserved__::HdxColorChannelTask *this)
{
  *this = &unk_2A209B588;
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::~HdxColorChannelTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::_Sync(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_29A0ECEEC(&v10, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if (!*(a1 + 3))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    v9 = operator new(0x398uLL);
    sub_29A008E78(__p, "ColorChannel");
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::HdxFullscreenShader(v9, Hgi, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(a1 + 3);
    *(a1 + 3) = v9;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((*a4 & 4) != 0)
  {
    sub_29AECB070(__p);
    result = sub_29AECA87C(a1, a2, __p);
    if (result)
    {
      result = sub_29A166F2C(a1 + 6, __p);
    }

    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 = 0;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void sub_29AECA818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  sub_29A0E9CEC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AECA87C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v13, a2, a1 + 8, v6 + 440);
  v7 = sub_29AECB16C(&v13);
  if (v7)
  {
    if ((v14 & 4) != 0)
    {
      v8 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v8 = v13;
    }

    sub_29A166F2C(a3, v8);
  }

  else
  {
    v11[0] = "hd/task.h";
    v11[1] = "_GetTaskParams";
    v11[2] = 242;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxColorChannelTaskParams]";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v13);
  return v7;
}

void sub_29AECA9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::Execute(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader **a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v19, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::Execute(HdTaskContext *)");
  v18 = 0uLL;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v4)
  {
    v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  sub_29AEC7840(a2, v4, &v18);
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v16);
  v5 = atomic_load(&qword_2A174F8F0);
  if (!v5)
  {
    v5 = sub_29AECB1F8();
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  std::string::operator=(&v16, EmptyString);
  v17 = 2;
  sub_29A008E78(&v15, "uvOut");
  sub_29A008E78(&__p, "vec2");
  memset(&v21, 0, sizeof(v21));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v16, &v15, &__p, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, "colorIn");
  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v16, &v15, 0, 2u, &__p, 0);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, "hd_FragColor");
  sub_29A008E78(&__p, "vec4");
  sub_29A008E78(&v21, "color");
  memset(&v13, 0, sizeof(v13));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v16, &v15, &__p, &v21, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, "screenSize");
  sub_29A008E78(&__p, "vec2");
  memset(&v21, 0, sizeof(v21));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v16, &v15, &__p, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v15, "channel");
  sub_29A008E78(&__p, "int");
  memset(&v21, 0, sizeof(v21));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v16, &v15, &__p, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v7 = a1[3];
  pxrInternal__aapl__pxrReserved__::HdxPackageColorChannelShader(&v15);
  v8 = atomic_load(&qword_2A174F8F0);
  if (!v8)
  {
    v8 = sub_29AECB1F8();
  }

  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(v7, &v15, v8, &v16);
  if ((v15.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v15.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v18);
  if (pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::_UpdateParameterBuffer(a1, *(Descriptor + 52), *(Descriptor + 56)))
  {
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetShaderConstants(a1[3], 0xCu, a1 + 32);
  }

  v10 = a1[3];
  *&v21.__r_.__value_.__l.__data_ = v18;
  memset(&v15, 0, sizeof(v15));
  sub_29AECA4EC(&v15, &v21, &v21.__r_.__value_.__r.__words[2], 1uLL);
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindTextures(v10, &v15.__r_.__value_.__l.__data_, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15.__r_.__value_.__r.__words[0])
  {
    v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v11 = a1[3];
  *&v15.__r_.__value_.__l.__data_ = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::Draw(v11, &v18, &v15);
  result = sub_29AB89F90(&v16);
  if (v19)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }

  return result;
}

void sub_29AECAE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_29AB89F90(&a28);
  sub_29A0E9CEC(v28 - 80);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorChannelTask::_UpdateParameterBuffer(pxrInternal__aapl__pxrReserved__::HdxColorChannelTask *this, float a2, float a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  if (!v6)
  {
    v6 = sub_29AECB0E0(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  }

  v7 = *(v6 + 6);
  v8 = *(v6 + 7);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if ((*(this + 6) ^ *v7) < 8)
      {
        break;
      }

      ++v9;
      ++v7;
    }

    while (v7 != v8);
  }

  if (v9 == *(this + 10) && *(this + 8) == a2 && *(this + 9) == a3)
  {
    return 0;
  }

  *(this + 8) = a2;
  *(this + 9) = a3;
  result = 1;
  *(this + 10) = v9;
  return result;
}

uint64_t *sub_29AECB070(uint64_t *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  if (!v2)
  {
    v2 = sub_29AECB0E0(&pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens);
  }

  v3 = *v2;
  *a1 = *v2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType *sub_29AECB0E0(atomic_ullong *a1)
{
  result = sub_29AECB128();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType::~HdxColorChannelTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType *sub_29AECB128()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType::HdxColorChannelTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AECB16C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B714349 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B5E8);
}

uint64_t *sub_29AECB1F8()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "ColorChannelFragment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "colorIn");
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8F0, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174F8F0);
  }

  return v0;
}

void sub_29AECB33C(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams *pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams::HdxColorCorrectionTaskParams(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
  if (!v2)
  {
    v2 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
  }

  v3 = *v2;
  *this = *v2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *this &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 26) = 65;
  *(this + 14) = 0;
  return this;
}

pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::HdxColorCorrectionTask(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209B608;
  pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams::HdxColorCorrectionTaskParams((v4 + 24));
  *(this + 9) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = xmmword_29B6C6450;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 68) = 15;
  *(this + 276) = 0;
  *(this + 392) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 57) = 0;
  *(this + 280) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  v5 = operator new(0x158uLL);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v5, v6, v7, v8);
  *(this + 59) = v5;
  *(this + 32) = 65;
  return this;
}

void sub_29AECB540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v14 = v13;
  operator delete(v14);
  sub_29AECDF80(&a10);
  a10 = v12 + 224;
  sub_29AECDEF8(&a10);
  sub_29AECB59C(v12);
  sub_29AECB604(v11);
  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AECB59C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  sub_29AECDD5C(&v4);
  v4 = a1;
  sub_29AECDDE4(&v4);
  return a1;
}

uint64_t sub_29AECB604(uint64_t a1)
{
  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::~HdxColorCorrectionTask(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  *this = &unk_2A209B608;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Cancel(*(this + 59));
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*(this + 59));
  if (*(this + 44))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 88))(Hgi, this + 352);
  }

  v4 = *(this + 49);
  v3 = *(this + 50);
  if (v4 != v3)
  {
    do
    {
      v5 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*v5 + 104))(v5, v4 + 56);
      v4 += 72;
    }

    while (v4 != v3);
    v4 = *(this + 49);
    v3 = *(this + 50);
  }

  while (v3 != v4)
  {
    v3 -= 72;
    sub_29A0D27F8(this + 392, v3);
  }

  *(this + 50) = v4;
  v7 = *(this + 46);
  v6 = *(this + 47);
  if (v7 != v6)
  {
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*v8 + 56))(v8, v7 + 32);
      v9 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*v9 + 88))(v9, v7 + 72);
      v7 += 88;
    }

    while (v7 != v6);
    v7 = *(this + 46);
    v6 = *(this + 47);
  }

  while (v6 != v7)
  {
    v6 -= 88;
    sub_29AECE008(this + 368, v6);
  }

  *(this + 47) = v7;
  if (*(this + 42))
  {
    v10 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v10 + 104))(v10, this + 336);
  }

  if (*(this + 40))
  {
    v11 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v11 + 104))(v11, this + 320);
  }

  if (*(this + 52))
  {
    pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_DestroyShaderProgram(this);
  }

  if (*(this + 54))
  {
    v12 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v12 + 152))(v12, this + 432);
  }

  if (*(this + 56))
  {
    v13 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v13 + 168))(v13, this + 448);
  }

  sub_29A178BC4(this + 59, 0);
  v17 = (this + 392);
  sub_29AECDF80(&v17);
  v17 = (this + 368);
  sub_29AECDEF8(&v17);
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  v14 = *(this + 24);
  if (v14)
  {
    *(this + 25) = v14;
    operator delete(v14);
  }

  v17 = (this + 168);
  sub_29AECDD5C(&v17);
  v17 = (this + 144);
  sub_29AECDDE4(&v17);
  v15 = *(this + 17);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v16 = *(this + 3);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::~HdxColorCorrectionTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_DestroyShaderProgram(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  result = *(this + 52);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      v6 = *v4++;
      v9 = v6;
      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*Hgi + 120))(Hgi, &v9);
    }

    v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    return (*(*v8 + 136))(v8, this + 416);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateOpenColorIOShaderCode(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateOpenColorIOLUTBindings(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2)
{
  v4 = *(this + 46);
  v5 = *(this + 47);
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(&v12);
      HIDWORD(v16) = v6;
      LODWORD(v17) = 2;
      BYTE4(v17) = 0;
      sub_29A03A998(&v12, (v4 + 32));
      sub_29A03A998(&__p, (v4 + 72));
      sub_29ADF42D0(a2 + 48, &v12);
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      v4 += 88;
      ++v6;
    }

    while (v4 != v5);
  }

  v7 = *(this + 49);
  v8 = *(this + 50);
  if (v7 != v8)
  {
    v9 = (v7 + 56);
    do
    {
      if (*(v9 - 2) >= 2u)
      {
        pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v12);
        v18 = 4;
        v19 = v6;
        v20 = 2;
        v21 = 0;
        v11 = 0;
        sub_29A00D250(&__p, &v11);
        sub_29A03A998(&v12, v9);
        sub_29ADEB7F8(a2 + 24, &v12);
        if (v16)
        {
          v17 = v16;
          operator delete(v16);
        }

        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (v12)
        {
          v13 = v12;
          operator delete(v12);
        }

        ++v6;
      }

      v10 = v9 + 1;
      v9 = (v9 + 72);
    }

    while (v10 != v8);
  }
}

void sub_29AECBCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ADEB844(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_SetConstants(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this, pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds *a2)
{
  v4 = *(this + 24);
  v5 = (this + 192);
  v6 = *(this + 25) - v4;
  if (v6 <= 7)
  {
    sub_29A1B2C78(this + 192, 8 - v6);
    v4 = *v5;
  }

  *v4 = *(this + 58);
  v7 = *(this + 56);
  v8 = *(this + 57);
  v9 = *(this + 50) - *(this + 24);
  v10 = *(*a2 + 72);

  return v10(a2, v7, v8, 2, 0, v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateShaderResources(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  if (*(this + 52))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::HdxPackageColorCorrectionShader(&v40);
  if ((v40.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v40.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v5)
  {
    v5 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v44, EmptyString, v5 + 14);
  if ((v40.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v40.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  memset(&v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v40);
  v6 = atomic_load(&qword_2A174F8F8);
  if (!v6)
  {
    v6 = sub_29AECE060();
  }

  if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::string::operator=(&v40, v7);
  v41 = 1;
  sub_29A008E78(&v35, "position");
  sub_29A008E78(&v31, "vec4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v40, &v35, &v31, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v35, "uvIn");
  sub_29A008E78(&v31, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v40, &v35, &v31, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v35, "gl_Position");
  sub_29A008E78(&v31, "vec4");
  sub_29A008E78(&__p, "position");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v40, &v35, &v31, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v35, "uvOut");
  sub_29A008E78(&v31, "vec2");
  memset(&__p, 0, sizeof(__p));
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v40, &v35, &v31, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v8 = atomic_load(&qword_2A174F8F8);
  if (!v8)
  {
    v8 = sub_29AECE060();
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v44, v8, &v35);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v35;
  }

  else
  {
    v9 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  std::string::append(&v43, v9, size);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v11 = &v43;
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v43.__r_.__value_.__r.__words[0];
  }

  v42 = v11;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  *&v38 = (*(*Hgi + 112))(Hgi, &v40);
  *(&v38 + 1) = v13;
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v35);
  sub_29A008E78(&v31, "uvOut");
  sub_29A008E78(&__p, "vec2");
  memset(&v34, 0, sizeof(v34));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v35, &v31, &__p, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v31, "colorIn");
  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v35, &v31, 0, 2u, &__p, 0);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v31, "hd_FragColor");
  sub_29A008E78(&__p, "vec4");
  sub_29A008E78(&v34, "color");
  memset(&v33, 0, sizeof(v33));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v35, &v31, &__p, &v34, &v33);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v31, "screenSize");
  sub_29A008E78(&__p, "vec2");
  memset(&v34, 0, sizeof(v34));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v35, &v31, &__p, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v14 = atomic_load(&qword_2A174F8F8);
  if (!v14)
  {
    v14 = sub_29AECE060();
  }

  if ((v14[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v15 = ((v14[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  std::string::operator=(&v35, v15);
  v36 = 2;
  v16 = atomic_load(&qword_2A174F8F8);
  if (!v16)
  {
    v16 = sub_29AECE060();
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v44, (v16 + 1), &v31);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v31.__r_.__value_.__l.__size_;
  }

  std::string::append(&v39, v17, v18);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v19 = &v39;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v39.__r_.__value_.__r.__words[0];
  }

  v37 = v19;
  v20 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  v34.__r_.__value_.__r.__words[0] = (*(*v20 + 112))(v20, &v35);
  v34.__r_.__value_.__l.__size_ = v21;
  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&v31);
  v22 = atomic_load(&qword_2A174F8F8);
  if (!v22)
  {
    v22 = sub_29AECE060();
  }

  if ((v22[2] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = ((v22[2] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v23 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  std::string::operator=(&v31, v23);
  sub_29A03A998(v32, &v38);
  sub_29A03A998(v32, &v34);
  v24 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  v25 = (*(*v24 + 128))(v24, &v31);
  *(this + 52) = v25;
  *(this + 53) = v26;
  if (*(*v25 + 16))(v25) && (*(*v38 + 16))(v38) && ((*(*v34.__r_.__value_.__l.__data_ + 16))(v34.__r_.__value_.__r.__words[0]))
  {
    v1 = 1;
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = "hdx/colorCorrectionTask.cpp";
    __p.__r_.__value_.__l.__size_ = "_CreateShaderResources";
    __p.__r_.__value_.__r.__words[2] = 874;
    v29 = "BOOL pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateShaderResources()";
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Failed to create color correction shader");
    pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_PrintCompileErrors(this);
    pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_DestroyShaderProgram(this);
    v1 = 0;
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v35);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v40);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  sub_29ADC1D14(v44);
  return v1;
}

void sub_29AECC57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_29AA85810(&a14);
  sub_29AB89F90(&a26);
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  sub_29AB89F90(&STACK[0x220]);
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  sub_29ADC1D14(&STACK[0x3A8]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_PrintCompileErrors(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  result = *(this + 52);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v6 = MEMORY[0x29EDC93C8];
      v7 = MEMORY[0x29EDC93D0];
      do
      {
        v8 = (*(**v4 + 24))();
        v9 = *(v8 + 23);
        if (v9 >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = *(v8 + 23);
        }

        else
        {
          v11 = *(v8 + 8);
        }

        v12 = sub_29A00911C(v6, v10, v11);
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v13 = std::locale::use_facet(&v20, v7);
        (v13->__vftable[2].~facet_0)(v13, 10);
        std::locale::~locale(&v20);
        std::ostream::put();
        std::ostream::flush();
        v4 += 16;
      }

      while (v4 != v5);
    }

    v14 = (*(**(this + 52) + 24))(*(this + 52));
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = sub_29A00911C(MEMORY[0x29EDC93C8], v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateBufferResources(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!*(this + 42))
  {
    v19[0] = xmmword_29B71438C;
    v19[1] = *algn_29B71439C;
    v19[2] = xmmword_29B7143AC;
    v19[3] = unk_29B7143BC;
    v20 = 0x40000000;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    MEMORY[0x29C2C1A60](v13, "HdxColorCorrectionTask VertexBuffer");
    v15 = 4;
    v18 = v19;
    v16 = 72;
    v17 = 24;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 42) = (*(*Hgi + 96))(Hgi, v13);
    *(this + 43) = v3;
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    v9 = 1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    MEMORY[0x29C2C1A60](__p, "HdxColorCorrectionTask IndexBuffer");
    v9 = 2;
    v12 = &unk_29B7143D4;
    v10 = 12;
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 40) = (*(*v4 + 96))(v4, __p);
    *(this + 41) = v5;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  return 1;
}

void sub_29AECCAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateResourceBindings(uint64_t a1, _OWORD *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v14);
  MEMORY[0x29C2C1A60](v14, "ColorCorrection", v4);
  pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v11);
  *&__p[7] = 0x200000000;
  v13 = 0;
  sub_29A03A998(v11, a2);
  sub_29A03A998(__p, (a1 + 352));
  sub_29ADF42D0(v17, v11);
  v5 = *(a1 + 432);
  if (v5)
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiResourceBindings::GetDescriptor(v5);
    if (pxrInternal__aapl__pxrReserved__::operator==(Descriptor, v14))
    {
      goto LABEL_5;
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 152))(Hgi, a1 + 432);
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *(a1 + 432) = (*(*v8 + 144))(v8, v14);
  *(a1 + 440) = v9;
LABEL_5:
  if (*__p)
  {
    *&__p[2] = *__p;
    operator delete(*__p);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v11[0] = v17;
  sub_29AB88D58(v11);
  v11[0] = &v16;
  sub_29AB88B40(v11);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return 1;
}

void sub_29AECCC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29ADE69D4(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreatePipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  if (*(a1 + 448))
  {
    v4 = *(a1 + 240);
    if (v4 == *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 28))
    {
      return 1;
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 168))(Hgi, a1 + 448);
  }

  v6 = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v19);
  MEMORY[0x29C2C1A60](v19, "ColorCorrection Pipeline", v6);
  v21 = *(a1 + 416);
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v17);
  v17 = 12;
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v15);
  v15 = 0x100000000BLL;
  v16 = 1;
  pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(&v11);
  LODWORD(v11) = 0;
  v14 = 24;
  v13 = __p;
  sub_29A3A429C(&__p, &v17);
  sub_29A3A429C(&__p, &v15);
  sub_29AEC69C8(v29, &v11);
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v7 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 68);
  v24 = v7 > 1;
  v26 = v7;
  v27 = 0;
  v28 = 0x100000002;
  *(a1 + 276) = 0;
  *(a1 + 248) = 0x100000000;
  *(a1 + 240) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 28);
  *(a1 + 244) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 24);
  sub_29AB8F8F8(v30, (a1 + 240));
  *(&v30[13] + 4) = 0x200000008;
  v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *(a1 + 448) = (*(*v8 + 160))(v8, v19);
  *(a1 + 456) = v9;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  v11 = v29;
  sub_29AB87628(&v11);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return 1;
}

void sub_29AECCEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_29AB8FA10(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateAovSampler(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *this)
{
  if (!*(this + 44))
  {
    v6 = 0;
    memset(v8, 0, 21);
    *__p = 0u;
    v9 = 0x1000000000;
    v7 = 0x100000001;
    v8[2] = 0;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 44) = (*(*Hgi + 80))(Hgi, __p);
    *(this + 45) = v3;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_29AECCFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_ApplyColorCorrection(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  *&v31 = *MEMORY[0x29EDCA608];
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = xmmword_29B6C6450;
  v17 = 0;
  v18 = 0;
  v19 = 15;
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  *v23 = 0u;
  v24 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_29AB8F8F8(&v13, (a1 + 240));
  sub_29A03A998(&v23[1], a2);
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  (*(*Hgi + 24))(&v12);
  (*(*v12 + 24))(v12, "ColorCorrection");
  (*(*v12 + 64))(v12, *(a1 + 432), *(a1 + 440));
  (*(*v12 + 56))(v12, *(a1 + 448), *(a1 + 456));
  v6 = v12;
  v29 = *(a1 + 336);
  v30 = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_29AB90D54(&__p, &v29, &v31, 1uLL);
  (*(*v6 + 80))(v6, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  __p = 0;
  v10 = *(Descriptor + 52);
  *(a1 + 464) = vcvt_f32_s32(v10);
  pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_SetConstants(a1, v12);
  (*(*v12 + 40))(v12, &__p);
  (*(*v12 + 104))(v12, a1 + 320, 3, 0, 0, 1, 0);
  (*(*v12 + 32))(v12);
  v7 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v7, v12, 0);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v23[1])
  {
    *&v24 = v23[1];
    operator delete(v23[1]);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_29AECD304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_29AB905FC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  sub_29A0ECEEC(&v14, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) != 0 && sub_29AECD528(a1, a2, a1 + 24))
  {
    if (*(a1 + 128) <= 0)
    {
      v12[0] = "hdx/colorCorrectionTask.cpp";
      v12[1] = "_Sync";
      v12[2] = 1088;
      v12[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)";
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid OCIO LUT size.");
      *(a1 + 128) = 65;
    }

    pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_DestroyShaderProgram(a1);
    if (*(a1 + 432))
    {
      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      (*(*Hgi + 152))(Hgi, a1 + 432);
    }

    if (*(a1 + 448))
    {
      v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      (*(*v8 + 168))(v8, a1 + 448);
    }

    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Cancel(*(a1 + 472));
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*(a1 + 472));
    v9 = *(a1 + 472);
    v12[0] = pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateOpenColorIOResources;
    v10 = a1 + 144;
    v11 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    sub_29AECD6DC(v9, v12, &v11, (a1 + 24), &v10);
  }

  *a4 = 0;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

uint64_t sub_29AECD528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v13, a2, a1 + 8, v6 + 440);
  v7 = sub_29AECE348(&v13);
  if (v7)
  {
    if ((v14 & 4) != 0)
    {
      v8 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v8 = v13;
    }

    sub_29A166F2C(a3, v8);
    std::string::operator=((a3 + 8), (v8 + 8));
    std::string::operator=((a3 + 32), (v8 + 32));
    std::string::operator=((a3 + 56), (v8 + 56));
    std::string::operator=((a3 + 80), (v8 + 80));
    *(a3 + 104) = *(v8 + 104);
    sub_29A166F2C((a3 + 112), (v8 + 112));
  }

  else
  {
    v11[0] = "hd/task.h";
    v11[1] = "_GetTaskParams";
    v11[2] = 242;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams]";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v13);
  return v7;
}

void sub_29AECD6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AECD6DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a3;
  v9[0] = *a2;
  v9[1] = v7;
  sub_29AECE7B8(v10, a4);
  v19 = *a5;
  v8 = sub_29AECE468(a1, v9);
  (***(v8 - 40))(*(v8 - 40), v8, v8 - 8);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10[1]);
  }

  if ((v10[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::Execute(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask *a1, float *a2)
{
  sub_29A0ECEEC(&v13, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::Execute(HdTaskContext *)");
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!result)
  {
    result = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*result ^ *(a1 + 17)) <= 7)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v5)
    {
      v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v5);
    if (result)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      if (!v6)
      {
        v6 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      }

      result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v6);
      if (result)
      {
        v12 = 0uLL;
        v11 = 0uLL;
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v7)
        {
          v7 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        sub_29AEC7840(a2, v7, &v12);
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        if (!v8)
        {
          v8 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        }

        sub_29AEC7840(a2, v8, &v11);
        (*(*v12 + 32))(v12, 8);
        pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateBufferResources(a1);
        pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateAovSampler(a1);
        if (pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateShaderResources(a1) & 1) != 0 || (v9[0] = "hdx/colorCorrectionTask.cpp", v9[1] = "Execute", v9[2] = 1162, v9[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::Execute(HdTaskContext *)", v10 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_CreateShaderResources()", 0), (result))
        {
          pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreateResourceBindings(a1, &v12);
          pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_CreatePipeline(a1, &v11);
          pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::_ApplyColorCorrection(a1, &v11);
          (*(*v12 + 32))(v12, 1);
          result = pxrInternal__aapl__pxrReserved__::HdxTask::_ToggleRenderTarget(a1, a2);
        }
      }
    }
  }

  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void sub_29AECDD5C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_29AECE2E0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AECDDE4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 176;
        sub_29AECE278(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType *sub_29AECDE6C(atomic_ullong *a1)
{
  result = sub_29AECDEB4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType::~HdxColorCorrectionTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType *sub_29AECDEB4()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType::HdxColorCorrectionTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AECDEF8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 88;
        sub_29AECE008(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AECDF80(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        sub_29A0D27F8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AECE008(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t *sub_29AECE060()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "ColorCorrectionVertex");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "ColorCorrectionFragment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "colorCorrectionShader");
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8F8, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174F8F8);
  }

  return v0;
}

void sub_29AECE1DC(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AECE278(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 160) = v3;
    operator delete(v3);
  }

  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void sub_29AECE2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_29AECE348(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B7161B4 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B668);
}

uint64_t sub_29AECE3D4(uint64_t a1)
{
  v2 = *(a1 + 128);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AECE468(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0xA0uLL);
  sub_29AECE4E0(v5, a2, a1 + 272);
  return v5;
}

__n128 sub_29AECE4E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  v3 = *a2;
  *a1 = &unk_2A209B688;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[1];
  *(a1 + 24) = a2[2];
  a2[2] = 0;
  v4 = *(a2 + 3);
  *(a1 + 48) = a2[5];
  *(a1 + 32) = v4;
  a2[4] = 0;
  a2[5] = 0;
  a2[3] = 0;
  v5 = *(a2 + 3);
  *(a1 + 72) = a2[8];
  *(a1 + 56) = v5;
  a2[7] = 0;
  a2[8] = 0;
  a2[6] = 0;
  v6 = *(a2 + 9);
  *(a1 + 96) = a2[11];
  *(a1 + 80) = v6;
  a2[10] = 0;
  a2[11] = 0;
  a2[9] = 0;
  result = *(a2 + 6);
  *(a1 + 120) = a2[14];
  *(a1 + 104) = result;
  a2[12] = 0;
  a2[13] = 0;
  a2[14] = 0;
  *(a1 + 128) = *(a2 + 30);
  *(a1 + 136) = a2[16];
  a2[16] = 0;
  *(a1 + 144) = a2[17];
  *(a1 + 152) = a3;
  return result;
}

uint64_t sub_29AECE59C(uint64_t a1)
{
  *a1 = &unk_2A209B688;
  v2 = *(a1 + 136);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29AECE64C(char *__p)
{
  *__p = &unk_2A209B688;
  v2 = *(__p + 17);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (__p[127] < 0)
  {
    operator delete(*(__p + 13));
  }

  if (__p[103] < 0)
  {
    operator delete(*(__p + 10));
  }

  if (__p[79] < 0)
  {
    operator delete(*(__p + 7));
  }

  if (__p[55] < 0)
  {
    operator delete(*(__p + 4));
  }

  v3 = *(__p + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
}

uint64_t sub_29AECE70C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  (*(a1 + 8))(*(a1 + 16), a1 + 24, *(a1 + 144));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 152));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AECE7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AECE7B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 31) < 0)
  {
    sub_29A008D14((a1 + 8), a2[1], a2[2]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *(a1 + 8) = v5;
  }

  if (*(a2 + 55) < 0)
  {
    sub_29A008D14((a1 + 32), a2[4], a2[5]);
  }

  else
  {
    v6 = *(a2 + 2);
    *(a1 + 48) = a2[6];
    *(a1 + 32) = v6;
  }

  if (*(a2 + 79) < 0)
  {
    sub_29A008D14((a1 + 56), a2[7], a2[8]);
  }

  else
  {
    v7 = *(a2 + 7);
    *(a1 + 72) = a2[9];
    *(a1 + 56) = v7;
  }

  if (*(a2 + 103) < 0)
  {
    sub_29A008D14((a1 + 80), a2[10], a2[11]);
  }

  else
  {
    v8 = *(a2 + 5);
    *(a1 + 96) = a2[12];
    *(a1 + 80) = v8;
  }

  *(a1 + 104) = *(a2 + 26);
  v9 = a2[14];
  *(a1 + 112) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 112) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_29AECE8E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::HdxDrawTargetTask(pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209B6D0;
  *(v3 + 4) = 0;
  *(v3 + 21) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 44) = 1;
  *(v3 + 92) = 0x3F80000000000000;
  *&result = 0x400000003;
  *(v3 + 100) = 0x400000003;
  *(v3 + 108) = 1;
  *(v3 + 15) = 0;
  *(v3 + 16) = 0;
  *(v3 + 14) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209B6D0;
  *(v3 + 4) = 0;
  *(v3 + 21) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 44) = 1;
  *(v3 + 92) = 0x3F80000000000000;
  *&result = 0x400000003;
  *(v3 + 100) = 0x400000003;
  *(v3 + 108) = 1;
  *(v3 + 15) = 0;
  *(v3 + 16) = 0;
  *(v3 + 14) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::~HdxDrawTargetTask(pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask *this)
{
  *this = &unk_2A209B6D0;
  v2 = (this + 24);
  v3 = (this + 112);
  sub_29A124AB0(&v3);
  v3 = v2;
  sub_29AED081C(&v3);
  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::~HdxDrawTargetTask(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_ComputeRenderPassInfos(pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask *this@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  pxrInternal__aapl__pxrReserved__::HdStDrawTarget::GetDrawTargets(this, &v49);
  v4 = v49;
  if (v49 == v50)
  {
    v22 = 0;
    v24 = 0;
    if (v49)
    {
LABEL_52:
      v50 = v4;
      operator delete(v4);
    }
  }

  else
  {
    v5 = v50 - v49;
    v6 = (v50 - v49) >> 3;
    sub_29AED0704(&v40, v6);
    sub_29AA163DC(v53, v6);
    *&v36 = 0;
    do
    {
      v7 = 0;
      v52 = 0;
      do
      {
        v8 = *&v49[8 * v36];
        v9 = *&v49[8 * v7];
        if (v8 != v9 && v8 != 0 && v9 != 0)
        {
          ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((v8 + 32));
          v13 = *ExcludePaths;
          v14 = *(ExcludePaths + 8);
          while (v13 != v14)
          {
            if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v9 + 8), v13))
            {
              goto LABEL_12;
            }

            v13 = (v13 + 8);
          }

          RootPaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetRootPaths((v8 + 32));
          v16 = *RootPaths;
          v17 = *(RootPaths + 8);
          while (v16 != v17)
          {
            if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v9 + 8), v16))
            {
              sub_29A0F2BE4(v40 + 24 * v36, &v52, &v52);
              sub_29A018094((v53[0] + 24 * v52), &v36);
              break;
            }

            v16 = (v16 + 8);
          }
        }

LABEL_12:
        v7 = v52 + 1;
        v52 = v7;
      }

      while (v7 < v6);
      *&v36 = v36 + 1;
    }

    while (v36 < v6);
    if (v6 >> 60)
    {
      sub_29A00C9A4();
    }

    v18 = 0;
    v46 = operator new(2 * v5);
    v47 = v46;
    v48 = &v46[16 * v6];
    if (v6 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6;
    }

    v20 = 16;
    do
    {
      if (!*(v40 + v20))
      {
        *&v36 = v18;
        *(&v36 + 1) = *&v49[8 * v18];
        sub_29AED0610(&v46, &v36);
      }

      ++v18;
      v20 += 24;
    }

    while (v19 != v18);
    v22 = v46;
    v21 = v47;
    if (v47 == v46)
    {
      v29 = (v47 - v46) >> 4;
      v24 = v47;
    }

    else
    {
      v23 = 0;
      v24 = v47;
      do
      {
        v52 = *&v22[16 * v23];
        v25 = v53[0] + 24 * v52;
        v26 = *v25;
        v27 = *(v25 + 8);
        if (*v25 != v27)
        {
          do
          {
            v28 = *v26;
            sub_29A479190((v40 + 24 * *v26), &v52);
            if (!*(v40 + 24 * v28 + 16))
            {
              *&v36 = v28;
              *(&v36 + 1) = *&v49[8 * v28];
              sub_29AED0610(&v46, &v36);
            }

            ++v26;
          }

          while (v26 != v27);
          v22 = v46;
          v24 = v47;
        }

        ++v23;
      }

      while (v23 < (v24 - v22) >> 4);
      v29 = (v24 - v22) >> 4;
      v21 = v22;
    }

    if (v29 < v6)
    {
      v30 = 0;
      v31 = 16;
      do
      {
        if (*(v40 + v31))
        {
          *&v36 = v30;
          *(&v36 + 1) = *&v49[8 * v30];
          sub_29AED0610(&v46, &v36);
        }

        ++v30;
        v31 += 24;
      }

      while (v6 != v30);
      v22 = v46;
      v24 = v47;
      v21 = v46;
    }

    if ((v24 - v21) >> 4 != (v50 - v49) >> 3)
    {
      *&v36 = "hdx/drawTargetTask.cpp";
      *(&v36 + 1) = "_SortDrawTargets";
      v37 = 242;
      v38 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_SortDrawTargets(const HdStDrawTargetPtrVector &, _DrawTargetEntryVector *)";
      v39 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 1, "Mismatch");
    }

    *&v36 = v53;
    sub_29A0C25EC(&v36);
    *&v36 = &v40;
    sub_29AED0790(&v36);
    v4 = v49;
    if (v49)
    {
      goto LABEL_52;
    }
  }

  sub_29AECF05C(a2, (v24 - v22) >> 4);
  if (v22 != v24)
  {
    v32 = v22;
    do
    {
      v33 = *(v32 + 1);
      if (v33 && *(v33 + 16) == 1)
      {
        pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(&v36);
        v34 = operator new(0x130uLL);
        pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::HdSt_RenderPass(v34, this, &v36);
        *&v40 = v34;
        sub_29AE829A0(&v40 + 1);
        sub_29AED0B00(&v42);
        v44 = v33;
        v45 = 0;
        sub_29AECF144(a2, &v40);
        if (v43)
        {
          sub_29A014BEC(v43);
        }

        if (v41)
        {
          sub_29A014BEC(v41);
        }

        v35 = v40;
        *&v40 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&v36);
      }

      v32 += 16;
    }

    while (v32 != v24);
  }

  if (v22)
  {
    v47 = v22;
    operator delete(v22);
  }
}

void sub_29AECEF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  a9 = (v30 - 104);
  sub_29A0C25EC(&a9);
  a9 = &a22;
  sub_29AED0790(&a9);
  v32 = *(v30 - 136);
  if (v32)
  {
    *(v30 - 128) = v32;
    operator delete(v32);
  }

  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  sub_29AED081C(&a9);
  _Unwind_Resume(a1);
}

char **sub_29AECF05C(char **result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x492492492492493)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A040BCC(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[7 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = v2[1];
    v9 = v4 + v3 + *v2 - v8;
    sub_29AED0924(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AED0A84(&v12);
  }

  return result;
}

void sub_29AECF130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AED0A84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AECF144(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AED0C4C(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = 0uLL;
    v5 = *(a2 + 5);
    *(v3 + 48) = *(a2 + 12);
    *(v3 + 40) = v5;
    result = v3 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_29AECF1B8(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_ComputeCameraInfo(pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask *this, const pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(this, (v5 + 136), (a2 + 164));
}

void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_UpdateRenderPassState(__n128 *a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideColor(*a6, a1 + 3);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetWireframeColor(*a6, a1 + 4);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetLightingEnabled(*a6, a1[5].n128_i8[0]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold(*a6, a1[5].n128_f32[1]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaToCoverageEnabled(*a6, a1[6].n128_i8[12]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCullStyle(*a6, a1[6].n128_i32[2]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc(*a6, dword_29B714518[8 * *(a5 + 24) + a1[6].n128_u32[1]]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*a6, a5);
  v12 = *a6;
  v13 = a4[1];
  v15 = *a4;
  v16 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetLightingShader(v12, &v15);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetCameraFramingState(*a6, a3, (a3 + 128), (a3 + 256), (a3 + 288));
  v14 = *a6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v15, a2);
  (*(*v14 + 16))(v14, &v15);
  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29AECF5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_UpdateLightingContext(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29AE99CDC(a3);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetCamera(v6, a1, (a1 + 128));
  if (*a2)
  {
    v7 = sub_29AE99CDC(a3);
    v8 = sub_29AECF738(a2);
    UseLighting = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseLighting(v8);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetUseLighting(v7, UseLighting);
    v10 = sub_29AE99CDC(a3);
    v11 = sub_29AECF738(a2);
    Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v11);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetLights(v10, Lights);
    v13 = sub_29AE99CDC(a3);
    v14 = sub_29AECF738(a2);
    Material = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetMaterial(v14);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetMaterial(v13, Material);
    v16 = sub_29AE99CDC(a3);
    v17 = sub_29AECF738(a2);
    SceneAmbient = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetSceneAmbient(v17);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetSceneAmbient(v16, SceneAmbient);
    v19 = sub_29AE99CDC(a3);
    v20 = sub_29AECF738(a2);
    Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v20);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetShadows(v19, Shadows);
    v22 = sub_29AE99CDC(a3);
    v23 = sub_29AECF738(a2);
    UseColorMaterialDiffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseColorMaterialDiffuse(v23);

    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetUseColorMaterialDiffuse(v22, UseColorMaterialDiffuse);
  }
}

uint64_t sub_29AECF738(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_UpdateRenderPass(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 280);
  if (*(a1 + 48) != v3)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(*a1, (v2 + 176));
    *(a1 + 48) = v3;
  }

  v4 = *a1;

  return pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::Sync(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, float *a3, int *a4)
{
  v41 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v37, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  v8 = *a4;
  if ((*a4 & 4) != 0)
  {
    v30 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v31 = 1;
    v32 = 0x3F80000000000000;
    v33 = 3;
    v34 = 1;
    v35 = 4;
    result = sub_29AECFD08(a1, a2, &v27);
    if ((result & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a1 + 80) = v29;
    v10 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v10;
    *(a1 + 84) = v30;
    v11 = v34 == 1 && !sub_29AECFE78(1);
    *(a1 + 108) = v11;
    *(a1 + 88) = v31;
    *(a1 + 92) = v32;
    v12 = v35;
    *(a1 + 100) = v33;
    *(a1 + 104) = v12;
    v8 = *a4;
  }

  if ((v8 & 0x10) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskRenderTags(&v27, a1, a2);
    sub_29A2F7B20((a1 + 112));
    *(a1 + 112) = v27;
    *(a1 + 128) = v28;
    *&v28 = 0;
    v27 = 0uLL;
    v39 = &v27;
    sub_29A124AB0(&v39);
  }

  v13 = a2[1];
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v13);
  v15 = (*(*RenderDelegate + 48))(RenderDelegate);
  ActiveDrawTargetSetVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetActiveDrawTargetSetVersion(v15);
  if (*(a1 + 16) != ActiveDrawTargetSetVersion)
  {
    pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_ComputeRenderPassInfos(v13, &v27);
    sub_29AED0E44((a1 + 24));
    *(a1 + 24) = v27;
    *(a1 + 40) = v28;
    *&v28 = 0;
    v27 = 0uLL;
    v39 = &v27;
    sub_29AED081C(&v39);
    *(a1 + 16) = ActiveDrawTargetSetVersion;
  }

  v36 = 0;
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v17)
  {
    v17 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  sub_29AECFEDC(a3, v17 + 6, &v36);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v18)
  {
    v18 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  *&v27 = v18 + 56;
  v19 = sub_29AC1E77C(a3, v18 + 7, &unk_29B4D6118, &v27);
  v20 = sub_29A186EF4(&v39, v19 + 3);
  if (sub_29AED0040(v20) && ((v40 & 4) != 0 ? (v21 = (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(&v39)) : (v21 = v39), *v21))
  {
    if (v22)
    {
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29A014BEC(v23);
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = *(a1 + 24);
  if (v24 != *(a1 + 32))
  {
    v25 = v24 + 24;
    if (v22)
    {
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v24 + 32);
      *v25 = v22;
      *(v24 + 32) = v23;
      if (v26)
      {
        sub_29A014BEC(v26);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdxDrawTargetTask::_ComputeCameraInfo(v13, *(v25 + 16));
  }

  *a4 = 0;
  sub_29A186B14(&v39);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  result = sub_29AE9C770(&v36);
LABEL_33:
  if (v37)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v38, v37);
  }

  return result;
}

void sub_29AECFC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  sub_29A186B14(v48 - 104);
  sub_29AE9C770((v48 - 128));
  sub_29A0E9CEC(v48 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_29AECFD08(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v16, a2, a1 + 8, v6 + 440);
  v7 = sub_29AED0DB8(&v16);
  if (v7)
  {
    if ((v17 & 4) != 0)
    {
      v8 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v16);
    }

    else
    {
      v8 = v16;
    }

    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    a3[2] = v8[2];
    a3[3] = v11;
    *a3 = v9;
    a3[1] = v10;
  }

  else
  {
    v14[0] = "hd/task.h";
    v14[1] = "_GetTaskParams";
    v14[2] = 242;
    v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxDrawTargetTaskParams]";
    v15 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v16);
  return v7;
}