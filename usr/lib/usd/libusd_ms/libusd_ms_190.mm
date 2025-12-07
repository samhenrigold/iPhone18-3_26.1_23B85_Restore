void sub_29B077118(_Unwind_Exception *a1)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData::ComputePurpose@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkelData *this@<X0>)
{
  Skeleton = pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetSkeleton(this);
  result = sub_29B07C35C(Skeleton, a1);
  if (!*a1)
  {
    sub_29A580660(v5, Skeleton + 1, Skeleton + 4);
    sub_29A5B9D18(v5, &v6);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
  }

  return result;
}

void sub_29B077360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationSceneInputNames(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v66 = *MEMORY[0x29EDCA608];
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(this, a2);
  if (IsSkinningComputationPath)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v5)
    {
      v5 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    v6 = *(v5 + 3);
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v58, a2);
    v7 = sub_29A328A44(this + 11, &v58);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v58 + 1);
    sub_29A1DE3A4(&v58);
    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::GetSkinningMethod(&v58, (v7 + 5));
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v9)
    {
      v9 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    if ((*(v9 + 3) ^ v6) > 7)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      if (!v11)
      {
        v11 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      }

      if ((*(v11 + 4) ^ v6) > 7)
      {
        if ((atomic_load_explicit(byte_2A1758AE0, memory_order_acquire) & 1) == 0)
        {
          sub_29B2D02D8();
        }

        v58 = "usdSkelImaging/skeletonAdapter.cpp";
        v59 = "GetExtComputationSceneInputNames";
        v60 = 1256;
        v61 = "virtual const TfTokenVector &pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationSceneInputNames(const SdfPath &) const";
        LOBYTE(v62) = 0;
        v12 = v6 & 0xFFFFFFFFFFFFFFF8;
        if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v58, "Unknown skinning method: '%s' ", v8, v13);
        result = &qword_2A1758AE8;
        goto LABEL_32;
      }

      if (atomic_load_explicit(&qword_2A1758A48, memory_order_acquire))
      {
        result = &qword_2A1758A30;
        goto LABEL_32;
      }

      v32 = &qword_2A1758A30;
      if (!__cxa_guard_acquire(&qword_2A1758A48))
      {
LABEL_145:
        result = v32;
LABEL_32:
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        return result;
      }

      v44 = atomic_load(&qword_2A1758A08);
      if (!v44)
      {
        v44 = sub_29B07D9A0();
      }

      v45 = v44[9];
      v58 = v45;
      if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v58 &= 0xFFFFFFFFFFFFFFF8;
      }

      v46 = atomic_load(&qword_2A1758A08);
      if (!v46)
      {
        v46 = sub_29B07D9A0();
      }

      v47 = v46[3];
      v59 = v47;
      if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v59 &= 0xFFFFFFFFFFFFFFF8;
      }

      v48 = atomic_load(&qword_2A1758A08);
      if (!v48)
      {
        v48 = sub_29B07D9A0();
      }

      v49 = v48[12];
      v60 = v49;
      if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v60 &= 0xFFFFFFFFFFFFFFF8;
      }

      v50 = atomic_load(&qword_2A1758A08);
      if (!v50)
      {
        v50 = sub_29B07D9A0();
      }

      v51 = v50[13];
      v61 = v51;
      if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v61 &= 0xFFFFFFFFFFFFFFF8;
      }

      v52 = atomic_load(&qword_2A1758A08);
      if (!v52)
      {
        v52 = sub_29B07D9A0();
      }

      v53 = v52[14];
      v62 = v53;
      if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v62 &= 0xFFFFFFFFFFFFFFF8;
      }

      v54 = atomic_load(&qword_2A1758A08);
      if (!v54)
      {
        v54 = sub_29B07D9A0();
      }

      v55 = v54[11];
      v63 = v55;
      if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v63 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1758A30 = 0;
      *algn_2A1758A38 = 0;
      qword_2A1758A40 = 0;
      sub_29A12EF7C(&qword_2A1758A30, &v58, &v64, 6uLL);
      for (i = 40; i != -8; i -= 8)
      {
        v57 = *(&v58 + i);
        if ((v57 & 7) != 0)
        {
          atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v32 = &qword_2A1758A30;
      __cxa_atexit(sub_29A3C73E0, &qword_2A1758A30, &dword_299FE7000);
      v43 = &qword_2A1758A48;
    }

    else
    {
      if (atomic_load_explicit(&qword_2A1758A28, memory_order_acquire))
      {
        result = &qword_2A1758A10;
        goto LABEL_32;
      }

      v32 = &qword_2A1758A10;
      if (!__cxa_guard_acquire(&qword_2A1758A28))
      {
        goto LABEL_145;
      }

      v33 = atomic_load(&qword_2A1758A08);
      if (!v33)
      {
        v33 = sub_29B07D9A0();
      }

      v34 = v33[9];
      v58 = v34;
      if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v58 &= 0xFFFFFFFFFFFFFFF8;
      }

      v35 = atomic_load(&qword_2A1758A08);
      if (!v35)
      {
        v35 = sub_29B07D9A0();
      }

      v36 = v35[3];
      v59 = v36;
      if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v59 &= 0xFFFFFFFFFFFFFFF8;
      }

      v37 = atomic_load(&qword_2A1758A08);
      if (!v37)
      {
        v37 = sub_29B07D9A0();
      }

      v38 = v37[12];
      v60 = v38;
      if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v60 &= 0xFFFFFFFFFFFFFFF8;
      }

      v39 = atomic_load(&qword_2A1758A08);
      if (!v39)
      {
        v39 = sub_29B07D9A0();
      }

      v40 = v39[11];
      v61 = v40;
      if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v61 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1758A10 = 0;
      *algn_2A1758A18 = 0;
      qword_2A1758A20 = 0;
      sub_29A12EF7C(&qword_2A1758A10, &v58, &v62, 4uLL);
      for (j = 24; j != -8; j -= 8)
      {
        v42 = *(&v58 + j);
        if ((v42 & 7) != 0)
        {
          atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v32 = &qword_2A1758A10;
      __cxa_atexit(sub_29A3C73E0, &qword_2A1758A10, &dword_299FE7000);
      v43 = &qword_2A1758A28;
    }

    __cxa_guard_release(v43);
    goto LABEL_145;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a2))
  {
    if (atomic_load_explicit(&qword_2A1758A68, memory_order_acquire))
    {
      return &qword_2A1758A50;
    }

    else
    {
      if (__cxa_guard_acquire(&qword_2A1758A68))
      {
        v14 = atomic_load(&qword_2A1758A08);
        if (!v14)
        {
          v14 = sub_29B07D9A0();
        }

        v15 = v14[10];
        v58 = v15;
        if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v58 &= 0xFFFFFFFFFFFFFFF8;
        }

        v16 = atomic_load(&qword_2A1758A08);
        if (!v16)
        {
          v16 = sub_29B07D9A0();
        }

        v17 = v16[5];
        v59 = v17;
        if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v59 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = atomic_load(&qword_2A1758A08);
        if (!v18)
        {
          v18 = sub_29B07D9A0();
        }

        v19 = v18[7];
        v60 = v19;
        if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v60 &= 0xFFFFFFFFFFFFFFF8;
        }

        v20 = atomic_load(&qword_2A1758A08);
        if (!v20)
        {
          v20 = sub_29B07D9A0();
        }

        v21 = v20[8];
        v61 = v21;
        if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v61 &= 0xFFFFFFFFFFFFFFF8;
        }

        v22 = atomic_load(&qword_2A1758A08);
        if (!v22)
        {
          v22 = sub_29B07D9A0();
        }

        v23 = v22[6];
        v62 = v23;
        if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v62 &= 0xFFFFFFFFFFFFFFF8;
        }

        v24 = atomic_load(&qword_2A1758A08);
        if (!v24)
        {
          v24 = sub_29B07D9A0();
        }

        v25 = *v24;
        v63 = v25;
        if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v63 &= 0xFFFFFFFFFFFFFFF8;
        }

        v26 = atomic_load(&qword_2A1758A08);
        if (!v26)
        {
          v26 = sub_29B07D9A0();
        }

        v27 = v26[1];
        v64 = v27;
        if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v64 &= 0xFFFFFFFFFFFFFFF8;
        }

        v28 = atomic_load(&qword_2A1758A08);
        if (!v28)
        {
          v28 = sub_29B07D9A0();
        }

        v29 = v28[2];
        v65 = v29;
        if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v65 &= 0xFFFFFFFFFFFFFFF8;
        }

        qword_2A1758A50 = 0;
        *algn_2A1758A58 = 0;
        qword_2A1758A60 = 0;
        sub_29A12EF7C(&qword_2A1758A50, &v58, &v66, 8uLL);
        for (k = 56; k != -8; k -= 8)
        {
          v31 = *(&v58 + k);
          if ((v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        __cxa_atexit(sub_29A3C73E0, &qword_2A1758A50, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1758A68);
      }

      return &qword_2A1758A50;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationSceneInputNames(this, a2);
  }
}

void sub_29B077CF8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A1758A48);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationInputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a2@<X0>, void *a5@<X8>)
{
  v34 = *MEMORY[0x29EDCA608];
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a2, a1);
  if (IsSkinningComputationPath)
  {
    if ((atomic_load_explicit(&qword_2A1758A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758A88))
    {
      v8 = atomic_load(&qword_2A1758A08);
      if (!v8)
      {
        v8 = sub_29B07D9A0();
      }

      v9 = v8[10];
      v26 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v26 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&qword_2A1758A08);
      if (!v10)
      {
        v10 = sub_29B07D9A0();
      }

      v11 = v10[5];
      v27 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v27 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&qword_2A1758A08);
      if (!v12)
      {
        v12 = sub_29B07D9A0();
      }

      v13 = v12[7];
      v28 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = atomic_load(&qword_2A1758A08);
      if (!v14)
      {
        v14 = sub_29B07D9A0();
      }

      v15 = v14[8];
      v29 = v15;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v29 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&qword_2A1758A08);
      if (!v16)
      {
        v16 = sub_29B07D9A0();
      }

      v17 = v16[6];
      v30 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v30 &= 0xFFFFFFFFFFFFFFF8;
      }

      v18 = atomic_load(&qword_2A1758A08);
      if (!v18)
      {
        v18 = sub_29B07D9A0();
      }

      v19 = *v18;
      v31 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v31 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = atomic_load(&qword_2A1758A08);
      if (!v20)
      {
        v20 = sub_29B07D9A0();
      }

      v21 = v20[1];
      v32 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v32 &= 0xFFFFFFFFFFFFFFF8;
      }

      v22 = atomic_load(&qword_2A1758A08);
      if (!v22)
      {
        v22 = sub_29B07D9A0();
      }

      v23 = v22[2];
      v33 = v23;
      if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1758A70 = 0;
      *algn_2A1758A78 = 0;
      qword_2A1758A80 = 0;
      sub_29A12EF7C(&qword_2A1758A70, &v26, &v34, 8uLL);
      for (i = 56; i != -8; i -= 8)
      {
        v25 = *(&v26 + i);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1758A70, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758A88);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a1))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(a5);
  }
}

void sub_29B0783A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  while (1)
  {
    v15 = *--v12;
    v14 = v15;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v12 == &a12)
    {
      __cxa_guard_abort(&qword_2A1758A88);
      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationOutputs(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a2@<X0>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a2, a1))
  {
    LODWORD(v8) = 15;
    *(&v8 + 1) = 1;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v4 = atomic_load(&qword_2A1758A08);
    if (!v4)
    {
      v4 = sub_29B07D9A0();
    }

    v5 = a3[1];
    if (v5 >= a3[2])
    {
      v7 = sub_29B07F024(a3, v4 + 15, &v8);
    }

    else
    {
      v6 = v4[15];
      *v5 = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v5 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v5 + 8) = v8;
      v7 = v5 + 24;
    }

    a3[1] = v7;
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(a3);
  }
}

void sub_29B0785AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationPrimvars(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, unsigned int *a3@<X2>, int a4@<W3>, void *a6@<X8>)
{
  if (sub_29A328A44(a1 + 11, a3))
  {
    if (a4 == 3)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(a6);
  }
}

void sub_29B07880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29ABF15A8(va1);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinnedPrimPoints(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v22 = *MEMORY[0x29EDCA608];
  PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, a2, 0);
  v7 = *PrimAdapter;
  v8 = PrimAdapter[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v15 = "usdSkelImaging/skeletonAdapter.cpp";
    v16 = "_GetSkinnedPrimPoints";
    v17 = 2449;
    v18 = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinnedPrimPoints(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v19 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "gprimAdapter", 0) & 1) == 0)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_20;
    }

    v10 = 0;
    v9 = 0;
  }

  (*(*v9 + 536))(&v20, a4);
  if (sub_29A1936C8(&v20) & 1) != 0 || (v15 = "usdSkelImaging/skeletonAdapter.cpp", v16 = "_GetSkinnedPrimPoints", v17 = 2454, v18 = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetSkinnedPrimPoints(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v19 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "points.IsHolding<VtVec3fArray>()", 0)))
  {
    if ((v21 & 4) != 0)
    {
      v11 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(&v20);
    }

    else
    {
      v11 = v20;
    }

    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    v13 = *(v11 + 32);
    *(a3 + 32) = v13;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(a3 + 24))
      {
        v14 = *(a3 + 24);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  sub_29A186B14(&v20);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

LABEL_20:
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B0793B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

void sub_29B0793F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::ComputeSkinningTransforms<pxrInternal__aapl__pxrReserved__::GfMatrix4f>();
}

BOOL sub_29B0794BC(unint64_t *a1, unint64_t *a2)
{
  if (a2)
  {
    v4 = *a1;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v29[0].i64[0] = &v30;
    sub_29A85C1D4(a2, v4, v29);
    if (*a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = (a1[4] + v6);
        if (pxrInternal__aapl__pxrReserved__::GfMatrix4f::Factor(v8, &v30, v27, v29, v26, v28, 0.00001))
        {
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(v29, 1);
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v21, 1.0);
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslate(v21, v26);
          v22 = v29[0];
          v23 = v29[1];
          v24 = v29[2];
          v25 = v29[3];
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(v22.f32, v9);
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetInverse(v22.f32, 0, 0.0, v18);
          v10 = *v8;
          v11 = v8[1];
          v12 = v8[3];
          v21[2] = v8[2];
          v21[3] = v12;
          v21[0] = v10;
          v21[1] = v11;
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(v21, v18);
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotationMatrix(v21, v19);
          sub_29A85C4A8(a2);
          v13 = (a2[4] + v5);
          v14 = v19[0];
          v15 = v19[1];
          v16 = v20;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v22, 1.0);
          sub_29A85C4A8(a2);
          v13 = (a2[4] + v5);
          v14 = v22;
          v15 = v23;
          v16 = v24.i32[0];
        }

        v13[2].i32[0] = v16;
        *v13 = v14;
        v13[1] = v15;
        ++v7;
        v6 += 64;
        v5 += 36;
      }

      while (v7 < *a1);
    }
  }

  else
  {
    v30.i64[0] = "usdSkelImaging/skeletonAdapter.cpp";
    v30.i64[1] = "_ExtractSkinningScaleXforms";
    *&v31 = 1491;
    *(&v31 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtractSkinningScaleXforms(const VtMatrix4fArray &, VtMatrix3fArray *)";
    LOBYTE(v32) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v30, 1, "'skinningScaleXforms' pointer is null.");
  }

  return a2 != 0;
}

