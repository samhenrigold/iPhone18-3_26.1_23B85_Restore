void sub_29ACC2884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 88);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174B9B0);
  v32 = *(v29 - 120);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v33 = *(v29 - 136);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v29 - 112);
  _Unwind_Resume(a1);
}

void sub_29ACC2AD8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens))
  {
    sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  (*(*v5 + 24))(&v46, v5);
  sub_29ABC3244(&v46, &v42);
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  v7 = v42;
  v8 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = v7;
    v41 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    sub_29A014BEC(v8);
  }

  else
  {
    v40 = v42;
    v41 = 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v40))
  {
    goto LABEL_188;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v9)
  {
    v9 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v9 + 1) ^ *a2) <= 7)
  {
    v67 = 0;
    pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettings(&v40, &v46);
    if (v46)
    {
      pxrInternal__aapl__pxrReserved__::_ToDictionary(&v46, &v61);
      *(a3 + 8) = &off_2A2042030;
      sub_29A187864(a3, &v61);
      sub_29A184A10(&v61, 0);
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      sub_29A184A10(&v67, 0);
      goto LABEL_189;
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }

    sub_29A184A10(&v67, 0);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v10)
  {
    v10 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*v10 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetActive(&v40, &v46);
    if (v46)
    {
      v11 = (*(*v46 + 4))(v46, 0.0);
      *(a3 + 8) = &unk_2A20443C3;
      *a3 = v11;
      goto LABEL_24;
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v13)
  {
    v13 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v13 + 2) ^ *a2) > 7)
  {
LABEL_155:
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v26)
    {
      v26 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v26 + 3) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposes(&v40, &v67);
      if (v67)
      {
        (*(*v67 + 32))(&v46, 0.0);
        *(a3 + 8) = off_2A2047A80;
        sub_29A18ECC8(a3, &v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      if (v68)
      {
        sub_29A014BEC(v68);
      }
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v27)
    {
      v27 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v27 + 4) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposes(&v40, &v67);
      if (v67)
      {
        (*(*v67 + 32))(&v46, 0.0);
        *(a3 + 8) = off_2A2047A80;
        sub_29A18ECC8(a3, &v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      if (v68)
      {
        sub_29A014BEC(v68);
      }
    }

    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v28)
    {
      v28 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v28 + 5) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpace(&v40, &v46);
      if (v46)
      {
        (*(*v46 + 4))(&v67, 0.0);
        v29 = v67;
        *a3 = v67;
        *(a3 + 8) = &off_2A2044E88 + 1;
        if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_24:
        v12 = v47;
        if (!v47)
        {
          goto LABEL_189;
        }

LABEL_167:
        sub_29A014BEC(v12);
        goto LABEL_189;
      }

      if (v47)
      {
        sub_29A014BEC(v47);
      }
    }

    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v30)
    {
      v30 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v30 + 6) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetShutterInterval(&v40, &v46);
      if (v46)
      {
        v31 = (*(*v46 + 4))(v46, 0.0);
        v33 = v32;
        *(a3 + 8) = &off_2A20426D0 + 2;
        v34 = operator new(0x18uLL);
        *v34 = v31;
        *(v34 + 1) = v33;
        atomic_store(0, v34 + 4);
        *a3 = v34;
        atomic_fetch_add_explicit(v34 + 4, 1u, memory_order_relaxed);
        goto LABEL_24;
      }

      if (v47)
      {
        sub_29A014BEC(v47);
      }
    }

LABEL_188:
    *(a3 + 8) = 0;
    goto LABEL_189;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProducts(&v40, &v38);
  if (!pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v38))
  {
    if (v39)
    {
      sub_29A014BEC(v39);
    }

    goto LABEL_155;
  }

  v35 = v38;
  v36 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NumElements = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v35);
  memset(v37, 0, sizeof(v37));
  sub_29ACCA484(v37, NumElements);
  if (NumElements)
  {
    for (i = 0; i != NumElements; ++i)
    {
      sub_29AC0DDFC(&v57, &v35);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v57))
      {
        v44 = v57;
        v45 = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v46);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v46 + 1);
        memset(v48, 0, sizeof(v48));
        v47 = 0u;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v49);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v50);
        v51 = 0;
        v52 = 0;
        v53 = xmmword_29B480F70;
        v56 = 0;
        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPath(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetType(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *&v47 = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetName(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((BYTE8(v47) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(&v47 + 1) = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetResolution(&v67, &v44);
        if (v67)
        {
          v48[0] = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetRenderVars(&v44, &v63);
        if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v63))
        {
          v59 = v63;
          v60 = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v59);
          v61 = 0uLL;
          v62 = 0;
          sub_29ACCA870(&v61, v16);
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              sub_29AC0DDFC(&v71, &v59);
              if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v71))
              {
                v65 = v71;
                v66 = v72;
                if (v72)
                {
                  atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v67);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v67 + 1);
                v70 = 0u;
                v69 = 0u;
                v68 = 0u;
                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetPath(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetDataType(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  if ((v68 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  *&v68 = v73;
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceName(&v65, &v74);
                if (v74)
                {
                  v18 = (*(*v74 + 32))(&v73, 0.0);
                  v19 = (v73 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v73 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
                  std::string::operator=((&v68 + 8), v19);
                  if ((v73 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceType(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  if ((v70 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  *&v70 = v73;
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetNamespacedSettings(&v65, &v74);
                if (v74)
                {
                  pxrInternal__aapl__pxrReserved__::_ToDictionary(&v74, &v73);
                  v20 = v73;
                  v73 = 0;
                  sub_29A184A10(&v70 + 1, v20);
                  sub_29A184A10(&v73, 0);
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                sub_29ACCA958(&v61, &v67);
                sub_29A184A10(&v70 + 1, 0);
                if ((v70 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (SHIBYTE(v69) < 0)
                {
                  operator delete(*(&v68 + 1));
                }

                if ((v68 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v67 + 1);
                sub_29A1DE3A4(&v67);
                if (v66)
                {
                  sub_29A014BEC(v66);
                }
              }

              if (v72)
              {
                sub_29A014BEC(v72);
              }
            }
          }

          sub_29AC98530(&v48[1]);
          *&v48[1] = v61;
          v48[3] = v62;
          v62 = 0;
          v61 = 0uLL;
          v67 = &v61;
          sub_29AC97ABC(&v67);
          if (v60)
          {
            sub_29A014BEC(v60);
          }
        }

        if (v64)
        {
          sub_29A014BEC(v64);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetCameraPrim(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPixelAspectRatio(&v44, &v67);
        if (v67)
        {
          v50[1] = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetAspectRatioConformPolicy(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((v51 & 7) != 0)
          {
            atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v51 = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetApertureSize(&v44, &v67);
        if (v67)
        {
          LODWORD(v52) = (*(*v67 + 32))(v67, 0.0);
          HIDWORD(v52) = v21;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDataWindowNDC(&v67, &v44);
        if (v67)
        {
          LODWORD(v53) = (*(*v67 + 32))(v67, 0.0);
          *(&v53 + 4) = __PAIR64__(v23, v22);
          HIDWORD(v53) = v24;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableMotionBlur(&v44, &v67);
        if (v67)
        {
          v54 = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableDepthOfField(&v44, &v67);
        if (v67)
        {
          v55 = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetNamespacedSettings(&v44, &v67);
        if (v67)
        {
          pxrInternal__aapl__pxrReserved__::_ToDictionary(&v67, &v61);
          v25 = v61;
          *&v61 = 0;
          sub_29A184A10(&v56, v25);
          sub_29A184A10(&v61, 0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        sub_29ACCA560(v37, &v46);
        sub_29AC97A08(&v46);
        if (v45)
        {
          sub_29A014BEC(v45);
        }
      }

      if (v58)
      {
        sub_29A014BEC(v58);
      }
    }
  }

  *(a3 + 8) = &off_2A2084A30;
  sub_29ACCB0C8(a3, v37);
  v46 = v37;
  sub_29AC97984(&v46);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  v12 = v39;
  if (v39)
  {
    goto LABEL_167;
  }

LABEL_189:
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if (v43)
  {
    sub_29A014BEC(v43);
  }
}

void sub_29ACC3980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACC3C20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetFromParent((a1 + 8), &v18);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v18))
  {
    pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetResource(&v18, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = &v12;
      v15[0] = 0;
      v15[1] = 0;
      v14 = v15;
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeIdentifier(&v9, &v16);
      if (v9)
      {
        (*(*v9 + 32))(&v6, 0.0);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v6;
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetParameters(&v4, &v16);
      sub_29ACC9730(&v4, &v6);
      sub_29A5B0668(&v11, v12);
      v3 = v7;
      v11 = v6;
      v12 = v7;
      v13 = v8;
      if (v8)
      {
        v7[2] = &v12;
        v6 = &v7;
        v7 = 0;
        v8 = 0;
        v3 = 0;
      }

      else
      {
        v11 = &v12;
      }

      sub_29A5B0668(&v6, v3);
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      *(a2 + 8) = &off_2A2084E28;
      sub_29ACCE1AC(a2, &v10);
    }

    *(a2 + 8) = 0;
    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }
}

void sub_29ACC3DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29ABF2FA4(va);
  v17 = *(v15 - 56);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v15 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(a1);
}

void sub_29ACC3E54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetFromParent((a1 + 8), &v18);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v18))
  {
    pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetResource(&v18, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = &v12;
      v15[0] = 0;
      v15[1] = 0;
      v14 = v15;
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeIdentifier(&v9, &v16);
      if (v9)
      {
        (*(*v9 + 32))(&v6, 0.0);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v6;
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetParameters(&v4, &v16);
      sub_29ACC9730(&v4, &v6);
      sub_29A5B0668(&v11, v12);
      v3 = v7;
      v11 = v6;
      v12 = v7;
      v13 = v8;
      if (v8)
      {
        v7[2] = &v12;
        v6 = &v7;
        v7 = 0;
        v8 = 0;
        v3 = 0;
      }

      else
      {
        v11 = &v12;
      }

      sub_29A5B0668(&v6, v3);
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      *(a2 + 8) = &off_2A2084E28;
      sub_29ACCE1AC(a2, &v10);
    }

    *(a2 + 8) = 0;
    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }
}

void sub_29ACC4018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29ABF2FA4(va);
  v17 = *(v15 - 56);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v15 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(a1);
}

void sub_29ACC4088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetFromParent((a1 + 8), &v18);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v18))
  {
    pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetResource(&v18, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = &v12;
      v15[0] = 0;
      v15[1] = 0;
      v14 = v15;
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeIdentifier(&v9, &v16);
      if (v9)
      {
        (*(*v9 + 32))(&v6, 0.0);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v6;
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetParameters(&v4, &v16);
      sub_29ACC9730(&v4, &v6);
      sub_29A5B0668(&v11, v12);
      v3 = v7;
      v11 = v6;
      v12 = v7;
      v13 = v8;
      if (v8)
      {
        v7[2] = &v12;
        v6 = &v7;
        v7 = 0;
        v8 = 0;
        v3 = 0;
      }

      else
      {
        v11 = &v12;
      }

      sub_29A5B0668(&v6, v3);
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      *(a2 + 8) = &off_2A2084E28;
      sub_29ACCE1AC(a2, &v10);
    }

    *(a2 + 8) = 0;
    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }
}

void sub_29ACC424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29ABF2FA4(va);
  v17 = *(v15 - 56);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v15 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetPrimvar(uint64_t *a1@<X1>, atomic_uint **a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    sub_29A014BEC(v7);
  }

  else
  {
    v20 = 0;
  }

  v19 = v8;
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v19))
  {
LABEL_25:
    *(a4 + 8) = 0;
    goto LABEL_26;
  }

  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v17, &v19, a2);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v17))
  {
    goto LABEL_23;
  }

  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndexedPrimvarValue(&v17, &v15);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndices(&v17, &v13);
      if (v13)
      {
        (*(*v13 + 32))(&v11, 0.0);
        if (&v11 != a3)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }

      (*(*v15 + 16))(v15, 0.0);
      v9 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v10 = v16;
    if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(&v17, &v11);
  if (!v11)
  {
    v10 = v12;
    if (v12)
    {
LABEL_22:
      sub_29A014BEC(v10);
    }

LABEL_23:
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    goto LABEL_25;
  }

  (*(*v11 + 16))(v11, 0.0);
  v9 = v12;
  if (v12)
  {
LABEL_15:
    sub_29A014BEC(v9);
  }

LABEL_16:
  if (v18)
  {
    sub_29A014BEC(v18);
  }

LABEL_26:
  if (v20)
  {
    sub_29A014BEC(v20);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetPrimvar(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_29A0ECEEC(&v17, "hd", "VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetPrimvar(const SdfPath &, const TfToken &, VtIntArray *)");
  if (a4)
  {
    sub_29A19D79C(a4);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(a1, a2, &v14);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(&v15, &v10);
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v12, &v10);
    pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetPrimvar(&v12, a3, a4, a5);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  else
  {
    *(a5 + 8) = 0;
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29ACC4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_SamplePrimvar(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, atomic_uint **a3, unint64_t a4, uint64_t a5, void *a6, uint64_t *a7, float a8, float a9)
{
  v58 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v51, "hd", "size_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_SamplePrimvar(const SdfPath &, const TfToken &, float, float, size_t, float *, VtValue *, VtIntArray *)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(a1, a2, &v48);
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(&v49, &v46);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v46))
  {
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&__src, &v46, a3);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&__src))
    {
      if (a7)
      {
        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndexedPrimvarValue(&__src, &v39);
        v18 = v39;
        v17 = v40;
        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndices(&__src, &v39);
        v20 = v39;
        v19 = v40;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(&__src, &v39);
        v20 = 0;
        v19 = 0;
        v18 = v39;
        v17 = v40;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v20 = 0;
      v19 = 0;
    }

    if (__src_8)
    {
      sub_29A014BEC(__src_8);
    }

    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v17 = 0;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v21)
  {
    v21 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v21 + 17) ^ v48) > 7)
  {
    goto LABEL_34;
  }

  pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFromParent(&v49, &__src);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&__src))
  {
    v36 = v19;
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v42, &__src);
    (*(*v42 + 24))(&v44);
    sub_29ABE3F04(&v44, &v39);
    v18 = v39;
    v22 = v40;
    v39 = 0;
    v40 = 0;
    if (v17)
    {
      sub_29A014BEC(v17);
      if (v40)
      {
        sub_29A014BEC(v40);
      }
    }

    if (v45)
    {
      sub_29A014BEC(v45);
    }

    if (v43)
    {
      sub_29A014BEC(v43);
    }

    v17 = v22;
    v19 = v36;
  }

  else
  {
    v18 = 0;
  }

  if (__src_8)
  {
    sub_29A014BEC(__src_8);
  }

  if (!v18)
  {
LABEL_34:
    v27 = 0;
    goto LABEL_57;
  }

LABEL_27:
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v23 = v49;
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  v37 = v19;
  if (!v24)
  {
    sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  }

  (*(*v23 + 24))(&__src, v23);
  v25 = __src;
  if (__src_8)
  {
    sub_29A014BEC(__src_8);
  }

  get_deleter = v18->__get_deleter;
  if (v25)
  {
    (get_deleter)(v18, &v39, -3.4028e38, 3.4028e38);
    if (v39 == v40)
    {
      LODWORD(__src) = 0;
      sub_29A0C2184(&v39, &__src);
    }
  }

  else if ((get_deleter)(v18, &v39, a8, a9))
  {
    if (v39 == v40)
    {
      __src = "hd/sceneIndexAdapterSceneDelegate.cpp";
      __src_8 = "_SamplePrimvar";
      v55 = 2336;
      v56 = "size_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_SamplePrimvar(const SdfPath &, const TfToken &, float, float, size_t, float *, VtValue *, VtIntArray *)";
      LOBYTE(v57) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v29 = *a3 & 0xFFFFFFFFFFFFFFF8;
      if (v29)
      {
        v30 = (v29 + 16);
        if (*(v29 + 39) < 0)
        {
          v30 = *v30;
        }
      }

      else
      {
        v30 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__src, 1, "No contributing sample times returned for %s %s even though GetContributingSampleTimesForInterval indicated otherwise.", Text, v30);
      LODWORD(__src) = 0;
      sub_29A0C2184(&v39, &__src);
    }
  }

  else
  {
    LODWORD(__src) = 0;
    sub_29ACCE29C(&v39, &__src, &__src + 4, 1uLL);
  }

  v31 = v39;
  v32 = v40;
  v27 = (v40 - v39) >> 2;
  if (v27 > a4)
  {
    sub_29A0A171C(&v39, a4);
    v31 = v39;
    v32 = v40;
  }

  if (v32 != v31)
  {
    v33 = 0;
    v34 = a7;
    do
    {
      *(a5 + 4 * v33) = *(&v31->__vftable + v33);
      (v18->__on_zero_shared)(&__src, v18);
      sub_29A18606C(a6, &__src);
      sub_29A186B14(&__src);
      if (a7)
      {
        if (v20)
        {
          (v20->__on_zero_shared_weak)(&__src, v20, *(&v39->__vftable + v33));
          if (v34 != &__src)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }

        sub_29A19D79C(v34);
      }

      ++v33;
      v31 = v39;
      v34 += 5;
      a6 += 2;
    }

    while (v33 < (v40 - v39) >> 2);
  }

  if (v31)
  {
    v40 = v31;
    operator delete(v31);
  }

  v19 = v37;
LABEL_57:
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v52, v51);
  }

  return v27;
}

