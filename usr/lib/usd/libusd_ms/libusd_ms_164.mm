void pxrInternal__aapl__pxrReserved__::HdStMesh::_GetSharedPrimvarRange(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, _BYTE *a5@<X5>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a6@<X6>, uint64_t *a7@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterPrimvarRange(v20, *a6, a1);
  *a7 = 0;
  a7[1] = 0;
  if (v24 == 1)
  {
    v13 = *a6;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v14)
    {
      v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformImmutableBufferArrayRange(v13, a4, a2, a3, 24, &v19, v14 + 520);
    v15 = v19;
    v19 = 0uLL;
    v16 = a7[1];
    *a7 = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }
    }

    sub_29AE227C0(v20, a7);
    if (a5)
    {
LABEL_8:
      *a5 = v24;
    }
  }

  else
  {
    v18 = v20[1];
    v17 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a7 = v18;
    a7[1] = v17;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  if (v23 == 1)
  {
    std::mutex::unlock(v22);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }
}

void sub_29AE70E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29ADCA62C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v9 = a7;
  v98 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v88, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 4, a4, *a5, v9, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v86);
  if (v86 != v87 || *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16)))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v94, a2[1]);
    v85 = v94;
    if (v94.n128_u64[1])
    {
      atomic_fetch_add_explicit((v94.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      if (v94.n128_u64[1])
      {
        sub_29A014BEC(v94.n128_u64[1]);
      }
    }

    v82 = 0;
    v83 = 0;
    v84 = 0;
    sub_29A039314(&v82, (v87 - v86) >> 5);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    RefineLevelForDesc = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a5);
    NumFaceVaryings = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaceVaryings(*(a1 + 464));
    v18 = *(*(a1 + 464) + 152);
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v71 = v18;
    if (RefineLevelForDesc < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v19)
      {
        v19 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v20 = (v18 ^ *v19) > 7;
    }

    v21 = pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, a2[1], (a1 + 464));
    if (RefineLevelForDesc < 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v21;
    }

    if ((v23 & 1) == 0)
    {
      v21 = !pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*(a1 + 464), v22);
    }

    v72 = v21;
    v70 = a3;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v85.n128_u64[0]);
    v75 = *((*(*Hgi + 200))(Hgi) + 49) & 1;
    v27 = v86;
    v26 = v87;
    if (v86 != v87)
    {
      while (!pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a8, (a1 + 376), v27, v25))
      {
LABEL_70:
        v27 += 32;
        if (v27 == v26)
        {
          goto LABEL_71;
        }
      }

      *(&v90 + 1) = 0;
      v28 = v20 & v27[24];
      if (v28 == 1)
      {
        sub_29A19D6E4(&v94, 0);
        (*(*a2 + 16))(&v92, a2, a1 + 376, v27, &v94);
        sub_29A18606C(&v90, &v92);
        sub_29A186B14(&v92);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      (*(*a2 + 15))(&v94, a2, a1 + 376, v27);
      sub_29A18606C(&v90, &v94);
      sub_29A186B14(&v94);
      if (!*(&v90 + 1))
      {
LABEL_69:
        sub_29A186B14(&v90);
        goto LABEL_70;
      }

      LODWORD(v92) = 1;
      sub_29AE75AF8(v27, &v90, &v92, &v75, &v94);
      v74 = v94;
      v29 = v94.n128_u64[0];
      if ((v28 & 1) == 0)
      {
        if (!(*(*v94.n128_u64[0] + 64))(v94.n128_u64[0], v94))
        {
          sub_29AE70BB0(&v76, v27);
          goto LABEL_67;
        }

        v29 = v74.n128_u64[0];
      }

      if (NumFaceVaryings == (*(*v29 + 64))(v29))
      {
        v30 = 1;
      }

      else
      {
        v30 = v28;
      }

      if ((v30 & 1) == 0)
      {
        v94.n128_u64[0] = "hdSt/mesh.cpp";
        v94.n128_u64[1] = "_PopulateFaceVaryingPrimvars";
        v95 = 1842;
        v96 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)";
        v97 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
        v35 = (*(*v74.n128_u64[0] + 64))(v74.n128_u64[0]);
        v38 = *v27 & 0xFFFFFFFFFFFFFFF8;
        if (v38)
        {
          v39 = (v38 + 16);
          if (*(v38 + 39) < 0)
          {
            v39 = *v39;
          }
        }

        else
        {
          v39 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("# of facevaryings mismatch (%d != %d) for primvar %s", v36, v37, v35, NumFaceVaryings, v39, v70);
        v44 = &v92;
        if (v93 < 0)
        {
          v44 = v92;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, "Invalid Hydra prim '%s': %s", v43, Text, v44);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        goto LABEL_67;
      }

      v31 = (*(*v74.n128_u64[0] + 16))(v74.n128_u64[0]);
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v32)
      {
        v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v32 + 54) ^ *v31) > 7)
      {
        v40 = (*(*v74.n128_u64[0] + 16))(v74.n128_u64[0]);
        v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v41)
        {
          v41 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v41 + 20) ^ *v40) > 7)
        {
LABEL_43:
          if (v20)
          {
            v42 = sub_29AE71A7C(*(a1 + 536), v27);
            if ((v42 & 0x80000000) != 0)
            {
LABEL_67:
              if (v74.n128_u64[1])
              {
                sub_29A014BEC(v74.n128_u64[1]);
              }

              goto LABEL_69;
            }
          }

          else
          {
            v42 = 0;
          }

          v73 = v74;
          if (v74.n128_u64[1])
          {
            atomic_fetch_add_explicit((v74.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          if (v20)
          {
            sub_29AE74CEC(&v73, (a1 + 464), &v85, &v79, 2, v42);
          }

          else
          {
            if (v72)
            {
              pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateFaceVaryingComputation(*(a1 + 464), &v73, (a1 + 376), &v94);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangulateFaceVaryingComputation(*(a1 + 464), &v73, (a1 + 376), &v94);
            }

            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v85.n128_i64[0], &v73);
            v45 = v94;
            v94 = 0uLL;
            v46 = v73.n128_u64[1];
            v73 = v45;
            if (v46)
            {
              sub_29A014BEC(v46);
              if (v94.n128_u64[1])
              {
                sub_29A014BEC(v94.n128_u64[1]);
              }
            }
          }

          v47 = v73;
          v73 = 0uLL;
          v48 = v74.n128_u64[1];
          v74 = v47;
          if (v48)
          {
            sub_29A014BEC(v48);
            if (v73.n128_u64[1])
            {
              sub_29A014BEC(v73.n128_u64[1]);
            }
          }

          sub_29A017F80(&v82, &v74);
          goto LABEL_67;
        }

        v33 = 128;
      }

      else
      {
        *(a1 + 520) = 4;
        v33 = 32;
      }

      *(a1 + 528) |= v33;
      goto LABEL_43;
    }

LABEL_71:
    v49 = v76;
    v50 = v77;
    if (v76 != v77)
    {
      v51 = v87;
      do
      {
        v52 = v86;
        if (v86 != v51)
        {
          while ((*v52 ^ *v49) > 7 || (*(v52 + 2) ^ *(v49 + 16)) > 7 || *(v52 + 2) != *(v49 + 8))
          {
            v52 += 32;
            if (v52 == v51)
            {
              v52 = v51;
              break;
            }
          }
        }

        if (v51 != v52)
        {
          sub_29AE75CE8(&v94, (v52 + 32), v51, v52);
          v51 = v53;
          for (i = v87; i != v53; i -= 32)
          {
            v55 = *(i - 2);
            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v57 = *(i - 4);
            v56 = v57;
            if ((v57 & 7) != 0)
            {
              atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v87 = v53;
        }

        v49 += 32;
      }

      while (v49 != v50);
    }

    v58 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
    if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v82, &v79, v58, *a8) & 1) == 0)
    {
      v59 = *a8;
      v92 = 0uLL;
      v93 = 0;
      if ((v59 & 0x40) != 0)
      {
        v94 = 0uLL;
        v95 = 0;
        pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v58, &v86, &v94, (a1 + 376), &v90);
        sub_29AC1F70C(&v92);
        v92 = v90;
        v93 = v91;
        v91 = 0;
        v90 = 0uLL;
        v74.n128_u64[0] = &v90;
        sub_29ABC6FA0(&v74);
        *&v90 = &v94;
        sub_29A124AB0(&v90);
      }

      v90 = 0uLL;
      v91 = 0;
      sub_29AE22748(&v82, &v90);
      pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&v79, &v90);
      v60 = v85.n128_u64[0];
      v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v61)
      {
        v61 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v60, v61 + 520, v58, &v90, &v92, 8, &v74);
      pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v74, *(a6 + 16), (a1 + 32), v70);
      if (v82 == v83 && v79 == v80 || (v62 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16)), ((*(**v62 + 16))(*v62) & 1) != 0) || (v94.n128_u64[0] = "hdSt/mesh.cpp", v94.n128_u64[1] = "_PopulateFaceVaryingPrimvars", v95 = 1919, v96 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)", v97 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v94, "drawItem->GetFaceVaryingPrimvarRange()->IsValid()", 0) & 1) != 0))
      {
        if (v82 != v83)
        {
          v63 = v85.n128_u64[0];
          v64 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v63, v64, &v82);
        }

        v65 = v79;
        v66 = v80;
        if (v79 != v80)
        {
          v67 = v85.n128_u64[0];
          do
          {
            v68 = *(v65 + 4);
            v69 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v67, v69, v65, v68);
            v65 += 3;
          }

          while (v65 != v66);
        }
      }

      if (v74.n128_u64[1])
      {
        sub_29A014BEC(v74.n128_u64[1]);
      }

      v94.n128_u64[0] = &v90;
      sub_29ABC6FA0(&v94);
      v94.n128_u64[0] = &v92;
      sub_29ABC6FA0(&v94);
    }

    v94.n128_u64[0] = &v76;
    sub_29ABEE9FC(&v94);
    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v94.n128_u64[0] = &v79;
    sub_29A03CE34(&v94);
    v94.n128_u64[0] = &v82;
    sub_29A0176E4(&v94);
    if (v85.n128_u64[1])
    {
      sub_29A014BEC(v85.n128_u64[1]);
    }
  }

  v94.n128_u64[0] = &v86;
  sub_29ABEE9FC(&v94);
  if (v88)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v89, v88);
  }
}

void sub_29AE718B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, std::__shared_weak_count *a18, uint64_t a19, void ****a20, uint64_t a21, uint64_t a22, void ***a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, char a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  a17 = (v33 - 208);
  sub_29ABC6FA0(&a17);
  *(v33 - 208) = v33 - 176;
  sub_29ABC6FA0((v33 - 208));
  *(v33 - 176) = &a20;
  sub_29ABEE9FC((v33 - 176));
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a20 = &a23;
  sub_29A03CE34(&a20);
  v35 = a30;
  a23 = &a26;
  sub_29A0176E4(&a23);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  a26 = &a31;
  sub_29ABEE9FC(&a26);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE71A7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = v3 >> 6;
  if ((v3 >> 6) <= 1)
  {
    v5 = 1;
  }

  while (1)
  {
    v6 = v2 + (result << 6);
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (v7 != v8)
    {
      while ((*v7 ^ *a2) >= 8)
      {
        if (++v7 == v8)
        {
          goto LABEL_9;
        }
      }
    }

    if (v7 != v8)
    {
      return result;
    }

LABEL_9:
    if (++result == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(uint64_t a1, void (***a2)(__n128 *__return_ptr, pxrInternal__aapl__pxrReserved__::HdRenderIndex **, uint64_t, const pxrInternal__aapl__pxrReserved__::SdfPath *), pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned int *a8, char a9)
{
  v10 = a7;
  v108 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v98, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v100, a2[1]);
  v17 = v100;
  if (v100.n128_u64[1])
  {
    atomic_fetch_add_explicit((v100.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    if (v100.n128_u64[1])
    {
      sub_29A014BEC(v100.n128_u64[1]);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 1, a4, *a5, v10, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_29A039314(&v93, (v97 - v96) >> 5);
  v18 = *(a1 + 464);
  if (v18)
  {
    LODWORD(v18) = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(v18);
  }

  v81 = a3;
  v92 = v18;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v17.n128_u64[0]);
  IsPrimvarDirty = (*(*Hgi + 200))(Hgi);
  v88 = *(IsPrimvarDirty + 49) & 1;
  v23 = v96;
  v22 = v97;
  if (v96 != v97)
  {
    while (1)
    {
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a8, (a1 + 376), v23, v21);
      if (IsPrimvarDirty)
      {
        break;
      }

LABEL_33:
      v23 = (v23 + 32);
      if (v23 == v22)
      {
        goto LABEL_34;
      }
    }

    (*a2)[15](&v106, a2, a1 + 376, v23);
    if (!v106.n128_u64[1])
    {
LABEL_32:
      IsPrimvarDirty = sub_29A186B14(&v106);
      goto LABEL_33;
    }

    LODWORD(__p) = 1;
    sub_29AE75AF8(v23, &v106, &__p, &v88, &v100);
    v104 = v100;
    if (!(*(*v100.n128_u64[0] + 64))(v100.n128_u64[0], v100))
    {
      sub_29AE70BB0(&v89, v23);
      goto LABEL_30;
    }

    v24 = (*(*v104.n128_u64[0] + 64))(v104.n128_u64[0]);
    if (v92 != v24)
    {
      v100.n128_u64[0] = "hdSt/mesh.cpp";
      v100.n128_u64[1] = "_PopulateElementPrimvars";
      v101 = 1995;
      v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
      LOBYTE(v103) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      v29 = (*(*v104.n128_u64[0] + 64))(v104.n128_u64[0]);
      v32 = *v23 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("# of faces mismatch (%d != %d) for uniform primvar %s", v30, v31, v29, v92, v33, v81);
      p_p = &__p;
      if ((v87 & 0x8000000000000000) != 0)
      {
        p_p = __p;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Invalid Hydra prim '%s': %s", v36, Text, p_p);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_30;
    }

    v25 = (*(*v104.n128_u64[0] + 16))(v104.n128_u64[0]);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v26)
    {
      v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v26 + 54) ^ *v25) > 7)
    {
      v34 = (*(*v104.n128_u64[0] + 16))(v104.n128_u64[0]);
      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v35)
      {
        v35 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v35 + 20) ^ *v34) > 7)
      {
        goto LABEL_24;
      }

      v27 = 128;
    }

    else
    {
      *(a1 + 520) = 1;
      v27 = 32;
    }

    *(a1 + 528) |= v27;
LABEL_24:
    sub_29A017F80(&v93, &v104);
LABEL_30:
    if (v104.n128_u64[1])
    {
      sub_29A014BEC(v104.n128_u64[1]);
    }

    goto LABEL_32;
  }

LABEL_34:
  v38 = v89;
  v39 = v90;
  v40 = v17.n128_u64[1];
  if (v89 != v90)
  {
    v41 = v97;
    do
    {
      v42 = v96;
      if (v96 != v41)
      {
        while ((*v42 ^ *v38) > 7 || (*(v42 + 2) ^ *(v38 + 16)) > 7 || *(v42 + 2) != *(v38 + 8))
        {
          v42 += 32;
          if (v42 == v41)
          {
            v42 = v41;
            break;
          }
        }
      }

      if (v41 != v42)
      {
        IsPrimvarDirty = sub_29AE75CE8(&v100, (v42 + 32), v41, v42);
        v41 = v43;
        for (i = v97; i != v43; i -= 32)
        {
          v45 = *(i - 2);
          if ((v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v47 = *(i - 4);
          v46 = v47;
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v97 = v43;
      }

      v38 += 32;
    }

    while (v38 != v39);
  }

  __p = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  if ((a9 & 1) != 0 && (*a8 & 0x2000000) != 0)
  {
    *a8 &= ~0x2000000u;
    if (!*(a1 + 464))
    {
      v100.n128_u64[0] = "hdSt/mesh.cpp";
      v100.n128_u64[1] = "_PopulateElementPrimvars";
      v101 = 2024;
      v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
      LOBYTE(v103) = 0;
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v100, "_topology", 0);
    }

    IsEnabledPackedNormals = pxrInternal__aapl__pxrReserved__::HdStMesh::IsEnabledPackedNormals(IsPrimvarDirty);
    v106.n128_u8[0] = IsEnabledPackedNormals;
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (IsEnabledPackedNormals)
    {
      if (!v49)
      {
        v49 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v50 = (v49 + 24);
    }

    else
    {
      if (!v49)
      {
        v49 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v50 = (v49 + 32);
    }

    sub_29A166F2C(&v84, v50);
    if (*(a1 + 516) != -1)
    {
      v51 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 8));
      v52 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 13));
      v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v53)
      {
        v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AE75F1C(v51, v52, &v92, v53 + 59, &v84, (a1 + 516), &v106, &v100);
      v54 = v100;
      v55 = v86;
      if (v86 >= v87)
      {
        v57 = 0xAAAAAAAAAAAAAAABLL * ((v86 - __p) >> 3);
        v58 = v57 + 1;
        if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        if (0x5555555555555556 * ((v87 - __p) >> 3) > v58)
        {
          v58 = 0x5555555555555556 * ((v87 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v87 - __p) >> 3) >= 0x555555555555555)
        {
          v59 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v59 = v58;
        }

        v103 = &__p;
        if (v59)
        {
          v60 = sub_29A012C48(&__p, v59);
        }

        else
        {
          v60 = 0;
        }

        v61 = &v60[24 * v57];
        *v61 = v54;
        if (v54.n128_u64[1])
        {
          atomic_fetch_add_explicit((v54.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v62 = &v60[24 * v59];
        v61[1].n128_u32[0] = 2;
        v56 = &v61[1].n128_i8[8];
        v63 = v61 - (v86 - __p);
        memcpy(v63, __p, v86 - __p);
        v64 = __p;
        v65 = v87;
        __p = v63;
        v86 = v56;
        v87 = v62;
        v101 = v64;
        v102 = v65;
        v100.n128_u64[0] = v64;
        v100.n128_u64[1] = v64;
        sub_29A03D11C(&v100);
        v40 = v17.n128_u64[1];
      }

      else
      {
        *v86 = v100.n128_u64[0];
        *(v55 + 1) = v54.n128_u64[1];
        if (v54.n128_u64[1])
        {
          atomic_fetch_add_explicit((v54.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        *(v55 + 4) = 2;
        v56 = v55 + 24;
      }

      v86 = v56;
      if (v54.n128_u64[1])
      {
        sub_29A014BEC(v54.n128_u64[1]);
      }
    }
  }

  v66 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v93, &__p, v66, *a8) & 1) == 0)
  {
    v67 = *a8;
    v106 = 0uLL;
    v107 = 0;
    if ((v67 & 0x40) != 0)
    {
      v100 = 0uLL;
      v101 = 0;
      if (v84)
      {
        v104.n128_u64[0] = v84;
        if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v100, &v104, &v104.n128_i64[1], 1uLL);
        if ((v104.n128_u8[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v104.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v68)
        {
          v68 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          v40 = v17.n128_u64[1];
        }

        v69 = *(v68 + 3);
        v104.n128_u64[0] = v69;
        if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v70)
        {
          v70 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          v40 = v17.n128_u64[1];
        }

        v71 = *(v70 + 4);
        v104.n128_u64[1] = v71;
        if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v100, &v104, &v105, 2uLL);
        for (j = 1; j != -1; --j)
        {
          v73 = v104.n128_u64[j];
          if ((v73 & 7) != 0)
          {
            atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v66, &v96, &v100, (a1 + 376), &v104);
      sub_29AC1F70C(&v106);
      v106 = v104;
      v107 = v105;
      v105 = 0;
      v104 = 0uLL;
      v82 = &v104;
      sub_29ABC6FA0(&v82);
      v104.n128_u64[0] = &v100;
      sub_29A124AB0(&v104);
    }

    v104 = 0uLL;
    v105 = 0;
    sub_29AE22748(&v93, &v104);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&__p, &v104);
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v74)
    {
      v74 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v17.n128_i64[0], v74 + 520, v66, &v104, &v106, 8, &v82);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v82, *(a6 + 14), (a1 + 32), v81);
    if (v93 == v94 && __p == v86 || (v75 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14)), ((*(**v75 + 16))(*v75) & 1) != 0) || (v100.n128_u64[0] = "hdSt/mesh.cpp", v100.n128_u64[1] = "_PopulateElementPrimvars", v101 = 2092, v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)", LOBYTE(v103) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v100, "drawItem->GetElementPrimvarRange()->IsValid()", 0) & 1) != 0))
    {
      if (v93 != v94)
      {
        v76 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v17.n128_i64[0], v76, &v93);
      }

      v77 = __p;
      v78 = v86;
      while (v77 != v78)
      {
        v79 = *(v77 + 4);
        v80 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v17.n128_i64[0], v80, v77, v79);
        v77 += 24;
      }
    }

    if (v83)
    {
      sub_29A014BEC(v83);
    }

    v100.n128_u64[0] = &v104;
    sub_29ABC6FA0(&v100);
    v100.n128_u64[0] = &v106;
    sub_29ABC6FA0(&v100);
  }

  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100.n128_u64[0] = &__p;
  sub_29A03CE34(&v100);
  v100.n128_u64[0] = &v89;
  sub_29ABEE9FC(&v100);
  v100.n128_u64[0] = &v93;
  sub_29A0176E4(&v100);
  v100.n128_u64[0] = &v96;
  sub_29ABEE9FC(&v100);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v98)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v99, v98);
  }
}