BOOL sub_29B0796B0(unint64_t *a1, unint64_t *a2)
{
  if (a2)
  {
    v4 = 2 * *a1;
    v27 = 0uLL;
    v26[0].i64[0] = &v27;
    sub_29A19596C(a2, v4, v26);
    if (*a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::Factor(a1[4] + v5, &v27, v24, v26, &v23, v25, 0.00001);
        v9 = 0uLL;
        v10 = 0uLL;
        if (v8)
        {
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(v26, 1);
          pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotationMatrix(v26, v22);
          RotationQuaternion = pxrInternal__aapl__pxrReserved__::GfMatrix3f::ExtractRotationQuaternion(v22);
          v18.f64[0] = v12;
          v18.f64[1] = v13;
          v19 = v14;
          v20 = RotationQuaternion;
          pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(&v21, &v18);
          v22[0] = v21;
          pxrInternal__aapl__pxrReserved__::GfDualQuatf::SetTranslation(v22, &v23);
          v9 = v22[0];
          v10 = v22[1];
        }

        v16 = v9;
        v17 = v10;
        sub_29A195BC4(a2);
        *(a2[4] + v6) = v16;
        sub_29A195BC4(a2);
        *(a2[4] + v6 + 16) = v17;
        ++v7;
        v6 += 32;
        v5 += 64;
      }

      while (v7 < *a1);
    }
  }

  else
  {
    v27.i64[0] = "usdSkelImaging/skeletonAdapter.cpp";
    v27.i64[1] = "_ExtractSkinningDualQuats";
    v28 = 1527;
    v29 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtractSkinningDualQuats(const VtMatrix4fArray &, VtVec4fArray *)";
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "'skinningDualQuats' pointer is null.");
  }

  return a2 != 0;
}

void sub_29B079840(pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery *a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  AnimQuery = pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(a1);
  if (*AnimQuery && pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::ComputeBlendShapeWeights(AnimQuery, v14, a5))
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v10 = *(a3 + 288);
    if (v10)
    {
      LODWORD(v11[0]) = 0;
      if (sub_29A837CDC(v10, v14, v12, 1, v11, 0))
      {
        v11[0] = v13;
        v11[1] = *&v12[0];
        pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::ComputeFlattenedSubShapeWeights(a2, v11, a4);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void *sub_29B079984(void *a1, unint64_t a2, __int32 *a3)
{
  sub_29A18E1D4(a1);
  v8 = a3;
  return sub_29A18E224(a1, a2, &v8, v6);
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetExtComputationInputForInputAggregator@<X0>(void *a3@<X3>, void *a5@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!result)
  {
    result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(result + 18) ^ *a3) >= 8)
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!result)
    {
      result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(result + 30) ^ *a3) > 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }
  }

  *a5 = 0;
  a5[1] = &unk_2A2044983;
  return result;
}

void sub_29B07A028(pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery *a1, uint64_t a2, _DWORD *a3, BOOL *a4, double a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::ComputeJointInfluences(a1, v7, v5, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SampleExtComputationInputForSkinningComputation(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, _DWORD *a7, void *a8, double a9)
{
  if (a6)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 0;
}

void sub_29B07AD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_29A1DCEA8(&a10);
  _Unwind_Resume(a1);
}

unint64_t sub_29B07AF00(uint64_t *a1, unint64_t a2, char **a3)
{
  v11 = *a1;
  sub_29A08B03C(a3, &v11);
  v11 = a1[2];
  sub_29A08B03C(a3, &v11);
  std::__sort<std::__less<double,double> &,double *>();
  v6 = sub_29A845E74(*a3, a3[1]);
  v7 = *a3;
  v8 = a3[1];
  if (v6 != v8)
  {
    v8 = v6;
    a3[1] = v6;
  }

  v9 = (v8 - v7) >> 3;
  if (v9 >= a2)
  {
    return a2;
  }

  else
  {
    return v9;
  }
}

unint64_t *sub_29B07AFC0(pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery *this, uint64_t a2, unint64_t *a3)
{
  Topology = *(a2 + 272);
  if (!Topology)
  {
    Topology = pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetTopology(this);
  }

  v6 = *Topology;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v8, 1.0);
  sub_29A198AE0(a3);
  v9 = v8;
  return sub_29A198B30(a3, v6, &v9);
}

double sub_29B07B034@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29B07F310(a2, a1).n128_u64[0];
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SampleExtComputationInputForInputAggregator(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8, double a9)
{
  if (a6)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v10 + 18) ^ *a4) >= 8)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v11)
      {
        v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v11 + 30) ^ *a4) >= 8)
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
      }
    }
  }

  return 0;
}

void sub_29B07B784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29B07B838(void *a1, _OWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29A186978(v8, a1);
  a1[1] = &off_2A2042C90 + 2;
  v4 = operator new(0x44uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  v6 = a2[3];
  *(v4 + 2) = a2[2];
  *(v4 + 3) = v6;
  atomic_store(0, v4 + 16);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 16, 1u, memory_order_relaxed);
  if (v9)
  {
    (*(v9 + 32))(v8);
  }

  return a1;
}

void sub_29B07B8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationInput(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a2@<X0>, void *a4@<X3>, void *a6@<X8>)
{
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a2, a1);
  if (IsSkinningComputationPath)
  {

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetExtComputationInputForSkinningComputation();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a1))
  {

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetExtComputationInputForInputAggregator(a4, a6);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInput(a6);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::SampleExtComputationInput(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, uint64_t a5, unint64_t a6, _DWORD *a7, void *a8, double a9)
{
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a1, a3);
  if (IsSkinningComputationPath)
  {

    return pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SampleExtComputationInputForSkinningComputation(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a3))
  {

    return pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SampleExtComputationInputForInputAggregator(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleExtComputationInput(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationKernel(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *a2@<X0>, uint64_t a3@<X8>)
{
  IsSkinningComputationPath = pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningComputationPath(a2, a1);
  if (IsSkinningComputationPath)
  {
    if ((atomic_load_explicit(&qword_2A1758AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758AD8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDSKELIMAGING_FORCE_CPU_COMPUTE);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A1758AD0 = *v16 == 1;
      __cxa_guard_release(&qword_2A1758AD8);
    }

    if (byte_2A1758AD0 != 1)
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      if (!v7)
      {
        v7 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      }

      v8 = *(v7 + 3);
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v17, a1);
      v9 = sub_29A328A44(a2 + 11, v17);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v17 + 1);
      sub_29A1DE3A4(v17);
      if (v9)
      {
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::GetSkinningMethod(v17, (v9 + 5));
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      if (!v11)
      {
        v11 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
      }

      if ((*(v11 + 3) ^ v8) > 7)
      {
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
        if (!v13)
        {
          v13 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
        }

        if ((*(v13 + 4) ^ v8) > 7)
        {
          v17[0] = "usdSkelImaging/skeletonAdapter.cpp";
          v17[1] = "GetExtComputationKernel";
          v17[2] = 2275;
          v17[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::GetExtComputationKernel(const UsdPrim &, const SdfPath &, const UsdImagingInstancerContext *) const";
          v18 = 0;
          v14 = v8 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v15 = (v14 + 16);
            if (*(v14 + 39) < 0)
            {
              v15 = *v15;
            }
          }

          else
          {
            v15 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Unknown skinning method: '%s' ", v10, v15);
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          goto LABEL_32;
        }

        pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetDQSSkinningComputeKernel(v13);
        v12 = &xmmword_2A1758AB0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetLBSSkinningComputeKernel(v11);
        v12 = &xmmword_2A1758A90;
      }

      if (*(v12 + 23) < 0)
      {
        sub_29A008D14(a3, *v12, *(v12 + 1));
      }

      else
      {
        *a3 = *v12;
        *(a3 + 16) = *(v12 + 2);
      }

LABEL_32:
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return;
    }

LABEL_16:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsSkinningInputAggregatorComputationPath(IsSkinningComputationPath, a1))
  {
    goto LABEL_16;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(a3);
}

__int128 *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetLBSSkinningComputeKernel(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this)
{
  if ((atomic_load_explicit(&qword_2A1758AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758AA8))
  {
    v2 = atomic_load(&qword_2A1758A08);
    if (!v2)
    {
      v2 = sub_29B07D9A0();
    }

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel(&xmmword_2A1758A90, (v2 + 18));
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1758A90, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758AA8);
  }

  return &xmmword_2A1758A90;
}

__int128 *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_GetDQSSkinningComputeKernel(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this)
{
  if ((atomic_load_explicit(&qword_2A1758AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758AC8))
  {
    v2 = atomic_load(&qword_2A1758A08);
    if (!v2)
    {
      v2 = sub_29B07D9A0();
    }

    pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel(&xmmword_2A1758AB0, (v2 + 19));
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1758AB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758AC8);
  }

  return &xmmword_2A1758AB0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_IsAffectedByTimeVaryingSkelAnim(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A328A44(this + 11, a2);
  if (v3)
  {
    v4 = (v3 + 3);
  }

  else
  {
    v4 = 0;
  }

  if (!v3 && (sub_29B2D0338(v11) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_29A328A44(this + 6, v4 + 106);
  if (!v5 || (v6 = v5[3]) == 0)
  {
    if ((sub_29B2D0380(v10) & 1) == 0)
    {
      return 0;
    }

    v6 = 0;
  }

  AnimQuery = pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(v6);
  if (*AnimQuery)
  {
    v8 = AnimQuery;
    if (*(v4 + 440) == 1 && (pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::JointTransformsMightBeTimeVarying(AnimQuery) & 1) != 0)
    {
      return 1;
    }

    if (*v4)
    {
      return pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::BlendShapeWeightsMightBeTimeVarying(v8);
    }
  }

  return 0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel@<X0>(std::string *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter *this@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSkelImagingPackageSkinningShader(&v16);
  if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v16 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v6)
  {
    v6 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v21, EmptyString, v6 + 14);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v21, 0))
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(v21, this, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size || (v16 = "usdSkelImaging/skeletonAdapter.cpp", v17 = "_LoadSkinningComputeKernel", v18 = 2473, v19 = "static std::string pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel(const TfToken &)", v20 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v16, "!shaderSource.empty()", 0) & 1) != 0))
    {
      if (sub_29ABCF8C0(14))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Kernel for skinning is :\n%s\n", v8, v9, p_p);
      }

      *a1 = __p;
    }

    else
    {
      v16 = "usdSkelImaging/skeletonAdapter.cpp";
      v17 = "_LoadSkinningComputeKernel";
      v18 = 2475;
      v19 = "static std::string pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel(const TfToken &)";
      v20 = 0;
      v13 = *this & 0xFFFFFFFFFFFFFFF8;
      if (v13)
      {
        v14 = (v13 + 16);
        if (*(v13 + 39) < 0)
        {
          v14 = *v14;
        }
      }

      else
      {
        v14 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v16, "Skinning compute shader is missing kernel '%s'", v12, v14);
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v16 = "usdSkelImaging/skeletonAdapter.cpp";
    v17 = "_LoadSkinningComputeKernel";
    v18 = 2468;
    v19 = "static std::string pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_LoadSkinningComputeKernel(const TfToken &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Couldn't load UsdImagingGLPackageSkinningShader");
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  return sub_29ADC1D14(v21);
}

void sub_29B07C2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29ADC1D14(&a21);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B07C35C@<X0>(pxrInternal__aapl__pxrReserved__ *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    if ((*(v3 + 57) & 8) == 0)
    {
      v4 = result;
      result = (*(*result + 32))(result);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(v4, &v5);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v5);
      }
    }
  }

  *a2 = 0;
  return result;
}

void sub_29B07C43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkinnedPrimData::_SkinnedPrimData(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::_SkinnedPrimData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery *a3, const pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  *this = 0;
  *(this + 1) = 0;
  sub_29A829000(this + 16, a4);
  *(this + 52) = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_AddRef();
}

void sub_29B07C5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::~UsdSkelBindingAPI(&a9);
  sub_29A1DCEA8((v9 + 432));
  sub_29A1DCEA8((v9 + 424));
  sub_29A829BD0((v9 + 416));
}