void sub_29ACC4C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(&a25);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetTransform(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29A0ECEEC(&v18, "hd", "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetTransform(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v15);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent(&v16, &v13);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v13))
  {
    pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v13, &v11);
    if (v11)
    {
      (*(*v11 + 32))(v10, 0.0);
      v6 = v10[5];
      a3[4] = v10[4];
      a3[5] = v6;
      v7 = v10[7];
      a3[6] = v10[6];
      a3[7] = v7;
      v8 = v10[1];
      *a3 = v10[0];
      a3[1] = v8;
      v9 = v10[3];
      a3[2] = v10[2];
      a3[3] = v9;
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }
}

void sub_29ACC4F24(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 - 96);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v1 - 72);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(v1 - 88);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v1 - 64);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::SampleTransform(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, float a3, float a4, unint64_t a5, float *a6, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a7)
{
  sub_29A0ECEEC(&v40, "hd", "virtual size_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::SampleTransform(const SdfPath &, float, float, size_t, float *, GfMatrix4d *)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v37);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent(&v38, &v35);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v35))
  {
    pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v35, &v33);
    if (v33)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v14 = v38;
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
      {
        sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
      }

      (*(*v14 + 24))(v29, v14);
      v18 = *&v29[0];
      if (*(&v29[0] + 1))
      {
        sub_29A014BEC(*(&v29[0] + 1));
      }

      v16.n128_u32[0] = -8388609;
      if (!v18)
      {
        v16.n128_f32[0] = a3;
      }

      v17.n128_u32[0] = 2139095039;
      if (!v18)
      {
        v17.n128_f32[0] = a4;
      }

      (*(*v33 + 24))(v16, v17);
      v19 = v30;
      v20 = v31;
      if (v30 == v31)
      {
        LODWORD(v29[0]) = 0;
        sub_29A0C2184(&v30, v29);
        v19 = v30;
        v20 = v31;
      }

      v21 = (v20 - v19) >> 2;
      if (v21 > a5)
      {
        sub_29A0A171C(&v30, a5);
        v19 = v30;
        v20 = v31;
      }

      if (v20 != v19)
      {
        v22 = 0;
        do
        {
          a6[v22] = *&v19[4 * v22];
          (*(*v33 + 32))(v29);
          v23 = v29[5];
          *(a7 + 4) = v29[4];
          *(a7 + 5) = v23;
          v24 = v29[7];
          *(a7 + 6) = v29[6];
          *(a7 + 7) = v24;
          v25 = v29[1];
          *a7 = v29[0];
          *(a7 + 1) = v25;
          ++v22;
          v19 = v30;
          v26 = v31 - v30;
          v27 = v29[3];
          *(a7 + 2) = v29[2];
          *(a7 + 3) = v27;
          a7 = (a7 + 128);
        }

        while (v22 < v26 >> 2);
      }

      if (v19)
      {
        v31 = v19;
        operator delete(v19);
      }
    }

    else
    {
      v21 = 0;
    }

    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v21 = 0;
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v40)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v41, v40);
  }

  return v21;
}

void sub_29ACC5274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    sub_29A014BEC(a29);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  v32 = *(v29 - 104);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v33 = *(v29 - 120);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v29 - 96);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::SampleInstancerTransform(uint64_t a1)
{
  return (*(*a1 + 184))();
}

{
  return (*(*a1 + 192))();
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstanceCategories(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char **a3@<X8>)
{
  sub_29A0ECEEC(&v30, "hd", "virtual std::vector<VtArray<TfToken>> pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstanceCategories(const SdfPath &)");
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v27);
  pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetFromParent(&v28, &v25);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v25))
  {
    pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetCategoriesValues(&v25, &v23);
    if (v23)
    {
      if ((atomic_load_explicit(byte_2A174B9D0, memory_order_acquire) & 1) == 0)
      {
        sub_29B2C72D8();
      }

      if (v23)
      {
        v6 = (*(*v23 + 16))(v23);
        sub_29ACC5648(a3, v6);
        v7 = (*(*v23 + 16))(v23);
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            (*(*v23 + 24))(&v17);
            sub_29ABC3244(&v17, &v19);
            v10 = v19;
            v9 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              v21 = v10;
              v22 = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_29A014BEC(v9);
              if (v20)
              {
                sub_29A014BEC(v20);
              }
            }

            else
            {
              v21 = v19;
              v22 = 0;
            }

            if (v18)
            {
              sub_29A014BEC(v18);
            }

            if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v21))
            {
              pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetIncludedCategoryNames(&v21, &v17);
              sub_29ACC5724(a3, &v17, v14, v15, v16);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
            }

            sub_29ACC5780(a3, &xmmword_2A174BA08, v11, v12, v13);
            if (v22)
            {
              sub_29A014BEC(v22);
            }
          }
        }
      }
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v31, v30);
  }
}

void sub_29ACC5594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  v23 = *(v21 - 72);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v21 - 88);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABF5B1C(&a9);
  sub_29A0E9CEC(v21 - 64);
  _Unwind_Resume(a1);
}

char **sub_29ACC5648(char **result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x666666666666667)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v17 = result;
    v4 = sub_29A10E224(result, a2);
    v5 = &v4[v3];
    v13 = v4;
    v14 = &v4[v3];
    v7 = &v4[40 * v6];
    v15 = &v4[v3];
    v16 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29ACCE3D0(v2, *v2, v8, v9, v10);
    v11 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v12 = v2[2];
    v2[2] = v7;
    v15 = v11;
    v16 = v12;
    v13 = v11;
    v14 = v11;
    return sub_29ACCE544(&v13);
  }

  return result;
}