void sub_29AE72660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, char ***__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char **a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  v38 = *(v36 - 160);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v36 - 160) = &a36;
  sub_29A124AB0((v36 - 160));
  *(v36 - 160) = v36 - 128;
  sub_29ABC6FA0((v36 - 160));
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v36 - 128) = &__p;
  sub_29A03CE34((v36 - 128));
  __p = &a24;
  sub_29ABEE9FC(&__p);
  a24 = &a28;
  sub_29A0176E4(&a24);
  a28 = &a31;
  sub_29ABEE9FC(&a28);
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29A0E9CEC(&a34);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_MaterialHasPtex(pxrInternal__aapl__pxrReserved__::HdStMesh *this, const pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(a2, (v5 + 152), a3);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_MaterialHasLimitSurface(pxrInternal__aapl__pxrReserved__::HdStMesh *this, const pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(a2, (v5 + 152), a3);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMesh::_UseSmoothNormals(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 528) & 0x14) != 0)
  {
    v2 = 1;
  }

  else
  {
    v4 = *(*a2 + 8);
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v4 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v5)
    {
      v5 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v4 ^ *(v5 + 1)) >= 8)
    {
      v6 = *(*a2 + 8);
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v6 &= 0xFFFFFFFFFFFFFFF8;
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v7)
      {
        v7 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v2 = (v6 ^ *(v7 + 6)) < 8;
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v2 = 1;
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return !v2;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItem(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdStRenderParam *a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, pxrInternal__aapl__pxrReserved__::HdMesh *a6, uint64_t a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned int a11)
{
  sub_29A0ECEEC(&v67, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const TfToken &, const HdReprSharedPtr &, const HdMeshReprDesc &, BOOL, BOOL, int)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v59, a2[1]);
  v65 = v59;
  v66 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v60)
    {
      sub_29A014BEC(v60);
    }
  }

  v20 = a11;
  v21 = *a5;
  if ((v21 & 0x800000) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v21, (a1 + 376), v19))
  {
    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(a1, a2);
  }

  v22 = *a5;
  if ((*a5 & 0x1C00C950) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateTopology(a1, a2, a3, a4, a5, a6, a7, a8, a11);
    v22 = *a5;
  }

  if ((v22 & 0x1000) != 0)
  {
    if ((*(*a2 + 11))(a2, a1 + 376))
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 528) = *(a1 + 528) & 0xFFFD | v23;
    v22 = *a5;
  }

  if ((v22 & 0x2000) != 0)
  {
    *(a1 + 524) = (*(*a2 + 12))(a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdStMesh::_UseSmoothNormals(a1, a1 + 464))
  {
    v58 = a9;
  }

  else
  {
    v58 = 0;
    *a5 &= ~0x1000000u;
  }

  if (sub_29AE73244((a1 + 464), v24))
  {
    v57 = 0;
    *a5 &= ~0x2000000u;
  }

  else
  {
    v57 = a10;
  }

  v56 = *(a1 + 528);
  v27 = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a8) < 1 && *a8 != 7;
  v55 = v27;
  if (v58 && !*(a1 + 480))
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateAdjacency(a1, &v65);
  }

  v28 = *a5;
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v29)
  {
    v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(v28, (a1 + 376), (v29 + 160), v25))
  {
    *(a1 + 528) &= ~0x80u;
  }

  v31 = *a5;
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v32)
  {
    v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(v31, (a1 + 376), (v32 + 432), v30))
  {
    *(a1 + 528) &= ~0x20u;
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateInstancer(a1, a2, a5);
  pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(a2[1], a3, a1, a4, (a1 + 32), *a5);
  v35 = *(a1 + 528);
  if ((v35 & 0x80) != 0)
  {
    goto LABEL_43;
  }

  v36 = a2[1];
  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v37)
  {
    v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  IsInstancePrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsInstancePrimvarExistentAndValid(v36, a1, (v37 + 160), v34);
  v35 = *(a1 + 528);
  if (IsInstancePrimvarExistentAndValid)
  {
LABEL_43:
    v39 = 128;
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 528) = v35 & 0xFF7F | v39;
  if (pxrInternal__aapl__pxrReserved__::HdStShouldPopulateConstantPrimvars(a5, (a1 + 376), v33))
  {
    pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a4, a2, 0, a7, *a8, a11, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v59);
    LOBYTE(v64) = *(a1 + 528) & 1;
    pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(a1, a1 + 32, a2, a3, a4, a5, &v59, &v64);
    v41 = a3;
    v42 = a8;
    v43 = *(a1 + 528) & 0xFFFE | v64;
    *(a1 + 528) = v43;
    v44 = v59;
    v45 = v60;
    if (v59 != v60)
    {
      do
      {
        v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v46)
        {
          v46 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v46 + 54) ^ *v44) <= 7)
        {
          *(a1 + 520) = 0;
          *(a1 + 528) |= 0x20u;
        }

        v44 = (v44 + 32);
      }

      while (v44 != v45);
      v43 = *(a1 + 528);
    }

    a8 = v42;
    a3 = v41;
    v20 = a11;
    if ((v43 & 0x80) != 0)
    {
      goto LABEL_57;
    }

    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v47)
    {
      v47 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    IsPrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsPrimvarExistentAndValid(a1, a2, &v59, v47 + 20);
    v43 = *(a1 + 528);
    if (IsPrimvarExistentAndValid)
    {
LABEL_57:
      v49 = 128;
    }

    else
    {
      v49 = 0;
    }

    *(a1 + 528) = v43 & 0xFF7F | v49;
    v64 = &v59;
    sub_29ABEE9FC(&v64);
  }

  v50 = *a5;
  if ((v50 & 0x800000) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v50, (a1 + 376), v40))
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(a1, a2, a3, a7, a8, a4, v20, a5, v58);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a5, (a1 + 376), v51))
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(a1, a2, a3, a7, a8, a4, v20, a5);
  }

  v53 = v55 & (v57 | ((v56 & 4) >> 2));
  v54 = *a5;
  if ((v53 & ((v54 & 0x2000000) >> 25) & 1) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v54, (a1 + 376), v52))
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(a1, a2, a3, a7, a8, a4, v20, a5, v53);
  }

  *a5 &= 0xFF800000;
  if (!*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 12)))
  {
    v59 = "hdSt/mesh.cpp";
    v60 = "_UpdateDrawItem";
    v61 = 2446;
    v62 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const TfToken &, const HdReprSharedPtr &, const HdMeshReprDesc &, BOOL, BOOL, int)";
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v59, "drawItem->GetConstantPrimvarRange()", 0);
  }

  if (v66)
  {
    sub_29A014BEC(v66);
  }

  if (v67)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v68, v67);
  }
}

void sub_29AE731D0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A0E9CEC(v1 - 104);
  _Unwind_Resume(a1);
}

BOOL sub_29AE73244(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*a1, a2))
  {
    return 1;
  }

  v4 = *(*a1 + 1);
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v5)
  {
    v5 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  result = (v4 ^ *(v5 + 1)) < 8;
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemGeometricShader(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::SdfPath *a6)
{
  v9 = *(a2 + 8);
  pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 16));
  RefineLevelForDesc = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a5);
  v12 = RefineLevelForDesc;
  if (*a5 != 7)
  {
    if (RefineLevelForDesc < 1)
    {
      pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, v9, (a1 + 464));
    }

    else if (!pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(*(a1 + 464)) && !pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(a1 + 464)))
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*(a1 + 464), v11);
    }
  }

  v13 = *(*(a1 + 464) + 152);
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v12 >= 1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v14)
    {
      v14 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v15 = v13 ^ *v14;
    v16 = *(a1 + 464);
    if (v15 < 8)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(v16, v11);
    }

    else if (!pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(v16) && !pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(a1 + 464)))
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*(a1 + 464), v26);
    }
  }

  if ((*(a1 + 528) & 0x10) == 0)
  {
    v17 = *(*(a1 + 464) + 8);
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v18)
    {
      v18 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v17 ^ *(v18 + 1)) >= 8)
    {
      v19 = *(*(a1 + 464) + 8);
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens))
      {
        sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v21 = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a5);
  v23 = 0;
  if (v21 <= 0 && *a5 != 7)
  {
    v23 = !sub_29AE73244((a1 + 464), v22);
  }

  v24 = *(a1 + 528);
  if ((v24 & 0x20) != 0)
  {
    if (!(*(a5 + 16) & 1 | ((v24 & 4) != 0)))
    {
      goto LABEL_42;
    }
  }

  else if (!(*(a5 + 16) & 1 | ((v24 & 4) != 0)))
  {
    goto LABEL_42;
  }

  if (!v23)
  {
    sub_29AE73244((a1 + 464), v22);
  }

LABEL_42:
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v25)
  {
    v25 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v9, (v25 + 152), a6);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::_PropagateDirtyBits(pxrInternal__aapl__pxrReserved__::HdStMesh *this, int a2)
{
  LODWORD(v2) = a2 | 0x4010;
  if ((a2 & 0x100) == 0)
  {
    LODWORD(v2) = a2;
  }

  if ((a2 & 0x4000) != 0)
  {
    LODWORD(v2) = a2 | 0x970;
  }

  if ((v2 & 0x80) != 0)
  {
    v2 = v2 | 0x960;
  }

  else
  {
    v2 = v2;
  }

  if ((v2 & 0x130) != 0)
  {
    v2 = *(this + 128) & 0x3000000 | v2;
  }

  if ((v2 & 0x100) != 0)
  {
    return *(this + 128) & 0x1C000000 | v2;
  }

  return v2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStMesh::_InitRepr(uint64_t *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, unsigned int *a3)
{
  v4 = this;
  v5 = this[55];
  v6 = this[56];
  v7 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v5 != v6)
  {
    while ((v7 ^ *v5) >= 8)
    {
      v5 += 3;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v5 == this[56])
  {
    sub_29AE3C6BC(v36);
    v8 = v4[56];
    if (v8 >= v4[57])
    {
      v10 = sub_29AD089E4(v4 + 55, a2, v36);
      v11 = v36[1];
      v4[56] = v10;
      if (v11)
      {
        sub_29A014BEC(v11);
        v10 = v4[56];
      }
    }

    else
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v8 + 8) = *v36;
      v10 = v8 + 24;
      v4[56] = v8 + 24;
    }

    *a3 |= 0x800000u;
    this = pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(v36, a2);
    v12 = v4[58];
    if (v12)
    {
      v12 = (*(v12 + 392) - *(v12 + 384)) >> 6;
    }

    v34 = v12;
    v13 = 2 * v12 + 10;
    v14 = v36;
    for (i = 1; ; i = 0)
    {
      v16 = i;
      if (!*v14)
      {
        goto LABEL_51;
      }

      sub_29A0ECEEC(&v38, "hdSt", "new HdStDrawItem");
      v17 = malloc(0x50uLL);
      if (v38)
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v39, v38);
      }

      pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v17, (v4 + 4));
      v35 = v17;
      v18 = *(v10 - 16);
      sub_29AE23DC4(v18, (*v18 + 8 * *(v18 + 24)), &v35);
      ++*(v18 + 24);
      v19 = *v14;
      if ((*v14 - 4) < 3)
      {
        *(v17 + 4) = 8;
        v20 = *(v4 + 128);
        if ((v20 & 0x8000000) != 0)
        {
          v23 = 1;
          goto LABEL_35;
        }

        v21 = v20 | 0x8000000;
        v22 = 0x8000000;
        v23 = 1;
        goto LABEL_33;
      }

      if (v19 == 7)
      {
        *(v17 + 4) = 9;
        v24 = *(v4 + 128);
        if ((v24 & 0x10000000) == 0)
        {
          v23 = 0;
          v21 = v24 | 0x10000000;
          v22 = 0x10000000;
LABEL_33:
          *(v4 + 128) = v21;
          *a3 |= v22;
          goto LABEL_35;
        }
      }

      else
      {
        v25 = *(v4 + 128);
        if ((v25 & 0x4000000) == 0)
        {
          v23 = 0;
          v21 = v25 | 0x4000000;
          v22 = 0x4000000;
          goto LABEL_33;
        }
      }

      v23 = 0;
LABEL_35:
      *(v17 + 5) = v13;
      this = v35;
      v35 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
        v19 = *v14;
      }

      if (v19 != 7 && v34)
      {
        v26 = v23 | 0xA;
        v27 = v34;
        do
        {
          sub_29A0ECEEC(&v38, "hdSt", "new HdStDrawItem");
          v28 = malloc(0x50uLL);
          if (v38)
          {
            pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v39, v38);
          }

          pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v28, (v4 + 4));
          v35 = v28;
          sub_29AE748A0(*(v10 - 16), &v35);
          *(v28 + 4) = v26;
          *(v28 + 5) = v13;
          this = v35;
          v35 = 0;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          v26 += 2;
          --v27;
        }

        while (v27);
      }

      v29 = *(v4 + 128);
      if (*(v14 + 16) == 1)
      {
        if ((v29 & 0x2000000) == 0)
        {
          v30 = 0x2000000;
LABEL_50:
          *(v4 + 128) = v29 | v30;
          *a3 |= v30;
        }
      }

      else if ((v29 & 0x1000000) == 0)
      {
        v30 = 0x1000000;
        goto LABEL_50;
      }

LABEL_51:
      v14 = &v37;
      if ((v16 & 1) == 0)
      {
        for (j = 5; j != -3; j -= 4)
        {
          v32 = v36[j];
          if ((v32 & 7) != 0)
          {
            atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        return this;
      }
    }
  }

  return this;
}