void *sub_29B07C604(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B3978;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B07C690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B07C6B4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B07C6DC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B07C718(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B07C718(void *a1@<X8>)
{
  v2 = operator new(0xC0uLL);
  sub_29B07C77C(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29B07C77C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B39B8;
  sub_29B07C864((a1 + 3));
  return a1;
}

void sub_29B07C7F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B39B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B07C864(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20B3738;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelCache::UsdSkelCache((a1 + 32));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  return a1;
}

void sub_29B07C8D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B07C8F0(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A20B3A08;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v28, *(this + 52));
      v15 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v15)
      {
        v16 = *(this + 52) + 1;
        *(this + 52) = v16;
        v17 = v28[2];
        if (v28[2] >= 2u)
        {
          v18 = v28[1];
          v19 = v28[v28[1] + 3];
          v20 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v20 - 11) = 1;
          *v20 = &unk_2A204C520;
          __dmb(0xBu);
          v20[8] = 0;
          *(this - 4) = v20;
          *(v20 - 3) = 2;
          v21 = tbb::internal::allocate_child_proxy::allocate(v20, 0x38uLL);
          v22 = &v29 + 24 * v18;
          *(v21 - 11) = 1;
          *v21 = &unk_2A20B3A08;
          v23 = *v22;
          *(v21 + 24) = *(v22 + 2);
          *(v21 + 8) = v23;
          v24 = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v21 + 32) = v24;
          *(v21 + 40) = v25;
          *(v21 + 48) = 2;
          *(v21 + 52) = *(this + 52) - v19;
          (***(v21 - 40))();
          v17 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v16 && *(&v29 + 3 * v28[0] + 2) < *(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29B07CD10(this, &v29 + 3 * v26);
      v17 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v17 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29B07CD10(this, this + 1);
  return 0;
}

void sub_29B07CD10(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *a2 - v2;
  if (*a2 > v2)
  {
    v4 = *(a1 + 32);
    v5 = 12 * v2;
    do
    {
      v6 = sub_29A7925DC(*(v4 + 8), (**v4 + v5)).u32[0];
      v7 = (**v4 + v5);
      *v7 = v6;
      v7[1] = v8;
      v7[2] = v9;
      v5 += 12;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_29B07CD7C(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4)
{
  v7 = *a2;
  *a1 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 8), a3);
  sub_29A1E2240((a1 + 12), a3 + 1);
  v8 = *a4;
  *(a1 + 16) = *a4;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

uint64_t sub_29B07CE20(uint64_t a1)
{
  sub_29B07CE5C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B07CE5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B07CEA0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B07CEA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29B07CEEC(uint64_t a1)
{
  sub_29B07CF28(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B07CF28(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B07CF6C((a2 + 2));
  }
}

void sub_29B07CF6C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 444));
  sub_29A1DE3A4((a1 + 440));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 436));
  sub_29A1DE3A4((a1 + 432));
  sub_29A829BD0((a1 + 424));
}

uint64_t sub_29B07CFF0(uint64_t a1)
{
  sub_29B07D02C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B07D02C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B07D070((a2 + 2));
  }
}

uint64_t sub_29B07D0C4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xD8uLL);
  result = sub_29B07D110(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B07D110(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B3A50;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 24) = 0u;
  sub_29A828FB8((a1 + 24));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void sub_29B07D1E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B07D2C0(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29AC90CB8(a1, v6, a4, &v22);
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

void sub_29B07D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B07D508(va, 0);
  _Unwind_Resume(a1);
}

void sub_29B07D508(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B07CEA0(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B07D564(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
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

  sub_29B07D7AC(a1, v6, a4, &v22);
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

void sub_29B07D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B07D944(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B07D7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x1D8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B07D830((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B07D830(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 8) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  sub_29B07D8C8(a1 + 8);
  return a1;
}

uint64_t sub_29B07D8C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::UsdSkelSkinningQuery((a1 + 16));
  *(a1 + 416) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 424));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 428));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 432));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 436));
  *(a1 + 440) = 0;
  return a1;
}

void sub_29B07D92C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B07D944(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B07CF6C(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29B07D9A0()
{
  v57 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xE0uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "blendShapeOffsets");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "blendShapeOffsetRanges");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "numBlendShapeOffsetRanges");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "blendShapeWeights");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "skinningMethod");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "geomBindXform");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "hasConstantInfluences");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "influences");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "numInfluencesPerComponent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "primWorldToLocal");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "restPoints");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "skelLocalToWorld");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "skinningXforms");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "skinningScaleXforms");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "skinningDualQuats");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "skinnedPoints");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "skinningComputation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "skinningInputAggregatorComputation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "skinPointsLBSKernel");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "skinPointsDQSKernel");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "skinPointsSimpleKernel");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "skel:jointIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "skel:jointWeights");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "skel:skinningMethod");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "skel:geomBindTransform");
  v1 = v0 + 25;
  v2 = *v0;
  v32 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v33 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v34 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v35 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v36 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v37 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v38 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v39 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v40 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v41 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v42 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v43 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v44 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v45 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v46 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v47 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v48 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v49 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v50 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v51 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[20];
  v52 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[21];
  v53 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[22];
  v54 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[23];
  v55 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[24];
  v56 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[26] = 0;
  v0[27] = 0;
  sub_29A12EF7C(v1, &v32, &v57, 0x19uLL);
  for (i = 192; i != -8; i -= 8)
  {
    v28 = *(&v32 + i);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v29 = 0;
  atomic_compare_exchange_strong(&qword_2A1758A08, &v29, v0);
  if (v29)
  {
    v30 = sub_29B07E410(v0);
    operator delete(v30);
    return atomic_load(&qword_2A1758A08);
  }

  return v0;
}

void sub_29B07E0B4(_Unwind_Exception *a1)
{
  v4 = 192;
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
      v6 = v1[24];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[23];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[22];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[21];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[20];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[19];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[18];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[17];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[16];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[15];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[14];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[13];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[12];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[11];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[10];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[9];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[8];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[7];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[6];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[5];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[4];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[3];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[2];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[1];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29B07E410(uint64_t a1)
{
  v27 = (a1 + 200);
  sub_29A124AB0(&v27);
  v2 = *(a1 + 192);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 184);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 176);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 168);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 160);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 152);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 144);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 136);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 128);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 120);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 112);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 104);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 96);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 88);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 80);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 72);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 64);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 56);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 48);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 40);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 32);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 24);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 16);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 8);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_29B07E6A4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
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

  sub_29B07E8EC(a1, v6, a4, &v22);
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

void sub_29B07E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B07E9C8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B07E970(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B07E970(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1DDD84(a1, *a2);
  sub_29A1DDDC0(v4 + 1, (v3 + 4));
  sub_29A87C868((a1 + 2));
  return a1;
}

void sub_29B07E9C8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B07D070(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B07EA24(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
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

  sub_29B07EC6C(a1, v6, a4, &v22);
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

void sub_29B07EC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B07E9C8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07EC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B07ECF0(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B07ECF0(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29A87C868((a1 + 2));
  return a1;
}

uint64_t sub_29B07ED48(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07ED80(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07ED80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07D070(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29B07EDDC(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07EE14(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07EE14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07CEA0(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

_DWORD *sub_29B07EE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  sub_29A1DDD84((v4 + 8), (a2 + 8));
  result = sub_29A1DDDC0((v4 + 12), (a2 + 12));
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_29B07EED4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  sub_29A1DDD84(v8 + 2, (a2 + 8));
  sub_29A1DDDC0(v8 + 3, (a2 + 12));
  *(v8 + 2) = *(a2 + 16);
  *(a2 + 16) = 0;
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ACCE848(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCE9BC(&v15);
  return v14;
}

void sub_29B07F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCE9BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B07F024(void *a1, uint64_t *a2, _OWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v14[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v14[0] = v9;
  v14[1] = v10;
  v14[3] = &v9[24 * v8];
  v11 = *a2;
  *v10 = *a2;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = *a3;
  v14[2] = v10 + 24;
  sub_29ABC711C(a1, v14);
  v12 = a1[1];
  sub_29ABC71C0(v14);
  return v12;
}

void sub_29B07F13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B07F150(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, _DWORD *a5, uint64_t *a6, _OWORD *a7)
{
  v7 = (*(a1 + 8) - *a1) >> 6;
  v8 = v7 + 1;
  if ((v7 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v16 = *(a1 + 16) - *a1;
  if (v16 >> 5 > v8)
  {
    v8 = v16 >> 5;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFC0)
  {
    v17 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v8;
  }

  v28 = a1;
  if (v17)
  {
    v18 = sub_29A0BE3C0(a1, v17);
  }

  else
  {
    v18 = 0;
  }

  v25 = v18;
  v26 = &v18[4 * v7];
  *&v27 = v26;
  *(&v27 + 1) = &v18[4 * v17];
  sub_29ACCA3F8(v26, a2, *a3, a4, a5, a6, a7);
  *&v27 = v26 + 4;
  v19 = *(a1 + 8);
  v20 = (v26 + *a1 - v19);
  sub_29ACCDBC8(a1, *a1, v19, v20);
  v21 = *a1;
  *a1 = v20;
  v22 = *(a1 + 16);
  v24 = v27;
  *(a1 + 8) = v27;
  *&v27 = v21;
  *(&v27 + 1) = v22;
  v25 = v21;
  v26 = v21;
  sub_29ACCDC7C(&v25);
  return v24;
}

void sub_29B07F284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCDC7C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07F298(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  a1[129] = 4;
  v4 = a2 << 7;
  if (a2 >= 5)
  {
    a1 = malloc(a2 << 7);
    *v3 = a1;
    v3[129] = v2;
    v3[128] = v2;
    if (v2 < 5)
    {
      a1 = v3;
    }

    goto LABEL_6;
  }

  a1[128] = a2;
  if (a2)
  {
LABEL_6:
    bzero(a1, v4);
  }

  return v3;
}

__n128 sub_29B07F310(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29AD57258(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29B07F3C8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
  }

  v4 = sub_29B07F498(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29B07F3C8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A207D2C8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29B07F45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B07F498(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2D03C8();
  }

  return sub_29AC7F5E0(a1);
}

uint64_t sub_29B07F4D4(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07F50C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07F50C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07CF6C(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29B07F568@<X0>(const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  result = sub_29B07F5C4(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B07F5C4(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B3AA0;
  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::UsdSkelBlendShapeQuery((a1 + 24), a2);
  return a1;
}

void sub_29B07F640(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B07F6B4(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + 80);
  sub_29A843EBC(&v7);
  v7 = (a2 + 56);
  sub_29A843FB4(&v7);
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  sub_29A1DE3A4((a2 + 16));
  result = *(a2 + 8);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

void *sub_29B07F744()
{
  v1 = nullsub_1821;
  return sub_29B07FED8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::~UsdSkelImagingSkelRootAdapter(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(this);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdSkelRoot *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelRoot::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && (sub_29B2D0434(v43, a5) & 1) == 0)
  {
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetDisplayPredicate(&v30, a1);
  v11 = v30;
  v12 = v31;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v42, a2);
  v42[0] = &unk_2A20633F0;
  v13 = pxrInternal__aapl__pxrReserved__::UsdSkelCache::UsdSkelCache(v40);
  v30.n128_u64[0] = v11.n128_u64[0] & 0xFFFFFFFFFFFFDFFFLL;
  v30.n128_u64[1] = v11.n128_u64[1] | 0x2000;
  v31 = v12;
  pxrInternal__aapl__pxrReserved__::UsdSkelCache::Populate(v13, v42, &v30);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v30.n128_u64[0] = v11.n128_u64[0] & 0xFFFFFFFFFFFFDFFFLL;
  v30.n128_u64[1] = v11.n128_u64[1] | 0x2000;
  v31 = v12;
  if (pxrInternal__aapl__pxrReserved__::UsdSkelCache::ComputeSkelBindings(v40, v42, &v37, &v30))
  {
    v14 = v37;
    if (v37 != v38)
    {
      sub_29A580660(&v30, (v37 + 8), (v37 + 16));
      PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v30, 1);
      v16 = *PrimAdapter;
      v17 = PrimAdapter[1];
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
      sub_29A1DE3A4(&v31);
      if (v30.n128_u64[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30.n128_u64[1], v18);
      }

      if (v16)
      {
        if (v19)
        {
          v20 = v19;
          if (v17)
          {
            atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
          }

LABEL_16:
          v36 = 0;
          memset(v35, 0, sizeof(v35));
          sub_29B07FD98(v35, v14[3]);
          v21 = v14[3];
          if (v21)
          {
            v22 = v14[7];
            v23 = 400 * v21;
            do
            {
              if (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasBlendShapes(v22) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasJointInfluences(v22))
              {
                v24 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, v22, 1);
                v26 = *v24;
                v25 = v24[1];
                if (v25)
                {
                  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v26)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30.n128_u32[1]);
                  v30.n128_u64[1] = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v31);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v31 + 1);
                  v33 = 0u;
                  v32 = 0u;
                  if (a4)
                  {
                    sub_29B07FE28(&v30, a4);
                  }

                  if (v17)
                  {
                    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
                  }

                  v27 = *(&v33 + 1);
                  *&v33 = v20;
                  *(&v33 + 1) = v17;
                  if (v27)
                  {
                    sub_29A014BEC(v27);
                  }

                  (*(*v26 + 64))(&v34, v26, v22, a3, &v30);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34 + 1);
                  sub_29A1DE3A4(&v34);
                  sub_29A8551E4(v35, v22);
                  sub_29B0020F0(&v30);
                }

                if (v25)
                {
                  sub_29A014BEC(v25);
                }
              }

              v22 += 50;
              v23 -= 400;
            }

            while (v23);
          }

          sub_29A854C84(&v30, v14, v35);
          pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::RegisterSkelBinding(v20, &v30);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef();
        }
      }

      else
      {
        v30.n128_u64[0] = "usdSkelImaging/skelRootAdapter.cpp";
        v30.n128_u64[1] = "Populate";
        v31 = 82;
        *&v32 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
        BYTE8(v32) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "adapter", 0);
      }

      v30.n128_u64[0] = "usdSkelImaging/skelRootAdapter.cpp";
      v30.n128_u64[1] = "Populate";
      v31 = 86;
      *&v32 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
      BYTE8(v32) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "skelAdapter", 0);
      v20 = 0;
      v17 = 0;
      goto LABEL_16;
    }
  }

  *a5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
  v30.n128_u64[0] = &v37;
  sub_29A84BDF8(&v30);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelRoot::~UsdSkelRoot(v42);
}

void sub_29B07FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  a23 = &a29;
  sub_29A84BDF8(&a23);
  v31 = *(v29 - 160);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelRoot::~UsdSkelRoot((v29 - 152));
  _Unwind_Resume(a1);
}

void *sub_29B07FD98(void *result, unint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    if (result[3])
    {
      v3 = result;
    }

    else
    {
      v3 = (v2 - 8);
    }

    if (*v3 < a2)
    {
      v4 = *result;
      v5 = sub_29A855294(result, a2);
      sub_29A855334(v2, v2 + 400 * v4, v5);
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    sub_29A855294(result, a2);
LABEL_9:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef();
  }

  return result;
}

int *sub_29B07FE28(int *a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948(a1 + 1, (a2 + 4));
  sub_29A166F2C(a1 + 1, (a2 + 8));
  sub_29A2258F0(a1 + 4, (a2 + 16));
  sub_29A225948(a1 + 5, (a2 + 20));
  sub_29A166F2C(a1 + 3, (a2 + 24));
  sub_29A166F2C(a1 + 4, (a2 + 32));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 6);
  *(a1 + 5) = v5;
  *(a1 + 6) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

void *sub_29B07FED8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B3D30;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B07FF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B07FF88(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B07FFB0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B07FFEC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B07FFEC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B3D70;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B3AF0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B080098(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingPackageSkinningShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1758B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B08))
  {
    sub_29B0801BC();
    __cxa_atexit(sub_29A424A8C, &qword_2A1758B00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758B08);
  }

  v2 = qword_2A1758B00;
  *a1 = qword_2A1758B00;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void sub_29B0801BC()
{
  if ((atomic_load_explicit(&qword_2A1758B20, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1758B20);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v4);
      sub_29A008E78(&__p, "usdSkelImaging");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(&__p.__r_.__value_.__l.__data_, &unk_2A1758B10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(sub_29B2B8168, &unk_2A1758B10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758B20);
    }
  }

  sub_29A008E78(v10, "shaders");
  sub_29A008E78(v8, "skinning.glslfx");
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v10, v8, &__p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(&unk_2A1758B10, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v2 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v2 = v12[1];
  }

  if (!v2)
  {
    __p.__r_.__value_.__r.__words[0] = "usdSkelImaging/package.cpp";
    __p.__r_.__value_.__l.__size_ = "_GetShaderPath";
    __p.__r_.__value_.__r.__words[2] = 23;
    v6 = "TfToken pxrInternal__aapl__pxrReserved__::_GetShaderPath(const char *)";
    v7 = 0;
    v3 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader: %s\n", v0, v1, "skinning.glslfx");
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!path.empty()", v3);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1758B00, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_29B080374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758B20);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(uint64_t *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (*a1)
      {
        v5 = 0;
        v6 = a1[4];
        v7 = *a1;
        do
        {
          v9 = *v6++;
          v8 = v9;
          if (v9 >= 0 && v8 < *a1)
          {
            ++v5;
          }

          --v7;
        }

        while (v7);
      }

      else
      {
        v5 = 0;
      }

      memset(v25, 0, 40);
      sub_29A19D79C(v25);
      v18 = &unk_29B741A18;
      sub_29A19D7EC(v25, 4 * v5, &v18);
      v12 = sub_29A19D6E4(v23, 12 * v5);
      sub_29A19DBEC(v12);
      if (v5)
      {
        v13 = 0;
        v14 = v24;
        do
        {
          for (i = 0; i != 12; ++i)
          {
            *(v14 + i * 4) = dword_29B741A1C[i] + 5 * v13;
          }

          ++v13;
          v14 += 48;
        }

        while (v13 != v5);
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v16)
      {
        v16 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v17)
      {
        v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&v18, v16 + 1, v17 + 71, v25, v23, 0);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::operator=(a2, &v18);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(&v18);
      *a3 = 5 * v5;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v18 = "usdSkelImaging/utils.cpp";
    v19 = "UsdSkelImagingComputeBoneTopology";
    v20 = 76;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(const UsdSkelTopology &, HdMeshTopology *, size_t *)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "'numPoints' pointer is null.");
  }

  else
  {
    v18 = "usdSkelImaging/utils.cpp";
    v19 = "UsdSkelImagingComputeBoneTopology";
    v20 = 72;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(const UsdSkelTopology &, HdMeshTopology *, size_t *)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "'meshTopology' pointer is null.");
  }

  return 0;
}

void sub_29B080620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(va);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(unint64_t *a1, uint64_t *a2, char *a3, unint64_t *a4)
{
  if (a4)
  {
    v6 = *a2;
    v7 = *a1;
    if (*a2 == *a1)
    {
      LODWORD(v13) = 0;
      v12 = 0;
      v17 = &v12;
      sub_29A193304(a4, a3, &v17);
      v10 = a2[4];
      sub_29A1935CC(a4);
      return pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(a1, v10, a4[4], a3);
    }

    v12 = "usdSkelImaging/utils.cpp";
    v13 = "UsdSkelImagingComputeBonePoints";
    v14 = 205;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const VtMatrix4dArray &, size_t, VtVec3fArray *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v12, "jointSkelXforms.size() [%zu] != number of joints [%zu].", a3, v6, v7);
  }

  else
  {
    v12 = "usdSkelImaging/utils.cpp";
    v13 = "UsdSkelImagingComputeBonePoints";
    v14 = 193;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const VtMatrix4dArray &, size_t, VtVec3fArray *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "'points' pointer is null.");
  }

  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v29 = a3;
  v30 = a2;
  v28 = a4;
  if (a3 || !a4)
  {
    v7 = *a1;
    v27 = *a1;
    LODWORD(v32) = -1;
    v8 = sub_29B01DC2C(__p, v7, &v32);
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      v13 = a1[4];
      v14 = __p[0];
      v15 = *a1;
      do
      {
        v17 = *v13++;
        v16 = v17;
        if ((v17 & 0x80000000) == 0 && v16 < v7)
        {
          *v14 = v12++;
          v11 += 5;
        }

        ++v14;
        --v15;
      }

      while (v15);
    }

    else
    {
      v11 = 0;
    }

    v6 = v11 == a4;
    if (v11 == a4)
    {
      v25[0] = __p;
      v25[1] = &v28;
      v25[2] = a1;
      v25[3] = &v27;
      v25[4] = &v29;
      v25[5] = &v30;
      if (v10 > 0x3E7 && pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v8))
      {
        LODWORD(v32) = 0;
        v37 = 65539;
        v38 = 55;
        tbb::task_group_context::init(&v32, v18, v19, v20);
        v31 = &v32;
        v21 = tbb::internal::allocate_root_with_context_proxy::allocate(&v31, 0x38uLL);
        *(v21 - 11) = 1;
        *v21 = &unk_2A20B3DC0;
        *(v21 + 8) = v10;
        *(v21 + 16) = xmmword_29B430070;
        *(v21 + 32) = v25;
        initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v21);
        *(v21 + 48) = 0;
        *(v21 + 52) = 5;
        *(v21 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
        (*(**(v21 - 40) + 16))(*(v21 - 40), v21, v21 - 8);
        tbb::task_group_context::~task_group_context(&v32, v23);
      }

      else
      {
        sub_29B080C14(v25, 0, v10);
      }
    }

    else
    {
      v32 = "usdSkelImaging/utils.cpp";
      v33 = "UsdSkelImagingComputeBonePoints";
      v34 = 237;
      v35 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const GfMatrix4d *, GfVec3f *, size_t)";
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "number of points [%zu] does not match the size of the input point array [%zu].", v9, v11, a4);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v32 = "usdSkelImaging/utils.cpp";
    v33 = "UsdSkelImagingComputeBonePoints";
    v34 = 218;
    v35 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const GfMatrix4d *, GfVec3f *, size_t)";
    v36 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "'points' pointer is null.");
    return 0;
  }

  return v6;
}