void sub_29ACC5710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCE544(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACC5724(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    result = sub_29ACCE5C0(a1, a2, a3, a4, a5);
  }

  else
  {
    v7 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v7;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(v6 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    result = v6 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ACC5780(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    result = sub_29ACCE6FC(a1, a2, a3, a4, a5);
  }

  else
  {
    v7 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v7;
    v8 = *(a2 + 32);
    *(v6 + 32) = v8;
    if (v8)
    {
      v9 = (v8 - 16);
      if (*(v6 + 24))
      {
        v9 = *(v6 + 24);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    result = v6 + 40;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>)
{
  sub_29A0ECEEC(&v14, "hd", "virtual VtIntArray pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstanceIndices(const SdfPath &, const SdfPath &)");
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v11);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v12, &v9);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
  {
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::ComputeInstanceIndicesForProto(&v9, a3, &v8);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstancerPrototypes(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v20, "hd", "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstancerPrototypes(const SdfPath &)");
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v17);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v18, &v15);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
  {
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(&v13, &v15);
    if (v13)
    {
      (*(*v13 + 32))(v11, 0.0);
      sub_29AC6A5F4(v11, v6, v7);
      v8 = v12;
      sub_29AC6A5F4(v11, v9, v10);
      sub_29A324D54(a3, v8, &v12[8 * v11[0]], (&v12[8 * v11[0]] - v8) >> 3);
      sub_29ABED558(v11);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }
}

void sub_29ACC5AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1E234C(&a9);
  sub_29A0E9CEC(v20 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstancerId(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  sub_29A0ECEEC(&v24, "hd", "virtual SdfPath pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstancerId(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v21);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(&v22, &v19);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v19))
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPaths(&v14, &v19);
    if (v14)
    {
      (*(*v14 + 32))(&v11, 0.0);
      sub_29ABED558(&v16);
      v16 = v11;
      v17 = v12;
      v11 = 0u;
      v12 = 0u;
      v18 = v13;
      v13 = 0;
      sub_29ABED558(&v11);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v8 = v16;
    if (v16 >= 2)
    {
      *&v11 = "hd/sceneIndexAdapterSceneDelegate.cpp";
      *(&v11 + 1) = "GetInstancerId";
      *&v12 = 2576;
      *(&v12 + 1) = "virtual SdfPath pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetInstancerId(const SdfPath &)";
      LOBYTE(v13) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Prim <%s> has multiple instancer ids, using first.", Text);
      v8 = v16;
    }

    if (v8)
    {
      sub_29AC6A5F4(&v16, v6, v7);
      v10 = v18;
      sub_29A2258F0(a3, v18);
      sub_29A225948(a3 + 1, v10 + 1);
    }

    sub_29ABED558(&v16);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v25, v24);
  }
}

void sub_29ACC5D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_29ABED558(va);
  v21 = *(v19 - 96);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v22 = *(v19 - 72);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v23 = *(v19 - 88);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v18);
  sub_29A0E9CEC(v19 - 64);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationSceneInputNames(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v13, "hd", "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationSceneInputNames(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v10);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v11, &v8);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(&v8, &v6);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v6, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29ACC5ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationInput(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  sub_29A0ECEEC(&v20, "hd", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationInput(const SdfPath &, const TfToken &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v17);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v18, &v15);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
  {
    *(a4 + 8) = 0;
    goto LABEL_20;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v8 + 18) ^ *a3) > 7)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v10 + 30) ^ *a3) > 7)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(&v15, &v13);
      sub_29AC0BF38(&v13, a3, &v11);
      if (v11)
      {
        (*(*v11 + 16))(v11, 0.0);
      }

      else
      {
        *(a4 + 8) = 0;
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      goto LABEL_18;
    }

    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetElementCount(&v15, &v13);
    v9 = v13;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDispatchCount(&v13, &v15);
    v9 = v13;
    if (v13)
    {
LABEL_6:
      (*(*v13 + 16))(v9, 0.0);
      goto LABEL_18;
    }
  }

  *(a4 + 8) = 0;
LABEL_18:
  if (v14)
  {
    sub_29A014BEC(v14);
  }

LABEL_20:
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }
}

void sub_29ACC6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v18 - 64);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::SampleExtComputationInput(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, atomic_uint **a3, float a4, float a5, unint64_t a6, float *a7, pxrInternal__aapl__pxrReserved__::VtValue *a8)
{
  v42 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v38, "hd", "virtual size_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::SampleExtComputationInput(const SdfPath &, const TfToken &, float, float, size_t, float *, VtValue *)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v35);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v36, &v33);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v33))
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(&v33, &v31);
    sub_29AC0BF38(&v31, a3, &v29);
    if (v29)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v16 = v36;
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
      {
        sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
      }

      (*(*v16 + 24))(&v40, v16);
      v20 = v40;
      if (v41)
      {
        sub_29A014BEC(v41);
      }

      v18.n128_u32[0] = -8388609;
      if (!v20)
      {
        v18.n128_f32[0] = a4;
      }

      v19.n128_u32[0] = 2139095039;
      if (!v20)
      {
        v19.n128_f32[0] = a5;
      }

      (*(*v29 + 24))(v18, v19);
      v21 = v26;
      v22 = v27;
      v23 = (v27 - v26) >> 2;
      if (v23 > a6)
      {
        sub_29A0A171C(&v26, a6);
        v21 = v26;
        v22 = v27;
      }

      if (v21 == v22)
      {
        LODWORD(v40) = 0;
        sub_29A0C2184(&v26, &v40);
        v21 = v26;
        v22 = v27;
      }

      if (v22 != v21)
      {
        v24 = 0;
        do
        {
          a7[v24] = *&v21[4 * v24];
          (*(*v29 + 16))(&v40);
          sub_29A18606C(a8, &v40);
          sub_29A186B14(&v40);
          ++v24;
          v21 = v26;
          a8 = (a8 + 16);
        }

        while (v24 < (v27 - v26) >> 2);
      }

      if (v21)
      {
        v27 = v21;
        operator delete(v21);
      }
    }

    else
    {
      v23 = 0;
    }

    if (v30)
    {
      sub_29A014BEC(v30);
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v23 = 0;
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v38)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v39, v38);
  }

  return v23;
}

void sub_29ACC64FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, ...)
{
  va_start(va, a21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationInputDescriptors(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char **a3@<X8>)
{
  sub_29A0ECEEC(&v26, "hd", "virtual HdExtComputationInputDescriptorVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationInputDescriptors(const SdfPath &)");
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v23);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v24, &v21);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputations(&v21, &v19);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v19, &v17);
  sub_29ACC6934(a3, v18 - v17);
  v6 = v17;
  for (i = v18; v6 != i; ++v6)
  {
    sub_29ACC6A10(&v19, v6, &v15);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
    {
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
      v14 = 0;
      sub_29A166F2C(&v11, v6);
      pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputation(&v15, &v9);
      if (v9)
      {
        (*(*v9 + 32))(&v8, 0.0);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputationOutputName(&v15, &v9);
      if (v9)
      {
        (*(*v9 + 32))(&v8, 0.0);
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v14 = v8;
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      sub_29ACC6ADC(a3, &v11);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  v11 = &v17;
  sub_29A124AB0(&v11);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v27, v26);
  }
}

void sub_29ACC6858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  a12 = &a17;
  sub_29A124AB0(&a12);
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  v26 = *(v24 - 72);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v24 - 88);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v24 - 88) = v23;
  sub_29AC03488((v24 - 88));
  sub_29A0E9CEC(v24 - 64);
  _Unwind_Resume(a1);
}

char **sub_29ACC6934(char **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[24 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29ACCE848(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ACCE9BC(&v12);
  }

  return result;
}

void sub_29ACC69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCE9BC(va);
  _Unwind_Resume(a1);
}