void sub_29AE740DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE74184(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AE74248(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29AE74200(uint64_t a1)
{
  v1 = (a1 + 40);
  sub_29A124AB0(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29AE74248(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[64 * v7];
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(v9 + 4) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  *(v9 + 40) = *(a2 + 40);
  *(v9 + 7) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *&v19 = v9 + 64;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29AE74384(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AE74560(&v17);
  return v16;
}

void sub_29AE74370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AE74560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE74384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29AE7444C(a4, a2);
  }

  v6 = 1;
  return sub_29AE744D4(v5);
}

void sub_29AE7444C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(a1 + 24))
    {
      v4 = *(a1 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t sub_29AE744D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AE7450C(a1);
  }

  return a1;
}

uint64_t *sub_29AE7450C(uint64_t *result)
{
  v1 = result[2];
  if (*v1 != *result[1])
  {
    sub_29ACB59F4(*result, *v1 - 64);
  }

  return result;
}

void **sub_29AE74560(void **a1)
{
  sub_29AE74594(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AE74594(void *result)
{
  v1 = result[2];
  if (v1 != result[1])
  {
    v2 = result;
    v3 = result[4];
    v2[2] = v1 - 64;
    sub_29ACB59F4(v3, v1 - 64);
  }

  return result;
}

void sub_29AE745DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(a1 + 24))
    {
      v4 = *(a1 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t sub_29AE74660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_29AE74798(v7, v4);
        v4 += 64;
        v7 += 64;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      sub_29ACB59F4(a1, v6 - 64);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_29AE746F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((a3(v3) & 1) == 0)
    {
      v3 += 64;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 64; i != a2; i += 64)
      {
        if ((a3(i) & 1) == 0)
        {
          sub_29AE74798(v3, i);
          v3 += 64;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_29AE74798(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  sub_29A2F7B20((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

uint64_t *sub_29AE7480C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    sub_29AE24110(a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v9 = *--v7;
        v8 = v9;
        *v7 = 0;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

const void **sub_29AE748A0(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29AE2419C(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_29AE749A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a3, &v8, (a1 + 8), a1 + 16, (a1 + 56), a1 + 96, a2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AE74A38(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
    v4 = *(a1 + 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  sub_29AD011F0((a1 + 136), (a2 + 136));
  v5 = atomic_load((a2 + 368));
  atomic_store(v5 & 1, (a1 + 368));
  atomic_store(0, (a2 + 368));
  return a1;
}

__int128 *sub_29AE74B4C(__int128 **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29A844038(a1);
    if (a4 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10E7C8(a1, v10);
    result = sub_29ACD7744(a1, v6, a3, a1[1]);
LABEL_15:
    a1[1] = result;
    return result;
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29A27CF04(v8, v15);
        v15 = (v15 + 40);
        v8 = (v8 + 40);
        v14 -= 40;
      }

      while (v14);
      v12 = a1[1];
    }

    result = sub_29ACD7744(a1, v6 + v13, a3, v12);
    goto LABEL_15;
  }

  while (v6 != a3)
  {
    sub_29A27CF04(v8, v6);
    v6 = (v6 + 40);
    v8 = (v8 + 40);
  }

  return sub_29A844078(a1, v8);
}

void sub_29AE74CEC(uint64_t a1, void **a2, uint64_t *a3, char **a4, uint64_t a5, uint64_t a6)
{
  if (a4 || (sub_29B2CA5C4(v33) & 1) != 0)
  {
    v12 = *a2;
    v13 = (*(**a1 + 16))();
    (*(**a1 + 56))();
    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdRefineComputationGPU(v12, v13, *a3, a5, a6, &v31);
    v14 = v31;
    if (v31)
    {
      v15 = a4[1];
      v16 = a4[2];
      if (v15 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a4) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v34[4] = a4;
        if (v22)
        {
          v23 = sub_29A012C48(a4, v22);
          v14 = v31;
        }

        else
        {
          v23 = 0;
        }

        v24 = v32;
        v25 = &v23[24 * v19];
        *v25 = v14;
        *(v25 + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = &v23[24 * v22];
        *(v25 + 4) = 1;
        v18 = v25 + 24;
        v27 = a4[1] - *a4;
        v28 = &v25[-v27];
        memcpy(&v25[-v27], *a4, v27);
        v29 = *a4;
        *a4 = v28;
        a4[1] = v18;
        v30 = a4[2];
        a4[2] = v26;
        v34[2] = v29;
        v34[3] = v30;
        v34[0] = v29;
        v34[1] = v29;
        sub_29A03D11C(v34);
      }

      else
      {
        v17 = v32;
        *v15 = v31;
        *(v15 + 1) = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v15 + 4) = 1;
        v18 = v15 + 24;
      }

      a4[1] = v18;
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }
}

void sub_29AE74EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE74F10(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    sub_29ACB596C(&v3);
    operator delete(v2);
  }
}

void *sub_29AE74F54(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1BF94C(result, a4);
    result = sub_29AE74FDC(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29AE74FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ACB596C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE74FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29AE7444C(a4, a2);
  }

  v7 = 1;
  sub_29AE744D4(v6);
  return a4;
}

void **sub_29AE75080(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (result[2] - *result) >> 6)
  {
    sub_29AE751EC(result);
    if (a4 >> 58)
    {
      sub_29A00C9A4();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 5;
    if (v9 >> 5 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A1BF94C(v7, v11);
    result = sub_29AE74FDC(v7, v6, a3, v7[1]);
LABEL_15:
    v7[1] = result;
    return result;
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (a4 > (v12 - v8) >> 6)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29AE75258(v8, v15);
        v15 += 64;
        v8 += 64;
        v14 -= 64;
      }

      while (v14);
      v12 = v7[1];
    }

    result = sub_29AE74FDC(v7, v6 + v13, a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AE75258(v8, v6);
      v6 += 64;
      v8 += 64;
    }

    while (v6 != a3);
    v12 = v7[1];
  }

  if (v12 != v8)
  {
    sub_29ACB59F4(v7, v12 - 64);
  }

  v7[1] = v8;
  return result;
}

void sub_29AE751EC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29ACB59F4(a1, v3 - 64);
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AE75258(uint64_t a1, uint64_t a2)
{
  sub_29A27CF04(a1, a2);
  if (a1 != a2)
  {
    sub_29A34AC54((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  }

  return a1;
}

uint64_t sub_29AE752A0(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE75330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AE75348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(a2, a3);
  if (result)
  {
    v7 = *(a2 + 40);
    v6 = *(a2 + 48);
    v8 = *(a3 + 40);
    if (v6 - v7 == *(a3 + 48) - v8)
    {
      if (v7 == v6)
      {
        return 1;
      }

      else
      {
        v9 = v7 + 8;
        do
        {
          v10 = *v8++;
          v11 = v10 ^ *(v9 - 8);
          result = v11 < 8;
          v12 = v11 > 7 || v9 == v6;
          v9 += 8;
        }

        while (!v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_29AE753D4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x68uLL);
  result = sub_29AE75420(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE75420(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20983C0;
  pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder::HdSt_VertexAdjacencyBuilder((a1 + 3));
  return a1;
}

void sub_29AE7549C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20983C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE754EC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  result = sub_29AE75550(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE75550(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098410;
  pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource::HdSt_VertexAdjacencyBufferSource((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AE755D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE7563C(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE756CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AE756E4(uint64_t *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 5;
      if (v19 >= a5)
      {
        sub_29AE75898(a1, a2, a1[1], &a2[32 * a5]);
        v20 = &v7[4 * a5];
      }

      else
      {
        a1[1] = sub_29ACCD254(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29AE75898(a1, v5, v10, &v5[32 * a5]);
        v20 = v7 + v18;
      }

      sub_29AE75A78(v25, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_29A00C9A4();
    }

    v13 = &a2[-v11];
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v25[4] = a1;
    if (v15)
    {
      v17 = sub_29A10CB10(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[32 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v25[3] = &v17[32 * v15];
    v22 = 32 * a5;
    v23 = v21 + 32 * a5;
    do
    {
      sub_29ACCD2E8(a1, v21, v7);
      v21 += 32;
      v7 += 4;
      v22 -= 32;
    }

    while (v22);
    v25[2] = v23;
    v5 = sub_29AE75920(a1, v25, v5);
    sub_29ACCD5D4(v25);
  }

  return v5;
}

uint64_t sub_29AE75898(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      *(v8 + 24) = *(v9 + 24);
      v9 += 32;
      v8 += 32;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29AE759DC(&v11, a2, v7, v6);
}

uint64_t sub_29AE75920(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  sub_29ACCD500(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29ACCD500(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29AE759DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3;
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = (a4 - 32);
      if (v5 == a4)
      {
        *(a4 - 24) = *(v5 - 24);
      }

      else
      {
        if ((*v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 32) = *(v5 - 32);
        *(v5 - 32) = 0;
        *(a4 - 24) = *(v5 - 24);
        v7 = *(a4 - 16);
        if ((v7 & 7) != 0)
        {
          atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 16) = *(v5 - 16);
        *(v5 - 16) = 0;
      }

      *(a4 - 8) = *(v5 - 8);
      v5 -= 32;
      a4 -= 32;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_29AE75A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A166F2C(a4, v5);
    *(a4 + 8) = *(v5 + 8);
    sub_29A166F2C((a4 + 16), (v5 + 16));
    *(a4 + 24) = *(v5 + 24);
    a4 += 32;
    v5 += 32;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29AE75AF8@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AE75B74(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE75B74(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

uint64_t sub_29AE75BD8(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29ACCD2E8(a1, v16, a2);
  *&v17 = v16 + 32;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29ACCD500(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCD5D4(&v15);
  return v14;
}

void sub_29AE75CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCD5D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE75CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  result = a3;
  v5 = 0;
  do
  {
    v6 = (a4 + v5);
    if (a2 == a4)
    {
      *(v6 + 2) = *(a2 + v5 + 8);
    }

    else
    {
      v7 = *v6;
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = a2 + v5;
      v9 = a4 + v5;
      *v9 = *(a2 + v5);
      *(a2 + v5) = 0;
      *(v9 + 8) = *(a2 + v5 + 8);
      v10 = *(a4 + v5 + 16);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v9 + 16) = *(v8 + 16);
      *(v8 + 16) = 0;
    }

    *(a4 + v5 + 24) = *(a2 + v5 + 24);
    v5 += 32;
  }

  while (a2 + v5 != a3);
  return result;
}

void *sub_29AE75D9C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, unsigned int *a4@<X4>, unsigned __int8 *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x40uLL);
  result = sub_29AE75E28(v12, a1, a2, a3, a4, a5);
  *a6 = v12 + 3;
  a6[1] = v12;
  return result;
}

void *sub_29AE75E28(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned __int8 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098460;
  pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::HdSt_SmoothNormalsComputationGPU((a1 + 3), *a2, a3, a4, *a5, *a6);
  return a1;
}

void sub_29AE75EB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE75F1C@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, int *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, unsigned int *a6@<X6>, unsigned __int8 *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x60uLL);
  result = sub_29AE75FC0(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE75FC0(void *a1, uint64_t *a2, void *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, unsigned __int8 *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20984B0;
  pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::HdSt_FlatNormalsComputationGPU((a1 + 3), a2, a3, *a4, a5, a6, *a7, *a8);
  return a1;
}

void sub_29AE76048(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20984B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStPackageComputeShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F298))
  {
    sub_29AE7617C("compute.glslfx", &qword_2A174F290);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F290, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F298);
  }

  v2 = qword_2A174F290;
  *a1 = qword_2A174F290;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void sub_29AE7617C(char *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F360, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A174F360);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v8);
      sub_29A008E78(&__p, "hdSt");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(&__p.__r_.__value_.__l.__data_, &unk_2A174F350);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(sub_29B2B8168, &unk_2A174F350, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174F360);
    }
  }

  sub_29A008E78(v14, "shaders");
  sub_29A008E78(v12, a1);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v14, v12, &__p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(&unk_2A174F350, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v6 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v6 = v16[1];
  }

  if (!v6)
  {
    __p.__r_.__value_.__r.__words[0] = "hdSt/package.cpp";
    __p.__r_.__value_.__l.__size_ = "_GetShaderPath";
    __p.__r_.__value_.__r.__words[2] = 24;
    v10 = "TfToken pxrInternal__aapl__pxrReserved__::_GetShaderPath(const char *)";
    v11 = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader: %s\n", v4, v5, a1);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!path.empty()", v7);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2, v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_29AE76338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F360);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStPackageDomeLightShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2A8))
  {
    sub_29AE7617C("domeLight.glslfx", &qword_2A174F2A0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2A8);
  }

  v2 = qword_2A174F2A0;
  *a1 = qword_2A174F2A0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageFallbackDomeLightTexture(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2B8))
  {
    sub_29AE7654C();
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2B8);
  }

  v2 = qword_2A174F2B0;
  *a1 = qword_2A174F2B0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void sub_29AE7654C()
{
  if ((atomic_load_explicit(&qword_2A174F378, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174F378);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v4);
      sub_29A008E78(&__p, "hdSt");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(&__p.__r_.__value_.__l.__data_, &unk_2A174F368);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(sub_29B2B8168, &unk_2A174F368, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174F378);
    }
  }

  sub_29A008E78(v10, "textures");
  sub_29A008E78(v8, "fallbackBlackDomeLight.png");
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v10, v8, &__p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(&unk_2A174F368, v12);
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
    __p.__r_.__value_.__r.__words[0] = "hdSt/package.cpp";
    __p.__r_.__value_.__l.__size_ = "_GetTexturePath";
    __p.__r_.__value_.__r.__words[2] = 35;
    v6 = "TfToken pxrInternal__aapl__pxrReserved__::_GetTexturePath(const char *)";
    v7 = 0;
    v3 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find texture: %s\n", v0, v1, "fallbackBlackDomeLight.png");
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!path.empty()", v3);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A174F2B0, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_29AE76704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F378);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStPackagePtexTextureShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2C8))
  {
    sub_29AE7617C("ptexTexture.glslfx", &qword_2A174F2C0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2C0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2C8);
  }

  v2 = qword_2A174F2C0;
  *a1 = qword_2A174F2C0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageRenderPassShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2D8))
  {
    sub_29AE7617C("renderPassShader.glslfx", &qword_2A174F2D0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2D8);
  }

  v2 = qword_2A174F2D0;
  *a1 = qword_2A174F2D0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageFallbackLightingShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2E8))
  {
    sub_29AE7617C("fallbackLightingShader.glslfx", &qword_2A174F2E0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2E8);
  }

  v2 = qword_2A174F2E0;
  *a1 = qword_2A174F2E0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageFallbackMaterialNetworkShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F2F8))
  {
    sub_29AE7617C("fallbackMaterialNetwork.glslfx", &qword_2A174F2F0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F2F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F2F8);
  }

  v2 = qword_2A174F2F0;
  *a1 = qword_2A174F2F0;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageInvalidMaterialNetworkShader(atomic_uint **__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F308))
  {
    sub_29AE7617C("invalidMaterialNetwork.glslfx", &qword_2A174F300);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F300, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F308);
  }

  v2 = qword_2A174F300;
  *a1 = qword_2A174F300;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageFallbackVolumeShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F318))
  {
    sub_29AE7617C("fallbackVolume.glslfx", &qword_2A174F310);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F310, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F318);
  }

  v2 = qword_2A174F310;
  *a1 = qword_2A174F310;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageImageShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F328))
  {
    sub_29AE7617C("imageShader.glslfx", &qword_2A174F320);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F320, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F328);
  }

  v2 = qword_2A174F320;
  *a1 = qword_2A174F320;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageSimpleLightingShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F338))
  {
    sub_29AE7617C("simpleLightingShader.glslfx", &qword_2A174F330);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F330, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F338);
  }

  v2 = qword_2A174F330;
  *a1 = qword_2A174F330;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPackageWidgetShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174F348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F348))
  {
    sub_29AE7617C("widgetShader.glslfx", &qword_2A174F340);
    __cxa_atexit(sub_29A424A8C, &qword_2A174F340, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F348);
  }

  v2 = qword_2A174F340;
  *a1 = qword_2A174F340;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v3;
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdStPoints::HdStPoints(pxrInternal__aapl__pxrReserved__::HdStPoints *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdPoints::HdPoints(this, a2);
  *result = &unk_2A2098500;
  *(result + 58) = 0;
  *(result + 59) = 0;
  *(result + 480) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdPoints::HdPoints(this, a2);
  *result = &unk_2A2098500;
  *(result + 58) = 0;
  *(result + 59) = 0;
  *(result + 480) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::~HdStPoints(pxrInternal__aapl__pxrReserved__::HdStPoints *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdPoints::~HdPoints(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStPoints::~HdStPoints(this);

  free(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::Sync(pxrInternal__aapl__pxrReserved__::HdStPoints *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(this, a2, a4);
  v11 = *a4;
  v12 = *a4 & 0x80;
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(a2, a3, this, v10);
    v11 = *a4;
  }

  v13 = v11 & 0x800000 | v12;
  v14 = *(this + 480);
  pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateRepr(this, a2, a3, a5, a4);
  if (v13 || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 4) && v14 != *(this + 480))
  {
    pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateMaterialTagsForAllReprs(this, a2, a3);
  }

  *a4 &= 0xFF800000;
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateRepr(pxrInternal__aapl__pxrReserved__::HdStDrawItem ****this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  sub_29A0ECEEC(&v19, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateRepr(HdSceneDelegate *, HdRenderParam *, const TfToken &, HdDirtyBits *)");
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v11)
  {
    v11 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  ReprDesc = pxrInternal__aapl__pxrReserved__::HdPoints::_GetReprDesc((v11 + 24), v10);
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 47));
    v16 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v17 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }
    }

    else
    {
      v17 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStPoints::_UpdateRepr for %s : Repr = %s\n", v14, v15, Text, v17);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(*a5);
  }

  if (ReprDesc)
  {
    v18 = (*a5 & 0xFFFFFFFD) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateDrawItem(this, a2, a3, **this[58], a5);
  }

  *a5 &= ~0x800000u;
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }
}

void sub_29AE7719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::_UpdateMaterialTagsForAllReprs(pxrInternal__aapl__pxrReserved__::HdStPoints *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating material tags for draw items of all reprs.\n", v8, v9, Text);
  }

  v10 = *(this + 55);
  if (v10 != *(this + 56))
  {
    ReprDesc = pxrInternal__aapl__pxrReserved__::HdPoints::_GetReprDesc(*(this + 55), v6);
    v12 = *(v10 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (ReprDesc)
    {
      pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, ***(this + 58), (this + 16), *(this + 480), 0);
    }

    if (v12)
    {

      sub_29A014BEC(v12);
    }
  }
}

void sub_29AE77298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::Finalize(pxrInternal__aapl__pxrReserved__::HdStPoints *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, a2);
  v5 = *(this + 55);
  if (v5 != *(this + 56))
  {
    ReprDesc = pxrInternal__aapl__pxrReserved__::HdPoints::_GetReprDesc(*(this + 55), v4);
    v7 = *(v5 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (ReprDesc)
    {
      pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (***(this + 58) + 32));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, (this + 432));
}