void sub_29B080A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, __int16 a27, char a28, char a29)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a25, v29);
  tbb::task_group_context::~task_group_context(&a27, v31);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(uint64_t *a1, void *a2, char *a3)
{
  if (a2)
  {
    v9 = 0;
    v7[0] = &v9;
    sub_29A19D7EC(a2, a3, v7);
    sub_29A19DBEC(a2);
    return pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(a1, a2[4], a3);
  }

  else
  {
    v7[0] = "usdSkelImaging/utils.cpp";
    v7[1] = "UsdSkelImagingComputeBoneJointIndices";
    v7[2] = 275;
    v7[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, VtIntArray *, size_t)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "'jointIndices' pointer is null.");
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(uint64_t *a1, uint64_t a2, char *a3)
{
  if (!a2 && a3)
  {
    v11 = "usdSkelImaging/utils.cpp";
    v12 = "UsdSkelImagingComputeBoneJointIndices";
    v13 = 291;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, int *, size_t)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "'jointIndices' pointer is null.");
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = a1[4];
  while (1)
  {
    v8 = *(v7 + 4 * v5);
    if (v8 < 0 || v8 >= v4)
    {
      goto LABEL_11;
    }

    v9 = v6 + 5;
    if (v6 + 5 > a3)
    {
      break;
    }

    v10 = a2 + 4 * v6;
    *v10 = v5;
    *(v10 + 4) = vdupq_n_s32(v8);
    v6 = v9;
LABEL_11:
    if (v4 == ++v5)
    {
      return 1;
    }
  }

  v11 = "usdSkelImaging/utils.cpp";
  v12 = "UsdSkelImagingComputeBoneJointIndices";
  v13 = 318;
  v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, int *, size_t)";
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v11, "Incorrect number of points for bone mesh [%zu].", a3, a3);
  return 0;
}

uint64_t sub_29B080C14(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    do
    {
      v3 = *(**result + 4 * a2);
      if ((v3 & 0x80000000) == 0)
      {
        v4 = 0;
        v5 = 0;
        v6 = 60 * v3;
        v7 = **(result + 40);
        v8 = (v7 + (*(*(*(result + 16) + 32) + 4 * a2) << 7));
        v9 = (v7 + (a2 << 7));
        v10 = vcvt_f32_f64(v9[6]);
        v11 = v9[7].f64[0];
        v12 = vcvt_f32_f64(v8[6]);
        v13 = v8[7].f64[0];
        v14 = vsub_f32(v10, v12);
        v15 = vmul_f32(v14, v14);
        v16.i32[0] = vdup_lane_s32(v10, 1).u32[0];
        v16.f32[1] = v11;
        v17.i32[0] = vdup_lane_s32(v12, 1).u32[0];
        v17.f32[1] = v13;
        v18 = v14.f32[0];
        v19 = vsub_f32(v16, v17);
        v20 = vmul_f32(v19, v19);
        v21 = sqrtf(vadd_f32(vadd_f32(v15, v20), vdup_lane_s32(v20, 1)).f32[0]);
        v22 = 1.0 / fmaxf(v21, 1.0e-10);
        v17.f32[0] = v22 * v18;
        v23 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v19), v22));
        v24 = v17.f32[0];
        v25 = vcvtq_f64_f32(v23);
        do
        {
          v26 = v5;
          v27 = &v8[2 * v5];
          v28 = vmulq_f64(*(v27 + 8), v25);
          v29 = fabs(v27->f64[0] * v24 + v28.f64[0] + v28.f64[1]);
          if (v4)
          {
            break;
          }

          v4 = 1;
          v5 = 1;
        }

        while (v29 <= 0.785398185);
        v30 = **(result + 32) + v6;
        if (v29 <= 0.785398185)
        {
          v31 = 2;
        }

        else
        {
          v31 = v26;
        }

        v32 = &v8[2 * dword_29B741A4C[v31]];
        v33 = v32[1].f64[0];
        v34 = &v8[2 * dword_29B741A58[v31]];
        v35 = v34[1].f64[0];
        v36 = v21 * 0.1;
        v37 = vcvt_f32_f64(*v32);
        v38 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v37, v37)) + (v33 * v33)), 1.0e-10);
        v39 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v37), v38));
        v40 = v38 * v33;
        v41 = vcvt_f32_f64(*v34);
        v42 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v41, v41)) + (v35 * v35)), 1.0e-10);
        v43 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v41), v42));
        v44 = v42 * v35;
        v45 = vmul_n_f32(v39, v36);
        v46 = v36 * v40;
        v47 = vmul_n_f32(v43, v36);
        v48 = v36 * v44;
        *v30 = v10;
        *(v30 + 8) = v11;
        v49 = vadd_f32(v45, v12);
        *(v30 + 12) = vadd_f32(v49, v47);
        *(v30 + 20) = (v46 + v13) + v48;
        *(v30 + 24) = vsub_f32(v49, v47);
        *(v30 + 32) = (v46 + v13) - v48;
        v50 = v13 - v46;
        v51 = vsub_f32(v12, v45);
        *(v30 + 36) = vsub_f32(v51, v47);
        *(v30 + 44) = v50 - v48;
        *(v30 + 48) = vadd_f32(v51, v47);
        *(v30 + 56) = v50 + v48;
      }

      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_29B080E7C(tbb::internal::allocate_continuation_proxy *this)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = v4 - v6;
  if (v7 < v4 - v6)
  {
    v9 = *(this + 5);
    if (v9 > 1)
    {
      goto LABEL_12;
    }

    if (v9 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v10 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v10 - 11) = 1;
        *v10 = &unk_2A204C520;
        __dmb(0xBu);
        v10[8] = 0;
        *(this - 4) = v10;
        *(v10 - 3) = 2;
        v11 = tbb::internal::allocate_child_proxy::allocate(v10, 0x38uLL);
        *(v11 - 11) = 1;
        v12 = *(this + 1);
        v13 = *(this + 2);
        *v11 = &unk_2A20B3DC0;
        *(v11 + 8) = v12;
        v14 = v13 + ((v12 - v13) >> 1);
        *(this + 1) = v14;
        *(v11 + 16) = v14;
        *(v11 + 24) = *(this + 24);
        v15 = *(this + 5) >> 1;
        *(this + 5) = v15;
        *(v11 + 40) = v15;
        *(v11 + 48) = 2;
        *(v11 + 52) = *(this + 52);
        (***(v11 - 40))();
        v6 = *(this + 2);
        v7 = *(this + 3);
        v4 = *(this + 1);
        v8 = v4 - v6;
        if (v7 >= v4 - v6)
        {
          break;
        }

        v16 = *(this + 5);
        if (v16 <= 1)
        {
          if (!v16 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v7 < v8 && *(this + 52))
  {
    *v30 = 0x10000;
    v31 = *v5;
    v32 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v30, *(this + 52));
      v17 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v17)
      {
        v18 = *(this + 52) + 1;
        *(this + 52) = v18;
        v19 = v30[2];
        if (v30[2] >= 2u)
        {
          v20 = v30[1];
          v21 = v30[v30[1] + 3];
          v22 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v22 - 11) = 1;
          *v22 = &unk_2A204C520;
          __dmb(0xBu);
          v22[8] = 0;
          *(this - 4) = v22;
          *(v22 - 3) = 2;
          v23 = tbb::internal::allocate_child_proxy::allocate(v22, 0x38uLL);
          v24 = &v31 + 24 * v20;
          *(v23 - 11) = 1;
          *v23 = &unk_2A20B3DC0;
          v25 = *v24;
          *(v23 + 24) = *(v24 + 2);
          *(v23 + 8) = v25;
          v26 = *(this + 4);
          v27 = *(this + 5) >> 1;
          *(this + 5) = v27;
          *(v23 + 32) = v26;
          *(v23 + 40) = v27;
          *(v23 + 48) = 2;
          *(v23 + 52) = *(this + 52) - v21;
          (***(v23 - 40))();
          v19 = --v30[2];
          v30[1] = (v30[1] + 1) & 7;
          goto LABEL_25;
        }

        v28 = v30[0];
        if (v30[v30[0] + 3] < v18 && *(&v31 + 3 * v30[0] + 2) < *(&v31 + 3 * v30[0]) - *(&v31 + 3 * v30[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v28 = v30[0];
      }

      sub_29B080C14(*(this + 4), *(&v31 + 3 * v28 + 1), *(&v31 + 3 * v28));
      v19 = --v30[2];
      v30[0] = (v30[0] - 1) & 7;
LABEL_25:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29B080C14(*(this + 4), v6, v4);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::UsdImagingDataSourceFieldAsset(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A20B3E08;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  *(a1 + 16) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v9 = *(a3 + 24);
  *(a1 + 40) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = a4;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::~UsdImagingDataSourceFieldAsset(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this)
{
  *this = &unk_2A20B3E08;
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 9);
  sub_29A1DE3A4(this + 8);
  v4 = *(this + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::~UsdImagingDataSourceFieldAsset(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this@<X0>, void *a2@<X8>)
{
  v14 = *(this + 4);
  v4 = *(this + 3);
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v16, this + 8);
  v5 = sub_29A1E2240(&v17, this + 9);
  v6 = *(this + 5);
  v18 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::_GetStaticTfType(v5);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v8);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(&v14, SchemaInfo);
  if (IsA)
  {
    sub_29B081C2C();
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::_GetStaticTfType(IsA);
    v13 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v11, v12);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(&v14, v13))
    {
      sub_29B081CF0();
    }

    else
    {
      v19[0] = "usdVolImaging/dataSourceFieldAsset.cpp";
      v19[1] = "_GetUsdAttributeNames";
      v19[2] = 70;
      v19[3] = "const TfTokenVector &pxrInternal__aapl__pxrReserved__::_GetUsdAttributeNames(UsdPrim)";
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, "Unsupported field type.");
      if ((atomic_load_explicit(byte_2A1758B68, memory_order_acquire) & 1) == 0)
      {
        sub_29B2D04A8(v19);
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29B0815D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3[11] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v3, (this + 16), a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3);
}

void sub_29B0816E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::UsdImagingDataSourceFieldAssetPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20B3E38;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  return sub_29A1D8028(a2, v3);
}

void sub_29B0818AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(a3, this, a2);
  }

  else
  {
    sub_29B08197C(this + 2, this + 4, *(this + 6), &v7);
    *a3 = v7;
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29B08197C@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::UsdImagingDataSourceFieldAsset(v8, a1, &v13, a3);
  sub_29B081FA0(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::_GetStaticTfType(v8);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v10);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
  if (IsA)
  {
    sub_29B081C2C();
    v13 = &qword_2A1758B28;
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::_GetStaticTfType(IsA);
    v16 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v14, v15);
    if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, v16))
    {
      v22[0] = "usdVolImaging/dataSourceFieldAsset.cpp";
      v22[1] = "Invalidate";
      v22[2] = 146;
      v22[3] = "static HdDataSourceLocatorSet pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(const UsdPrim &, const TfToken &, const TfTokenVector &, const UsdImagingPropertyInvalidationType)";
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v22, 1, "Unsupported field type.");
      goto LABEL_16;
    }

    sub_29B081CF0();
    v13 = &qword_2A1758B48;
  }

  v17 = sub_29A34AC54(&v24, *v13, v13[1], (v13[1] - *v13) >> 3);
  v18 = *a3;
  v19 = a3[1];
  if (*a3 != v19)
  {
    while (1)
    {
      v20 = v24;
      if (v24 != v25)
      {
        v20 = v24;
        while ((*v20 ^ *v18) >= 8)
        {
          v20 += 8;
          if (v20 == v25)
          {
            goto LABEL_12;
          }
        }
      }

      if (v20 != v25)
      {
        break;
      }

LABEL_12:
      v18 = (v18 + 8);
      if (v18 == v19)
      {
        goto LABEL_16;
      }
    }

    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetDefaultLocator(v17);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
  }