void sub_29ACC6A10(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(a1, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29ACC6ADC(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACCEA38(a1, a2);
  }

  else
  {
    sub_29ACCEB68(a1, a1[1], a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ACC6B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationOutputDescriptors(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v23, "hd", "virtual HdExtComputationOutputDescriptorVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationOutputDescriptors(const SdfPath &)");
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v20);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v21, &v18);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputs(&v18, &v16);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v16, &v14);
  sub_29ACC6E30(a3, v15 - v14);
  v6 = v14;
  for (i = v15; v6 != i; ++v6)
  {
    sub_29ACC6EE0(&v16, v6, &v12);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v12))
    {
      v11[0] = 0;
      sub_29A166F2C(v11, v6);
      pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::GetValueType(&v9, &v12);
      if (v9)
      {
        v11[1] = (*(*v9 + 32))(v9, 0.0);
        v11[2] = v8;
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      sub_29ACC6FAC(a3, v11);
      if ((v11[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  v11[0] = &v14;
  sub_29A124AB0(v11);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

void sub_29ACC6D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  a12 = &a17;
  sub_29A124AB0(&a12);
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  v24 = *(v22 - 80);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  v25 = *(v22 - 56);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v22 - 72);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v22 - 72) = v21;
  sub_29ABC6FA0((v22 - 72));
  sub_29A0E9CEC(v22 - 48);
  _Unwind_Resume(a1);
}

void *sub_29ACC6E30(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A012C48(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 24 * v4;
    sub_29ABC711C(v2, v5);
    return sub_29ABC71C0(v5);
  }

  return result;
}

void sub_29ACC6ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

void sub_29ACC6EE0(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(a1, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29ACC6FAC(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACCEBFC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 8) = *(a2 + 1);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationKernel(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v13, "hd", "virtual std::string pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationKernel(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v10);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v11, &v8);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v8))
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetGlslKernel(&v6, &v8);
    if (v6)
    {
      (*(*v6 + 32))(v6, 0.0);
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      if (v9)
      {
        sub_29A014BEC(v9);
      }

      goto LABEL_12;
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_12:
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29ACC714C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::InvokeExtComputation(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdExtComputationContext *a3)
{
  sub_29A0ECEEC(&v15, "hd", "virtual void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::InvokeExtComputation(const SdfPath &, HdExtComputationContext *const)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v12);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v13, &v10);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetCpuCallback(&v8, &v10);
  if (v8)
  {
    (*(*v8 + 32))(&v6, 0.0);
    if (v6)
    {
      (*(*v6 + 16))(v6, a3);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29ACC72F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v18 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetTaskRenderTags(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v13, "hd", "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetTaskRenderTags(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v10);
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFromParent(&v11, &v8);
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetRenderTags(&v6, &v8);
  if (v6)
  {
    (*(*v6 + 32))(v6, 0.0);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29ACC7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::Sync(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v12, "hd", "virtual void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::Sync(HdSyncRequestVector *)");
  if (a2 && a2[1] != *a2)
  {
    sub_29ACBB4F0((a1 + 5));
    if ((a1[81] & 1) == 0)
    {
      sub_29ACCED24(v14, 8uLL, &v10);
      v10 = a1;
      v11 = v14;
      v9[0] = &v10;
      pxrInternal__aapl__pxrReserved__::Sdf_VisitPathTableInParallel(a1[76], (a1[77] - a1[76]) >> 3, v9, sub_29ACCEE7C);
      for (i = v16; i; i = *i)
      {
        if (*(i + 16))
        {
          break;
        }
      }

      v10 = i;
      v11 = v15;
      v9[0] = 0;
      v9[1] = v15;
      sub_29ACC7720(a1 + 82, &v10, v9);
      *(a1 + 648) = 1;
      sub_29ACCB14C(v14, v5);
    }

    v6 = a1[82];
    for (j = a1[83]; v6 != j; ++v6)
    {
      v8 = *v6;
      if (!*v6)
      {
        v14[0] = "hd/sceneIndexAdapterSceneDelegate.cpp";
        v14[1] = "Sync";
        v15[0] = 2875;
        v15[1] = "virtual void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::Sync(HdSyncRequestVector *)";
        LOBYTE(v16) = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "sd != nullptr", 0) & 1) == 0)
        {
          continue;
        }
      }

      (*(*v8 + 16))(v8, a2);
    }
  }

  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

void sub_29ACC76D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29ACC7720(uint64_t *a1, uint64_t **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = a2[1];
  v12[0] = v3;
  v12[1] = v4;
  v5 = *a3;
  v6 = a3[1];
  v11[0] = v5;
  v11[1] = v6;
  v7 = v3 == v5;
  for (i = 0; !v7 || v4 != v6; ++i)
  {
    do
    {
      v3 = *v3;
    }

    while (v3 && (*(v3 + 16) & 1) == 0);
    v7 = v3 == v5;
  }

  return sub_29ACCF44C(a1, v12, v11, i);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::PostSyncCleanup(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this)
{
  if (*(this + 648) == 1)
  {
    v9 = v1;
    v10 = v2;
    v4 = *(this + 82);
    for (i = *(this + 83); v4 != i; ++v4)
    {
      v6 = *v4;
      if (!*v4)
      {
        v7[0] = "hd/sceneIndexAdapterSceneDelegate.cpp";
        v7[1] = "PostSyncCleanup";
        v7[2] = 2889;
        v7[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::PostSyncCleanup()";
        v8 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "sd != nullptr", 0) & 1) == 0)
        {
          continue;
        }
      }

      (*(*v6 + 24))(v6);
    }

    sub_29ACBB4F0(this + 40);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetDisplayStyle(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v17, "hd", "virtual HdDisplayStyle pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetDisplayStyle(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v14);
  pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFromParent(&v15, &v12);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v12))
  {
    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetRefineLevel(&v12, &v10);
    if (v10)
    {
      LODWORD(v4) = (*(*v10 + 32))(v10, 0.0);
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFlatShadingEnabled(&v12, &v10);
    if (v10)
    {
      if ((*(*v10 + 32))(v10, 0.0))
      {
        v7 = 0x100000000;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDisplacementEnabled(&v12, &v10);
    if (v10)
    {
      if ((*(*v10 + 32))(v10, 0.0))
      {
        v8 = 0x10000000000;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0x10000000000;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetOccludedSelectionShowsThrough(&v12, &v10);
    if (v10)
    {
      if ((*(*v10 + 32))(v10, 0.0))
      {
        v6 = 0x1000000000000;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetPointsShadingEnabled(&v12, &v10);
    if (v10)
    {
      if ((*(*v10 + 32))(v10, 0.0))
      {
        v5 = 0x100000000000000;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetMaterialIsFinal(&v12, &v10);
    if (v10)
    {
      (*(*v10 + 32))(v10, 0.0);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v4 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 0;
    v8 = 0x10000000000;
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }

  return v6 | v5 | v8 | v7 | v4;
}

void sub_29ACC7B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetShadingStyle(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v17[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v15, "hd", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetShadingStyle(const SdfPath &)");
  a3[1] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v12);
  pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFromParent(&v13, &v10);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v10))
  {
    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetShadingStyle(&v10, &v8);
    if (v8)
    {
      (*(*v8 + 32))(&v7, 0.0);
      v17[0] = v7;
      v17[1] = &off_2A2044E88 + 1;
      if ((v7 & 7) != 0)
      {
        v6 = v7 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v17[0] = v6;
        }
      }

      sub_29A18606C(a3, v17);
      sub_29A186B14(v17);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29ACC7DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, ...)
{
  va_start(va, a17);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v17);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetReprSelector(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A0ECEEC(&v22, "hd", "virtual HdReprSelector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetReprSelector(const SdfPath &)");
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v19);
  pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFromParent(&v20, &v17);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v17))
  {
    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetReprSelector(&v15, &v17);
    if (v15)
    {
      (*(*v15 + 32))(v13, 0.0);
      sub_29A5109EC(v13, 3uLL);
      sub_29A215100(v13);
      v6 = v14;
      sub_29A215100(v13);
      v7 = v14;
      sub_29A215100(v13);
      sub_29AC9BE9C(&v10, v6, v7 + 1, v14 + 2);
      if (&v10 == a3)
      {
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*a3 & 7) != 0)
        {
          atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *a3 = v10;
        v10 = 0;
        v8 = a3[1];
        if ((v8 & 7) != 0)
        {
          atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        a3[1] = v11;
        v11 = 0;
        v9 = a3[2];
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        a3[2] = v12;
        v12 = 0;
      }

      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCullStyle(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v20, "hd", "virtual HdCullStyle pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCullStyle(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v17);
  pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFromParent(&v18, &v15);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
  {
    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetCullStyle(&v15, &v13);
    if (v13)
    {
      (*(*v13 + 32))(&v12, 0.0);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
      if (!v4)
      {
        v4 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
      }

      v5 = v12;
      if ((*(v4 + 1) ^ v12) >= 8)
      {
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
        if (!v7)
        {
          v7 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
        }

        v5 = v12;
        if ((*(v7 + 2) ^ v12) >= 8)
        {
          v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
          if (!v8)
          {
            v8 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
          }

          v5 = v12;
          if ((*(v8 + 3) ^ v12) >= 8)
          {
            v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
            if (!v9)
            {
              v9 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
            }

            v5 = v12;
            if ((*(v9 + 4) ^ v12) >= 8)
            {
              v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
              if (!v10)
              {
                v10 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
              }

              v5 = v12;
              if ((*(v10 + 5) ^ v12) >= 8)
              {
                v6 = 0;
              }

              else
              {
                v6 = 5;
              }
            }

            else
            {
              v6 = 4;
            }
          }

          else
          {
            v6 = 3;
          }
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v6 = 0;
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }

  return v6;
}

void sub_29ACC8328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACC83B8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29ACC83EC(a1 + 16);
  return a1;
}

uint64_t sub_29ACC83EC(uint64_t a1)
{
  sub_29ACC8428(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ACC8470(a1, v2);
  return a1;
}

uint64_t sub_29ACC8428(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29ACC8470(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29ACC8470(uint64_t a1, tbb::internal *this)
{
  if (*(this + 48))
  {
    sub_29ACC84B4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29ACC84B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a2 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));

  return sub_29A1DE3A4((a2 + 16));
}

uint64_t sub_29ACC8518(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  return a1;
}

char *sub_29ACC8574@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*result)
  {
    v5 = *a2;
    v6 = *(result + 1);
    *a3 = *result;
    *(a3 + 16) = v6;
    v7 = *(result + 4);
    *(a3 + 32) = v7;
    if (v5)
    {
      if (v7)
      {
        v8 = *(a3 + 24);
        v9 = (v7 - 16);
        if (!v8)
        {
          v8 = v9;
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
        v5 = *a2;
      }

      sub_29A7A8F90(a3, v5 + *a3);
      v10 = *a2;
      if (*a2)
      {
        v11 = a2[4];
        v12 = 4 * v10;
        do
        {
          sub_29A7ACEC4(a3, v11++);
          v12 -= 4;
        }

        while (v12);
      }

      sub_29A19DBEC(a3);
      sub_29A19DBEC(a3);
      std::__sort<std::__less<int,int> &,int *>();
      sub_29A19DBEC(a3);
      v13 = *(a3 + 32);
      sub_29A19DBEC(a3);
      v14 = sub_29ACC88D4(v13, (*(a3 + 32) + 4 * *a3));
      sub_29A19DBEC(a3);
      return sub_29ACC87A0(a3, v14, (*(a3 + 32) + 4 * *a3));
    }
  }

  else
  {
    v15 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v15;
    v7 = a2[4];
    *(a3 + 32) = v7;
  }

  if (v7)
  {
    v16 = *(a3 + 24);
    v17 = (v7 - 16);
    if (!v16)
    {
      v16 = v17;
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29ACC86E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACC8948(a1, a2);
  }

  else
  {
    sub_29ACC8A5C(a1, *(a1 + 8), a2);
    result = v3 + 64;
    *(a1 + 8) = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

char *sub_29ACC87A0(void *a1, char *__dst, char *__src)
{
  if (__dst == __src)
  {
    sub_29A19DBEC(a1);
    return __dst;
  }

  else
  {
    v5 = __src;
    v6 = a1[4];
    v7 = v6 + 4 * *a1;
    if (v6 == __dst && v7 == __src)
    {
      sub_29A19D79C(a1);
      sub_29A19DBEC(a1);
      return (a1[4] + 4 * *a1);
    }

    else
    {
      v9 = *a1 - ((__src - __dst) >> 2);
      if (v6)
      {
        if (a1[3] || (v10 = atomic_load(v6 - 2), v10 != 1))
        {
          v13 = sub_29A19DB58(a1, *a1 - ((__src - __dst) >> 2));
          v14 = a1[4];
          v15 = v13;
          if (v14 != __dst)
          {
            v15 = v13;
            do
            {
              v16 = *v14;
              v14 = (v14 + 4);
              *v15++ = v16;
            }

            while (v14 != __dst);
          }

          v17 = v7 - v5;
          if (v7 != v5)
          {
            v18 = v15;
            do
            {
              v19 = *v5;
              v5 += 4;
              *v18++ = v19;
              v17 -= 4;
            }

            while (v17);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }
      }

      v11 = v7 - __src;
      if (v7 != v5)
      {
        memmove(__dst, v5, v11);
      }

      v12 = __dst;
      *a1 = v9;
    }
  }

  return v12;
}

int *sub_29ACC88D4(int *a1, int *a2)
{
  if (a1 != a2)
  {
    ++a1;
    while (a1 != a2)
    {
      v2 = *(a1 - 1);
      v3 = *a1++;
      if (v2 == v3)
      {
        a1 -= 2;
        goto LABEL_7;
      }
    }
  }

  v4 = a2;
  if (a1 != a2)
  {
LABEL_7:
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v6 = *a1;
      do
      {
        v7 = v6;
        v6 = *v5;
        if (v7 != *v5)
        {
          a1[1] = v6;
          ++a1;
        }

        ++v5;
      }

      while (v5 != a2);
    }

    return a1 + 1;
  }

  return v4;
}

uint64_t sub_29ACC8948(char **a1, uint64_t a2)
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[64 * v2];
  *(&v17 + 1) = &v8[64 * v7];
  sub_29ACC8A5C(a1, v16, a2);
  *&v17 = v16 + 64;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29ACC8AE0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACC8BAC(&v15);
  return v14;
}

void sub_29ACC8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACC8BAC(va);
  _Unwind_Resume(a1);
}

double sub_29ACC8A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  sub_29A1DDD84((a2 + 4), (a3 + 4));
  sub_29A1DDDC0((a2 + 8), (a3 + 8));
  sub_29A1DDD84((a2 + 12), (a3 + 12));
  sub_29A1DDDC0((a2 + 16), (a3 + 16));
  v5 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v5;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 56) = 0;
  return result;
}

uint64_t sub_29ACC8AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_29AC53244(a1, a4, v7);
      v7 += 64;
      a4 = v12 + 64;
      v12 += 64;
    }

    while (v7 != a3);
    v10 = 1;
    if (a2 != a3)
    {
      sub_29AC53360(a1, a2);
    }
  }

  return sub_29AC532D4(v9);
}

void **sub_29ACC8BAC(void **a1)
{
  sub_29ACC8BE0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29ACC8BE0(void *result)
{
  v1 = result[2];
  if (v1 != result[1])
  {
    v2 = result;
    v3 = result[4];
    v2[2] = v1 - 64;
    sub_29AC53360(v3, v1 - 64);
  }

  return result;
}

void sub_29ACC8C28(unsigned int *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  if (!sub_29A2F4F50(a4, a1))
  {
    sub_29A43A86C(a4, a1, a1);
    v48 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(a1);
    if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v48 &= 0xFFFFFFFFFFFFFFF8;
    }

    sub_29AC0C368(a2, &v48, &v46);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v46))
    {
      v45 = 0;
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeIdentifier(&v26, &v46);
      if (v26)
      {
        ((*v26)[4])(&v40, 0.0);
        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v45 = v40;
      }

      if (v27)
      {
        sub_29A014BEC(v27);
      }

      if (*a3 != a3[1])
      {
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetRenderContextNodeIdentifiers(&v46, &v26);
        if (v26)
        {
          v10 = *a3;
          v11 = a3[1];
          if (*a3 != v11)
          {
            do
            {
              if (*v10)
              {
                v12 = 1;
              }

              else
              {
                v12 = v45 == 0;
              }

              if (!v12)
              {
                break;
              }

              ((*v26)[3])(&v43);
              sub_29ABC562C(&v43, &v40);
              if (v44)
              {
                sub_29A014BEC(v44);
              }

              if (v40 && (((*v40)[1].__shared_owners_)(&v43, 0.0), v43))
              {
                sub_29A166F2C(&v45, &v43);
                if ((v43 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v13 = 1;
              }

              else
              {
                v13 = 0;
              }

              if (v41)
              {
                sub_29A014BEC(v41);
              }

              v14 = ++v10 == v11 ? 1 : v13;
            }

            while ((v14 & 1) == 0);
          }
        }

        if (v27)
        {
          sub_29A014BEC(v27);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetInputConnections(&v43, &v46);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v43))
      {
        pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v43, &v40);
        v15 = v40;
        v23 = v41;
        if (v40 != v41)
        {
          do
          {
            sub_29AC0DD4C(&v43, v15, &v38);
            if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v38))
            {
              for (i = 0; i < pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v38); ++i)
              {
                sub_29AC0DDFC(&v36, &v38);
                if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v36))
                {
                  pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodePath(&v26, &v36);
                  ((*v26)[4])(&v35, 0.0);
                  if (v27)
                  {
                    sub_29A014BEC(v27);
                  }

                  pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodeOutputName(&v26, &v36);
                  ((*v26)[4])(&v34, 0.0);
                  v17 = v27;
                  if (v27)
                  {
                    sub_29A014BEC(v27);
                  }

                  if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    EmptyString = ((v35 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  else
                  {
                    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
                  }

                  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v26, EmptyString);
                  v19 = a2[1];
                  v32 = *a2;
                  v33 = v19;
                  if (v19)
                  {
                    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_29ACC8C28(&v26, &v32, a3, a4, a5);
                  if (v33)
                  {
                    sub_29A014BEC(v33);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
                  sub_29A1DE3A4(&v26);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v26);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v26 + 1);
                  v27 = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v28);
                  v20 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v28 + 1);
                  v29 = 0;
                  if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v21 = ((v35 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  else
                  {
                    v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
                  }

                  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v31, v21);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                }

                if (v37)
                {
                  sub_29A014BEC(v37);
                }
              }
            }

            if (v39)
            {
              sub_29A014BEC(v39);
            }

            ++v15;
          }

          while (v15 != v23);
        }

        v26 = &v40;
        sub_29A124AB0(&v26);
      }

      if (v44)
      {
        sub_29A014BEC(v44);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v26);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v26 + 1);
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = &v29;
      sub_29A166F2C(&v27, &v45);
      sub_29A2258F0(&v26, a1);
      sub_29A225948(&v26 + 1, a1 + 1);
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetParameters(&v24, &v46);
      sub_29ACC9730(&v24, &v40);
      sub_29A5B0668(&v28, v29);
      v22 = v41;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      if (v42)
      {
        v41[2] = &v29;
        v40 = &v41;
        v41 = 0;
        v42 = 0;
        v22 = 0;
      }

      else
      {
        v28 = &v29;
      }

      sub_29A5B0668(&v40, v22);
      if (v25)
      {
        sub_29A014BEC(v25);
      }

      sub_29ACC9C58(a5 + 24, &v26);
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }

    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACC92B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  v30 = *(v28 - 128);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v31 = *(v28 - 120);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(v28 - 104);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v33 = *(v28 - 96);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29ACC9478(uint64_t a1)
{
  sub_29A5B0668(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29ACC94DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29ACC9560(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A43A288(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

double sub_29ACC9654@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  *(v6 + 4) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v6 + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v6 + 13) = 0;
  result = 0.0;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29ACC96E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACC9CB8(a1, a2);
  }

  else
  {
    sub_29ACC9DC8(a1, *(a1 + 8), a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29ACC9730(pxrInternal__aapl__pxrReserved__::HdContainerSchema *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(a1))
  {
    pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(a1, &v13);
    v4 = v13;
    for (i = v14; v4 != i; ++v4)
    {
      sub_29AC0D230(a1, v4, &v11);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v11))
      {
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetValue(&__p, &v11);
        if (__p)
        {
          (*(*__p + 16))(&v19, 0.0);
          v15 = v4;
          sub_29A94BD04(a2, v4, &unk_29B4D6118, &v15);
        }

        if (v17)
        {
          sub_29A014BEC(v17);
        }

        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetColorSpace(&v19, &v11);
        if (v19)
        {
          v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
          if (!v6)
          {
            v6 = sub_29AC4B8CC(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier((v6 + 8), v4, &__p);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, &__p);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          (*(*v19 + 32))(&v9, 0.0);
          if (v9)
          {
            (*(*v19 + 32))(&v8, 0.0);
            __p = v8;
            v17 = (&off_2A2044E88 + 1);
            if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              __p = (__p & 0xFFFFFFFFFFFFFFF8);
            }

            v15 = &v10;
            sub_29A94BD04(a2, &v10, &unk_29B4D6118, &v15);
          }

          if ((v10 & 7) != 0)
          {
            atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        if (v20)
        {
          sub_29A014BEC(v20);
        }

        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetTypeName(&v11, &v19);
        if (v19)
        {
          v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
          if (!v7)
          {
            v7 = sub_29AC4B8CC(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier((v7 + 16), v4, &__p);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, &__p);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          (*(*v19 + 32))(&v9, 0.0);
          if (v9)
          {
            __p = v9;
            v17 = (&off_2A2044E88 + 1);
            if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              __p = (__p & 0xFFFFFFFFFFFFFFF8);
            }

            v15 = &v10;
            sub_29A94BD04(a2, &v10, &unk_29B4D6118, &v15);
          }

          if ((v10 & 7) != 0)
          {
            atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        if (v20)
        {
          sub_29A014BEC(v20);
        }
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }

    __p = &v13;
    sub_29A124AB0(&__p);
  }
}

void sub_29ACC9C58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29ACCA144(a1, *(a1 + 8), a2);
  }

  sub_29ACCA010(a1, a2);
}

uint64_t sub_29ACC9CB8(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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
  sub_29ACC9DC8(a1, v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29ACC9E74(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACC9F94(&v15);
  return v14;
}

void sub_29ACC9DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACC9F94(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29ACC9DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), (a3 + 4));
  v5 = *(a3 + 8);
  *(a2 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a2 + 16), (a3 + 16));
  result = sub_29A1E2240((a2 + 20), (a3 + 20));
  v7 = *(a3 + 24);
  *(a2 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ACC9E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29ACC9F28(a1, a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABECE00(a1, v5);
      v5 += 32;
    }
  }

  return sub_29ABECD74(v9);
}

_DWORD *sub_29ACC9F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  sub_29A1DDD84((a2 + 16), (a3 + 16));
  result = sub_29A1DDDC0((a2 + 20), (a3 + 20));
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;
  return result;
}

void **sub_29ACC9F94(void **a1)
{
  sub_29ACC9FC8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACC9FC8(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 32;
      result = sub_29ABECE00(v4, v1 - 32);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29ACCA010(char **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x666666666666666)
  {
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

    v11 = a1;
    if (v6)
    {
      v7 = sub_29A10E224(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = &v7[40 * v2];
    v10 = &v7[40 * v6];
    sub_29ACCA144(a1, v9, a2);
  }

  sub_29A00C9A4();
}

void sub_29ACCA130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCA318(va);
  _Unwind_Resume(a1);
}

void sub_29ACCA144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), (a3 + 4));
  v5 = *(a3 + 8);
  *(a2 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABECFB8((a2 + 16));
}

void sub_29ACCA1B8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCA1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29ACCA298(a1, a4, v7);
      v7 += 40;
      a4 = v12 + 40;
      v12 += 40;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABED114(a1, v5);
      v5 += 40;
    }
  }

  return sub_29ABED088(v9);
}

_DWORD *sub_29ACCA298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  result = sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a2 + 16) = *(a3 + 16);
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  *(a2 + 24) = v7;
  v8 = a2 + 24;
  v9 = *(a3 + 32);
  *(a2 + 32) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a3 + 16) = v6;
    *v6 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a2 + 16) = v8;
  }

  return result;
}

void **sub_29ACCA318(void **a1)
{
  sub_29ACCA34C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACCA34C(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 40;
      result = sub_29ABED114(v4, v1 - 40);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29ACCA394(uint64_t result, uint64_t *a2, int a3, uint64_t *a4, char a5)
{
  v5 = *a2;
  *result = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 8) = a3;
  v6 = *a4;
  *(result + 16) = *a4;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 24) = a5;
  return result;
}

uint64_t sub_29ACCA3F8(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, _DWORD *a5, uint64_t *a6, _OWORD *a7)
{
  v11 = sub_29ACCA394(a1, a2, a3, a4, 0);
  sub_29A1E21F4((v11 + 28), a5);
  sub_29A1E2240((a1 + 32), a5 + 1);
  v12 = *a6;
  *(a1 + 40) = *a6;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = *a7;
  return a1;
}

char **sub_29ACCA484(char **result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x222222222222223)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A5897A8(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[120 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29ACCA5AC(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ACCA6F0(&v12);
  }

  return result;
}

void sub_29ACCA54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCA6F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCA560(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACCA740(a1, a2);
  }

  else
  {
    sub_29ACCA630(a1, a1[1], a2);
    result = v3 + 120;
  }

  a1[1] = result;
  return result;
}

void sub_29ACCA5AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29ACCA630(result, a4, v8);
      v8 += 120;
      a4 += 120;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_29AC97A08(v6);
      v6 += 120;
    }
  }
}

__n128 sub_29ACCA630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  sub_29A1DDD84((a2 + 56), (a3 + 56));
  sub_29A1DDDC0((a2 + 60), (a3 + 60));
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 72) = *(a3 + 72);
  *(a3 + 72) = 0;
  result = *(a3 + 80);
  *(a2 + 90) = *(a3 + 90);
  *(a2 + 80) = result;
  v6 = *(a3 + 112);
  *(a3 + 112) = 0;
  *(a2 + 112) = v6;
  return result;
}