void sub_29AE7734C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE77670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey::~HdSt_PointsShaderKey(va);
  sub_29A0E9CEC(v16 - 80);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::_PopulateVertexPrimvars(pxrInternal__aapl__pxrReserved__::HdStPoints *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v52 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v46, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStPoints::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v48, a2[1]);
  v10 = v48;
  if (*(&v48 + 1))
  {
    atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
    if (*(&v48 + 1))
    {
      sub_29A014BEC(*(&v48 + 1));
    }
  }

  v44 = 0uLL;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 3, &v42, 0, 0, 0, &v48);
  sub_29AE78200(&v44);
  v44 = v48;
  v45 = v49;
  v49 = 0;
  v48 = 0uLL;
  v39 = &v48;
  sub_29ABEE9FC(&v39);
  if (v43)
  {
    sub_29A014BEC(v43);
  }

  v42 = 0;
  v43 = 0;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 2, &v42, 0, 0, 0, &v48);
  if (v43)
  {
    sub_29A014BEC(v43);
  }

  sub_29AE756E4(&v44, *(&v44 + 1), v48, *(&v48 + 1), (*(&v48 + 1) - v48) >> 5);
  v42 = &v48;
  sub_29ABEE9FC(&v42);
  (*(*a2 + 46))(&v42, a2, this + 376, 3);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v38, 0, sizeof(v38));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_29A039314(&v39, (*(&v44 + 1) - v44) >> 5);
  pxrInternal__aapl__pxrReserved__::HdSt_GetExtComputationPrimvarsComputations((this + 376), a2, &v42, *a5, &v39, v38, &v35, &v32);
  v12 = *(&v44 + 1);
  for (i = v44; i != v12; i = (i + 32))
  {
    if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), i, v11))
    {
      (*(*a2 + 15))(&v48, a2, this + 376, i);
      if (*(&v48 + 1))
      {
        sub_29ADE0EFC(i, &v48, &v28);
        v30 = v28;
        sub_29A017F80(&v39, &v30);
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v14)
        {
          v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v14 + 20) ^ *i) <= 7)
        {
          *(this + 480) = 1;
        }

        if (*(&v30 + 1))
        {
          sub_29A014BEC(*(&v30 + 1));
        }
      }

      sub_29A186B14(&v48);
    }
  }

  v15 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v39, &v32, v15, *a5) & 1) == 0)
  {
    v16 = *a5;
    v30 = 0uLL;
    v31 = 0;
    if ((v16 & 0x40) != 0)
    {
      v48 = 0uLL;
      v49 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v15, &v44, &v48, (this + 376), &v28);
      sub_29AC1F70C(&v30);
      v30 = v28;
      v31 = v29;
      v29 = 0;
      v28 = 0uLL;
      v26 = &v28;
      sub_29ABC6FA0(&v26);
      *&v28 = &v48;
      sub_29A124AB0(&v28);
    }

    v28 = 0uLL;
    v29 = 0;
    sub_29AE22748(&v39, &v28);
    sub_29AE22748(v38, &v28);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&v32, &v28);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v10, v17 + 520, v15, &v28, &v30, 16, &v26);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v26, *(a4 + 13), (this + 32), a3);
    if (v39 == v40 && v32 == v33 || (v18 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13)), ((*(**v18 + 16))(*v18) & 1) != 0) || (*&v48 = "hdSt/points.cpp", *(&v48 + 1) = "_PopulateVertexPrimvars", v49 = 320, v50 = "void pxrInternal__aapl__pxrReserved__::HdStPoints::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v51 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v48, "drawItem->GetVertexPrimvarRange()->IsValid()", 0) & 1) != 0))
    {
      if (v39 != v40)
      {
        v19 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v10, v19, &v39);
      }

      v20 = v32;
      v21 = v33;
      while (v20 != v21)
      {
        v22 = *(v20 + 4);
        v23 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v10, v23, v20, v22);
        v20 += 3;
      }

      v24 = v35;
      v25 = v36;
      while (v24 != v25)
      {
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v10, v24);
        v24 += 2;
      }
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    *&v48 = &v28;
    sub_29ABC6FA0(&v48);
    *&v48 = &v30;
    sub_29ABC6FA0(&v48);
  }

  *&v48 = &v32;
  sub_29A03CE34(&v48);
  *&v48 = &v35;
  sub_29A0176E4(&v48);
  *&v48 = v38;
  sub_29A0176E4(&v48);
  *&v48 = &v39;
  sub_29A0176E4(&v48);
  *&v48 = &v42;
  sub_29ABF15A8(&v48);
  *&v48 = &v44;
  sub_29ABEE9FC(&v48);
  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (v46)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v47, v46);
  }
}