LABEL_16:
  v22[0] = &v24;
  sub_29A124AB0(v22);
}

void sub_29B081C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a14;
  sub_29A124AB0(&a9);
  sub_29ABD3178(v14);
}

void sub_29B081C2C()
{
  if ((atomic_load_explicit(&qword_2A1758B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B40))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset::GetSchemaAttributeNames(0);
    v1 = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::GetSchemaAttributeNames(0);
    sub_29B081EF0(SchemaAttributeNames, v1, &qword_2A1758B28);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1758B28, &dword_299FE7000);

    __cxa_guard_release(&qword_2A1758B40);
  }
}

void sub_29B081CF0()
{
  if ((atomic_load_explicit(&qword_2A1758B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B60))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset::GetSchemaAttributeNames(0);
    v1 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::GetSchemaAttributeNames(0);
    sub_29B081EF0(SchemaAttributeNames, v1, &qword_2A1758B48);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1758B48, &dword_299FE7000);

    __cxa_guard_release(&qword_2A1758B60);
  }
}

void sub_29B081DB4(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B081E50(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

char *sub_29B081EF0@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A1D7F98(a3, a2[1] - *a2 + a1[1] - *a1);
  sub_29A372808(a3, a3[1], *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(a3, a3[1], *a2, a2[1], a2[1] - *a2);
}

void sub_29B081F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *sub_29B081FA0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B3E98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B081FF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B082014(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08203C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08206C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3EE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B0820AC()
{
  v1 = nullsub_1824;
  return sub_29B082800(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::~UsdImagingOpenVDBAssetAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::~UsdImagingFieldAdapter(this);

  operator delete(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v2, &v3, 1uLL);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, atomic_uint **a3@<X8>)
{
  if (*a2)
  {
    v4 = 0;
LABEL_3:
    *a3 = v4;
    return;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!v5)
  {
    v5 = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v6 = *(v5 + 1);
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v4 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B0822E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B0822F8@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 8);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, (a2 + 16));
  sub_29A1E2240(&v16, (a2 + 20));
  v10 = *(a2 + 24);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::UsdImagingDataSourceFieldAssetPrim(v8, a1, &v13, a3);
  sub_29B082AB8(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::InvalidateImagingSubprim(uint64_t a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a4@<X8>)
{
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v9)
  {
    v9 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v9 + 11) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v10)
  {
    v10 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v10 + 9) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v11)
  {
    v11 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v11 + 8) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v12)
  {
    v12 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v12 + 7) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v13)
  {
    v13 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v13 + 36) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v14)
  {
    v14 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v14 + 6) ^ *a3) <= 7)
  {
LABEL_19:
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v15, this, a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v15);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(this, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetPrimTypeToken@<X0>(atomic_uint **a2@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!result)
  {
    result = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v4 = *(result + 1);
  *a2 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  return result;
}

void *sub_29B082800(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4158;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B08288C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0828B0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0828D8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B082914(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B082914(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B4198;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20B3F10;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0829C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *sub_29B082A2C(atomic_ullong *a1)
{
  result = sub_29B082A74();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::~UsdVolImagingTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29B082A74()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::UsdVolImagingTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29B082AB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B41E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B082B10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B082B2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B082B54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B082B84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4238))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B082BC4()
{
  v1 = nullsub_1825;
  return sub_29B0831DC(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::~UsdImagingField3DAssetAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::~UsdImagingFieldAdapter(this);

  operator delete(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v2, &v3, 1uLL);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!v4)
  {
    v4 = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v5 = *v4;
  *a2 = *v4;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B082DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::InvalidateImagingSubprim(uint64_t a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a4@<X8>)
{
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v9)
  {
    v9 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v9 + 11) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v10)
  {
    v10 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v10 + 9) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v11)
  {
    v11 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v11 + 8) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v12)
  {
    v12 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v12 + 10) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v13)
  {
    v13 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v13 + 7) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v14)
  {
    v14 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v14 + 36) ^ *a3) <= 7)
  {
LABEL_19:
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v15, this, a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v15);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(this, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetPrimTypeToken@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!result)
  {
    result = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v3 = *result;
  *a1 = *result;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void *sub_29B0831DC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B44A8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B083268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B08328C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0832B4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0832F0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0832F0(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B44E8;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20B4260;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B08339C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B44E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::~UsdVolImagingTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::UsdVolImagingTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "field3dAsset");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "openvdbAsset");
  v3 = (this + 2);
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B083584(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdAppUtilsGetCameraAtPath@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v6 = sub_29B2ACEC8(a1);
  if (v7 & 1 | v6)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a2))
    {
      sub_29A1E21F4(&v17, a2);
      sub_29A1E2240(v18, a2 + 1);
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
      {
        PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
        if (PathElementCount >= 2)
        {
          v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(PathElementCount);
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v12, a2, v9);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PathElementCount);
        pxrInternal__aapl__pxrReserved__::UsdPrimRange::Stage();
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::Get(a1, a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v18);
      return sub_29A1DE3A4(&v17);
    }

    LODWORD(v12) = 1;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14 + 1);
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v12);
    *a3 = &unk_2A205FB90;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v12 = "usdAppUtils/camera.cpp";
    v13 = "UsdAppUtilsGetCameraAtPath";
    v14 = 28;
    v15 = "UsdGeomCamera pxrInternal__aapl__pxrReserved__::UsdAppUtilsGetCameraAtPath(const UsdStagePtr &, const SdfPath &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "Invalid stage");
    LODWORD(v12) = 1;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14 + 1);
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v12);
    *a3 = &unk_2A205FB90;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  result = v13;
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  return result;
}

void sub_29B083B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_29A58BD10(va);
  sub_29A1DCEA8((v23 - 96));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::UsdAppUtilsFrameRecorder(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, char **a2, char a3)
{
  v3[3] = *MEMORY[0x29EDCA608];
  memset(v3, 0, 24);
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(this, v3, a2, a3);
}

void sub_29B083DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(v9 + 66);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::~UsdImagingGLEngine(v9);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetActiveRenderSettingsPrimPath(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 142, a2);
  sub_29A225948(this + 143, a2 + 1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 142);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetActiveRenderSettingsPrimPath(this, (this + 568));
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetActiveRenderPassPrimPath(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 140, a2);
  sub_29A225948(this + 141, a2 + 1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 140);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetActiveRenderPassPrimPath(this, (this + 560));
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetColorCorrectionMode(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetGPUEnabled(this))
  {

    return sub_29A166F2C(this + 66, a2);
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v6)
    {
      v6 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    if ((*v6 ^ *a2) >= 8)
    {
      v8[0] = "usdAppUtils/frameRecorder.cpp";
      v8[1] = "SetColorCorrectionMode";
      v8[2] = 89;
      v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetColorCorrectionMode(const TfToken &)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v8, "Color correction presently unsupported when the GPU is disabled.", v4);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v7)
    {
      v7 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    return sub_29A166F2C(this + 66, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetIncludedPurposes(uint64_t a1, uint64_t **a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v5 = *(v4 + 119);
  v24 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v7 = *(v6 + 111);
  v25 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 49);
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_29A12EF7C(&v21, &v24, &v27, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v24 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = *(v12 + 29);
  v24 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A5CC36C((a1 + 536), &v24, &v25, 1uLL);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    do
    {
      v16 = v21;
      if (v21 != v22)
      {
        while ((*v16 ^ *v14) >= 8)
        {
          if (++v16 == v22)
          {
            goto LABEL_34;
          }
        }
      }

      if (v16 == v22)
      {
LABEL_34:
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v17)
        {
          v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v18 = *v14;
        if ((*(v17 + 29) ^ *v14) >= 8)
        {
          v24 = "usdAppUtils/frameRecorder.cpp";
          v25 = "SetIncludedPurposes";
          v26 = 123;
          v27 = "void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetIncludedPurposes(const TfTokenVector &)";
          v28 = 0;
          v19 = v18 & 0xFFFFFFFFFFFFFFF8;
          if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v20 = (v19 + 16);
            if (*(v19 + 39) < 0)
            {
              v20 = *v20;
            }
          }

          else
          {
            v20 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Unrecognized purpose value '%s'.", v20);
        }
      }

      else
      {
        sub_29A1D8028(a1 + 536, v14);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v24 = &v21;
  sub_29A124AB0(&v24);
}

void sub_29B0843D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_29A124AB0(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::UsdGeomCamera *a3, uint64_t a4, double a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v15 = a5;
  v6 = sub_29B2ACEC8(a2);
  if (v7 & 1 | v6)
  {
    v8 = *(a4 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a4 + 8);
    }

    if (v8)
    {
      v20 = 0;
      v19 = 0;
      v13 = xmmword_29B742180;
      v14 = xmmword_29B6C5D40;
      v12 = xmmword_29B6C5D10;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v21, 1.0);
      *&v10 = 0x497424003F800000;
      v17 = 0;
      __p = 0;
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(&v11, &v21, 0, &v10, 20.955, 15.2908, 0.0, 0.0, 50.0, 0.0, 0.0);
    }

    *&v21 = "usdAppUtils/frameRecorder.cpp";
    *(&v21 + 1) = "Record";
    v22 = 366;
    v23 = "BOOL pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(const UsdStagePtr &, const UsdGeomCamera &, const UsdTimeCode, const std::string &)";
    LOBYTE(v24) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Invalid empty output image path");
  }

  else
  {
    *&v21 = "usdAppUtils/frameRecorder.cpp";
    *(&v21 + 1) = "Record";
    v22 = 361;
    v23 = "BOOL pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(const UsdStagePtr &, const UsdGeomCamera &, const UsdTimeCode, const std::string &)";
    LOBYTE(v24) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Invalid stage");
  }

  return 0;
}

void sub_29B085850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A7835BC(&STACK[0x470]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void *sub_29B085B60(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[19];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[18];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[17];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = a1[15];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = a1[9];
  if (v8)
  {
    a1[10] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_29B085C24(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20B4538;
  result[1] = v3;
  return result;
}

uint64_t sub_29B085C6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20B4538;
  a2[1] = v2;
  return result;
}

uint64_t sub_29B085C98(uint64_t a1)
{
  result = *(*(a1 + 8) + 24);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t sub_29B085CCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin::GetSearchURIs(pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin *this)
{
  *&v4 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758BA0))
  {
    sub_29B085E38("", __p);
    qword_2A1758B88 = 0;
    unk_2A1758B90 = 0;
    qword_2A1758B98 = 0;
    sub_29A280C48(&qword_2A1758B88, __p, &v4, 1uLL);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_29A1C9440, &qword_2A1758B88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758BA0);
  }

  return &qword_2A1758B88;
}

void sub_29B085E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758BA0);
  _Unwind_Resume(a1);
}