uint64_t sub_29ACCA6F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    sub_29AC97A08(i - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ACCA740(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_29A00C9A4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A5897A8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[120 * v2];
  *(&v16 + 1) = &v7[120 * v6];
  sub_29ACCA630(a1, v15, a2);
  *&v16 = v15 + 120;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ACCA5AC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ACCA6F0(&v14);
  return v13;
}

void sub_29ACCA85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCA6F0(va);
  _Unwind_Resume(a1);
}

char **sub_29ACCA870(char **result, unint64_t a2)
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
    v7 = v4 + 56 * v6;
    v14 = (v4 + v3);
    v15 = v7;
    v8 = v2[1];
    v9 = (v4 + v3 + *v2 - v8);
    sub_29ACCAA30(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ACCAAE4(&v12);
  }

  return result;
}

void sub_29ACCA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCAAE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCA958(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACCAB60(a1, a2);
  }

  else
  {
    sub_29A8177C8(a1, *(a1 + 8), a2);
    result = v3 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29ACCA9A4(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29ACCAA30(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A8177C8(a1, a4, v7);
      v7 = (v7 + 56);
      a4 = (v12 + 56);
      v12 = (v12 + 56);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AC97B44(a1, v5);
      v5 = (v5 + 56);
    }
  }

  return sub_29AC98254(v9);
}

void **sub_29ACCAAE4(void **a1)
{
  sub_29ACCAB18(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACCAB18(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 56;
      result = sub_29AC97B44(v4, v1 - 56);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29ACCAB60(uint64_t a1, __n128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 56 * v2);
  *(&v16 + 1) = v7 + 56 * v6;
  sub_29A8177C8(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29ACCAA30(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ACCAAE4(&v14);
  return v13;
}

void sub_29ACCAC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCAAE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ACCACA8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACCACC8(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ACCADFC(a1);
}

void *sub_29ACCADE4@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2084A30;
  return sub_29ACCB0C8(a2, v2);
}

void sub_29ACCADFC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29AC97984(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29ACCAE54(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0xEEEEEEEEEEEEEEEFLL * (v3 >> 3);
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::hash_value(v2);
      if (v4)
      {
        v7 += (v7 + v5 + (v7 + v5) * (v7 + v5)) >> 1;
      }

      v2 += 120;
      v4 = 1;
      v5 = v7;
      --v6;
    }

    while (v6);
    v3 = 0x9E3779B97F4A7C55 * v7;
  }

  return bswap64(v3);
}

uint64_t sub_29ACCAEE0(uint64_t *a1, uint64_t *a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v4 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v3, v5, a3);
    if (!result)
    {
      break;
    }

    v3 += 120;
    v5 += 120;
  }

  while (v3 != v4);
  return result;
}

uint64_t sub_29ACCAF54(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29ACCAFBC(&v4, *a1);
    sub_29ACCADFC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29ACCADFC(&v4);
  }

  return *a1;
}