void sub_29AE77CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *********a11, std::__shared_weak_count *a12, void ********a13, uint64_t a14, uint64_t a15, uint64_t a16, void *******a17, uint64_t a18, uint64_t a19, void ******a20, uint64_t a21, uint64_t a22, void *****a23, uint64_t a24, uint64_t a25, void ****a26, uint64_t a27, uint64_t a28, void ***a29, uint64_t a30, uint64_t a31, void **a32)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  a11 = &a13;
  sub_29ABC6FA0(&a11);
  a13 = &a17;
  sub_29ABC6FA0(&a13);
  a17 = &a20;
  sub_29A03CE34(&a17);
  a20 = &a23;
  sub_29A0176E4(&a20);
  a23 = &a26;
  sub_29A0176E4(&a23);
  a26 = &a29;
  sub_29A0176E4(&a26);
  a29 = &a32;
  sub_29ABF15A8(&a29);
  a32 = (v33 - 192);
  sub_29ABEE9FC(&a32);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A0E9CEC(v33 - 160);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStPoints::_InitRepr(pxrInternal__aapl__pxrReserved__::HdStPoints *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, unsigned int *a3)
{
  if (!*(this + 58))
  {
    sub_29AE3C6BC(&v19);
    v14 = v19;
    v19 = 0uLL;
    v15 = *(this + 59);
    *(this + 29) = v14;
    if (v15)
    {
      sub_29A014BEC(v15);
      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }
    }

    *a3 |= 0x800000u;
    if (pxrInternal__aapl__pxrReserved__::HdPoints::_GetReprDesc(a2, v13))
    {
      sub_29A0ECEEC(&v19, "hdSt", "new HdStDrawItem");
      v16 = malloc(0x50uLL);
      if (v19)
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(DWORD2(v19), v19);
      }

      pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v16, this + 32);
      v21 = v16;
      v17 = *(this + 58);
      sub_29AE23DC4(v17, (*v17 + 8 * *(v17 + 24)), &v21);
      ++*(v17 + 24);
      v16[5] = 8;
      v18 = v21;
      v21 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }
  }

  v5 = *(this + 55);
  v6 = *(this + 56);
  v7 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v5 != v6)
  {
    while ((v7 ^ *v5) >= 8)
    {
      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 56);
  if (v5 == v8)
  {
    v9 = *a2;
    *&v19 = v9;
    if ((v9 & 7) != 0)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v19 = v10;
      }
    }

    v11 = *(this + 59);
    *(&v19 + 1) = *(this + 58);
    v20 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AE780A0(this + 55, v8, &v19);
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE78058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_29B2C9DCC(a12);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AE780A0(void *a1, char *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = &a2[-v8];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    v21 = a1;
    if (v13)
    {
      v15 = sub_29A012C48(a1, v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = &v15[24 * v14];
    v19 = v18;
    v20 = &v15[24 * v13];
    sub_29AE78340(&v17, a3);
    v4 = sub_29AE784C8(a1, &v17, v4);
    sub_29A3E0E04(&v17);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *a3 = 0;
    *(v6 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    a1[1] = v6 + 24;
  }

  else
  {
    sub_29AE78240(a1, a2, v6, (a2 + 24));
    sub_29AE782D8(v4, a3);
  }

  return v4;
}

void sub_29AE781EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

void sub_29AE78200(uint64_t *a1)
{
  if (*a1)
  {
    sub_29ABEEA50(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AE78240(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    *v5 = 0;
    *(v6 + 8) = *(v5 + 8);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v7 = v4 - 24;
    v8 = a4 - v4;
    v9 = a2 + v4 - 24 - a4;
    do
    {
      result = sub_29AE782D8(v7, v9);
      v7 -= 24;
      v9 -= 24;
      v8 += 24;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_29AE782D8(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

__n128 sub_29AE78340(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = v9 >> 2;
      v11 = a1[4];
      v24 = a1[4];
      v12 = sub_29A012C48(v11, v9);
      v14 = &v12[24 * v10];
      v15 = *(a1 + 1);
      v16 = v15;
      v17 = v14;
      if (*(&v15 + 1) != v15)
      {
        v17 = &v14[*(&v15 + 1) - v15];
        v18 = &v12[24 * v10];
        do
        {
          *v18 = *v16;
          *v16 = 0;
          *(v18 + 8) = *(v16 + 8);
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          v18 += 24;
          v16 += 24;
        }

        while (v18 != v17);
        v15 = *(a1 + 1);
      }

      v21 = *a1;
      *a1 = v12;
      a1[1] = v14;
      v22 = v15;
      v19 = a1[3];
      a1[2] = v17;
      a1[3] = &v12[24 * v13];
      v23 = v19;
      sub_29A3E0E04(&v21);
      v5 = a1[2];
    }

    else
    {
      v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
      v5 = v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2);
      if (v6 != v4)
      {
        do
        {
          sub_29AE782D8(v5, v6);
          v6 += 24;
          v5 += 24;
        }

        while (v6 != v4);
        v6 = a1[1];
      }

      a1[1] = v6 + 24 * v8;
      a1[2] = v5;
    }
  }

  *v5 = *a2;
  *a2 = 0;
  result = *(a2 + 8);
  *(v5 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[2] += 24;
  return result;
}

uint64_t sub_29AE784C8(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  sub_29AD08B40(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29AD08B40(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void sub_29AE78584(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_SHARED_VERTEX_PRIMVAR))
  {
    sub_29B2CA610();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  if (this)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkDrawBatchesDirty(this);
  }

  result = sub_29B2CA644(v4);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkDrawBatchesDirty(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMarkMaterialTagsDirty(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  if (this)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkMaterialTagsDirty(this);
  }

  result = sub_29B2CA68C(v4);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkMaterialTagsDirty(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMarkGeomSubsetDrawItemsDirty(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  if (this)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkGeomSubsetDrawItemsDirty(this);
  }

  result = sub_29B2CA6D4(v4);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkGeomSubsetDrawItemsDirty(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(uint64_t this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  v2 = this;
  if (this || (this = sub_29B2CA71C(v3), (this & 1) != 0))
  {
    *(v2 + 24) = 1;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*a3 + 416))(&v37, a3, a1 + 376, a4);
  v35 = 0uLL;
  v36 = 0;
  if (sub_29AE78B88(a2))
  {
    (*(*a1 + 40))(a1);
    v31 = 0uLL;
    v32 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (a8 && *a5 && a6 && a6 != 7)
  {
    v16 = 8 * a8 * a7;
    do
    {
      v17 = *(**a5 + 8 * *(*a5 + 24) + v16);
      if (v17 || (*&v31 = "hdSt/primUtils.cpp", *(&v31 + 1) = "HdStGetPrimvarDescriptors", v32 = 189, v33 = "HdPrimvarDescriptorVector pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(const HdRprim *, const HdStDrawItem *, HdSceneDelegate *, HdInterpolation, const HdReprSharedPtr &, HdMeshGeomStyle, int, size_t)", v34 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "subsetDrawItem", 0) & 1) != 0))
      {
        if (sub_29AE78B88(v17))
        {
          sub_29AE78C20(v17);
          v31 = 0uLL;
          v32 = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
        }
      }

      v16 += 8;
      --a8;
    }

    while (a8);
    v18 = 126 - 2 * __clz((*(&v35 + 1) - v35) >> 3);
    if (*(&v35 + 1) == v35)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    sub_29A2815F8(v35, *(&v35 + 1), &v39, v19, 1);
    v20 = sub_29A5AE88C(v35, *(&v35 + 1));
    sub_29A3203E8(&v35, v20, *(&v35 + 1));
  }

  if (v35 == *(&v35 + 1))
  {
    *a9 = v37;
    *(a9 + 16) = v38;
    v38 = 0;
    v37 = 0uLL;
  }

  else
  {
    v29 = 0uLL;
    v30 = 0;
    sub_29ACCD1CC(&v29, v37, *(&v37 + 1), (*(&v37 + 1) - v37) >> 5);
    v21 = *(&v29 + 1);
    v22 = v29;
    if (v29 != *(&v29 + 1))
    {
      while (1)
      {
        v23 = v35;
        if (v35 != *(&v35 + 1))
        {
          v23 = v35;
          while ((*v23 ^ *v22) >= 8)
          {
            if (++v23 == *(&v35 + 1))
            {
              goto LABEL_29;
            }
          }
        }

        if (v23 == *(&v35 + 1))
        {
          break;
        }

        v22 += 32;
        if (v22 == *(&v29 + 1))
        {
          goto LABEL_48;
        }
      }
    }

LABEL_29:
    if (v22 == *(&v29 + 1))
    {
LABEL_48:
      v25 = *(&v29 + 1);
    }

    else
    {
      v24 = v22 + 32;
      if (v22 + 32 == *(&v29 + 1))
      {
        v25 = v22;
      }

      else
      {
        v25 = v22;
        do
        {
          v26 = v22;
          v22 = v24;
          v27 = v35;
          if (v35 != *(&v35 + 1))
          {
            while ((*v27 ^ *v22) >= 8)
            {
              if (++v27 == *(&v35 + 1))
              {
                goto LABEL_45;
              }
            }
          }

          if (v27 != *(&v35 + 1))
          {
            if (v22 == v25)
            {
              *(v22 + 8) = *(v26 + 40);
            }

            else
            {
              if ((*v25 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v25 = *v22;
              *v22 = 0;
              *(v25 + 8) = *(v26 + 40);
              v28 = *(v25 + 16);
              if ((v28 & 7) != 0)
              {
                atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(v25 + 16) = *(v26 + 48);
              *(v26 + 48) = 0;
            }

            *(v25 + 24) = *(v26 + 56);
            v25 += 32;
          }

LABEL_45:
          v24 = v22 + 32;
        }

        while (v22 + 32 != v21);
        v21 = *(&v29 + 1);
      }
    }

    sub_29AE7C804(&v29, v25, v21);
    *a9 = v29;
    *(a9 + 16) = v30;
    v30 = 0;
    v29 = 0uLL;
    *&v31 = &v29;
    sub_29ABEE9FC(&v31);
  }

  *&v31 = &v35;
  sub_29A124AB0(&v31);
  *&v31 = &v37;
  sub_29ABEE9FC(&v31);
}

void sub_29AE78B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a13 = &a19;
  sub_29A124AB0(&a13);
  a13 = &a23;
  sub_29ABEE9FC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE78B88(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 48))(v2);
  if (v3)
  {
LABEL_5:
    sub_29A014BEC(v3);
  }

  return v4;
}

void sub_29AE78C08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AE78C20(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = (*(*v2 + 56))(v2);
    if (!v3)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if ((atomic_load_explicit(byte_2A174F3B8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CA764(&v6);
    v4 = v6;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = &qword_2A174F3C0;
  if (v3)
  {
LABEL_8:
    sub_29A014BEC(v3);
  }

  return v4;
}

void sub_29AE78CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStUpdateRenderTag(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdRprim *a4)
{
  v6 = *(a3 + 54);
  v7 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFF8;
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::UpdateRenderTag(a3, this);
  if ((v6 ^ *(a3 + 54)) >= 8)
  {
    pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, &v7);
    pxrInternal__aapl__pxrReserved__::HdStRenderParam::IncreaseRenderTagCount(a2, (a3 + 432));
    v6 = v7;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AE78DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdRprim *a4)
{
  (*(*this + 296))(&v8);
  if (*(a3 + 2) != v8)
  {
    pxrInternal__aapl__pxrReserved__::HdRprim::SetMaterialId(a3, &v8);
    pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a2, v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
  return sub_29A1DE3A4(&v8);
}

void sub_29AE78E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdStRenderParam *pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(pxrInternal__aapl__pxrReserved__::HdStRenderParam *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2, pxrInternal__aapl__pxrReserved__::HdDrawItem *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v4 = (a2 + 32);
  if ((*(a2 + 4) ^ *a3) >= 8)
  {
    v6 = this;
    pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(this, (a2 + 32));
    pxrInternal__aapl__pxrReserved__::HdStRenderParam::IncreaseMaterialTagCount(v6, a3);
    sub_29A166F2C(v4, a3);

    return pxrInternal__aapl__pxrReserved__::HdStMarkMaterialTagsDirty(v6, v7);
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::HdStRenderParam *pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdDrawItem *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, int a6)
{
  if (!a6)
  {
    v11 = *(this + 1);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v11, (v12 + 152), a4);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v8)
  {
    v8 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  v9 = *(v8 + 2);
  v15 = *(v8 + 2);
  if ((v9 & 7) != 0)
  {
    v13 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v13;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, &v15, a4);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::HdRprim *a3, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a4)
{
  v5 = *(a3 + 1);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v5, (v6 + 152), a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(void *a1, void *a2, void *a3, char a4)
{
  if (*a1 != a1[1] || *a2 != a2[1])
  {
    return 0;
  }

  if (*a3)
  {
    v6 = (*(**a3 + 16))(*a3) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ((a4 & 0x40) != 0)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(void *a1, void *a2, char a3)
{
  memset(v5, 0, sizeof(v5));
  CanSkipBARAllocationOrUpdate = pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(a1, v5, a2, a3);
  v6 = v5;
  sub_29A03CE34(&v6);
  return CanSkipBARAllocationOrUpdate;
}

void sub_29AE79350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A03CE34(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_GetRemovedPrimvarBufferSpecs(uint64_t *a1@<X0>, char **a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_29A1D7F98(&v33, (a2[1] - *a2) >> 5);
  v12 = *a2;
  v13 = a2[1];
  if (v12 != v13)
  {
    v14 = v34;
    do
    {
      if (v14 >= v35)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
      }

      v15 = *v12;
      *v14 = *v12;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v34 = ++v14;
      v12 += 32;
    }

    while (v12 != v13);
  }

  v17 = *a3;
  v16 = a3[1];
  if (v17 != v16)
  {
    v18 = v34;
    do
    {
      if (v18 >= v35)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
      }

      v19 = *v17;
      *v18 = *v17;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v34 = ++v18;
      v17 += 8;
    }

    while (v17 != v16);
  }

  v20 = *a1;
  v21 = a1[1];
  if (*a1 != v21)
  {
    do
    {
      v22 = v33;
      if (v33 != v34)
      {
        while ((*v22 ^ *v20) >= 8)
        {
          if (++v22 == v34)
          {
            goto LABEL_25;
          }
        }
      }

      if (v22 == v34)
      {
LABEL_25:
        v23 = *a4;
        v24 = *(a4 + 8);
        if (*a4 != v24)
        {
          while ((*v23 ^ *v20) >= 8)
          {
            if (++v23 == v24)
            {
              goto LABEL_30;
            }
          }
        }

        if (v23 == v24)
        {
LABEL_30:
          if (sub_29ABCF8C0(26))
          {
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a5);
            v28 = *v20 & 0xFFFFFFFFFFFFFFF8;
            if (v28)
            {
              v29 = (v28 + 16);
              if (*(v28 + 39) < 0)
              {
                v29 = *v29;
              }
            }

            else
            {
              v29 = "";
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Found primvar %s that has been removed\n", v26, v27, Text, v29);
          }

          v30 = a6[1];
          if (v30 >= a6[2])
          {
            v32 = sub_29ABC6FF4(a6, v20);
          }

          else
          {
            v31 = *v20;
            *v30 = *v20;
            if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v30 &= 0xFFFFFFFFFFFFFFF8;
            }

            *(v30 + 8) = *(v20 + 8);
            v32 = v30 + 24;
          }

          a6[1] = v32;
        }
      }

      v20 += 24;
    }

    while (v20 != v21);
  }

  v36 = &v33;
  sub_29A124AB0(&v36);
}

void sub_29AE795FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void ***a14)
{
  a14 = &a11;
  sub_29A124AB0(&a14);
  sub_29ABC6FA0(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(void *a1@<X0>, char **a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  if (v8 && ((*(*v8 + 16))(v8) & 1) != 0)
  {
    memset(v13, 0, sizeof(v13));
    (*(**a1 + 144))(*a1, v13);
    pxrInternal__aapl__pxrReserved__::_GetRemovedPrimvarBufferSpecs(v13, a2, a3, a4, a5, a6);
    v14 = v13;
    sub_29ABC6FA0(&v14);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }
}

void sub_29AE79728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a4@<X3>, void *a5@<X8>)
{
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(a1, a2, v5, a3, a4, a5);
  v6 = v5;
  sub_29ABF15A8(&v6);
}

void sub_29AE7978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29ABF15A8(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGetRemovedOrReplacedPrimvarBufferSpecs(void *a1@<X0>, char **a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, pxrInternal__aapl__pxrReserved__::SdfPath *a6@<X5>, void *a7@<X8>)
{
  v9 = *a1;
  if (v9 && ((*(*v9 + 16))(v9) & 1) != 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    (*(**a1 + 144))(*a1, &v24);
    pxrInternal__aapl__pxrReserved__::_GetRemovedPrimvarBufferSpecs(&v24, a2, a3, a4, a6, a7);
    v15 = v24;
    for (i = v25; v15 != i; v15 += 24)
    {
      v17 = *a5;
      v18 = a5[1];
      if (*a5 != v18)
      {
        while ((*v17 ^ *v15) >= 8)
        {
          v17 += 24;
          if (v17 == v18)
          {
            goto LABEL_19;
          }
        }
      }

      if (v17 != v18 && ((*v17 ^ *v15) > 7 || *(v15 + 8) != *(v17 + 8) || *(v15 + 16) != *(v17 + 16)))
      {
        if (sub_29ABCF8C0(26))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a6);
          v22 = *v15 & 0xFFFFFFFFFFFFFFF8;
          if (v22)
          {
            v23 = (v22 + 16);
            if (*(v22 + 39) < 0)
            {
              v23 = *v23;
            }
          }

          else
          {
            v23 = "";
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Found primvar %s that has been replaced\n", v20, v21, Text, v23);
        }

        sub_29ABC6BEC(a7, v15);
      }

LABEL_19:
      ;
    }

    v27 = &v24;
    sub_29ABC6FA0(&v27);
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }
}

void sub_29AE79980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_29ABC6FA0(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStGetRemovedOrReplacedPrimvarBufferSpecs(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X4>, void *a6@<X8>)
{
  memset(v6, 0, sizeof(v6));
  pxrInternal__aapl__pxrReserved__::HdStGetRemovedOrReplacedPrimvarBufferSpecs(a1, a2, v6, a3, a4, a5, a6);
  v7 = v6;
  sub_29ABF15A8(&v7);
}

void sub_29AE79A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29ABF15A8(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer *this, pxrInternal__aapl__pxrReserved__ *a4)
{
  if (!this)
  {
    v45 = "hdSt/primUtils.cpp";
    v46 = "HdStUpdateDrawItemBAR";
    v47 = 568;
    v48 = "void pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(const HdBufferArrayRangeSharedPtr &, int, HdRprimSharedData *, HdRenderParam *, HdChangeTracker *)";
    v49 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v45, 1, "Null shared data ptr received\n", a4);
    return;
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this, a2);
  v9 = *v8;
  v10 = *a1;
  if (*v8 == *a1)
  {
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 344));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: BAR at draw coord %d is still (%p)\n", v17, v18, Text, a2, *v8);
    }

    return;
  }

  if (v9)
  {
    v12 = (*(*v9 + 16))(v9);
    v10 = *a1;
    if (!*a1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

LABEL_11:
    v19 = (*(*v10 + 16))(v10);
    v13 = v19;
    if ((v12 & 1) == 0)
    {
      v14 = 0;
      if ((v19 & 1) == 0)
      {
        v15 = 0;
        goto LABEL_21;
      }

      v13 = 1;
      goto LABEL_19;
    }

LABEL_12:
    pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a4, v11);
    if (sub_29ABCF8C0(26))
    {
      v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 344));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Marking garbage collection needed to possibly reclaim BAR %p at draw coord index %d\n", v21, v22, v20, *v8, a2);
    }

    if (v13)
    {
      v23 = (*(**v8 + 72))();
      v15 = v23 != (*(**a1 + 72))();
      v14 = 1;
      goto LABEL_21;
    }

    v14 = 1;
LABEL_19:
    v24 = 1;
    goto LABEL_23;
  }

  LOBYTE(v12) = 0;
  v14 = 0;
  v15 = 0;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_21:
  v24 = 0;
  v13 = v14;
  if (!sub_29ADC935C(*a1, v8) || v15)
  {
LABEL_23:
    pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a4, v11);
    if (sub_29ABCF8C0(26))
    {
      if (v24)
      {
        v25 = "%s: Marking all batches dirty due to an invalid <-> valid transition (new BAR %p, existing BAR %p)\n";
      }

      else
      {
        sub_29ADC935C(*a1, v8);
        v25 = "%s: Marking all batches dirty since the new BAR (%p) doesn't aggregate with the existing BAR (%p)\n";
      }

      v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 344));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(v25, v27, v28, v26, *a1, *v8);
    }
  }

  if (sub_29ABCF8C0(26))
  {
    v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 344));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Updating BAR at draw coord index %d from %p to %p\n", v30, v31, v29, a2, *v8, *a1);
    if (v13)
    {
      v34 = (*(**a1 + 96))();
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Buffer array version for the new range is %lu\n", v35, v36, v34);
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    if (v14)
    {
      (*(**v8 + 144))(*v8, &v45);
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (v13)
    {
      (*(**a1 + 144))(*a1, &v42);
      v37 = v42;
      v38 = v43;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v39 = v45;
    if (v46 - v45 == v38 - v37)
    {
      while (v39 != v46)
      {
        if ((*v37 ^ *v39) > 7 || *(v39 + 2) != *(v37 + 2) || *(v39 + 2) != v37[2])
        {
          goto LABEL_42;
        }

        v39 += 24;
        v37 += 3;
      }
    }

    else
    {
LABEL_42:
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Old buffer specs:\n", v32, v33);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::Dump(&v45);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("New buffer specs:\n", v40, v41);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::Dump(&v42);
    }

    v50 = &v42;
    sub_29ABC6FA0(&v50);
    v42 = &v45;
    sub_29ABC6FA0(&v42);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set(this, a2, a1);
}

void sub_29AE79E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  a14 = &a17;
  sub_29ABC6FA0(&a14);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStIsPrimvarExistentAndValid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v5 == v6)
  {
    return 0;
  }

  while ((*a4 ^ *v5) > 7)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 0;
    }
  }

  (*(*a2 + 120))(v9, a2, a1 + 376);
  v7 = (sub_29A1EFC10(v9) & 1) == 0 && (sub_29A1FA6D8(v9) & 1) == 0 && (!pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v9) || pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v9)) && v9[1] != 0;
  sub_29A186B14(v9);
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStShouldPopulateConstantPrimvars(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*this, a2, a3) || (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(*this, a2, v5) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(*this, a2, v6) & 1) != 0)
  {
    return 1;
  }

  v9 = *this;

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimIdDirty(v9, a2, v7);
}

void pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(_DWORD *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a3, pxrInternal__aapl__pxrReserved__ *a4, uint64_t a5, unsigned int *a6, const pxrInternal__aapl__pxrReserved__::SdfPath **a7, _BYTE *a8)
{
  v114 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v93, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(HdRprim *, HdRprimSharedData *, HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdPrimvarDescriptorVector &, BOOL *)");
  v85 = a4;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v109, a3[1]);
  v16 = v109.n128_u64[1];
  v87 = v109.n128_u64[0];
  if (v109.n128_u64[1])
  {
    atomic_fetch_add_explicit((v109.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    if (v109.n128_u64[1])
    {
      sub_29A014BEC(v109.n128_u64[1]);
    }
  }

  v90 = 0;
  v91 = 0;
  v92 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(*a6, (a1 + 94), v15))
  {
    memset(v113, 0, sizeof(v113));
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    (*(*a3 + 9))(&v109, a3, a1 + 94);
    pxrInternal__aapl__pxrReserved__::GfBBox3d::_SetMatrices((a2 + 24), &v109);
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v87);
    v89 = *((*(*Hgi + 200))(Hgi) + 49) & 1;
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AE7CC74((v19 + 640), &v109, &v89, &v98);
    v101 = v98;
    v98 = 0uLL;
    sub_29A01729C(&v90, &v101);
    if (*(&v101 + 1))
    {
      sub_29A014BEC(*(&v101 + 1));
    }

    if (*(&v98 + 1))
    {
      sub_29A014BEC(*(&v98 + 1));
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v101, v109.n128_f64, 0, 0.0);
    sub_29AE7CD48((v20 + 648), &v101, &v89, v96);
    v98 = v96[0];
    v96[0] = 0uLL;
    sub_29A01729C(&v90, &v98);
    if (*(&v98 + 1))
    {
      sub_29A014BEC(*(&v98 + 1));
    }

    if (*(&v96[0] + 1))
    {
      sub_29A014BEC(*(&v96[0] + 1));
    }

    v21 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetHandedness(&v109) == -1.0;
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 2))
    {
      pxrInternal__aapl__pxrReserved__::HdRprim::GetInstancerTransforms(a1, a3, &v98);
      sub_29A197D6C(v96, v98, v22, v23, v24, v25, v26, v27);
      if (v98)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v101, (v100 + v28), 0, 0.0);
          sub_29A198240(v96);
          v30 = (v97 + v28);
          v31 = v101;
          v32 = v102;
          v33 = v104;
          v30[2] = v103;
          v30[3] = v33;
          v34 = v108;
          v36 = v105;
          v35 = v106;
          v30[6] = v107;
          v30[7] = v34;
          v30[4] = v36;
          v30[5] = v35;
          *v30 = v31;
          v30[1] = v32;
          v21 ^= pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetHandedness((v100 + v28)) == -1.0;
          ++v29;
          v28 += 128;
        }

        while (v29 < v98);
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v37)
      {
        v37 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v95[0] = v98;
      sub_29AE7CE1C(v37 + 2, &v98, v95, &v89, &v88);
      v101 = v88;
      v88 = 0uLL;
      sub_29A01729C(&v90, &v101);
      if (*(&v101 + 1))
      {
        sub_29A014BEC(*(&v101 + 1));
      }

      if (*(&v88 + 1))
      {
        sub_29A014BEC(*(&v88 + 1));
      }

      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v38)
      {
        v38 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v95[0] = *&v96[0];
      sub_29AE7CEFC(v38 + 3, v96, v95, &v89, &v88);
      v101 = v88;
      v88 = 0uLL;
      sub_29A01729C(&v90, &v101);
      if (*(&v101 + 1))
      {
        sub_29A014BEC(*(&v101 + 1));
      }

      if (*(&v88 + 1))
      {
        sub_29A014BEC(*(&v88 + 1));
      }

      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v39)
      {
        v39 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v95[1] = &unk_2A204475B;
      LODWORD(v95[0]) = v21 & 1;
      sub_29AD9CD3C((v39 + 320), v95, &v88);
      v101 = v88;
      v88 = 0uLL;
      sub_29A01729C(&v90, &v101);
      if (*(&v101 + 1))
      {
        sub_29A014BEC(*(&v101 + 1));
      }

      if (*(&v88 + 1))
      {
        sub_29A014BEC(*(&v88 + 1));
      }

      sub_29A186B14(v95);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    if (a8)
    {
      *a8 = v21 & 1;
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(*a6, (a1 + 94), v17))
  {
    (*(*a3 + 8))(&v109, a3, a1 + 94);
    v41 = v110;
    *(a2 + 24) = v109;
    *(a2 + 40) = v41;
    *(a2 + 56) = v111;
    v42 = *(a5 + 24);
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v43)
    {
      v43 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v83 = *(v42 + 24);
    v44 = *(v42 + 40);
    *(&v98 + 1) = &off_2A2042A68 + 2;
    v45 = operator new(0x14uLL);
    v46 = v44;
    *v45 = vcvt_f32_f64(v83);
    v45[1].f32[0] = v46;
    v45[1].i32[1] = 1065353216;
    atomic_store(0, &v45[2]);
    *&v98 = v45;
    atomic_fetch_add_explicit(&v45[2], 1u, memory_order_relaxed);
    sub_29AD9CD3C((v43 + 24), &v98, &v101);
    v109 = v101;
    v101 = 0uLL;
    sub_29A186B14(&v98);
    sub_29A017F80(&v90, &v109);
    v47 = *(a5 + 24);
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v48)
    {
      v48 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v84 = v47[3];
    v49 = v47[4].f64[0];
    *(&v96[0] + 1) = &off_2A2042A68 + 2;
    v50 = operator new(0x14uLL);
    v51 = v49;
    *v50 = vcvt_f32_f64(v84);
    v50[1].f32[0] = v51;
    v50[1].i32[1] = 1065353216;
    atomic_store(0, &v50[2]);
    *&v96[0] = v50;
    atomic_fetch_add_explicit(&v50[2], 1u, memory_order_relaxed);
    sub_29AD9CD3C((v48 + 32), v96, &v98);
    v101 = v98;
    v98 = 0uLL;
    sub_29A186B14(v96);
    sub_29A017F80(&v90, &v101);
    if (*(&v101 + 1))
    {
      sub_29A014BEC(*(&v101 + 1));
    }

    if (v109.n128_u64[1])
    {
      sub_29A014BEC(v109.n128_u64[1]);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimIdDirty(*a6, (a1 + 94), v40))
  {
    v53 = a1[6];
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v54)
    {
      v54 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    *(&v98 + 1) = &unk_2A204475B;
    LODWORD(v98) = v53;
    sub_29AD9CD3C((v54 + 528), &v98, &v101);
    v109 = v101;
    v101 = 0uLL;
    sub_29A186B14(&v98);
    sub_29A017F80(&v90, &v109);
    if (v109.n128_u64[1])
    {
      sub_29A014BEC(v109.n128_u64[1]);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a6, (a1 + 94), v52))
  {
    sub_29A039314(&v90, ((a7[1] - *a7) >> 5) + ((v91 - v90) >> 4));
    v57 = *a7;
    v56 = a7[1];
    if (*a7 != v56)
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a6, (a1 + 94), v57, v55))
        {
          (*(*a3 + 15))(&v101, a3, a1 + 94, v57);
          if ((sub_29A1EFC10(&v101) & 1) == 0 && (sub_29A1FA6D8(&v101) & 1) == 0 && (sub_29A1FA710(&v101) & 1) == 0 && (sub_29A1FA748(&v101) & 1) == 0 && (!pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(&v101) || pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&v101)) && *(&v101 + 1))
          {
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(&v101))
            {
              NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&v101);
            }

            else
            {
              NumElements = 1;
            }

            *&v96[0] = NumElements;
            sub_29AE7CFDC(v57, &v101, v96, &v109);
            v98 = v109;
            if (*(*v109.n128_u64[0] + 56))(v109.n128_u64[0], v109) != -1 || (v109.n128_u64[0] = "hdSt/primUtils.cpp", v109.n128_u64[1] = "HdStPopulateConstantPrimvars", *&v110 = 864, *(&v110 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(HdRprim *, HdRprimSharedData *, HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdPrimvarDescriptorVector &, BOOL *)", LOBYTE(v111) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v109, "source->GetTupleType().type != HdTypeInvalid", 0)))
            {
              (*(*v98 + 56))(v98);
              if (v59 || (v109.n128_u64[0] = "hdSt/primUtils.cpp", v109.n128_u64[1] = "HdStPopulateConstantPrimvars", *&v110 = 867, *(&v110 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(HdRprim *, HdRprimSharedData *, HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdPrimvarDescriptorVector &, BOOL *)", LOBYTE(v111) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v109, "source->GetTupleType().count > 0", 0) & 1) != 0))
              {
                sub_29A017F80(&v90, &v98);
              }
            }

            if (*(&v98 + 1))
            {
              sub_29A014BEC(*(&v98 + 1));
            }
          }

          sub_29A186B14(&v101);
        }

        v57 += 32;
      }

      while (v57 != v56);
    }
  }

  v60 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 12));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v90, v60, *a6) & 1) == 0)
  {
    v101 = 0uLL;
    *&v102 = 0;
    sub_29AE22748(&v90, &v101);
    v61 = *a6;
    v98 = 0uLL;
    v99 = 0;
    if ((v61 & 0x40) != 0)
    {
      if ((atomic_load_explicit(&qword_2A174F3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F3A0))
      {
        v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v65)
        {
          v65 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v66 = *(v65 + 80);
        v109.n128_u64[0] = v66;
        if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v109.n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v67)
        {
          v67 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v68 = *(v67 + 81);
        v109.n128_u64[1] = v68;
        if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v109.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
        }

        v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        if (!v69)
        {
          v69 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        }

        v70 = *(v69 + 2);
        *&v110 = v70;
        if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v110 = v110 & 0xFFFFFFFFFFFFFFF8;
        }

        v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        if (!v71)
        {
          v71 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        }

        v72 = *(v71 + 3);
        *(&v110 + 1) = v72;
        if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(&v110 + 1) &= 0xFFFFFFFFFFFFFFF8;
        }

        v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v73)
        {
          v73 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v74 = *(v73 + 40);
        *&v111 = v74;
        if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v111 = v111 & 0xFFFFFFFFFFFFFFF8;
        }

        v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v75)
        {
          v75 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v76 = *(v75 + 3);
        *(&v111 + 1) = v76;
        if ((v76 & 7) != 0 && (atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(&v111 + 1) &= 0xFFFFFFFFFFFFFFF8;
        }

        v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v77)
        {
          v77 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v78 = *(v77 + 4);
        *&v112 = v78;
        if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v112 = v112 & 0xFFFFFFFFFFFFFFF8;
        }

        v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v79)
        {
          v79 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v80 = *(v79 + 66);
        *(&v112 + 1) = v80;
        if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(&v112 + 1) &= 0xFFFFFFFFFFFFFFF8;
        }

        qword_2A174F388 = 0;
        unk_2A174F390 = 0;
        qword_2A174F398 = 0;
        sub_29A12EF7C(&qword_2A174F388, &v109, v113, 8uLL);
        for (i = 7; i != -1; --i)
        {
          v82 = v109.n128_u64[i];
          if ((v82 & 7) != 0)
          {
            atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        __cxa_atexit(sub_29A3C73E0, &qword_2A174F388, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174F3A0);
      }

      pxrInternal__aapl__pxrReserved__::HdStGetRemovedOrReplacedPrimvarBufferSpecs(v60, a7, &qword_2A174F388, &v101, (a1 + 94), &v109);
      sub_29AC1F70C(&v98);
      v98 = v109;
      v99 = v110;
      *&v110 = 0;
      v109 = 0uLL;
      *&v96[0] = &v109;
      sub_29ABC6FA0(v96);
    }

    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v62)
    {
      v62 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateShaderStorageBufferArrayRange(v87, v60, &v101, &v98, 8u, v96, v62 + 520);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(v96, *(a5 + 12), a2, v85);
    v63 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 12));
    if (((*(**v63 + 16))(*v63) & 1) == 0)
    {
      v109.n128_u64[0] = "hdSt/primUtils.cpp";
      v109.n128_u64[1] = "HdStPopulateConstantPrimvars";
      *&v110 = 918;
      *(&v110 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(HdRprim *, HdRprimSharedData *, HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdPrimvarDescriptorVector &, BOOL *)";
      LOBYTE(v111) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v109, "drawItem->GetConstantPrimvarRange()->IsValid()", 0);
    }

    if (v90 != v91)
    {
      v64 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 12));
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v87, v64, &v90);
    }

    if (*(&v96[0] + 1))
    {
      sub_29A014BEC(*(&v96[0] + 1));
    }

    v109.n128_u64[0] = &v98;
    sub_29ABC6FA0(&v109);
    v109.n128_u64[0] = &v101;
    sub_29ABC6FA0(&v109);
  }

  v109.n128_u64[0] = &v90;
  sub_29A0176E4(&v109);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v93)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v94, v93);
  }
}