void sub_29B085E38(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1758BD8, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A1758BD8);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v8);
      sub_29A008E78(&__p, "usdShaders");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(&__p.__r_.__value_.__l.__data_, &unk_2A1758BC8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(sub_29B2B8168, &unk_2A1758BC8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758BD8);
    }
  }

  sub_29A008E78(v13, "shaders");
  sub_29A008E78(v11, a1);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v13, v11, &__p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(&unk_2A1758BC8, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    LOBYTE(v10) = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader resource: %s\n", v4, v5, a1, "usdShaders/discoveryPlugin.cpp", "_GetShaderResourcePath", 37, "std::string pxrInternal__aapl__pxrReserved__::_GetShaderResourcePath(const char *)", v10);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!path.empty()", v7);
  }
}

void sub_29B085FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758BD8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin::DiscoverNodes(pxrInternal__aapl__pxrReserved__ *a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((atomic_load_explicit(&qword_2A1758BC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_2A1758BC0);
    if (a1)
    {
      sub_29B085E38("shaderDefs.usda", &qword_2A1758BA8);
      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1758BA8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758BC0);
    }
  }

  v2 = qword_2A1758BB0;
  if (byte_2A1758BBF >= 0)
  {
    v2 = byte_2A1758BBF;
  }

  if (v2)
  {
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
    pxrInternal__aapl__pxrReserved__::ArResolver::CreateDefaultContextForAsset(Resolver);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open(&qword_2A1758BA8, v5, 0, &v4);
  }
}

void sub_29B086514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  __cxa_guard_abort(&qword_2A1758BC0);
  sub_29A403324(&a37);
  _Unwind_Resume(a1);
}

void *sub_29B08662C()
{
  v2 = nullsub_1828;
  return sub_29B0866B4(v0);
}

void sub_29B08668C(pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(a1, a2);

  operator delete(v2);
}

void *sub_29B0866B4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4600;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B086740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B086764(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B08678C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::NdrDiscoveryPlugin(v2);
  *v2 = &unk_2A20B45B8;
  *a1 = v2;
  v4 = 0;
  return sub_29B086804(&v4);
}

void *sub_29B086834()
{
  v2 = nullsub_1829;
  return sub_29B087D34(v0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::GetDiscoveryTypes(pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758BF8))
  {
    v2 = atomic_load(&qword_2A1758C00);
    if (!v2)
    {
      v2 = sub_29B087F90();
    }

    v3 = *v2;
    v5 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v5 = v4;
      }
    }

    qword_2A1758BE0 = 0;
    *algn_2A1758BE8 = 0;
    qword_2A1758BF0 = 0;
    sub_29A12EF7C(&qword_2A1758BE0, &v5, &v6, 1uLL);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1758BE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758BF8);
  }

  return &qword_2A1758BE0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::GetSourceType(pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin *this, uint64_t a2)
{
  v2 = atomic_load(&qword_2A1758C00);
  if (!v2)
  {
    v2 = sub_29B087F90();
  }

  return v2 + 1;
}

void pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(uint64_t a1@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  v60[20] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 95);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 80);
  }

  if (v5)
  {
    v6 = operator new(0x138uLL);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v7)
    {
      v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v6, (a1 + 96), v7 + 14);
LABEL_15:
    memset(&v47, 0, sizeof(v47));
    if ((pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v6, &v47) & 1) == 0)
    {
      *&v55 = "sdrGlslfx/parserPlugin.cpp";
      *(&v55 + 1) = "Parse";
      *&v56 = 198;
      *(&v56 + 1) = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
      LOBYTE(v57) = 0;
      if (*(a1 + 95) >= 0)
      {
        v11 = a1 + 72;
      }

      else
      {
        v11 = *(a1 + 72);
      }

      v12 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v47.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v55, "Failed to parse glslfx at URI [%s] error [%s]", v10, v11, v12);
    }

    memset(v46, 0, sizeof(v46));
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetParameters(v6, &v44);
    v14 = v44;
    for (i = v45; v14 != i; v14 += 72)
    {
      v48 = 0;
      v49.__r_.__value_.__r.__words[0] = 0;
      sub_29A186EF4(v54, (v14 + 24));
      sub_29B0874F0(v54, &v49, &v48, &v50);
      sub_29A186B14(v54);
      v55 = 0u;
      v56 = 0u;
      v57 = 1065353216;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 1065353216;
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36, v14);
      v15 = operator new(0x108uLL);
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(v15, &v36, &v48, &v50, 0, v49.__r_.__value_.__l.__data_, &v38, &v55, &v41);
      v37 = v15;
      sub_29AAC21F8(v46, &v37);
      v16 = v37;
      v37 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A40349C(&v38);
      *&v38 = &v41;
      sub_29A40DADC(&v38);
      sub_29A40349C(&v55);
      sub_29A186B14(&v50);
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v34 = v6;
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetTextures(v6, &v41);
    v17 = v41;
    for (j = v42; v17 != j; v17 += 8)
    {
      v48 = 0;
      v37 = 0;
      sub_29A186EF4(v53, v17 + 3);
      sub_29B0874F0(v53, &v48, &v37, &v49);
      sub_29A186B14(v53);
      if (!v49.__r_.__value_.__l.__size_)
      {
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v19)
        {
          v19 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(&v37, v19 + 4);
        *(&v55 + 1) = &off_2A2042840 + 2;
        v20 = operator new(0x10uLL);
        *v20 = 0;
        v20[2] = 0;
        atomic_store(0, v20 + 3);
        *&v55 = v20;
        atomic_fetch_add_explicit(v20 + 3, 1u, memory_order_relaxed);
        sub_29A18606C(&v49, &v55);
        sub_29A186B14(&v55);
      }

      v55 = 0u;
      v56 = 0u;
      v57 = 1065353216;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 1065353216;
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v35, v17);
      v21 = operator new(0x108uLL);
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(v21, &v35, &v37, &v49, 0, v48, &v38, &v55, &v50);
      v36 = v21;
      sub_29AAC21F8(v46, &v36);
      v22 = v36;
      v36 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A40349C(&v38);
      *&v38 = &v50;
      sub_29A40DADC(&v38);
      sub_29A40349C(&v55);
      sub_29A186B14(&v49);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    sub_29A404A70(&v55, a1 + 144);
    v38 = 0uLL;
    *&v39 = 0;
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    if (!v23)
    {
      v23 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    }

    if (sub_29A16039C(&v55, v23 + 6))
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
      if (!v24)
      {
        v24 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
      }

      if (sub_29A160470(&v55, v24 + 6))
      {
        sub_29A070BA0(&v38);
      }

      sub_29A0F26E4("unordered_map::at: key not found");
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetAttributes(v34, &v50);
    if (v50 != v51)
    {
      sub_29A070BA0(&v38);
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(&v38, "|", &v49);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    if (!v25)
    {
      v25 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    }

    v48 = (v25 + 48);
    v26 = sub_29A7D3598(&v55, v25 + 6, &unk_29B4D6118, &v48);
    v27 = v26;
    if (SHIBYTE(v26[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26[1].__r_.__value_.__l.__data_);
    }

    v27[1] = v49;
    v28 = atomic_load(&qword_2A1758C00);
    if (!v28)
    {
      v28 = sub_29B087F90();
    }

    v29 = atomic_load(&qword_2A1758C00);
    if (!v29)
    {
      v29 = sub_29B087F90();
    }

    v30 = operator new(0x220uLL);
    pxrInternal__aapl__pxrReserved__::SdrShaderNode::SdrShaderNode(v30, a1, (a1 + 8), (a1 + 24), (a1 + 48), v28 + 1, v29 + 1, (a1 + 96), (a1 + 96), v46, &v55, (a1 + 120));
    *a3 = v30;
    v49.__r_.__value_.__r.__words[0] = &v50;
    sub_29AB645B8(&v49);
    v50 = &v38;
    sub_29A012C90(&v50);
    sub_29A40349C(&v55);
    *&v55 = &v41;
    sub_29AB645B8(&v55);
    *&v55 = &v44;
    sub_29AB646A0(&v55);
    *&v55 = v46;
    sub_29A405D94(&v55);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v31 = sub_29ADC1D14(v34);
    operator delete(v31);
    return;
  }

  v8 = *(a1 + 143);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 128);
  }

  if (v8)
  {
    sub_29A5DB8D8(&v55, (a1 + 120), 8);
    v6 = operator new(0x138uLL);
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v9)
    {
      v9 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v6, &v55, v9 + 14);
    *&v55 = *MEMORY[0x29EDC9530];
    *(&v55 + *(v55 - 24)) = *(MEMORY[0x29EDC9530] + 24);
    *&v56 = MEMORY[0x29EDC9570] + 16;
    if (v59 < 0)
    {
      operator delete(__p);
    }

    *&v56 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(&v56 + 1);
    std::istream::~istream();
    MEMORY[0x29C2C4390](v60);
    goto LABEL_15;
  }

  *&v55 = "sdrGlslfx/parserPlugin.cpp";
  *(&v55 + 1) = "Parse";
  *&v56 = 189;
  *(&v56 + 1) = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
  LOBYTE(v57) = 0;
  v32 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v32)
  {
    v33 = (v32 + 16);
    if (*(v32 + 39) < 0)
    {
      v33 = *v33;
    }
  }

  else
  {
    v33 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v55, "Invalid NdrNodeDiscoveryResult with identifier %s: both uri and sourceCode are empty.", a2, v33);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a3);
}

void sub_29B087280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, char *a53)
{
  sub_29A186B14(&a40);
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a53 = &a24;
  sub_29AB645B8(&a53);
  a53 = &a27;
  sub_29AB646A0(&a53);
  a53 = &a30;
  sub_29A405D94(&a53);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  v54 = sub_29ADC1D14(a15);
  operator delete(v54);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29B0874F0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X1>, void *a3@<X2>, pxrInternal__aapl__pxrReserved__::VtValue **a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v8)
  {
    v8 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  sub_29A166F2C(a3, v8 + 13);
  *a2 = 0;
  if (!sub_29A1D0DBC(a1))
  {
    if (sub_29A346994(a1))
    {
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v16)
      {
        v16 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      result = sub_29A166F2C(a3, v16 + 2);
      v18 = *(a1 + 1);
      if ((v18 & 4) != 0)
      {
        result = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
        a1 = result;
      }

      v19 = *a1;
      goto LABEL_20;
    }

    if (!sub_29A3F9DF4(a1))
    {
      if (sub_29A293A9C(a1))
      {
        v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v34)
        {
          v34 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        result = sub_29A166F2C(a3, v34);
        v35 = *(a1 + 1);
        if ((v35 & 4) != 0)
        {
          result = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
          a1 = result;
        }

        a4[1] = &unk_2A204475B;
        v36 = *a1;
      }

      else
      {
        if (!sub_29A1EFCDC(a1))
        {
          goto LABEL_97;
        }

        v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v57)
        {
          v57 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        result = sub_29A166F2C(a3, v57);
        v58 = *(a1 + 1);
        if ((v58 & 4) != 0)
        {
          result = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
          a1 = result;
        }

        v36 = *a1;
        a4[1] = &unk_2A204475B;
      }

      *a4 = v36;
      return result;
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v21)
    {
      v21 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    result = sub_29A166F2C(a3, v21 + 2);
    v22 = *(a1 + 1);
    if ((v22 & 4) != 0)
    {
      result = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      a1 = result;
    }

    a4[1] = &unk_2A2044C63;
    v20 = *a1;
LABEL_27:
    *a4 = v20;
    return result;
  }

  v9 = sub_29B087E6C(a1);
  v10 = *v9;
  v11 = (v9[1] - *v9) >> 4;
  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        sub_29A18E048(&v77, 2uLL);
        v23 = 0;
        v24 = 1;
        while (1)
        {
          v25 = v24;
          v26 = sub_29A346994((*v9 + 16 * v23));
          v27 = (*v9 + 16 * v23);
          if (v26)
          {
            v28 = *(v27 + 1);
            if ((v28 & 4) != 0)
            {
              v27 = (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))();
            }

            v29 = *v27;
            sub_29A18E624(&v77);
            v30 = v29;
            *(v79 + 4 * v23) = v30;
          }

          else
          {
            if (!sub_29A3F9DF4(v27))
            {
              a4[1] = 0;
              goto LABEL_113;
            }

            v31 = *v9 + 16 * v23;
            v32 = *(v31 + 8);
            if ((v32 & 4) != 0)
            {
              v31 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))();
            }

            v33 = *v31;
            sub_29A18E624(&v77);
            *(v79 + 4 * v23) = v33;
          }

          v24 = 0;
          v23 = 1;
          if ((v25 & 1) == 0)
          {
            v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
            if (!v62)
            {
              v62 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
            }

            sub_29A166F2C(a3, v62 + 2);
            *a2 = 2;
            a4[1] = &off_2A2042F70;
            sub_29A18ECC8(a4, &v77);
LABEL_113:
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }
        }
      }

      goto LABEL_97;
    }

    if (sub_29A346994(v10))
    {
      v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v55)
      {
        v55 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      sub_29A166F2C(a3, v55 + 2);
      result = *v9;
      v56 = *(*v9 + 1);
      if ((v56 & 4) != 0)
      {
        result = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))();
      }

      v19 = *result;