void *sub_29ACCAFBC@<X0>(unsigned int **a1@<X8>, uint64_t *a2@<X0>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29ACCB040(v4, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACCB040(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A9C996C(result, a4);
    result = sub_29AC97DC8(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29ACCB0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC97984(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ACCB0C8(unsigned int **a1, uint64_t *a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29ACCB040(v4, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29ACCB14C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29ACCB180(a1 + 16, v3);
  return a1;
}

uint64_t sub_29ACCB180(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *v3;
  *v3 = 0;
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
      tbb::internal::deallocate_via_handler_v3(v5, a2);
    }

    while (v4);
    v3 = *(a1 + 16);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  tbb::internal::deallocate_via_handler_v3(v3, a2);
  return a1;
}

uint64_t sub_29ACCB1D8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x38);
  v5[6] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t *sub_29ACCB330(uint64_t *a1)
{
  sub_29ACCB368(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29ACCB368(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 40);
          v8 = *(v6 + 48);
          if (v7)
          {
            sub_29A014BEC(v7);
          }

          v9 = *(v6 + 24);
          if (v9)
          {
            sub_29A014BEC(v9);
          }

          v10 = *(v6 + 8);
          if ((v10 & 7) != 0)
          {
            atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v11 = sub_29A1DE3A4(v6);
          operator delete(v11);
          v6 = v8;
        }

        while (v8);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

_DWORD *sub_29ACCB420(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29ACCB490(uint64_t *a1, uint64_t *a2)
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
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29ACCB4F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ACCB508(void *a1, uint64_t a2)
{
  v3 = a2 + 24;
  if (!a2)
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 32), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29ACCB570(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACCB588(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  return a1;
}

void sub_29ACCB5E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v16 = 0;
  v17 = v7;
  v8 = &v17;
  for (i = 7; i != -1; --i)
  {
    v10 = *v8++;
    *(&v16 + i) = byte_29B734F74[v10];
  }

  v11 = v16;
  v12 = a1 + 16;
  sub_29ACCB6DC(a1, v7, &v17);
  v13 = v17;
  if (v17)
  {
    v14 = v11 | 1;
    while (1)
    {
      v15 = v13[6];
      if (v15 > v14)
      {
        break;
      }

      if (v15 == v14 && *a2 == v13[1])
      {
        goto LABEL_11;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v13 = 0;
LABEL_11:
    *a3 = v13;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v12;
}

void sub_29ACCB6DC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29ACCB778(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29ACCB778(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29ACCB778(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29ACCB85C(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29ACCB85C@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x38);
  *(result + 6) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[6];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29ACC8470(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29ACCB930(uint64_t a1@<X0>, void *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v26 = 0;
  v27 = v10;
  v11 = &v27;
  for (i = 7; i != -1; --i)
  {
    v13 = *v11;
    v11 = (v11 + 1);
    *(&v26 + i) = byte_29B734F74[v13];
  }

  v14 = v26 | 1;
  sub_29ACCB6DC(a1, v10, &v27);
  v15 = a1 + 16;
  if (a3)
  {
    *(a3 + 6) = v14;
    *a3 = 0;
  }

  v16 = a2;
  while (1)
  {
    v17 = v27;
    v18 = *v27;
    if (*v27)
    {
      v19 = *(v18 + 6);
      while (1)
      {
        v20 = v18;
        if (v19 > v14)
        {
          break;
        }

        if (v19 == v14 && *v16 == *(v18 + 1))
        {
          if (a3)
          {
            sub_29ACC8470(a1 + 16, a3);
          }

          *a4 = v18;
          *(a4 + 8) = v15;
          *(a4 + 16) = 0;
          return;
        }

        v27 = v18;
        v18 = *v18;
        if (!*v20)
        {
          v17 = v20;
          break;
        }

        v19 = *(v18 + 6);
        v17 = v20;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x38);
      *(a3 + 1) = *a2;
      v16 = (a3 + 8);
      sub_29AC2C6C0(a3 + 16, (a2 + 1));
      *(a3 + 6) = v14;
      *a3 = 0;
      v17 = v27;
    }

    *a3 = v18;
    while (1)
    {
      v21 = v18;
      atomic_compare_exchange_strong(v17, &v21, a3);
      if (v21 == v18)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v17, 0, memory_order_relaxed);
      if (add_explicit != v18)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v18;
LABEL_21:
    if (v18 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v15;
  *(a4 + 16) = 1;
  v24 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v24) > *(a1 + 44))
  {
    do
    {
      v25 = v24;
      atomic_compare_exchange_strong((a1 + 8), &v25, 2 * v24);
    }

    while (v25 != v24 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v24);
  }
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29ACCBB54(void *a1, unsigned int *a2)
{
  v7 = a2;
  result = sub_29ACCBD08(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29ACCBBA8(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29ACCBBA8(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v15, *a2);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
  {
    sub_29A1E21F4(&v8, &v15);
    sub_29A1E2240(&v9, &v15 + 1);
    v10 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v4 = sub_29ACCBB54(a1, &v8);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    sub_29A1DE3A4(&v8);
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 8) = v6;
    *(v4 + 56) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  return sub_29A1DE3A4(&v15);
}

void sub_29ACCBCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29ACCB420(va);
  sub_29ABDDC88(&a9);
  sub_29A1DCEA8((v13 - 40));
  _Unwind_Resume(a1);
}

void *sub_29ACCBD08(void *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29ACCBE28(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    result = *v7;
    while (*result != *a2)
    {
      result = result[6];
      if (!result)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29ACCBE28(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v10 = operator new(0x48uLL);
    result = sub_29ACCC038(v10, *a3);
    result[7] = 0;
    result[8] = 0;
    result[6] = v8;
    *v7 = result;
    ++a1[3];
  }

  return result;
}

void sub_29ACCBE28(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_PrimCacheEntry>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_PrimCacheEntry]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29ACCBFC0(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 6);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 6) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29ACCBF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ACCBFC0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

void sub_29ACCC01C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACCC038(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29ACCC0CC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v4 = *(v3 + 40);
      v5 = *(v3 + 48);
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      v6 = *(v3 + 24);
      if (v6)
      {
        sub_29A014BEC(v6);
      }

      v7 = *(v3 + 8);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v3 + 4));
      v8 = sub_29A1DE3A4(v3);
      operator delete(v8);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

void sub_29ACCC150(void *result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    sub_29ACCC310(result, *(a2 + 56));

    sub_29ACCC240(result, v2);
  }
}

void *sub_29ACCC1A4(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, a2);
    v5 = sub_29A42F6CC(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
    return sub_29A43C57C(v5, a2);
  }

  return result;
}

void sub_29ACCC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29ACCC240(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 48);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 48);
  v5 = *(v4 + 40);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(v4 + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v8 = sub_29A1DE3A4(v4);

  operator delete(v8);
}

void sub_29ACCC310(void *a1, uint64_t a2)
{
  sub_29ACCC150(a1, a2);
  v4 = *(a2 + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 64);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29ACCC150(a1, v5);
      sub_29ACCC240(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

uint64_t sub_29ACCC388(char **a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  *(&v16 + 1) = &v7[24 * v6];
  sub_29ACCC4B8(a1, v15, a2);
  *&v16 = v15 + 24;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ACCC558(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ACCC6CC(&v14);
  return v13;
}

void sub_29ACCC4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCC6CC(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29ACCC4B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = a3[1];
  *(a2 + 8) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a2 + 16), a3 + 4);

  return sub_29A1E2240((a2 + 20), a3 + 5);
}

uint64_t sub_29ACCC558(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 4;
    do
    {
      *v4 = *(v8 - 2);
      *(v8 - 2) = 0;
      *(v4 + 8) = *(v8 - 1);
      *(v8 - 1) = 0;
      sub_29A1DDD84((v4 + 16), v8);
      sub_29A1DDDC0((v4 + 20), v8 + 1);
      v4 = v14 + 24;
      v14 += 24;
      v9 = v8 + 2;
      v8 += 6;
    }

    while (v9 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29ABF5404(a1, v6);
      v6 += 6;
    }
  }

  return sub_29ACCC640(v11);
}

uint64_t sub_29ACCC640(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACCC678(a1);
  }

  return a1;
}

uint64_t *sub_29ACCC678(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 24;
      result = sub_29ABF5404(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29ACCC6CC(void **a1)
{
  sub_29ACCC700(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACCC700(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 24;
      result = sub_29ABF5404(v4, v1 - 24);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29ACCC748(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2084AF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  sub_29ACCC88C(&v6, 0);
  return a1;
}

void sub_29ACCC7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ACCC88C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29ACCC7D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACCC808(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2084B48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACCC848(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = a2;
    sub_29A1E234C(&v3);
    operator delete(a2);
  }
}

void sub_29ACCC88C(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    sub_29A1E234C(&v3);
    operator delete(v2);
  }
}

uint64_t *sub_29ACCC8D0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACCC8F0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ACCCA1C(a1);
}

void sub_29ACCCA04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2084B60;
  sub_29ACCCBF8(a2, v2);
}

void sub_29ACCCA1C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 56), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      sub_29A184A10((v1 + 48), 0);
      v2 = (v1 + 24);
      sub_29A1E234C(&v2);
      sub_29ABED2CC(v1, *(v1 + 8));
      operator delete(v1);
    }
  }
}

uint64_t sub_29ACCCA90(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 56));
  if (v1 != 1)
  {
    sub_29ACCCAF8(*a1);
  }

  return *a1;
}

void sub_29ACCCBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E234C(va);
  sub_29ABED2CC(v3, *(v3 + 8));
  _Unwind_Resume(a1);
}

_DWORD *sub_29ACCCD7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2084C18 + 3;
  *a2 = *result;
  return result;
}

void *sub_29ACCCD98(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&stru_2A20760B8, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29ACCCE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29ACCCE2C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACCCE4C(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22B614(a1);
}

unint64_t sub_29ACCCF80(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v3 = *a2;
  v4 = *(a2 + 8) - v3;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      --v5;
      v6 = v3 + 4;
      sub_29A1976A8(&v8, v3);
      v3 = v6;
    }

    while (v5);
    v4 = 0x9E3779B97F4A7C55 * v8;
  }

  return bswap64(v4);
}

uint64_t sub_29ACCCFF8(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3])
    {
      return 0;
    }

    v3 += 4;
    v4 += 4;
  }

  return 1;
}

atomic_uint *sub_29ACCD074(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 6);
  if (v1 != 1)
  {
    sub_29ACCD0DC();
  }

  return *a1;
}

void sub_29ACCD0DC()
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>();
}

void sub_29ACCD154(void *a1)
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>();
}

void *sub_29ACCD1CC(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29ACCD254(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29ACCD234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ABEE9FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCD254(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ACCD2E8(a1, v4, v6);
      v6 += 4;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ACCD354(v9);
  return v4;
}

void sub_29ACCD2E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = *(a3 + 2);
  v4 = a3[2];
  *(a2 + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 24) = *(a3 + 24);
}

uint64_t sub_29ACCD354(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACCD38C(a1);
  }

  return a1;
}

uint64_t sub_29ACCD38C(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(v1 - 32);
    v1 -= 32;
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ACCD3D8(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v16 = v8;
  v17 = v9;
  *(&v18 + 1) = &v8[32 * v7];
  *v9 = *a2;
  *a2 = 0;
  *(v9 + 2) = *(a2 + 8);
  *(v9 + 2) = *(a2 + 16);
  *(a2 + 16) = 0;
  v9[24] = *(a2 + 24);
  *&v18 = v9 + 32;
  v10 = a1[1];
  v11 = &v9[*a1 - v10];
  sub_29ACCD500(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ACCD5D4(&v16);
  return v15;
}

void sub_29ACCD4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCD5D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCD500(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v10 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = v4[2];
      v4[2] = 0;
      *(a4 + 24) = *(v4 + 24);
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v10 = a4;
    for (i = 1; a2 != a3; a2 += 4)
    {
      v5 = a2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29ACCD354(v7);
}

uint64_t sub_29ACCD5D4(uint64_t a1)
{
  sub_29ACCD60C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ACCD60C(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 32);
    *(result + 16) = i - 32;
    v4 = *(i - 16);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ACCD65C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xA8uLL);
  sub_29ACCD6B8(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
}

__n128 sub_29ACCD6B8(void *a1, uint64_t a2)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2084D98;
  do
  {
    v3 = &a1[v2];
    v4 = (a2 + v2 * 8);
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    result = *(a2 + v2 * 8);
    *(v3 + 3) = result;
    v3[5] = *(a2 + v2 * 8 + 16);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v2 += 3;
  }

  while (v2 != 18);
  return result;
}

void sub_29ACCD734(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2084D98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ACCD778(uint64_t a1)
{
  v1 = (a1 + 144);
  v2 = -144;
  do
  {
    v3 = v1;
    sub_29ABEE9FC(&v3);
    v1 -= 3;
    v2 += 24;
  }

  while (v2);
}

__n128 *sub_29ACCD7C0(__n128 *result, __n128 *a2, __n128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1BF94C(result, a4);
    result = sub_29ACCD848(v6, a2, a3, v6->n128_u64[1]);
    v6->n128_u64[1] = result;
  }

  return result;
}

void sub_29ACCD828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ABF15A8(&a9);
  _Unwind_Resume(a1);
}

__n128 *sub_29ACCD848(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ACCD8DC(a1, v4, v6);
      v6 += 4;
      v4 = (v12 + 64);
      v12 += 64;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ACCD9B4(v9);
  return v4;
}

__n128 sub_29ACCD8DC(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v5 = a3->n128_u64[0];
  a2->n128_u64[0] = a3->n128_u64[0];
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2->n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  a2->n128_u32[2] = a3->n128_u32[2];
  v6 = a3[1].n128_u64[0];
  a2[1].n128_u64[0] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[1].n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  a2[1].n128_u8[8] = a3[1].n128_u8[8];
  sub_29A1E21F4(&a2[1].n128_u32[3], &a3[1].n128_u32[3]);
  sub_29A1E2240(&a2[2], &a3[2]);
  v7 = a3[2].n128_u64[1];
  a2[2].n128_u64[1] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[2].n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  result = a3[3];
  a2[3] = result;
  return result;
}

uint64_t sub_29ACCD9B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACCD9EC(a1);
  }

  return a1;
}