void sub_29AE7AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void ****a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void ***a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  while (1)
  {
    v45 = *(v41 - 8);
    v41 -= 8;
    v44 = v45;
    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v41 == v42 - 240)
    {
      __cxa_guard_abort(&qword_2A174F3A0);
      a29 = &a35;
      sub_29ABC6FA0(&a29);
      a35 = &a41;
      sub_29ABC6FA0(&a35);
      a41 = &a21;
      sub_29A0176E4(&a41);
      if (a10)
      {
        sub_29A014BEC(a10);
      }

      sub_29A0E9CEC(&a24);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AE7B12C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AE7B10CLL);
}

pxrInternal__aapl__pxrReserved__::HdInstancer *pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(pxrInternal__aapl__pxrReserved__::HdInstancer *result, pxrInternal__aapl__pxrReserved__ *a2, _DWORD *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer *a5, unsigned int a6)
{
  v37 = *MEMORY[0x29EDCA608];
  if ((a6 & 0x10000) != 0)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::HdInstancer::_SyncInstancerAndParents(result, (a3 + 2), a3);
    v28 = a3;
    InstancerNumLevels = pxrInternal__aapl__pxrReserved__::HdInstancer::GetInstancerNumLevels(v9, a3, v10);
    v12 = *(a5 + 84);
    v13 = InstancerNumLevels != v12;
    if (InstancerNumLevels != v12)
    {
      v14 = InstancerNumLevels;
      v15 = sub_29ADCA7A8(a4 + 8, 0);
      pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Resize(a5, v15 + v14);
      *(a5 + 84) = v14;
      pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, v16);
      pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a2, v17);
    }

    sub_29A1E21F4(&v35, a3 + 2);
    sub_29A1E2240(&v36, a3 + 3);
    v18 = 0;
    while (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v35))
    {
      Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(v9, &v35);
      if (!Instancer)
      {
        v30 = "hdSt/primUtils.cpp";
        v31 = "HdStUpdateInstancerData";
        v32 = 977;
        v33 = "void pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(HdRenderIndex &, HdRenderParam *, HdRprim *, HdStDrawItem *, HdRprimSharedData *, HdDirtyBits)";
        LOBYTE(v34) = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "instancer", 0) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v21 = sub_29ADCA7A8(a4 + 8, v18);
      v22 = *(Instancer + 104);
      v23 = *(Instancer + 112);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = v22 != *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a5, v21);
      v25 = *(Instancer + 112);
      v30 = *(Instancer + 104);
      v31 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v30, v21, a5, a2);
      if (v31)
      {
        sub_29A014BEC(v31);
      }

      sub_29A2258F0(&v35, (Instancer + 24));
      sub_29A225948(&v36, (Instancer + 28));
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      v13 |= v24;
      ++v18;
    }

    if ((pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstanceIndexDirty(a6, (v28 + 376), v19) | v13))
    {
      sub_29A2258F0(&v35, v28 + 2);
      sub_29A225948(&v36, v28 + 3);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v35))
      {
        v26 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(v9, &v35);
        if (v26 || (v30 = "hdSt/primUtils.cpp", v31 = "HdStUpdateInstancerData", v32 = 1011, v33 = "void pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(HdRenderIndex &, HdRenderParam *, HdRprim *, HdStDrawItem *, HdRprimSharedData *, HdDirtyBits)", LOBYTE(v34) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "instancer", 0) & 1) != 0))
        {
          pxrInternal__aapl__pxrReserved__::HdStInstancer::GetInstanceIndices(v26, (v28 + 376));
        }
      }
    }

LABEL_22:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
    return sub_29A1DE3A4(&v35);
  }

  return result;
}

void sub_29AE7B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  a19 = &a21;
  sub_29ABC6FA0(&a19);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

BOOL pxrInternal__aapl__pxrReserved__::HdStIsInstancePrimvarExistentAndValid(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, pxrInternal__aapl__pxrReserved__::HdRprim *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v18[2] = *MEMORY[0x29EDCA608];
  sub_29A1E21F4(&v16, a2 + 2);
  sub_29A1E2240(&v17, a2 + 3);
  while (1)
  {
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v16) || (Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(this, &v16)) == 0 && (v11 = "hdSt/primUtils.cpp", v12 = "HdStIsInstancePrimvarExistentAndValid", v13 = 1104, v14 = "BOOL pxrInternal__aapl__pxrReserved__::HdStIsInstancePrimvarExistentAndValid(HdRenderIndex &, HdRprim *, const TfToken &)", v15 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "instancer", 0) & 1) == 0))
    {
      v9 = 0;
      goto LABEL_17;
    }

    (*(**(Instancer + 8) + 416))(&v11);
    v8 = v11;
    if (v11 != v12)
    {
      break;
    }

LABEL_7:
    sub_29A2258F0(&v16, (Instancer + 24));
    sub_29A225948(&v17, (Instancer + 28));
    v18[0] = &v11;
    sub_29ABEE9FC(v18);
  }

  while ((*a3 ^ *v8) > 7)
  {
    v8 += 32;
    if (v8 == v12)
    {
      goto LABEL_7;
    }
  }

  (*(**(Instancer + 8) + 120))(v18);
  v9 = (sub_29A1EFC10(v18) & 1) == 0 && (sub_29A1FA6D8(v18) & 1) == 0 && (!pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v18) || pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v18)) && v18[1] != 0;
  sub_29A186B14(v18);
  v18[0] = &v11;
  sub_29ABEE9FC(v18);
LABEL_17:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  return v9;
}

void sub_29AE7BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStProcessTopologyVisibility(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, pxrInternal__aapl__pxrReserved__ *a7, uint64_t a8, uint64_t *a9)
{
  v11 = a2;
  sub_29A0ECEEC(&v25, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStProcessTopologyVisibility(VtIntArray, int, VtIntArray, int, HdRprimSharedData *, HdStDrawItem *, HdRenderParam *, HdChangeTracker *, const HdStResourceRegistrySharedPtr &, const SdfPath &)");
  v13 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 17));
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v24, 0, sizeof(v24));
  if (v15 || *a1 || *a3)
  {
    v16 = a1[1];
    v21 = *a1;
    v22 = v16;
    v17 = *(a1 + 4);
    v23 = v17;
    if (v17)
    {
      v18 = (v17 - 16);
      if (*(&v22 + 1))
      {
        v18 = *(&v22 + 1);
      }

      atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AE7C1BC(&v21, v11, (v19 + 248), &v20);
  }

  *&v20 = v24;
  sub_29A0176E4(&v20);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }
}

void sub_29AE7C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  *(v15 - 96) = &a14;
  sub_29ABC6FA0((v15 - 96));
  a14 = (v15 - 136);
  sub_29A0176E4(&a14);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  sub_29A0E9CEC(v15 - 112);
  _Unwind_Resume(a1);
}

void sub_29AE7C1BC(void *a1@<X0>, signed int a2@<W1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, _OWORD *a4@<X8>)
{
  v19[2] = *MEMORY[0x29EDCA608];
  v18 = vcvtps_u32_f32(vcvts_n_f32_s32(a2, 5uLL));
  LODWORD(v15) = -1;
  sub_29AE7C8E8(v16, v18, &v15);
  sub_29A19DBEC(a1);
  v8 = a1[4];
  sub_29A19DBEC(a1);
  for (i = a1[4] + 4 * *a1; v8 != i; ++v8)
  {
    v10 = *v8;
    if (v10 < a2 && (v10 & 0x80000000) == 0)
    {
      sub_29A19CEF8(v16);
      *(v17 + ((v10 >> 3) & 0x1FFFFFFC)) &= ~(1 << v10);
    }
  }

  v19[1] = &off_2A2043C60;
  v11 = operator new(0x30uLL);
  v12 = v16[1];
  *v11 = v16[0];
  *(v11 + 1) = v12;
  v13 = v17;
  *(v11 + 4) = v17;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(v11 + 3))
    {
      v14 = *(v11 + 3);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v11 + 10);
  v19[0] = v11;
  atomic_fetch_add_explicit(v11 + 10, 1u, memory_order_relaxed);
  sub_29AE7C960(a3, v19, &v18, &v15);
  *a4 = v15;
  v15 = 0uLL;
  sub_29A186B14(v19);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AE7C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStIsEnabledSharedVertexPrimvar(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A174F3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F3B0))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_SHARED_VERTEX_PRIMVAR);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A174F3A8 = *v2 == 1;
    __cxa_guard_release(&qword_2A174F3B0);
  }

  return byte_2A174F3A8;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStComputeSharedPrimvarId(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v22 = (*(**v5 + 32))();
    a1 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v22, 8, a1);
    if ((*(**v5 + 72))())
    {
      (*(**v5 + 80))(&v18);
      while (v18)
      {
        while (1)
        {
          v20 = (*(**v5 + 32))();
          a1 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v20, 8, a1);
          (*(*v18 + 80))(&v21);
          v7 = v21;
          v21 = 0uLL;
          v8 = *(&v18 + 1);
          v18 = v7;
          if (v8)
          {
            break;
          }

          if (!v7)
          {
            goto LABEL_11;
          }
        }

        sub_29A014BEC(v8);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }
      }

LABEL_11:
      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }
    }

    v5 += 16;
  }

  v9 = *a3;
  v10 = *(a3 + 8);
  if (*a3 != v10)
  {
    do
    {
      if (*v9)
      {
        if (v11)
        {
          v12 = v9[1];
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          Interpolation = pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::GetInterpolation(v11);
          a1 = bswap64(0x9E3779B97F4A7C55 * (((a1 + Interpolation + (a1 + Interpolation) * (a1 + Interpolation)) >> 1) + Interpolation));
          if (v12)
          {
            sub_29A014BEC(v12);
          }
        }
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a3;
    v10 = *(a3 + 8);
  }

  v18 = 0uLL;
  v19 = 0;
  if (v9 != v10)
  {
    do
    {
      (*(**v9 + 32))(*v9, &v18);
      v9 += 3;
    }

    while (v9 != v10);
    v14 = v18;
    BYTE8(v21) = 1;
    *&v21 = a1;
    if (*(&v18 + 1) != v18)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(&v18 + 1) - v18) >> 3);
      do
      {
        v16 = v14 + 1;
        sub_29ABC697C(&v21, v14, (v14 + 1));
        v14 = v16 + 2;
        --v15;
      }

      while (v15);
      a1 = v21;
    }
  }

  *&v21 = &v18;
  sub_29ABC6FA0(&v21);
  return bswap64(0x9E3779B97F4A7C55 * a1);
}

void sub_29AE7C754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v5 = *v2;
      v2 += 3;
      result = (*(*v5 + 32))(v5, a2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_29AE7C804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29AE75CE8(&v7, a3, *(a1 + 8), a2);
    sub_29ABEEA50(a1, v5);
  }

  return a2;
}

pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *sub_29AE7C85C(atomic_ullong *a1)
{
  result = sub_29AE7C8A4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::~HdMaterialTagTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *sub_29AE7C8A4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::HdMaterialTagTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AE7C8E8(uint64_t a1, unint64_t a2, int *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A19CAA8(a1);
  v7 = a3;
  sub_29A19CAF8(a1, a2, &v7);
  return a1;
}

void *sub_29AE7C960@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE7C9D4(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE7C9D4(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

void *sub_29AE7CA38()
{
  v0 = operator new(0x10uLL);
  *v0 = 0;
  v0[1] = 0;
  pxrInternal__aapl__pxrReserved__::HdStPackageWidgetShader(&v5);
  sub_29ADCA944(&v5, &v6);
  sub_29AE7CB34(&v6, &v8);
  v1 = v8;
  v8 = 0uLL;
  *v0 = v1;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A174F380, &v2, v0);
  if (v2)
  {
    v4 = v0[1];
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F380);
  }

  return v0;
}

void sub_29AE7CAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE7CB34(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x110uLL);
  sub_29AE7CBA8(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;

  sub_29A017894(a2, v4 + 4, (v4 + 3));
}

uint64_t sub_29AE7CBA8(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2098570;
  pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::HdStGLSLFXShader((a1 + 24), a2);
  return a1;
}

void sub_29AE7CC24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE7CC74@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X2>, unsigned __int8 *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE7CCE8(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE7CCE8(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4);
  return a1;
}

void *sub_29AE7CD48@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X2>, unsigned __int8 *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE7CDBC(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE7CDBC(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4);
  return a1;
}

void *sub_29AE7CE1C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, int *a3@<X3>, unsigned __int8 *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AE7CE98(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE7CE98(void *a1, uint64_t *a2, uint64_t a3, int *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

void *sub_29AE7CEFC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, int *a3@<X3>, unsigned __int8 *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AE7CF78(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE7CF78(void *a1, uint64_t *a2, uint64_t a3, int *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

void *sub_29AE7CFDC@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE7D050(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE7D050(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdStIsSupportedPtexTexture(const char *a1)
{
  v1 = a1[23];
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = *(a1 + 1);
  }

  if (v2 < 4)
  {
    return 0;
  }

  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = &v3[v2];
  if (!strcmp(&v3[v2 - 4], ".ptx"))
  {
    return 1;
  }

  if (v2 == 4)
  {
    return 0;
  }

  return strcmp(v4 - 5, ".ptex") == 0;
}

double pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::HdStPtexTextureObject(pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(this, a2, a3);
  *v3 = &unk_2A20985C0;
  *(v3 + 14) = -1;
  *(v3 + 68) = 0;
  *(v3 + 60) = 0;
  result = 0.0;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  v3[18] = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(this, a2, a3);
  *v3 = &unk_2A20985C0;
  *(v3 + 14) = -1;
  *(v3 + 68) = 0;
  *(v3 + 60) = 0;
  result = 0.0;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  v3[18] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::~HdStPtexTextureObject(pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *this)
{
  pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_DestroyTextures(this);
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::~HdStPtexTextureObject(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_DestroyTextures(pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (result)
  {
    v3 = result;
    if (*(this + 15))
    {
      result = (*(*result + 56))(result, this + 120);
    }

    v5 = *(this + 17);
    v4 = this + 136;
    if (v5)
    {
      v6 = *(*v3 + 56);

      return v6(v3, v4);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_Load(pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_DestroyTextures(this);
  *(this + 14) = -1;
  if ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  PremultiplyAlpha = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetPremultiplyAlpha(this, *(this + 5));
  v5 = sub_29B26CDAC(1, 0x8000000, PremultiplyAlpha, 0, 0);
  v45 = v5;
  if (v5)
  {
    v43[0] = 0;
    v43[1] = 0;
    v44 = 0;
    v7 = EmptyString;
    if (*(EmptyString + 23) < 0)
    {
      v7 = *EmptyString;
    }

    v8 = (*(*v5 + 40))(v5, v7, v43);
    v42 = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::HdStPtexMipmapTextureLoader(&v34, v8, 2048, -1, *(this + 6), 1);
      v10 = v41;
      if (v41)
      {
        v11 = -858993459 * ((v35 - v34) >> 2);
        *(this + 11) = (((v11 + 5460) / 0x1555uLL) << 32) | 0x3FFF;
        v12 = v40;
        if (v40)
        {
          v13 = (*(*v42 + 88))(v42);
          v14 = (*(*v42 + 48))(v42);
          if (v14 > 3)
          {
            v15 = 0;
          }

          else
          {
            v15 = dword_29B7109A0[v14];
          }

          Format = pxrInternal__aapl__pxrReserved__::HioGetFormat(v13, v15, 0);
          *(this + 60) = v39;
          v18 = (v38 - v37) >> 3;
          *(this + 17) = 1;
          *(this + 18) = v18;
          HgiFormat = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetHgiFormat(Format, 0, v19);
          *(this + 14) = HgiFormat;
          if (HgiFormat == -1)
          {
            v32[0] = "hdSt/ptexTextureObject.cpp";
            v32[1] = "_Load";
            v32[2] = 199;
            v32[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_Load()";
            v33 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v32, "Unsupported texture format for PTEX", v21);
          }

          else
          {
            HioToHgiConversion = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetHioToHgiConversion(Format, 0, v21);
            v23 = *(this + 18);
            v24 = pxrInternal__aapl__pxrReserved__::HgiGetDataSize(*(this + 14), this + 15) * v23;
            *(this + 10) = v24;
            v25 = operator new[](v24);
            bzero(v25, v24);
            v26 = *(this + 13);
            *(this + 13) = v25;
            if (v26)
            {
              operator delete[](v26);
            }

            if (HioToHgiConversion)
            {
              HioToHgiConversion(v12, *(this + 15) * *(this + 18) * *(this + 16), *(this + 13));
            }

            else
            {
              memcpy(*(this + 13), v12, *(this + 10));
            }

            if ((atomic_load_explicit(&qword_2A174F3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F3E0))
            {
              qword_2A174F3D8 = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(19, 0, 0);
              __cxa_guard_release(&qword_2A174F3E0);
            }

            v27 = qword_2A174F3D8;
            v28 = qword_2A174F3D8 * *(this + 23) * *(this + 22);
            *(this + 12) = v28;
            v29 = operator new[](v28);
            bzero(v29, v28);
            v30 = *(this + 14);
            *(this + 14) = v29;
            if (v30)
            {
              operator delete[](v30);
              v29 = *(this + 14);
              v27 = qword_2A174F3D8;
            }

            memcpy(v29, v10, 3 * v11 * v27);
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::~HdStPtexMipmapTextureLoader(&v34);
    }

    else
    {
      v34 = "hdSt/ptexTextureObject.cpp";
      v35 = "_Load";
      v36 = 145;
      v37 = "virtual void pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_Load()";
      LOBYTE(v38) = 0;
      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v16 = v43;
      if (v44 < 0)
      {
        v16 = v43[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v34, "Unable to open ptex %s : %s", v9, EmptyString, v16);
    }

    sub_29AE7D7BC(&v42);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }
  }

  else
  {
    v34 = "hdSt/ptexTextureObject.cpp";
    v35 = "_Load";
    v36 = 134;
    v37 = "virtual void pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_Load()";
    LOBYTE(v38) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v34, "Unable to create PtexCache", v6);
  }

  return sub_29AE7D814(&v45);
}

void sub_29AE7D744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_guard_abort(&qword_2A174F3E0);
  pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::~HdStPtexMipmapTextureLoader(va);
  sub_29AE7D7BC((v15 - 104));
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
  }

  sub_29AE7D814((v15 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE7D7BC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t *sub_29AE7D814(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_Commit(pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (Hgi || (sub_29B2CA7D4(v35) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::_DestroyTextures(this);
    if (*(this + 14) == -1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v30 = 0;
      *&v31[4] = xmmword_29B70A5A0;
      *&v31[20] = xmmword_29B70A5B0;
      *&v31[36] = 0x1000100000000;
      *v31 = 0;
      v32 = 1;
      v33 = 0;
      v34 = 0;
      MEMORY[0x29C2C1A60](__p, "PtexTextureFallback");
      *v31 = 0x200000008;
      *&v31[24] = xmmword_29B710980;
      *&v31[40] = 65537;
      v28 = -16777216;
      v33 = 4;
      v34 = &v28;
      *(this + 15) = (*(*Hgi + 48))(Hgi, __p);
      *(this + 16) = v18;
      v21[0] = 0;
      v21[1] = 0;
      *v23 = 0;
      v22 = 0;
      *&v23[4] = xmmword_29B70A5A0;
      *v24 = xmmword_29B70A5B0;
      *&v24[16] = 0x1000100000000;
      v25 = 1;
      v26 = 0;
      v27 = 0;
      MEMORY[0x29C2C1A60](v21, "PtexLayoutTextureFallback");
      *&v24[4] = xmmword_29B710990;
      *v23 = 0x1300000008;
      *&v24[20] = 65537;
      v20 = 0;
      v26 = 4;
      v27 = &v20;
      *(this + 17) = (*(*Hgi + 48))(Hgi, v21);
      *(this + 18) = v19;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *&v31[8] = xmmword_29B6C6720;
      v32 = 1;
      pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(v21, this, (this + 32));
      v3 = *Hgi;
      v4 = *(this + 10);
      v5 = *(this + 13);
      v6 = *(this + 14);
      *__p = *v21;
      v30 = v22;
      *&v31[28] = *(this + 60);
      v8 = *(this + 17);
      v7 = *(this + 18);
      *&v31[24] = 4;
      *&v31[36] = v8;
      *&v31[40] = v7;
      *v31 = 8;
      *&v31[4] = v6;
      *&v31[42] = 1;
      v33 = v4;
      v34 = v5;
      *(this + 15) = (*(v3 + 48))(Hgi, __p);
      *(this + 16) = v9;
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      *&v31[8] = xmmword_29B6C6720;
      v32 = 1;
      pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(v21, this, (this + 32));
      v10 = *Hgi;
      v11 = *(this + 12);
      v12 = *(this + 14);
      v14 = *(this + 22);
      v13 = *(this + 23);
      *__p = *v21;
      v30 = v22;
      *&v31[24] = 3;
      *&v31[28] = v14;
      *&v31[32] = 0x100000001;
      *&v31[40] = v13;
      *v31 = 0x1300000008;
      *&v31[42] = 1;
      v33 = v11;
      v34 = v12;
      *(this + 17) = (*(v10 + 48))(Hgi, __p);
      *(this + 18) = v15;
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      v16 = *(this + 13);
      *(this + 13) = 0;
      if (v16)
      {
        operator delete[](v16);
      }

      v17 = *(this + 14);
      *(this + 14) = 0;
      if (v17)
      {
        operator delete[](v17);
      }
    }
  }
}

void sub_29AE7DBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdRenderBuffer::HdRenderBuffer(this, a3);
  *v4 = &unk_2A2098618;
  *(v4 + 2) = a2;
  *(v4 + 3) = 0x4FFFFFFFFLL;
  result = 0.0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 16) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = pxrInternal__aapl__pxrReserved__::ArchAlignedFree;
  return result;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::HdRenderBuffer::HdRenderBuffer(this, a3);
  *v4 = &unk_2A2098618;
  *(v4 + 2) = a2;
  *(v4 + 3) = 0x4FFFFFFFFLL;
  result = 0.0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 16) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = pxrInternal__aapl__pxrReserved__::ArchAlignedFree;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::~HdStRenderBuffer(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this)
{
  *this = &unk_2A2098618;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(this + 10))();
  }

  v3 = *(this + 7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderBuffer::~HdRenderBuffer(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::~HdStRenderBuffer(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::Sync(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens))
    {
      sub_29AE7EA14(&pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens);
    }

    (*(*a2 + 120))(&v10, a2, this + 8);
    if (sub_29A3F94B8(&v10))
    {
      if ((v11 & 4) != 0)
      {
        v9 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v9 = &v10;
      }

      *(this + 7) = *v9;
    }

    sub_29A186B14(&v10);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderBuffer::Sync(this, a2, a3, a4);
}

void sub_29AE7DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetTextureIdentifier(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this@<X0>, int a3@<W1>)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 8));
  if (*(String + 23) < 0)
  {
    sub_29A008D14(&__dst, *String, String[1]);
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = *String;
  __dst.__r_.__value_.__r.__words[2] = String[2];
  *&__dst.__r_.__value_.__l.__data_ = v9;
  if (a3)
  {
LABEL_5:
    std::string::append(&__dst, " [MSAA]");
  }

LABEL_6:
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("[%p] ", v7, v8, this);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&__dst, v10, v11);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(__p, &__dst);
  v12 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier::HdStDynamicUvSubtextureIdentifier(v12);
  v14 = v12;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(a1, __p, &v14);
  v13 = v14;
  v14 = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29AE7E038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::Allocate(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this, uint64_t a2, unsigned int a3, int a4)
{
  *(this + 6) = a3;
  if (a3 != -1)
  {
    if (*(this + 4))
    {
      goto LABEL_17;
    }

    v8 = *(this + 2);
    pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetTextureIdentifier(&v26, this, 0);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureObject(v8, &v26, 0, lpsrc);
    v9 = lpsrc[0];
    {
      v10 = lpsrc[1];
      if (lpsrc[1])
      {
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = *(this + 5);
    *(this + 4) = v9;
    *(this + 5) = v10;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (lpsrc[1])
    {
      sub_29A014BEC(lpsrc[1]);
    }

    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v26);
    if (*(this + 4))
    {
LABEL_17:
      if (!a4)
      {
        v17 = *(this + 7);
        *(this + 6) = 0;
        *(this + 7) = 0;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        goto LABEL_32;
      }

      if (*(this + 6))
      {
        goto LABEL_32;
      }

      v14 = *(this + 2);
      pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetTextureIdentifier(&v26, this, 1);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureObject(v14, &v26, 0, lpsrc);
      v15 = lpsrc[0];
      {
        v16 = lpsrc[1];
        if (lpsrc[1])
        {
          atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v16 = 0;
      }

      v19 = *(this + 7);
      *(this + 6) = v15;
      *(this + 7) = v16;
      if (v19)
      {
        sub_29A014BEC(v19);
      }

      if (lpsrc[1])
      {
        sub_29A014BEC(lpsrc[1]);
      }

      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v26);
      if (*(this + 6))
      {
LABEL_32:
        lpsrc[0] = 0;
        lpsrc[1] = 0;
        *v30 = 0;
        v29 = 0;
        *&v30[4] = xmmword_29B70A5A0;
        v31 = xmmword_29B70A5B0;
        v32 = 0x1000100000000;
        v33 = 1;
        v34 = 0;
        v35 = 0;
        sub_29AE7E498((this + 32), &v26);
        v20 = *(a2 + 8);
        *lpsrc = v26;
        v29 = v27;
        *(&v31 + 1) = *a2;
        LODWORD(v32) = *(a2 + 8);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        DWORD1(v31) = v21;
        *&v30[4] = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(a3);
        NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((this + 8));
        if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(NameToken, v23))
        {
          v25 = 10;
        }

        else if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(NameToken, v24))
        {
          v25 = 14;
        }

        else
        {
          v25 = 9;
        }

        *v30 = v25;
        v33 = 1;
        sub_29AE7E510(this + 4, lpsrc);
        if (a4)
        {
          sub_29AE7E498((this + 48), &v26);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(lpsrc[0]);
          }

          *lpsrc = v26;
          v29 = v27;
          v33 = *(this + 7);
          sub_29AE7E510(this + 6, lpsrc);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(lpsrc[0]);
        }

        return 1;
      }

      lpsrc[0] = "hdSt/renderBuffer.cpp";
      lpsrc[1] = "Allocate";
      v18 = 150;
    }

    else
    {
      lpsrc[0] = "hdSt/renderBuffer.cpp";
      lpsrc[1] = "Allocate";
      v18 = 136;
    }

    v29 = v18;
    *v30 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::Allocate(const GfVec3i &, const HdFormat, const BOOL)";
    v30[8] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(lpsrc, 1, "Expected HdStDynamicUvTextureObject");
    return 0;
  }

  v11 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  result = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (result)
  {
    sub_29A014BEC(result);
    return 0;
  }

  return result;
}

uint64_t *sub_29AE7E498@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 32) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    result = ((*(*a1 + 32) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

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

uint64_t sub_29AE7E510(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*(v4 + 72))
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(v4 + 72));
    result = pxrInternal__aapl__pxrReserved__::operator==(Descriptor, a2);
    if (result)
    {
      return result;
    }

    v4 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_CreateTexture(v4, a2);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::_Deallocate(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this)
{
  v2 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::Map(atomic_uint *this)
{
  atomic_fetch_add(this + 16, 1u);
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v15 = *(v1 + 72);
  v3 = *(this + 2);
  if (!v3)
  {
    v13[0] = "hdSt/renderBuffer.cpp";
    v13[1] = "Map";
    v13[2] = 199;
    v13[3] = "virtual void *pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::Map()";
    v14 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "_resourceRegistry", 0))
    {
      return 0;
    }

    v3 = *(this + 2);
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v3);
  if (!Hgi && (sub_29B2CA858(v13) & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  pxrInternal__aapl__pxrReserved__::HdStTextureUtils::HgiTextureReadback(Hgi, &v15, &v12, &v10);
  v5 = v10;
  v10 = 0;
  v6 = *(this + 9);
  *(this + 9) = v5;
  if (v6)
  {
    (*(this + 10))();
    v7 = v10;
    v8 = v11;
    *(this + 10) = v11;
    v10 = 0;
    if (v7)
    {
      v8(v7);
    }
  }

  else
  {
    *(this + 10) = v11;
  }

  return *(this + 9);
}

void *pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetResource@<X0>(void *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = *(this + 6);
    if (v4)
    {
LABEL_3:
      a3[1] = &off_2A20986C0;
      this = operator new(0x18uLL);
      *this = *(v4 + 72);
      atomic_store(0, this + 4);
      *a3 = this;
      atomic_fetch_add_explicit(this + 4, 1u, memory_order_relaxed);
      return this;
    }
  }

  else
  {
    v4 = *(this + 4);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  a3[1] = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetWidth(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 72)) != 0)
  {
    v3 = (pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v2) + 52);
  }

  else
  {
    v3 = &dword_29B710A40;
  }

  return *v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetHeight(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 72)) != 0)
  {
    v3 = (pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v2) + 52);
  }

  else
  {
    v3 = &dword_29B710A40;
  }

  return v3[1];
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetDepth(pxrInternal__aapl__pxrReserved__::HdStRenderBuffer *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 72)) != 0)
  {
    v3 = (pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v2) + 52);
  }

  else
  {
    v3 = &dword_29B710A40;
  }

  return v3[2];
}

uint64_t *sub_29AE7E844(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AE7E860(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AE7E888(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unsigned int *sub_29AE7E9C0@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A20986C0;
  result = operator new(0x18uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType *sub_29AE7EA14(atomic_ullong *a1)
{
  result = sub_29AE7EA5C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType::~HdStRenderBufferTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType *sub_29AE7EA5C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType::HdStRenderBufferTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AE7EAA0(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_TINY_PRIM_CULLING))
  {
    sub_29B2CA8A4();
  }
}

void sub_29AE7EAD0(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_MAX_LIGHTS))
  {
    sub_29B2CA8D8();
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::SUPPORTED_RPRIM_TYPES(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174F400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F400))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v2)
    {
      v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v3 = *(v2 + 7);
    v12 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v5 = *(v4 + 10);
    v13 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = *(v6 + 13);
    v14 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v9 = *(v8 + 15);
    v15 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174F3E8 = 0;
    unk_2A174F3F0 = 0;
    qword_2A174F3F8 = 0;
    sub_29A12EF7C(&qword_2A174F3E8, &v12, &v16, 4uLL);
    for (i = 24; i != -8; i -= 8)
    {
      v11 = *(&v12 + i);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_guard_release(&qword_2A174F400);
  }

  return &qword_2A174F3E8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::SUPPORTED_SPRIM_TYPES(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  v40 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174F420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F420))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v2)
    {
      v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v3 = *(v2 + 17);
    v28 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v5 = *(v4 + 18);
    v29 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = *(v6 + 38);
    v30 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v9 = *(v8 + 19);
    v31 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v10)
    {
      v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v11 = *(v10 + 30);
    v32 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v13 = *(v12 + 27);
    v33 = v13;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 &= 0xFFFFFFFFFFFFFFF8;
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v14)
    {
      v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v15 = *(v14 + 28);
    v34 = v15;
    if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 &= 0xFFFFFFFFFFFFFFF8;
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v16)
    {
      v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v17 = *(v16 + 29);
    v35 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v18)
    {
      v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v19 = *(v18 + 34);
    v36 = v19;
    if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v20)
    {
      v20 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v21 = *(v20 + 35);
    v37 = v21;
    if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v22)
    {
      v22 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v23 = *(v22 + 36);
    v38 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v38 &= 0xFFFFFFFFFFFFFFF8;
    }

    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v24)
    {
      v24 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v25 = *(v24 + 26);
    v39 = v25;
    if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174F408 = 0;
    unk_2A174F410 = 0;
    qword_2A174F418 = 0;
    sub_29A12EF7C(&qword_2A174F408, &v28, &v40, 0xCuLL);
    for (i = 88; i != -8; i -= 8)
    {
      v27 = *(&v28 + i);
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_guard_release(&qword_2A174F420);
  }

  return &qword_2A174F408;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  memset(v1, 0, sizeof(v1));
  v2 = 1065353216;
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate(this, v1);
}

{
  memset(v1, 0, sizeof(v1));
  v2 = 1065353216;
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate(this, v1);
}

void sub_29AE7F68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  if ((a52 & 7) != 0)
  {
    atomic_fetch_add_explicit((a52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a51 < 0)
  {
    operator delete(__p);
  }

  do
  {
    v53 -= 6;
    sub_29AE7F844(v53);
  }

  while (v53 != &a10);
  sub_29AE81DE4((v52 + 136), 0);
  sub_29AE81DA8((v52 + 128), 0);
  sub_29AE81EA0(&a10);
  v55 = *(v52 + 88);
  if (v55)
  {
    sub_29A014BEC(v55);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(v52);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE7F844(uint64_t a1)
{
  sub_29A186B14(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetRenderSettingDescriptors@<X0>(char *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  return sub_29AE8245C(a1, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetRenderStats@<X0>(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetResourceAllocation(this[10], a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v3)
  {
    v3 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v3 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v3 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a2, EmptyString);
  v7 = v6;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a2);
  if (v7 != v9 || (v7 ? (v10 = v5 == result) : (v10 = 1), !v10))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v11)
    {
      v11 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    if ((*(v11 + 35) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = ((*(v11 + 35) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
    }

    v14 = 0;
    v15[0] = &v14;
    v13 = sub_29AE7FA3C(a2, v12, v15);
    v15[0] = (*sub_29AC1F544((v5 + 56)) + v13);
    v15[1] = &unk_2A2044983;
    sub_29A18606C((v5 + 56), v15);
    return sub_29A186B14(v15);
  }

  return result;
}

uint64_t sub_29AE7FA3C(uint64_t *a1, const void **a2, int **a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v7 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v7 == v9 && (!v7 || v5 == v8))
  {
    return **a3;
  }

  v10 = v5 + 56;
  if ((sub_29AC03EF0((v5 + 56)) & 1) == 0)
  {
    return **a3;
  }

  v11 = *(v5 + 64);
  if ((v11 & 4) != 0)
  {
    v10 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 56);
  }

  return *v10;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::~HdStRenderDelegate(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  sub_29AE81DE4(this + 17, 0);
  sub_29AE81DA8(this + 16, 0);
  v3 = (this + 96);
  sub_29AE81EA0(&v3);
  v2 = *(this + 11);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::~HdStRenderDelegate(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::SetDrivers(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 80))
  {
    v17 = "hdSt/renderDelegate.cpp";
    v18 = "SetDrivers";
    v19 = 238;
    v20 = "virtual void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::SetDrivers(const HdDriverVector &)";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Cannot set HdDriver twice for a render delegate.");
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*a2 != v5)
    {
      while (1)
      {
        v6 = *v4;
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
        if (!v7)
        {
          v7 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
        }

        if ((*(v7 + 1) ^ *v6) <= 7)
        {
          v8 = v6 + 1;
          if (sub_29AE7FE54((v6 + 1)))
          {
            break;
          }
        }

        if (++v4 == v5)
        {
          goto LABEL_14;
        }
      }

      v9 = v6[2];
      if ((v9 & 4) != 0)
      {
        v8 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v6 + 1);
      }

      *(a1 + 120) = *v8;
    }

LABEL_14:
    if (!*(a1 + 120))
    {
      sub_29B2CA90C(&v17, a2, a3);
    }

    if ((atomic_load_explicit(byte_2A174F450, memory_order_acquire) & 1) == 0)
    {
      sub_29B2CA974();
    }

    v22 = *(a1 + 120);
    std::mutex::lock(&qword_2A174F458);
    v10 = sub_29AC246C0(&qword_2A174F498, &v22);
    if (v10)
    {
      sub_29A014C58(&v16, v10 + 3);
    }

    else
    {
      sub_29A0ECEEC(&v17, "hdSt", "new HdStResourceRegistry");
      v11 = malloc(0x3300uLL);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::HdStResourceRegistry(v11, v22);
      v17 = &qword_2A174F458;
      *&v16 = v11;
      v12 = operator new(0x28uLL);
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A2098938;
      v12->__shared_owners_ = 0;
      v12[1].__vftable = v11;
      v12[1].__shared_owners_ = &qword_2A174F458;
      *(&v16 + 1) = v12;
      v17 = v22;
      v18 = v11;
      v19 = v12;
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_29AE81B2C(&qword_2A174F498, &v17, &v17);
      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v13)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::AddResourceRegistry(v13, v16);
    }

    std::mutex::unlock(&qword_2A174F458);
    v14 = v16;
    v16 = 0uLL;
    v15 = *(a1 + 88);
    *(a1 + 80) = v14;
    if (v15)
    {
      sub_29A014BEC(v15);
      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }
    }
  }
}

void sub_29AE7FDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  sub_29A014BEC(v13);
  std::mutex::unlock(&qword_2A174F458);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE7FE54(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B70CF56 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &unk_2A2095090);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetSupportedBprimTypes(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A174F440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F440))
  {
    sub_29AE7FFB4();
    __cxa_atexit(sub_29A3C73E0, &qword_2A174F428, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F440);
  }

  return &qword_2A174F428;
}

uint64_t *sub_29AE7FFB4()
{
  qword_2A174F428 = 0;
  unk_2A174F430 = 0;
  qword_2A174F438 = 0;
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v0)
  {
    v0 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v1 = sub_29A1D8028(&qword_2A174F428, v0 + 39);
  result = pxrInternal__aapl__pxrReserved__::HdStField::GetSupportedBprimTypes(v1);
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    do
    {
      result = sub_29A1D8028(&qword_2A174F428, v3++);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AE80054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetResourceRegistry@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

double pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetDefaultAovDescriptor@<D0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v4)
  {
    v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*v4 ^ *a1) <= 7)
  {
    v17 = &off_2A2042A68 + 2;
    v5 = operator new(0x14uLL);
    *v5 = 0;
    *(v5 + 1) = 0;
    atomic_store(0, v5 + 4);
    v16 = v5;
    atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
    *a2 = 11;
    *(a2 + 4) = 1;
    sub_29A186EF4((a2 + 8), &v16);
LABEL_5:
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 56) = 1065353216;
LABEL_8:
    sub_29A186B14(&v16);
    return result;
  }

  if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(a1, a1))
  {
    v17 = &unk_2A2044C63;
    LODWORD(v16) = 1065353216;
    *a2 = 12;
    *(a2 + 4) = 1;
    sub_29A186EF4((a2 + 8), &v16);
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 56) = 1065353216;
    goto LABEL_8;
  }

  if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(a1, v6))
  {
    v17 = &off_2A2098988;
    v8 = operator new(0xCuLL);
    *v8 = 1065353216;
    atomic_store(0, v8 + 2);
    v16 = v8;
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    *a2 = 28;
    *(a2 + 4) = 1;
    sub_29A186EF4((a2 + 8), &v16);
    goto LABEL_5;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v9)
  {
    v9 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v9 + 4) ^ *a1) < 8)
  {
    goto LABEL_26;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v10)
  {
    v10 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v10 + 5) ^ *a1) < 8)
  {
    goto LABEL_26;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v11)
  {
    v11 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v11 + 6) ^ *a1) < 8)
  {
    goto LABEL_26;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v12)
  {
    v12 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v12 + 7) ^ *a1) < 8)
  {
    goto LABEL_26;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v13)
  {
    v13 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v13 + 8) ^ *a1) <= 7)
  {
LABEL_26:
    v17 = &unk_2A204475B;
    LODWORD(v16) = -1;
    *a2 = 24;
    *(a2 + 4) = 1;
    sub_29A186EF4((a2 + 8), &v16);
    goto LABEL_5;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v14)
  {
    v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v14 + 10) ^ *a1) <= 7)
  {
    v17 = &off_2A2042A68 + 2;
    v15 = operator new(0x14uLL);
    *v15 = 0;
    *(v15 + 1) = 0;
    atomic_store(0, v15 + 4);
    v16 = v15;
    atomic_fetch_add_explicit(v15 + 4, 1u, memory_order_relaxed);
    *a2 = 3;
    *(a2 + 4) = 1;
    sub_29A186EF4((a2 + 8), &v16);
    goto LABEL_5;
  }

  *a2 = -1;
  *(a2 + 4) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1065353216;
  return result;
}