LABEL_20:
      v20 = v19;
      a4[1] = &unk_2A2044C63;
      goto LABEL_27;
    }

    if (!sub_29A3F9DF4(*v9))
    {
      goto LABEL_97;
    }

    v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v63)
    {
      v63 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    sub_29A166F2C(a3, v63 + 2);
    result = *v9;
    v64 = *(*v9 + 1);
    if ((v64 & 4) != 0)
    {
      result = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))();
    }

    a4[1] = &unk_2A2044C63;
    v20 = *result;
    goto LABEL_27;
  }

  switch(v11)
  {
    case 3:
      v37 = 0;
      for (i = 0; i != 12; i += 4)
      {
        v39 = sub_29A346994((*v9 + v37));
        v40 = (*v9 + v37);
        if (v39)
        {
          v41 = *(v40 + 1);
          if ((v41 & 4) != 0)
          {
            v40 = (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v42 = *v40;
        }

        else
        {
          result = sub_29A3F9DF4(v40);
          if (!result)
          {
            goto LABEL_106;
          }

          v43 = *v9 + v37;
          v44 = *(v43 + 8);
          if ((v44 & 4) != 0)
          {
            v43 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v42 = *v43;
        }

        *(&v77 + i) = v42;
        v37 += 16;
      }

      v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v59)
      {
        v59 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      sub_29A166F2C(a3, v59 + 4);
      a4[1] = (&off_2A2042840 + 2);
      result = operator new(0x10uLL);
      *result = v77;
      *(result + 2) = DWORD2(v77);
      v60 = (result + 12);
LABEL_117:
      atomic_store(0, v60);
      *a4 = result;
      atomic_fetch_add_explicit(v60, 1u, memory_order_relaxed);
      return result;
    case 4:
      sub_29A18E048(&v77, 4uLL);
      v45 = 0;
      v46 = 0;
      while (1)
      {
        v47 = sub_29A346994((*v9 + v46));
        v48 = (*v9 + v46);
        if (v47)
        {
          v49 = *(v48 + 1);
          if ((v49 & 4) != 0)
          {
            v48 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v50 = *v48;
          sub_29A18E624(&v77);
          v51 = v50;
          *(v79 + v45) = v51;
        }

        else
        {
          if (!sub_29A3F9DF4(v48))
          {
            a4[1] = 0;
            goto LABEL_111;
          }

          v52 = *v9 + v46;
          v53 = *(v52 + 8);
          if ((v53 & 4) != 0)
          {
            v52 = (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v54 = *v52;
          sub_29A18E624(&v77);
          *(v79 + v45) = v54;
        }

        v46 += 16;
        v45 += 4;
        if (v45 == 16)
        {
          v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
          if (!v61)
          {
            v61 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
          }

          sub_29A166F2C(a3, v61 + 2);
          *a2 = 4;
          a4[1] = &off_2A2042F70;
          sub_29A18ECC8(a4, &v77);
LABEL_111:
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }
      }

    case 16:
      if (sub_29A346994(v10))
      {
        v12 = 0;
        for (j = 0; j != 128; j += 8)
        {
          v14 = *v9 + v12;
          v15 = v14[1];
          if ((v15 & 4) != 0)
          {
            v14 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          *(&v77 + j) = *v14;
          v12 += 16;
        }

        v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v69)
        {
          v69 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(a3, v69 + 9);
        a4[1] = (&off_2A2042BD8 + 2);
        result = operator new(0x88uLL);
        v70 = v82;
        *(result + 4) = v81;
        *(result + 5) = v70;
        v71 = v84;
        *(result + 6) = v83;
        *(result + 7) = v71;
        v72 = v78;
        *result = v77;
        *(result + 1) = v72;
        v73 = v80;
        *(result + 2) = v79;
        *(result + 3) = v73;
        v60 = (result + 128);
      }

      else
      {
        result = sub_29A3F9DF4(*v9);
        if (!result)
        {
LABEL_106:
          a4[1] = 0;
          return result;
        }

        v65 = 0;
        for (k = 0; k != 64; k += 4)
        {
          v67 = *v9 + v65;
          v68 = *(v67 + 8);
          if ((v68 & 4) != 0)
          {
            v67 = (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          *(&v77 + k) = *v67;
          v65 += 16;
        }

        v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v74)
        {
          v74 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(a3, v74 + 9);
        a4[1] = (&off_2A2042C90 + 2);
        result = operator new(0x44uLL);
        v75 = v78;
        *result = v77;
        *(result + 1) = v75;
        v76 = v80;
        *(result + 2) = v79;
        *(result + 3) = v76;
        v60 = (result + 64);
      }

      goto LABEL_117;
  }

LABEL_97:

  return sub_29A186A3C(a4, a1);
}

void sub_29B087D0C(pxrInternal__aapl__pxrReserved__::NdrParserPlugin *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::~NdrParserPlugin(a1, a2);

  operator delete(v2);
}

void *sub_29B087D34(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4690;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B087DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B087DE4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29B087E0C()
{
  v0 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::NdrParserPlugin(v0);
  *v0 = &unk_2A20B4640;
  return v0;
}

void **sub_29B087E6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1D0DBC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B087F00, &stru_2A2046480);
  }
}

void *sub_29B087F00@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29B087F4C;
  a1[2] = &stru_2A2046480;
  return result;
}

void sub_29B087F4C(void **a1)
{
  if (a1)
  {
    v2 = a1;
    sub_29A1D0D38(&v2);
    operator delete(a1);
  }
}

uint64_t *sub_29B087F90()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "glslfx");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "glslfx");
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
  atomic_compare_exchange_strong(&qword_2A1758C00, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1758C00);
  }

  return v0;
}

void sub_29B0880D4(_Unwind_Exception *a1)
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

void *sub_29B0882D0(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_29B0882EC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B088328(a1);
  return a1;
}

uint64_t *sub_29B08839C(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B08841C(v3);
  return a1;
}

void sub_29B08841C(uint64_t **result)
{
  if (**result)
  {
    sub_29B0884C0(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B088554(*result);
    sub_29B08851C(v3, v2, v1);
  }
}

void sub_29B0884C0(uint64_t *a1)
{
  sub_29B08857C(a1);
  sub_29B0885A4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0885A4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void sub_29B088670(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void **sub_29B08874C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A38A7B4(v3);
  return a1;
}

uint64_t sub_29B0888B0(atomic_uint *a1, int a2, int a3)
{
  if (a3 != 2 && a3 != 1)
  {
    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }

    else if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }

    else
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
    }
  }

  else
  {
    return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
  }
}

uint64_t sub_29B08899C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_29A014BEC(*(a1 + 8));
  }

  return a1;
}

uint64_t Overlay::_operatorLessThanLessThan(Overlay *this)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B088B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B088D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void *Overlay::_operatorLessThanLessThan@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    sub_29A008864(&v6);
    sub_29A00911C(&v7, "pxr.SdfPrimSpec(", 16);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v5, a1);
    sub_29A1DA6E4(v5);
  }

  return sub_29A008E78(a2, "pxr.SdfPrimSpec(nil)");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    sub_29A008864(&v6);
    sub_29A00911C(&v7, "pxr.SdfPropertySpec(", 20);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v5, a1);
    sub_29A1DA6E4(v5);
  }

  return sub_29A008E78(a2, "pxr.SdfPropertySpec(nil)");
}

void sub_29B088FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29B089290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void Overlay::RegisterHydraPlugins(Overlay *this)
{
  if (numCallsToRegisterHydraPlugins != 2)
  {
    if (numCallsToRegisterHydraPlugins == 1)
    {
      v1 = sub_29A00911C(MEMORY[0x29EDC93C8], "Calling Overlay::RegisterHydraPlugins() multiple times. This has no effect", 74);
      std::ios_base::getloc((v1 + *(*v1 - 24)));
      v2 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
      (v2->__vftable[2].~facet_0)(v2, 10);
      std::locale::~locale(&v41);
      std::ostream::put();
      std::ostream::flush();
      ++numCallsToRegisterHydraPlugins;
      return;
    }

    ++numCallsToRegisterHydraPlugins;
    Overlay::GetPathOfDylib(&v41);
    v3 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
      if (v41.__r_.__value_.__l.__size_)
      {
        v4 = v41.__r_.__value_.__r.__words[0];
LABEL_9:
        v6 = (v4 + size);
        v7 = v4;
        v8 = v6;
        do
        {
          v9 = v7;
          v10 = v7;
          while (1)
          {
            v11 = *v10++;
            if (v11 == 47)
            {
              break;
            }

            v9 = v10;
            if (v10 == v6)
            {
              v9 = v8;
              goto LABEL_15;
            }
          }

          v7 = v9 + 1;
          v8 = v9;
        }

        while (v10 != v6);
LABEL_15:
        v12 = &v9[~v4];
        v13 = v9 == v6;
        v14 = -2;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = v41.__r_.__value_.__r.__words[0];
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = v41.__r_.__value_.__l.__size_;
        }

        else
        {
          v15 = &v41;
        }

        if (v3 < v14)
        {
          v14 = v3;
        }

        if (v3 - v14 > 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v3;
        }

        v17 = v15 + v16;
        if (v16)
        {
          v18 = v15;
          v19 = (v15 + v16);
          do
          {
            v20 = v18;
            v21 = v18;
            while (1)
            {
              v22 = *v21++;
              if (v22 == 47)
              {
                break;
              }

              v20 = v21;
              if (v21 == v17)
              {
                v20 = v19;
                goto LABEL_35;
              }
            }

            v18 = (&v20->__r_.__value_.__l.__data_ + 1);
            v19 = v20;
          }

          while (v21 != v17);
        }

        else
        {
          v20 = v15;
        }

LABEL_35:
        v25 = v20 - v15;
        if (v20 == v17)
        {
          v26 = -1;
        }

        else
        {
          v26 = v25;
        }

        std::string::basic_string(&v40, &v41, 0, v26, __p);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v40.__r_.__value_.__l.__size_;
        }

        v28 = __p;
        v29 = sub_29A022DE0(__p, v27 + 25);
        if ((v39 & 0x80u) != 0)
        {
          v28 = __p[0];
        }

        if (v27)
        {
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v40;
          }

          else
          {
            v30 = v40.__r_.__value_.__r.__words[0];
          }

          v29 = memmove(v28, v30, v27);
        }

        strcpy(v28 + v27, "/Plugin/usd/plugInfo.json");
        Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v29);
        pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(Instance, __p, v37);
        v42.__locale_ = v37;
        sub_29A17DEA8(&v42);
        v32 = sub_29A00911C(MEMORY[0x29EDC93C8], "Overlay::RegisterHydraPlugins() manually registered ", 52);
        if ((v39 & 0x80u) == 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        if ((v39 & 0x80u) == 0)
        {
          v34 = v39;
        }

        else
        {
          v34 = __p[1];
        }

        v35 = sub_29A00911C(v32, v33, v34);
        std::ios_base::getloc((v35 + *(*v35 - 24)));
        v36 = std::locale::use_facet(&v42, MEMORY[0x29EDC93D0]);
        (v36->__vftable[2].~facet_0)(v36, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        goto LABEL_58;
      }
    }

    else if (*(&v41.__r_.__value_.__s + 23))
    {
      v4 = &v41;
      size = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

    v23 = sub_29A00911C(MEMORY[0x29EDC93C8], "ERROR: Could not GetPathOfDylib(). Hydra plugins may not load, and trying to use hydra may cause a crash", 104);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v40, MEMORY[0x29EDC93D0]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v40);
    std::ostream::put();
    std::ostream::flush();
LABEL_58:
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29B089730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Overlay::GetPathOfDylib@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  if (dladdr(Overlay::RegisterHydraPlugins, &v6))
  {
    dli_fname = v6.dli_fname;
  }

  else
  {
    v3 = sub_29A00911C(MEMORY[0x29EDC93C8], "Error: Could not dladdr. Code depending on the position of this dylib may not work", 82);
    std::ios_base::getloc((v3 + *(*v3 - 24)));
    v4 = std::locale::use_facet(&v7, MEMORY[0x29EDC93D0]);
    (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(&v7);
    std::ostream::put();
    std::ostream::flush();
    dli_fname = "";
  }

  return sub_29A008E78(a1, dli_fname);
}

__n128 Overlay::GetDescriptor@<Q0>(pxrInternal__aapl__pxrReserved__::HgiTexture **a1@<X0>, uint64_t a2@<X8>)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a1);
  v4 = Descriptor;
  if (*(Descriptor + 23) < 0)
  {
    sub_29A008D14(a2, *Descriptor, *(Descriptor + 8));
  }

  else
  {
    v5 = *Descriptor;
    *(a2 + 16) = *(Descriptor + 16);
    *a2 = v5;
  }

  result = *(v4 + 24);
  v7 = *(v4 + 40);
  v8 = *(v4 + 56);
  *(a2 + 72) = *(v4 + 72);
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = result;
  return result;
}

uint64_t Overlay::HgiTextureHandleGetTextureId(void *a1)
{
  if (a1)
  {
    v1 = vars8;
  }

  return pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(a1);
}

float64_t Overlay::_operatorStar(float64x2_t *this, float64x2_t *a2, const pxrInternal__aapl__pxrReserved__::GfRotation *a3)
{
  v3 = this[1];
  v5[0] = *this;
  v5[1] = v3;
  return pxrInternal__aapl__pxrReserved__::GfRotation::operator*=(v5, a2)->f64[0];
}

double Overlay::_operatorStar@<D0>(Overlay *this@<X0>, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v3;
  v4 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v4;
  v5 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v5;
  v6 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v6;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a3, a2);
}

void *Overlay::DefaultPropertyPredicateFunc(Overlay *this)
{
  if ((atomic_load_explicit(byte_2A1758C08, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D0518();
  }

  return &unk_2A1758C10;
}

uint64_t Overlay::VtValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = this;
  return this;
}

uint64_t *Overlay::_operatorSubscript@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X2>, void *a3@<X8>, void *a4@<X1>)
{
  result = sub_29B089C6C(a1, a4);
  *a2 = a1 + 1 != result;
  if (a1 + 1 == result)
  {
    a3[1] = 0;
  }

  else
  {

    return sub_29A186EF4(a3, result + 5);
  }

  return result;
}

BOOL Overlay::__operatorEqualsEquals(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 1;
  }

  v5 = *a2;
  do
  {
    v6 = *(v3 + 28) == *(v5 + 28);
    if (*(v3 + 28) != *(v5 + 28))
    {
      break;
    }

    v7 = v3[1];
    v8 = v3;
    if (v7)
    {
      do
      {
        v3 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v3 = v8[2];
        v9 = *v3 == v8;
        v8 = v3;
      }

      while (!v9);
    }

    v10 = v5[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v5[2];
        v9 = *v11 == v5;
        v5 = v11;
      }

      while (!v9);
    }

    v5 = v11;
  }

  while (v3 != v2);
  return v6;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  v2 = a1[1];
  return v2 == a2[1] && (!v2 || *a1 == *a2);
}

{
  v2 = a1[1];
  return v2 == a2[1] && (!v2 || *a1 == *a2);
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

void sub_29B089BC4(uint64_t result, _BYTE *a2)
{
  if (!*(result + 8))
  {
    v3 = *result;
    if (*(result + 24))
    {
      goto LABEL_13;
    }

    v4 = *(result + 32);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(result + 32);
    if (v4)
    {
      if (*(result + 24))
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2D05E8(result, v3, a2);
  }

  sub_29B2D056C(result);
}

uint64_t *sub_29B089C6C(uint64_t *a1, void *a2)
{
  v2 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 1;
  do
  {
    v7 = sub_29A662CCC(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29A662CCC(a1, a2, v6 + 4))
  {
    return v2;
  }

  return v6;
}

BOOL Overlay::_operatorBool(void *a1)
{
  return *a1 != 0;
}

{
  return *a1 != 0;
}

{
  v1 = sub_29B2ACEC8(a1);
  return (v2 & 1 | v1) != 0;
}

{
  v1 = sub_29B293A0C(a1);
  return (v2 & 1 | v1) != 0;
}

void Overlay::TfRefPtr(Overlay *this@<X0>, void *a2@<X8>)
{
  *a2 = this;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

{
  *a2 = this;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

void *Overlay::TfWeakPtr@<X0>(Overlay *this@<X0>, void *a2@<X8>)
{
  return sub_29A5B05F4(a2, this);
}

{
  return sub_29A329730(a2, this);
}

uint64_t *Overlay::TfWeakPtr@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_29A89A040(a2, a1);
}

{
  return sub_29A321960(a2, a1);
}

uint64_t *sub_29B089E7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B29BA48(v4);
    }
  }

  return a1;
}

void sub_29B089EDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *Overlay::SdfLayer::TraversalFunction@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[3] = 0;
  if (result)
  {
    *a2 = &unk_2A20B46D0;
    result = _Block_copy(result);
    a2[1] = result;
    a2[3] = a2;
  }

  return result;
}