uint64_t *sub_29ACCD9EC(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 64;
      result = sub_29ABF1630(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29ACCDA40(__n128 **a1, __n128 *a2)
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[4 * v2];
  *(&v17 + 1) = &v8[4 * v7];
  sub_29ACCDB50(a1, v16, a2);
  *&v17 = v16 + 4;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29ACCDBC8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCDC7C(&v15);
  return v14;
}

void sub_29ACCDB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCDC7C(va);
  _Unwind_Resume(a1);
}

__n128 sub_29ACCDB50(uint64_t a1, __n128 *a2, __n128 *a3)
{
  a2->n128_u64[0] = a3->n128_u64[0];
  a3->n128_u64[0] = 0;
  a2->n128_u32[2] = a3->n128_u32[2];
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  a3[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = a3[1].n128_u8[8];
  sub_29A1DDD84(&a2[1].n128_u32[3], &a3[1].n128_u32[3]);
  sub_29A1DDDC0(&a2[2], &a3[2]);
  a2[2].n128_u64[1] = a3[2].n128_u64[1];
  a3[2].n128_u64[1] = 0;
  result = a3[3];
  a2[3] = result;
  return result;
}

uint64_t sub_29ACCDBC8(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29ACCDB50(a1, a4, v7);
      v7 += 4;
      a4 = v12 + 4;
      v12 += 4;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ABF1630(a1, v5);
      v5 += 4;
    }
  }

  return sub_29ACCD9B4(v9);
}

void **sub_29ACCDC7C(void **a1)
{
  sub_29ACCDCB0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACCDCB0(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 64;
      result = sub_29ABF1630(v4, v1 - 64);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29ACCDCF8(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xA8uLL);
  sub_29ACCDD54(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
}

__n128 sub_29ACCDD54(void *a1, uint64_t a2)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2084DE8;
  do
  {
    v3 = &a1[v2];
    v4 = (a2 + v2 * 8);
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    result = *(a2 + v2 * 8);
    *(v3 + 3) = result;
    v3[5] = *(a2 + v2 * 8 + 16);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v2 += 3;
  }

  while (v2 != 18);
  return result;
}

void sub_29ACCDDD0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2084DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ACCDE14(uint64_t a1)
{
  v1 = (a1 + 144);
  v2 = -144;
  do
  {
    v3 = v1;
    sub_29ABF15A8(&v3);
    v1 -= 3;
    v2 += 24;
  }

  while (v2);
}

uint64_t *sub_29ACCDE5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACCDE7C(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ACCDFA8(a1);
}

void sub_29ACCDF90(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2084E28;
  sub_29ACCE1AC(a2, v2);
}

void sub_29ACCDFA8(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 14, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29ABF3348((v1 + 8), *(v1 + 5));
    sub_29A5B0668((v1 + 2), *(v1 + 2));
    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
  }
}

atomic_uint *sub_29ACCE034(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 14);
  if (v1 != 1)
  {
    sub_29ACCE09C(*a1);
  }

  return *a1;
}

void sub_29ACCE100(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABECFB8(a1 + 1);
}

void sub_29ACCE174(_Unwind_Exception *a1)
{
  sub_29A5B0668(v1 + 8, *(v1 + 16));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType *sub_29ACCE210(atomic_ullong *a1)
{
  result = sub_29ACCE258();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType::~HdSphereSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ACCE258()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType::HdSphereSchemaTokens_StaticTokenType(v0);
  return v0;
}

void **sub_29ACCE29C(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 2)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 4;
          *v18 = v19;
          v18 += 4;
          v17 += 4;
        }

        while (v16 != a3);
      }

      v12 = v17;
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

    if (a4 >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0111A4(v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 4;
      *v12 = v13;
      v12 += 4;
    }
  }

  v7[1] = v12;
  return result;
}

uint64_t sub_29ACCE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v6;
      v7 = *(v5 + 32);
      *(a4 + 32) = v7;
      if (v7)
      {
        v8 = (v7 - 16);
        if (*(a4 + 24))
        {
          v8 = *(a4 + 24);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
        a4 = v13;
      }

      v5 += 40;
      a4 += 40;
      v13 = a4;
    }

    while (v5 != a3);
  }

  v11 = 1;
  sub_29ACCE484(a1, a2, a3);
  return sub_29ACCE4C8(v10);
}

void sub_29ACCE484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }
}

uint64_t sub_29ACCE4C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACCE500(a1);
  }

  return a1;
}

uint64_t sub_29ACCE500(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  return result;
}

uint64_t sub_29ACCE544(uint64_t a1)
{
  sub_29ACCE57C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ACCE57C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    *(result + 16) = v2 - 40;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  return result;
}

uint64_t sub_29ACCE5C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v22 = a1;
  if (v9)
  {
    v10 = sub_29A10E224(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[40 * v5];
  v19 = v10;
  v20 = v11;
  *(&v21 + 1) = &v10[40 * v9];
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 1) = v12;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(v11 + 4) = *(a2 + 32);
  *(a2 + 32) = 0;
  *&v21 = v11 + 40;
  v13 = a1[1];
  v14 = &v11[*a1 - v13];
  sub_29ACCE3D0(a1, *a1, v13, v14, a5);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29ACCE544(&v19);
  return v18;
}

void sub_29ACCE6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCE544(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCE6FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v24 = a1;
  if (v9)
  {
    v10 = sub_29A10E224(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[40 * v5];
  v21 = v10;
  v22 = v11;
  *(&v23 + 1) = &v10[40 * v9];
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 1) = v12;
  v13 = *(a2 + 32);
  *(v11 + 4) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(v11 + 3))
    {
      v14 = *(v11 + 3);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  *&v23 = v11 + 40;
  v15 = a1[1];
  v16 = &v11[*a1 - v15];
  sub_29ACCE3D0(a1, *a1, v15, v16, a5);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29ACCE544(&v21);
  return v20;
}

void sub_29ACCE834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCE544(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 8;
    do
    {
      *v4 = *(v8 - 8);
      *(v8 - 8) = 0;
      sub_29A1DDD84((v4 + 8), v8);
      sub_29A1DDDC0((v4 + 12), (v8 + 4));
      *(v4 + 16) = *(v8 + 8);
      *(v8 + 8) = 0;
      v4 = v14 + 24;
      v14 += 24;
      v9 = v8 + 16;
      v8 += 24;
    }

    while (v9 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29AC03510(a1, v6);
      v6 += 24;
    }
  }

  return sub_29ACCE930(v11);
}

uint64_t sub_29ACCE930(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACCE968(a1);
  }

  return a1;
}