void sub_29AE803F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateRenderPass@<D0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = a1;
  sub_29AE828DC(&v6, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateRenderPassState@<D0>(uint64_t *__return_ptr a1@<X8>)
{
  sub_29AE829A0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdStInstancer *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateInstancer(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::HdStInstancer::HdStInstancer(v5, a2, a3);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::DestroyInstancer(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdInstancer *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStVolume *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateRprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 7) ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v7 + 10) ^ *a2) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v8)
      {
        v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v8 + 13) ^ *a2) > 7)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v9)
        {
          v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        v10 = *a2;
        if ((*(v9 + 15) ^ *a2) > 7)
        {
          v14 = "hdSt/renderDelegate.cpp";
          v15 = "CreateRprim";
          v16 = 378;
          v17 = "virtual HdRprim *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateRprim(const TfToken &, const SdfPath &)";
          v18 = 0;
          v11 = v10 & 0xFFFFFFFFFFFFFFF8;
          if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v12 = (v11 + 16);
            if (*(v11 + 39) < 0)
            {
              v12 = *v12;
            }
          }

          else
          {
            v12 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Unknown Rprim Type %s", v12);
          return 0;
        }

        else
        {
          v6 = operator new(0x1E0uLL);
          pxrInternal__aapl__pxrReserved__::HdStVolume::HdStVolume(v6, a3);
        }
      }

      else
      {
        sub_29A0ECEEC(&v14, "hdSt", "new HdStPoints");
        v6 = malloc(0x1E8uLL);
        if (v14)
        {
          pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
        }

        pxrInternal__aapl__pxrReserved__::HdStPoints::HdStPoints(v6, a3);
      }
    }

    else
    {
      sub_29A0ECEEC(&v14, "hdSt", "new HdStBasisCurves");
      v6 = malloc(0x200uLL);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
      }

      pxrInternal__aapl__pxrReserved__::HdStBasisCurves::HdStBasisCurves(v6, a3);
    }
  }

  else
  {
    sub_29A0ECEEC(&v14, "hdSt", "new HdStMesh");
    v6 = malloc(0x220uLL);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
    }

    pxrInternal__aapl__pxrReserved__::HdStMesh::HdStMesh(v6, a3);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::DestroyRprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdRprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdImageShader *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateSprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 17) ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v7 + 18) ^ *a2) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v8)
      {
        v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v8 + 38) ^ *a2) > 7)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v9)
        {
          v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v9 + 19) ^ *a2) > 7)
        {
          v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v10)
          {
            v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v10 + 30) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v11)
          {
            v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v11 + 35) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v12)
          {
            v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v12 + 36) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v13)
          {
            v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v13 + 28) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v14)
          {
            v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v14 + 29) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v15)
          {
            v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v15 + 27) ^ *a2) < 8)
          {
            goto LABEL_40;
          }

          v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v16)
          {
            v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v16 + 34) ^ *a2) > 7)
          {
            v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v18)
            {
              v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            v19 = *a2;
            if ((*(v18 + 26) ^ *a2) > 7)
            {
              v22 = "hdSt/renderDelegate.cpp";
              v23 = "CreateSprim";
              v24 = 413;
              v25 = "virtual HdSprim *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateSprim(const TfToken &, const SdfPath &)";
              v26 = 0;
              v20 = v19 & 0xFFFFFFFFFFFFFFF8;
              if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v21 = (v20 + 16);
                if (*(v20 + 39) < 0)
                {
                  v21 = *v21;
                }
              }

              else
              {
                v21 = "";
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Unknown Sprim Type %s", v21);
              return 0;
            }

            else
            {
              v6 = operator new(0x90uLL);
              pxrInternal__aapl__pxrReserved__::HdImageShader::HdImageShader(v6, a3);
            }
          }

          else
          {
LABEL_40:
            v6 = operator new(0x48uLL);
            pxrInternal__aapl__pxrReserved__::HdStLight::HdStLight(v6, a3, a2);
          }
        }

        else
        {
          sub_29A0ECEEC(&v22, "hdSt", "new HdStMaterial");
          v6 = malloc(0x118uLL);
          if (v22)
          {
            pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
          }

          pxrInternal__aapl__pxrReserved__::HdStMaterial::HdStMaterial(v6, a3);
        }
      }

      else
      {
        v6 = operator new(0x90uLL);
        pxrInternal__aapl__pxrReserved__::HdStExtComputation::HdStExtComputation(v6, a3);
      }
    }

    else
    {
      v6 = operator new(0x120uLL);
      pxrInternal__aapl__pxrReserved__::HdStDrawTarget::HdStDrawTarget(v6, a3);
    }
  }

  else
  {
    v6 = operator new(0x140uLL);
    pxrInternal__aapl__pxrReserved__::HdCamera::HdCamera(v6, a3);
  }

  return v6;
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateFallbackSprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v3 + 17) ^ *a2) <= 7)
  {
    v4 = operator new(0x140uLL);
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdCamera::HdCamera(v4, v5);
    return v4;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v6 + 18) ^ *a2) <= 7)
  {
    v4 = operator new(0x120uLL);
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdStDrawTarget::HdStDrawTarget(v4, v7);
    return v4;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v8)
  {
    v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v8 + 38) ^ *a2) <= 7)
  {
    v4 = operator new(0x90uLL);
    v9 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdStExtComputation::HdStExtComputation(v4, v9);
    return v4;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v10)
  {
    v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v10 + 19) ^ *a2) > 7)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v12 + 30) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v13)
    {
      v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v13 + 35) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v14)
    {
      v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v14 + 36) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v15)
    {
      v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v15 + 28) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v16)
    {
      v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v16 + 29) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v17)
    {
      v17 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v17 + 27) ^ *a2) < 8)
    {
      goto LABEL_40;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v18)
    {
      v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v18 + 34) ^ *a2) > 7)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v20)
      {
        v20 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v21 = *a2;
      if ((*(v20 + 26) ^ *a2) > 7)
      {
        v25[0] = "hdSt/renderDelegate.cpp";
        v25[1] = "CreateFallbackSprim";
        v25[2] = 441;
        v25[3] = "virtual HdSprim *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateFallbackSprim(const TfToken &)";
        v26 = 0;
        v23 = v21 & 0xFFFFFFFFFFFFFFF8;
        if ((v21 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v24 = (v23 + 16);
          if (*(v23 + 39) < 0)
          {
            v24 = *v24;
          }
        }

        else
        {
          v24 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v25, 1, "Unknown Sprim Type %s", v24);
        return 0;
      }

      else
      {
        v4 = operator new(0x90uLL);
        v22 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
        pxrInternal__aapl__pxrReserved__::HdImageShader::HdImageShader(v4, v22);
      }
    }

    else
    {
LABEL_40:
      v4 = operator new(0x48uLL);
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
      pxrInternal__aapl__pxrReserved__::HdStLight::HdStLight(v4, v19, a2);
    }

    return v4;
  }

  return pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::_CreateFallbackMaterialPrim(v10);
}

pxrInternal__aapl__pxrReserved__::HdStMaterial *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::_CreateFallbackMaterialPrim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  pxrInternal__aapl__pxrReserved__::HdStPackageFallbackMaterialNetworkShader(&v9);
  sub_29ADCA944(&v9, &v7);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AE82AD4(&v7, &v9);
  v5 = v9;
  v6 = v10;
  sub_29A0ECEEC(&v9, "hdSt", "new HdStMaterial");
  v1 = malloc(0x118uLL);
  v2 = v1;
  if (v9)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v1);
  pxrInternal__aapl__pxrReserved__::HdStMaterial::HdStMaterial(v2, v3);
  pxrInternal__aapl__pxrReserved__::HdStMaterial::SetMaterialNetworkShader(v2, &v5);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return v2;
}

void sub_29AE80FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::DestroySprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdSprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStField *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateBprim(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (pxrInternal__aapl__pxrReserved__::HdStField::IsSupportedBprimType(a2, a2))
  {
    v6 = operator new(0x38uLL);
    pxrInternal__aapl__pxrReserved__::HdStField::HdStField(v6, a3, a2);
  }

  else
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v8 = *a2;
    if ((*(v7 + 39) ^ *a2) > 7)
    {
      v12[0] = "hdSt/renderDelegate.cpp";
      v12[1] = "CreateBprim";
      v12[2] = 462;
      v12[3] = "virtual HdBprim *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateBprim(const TfToken &, const SdfPath &)";
      v13 = 0;
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Unknown Bprim Type %s", v10);
      return 0;
    }

    else
    {
      v6 = operator new(0x58uLL);
      pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(v6, this[10], a3);
    }
  }

  return v6;
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateFallbackBprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdStField::IsSupportedBprimType(a2, a2))
  {
    v4 = operator new(0x38uLL);
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdStField::HdStField(v4, v5, a2);
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = *a2;
    if ((*(v6 + 39) ^ *a2) > 7)
    {
      v13[0] = "hdSt/renderDelegate.cpp";
      v13[1] = "CreateFallbackBprim";
      v13[2] = 477;
      v13[3] = "virtual HdBprim *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateFallbackBprim(const TfToken &)";
      v14 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Unknown Bprim Type %s", v11);
      return 0;
    }

    else
    {
      v4 = operator new(0x58uLL);
      v8 = *(this + 10);
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
      pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(v4, v8, v9);
    }
  }

  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::DestroyBprim(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdBprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CommitResources(pxrInternal__aapl__pxrReserved__::HdResourceRegistry **this, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v4, "virtual void pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CommitResources(HdChangeTracker *)");
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::_ApplyTextureSettings(this);
  pxrInternal__aapl__pxrReserved__::HdResourceRegistry::Commit(this[10]);
  v3 = this[16];
  if (*(v3 + 24) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdResourceRegistry::GarbageCollect(this[10]);
    *(v3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GarbageCollectDispatchBuffers(this[10]);
  pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::GarbageCollect(this[17]);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v4);
}

uint64_t **pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::_ApplyTextureSettings(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  if (!v2)
  {
    v2 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  }

  v3 = sub_29AE8176C(this, v2 + 24, &pxrInternal__aapl__pxrReserved__::HdStVolume::defaultMaxTextureMemoryPerField);
  v4 = *(this + 10);
  v5 = vcvts_n_u32_f32(fmaxf(v3, 0.0), 0x14uLL);

  return pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SetMemoryRequestForTextureType(v4, 1, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::IsSupported(pxrInternal__aapl__pxrReserved__::HdStRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = 0;
  result = pxrInternal__aapl__pxrReserved__::Hgi::IsSupported(&v3, a2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetShaderSourceTypes@<X0>(uint64_t *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v2)
  {
    v2 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  v3 = *v2;
  v11 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v4;
    }
  }

  v5 = atomic_load(&qword_2A174F448);
  if (!v5)
  {
    v5 = sub_29AE82BA4();
  }

  v6 = *v5;
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v10 = *(&v11 + i);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetMaterialRenderContexts@<X0>(uint64_t *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v2)
  {
    v2 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  v3 = *v2;
  v11 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v4;
    }
  }

  v5 = atomic_load(&qword_2A174F448);
  if (!v5)
  {
    v5 = sub_29AE82BA4();
  }

  v6 = *v5;
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v10 = *(&v11 + i);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

float sub_29AE8176C(uint64_t a1, uint64_t a2, std::type_info *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(&v8);
  v4 = sub_29A3F9D68(&v8);
  if (sub_29A3F9DF4(v4))
  {
    type_name = v4->__type_name;
    if ((type_name & 4) != 0)
    {
      a3 = (*((type_name & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      a3 = v4;
    }
  }

  v6 = *&a3->__vftable;
  sub_29A186B14(&v8);
  return v6;
}

void sub_29AE81854(std::mutex *a1)
{
  sub_29AE81890(&a1[1]);

  std::mutex::~mutex(a1);
}

void **sub_29AE81890(void **a1)
{
  sub_29AE818CC(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE818CC(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AE81914(std::mutex **a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  v3 = *a1;
  std::mutex::lock(*a1);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::RemoveResourceRegistry(v4, a2);
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a2);
  sub_29AE81A48(&v3[1].__m_.__sig, &Hgi);
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::~HdStResourceRegistry(a2);
    free(v5);
  }

  std::mutex::unlock(v3);
}

void sub_29AE819B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE81A04(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2098978))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AE81A48(void *a1, void *a2)
{
  result = sub_29AC246C0(a1, a2);
  if (result)
  {
    sub_29AE81A80(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AE81A80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29AE81ACC(&v6, v3);
  }

  return v2;
}

void sub_29AE81ACC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_29AE81B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v8;
  *(i + 1) = *a3;
  i[4] = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}