void *sub_29B089F5C(uint64_t a1, void *a2)
{
  *a2 = &unk_2A20B46D0;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_29B089FA8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_29B089FF0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4730))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 Overlay::GetUsdPrimDefaultPredicate@<Q0>(Overlay *this@<X0>, __n128 *a2@<X8>)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(this);
  result = *UsdPrimDefaultPredicate;
  *a2 = *UsdPrimDefaultPredicate;
  a2[1].n128_u64[0] = UsdPrimDefaultPredicate[1].n128_u64[0];
  return result;
}

uint64_t Overlay::allowedTokensForAttribute(uint64_t a1, uint64_t (**a2)(void, uint64_t))
{
  sub_29A580660(&v10, (a1 + 8), (a1 + 16));
  v5 = sub_29A5A9308(&v10, v4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11, v6);
  }

  v7 = sub_29A5A6058(a1);
  pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::GetAttributeDefinition(v5, v7, &v10);
  if (pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::Property::IsAttribute(&v10))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, "allowedTokens");
    result = sub_29B08A1E4(&v10, &v9, a2);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    result = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B08A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B08A1E4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry *this, uint64_t (**a3)(void, uint64_t))
{
  if (pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::IsDisallowedField(this, this))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v10 = *v7;
  v9 = (v7 + 1);
  v8 = v10;

  return sub_29A6AA0F4(v8, v9, this, a3);
}

void *Overlay::_operatorSubscript@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v9 = v8;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v9 == v11 && (!v9 || v7 == result))
  {
    *a3 = 0;
    a4[1] = 0;
  }

  else
  {
    *a3 = 1;

    return sub_29A186EF4(a4, v7 + 7);
  }

  return result;
}

void *Overlay::HgiMetalWrapper::HgiMetalWrapper(void *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void *Overlay::HgiWrapper::HgiWrapper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t Overlay::HgiWrapper::CreatePlatformDefaultHgi@<X0>(std::__shared_weak_count_vtbl **a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(&v5);
  v3 = v5;
  if (v5)
  {
    v4 = operator new(0x20uLL);
    *(v4 + 1) = 0;
    *v4 = &unk_2A20B4750;
    *(v4 + 2) = 0;
    *(v4 + 3) = v3;
    v5 = 0;
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
    result = v5;
    v5 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t Overlay::HgiWrapper::IsSupported(Overlay::HgiWrapper *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = 0;
  result = pxrInternal__aapl__pxrReserved__::Hgi::IsSupported(&v3, a2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *Overlay::HgiWrapper::CreateBlitCmds@<X0>(Overlay::HgiWrapper *this@<X0>, void *a2@<X8>)
{
  (*(**this + 32))(&v5);
  v3 = v5;
  *a2 = v5;
  if (v3)
  {
    result = operator new(0x20uLL);
    *result = &unk_2A20B47B0;
    result[1] = 0;
    result[2] = 0;
    result[3] = v3;
  }

  else
  {
    result = 0;
  }

  a2[1] = result;
  return result;
}

void *Overlay::HgiWrapper::VtValueWrappingHgiRawPtr@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = *this;
  a2[1] = &off_2A2094FD8 + 3;
  return this;
}

void sub_29B08AA94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08AABC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08AAEC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4790))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B08AB30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08AB58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08AB88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B47F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t convertSourceColorSpace(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

__n128 convertStorageSpec@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  a2[1].n128_u64[1] = a1[1].n128_u64[1];
  return result;
}

void Overlay::HioImageWrapper::OpenForReading(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4 == 1;
  }

  pxrInternal__aapl__pxrReserved__::HioImage::OpenForReading(a1, a2, a3, v7, a5, &v11);
  v9 = v11;
  v8 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    v10 = v12;
    *a6 = v9;
    a6[1] = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    *a6 = v11;
    a6[1] = 0;
  }
}

void *Overlay::HioImageWrapper::HioImageWrapper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t Overlay::HioImageWrapper::Read(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 3);
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return (*(*v2 + 16))(v2, &v6);
}

uint64_t Overlay::HioImageWrapper::ReadCropped(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = *a1;
  v7 = *(a6 + 16);
  v8 = *(a6 + 3);
  v10 = *a6;
  v11 = v7;
  v12 = v8;
  return (*(*v6 + 24))(v6, a2, a3, a4, a5, &v10);
}

void Overlay::HioImageWrapper::OpenForWriting(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(a1, &v4);
  v3 = v5;
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }
}

uint64_t Overlay::HioImageWrapper::Write(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 3);
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return (*(*v2 + 32))(v2, &v6);
}

void **Overlay::HioImageWrapper::GetFilenameCopy@<X0>(Overlay::HioImageWrapper *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**this + 40))(*this);
  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_29A008D14(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

uint64_t *Overlay::SdfNameOrderProxyIteratorWrapper::SdfNameOrderProxyIteratorWrapper(uint64_t *a1, uint64_t a2)
{
  sub_29B08B1E0(a2, a1);
  v3 = *a1;
  if (sub_29A3BBBD4(*a1))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  a1[3] = v4;
  a1[4] = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_29B08B084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Overlay::SdfNameOrderProxyIteratorWrapper::advanceAndGetCurrent@<X0>(Overlay::SdfNameOrderProxyIteratorWrapper *this@<X0>, BOOL *a2@<X1>, atomic_uint **a3@<X8>)
{
  v7[3] = *MEMORY[0x29EDCA608];
  if (*(this + 40) == 1)
  {
    ++*(this + 4);
  }

  *(this + 40) = 1;
  sub_29B08B15C(*this, v7);
  result = sub_29B08B2D0(this + 16, v7);
  *a2 = result ^ 1;
  if ((result & 1) == 0)
  {
    return sub_29B08B354(*(this + 3), *(this + 4), a3);
  }

  *a3 = 0;
  return result;
}

void *sub_29B08B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A3BBBD4(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = (result[1] - *result) >> 3;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

void *sub_29B08B1E0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20B4810;
  v5 = *(a1 + 8);
  result[3] = *a1;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B08B278(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08B2BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

BOOL sub_29B08B2D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v7 = v2;
  v8 = v3;
  v5[0] = "sdf/listProxy.h";
  v5[1] = "equal";
  v5[2] = 255;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Iterator<pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_GetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, Owner = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_GetHelper]";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Comparing SdfListProxy iterators from different proxies!");
  return 0;
}

void *sub_29B08B354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A347DC0(a1);
  if (result)
  {
    v7 = *a1;

    return sub_29B08B3C0(v7, a2, a3);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_29B08B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, atomic_uint **a3@<X8>)
{
  result = (*(*a1 + 112))(a1);
  v6 = *(*result + 8 * a2);
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t *Overlay::SdfSubLayerProxyIteratorWrapper::SdfSubLayerProxyIteratorWrapper(uint64_t *a1, uint64_t a2)
{
  sub_29B08B5B8(a2, a1);
  v3 = *a1;
  if (sub_29A346D48(*a1))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  a1[3] = v4;
  a1[4] = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_29B08B484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void Overlay::SdfSubLayerProxyIteratorWrapper::advanceAndGetCurrent(Overlay::SdfSubLayerProxyIteratorWrapper *this@<X0>, BOOL *a2@<X1>, _DWORD *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 40) == 1)
  {
    ++*(this + 4);
  }

  *(this + 40) = 1;
  sub_29A33E0F0(*this, __p);
  v6 = sub_29A347F68(this + 16, __p);
  *a2 = !v6;
  if (v6)
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    sub_29A1DF914(*(this + 3), *(this + 4), __p);
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(a3, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B08B594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B08B5B8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20B4860;
  v5 = *(a1 + 8);
  result[3] = *a1;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B08B650(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08B694(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  sub_29B08BAE4(&v4);
  sub_29A2258F0(&v4, a2);
  sub_29A225948(&v5, (a2 + 4));
  if (&v4 != a2)
  {
    sub_29A324D54(&v6, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_29A324D54(&v7, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  sub_29A2258F0(&v8, (a2 + 56));
  sub_29A225948(&v9, (a2 + 60));
  sub_29A166F2C(&v10, (a2 + 64));
  sub_29A1854E8(&v11, (a2 + 72));
  sub_29A166F2C(&v12, (a2 + 88));
  v13 = *(a2 + 96);
  v14 = *(a2 + 97);
  sub_29B08BC54(&v3, &v4);
}

void sub_29B08B7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29B08BBAC(va);
  v11 = *(v9 + 8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(uint64_t a1, uint64_t *a2, char **a3, char a4)
{
  v4 = a4;
  sub_29B08BD7C(&v5, a2, a3, &v4);
}

{
  v4 = a4;
  sub_29B08BD7C(&v5, a2, a3, &v4);
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, char **a7, char a8, char a9, char a10)
{
  v12 = a8;
  v11 = a9;
  v10 = a10;
  sub_29B08BE50(&v13, a2, a3, a4, a5, a6, a7, &v12, &v11, &v10);
}

{
  v12 = a8;
  v11 = a9;
  v10 = a10;
  sub_29B08BE50(&v13, a2, a3, a4, a5, a6, a7, &v12, &v11, &v10);
}

uint64_t sub_29B08BAE4(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  sub_29A1E21F4(a1, v2);
  v3 = sub_29A1E2240((a1 + 4), v2 + 1);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  sub_29A1E21F4((a1 + 56), v4);
  sub_29A1E2240((a1 + 60), v4 + 1);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 98) = 0;
  return a1;
}

void sub_29B08BB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  sub_29A1DCEA8(v10);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B08BBAC(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(a1 + 72);
  v3 = *(a1 + 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  v5 = (a1 + 32);
  sub_29A1E234C(&v5);
  v5 = (a1 + 8);
  sub_29A1E234C(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29B08BCB0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2);
}

void sub_29B08BD2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B48B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08BDF0(void *a1, uint64_t *a2, char **a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2, a3, *a4);
}

void sub_29B08BF04(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, char **a7, char *a8, char *a9, char *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2, a3, a4, a5, a6, a7, *a8, *a9, *a10);
}

uint64_t Overlay::UsdPrimRangeIteratorWrapper::UsdPrimRangeIteratorWrapper(uint64_t a1, uint64_t a2)
{
  sub_29B08C11C(a2, a1);
  sub_29A58BB1C(*a1, a1 + 16);
  *(a1 + 48) = 0;
  return a1;
}

void sub_29B08BFC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *Overlay::UsdPrimRangeIteratorWrapper::advanceAndGetCurrent@<X0>(Overlay::UsdPrimRangeIteratorWrapper *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 48) == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(this + 16);
  }

  *(this + 48) = 1;
  v5 = *(*this + 8);
  v6 = *this;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v8 = 0;
  v9 = 0;
  if (*(this + 3) == v6 && *(this + 2) == v5 && *(this + 4) == v7 && !*(this + 10) && (*(this + 44) & 1) == 0 && (*(this + 45) & 1) == 0)
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 20));
    *(a2 + 24) = 0;
  }

  else
  {
    sub_29A58BBEC(this + 16, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
  return sub_29A1DE3A4(&v7);
}

uint64_t sub_29B08C11C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  result = sub_29B08C178(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B08C178(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B4900;
  *(a1 + 24) = *a2;
  sub_29A1E21F4((a1 + 40), (a2 + 16));
  sub_29A1E2240((a1 + 44), (a2 + 20));
  v4 = *(a2 + 24);
  *(a1 + 61) = *(a2 + 37);
  *(a1 + 48) = v4;
  return a1;
}

void sub_29B08C20C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *Overlay::UsdPrimTypeInfoWrapper::UsdPrimTypeInfoWrapper(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

Overlay::UsdPrimTypeInfoWrapper *Overlay::UsdPrimTypeInfoWrapper::UsdPrimTypeInfoWrapper(Overlay::UsdPrimTypeInfoWrapper *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v3 = *(a2 + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a2 + 1), a2);
  }

  *this = *(v3 + 24);
  return this;
}

{
  v3 = *(a2 + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a2 + 1), a2);
  }

  *this = *(v3 + 24);
  return this;
}

atomic_uint ***Overlay::UsdPrimTypeInfoWrapper::GetTypeName@<X0>(atomic_uint ***this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = **this;
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

void Overlay::UsdPrimTypeInfoWrapper::GetAppliedAPISchemas(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t Overlay::UsdPrimTypeInfoWrapper::GetSchemaTypeName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(*this + 48);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

Overlay::VtDictionaryConstIteratorWrapper *Overlay::VtDictionaryConstIteratorWrapper::VtDictionaryConstIteratorWrapper(Overlay::VtDictionaryConstIteratorWrapper *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(this, a2);
  *(this + 1) = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v3);
  *(this + 2) = v4;
  *(this + 24) = 0;
  return this;
}

void Overlay::VtDictionaryConstIteratorWrapper::advanceAndGetCurrent(Overlay::VtDictionaryConstIteratorWrapper *this@<X0>, BOOL *a2@<X1>, void *a3@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (*(this + 24) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  *(this + 24) = 1;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  if (*(this + 2) == v7 && ((v8 = *(this + 1), !v7) || v8 == v6))
  {
    *a2 = 1;
    sub_29A186E7C(__p, (v8 + 32));
    v9 = 1;
  }

  else
  {
    *a2 = 0;
    v10[1] = 0;
    __s = "";
    sub_29A186A3C(v12, v10);
    sub_29A008E78(__p, __s);
    sub_29A186A3C(v15, v12);
    v9 = 0;
  }

  sub_29AB15498(a3, __p);
  sub_29A186B14(v15);
  if ((v14 & 0x80000000) == 0)
  {
    if (v9)
    {
      return;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    sub_29A186B14(v12);
    sub_29A186B14(v10);
  }
}