uint64_t *sub_29ACCE968(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 24;
      result = sub_29AC03510(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29ACCE9BC(void **a1)
{
  sub_29ACCE9F0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29ACCE9F0(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 24;
      result = sub_29AC03510(v4, v1 - 24);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29ACCEA38(uint64_t *a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  *(&v16 + 1) = &v7[24 * v6];
  sub_29ACCEB68(a1, v15, a2);
  *&v16 = v15 + 24;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ACCE848(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ACCE9BC(&v14);
  return v13;
}

void sub_29ACCEB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ACCE9BC(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29ACCEB68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a2 + 8), a3 + 2);
  result = sub_29A1E2240((a2 + 12), a3 + 3);
  v7 = a3[2];
  *(a2 + 16) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29ACCEBFC(void *a1, uint64_t *a2)
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

  v12[4] = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v12[0] = v7;
  v12[1] = v8;
  v12[3] = &v7[24 * v6];
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v8 + 8) = *(a2 + 1);
  v12[2] = v8 + 24;
  sub_29ABC711C(a1, v12);
  v10 = a1[1];
  sub_29ABC71C0(v12);
  return v10;
}

void sub_29ACCED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACCED24(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x18);
  v5[2] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

void sub_29ACCEE7C(uint64_t *a1, uint64_t *a2)
{
  for (i = *a2; i; i = *(i + 48))
  {
    v4 = *a1;
    v5 = sub_29AC1199C((**a1 + 600));
    (*(*v5 + 16))(&v14);
    v6 = v15;
    if (v15)
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
      {
        sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
      }

      (*(*v6 + 24))(&v9, v6);
      sub_29AC3C124(&v9, &v12);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      if (v12)
      {
        v8 = *(v4 + 8);
        v11 = (*(*v12 + 32))(v12, 0.0);
        sub_29ACCF034(v8, &v11, 0, &v9);
      }

      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACCEFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACCF034(uint64_t a1@<X0>, void *a2@<X1>, atomic_ullong **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2 ^ (*a2 >> 3);
  v25 = 0;
  v26 = v8;
  v9 = &v26;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v25 + i) = byte_29B734F74[v11];
  }

  v12 = (v25 | 1);
  sub_29ACCF20C(a1, v8, &v26);
  v14 = a1 + 16;
  if (a3)
  {
    a3[2] = v12;
    *a3 = 0;
  }

  v15 = a2;
  while (1)
  {
    v16 = v26;
    v17 = *v26;
    if (*v26)
    {
      v18 = v17[2];
      while (1)
      {
        v19 = v17;
        if (v18 > v12)
        {
          break;
        }

        if (v18 == v12 && v17[1] == *v15)
        {
          if (a3)
          {
            tbb::internal::deallocate_via_handler_v3(a3, v13);
          }

          *a4 = v17;
          *(a4 + 8) = v14;
          *(a4 + 16) = 0;
          return;
        }

        v26 = v17;
        v17 = *v17;
        if (!*v19)
        {
          v16 = v19;
          break;
        }

        v18 = v17[2];
        v16 = v19;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x18);
      a3[1] = *a2;
      v15 = a3 + 1;
      a3[2] = v12;
      *a3 = 0;
      v16 = v26;
    }

    *a3 = v17;
    while (1)
    {
      v20 = v17;
      atomic_compare_exchange_strong(v16, &v20, a3);
      if (v20 == v17)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v16, 0, memory_order_relaxed);
      if (add_explicit != v17)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v17;
LABEL_21:
    if (v17 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v14;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v14;
  *(a4 + 16) = 1;
  v23 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v23) > *(a1 + 44))
  {
    do
    {
      v24 = v23;
      atomic_compare_exchange_strong((a1 + 8), &v24, 2 * v23);
    }

    while (v24 != v23 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v23);
  }
}

void sub_29ACCF20C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29ACCF2A8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29ACCF2A8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29ACCF2A8(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29ACCF38C(&v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

atomic_ullong *sub_29ACCF38C@<X0>(atomic_ullong ***a1@<X1>, unint64_t a2@<X2>, atomic_ullong **a3@<X8>)
{
  i = **a1;
  result = tbb::internal::allocate_via_handler_v3(0x18);
  result[2] = a2;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v10 = *a1;
    *result = i;
    while (1)
    {
      v11 = i;
      atomic_compare_exchange_strong(v10, &v11, result);
      if (v11 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v10, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a1; ; *a1 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v9 = i[2];
      if (v9 > a2)
      {
        goto LABEL_3;
      }

      if (v9 == a2)
      {
        result = tbb::internal::deallocate_via_handler_v3(result, v8);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a3 = i;
  return result;
}

void *sub_29ACCF44C(uint64_t *a1, uint64_t **a2, uint64_t **a3, unint64_t a4)
{
  v8 = a1[2];
  result = *a1;
  if (a4 > (v8 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(a1, v11);
    v12 = *a2;
    v13 = a2[1];
    v14 = *a3;
    v15 = a3[1];
    v16 = a1[1];
    if (*a2 != *a3 || v13 != v15)
    {
      do
      {
        *v16 = *(v12 + 8);
        do
        {
          v12 = *v12;
        }

        while (v12 && (*(v12 + 16) & 1) == 0);
        ++v16;
      }

      while (v12 != v14 || v13 != v15);
    }

LABEL_49:
    a1[1] = v16;
    return result;
  }

  v18 = a1[1];
  v19 = (v18 - result) >> 3;
  v21 = *a2;
  v20 = a2[1];
  if (v19 < a4)
  {
    if (v19 >= 1)
    {
      v22 = *a2;
      do
      {
        do
        {
          v22 = *v22;
        }

        while (v22 && (*(v22 + 16) & 1) == 0);
      }

      while (v19-- > 1);
      if (v21 != v22)
      {
        do
        {
          *result = *(v21 + 8);
          do
          {
            v21 = *v21;
          }

          while (v21 && (*(v21 + 16) & 1) == 0);
          ++result;
        }

        while (v21 != v22);
        v18 = a1[1];
      }

      v21 = v22;
    }

    v24 = *a3;
    v25 = a3[1];
    v26 = v21 == *a3 && v20 == v25;
    v27 = v18;
    if (!v26)
    {
      v27 = v18;
      do
      {
        *v27 = *(v21 + 8);
        do
        {
          v21 = *v21;
        }

        while (v21 && (*(v21 + 16) & 1) == 0);
        ++v27;
      }

      while (v21 != v24 || v20 != v25);
    }

    v16 = v27;
    goto LABEL_49;
  }

  v29 = *a3;
  v30 = a3[1];
  while (v21 != v29 || v20 != v30)
  {
    *result = *(v21 + 8);
    do
    {
      v21 = *v21;
    }

    while (v21 && (*(v21 + 16) & 1) == 0);
    ++result;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ACCF618(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_29A843CA0, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::ConvertPrimsRenamedToRemovedAndAdded(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29B2C7330();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  sub_29B2C7388();
LABEL_3:
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = 0uLL;
  v20 = 0;
  if (a2[65] >= 0x11u)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v9 = a2[64];
  if (v9)
  {
    v10 = &v8[4 * v9];
    do
    {
      if (*v8 != *(v8 + 1))
      {
        sub_29AC4DAF8(a3, v8);
        sub_29A1E28B4(&v21, v8 + 2);
        while (1)
        {
          v11 = v22;
          if (v21 == v22)
          {
            break;
          }

          sub_29A1E21F4(&v17, v22 - 2);
          sub_29A1E2240(&v18, v11 - 1);
          v12 = v22 - 2;
          sub_29A1E230C(&v21, v22 - 2);
          v22 = v12;
          (*(*a1 + 16))(v15, a1, &v17);
          sub_29AC4CE80(a4, &v17, v15);
          (*(*a1 + 24))(&v13, a1, &v17);
          sub_29A1E23D4(&v19);
          v19 = v13;
          v20 = v14;
          v14 = 0;
          v13 = 0uLL;
          v24 = &v13;
          sub_29A1E234C(&v24);
          sub_29ACCFA14(&v21, v22, *(&v19 + 1), *(&v19 + 1), v19, v19, (*(&v19 + 1) - v19) >> 3);
          if (v16)
          {
            sub_29A014BEC(v16);
          }

          if ((v15[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v15[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
          sub_29A1DE3A4(&v17);
        }
      }

      v8 += 4;
    }

    while (v8 != v10);
  }

  v15[0] = &v19;
  sub_29A1E234C(v15);
  *&v19 = &v21;
  sub_29A1E234C(&v19);
}

void sub_29ACCF898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a13 = &a17;
  sub_29A1E234C(&a13);
  a17 = &a21;
  sub_29A1E234C(&a17);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::ConvertPrimsRenamedToRemovedAndAdded(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v7[17] = *MEMORY[0x29EDCA608];
  v7[16] = 0x1000000000;
  v6[32] = 0x1000000000;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::ConvertPrimsRenamedToRemovedAndAdded(a1, a2, v7, v6);
  (*(*a3 + 24))(a3, a1, v7);
  (*(*a3 + 16))(a3, a1, v6);
  sub_29AC263E4(v6);
  return sub_29AC26348(v7);
}

void sub_29ACCF9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC263E4(va);
  sub_29AC26348((v3 - 176));
  _Unwind_Resume(a1);
}

char *sub_29ACCFA14(void *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  if (a7 >= 1)
  {
    v13 = a1[1];
    v12 = a1[2];
    if (a7 <= (v12 - v13) >> 3)
    {
      v21 = v13 - a2;
      v22 = (v13 - a2) >> 3;
      if (v22 >= a7)
      {
        sub_29A23DFE4(a1, a2, a1[1], &a2[2 * a7]);
        v24 = a3;
        v25 = a4;
        v26 = a4 - 8 * a7;
      }

      else
      {
        v23 = a4 - v21;
        a1[1] = sub_29ACCFC48(a1, a3, a4 - v21, a5, a6, a1[1]);
        if (v22 < 1)
        {
          return v7;
        }

        sub_29A23DFE4(a1, v7, v13, &v7[2 * a7]);
        v24 = a3;
        v25 = a4;
        v26 = v23;
      }

      sub_29ACCFCE8(v24, v25, v26, v7, &v28);
      return v7;
    }

    v14 = *a1;
    v15 = a7 + ((v13 - *a1) >> 3);
    if (v15 >> 61)
    {
      sub_29A00C9A4();
    }

    v16 = a2 - v14;
    v17 = v12 - v14;
    if (v17 >> 2 > v15)
    {
      v15 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v15;
    }

    v19 = v16 >> 3;
    v32 = a1;
    if (v18)
    {
      v20 = sub_29A00C9BC(a1, v18);
    }

    else
    {
      v20 = 0;
    }

    v28 = v20;
    v29 = &v20[8 * v19];
    v30 = v29;
    v31 = &v20[8 * v18];
    sub_29ACCFBD4(&v28, a3, a4, a7);
    v7 = sub_29A23E100(a1, &v28, v7);
    sub_29A1E29E8(&v28);
  }

  return v7;
}

_DWORD *sub_29ACCFBD4(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = *(result + 2);
  if (a4)
  {
    v6 = 8 * a4;
    v7 = (a3 - 8);
    v8 = &v5[2 * a4];
    do
    {
      sub_29A1E21F4(v5, v7);
      result = sub_29A1E2240(v5 + 1, v7 + 1);
      v5 += 2;
      v7 -= 2;
      v6 -= 8;
    }

    while (v6);
    v5 = v8;
  }

  *(v4 + 2) = v5;
  return result;
}

_DWORD *sub_29ACCFC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = a6;
  v12 = a6;
  v13 = a6;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a3 != a5)
  {
    v8 = a3;
    do
    {
      sub_29A1E21F4(v6, (v8 - 8));
      sub_29A1E2240(v6 + 1, (v8 - 4));
      v6 = v13 + 2;
      v13 += 2;
      v8 -= 8;
    }

    while (v8 != a5);
  }

  v11 = 1;
  sub_29A1E2280(v10);
  return v6;
}

int *sub_29ACCFCE8@<X0>(int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int *a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    do
    {
      sub_29A2258F0(a4, (v6 - 8));
      result = sub_29A225948(a4 + 1, (v6 - 4));
      a4 += 2;
      v6 -= 8;
    }

    while (v6 != v9);
  }

  *a5 = v7;
  a5[1] = v9;
  a5[2] = a4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *this)
{
  pxrInternal__aapl__pxrReserved__::HfPluginBase::~HfPluginBase(this);

  operator delete(v1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(&v12.__r_.__value_.__l.__data_, ("N32pxrInternal__aapl__pxrReserved__26HdSceneIndexPluginRegistryE" & 0x7FFFFFFFFFFFFFFFLL));
  v2 = std::string::insert(&v12, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v13, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v12);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x90uLL);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::HdSceneIndexPluginRegistry(v8, v9);
      v11 = atomic_load(a1);
      if (v11)
      {
        if (v8 != v11)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v16 = 86;
          v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry]";
          v18 = 0;
          v19 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v10);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v16 = 90;
        v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry]";
        v18 = 0;
        v19 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v10, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29ACD0000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::~HdSceneIndexPluginRegistry(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType::~HdSceneIndexPluginRegistryTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType::HdSceneIndexPluginRegistryTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__rendererDisplayName");
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance();
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::HdSceneIndexPluginRegistry(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *this, const std::type_info *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(this, v3);
  *this = &unk_2A2084FA0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 11) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  *(this + 17) = 0;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance, this))
  {
    v9 = "tf/instantiateSingleton.h";
    v10 = "SetInstanceConstructed";
    v11 = 54;
    v12 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v9, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v5);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v4);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(v7, &v9);
  v15 = &v9;
  sub_29AC877F8(&v15);
  return this;
}

void sub_29ACD0470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a10;
  sub_29AC877F8(&a16);
  sub_29ACD1CB8(v19, *(v16 + 16));
  sub_29ACD1C14(v18, *(v16 + 13));
  sub_29ACD1B64(v17, *(v16 + 10));
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(v16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::~HdSceneIndexPluginRegistry(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *this)
{
  sub_29ACD1CB8(this + 120, *(this + 16));
  sub_29ACD1C14(this + 96, *(this + 13));
  sub_29ACD1B64(this + 72, *(this + 10));

  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::~HdSceneIndexPluginRegistry(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::AppendSceneIndex@<X0>(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  Plugin = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(a1, a2);
  if (!Plugin)
  {
    *a4 = *a3;

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::AppendSceneIndex(Plugin);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::_AppendForPhases(uint64_t *a2@<X1>, uint64_t *a5@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  *a5 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void *sub_29ACD0890@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, *a1, a2);

  return sub_29ABDE960(a3, v6);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::_CollectAdditionalMetadata(uint64_t ***this, const pxrInternal__aapl__pxrReserved__::PlugRegistry *a2, const pxrInternal__aapl__pxrReserved__::TfType *a3)
{
  v5 = *a3;
  sub_29A008E78(__p, "loadWithRenderer");
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v5, &v37);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36, TypeName);
  if (pxrInternal__aapl__pxrReserved__::JsValue::GetType(&v37) == 2)
  {
    __p[0] = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v37);
    v7 = sub_29ACD1D30(this + 12, __p[0], &unk_29B4D6118, __p, &v34);
    sub_29A1D8028((v7 + 7), &v36);
  }

  else if (pxrInternal__aapl__pxrReserved__::JsValue::GetType(&v37) == 1)
  {
    JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v37);
    sub_29A012B58(&v34, (JsArray[1] - *JsArray) >> 4);
    v9 = *JsArray;
    v10 = JsArray[1];
    v11 = v34;
    if (v9 != v10)
    {
      do
      {
        String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v9);
        if (*(String + 23) < 0)
        {
          sub_29A008D14(__p, *String, *(String + 1));
        }

        else
        {
          v13 = *String;
          v40 = *(String + 2);
          *__p = v13;
        }

        if (*(v11 + 23) < 0)
        {
          operator delete(*v11);
        }

        v14 = *__p;
        *(v11 + 16) = v40;
        *v11 = v14;
        v11 += 24;
        v9 = (v9 + 16);
      }

      while (v9 != v10);
      v11 = v34;
    }

    for (i = v35; v11 != i; v11 += 24)
    {
      v32 = v11;
      v16 = sub_29ACD1D30(this + 12, v11, &unk_29B4D6118, &v32, &v42);
      sub_29A1D8028((v16 + 7), &v36);
    }

    __p[0] = &v34;
    sub_29A012C90(__p);
  }

  v17 = *a3;
  sub_29A008E78(__p, "loadWithApps");
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v17, &v32);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::JsValue::GetType(&v32) == 2)
  {
    __p[0] = &v36;
    v18 = sub_29A166C1C(this + 15, &v36, &unk_29B4D6118, __p, &v34);
    v19 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v32);
    sub_29A095658(v18 + 5, v19, v19);
  }

  else if (pxrInternal__aapl__pxrReserved__::JsValue::GetType(&v32) == 1)
  {
    v20 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v32);
    sub_29A012B58(&v34, (v20[1] - *v20) >> 4);
    v21 = *v20;
    v22 = v20[1];
    v23 = v34;
    if (v21 != v22)
    {
      do
      {
        v24 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v21);
        if (*(v24 + 23) < 0)
        {
          sub_29A008D14(__p, *v24, *(v24 + 1));
        }

        else
        {
          v25 = *v24;
          v40 = *(v24 + 2);
          *__p = v25;
        }

        if (*(v23 + 23) < 0)
        {
          operator delete(*v23);
        }

        v26 = *__p;
        *(v23 + 16) = v40;
        *v23 = v26;
        v23 += 24;
        v21 = (v21 + 16);
      }

      while (v21 != v22);
      v23 = v34;
    }

    sub_29A1DF544(__p, v23, v35);
    v42 = &v36;
    v27 = sub_29A166C1C(this + 15, &v36, &unk_29B4D6118, &v42, &v41);
    v28 = (v27 + 6);
    v29 = (v27 + 5);
    sub_29A019EE8((v27 + 5), v27[6]);
    v30 = __p[1];
    *(v28 - 1) = __p[0];
    *v28 = v30;
    v31 = v40;
    v28[1] = v40;
    if (v31)
    {
      *(v30 + 2) = v28;
      __p[0] = &__p[1];
      __p[1] = 0;
      v40 = 0;
      v30 = 0;
    }

    else
    {
      *v29 = v28;
    }

    sub_29A019EE8(__p, v30);
    __p[0] = &v34;
    sub_29A012C90(__p);
  }

  if (v33)
  {
    sub_29A014BEC(v33);
  }

  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }
}