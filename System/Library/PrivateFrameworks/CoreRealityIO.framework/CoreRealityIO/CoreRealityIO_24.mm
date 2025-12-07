void sub_24761F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, realityio::TextureBuilder::TextureDataT *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2D0]);
  if ((a65 & 7) != 0)
  {
    atomic_fetch_add_explicit((a65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a55);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void anonymous namespace::uvNameAndTransformForTextureInput(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4, void *a5, void *a6, void *a7)
{
  v122 = *MEMORY[0x277D85DE8];
  v13 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2);
  if ((a1 + 8) == v13 || (v14 = v13, !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v13 + 5))))
  {

    JUMPOUT(0x24C1A8D40);
  }

  v15 = v14[6];
  if ((v15 & 4) != 0)
  {
    v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v14 + 5);
  }

  else
  {
    v16 = v14[5];
  }

  v86 = a4;
  v87 = a6;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v89, v16);
  v17 = v89;
  if (v89 != v90)
  {
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v23 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v119, v17 + 4);
      if ((v119 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v119 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
      }

      v25 = *(EmptyString + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(EmptyString + 8);
      }

      if (v25 >= 8)
      {
        if (v26 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (!strncmp(EmptyString, "outputs:", 8uLL) && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v120))
        {
          if ((v121 & 4) != 0)
          {
            v27 = (*((v121 & 0xFFFFFFFFFFFFFFF8) + 168))(&v120);
          }

          else
          {
            v27 = v120;
          }

          MEMORY[0x24C1A5DE0](&v116, "inputs:wrapS");
          v28 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v116);
          v29 = v28;
          if ((v116 & 7) != 0)
          {
            atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v30 = (v27 + 8);
          if ((v27 + 8) != v28)
          {
            v31 = v28 + 5;
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v28 + 5)))
            {
              v32 = v29[6];
              if ((v32 & 4) != 0)
              {
                v31 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(v29 + 5);
              }

              pxrInternal__aapl__pxrReserved__::TfToken::operator=(v87, v31);
            }
          }

          MEMORY[0x24C1A5DE0](&v116, "inputs:wrapT");
          v33 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v116);
          v34 = v33;
          if ((v116 & 7) != 0)
          {
            atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v30 != v33)
          {
            v35 = v33 + 5;
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v33 + 5)))
            {
              v36 = v34[6];
              if ((v36 & 4) != 0)
              {
                v35 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(v34 + 5);
              }

              pxrInternal__aapl__pxrReserved__::TfToken::operator=(a7, v35);
            }
          }

          MEMORY[0x24C1A5DE0](&v116, "inputs:st");
          v37 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v116);
          v38 = v37;
          if ((v116 & 7) != 0)
          {
            atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v30 != v37 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v37 + 5)))
          {
            v39 = v38[6];
            if ((v39 & 4) != 0)
            {
              v40 = (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(v38 + 5);
            }

            else
            {
              v40 = v38[5];
            }

            MEMORY[0x24C1A5DE0](&v116, "outputs:result");
            v41 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v40, &v116);
            v42 = v41;
            if ((v116 & 7) != 0)
            {
              atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v40 + 8) != v41 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v41 + 5)))
            {
              v43 = v42[6];
              if ((v43 & 4) != 0)
              {
                v44 = (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(v42 + 5);
              }

              else
              {
                v44 = v42[5];
              }

              MEMORY[0x24C1A5DE0](&v116, "inputs:varname");
              v45 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v116);
              v46 = v45;
              if ((v116 & 7) != 0)
              {
                atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v47 = (v44 + 8);
              if ((v44 + 8) != v45)
              {
                v48 = v45 + 5;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v45 + 5)))
                {
                  v49 = v46[6];
                  if ((v49 & 4) != 0)
                  {
                    v48 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(v46 + 5);
                  }

                  v50 = *v48 & 0xFFFFFFFFFFFFFFF8;
                  if (v50)
                  {
                    v51 = (v50 + 16);
                    if (*(v50 + 39) < 0)
                    {
                      v51 = *v51;
                    }
                  }

                  else
                  {
                    v51 = "";
                  }

                  MEMORY[0x24C1A8D40](a3, v51);
                }
              }

              MEMORY[0x24C1A5DE0](&v116, "inputs:scale");
              v52 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v116);
              v53 = v52;
              if ((v116 & 7) != 0)
              {
                atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v54 = _D8;
              if (v47 != v52)
              {
                v55 = v52 + 5;
                v54 = _D8;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>((v52 + 5)))
                {
                  v56 = v53[6];
                  if ((v56 & 4) != 0)
                  {
                    v55 = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(v53 + 5);
                  }

                  v54 = *v55;
                }
              }

              MEMORY[0x24C1A5DE0](&v116, "inputs:translation");
              v57 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v116);
              v58 = v57;
              if ((v116 & 7) != 0)
              {
                atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v59 = 0;
              if (v47 != v57)
              {
                v60 = v57 + 5;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>((v57 + 5)))
                {
                  v61 = v58[6];
                  if ((v61 & 4) != 0)
                  {
                    v60 = (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(v58 + 5);
                  }

                  v59 = *v60;
                }
              }

              MEMORY[0x24C1A5DE0](&v116, "inputs:rotation");
              v62 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v116);
              v63 = v62;
              if ((v116 & 7) != 0)
              {
                atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v64 = 0.0;
              if (v47 != v62)
              {
                v65 = (v62 + 5);
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v62 + 5)))
                {
                  v66 = v63[6];
                  if ((v66 & 4) != 0)
                  {
                    v65 = (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(v63 + 5);
                  }

                  v64 = *v65;
                }
              }

              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(v97, 1.0);
              *&v116 = v54;
              DWORD2(v116) = 1065353216;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetScale();
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v94, 1.0);
              v67 = v64 / 180.0 * 3.14159265;
              v69 = __sincosf_stret(v67 * 0.5);
              cosval = v69.__cosval;
              _Q0 = vmulq_n_f32(xmmword_247753B70, v69.__sinval);
              _S2 = _Q0.i32[1];
              _S4 = _Q0.i32[2];
              __asm { FMLS            S3, S4, V0.S[2] }

              v74 = _S3 + (cosval * cosval);
              v75 = vmuls_lane_f32(v69.__cosval, _Q0, 2);
              v76 = vmuls_lane_f32(v69.__cosval, *_Q0.f32, 1);
              __asm { FMLA            S5, S2, V0.S[1] }

              v78 = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
              __asm
              {
                FMLA            S18, S4, V0.S[1]
                FMLA            S19, S4, V0.S[1]
                FMLA            S1, S4, V0.S[2]
              }

              *&v94 = v74;
              *(&v94 + 1) = (v75 + (_Q0.f32[0] * _Q0.f32[1])) + (v75 + (_Q0.f32[0] * _Q0.f32[1]));
              *(&v94 + 2) = -(v76 - (_Q0.f32[0] * _Q0.f32[2])) - (v76 - (_Q0.f32[0] * _Q0.f32[2]));
              *(&v94 + 3) = -(v75 - (_Q0.f32[0] * _Q0.f32[1])) - (v75 - (_Q0.f32[0] * _Q0.f32[1]));
              *&v95 = v78;
              *(&v95 + 1) = _S18 + _S18;
              __asm { FMLS            S1, S2, V0.S[1] }

              *(&v95 + 2) = (v76 + (_Q0.f32[2] * _Q0.f32[0])) + (v76 + (_Q0.f32[2] * _Q0.f32[0]));
              *(&v95 + 3) = _S19 + _S19;
              v96 = _S1;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v91, 1.0);
              *(&v92 + 1) = v59;
              v116 = v91;
              v117 = v92;
              v118 = v93;
              *(&v117 + 3) = -*(&v59 + 1);
              v113 = v94;
              v114 = v95;
              v115 = v96;
              *(&v113 + 1) = -*(&v94 + 1);
              *(&v113 + 3) = -*(&v94 + 3);
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v110, 1.0);
              *(&v111 + 1) = 0xBF80000000000000;
              v112 = 1065353216;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(v107, 1.0);
              v108 = 0x3F80000000000000;
              v109 = 1065353216;
              v98 = v110;
              v99 = v111;
              v100 = v112;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              v101 = v98;
              v102 = v99;
              v103 = v100;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              v104 = v101;
              v105 = v102;
              v106 = v103;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              *v88 = v104;
              *&v88[16] = v105;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              *&v83 = *v88;
              *(&v83 + 1) = *&v88[12];
              *v86 = v83;
              *a5 = *&v88[24];
            }
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v120);
      if ((v119 & 7) != 0)
      {
        atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v17[1];
      if (v84)
      {
        do
        {
          v85 = v84;
          v84 = *v84;
        }

        while (v84);
      }

      else
      {
        do
        {
          v85 = v17[2];
          _ZF = *v85 == v17;
          v17 = v85;
        }

        while (!_ZF);
      }

      v17 = v85;
    }

    while (v85 != v90);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v89, v90[0]);
}

void sub_2476210A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v23 + 8));
  v26 = *(v24 - 192);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

id anonymous namespace::samplerForTextureAttribute(unint64_t *a1, unint64_t *a2)
{
  v4 = REMaterialCreateDefaultSamplerDescriptor();
  v5 = *a1;
  v10 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFFFF8;
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *a2;
  v9 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFF8;
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  [v4 setTAddressMode:{SamplerAddressMode, v9, v10}];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4;
}

void sub_247621280(_Unwind_Exception *a1)
{
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::getTextureFromConnection(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  *a6 = 0;
  if ((a2 + 8) != v11)
  {
    v12 = v11;
    v13 = (v11 + 5);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v11 + 5)))
    {
      v14 = v12[6];
      if ((v14 & 4) != 0)
      {
        v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
      }

      else
      {
        v15 = *v13;
      }

      std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v28, v15);
      MEMORY[0x24C1A5DE0](&v27, "__value");
      v16 = v29[0];
      if (!v29[0])
      {
        goto LABEL_18;
      }

      v17 = v29;
      do
      {
        v18 = v17;
        v19 = v16 + 4;
        v20 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v28, v16 + 4, &v27);
        v21 = v20;
        if (!v20)
        {
          v17 = v16;
        }

        v16 = v16[v21];
      }

      while (v16);
      if (v17 == v29 || (!v20 ? (v22 = v19) : (v22 = (v18 + 4)), std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v28, &v27, v22)))
      {
LABEL_18:
        v17 = v29;
      }

      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v29 == v17)
      {
        if (*a1)
        {
LABEL_32:
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v28, v29[0]);
          return;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
      }

      else
      {
        *a6 = 1;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>((v17 + 5)))
        {
          v23 = v17[6];
          if ((v23 & 4) != 0)
          {
            v24 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v17 + 5);
          }

          else
          {
            v24 = v17[5];
          }

          v25 = *v24;
          *a1 = v25;
          if (v25)
          {
            RERetain();
          }

          goto LABEL_32;
        }
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v28, v29[0]);
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v13))
    {
      v26 = v12[6];
      if ((v26 & 4) != 0)
      {
        v13 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
      }

      *a5 = *v13;
    }
  }

  *a1 = 0;
}

void sub_2476214B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void *anonymous namespace::getTextureFromTokValMapAtValue(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v5 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
LABEL_16:
    *v3 = 0;
    return result;
  }

  while (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v4 + 5)))
  {
    v8 = v4[6];
    if ((v8 & 4) != 0)
    {
      v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v4 + 5);
    }

    else
    {
      v9 = v4[5];
    }

    if (*v3)
    {
      return result;
    }

    result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
LABEL_8:
    v10 = v4[1];
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
        v11 = v4[2];
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
    }

    v4 = v11;
    if (v11 == v5)
    {
      goto LABEL_16;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>((v4 + 5));
  if (!result)
  {
    goto LABEL_8;
  }

  MEMORY[0x24C1A5DE0](&v20, "__value");
  v13 = v20 ^ v4[4];
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13 <= 7)
  {
    MEMORY[0x24C1A5DE0](&v20, "__sourcePrimPath");
    v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v20);
    v15 = v14;
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v5 != v14)
    {
      v16 = v14 + 5;
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>((v14 + 5)))
      {
        v17 = v15[6];
        if ((v17 & 4) != 0)
        {
          v16 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + 5);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 4, v16 + 1);
      }
    }
  }

  v18 = v4[6];
  if ((v18 & 4) != 0)
  {
    v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v4 + 5);
  }

  else
  {
    v19 = v4[5];
  }

  result = *v19;
  *v3 = result;
  if (result)
  {
    return RERetain();
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  result = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  return a1;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void anonymous namespace::getTextureInfoFromConnection(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, int32x4_t *a5, int32x4_t *a6, int32x4_t *a7, void *a8, _BYTE *a9, _BYTE *a10)
{
  v89 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_247757270;
  __asm { FMOV            V0.4S, #1.0 }

  v73 = _Q0;
  *a6 = _Q0;
  a7->i64[0] = 0;
  a7->i64[1] = 0;
  if ((*a8 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a8 = 0;
  *a1 = 0;
  v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  v19 = v18;
  *a9 = 0;
  *a10 = 0;
  v20 = (a2 + 8);
  if ((a2 + 8) != v18)
  {
    v21 = v18 + 5;
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v18 + 5)))
    {
      v22 = v19[6];
      if ((v22 & 4) != 0)
      {
        v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      else
      {
        v23 = *v21;
      }

      std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&__p, v23);
      v24 = __p;
      if (__p == &v81)
      {
LABEL_93:
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&__p, v81);
        return;
      }

      while (1)
      {
        v25 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v86, v24 + 4);
        if ((v86 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v86 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
        }

        v27 = *(EmptyString + 23);
        v28 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v27 = *(EmptyString + 8);
        }

        if (v27 < 8)
        {
          goto LABEL_17;
        }

        if (v28 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (strncmp(EmptyString, "outputs:", 8uLL))
        {
LABEL_17:
          MEMORY[0x24C1A5DE0](&v83, "__value");
          if ((v83 ^ v86) > 7)
          {
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v29 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(&v87);
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v29)
            {
              if ((v88 & 4) != 0)
              {
                v30 = (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(&v87);
              }

              else
              {
                v30 = v87;
              }

              realityio::WrappedRERef<REAsset *>::operator=(a1, v30);
            }
          }

          goto LABEL_78;
        }

        *a9 = 1;
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, &v86);
        v31 = ((v88 & 4) != 0 ? (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(&v87) : v87);
        v34 = *v31;
        v33 = v31 + 1;
        v32 = v34;
        if (v34 != v33)
        {
          break;
        }

LABEL_78:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v87);
        if ((v86 & 7) != 0)
        {
          atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v47 = v24[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v24[2];
            _ZF = *v48 == v24;
            v24 = v48;
          }

          while (!_ZF);
        }

        v24 = v48;
        if (v48 == &v81)
        {
          goto LABEL_93;
        }
      }

      while (1)
      {
        std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v83, v32 + 4);
        MEMORY[0x24C1A5DE0](&v79, "inputs:scale");
        if ((v79 ^ v83) > 7)
        {
          if ((v79 & 7) != 0)
          {
            atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v35 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v84);
          if ((v79 & 7) != 0)
          {
            atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v35)
          {
            if ((v85 & 4) != 0)
            {
              v36 = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(&v84);
            }

            else
            {
              v36 = v84;
            }

            *a6 = *v36;
            goto LABEL_66;
          }
        }

        MEMORY[0x24C1A5DE0](&v79, "inputs:fallback");
        if ((v79 ^ v83) > 7)
        {
          break;
        }

        v37 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v84);
        if ((v79 & 7) != 0)
        {
          atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!v37)
        {
          goto LABEL_47;
        }

        if ((v85 & 4) != 0)
        {
          v38 = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(&v84);
        }

        else
        {
          v38 = v84;
        }

        v39 = *v38;
        v40 = a5;
LABEL_54:
        *v40 = v39;
LABEL_66:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v84);
        if ((v83 & 7) != 0)
        {
          atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v45 = v32[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v32[2];
            _ZF = *v46 == v32;
            v32 = v46;
          }

          while (!_ZF);
        }

        v32 = v46;
        if (v46 == v33)
        {
          goto LABEL_78;
        }
      }

      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_47:
      MEMORY[0x24C1A5DE0](&v79, "inputs:bias");
      if ((v79 ^ v83) > 7)
      {
        if ((v79 & 7) != 0)
        {
          atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_57:
        MEMORY[0x24C1A5DE0](&v79, "inputs:sourceColorSpace");
        if ((v79 ^ v83) > 7)
        {
          if ((v79 & 7) != 0)
          {
            atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v43 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v84);
          if ((v79 & 7) != 0)
          {
            atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v43)
          {
            v44 = &v84;
            if ((v85 & 4) != 0)
            {
              v44 = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(&v84, &v84);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v44);
          }
        }

        goto LABEL_66;
      }

      v41 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v84);
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v41)
      {
        goto LABEL_57;
      }

      if ((v85 & 4) != 0)
      {
        v42 = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(&v84);
      }

      else
      {
        v42 = v84;
      }

      v39 = *v42;
      v40 = a7;
      goto LABEL_54;
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v19 + 5)))
    {
      *a10 = 1;
      v49 = v19[6];
      if ((v49 & 4) != 0)
      {
        v21 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      v50 = v73;
      v50.i32[0] = *v21;
      v51 = vzip1q_s32(v50, v50);
      v51.i32[2] = *v21;
      *a5 = v51;
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((v19 + 5)))
    {
      *a10 = 1;
      v52 = v19[6];
      if ((v52 & 4) != 0)
      {
        v53 = (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      else
      {
        v53 = *v21;
      }

      v54 = *v53;
      v55 = *(v53 + 2);
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v56 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v56 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v53);
      }

      if (*(v56 + 23) >= 0)
      {
        v59 = *(v56 + 23);
      }

      else
      {
        v59 = *(v56 + 8);
      }

      std::string::basic_string[abi:ne200100](&__p, v59 + 12);
      if (v82 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v59)
      {
        if (*(v56 + 23) >= 0)
        {
          v61 = v56;
        }

        else
        {
          v61 = *v56;
        }

        memmove(p_p, v61, v59);
      }

      strcpy(p_p + v59, "__colorSpace");
      MEMORY[0x24C1A5E00](&v86, &__p);
      v62 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v86);
      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v82 < 0)
      {
        operator delete(__p);
      }

      if (v20 != v62)
      {
        v63 = v62 + 5;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v62 + 5)))
        {
          v64 = v62[6];
          if ((v64 & 4) != 0)
          {
            v63 = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(v62 + 5);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v63);
        }
      }

      a5->i64[0] = v54;
      a5->i32[2] = v55;
      a5->i32[3] = 1065353216;
    }

    else
    {
      v57 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v19 + 5));
      if (v57)
      {
        *a10 = 1;
        if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v58 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v58 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v57);
        }

        if (*(v58 + 23) >= 0)
        {
          v65 = *(v58 + 23);
        }

        else
        {
          v65 = *(v58 + 8);
        }

        std::string::basic_string[abi:ne200100](&__p, v65 + 12);
        if (v82 >= 0)
        {
          v66 = &__p;
        }

        else
        {
          v66 = __p;
        }

        if (v65)
        {
          if (*(v58 + 23) >= 0)
          {
            v67 = v58;
          }

          else
          {
            v67 = *v58;
          }

          memmove(v66, v67, v65);
        }

        strcpy(v66 + v65, "__colorSpace");
        MEMORY[0x24C1A5E00](&v86, &__p);
        v68 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v86);
        if ((v86 & 7) != 0)
        {
          atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v82 < 0)
        {
          operator delete(__p);
        }

        if (v20 != v68)
        {
          v69 = v68 + 5;
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v68 + 5)))
          {
            v70 = v68[6];
            if ((v70 & 4) != 0)
            {
              v69 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(v68 + 5);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v69);
          }
        }

        v71 = v19[6];
        if ((v71 & 4) != 0)
        {
          v72 = (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
        }

        else
        {
          v72 = *v21;
        }

        *a5 = *v72;
      }
    }
  }
}

void *anonymous namespace::setFloatMaterialConstantScale(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, float a5)
{
  v14 = a5;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  REMaterialAssetBuilderSetFloat();
  result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_247622440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a12);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

float anonymous namespace::getShadeInputValueWithFallback<float>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2);
  if ((a1 + 8) != v5)
  {
    v6 = v5;
    v7 = (v5 + 5);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v5 + 5)))
    {
      v8 = v6[6];
      if ((v8 & 4) != 0)
      {
        a3 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
      }

      else
      {
        a3 = v7;
      }
    }
  }

  return *a3;
}

uint64_t anonymous namespace::getShadeInputColor3WithFallback(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *&v7 = *a4;
  DWORD2(v7) = *(a4 + 8);
  HIDWORD(v7) = 1.0;
  v18 = v7;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  if (a2 + 8 != result)
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((result + 40));
    if (result)
    {
      v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
      v20 = v18;
      if ((a2 + 8) != v9)
      {
        v10 = v9;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((v9 + 5)))
        {
          v11 = v10[6];
          if ((v11 & 4) != 0)
          {
            v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 5);
          }

          else
          {
            v12 = v10[5];
          }

          *&v13 = *v12;
          DWORD2(v13) = *(v12 + 8);
          HIDWORD(v13) = 1.0;
LABEL_13:
          v20 = v13;
          goto LABEL_14;
        }

        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v10 + 5)))
        {
          v16 = v10[6];
          if ((v16 & 4) != 0)
          {
            v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 5);
          }

          else
          {
            v17 = v10[5];
          }

          *&v13 = *v17;
          DWORD2(v13) = *(v17 + 8);
          goto LABEL_13;
        }
      }

LABEL_14:
      v19 = 0;
      v15 = v20;
      v14 = v19;
      goto LABEL_15;
    }
  }

  v14 = 0;
  v15 = v18;
LABEL_15:
  *a1 = v15;
  *(a1 + 16) = v14;
  return result;
}

const void **anonymous namespace::assignGamutFromValueAndGamut(const void **result, _BYTE *a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  *a2 = 0;
  if ((a3 & 7) != 0 && (atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (v5 + 4);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v7 = EmptyString;
    }

    else
    {
      v7 = *EmptyString;
    }

    v15 = CFStringCreateWithCString(0, v7, 0x8000100u);
    v8 = MEMORY[0x24C1A4490]();
    if (v8)
    {
      v9 = CGColorSpaceCreateWithName(v8);
      v14 = v9;
      if (v9)
      {
        v10 = vcvt_hight_f64_f32(*v4);
        *components = vcvtq_f64_f32(*v4->f32);
        v13 = v10;
        v11 = CGColorCreate(v9, components);
        RECGColorToColorGamut();
        realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(&v11);
      }

      realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(&v14);
    }

    result = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v15);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_247622740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(va);
  realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(va1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v5 - 40));
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void anonymous namespace::getTextureInfoOrDefaultValueFromConnection<float>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, _OWORD *a5, _OWORD *a6, void *a7, void *a8, _DWORD *a9, int *a10, _BYTE *a11)
{
  v58 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_247757270;
  __asm { FMOV            V0.4S, #1.0 }

  *a6 = _Q0;
  *a7 = 0;
  a7[1] = 0;
  if ((*a8 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a8 = 0;
  *a1 = 0;
  v21 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  v22 = v21;
  *a11 = 0;
  if ((a2 + 8) == v21)
  {
    goto LABEL_90;
  }

  v23 = (v21 + 5);
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v21 + 5)))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v22 + 5)))
    {
      v47 = v22[6];
      if ((v47 & 4) != 0)
      {
        v23 = (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(v22 + 5);
      }

      v48 = *v23;
      goto LABEL_91;
    }

LABEL_90:
    v48 = *a10;
LABEL_91:
    *a9 = v48;
    return;
  }

  *a11 = 1;
  v24 = v22[6];
  v49 = a1;
  if ((v24 & 4) != 0)
  {
    v25 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v22 + 5);
  }

  else
  {
    v25 = *v23;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v52, v25);
  v26 = v52;
  if (v52 != v53)
  {
    while (1)
    {
      v27 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v55, v26 + 4);
      if ((v55 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v55 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
      }

      v29 = *(EmptyString + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(EmptyString + 8);
      }

      if (v29 >= 8)
      {
        if (v30 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (!strncmp(EmptyString, "outputs:", 8uLL))
        {
          break;
        }
      }

      MEMORY[0x24C1A5DE0](&v54, "__value");
      if ((v54 ^ v55) > 7)
      {
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v31 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(&v56);
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v31)
        {
          if ((v57 & 4) != 0)
          {
            v32 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56);
          }

          else
          {
            v32 = v56;
          }

          realityio::WrappedRERef<REAsset *>::operator=(v49, v32);
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v54, "inputs:fallback");
      if ((v54 ^ v55) > 7)
      {
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v33 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v56);
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v33)
        {
          if ((v57 & 4) != 0)
          {
            v34 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56);
          }

          else
          {
            v34 = v56;
          }

          *a5 = *v34;
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v54, "inputs:scale");
      if ((v54 ^ v55) > 7)
      {
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v35 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v56);
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v35)
        {
          if ((v57 & 4) != 0)
          {
            v36 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56);
          }

          else
          {
            v36 = v56;
          }

LABEL_59:
          *a6 = *v36;
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v54, "inputs:bias");
      if ((v54 ^ v55) > 7)
      {
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_62:
        MEMORY[0x24C1A5DE0](&v54, "inputs:sourceColorSpace");
        if ((v54 ^ v55) > 7)
        {
          if ((v54 & 7) != 0)
          {
            atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v43 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v56);
          if ((v54 & 7) != 0)
          {
            atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v43)
          {
            v44 = &v56;
            if ((v57 & 4) != 0)
            {
              v44 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56, &v56);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v44);
          }
        }

        goto LABEL_71;
      }

      v37 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v56);
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v37)
      {
        goto LABEL_62;
      }

      if ((v57 & 4) != 0)
      {
        v38 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56);
      }

      else
      {
        v38 = v56;
      }

      *a7 = *v38;
LABEL_71:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v56);
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v26[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v26[2];
          _ZF = *v46 == v26;
          v26 = v46;
        }

        while (!_ZF);
      }

      v26 = v46;
      if (v46 == v53)
      {
        goto LABEL_92;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, &v55);
    if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v56))
    {
      goto LABEL_71;
    }

    if ((v57 & 4) != 0)
    {
      v39 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(&v56);
    }

    else
    {
      v39 = v56;
    }

    MEMORY[0x24C1A5DE0](&v54, "inputs:scale");
    v40 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v39, &v54);
    v41 = v40;
    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v39 + 8) == v40 || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v40 + 5)))
    {
      goto LABEL_71;
    }

    v42 = v41[6];
    if ((v42 & 4) != 0)
    {
      v36 = (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(v41 + 5);
    }

    else
    {
      v36 = v41[5];
    }

    goto LABEL_59;
  }

LABEL_92:
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v52, v53[0]);
}

uint64_t anonymous namespace::setIfConnectedToTexture(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v10 = 0;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
  return REMaterialAssetBuilderSetFunctionConstant();
}

void sub_247622EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::getSamplerAddressMode(void *a1)
{
  MEMORY[0x24C1A5DE0](v13, "black");
  v2 = *v13 ^ *a1;
  if ((v13[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v2 >= 8)
  {
    MEMORY[0x24C1A5DE0](v13, "clamp");
    v4 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v4 < 8)
    {
      return 0;
    }

    MEMORY[0x24C1A5DE0](v13, "repeat");
    v5 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v5 < 8)
    {
      return 2;
    }

    MEMORY[0x24C1A5DE0](v13, "mirror");
    v6 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v6 < 8)
    {
      return 3;
    }

    v7 = MEMORY[0x24C1A5DE0](v13, "useMetadata");
    v8 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v9 = *(realityio::logObjects(v7) + 24);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 > 7)
    {
      if (!v10)
      {
        return 2;
      }

      *v13 = 0;
      v11 = "Wrap mode for imported USD was an invalid option; defaulting to repeat";
    }

    else
    {
      if (!v10)
      {
        return 2;
      }

      *v13 = 0;
      v11 = "Reading wrap mode from image metadata is currently not supported; defaulting to repeat";
    }

    v3 = 2;
    _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    return v3;
  }

  return 4;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>::_DecrementIfValid(0);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_MakeMutable(uint64_t result)
{
  v1 = atomic_load((*result + 16));
  if (v1 != 1)
  {
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_GetProxiedAsVtValue(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy(a2, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef((result + 8));
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1);

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>::_Counted(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  v5 = a2[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    RERetain();
  }

  atomic_store(0, (a1 + 16));
  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 5);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy((a1 + 5), a1[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<TinyTextureBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void TinyTextureBuilder::~TinyTextureBuilder(id *this)
{
  *this = &unk_2859558D0;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 23);

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_2859558D0;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 23);
  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::TransformAnimationAggregationBuilder::kOutputName(realityio::TransformAnimationAggregationBuilder *this)
{
  {
    operator new();
  }

  return realityio::TransformAnimationAggregationBuilder::kOutputName(void)::kOutputName;
}

void sub_2476236F4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(realityio::TransformAnimationAggregationBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "TransformAnimationAggregationBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kTransformAnimationAggregationBuilderIdentifier);
  realityio::generateTransformAnimationDirtyStageSubscription(&v4);
  v8[0] = &unk_2859559C0;
  v8[3] = v8;
  v7[0] = &unk_285955A40;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_247623894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v24 + 35);
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

uint64_t realityio::TransformAnimationAggregationBuilder::run(realityio::TransformAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v48, v5, v4);
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v43, &v48);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, &v43);
  v8 = v6 + 72 != v7 && *(*(v6 + 40) + 104 * *(v7 + 40) + 24) == v43;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v46 = MEMORY[0x277D86748] + 16;
    if (v47 && (*(v47 + 57) & 8) == 0 && ((*(MEMORY[0x277D86748] + 48))(&v46) & 1) != 0 && pxrInternal__aapl__pxrReserved__::UsdGeomXformable::TransformMightBeTimeVarying(&v46))
    {
      v9 = realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 2028, this, 0, 0, 0);
      v10 = realityio::EntityBuilder::kInputName(v9);
      realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v10, &v43);
      if (v43)
      {
        v42 = v44;
        if (v44)
        {
          v11 = RERetain();
          v12 = realityio::TransformAnimationAssetBuilder::kOutputName(v11);
          realityio::Inputs::_getValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(buf, a2, v12);
          v13 = (this + 280);
          v40 = 0;
          v41 = 0;
          v14 = *(this + 35);
          if (v14)
          {
            *v13 = 0;
            v40 = v14;
          }

          *(this + 36) = 0;
          v15 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v40);
          if (buf[0] == 1)
          {
            v16 = *&v55[4];
            if (*&v55[4])
            {
              v40 = v42;
              if (v42)
              {
                RERetain();
                v17 = v40;
              }

              else
              {
                v17 = 0;
              }

              v41 = v16;
              v26 = *v13;
              if (*v13 != v17)
              {
                *v13 = v17;
                v40 = v26;
              }

              *(this + 36) = v16;
              v27 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v40);
              v29 = *(this + 2);
              v28 = *(this + 3);
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
              }

              v30 = realityio::TransformAnimationAggregationBuilder::kOutputName(v27);
              v40 = this + 280;
              realityio::Outputs::storeValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT *>(v29, v30, &v40);
            }
          }

          v31 = realityio::TransformAnimationAssetBuilder::kOutputLibraryName(v15);
          realityio::Inputs::_getValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(a2, v31, &v40);
          if (v40)
          {
            v32 = v41;
          }

          else
          {
            v32 = 0;
          }

          REAnimationLibraryDefinitionCreate();
          if (v32)
          {
            v35 = *v32;
            v33 = (v32 + 1);
            v34 = v35;
            if (v35 != v33)
            {
              do
              {
                std::pair<std::string const,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100](&v52, v34 + 2);
                REAnimationLibraryDefinitionAddEntryAsset();
                REAnimationLibraryDefinitionAddKeyedEntryIndex();
                realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v53);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v36 = *(v34 + 1);
                if (v36)
                {
                  do
                  {
                    v37 = v36;
                    v36 = *v36;
                  }

                  while (v36);
                }

                else
                {
                  do
                  {
                    v37 = *(v34 + 2);
                    v38 = *v37 == v34;
                    v34 = v37;
                  }

                  while (!v38);
                }

                v34 = v37;
              }

              while (v37 != v33);
            }
          }

          ServiceLocator = REEngineGetServiceLocator();
          MEMORY[0x24C1A4230](ServiceLocator);
          v53 = 0;
          operator new();
        }
      }

      else
      {
        v42 = 0;
      }

      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf, v18, v4);
      PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(buf);
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
      v20 = *&v55[4];
      if (*&v55[4])
      {
        v20 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v55[4]);
      }

      v21 = *(realityio::logObjects(v20) + 24);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
        *buf = 136315138;
        *v55 = Text;
        _os_log_error_impl(&dword_247485000, v21, OS_LOG_TYPE_ERROR, "Stopping operation to set animation component because could not create entity at path (%s).\n", buf, 0xCu);
      }

      realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v42);
      realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v43);
      realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45, v22, v23);
    }

    MEMORY[0x24C1A54D0](&v46);
  }

  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
  result = v49;
  if (v49)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
  }

  return result;
}

void sub_247623E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a25);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a26);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a34, v40, v41);
  MEMORY[0x24C1A54D0](&a36);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a39);
  _Unwind_Resume(a1);
}

uint64_t *realityio::TransformAnimationAggregationBuilder::clear(realityio::TransformAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v6 = a2;
  v7 = &unk_285955CC0;
  v8 = &v6;
  v9 = this;
  v10 = &v7;
  (*(*v3 + 16))(v3, &v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v7);
  v7 = 0;
  v8 = 0;
  v4 = *(this + 35);
  if (v4)
  {
    *(this + 35) = 0;
    v7 = v4;
  }

  *(this + 36) = 0;
  return realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v7);
}

void sub_24762418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAggregationBuilder::~TransformAnimationAggregationBuilder(realityio::TransformAnimationAggregationBuilder *this)
{
  realityio::TransformAnimationAggregationBuilder::~TransformAnimationAggregationBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285955948;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 344);
  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_247624570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476247E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v8 = a2[3];
  if (v8)
  {
    v48 = std::__shared_weak_count::lock(v8);
    if (v48)
    {
      v47 = a2[2];
    }
  }

  MEMORY[0x24C1A5E00](&v49, a3);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], &v47);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v44, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v45, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v46, ")");
    goto LABEL_22;
  }

  v20 = 1;
  v21 = v9;
  do
  {
    v21 = *v21;
    --v20;
  }

  while (v21 != v10);
  if (v20)
  {
    std::operator+<char>();
    v22 = std::string::append(&v44, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::string::append(&v45, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v46, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v52, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = *v52;
    v31 = *&v52[16];
    v53[0] = *&v52[24];
    *(v53 + 7) = *&v52[31];
    v32 = v52[39];
    memset(&v52[16], 0, 24);
    *a1 = 0;
    *(a1 + 39) = *(v53 + 7);
    v33 = v53[0];
    *(a1 + 24) = v31;
    *(a1 + 32) = v33;
    *(a1 + 47) = v32;
    if (v51.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v44.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v34);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v35 = v9[5];
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  realityio::Outputs::getRawValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(v37, EmptyString, v52);
  v40 = v52[0];
  if (v52[0])
  {
    *&v39 = *&v52[8];
  }

  else
  {
    *__p = *&v52[8];
    if ((v52[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v51, *&v52[24], *&v52[32]);
      v41 = v52[0] | (v52[47] >= 0);
    }

    else
    {
      v51 = *&v52[24];
      v41 = 1;
    }

    v39 = *__p;
    size = v51.__r_.__value_.__l.__size_;
    v37 = v51.__r_.__value_.__r.__words[0];
    LODWORD(v46.__r_.__value_.__l.__data_) = v51.__r_.__value_.__r.__words[2];
    *(v46.__r_.__value_.__r.__words + 3) = *(&v51.__r_.__value_.__r.__words[2] + 3);
    v4 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v41 & 1) == 0)
    {
      v42 = *__p;
      operator delete(*&v52[24]);
      v39 = v42;
    }
  }

  if (v36)
  {
    v43 = v39;
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    v39 = v43;
  }

  if (v40)
  {
    *a1 = 1;
    *(a1 + 8) = v39;
  }

  else
  {
    *v52 = v39;
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v52[16], v37, size);
      *a1 = 0;
      *(a1 + 8) = *v52;
      *(a1 + 24) = *&v52[16];
      *(a1 + 40) = *&v52[32];
      v34 = v37;
      goto LABEL_30;
    }

    *&v52[16] = v37;
    *&v52[24] = size;
    *&v52[32] = v46.__r_.__value_.__l.__data_;
    *&v52[35] = *(v46.__r_.__value_.__r.__words + 3);
    v52[39] = v4;
    *a1 = 0;
    *(a1 + 8) = *v52;
    *(a1 + 24) = *&v52[16];
    *(a1 + 40) = *&v52[32];
  }

LABEL_49:
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }
}

void sub_247624CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

__n128 std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955B40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v15 = 0;
  if (**(a1 + 16) == 1)
  {
    AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
    v19[0] = AnimationLibraryAsset;
    v4 = v15;
    if (v15 != AnimationLibraryAsset)
    {
      v15 = AnimationLibraryAsset;
      v19[0] = v4;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v19);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v19, *(a1 + 40));
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v19);
      v6 = String;
      if (*(String + 23) >= 0)
      {
        v7 = *(String + 23);
      }

      else
      {
        v7 = *(String + 8);
      }

      v8 = __p;
      std::string::basic_string[abi:ne200100](__p, v7 + 17);
      if (v17 < 0)
      {
        v8 = __p[0];
      }

      if (v7)
      {
        if (v6[23] >= 0)
        {
          v9 = v6;
        }

        else
        {
          v9 = *v6;
        }

        memmove(v8, v9, v7);
      }

      strcpy(v8 + v7, "_animationLibrary");
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
      v14 = v15;
      RERetain();
      if (v17 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      realityio::Builder::addAsset(v2, &v14, v10);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v14);
      REAnimationLibraryComponentGetComponentType();
      v19[0] = &unk_285955BB0;
      v19[1] = v2;
      v19[2] = &v15;
      v19[3] = v19;
      v11 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(v19, v11);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v19);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  REAnimationComponentGetComponentType();
  __p[0] = &unk_285955C30;
  __p[1] = v2;
  v18 = __p;
  v12 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(__p, v12);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](__p);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v15);
}

void sub_24762512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);

  return REAnimationLibraryComponentAssignAnimationLibraryAsset();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285955C30;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955CC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v4 = realityio::TransformAnimationAggregationBuilder::kOutputName(a1);
  v44 = 0;
  v45 = 0;
  v5 = *(v3 + 24);
  if (v5)
  {
    v45 = std::__shared_weak_count::lock(v5);
    if (v45)
    {
      v44 = *(v3 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v46, v4);
  v6 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v3 + 8), &v44);
  if (v6 == v7)
  {
    std::operator+<char>();
    v8 = std::string::append(&v41, ") at prim path (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v11 = *(String + 23);
    if (v11 >= 0)
    {
      v12 = String;
    }

    else
    {
      v12 = *String;
    }

    if (v11 >= 0)
    {
      v13 = *(String + 23);
    }

    else
    {
      v13 = *(String + 8);
    }

    v14 = std::string::append(&v42, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v43, ")");
LABEL_22:
    v27 = *&v16->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__r.__words[2];
    *__p = v27;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v49, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v3 = *&v49[16];
    v1 = v50.__r_.__value_.__s.__data_[15];
    *&v49[16] = 0;
    *&v50.__r_.__value_.__l.__data_ = 0uLL;
    if (v48.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v28 = 0;
    goto LABEL_31;
  }

  v17 = 1;
  v18 = v6;
  do
  {
    v18 = *v18;
    --v17;
  }

  while (v18 != v7);
  if (v17)
  {
    std::operator+<char>();
    v19 = std::string::append(&v41, ") at prim path (");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v22 = *(v21 + 23);
    if (v22 >= 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = std::string::append(&v42, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v43, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v33 = v6[5];
  size = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v6[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v6[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  realityio::Outputs::getRawValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>(size, EmptyString, v49);
  v28 = v49[0];
  if (v49[0])
  {
    *&v37 = *&v49[8];
    v40 = v37;
  }

  else
  {
    *__p = *&v49[8];
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v48, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
      v38 = v49[0] | ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0);
    }

    else
    {
      v48 = v50;
      v38 = 1;
    }

    v40 = *__p;
    size = v48.__r_.__value_.__l.__size_;
    v3 = v48.__r_.__value_.__r.__words[0];
    v1 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    if ((v38 & 1) == 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((v28 & 1) == 0)
  {
    *v49 = v40;
    if (v1 < 0)
    {
      std::string::__init_copy_ctor_external(&v49[16], v3, size);
      v39 = *&v49[16];
      v1 = v50.__r_.__value_.__s.__data_[15];
      operator delete(v3);
      v3 = v39;
    }
  }

LABEL_31:
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v28)
  {
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = realityio::TransformAnimationAggregationBuilder::kOutputName(v29);
    std::mutex::lock((v31 + 64));
    if (v31 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v31 + 40, v32))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v31 + 40), v32);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v31, v32);
    std::mutex::unlock((v31 + 64));
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  else if (v1 < 0)
  {
    operator delete(v3);
  }
}

void sub_24762591C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOBuilderInputsGetTypeID()
{
  if (RIOBuilderInputsGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderInputsGetTypeID::onceToken, &__block_literal_global_18);
  }

  return RIOBuilderInputsGetTypeID::typeID;
}

void __RIOBuilderInputsGetTypeID_block_invoke()
{
  if (!RIOBuilderInputsGetTypeID::typeID)
  {
    RIOBuilderInputsGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

BOOL RIOBuilderInputsHasValueWithName(uint64_t a1, __CFString *this)
{
  v2 = 0;
  if (a1 && this)
  {
    realityio::CFStringCopyUTF8String(&v12, this);
    if (v12 == 1)
    {
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      v4 = *(a1 + 16);
      MEMORY[0x24C1A5E00](&v14, &__p);
      v15 = 0;
      v16 = 0;
      v5 = *(v4 + 24);
      if (v5)
      {
        v16 = std::__shared_weak_count::lock(v5);
        if (v16)
        {
          v15 = *(v4 + 16);
        }
      }

      v17 = v14;
      if ((v14 & 7) != 0)
      {
        v6 = v14 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v17 = v6;
        }
      }

      v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v4 + 8), &v15);
      v9 = v8;
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v2 = v7 != v9;
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v12 & 1) != 0 && SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_247625C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **RIOBuilderInputsGetValueWithName(uint64_t a1, __CFString *this)
{
  EmptyString = 0;
  if (!a1 || !this)
  {
    return EmptyString;
  }

  realityio::CFStringCopyUTF8String(&v22, this);
  if (v22 != 1)
  {
    return 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v23;
  }

  v4 = *(a1 + 16);
  v24 = 0;
  v25 = 0;
  v5 = *(v4 + 24);
  if (v5)
  {
    v25 = std::__shared_weak_count::lock(v5);
    if (v25)
    {
      v24 = *(v4 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v26, &__p);
  v6 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v4 + 8), &v24);
  v8 = v6;
  if (v6 == v7)
  {
    goto LABEL_15;
  }

  v9 = 1;
  v10 = v6;
  do
  {
    v10 = *v10;
    --v9;
  }

  while (v10 != v7);
  if (v9 || (v12 = v6[5]) == 0)
  {
LABEL_15:
    EmptyString = 0;
    goto LABEL_16;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (v14)
    {
      v15 = v8[5];
      v14 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v16)
      {
        v17 = 0;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_33;
      }

LABEL_32:
      v17 = 1;
LABEL_33:
      if ((v8[7] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v8[7] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
      }

      std::mutex::lock(v14 + 1);
      v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v14->__m_.__opaque[32], EmptyString);
      if (&v14->__m_.__opaque[40] == v18)
      {
        goto LABEL_44;
      }

      v20 = *(v18 + 56);
      v19 = *(v18 + 64);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v20)
      {
        EmptyString = (**v20)(v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (!v20)
      {
LABEL_44:
        EmptyString = 0;
      }

      std::mutex::unlock(v14 + 1);
      if ((v17 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = 0;
  if (v14)
  {
    goto LABEL_32;
  }

  EmptyString = 0;
LABEL_16:
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22 & 1) != 0 && SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return EmptyString;
}

void sub_247625F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::mutex::unlock(v26 + 1);
  if ((v27 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyStage(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((**(a1 + 16) + 8));
  v4 = v1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v4);
  v2 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(&v4);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v4);
  return v2;
}

void sub_247626020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyPrim(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v1 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v5, v2, (v1 + 32));
  v9 = 1;
  v3 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v5, &v9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return v3;
}

void sub_2476260DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyPrimPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((*(result + 16) + 32));
  }

  return result;
}

uint64_t *RIOBuilderInputsCopyStageDelta(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  memset(v4, 0, sizeof(v4));
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v7, v5);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(&v8, 0, 0, 0);
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v13, v11);
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v14, v7);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(&v15, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4));
  if (RIOBuilderStageDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderStageDeltaGetTypeID::onceToken, &__block_literal_global_10);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(Instance + 16, v13);
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((v2 + 7), v14);
    v2[12] = 0;
    v2[13] = 0;
    v2[14] = 0;
    std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(v2 + 12, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4));
  }

  realityio::StageDelta::~StageDelta(v13);
  v18 = &v8;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v7);
  v18 = v4;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v11);
  return v2;
}

void sub_2476262AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table((v27 + 56));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table((v27 + 16));
  realityio::StageDelta::~StageDelta((v28 - 144));
  realityio::PrimDelta::~PrimDelta(&a19);
  *(v28 - 40) = &a10;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a13);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void realityio::StageDelta::~StageDelta(void **this)
{
  v2 = this + 10;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this);
}

void realityio::PrimDelta::~PrimDelta(void **this)
{
  v2 = this + 5;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this);
}

uint64_t RIOBuilderInputsGetEngine(uint64_t result)
{
  if (result)
  {
    return *(*(*(*(result + 16) + 40) + 16) + 16);
  }

  return result;
}

uint64_t RIOBuilderInputsCreateStandardTextureAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = *(a1 + 16);
    if (*(a3 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v15 = *(a3 + 16);
    }

    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      v16 = *(a3 + 40);
    }

    v14 = 0;
    v12 = 0u;
    *__p = 0u;
    *v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v7);
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    DWORD2(v11) = 0;
    HIDWORD(v11) = realityio::TextureSwizzleChannels::kDefault;
    LOBYTE(v12) = 2;
    DWORD1(v12) = 0;
    WORD4(v12) = 512;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    realityio::Inputs::createStandardTextureAsset(v5, v3 + 24, &v15, v7, &v17);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[1]);
    }

    if (SHIBYTE(v8[0]) < 0)
    {
      operator delete(v7[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v3 = v17;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v17);
  }

  return v3;
}

void sub_247626578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderInputsCreateCubeMapTextureAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = *(a1 + 16);
    if (*(a3 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v7 = *(a3 + 16);
    }

    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      __p = *(a3 + 40);
    }

    realityio::Inputs::createCubeMapTextureAsset(v5, v3 + 24, &v7, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v3 = v9;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
  }

  return v3;
}

void sub_2476266BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderInputsGetImportSession(uint64_t result)
{
  if (result)
  {
    return *(*(result + 16) + 40) - 16;
  }

  return result;
}

uint64_t RIOBuilderInputsGetAllBuildersAndOutputNamesProvidingValuesWithName(uint64_t a1, __CFString *this, __CFArray **a3, __CFArray **a4)
{
  v4 = 0;
  if (a1)
  {
    if (this)
    {
      v7 = *(a1 + 16);
      realityio::CFStringCopyUTF8String(&v26, this);
      v4 = v26;
      if (v26 == 1)
      {
        MEMORY[0x24C1A5E00](&v25, &__p);
        v22 = 0;
        v23 = 0;
        v8 = *(v7 + 24);
        if (v8)
        {
          v23 = std::__shared_weak_count::lock(v8);
          if (v23)
          {
            v22 = *(v7 + 16);
          }
        }

        v24 = v25;
        if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v24 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v7 + 8), &v22);
        v11 = v10;
        v19 = a4;
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        for (i = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]); v9 != v11; v9 = *v9)
        {
          if (RIOBuilderGetTypeID::onceToken != -1)
          {
            dispatch_once(&RIOBuilderGetTypeID::onceToken, &__block_literal_global_35);
          }

          Instance = _CFRuntimeCreateInstance();
          if (Instance)
          {
            v16 = v9[6];
            Instance[2] = v9[5];
            Instance[3] = v16;
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }
          }

          value = Instance;
          if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = (v9[7] & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Instance);
          }

          if (*(EmptyString + 23) >= 0)
          {
            v18 = EmptyString;
          }

          else
          {
            v18 = *EmptyString;
          }

          v20 = CFStringCreateWithCString(0, v18, 0x8000100u);
          CFArrayAppendValue(Mutable, value);
          CFArrayAppendValue(i, v20);
          realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v20);
          realityio::WrappedCFRef<RIOBuilder const*>::~WrappedCFRef(&value);
        }

        *a3 = Mutable;
        *v19 = i;
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v26 & 1) != 0 && v28 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  return v4;
}

void sub_247626960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a20 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOBuilderInputsPerformBlockSyncOnEngineQueue(uint64_t a1, void *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (a1 && v3)
  {
    v4 = *(*(a1 + 16) + 48);
    v6[0] = &unk_285955DC0;
    v6[1] = &v5;
    v6[3] = v6;
    (*(*v4 + 16))(v4, v6);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
    v3 = v5;
  }
}

void sub_247626AC4(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0,std::allocator<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285955DC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0,std::allocator<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pugi::xml_writer_stream::write(pugi::xml_writer_stream *this, const void *a2, unint64_t a3)
{
  if (*(this + 1))
  {
    return std::ostream::write();
  }

  else
  {
    return MEMORY[0x2821F7950](*(this + 2), a2, a3 >> 2);
  }
}

uint64_t pugi::xml_attribute::set_value(pugi::xml_attribute *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = strlen(__s);
}

uint64_t pugi::xml_attribute::set_name(pugi::xml_attribute *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = strlen(__s);
}

uint64_t pugi::impl::anonymous namespace::strcpy_insitu<char *,unsigned long>(const char **a1, uint64_t *a2, uint64_t a3, void *__src, size_t __n)
{
  if (!__n)
  {
    v25 = *a2;
    if ((*a2 & a3) != 0)
    {
      v26 = *(a2 - (v25 >> 8));
      v27 = &(*a1)[-8 * *(*a1 - 2) - 4];
      if (*(*a1 - 1))
      {
        v28 = 8 * *(*a1 - 1);
      }

      else
      {
        v28 = *(v27 - 2);
      }

      v25 = *a2;
    }

    *a1 = 0;
    v29 = v25 & ~a3;
    goto LABEL_29;
  }

  v10 = *a1;
  v11 = *a2;
  if (*a1)
  {
    v12 = (*a2 & 0x40) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = strlen(*a1);
    if ((v11 & a3) != 0)
    {
      if (v13 < __n || v13 >= 0x20 && v13 - __n >= v13 >> 1)
      {
        goto LABEL_11;
      }
    }

    else if (v13 < __n)
    {
      goto LABEL_11;
    }

    memcpy(v10, __src, __n);
    (*a1)[__n] = 0;
    return 1;
  }

LABEL_11:
  v14 = *(a2 - (v11 >> 8));
  v15 = __n + 12;
  v16 = (__n + 12) & 0xFFFFFFFFFFFFFFF8;
  v17 = v14[1];
  if (v17 + v16 <= 0x7FD8)
  {
    v18 = *v14;
    result = *v14 + v17 + 40;
    v14[1] = v17 + v16;
LABEL_13:
    *result = (result - v18 + 524248) >> 3;
    v20 = v15 >> 3;
    if (v15 >= 0x80000)
    {
      LOWORD(v20) = 0;
    }

    *(result + 2) = v20;
    v21 = (result + 4);
    memcpy((result + 4), __src, __n);
    v21[__n] = 0;
    v22 = *a2;
    if ((*a2 & a3) != 0)
    {
      v23 = &(*a1)[-8 * *(*a1 - 2) - 4];
      if (*(*a1 - 1))
      {
        v24 = 8 * *(*a1 - 1);
      }

      else
      {
        v24 = *(v23 - 2);
      }

      v22 = *a2;
    }

    *a1 = v21;
    v29 = v22 | a3;
LABEL_29:
    *a2 = v29;
    return 1;
  }

  v30 = 0;
  if (result)
  {
    LODWORD(v18) = v30;
    goto LABEL_13;
  }

  return result;
}

void (*pugi::xml_node::operator void (*)(pugi::xml_node***)(void *a1))()
{
  if (*a1)
  {
    return pugi::unspecified_BOOL_xml_node;
  }

  else
  {
    return 0;
  }
}

uint64_t pugi::xml_node::child(pugi::xml_node *this, const char *__s1)
{
  if (!*this)
  {
    return 0;
  }

  for (i = *(*this + 32); i; i = *(i + 48))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t pugi::xml_node::attribute(pugi::xml_node *this, const char *__s1)
{
  if (!*this)
  {
    return 0;
  }

  for (i = *(*this + 56); i; i = *(i + 32))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t pugi::xml_node::set_name(pugi::xml_node *this, char *__s)
{
  v3 = *this;
  if (*this)
  {
    v4 = *v3 & 0xF;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != 7 && (v4 & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  v6 = strlen(__s);
}

uint64_t pugi::xml_node::set_value(pugi::xml_node *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((*v2 & 0xFu) - 3 >= 4 && (*v2 & 0xF) != 8)
  {
    return 0;
  }

  v5 = strlen(__s);
}

uint64_t pugi::xml_node::append_attribute(pugi::xml_node *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *v2 & 0xFLL;
  if (v3 != 7 && v3 != 2)
  {
    return 0;
  }

  v7 = *(v2 - (*v2 >> 8));
  v8 = v7[1];
  if ((v8 + 40) > 0x7FD8)
  {
    v15 = 0;
    if (!v10)
    {
      return v10;
    }

    v9 = v15;
  }

  else
  {
    v9 = *v7;
    v10 = *v7 + v8 + 40;
    v7[1] = v8 + 40;
  }

  *(v10 + 24) = 0u;
  *(v10 + 8) = 0u;
  *v10 = (v10 - v9) << 8;
  v15 = v10;
  v11 = *(*this + 56);
  if (v11)
  {
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    *(v13 + 32) = v10;
    *(v10 + 24) = v13;
  }

  else
  {
    *(*this + 56) = v10;
    v12 = (v10 + 24);
  }

  *v12 = v10;
  pugi::xml_attribute::set_name(&v15, __s);
  return v10;
}

uint64_t pugi::xml_node::append_child(void **a1, unsigned int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 2)
  {
    v4 = *v2 & 0xFLL;
    if ((v4 - 3) >= 0xFFFFFFFE)
    {
      if (a2 - 9 >= 0xFFFFFFFE && v4 != 1)
      {
        return 0;
      }

      v6 = *(v2 - (*v2 >> 8));
      v7 = v6[1];
      if ((v7 + 64) > 0x7FD8)
      {
        v14 = a1;
        v15 = 0;
        v13 = a2;
        if (!v3)
        {
          return v3;
        }

        a1 = v14;
        v8 = v15;
        a2 = v13;
      }

      else
      {
        v8 = *v6;
        v3 = *v6 + v7 + 40;
        v6[1] = v7 + 64;
      }

      *(v3 + 56) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      *v3 = a2 | ((v3 - v8) << 8);
      v15 = v3;
      v9 = *a1;
      *(v3 + 24) = *a1;
      v10 = v9[4];
      if (v10)
      {
        v12 = *(v10 + 40);
        v11 = (v10 + 40);
        *(v12 + 48) = v3;
        *(v3 + 40) = v12;
      }

      else
      {
        v9[4] = v3;
        v11 = (v3 + 40);
      }

      *v11 = v3;
      if (a2 == 7)
      {
        pugi::xml_node::set_name(&v15, "xml");
      }
    }
  }

  return v3;
}

uint64_t pugi::xml_node::remove_child(pugi::xml_node *this, unint64_t **a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = v3[3];
  if (v4 != v2)
  {
    return 0;
  }

  v6 = *(v2 - (*v2 >> 8));
  v8 = v3[5];
  v7 = v3[6];
  v9 = v7;
  if (!v7)
  {
    v9 = v4[4];
  }

  *(v9 + 40) = v8;
  v11 = *(v8 + 48);
  v10 = (v8 + 48);
  v12 = v4 + 4;
  if (v11)
  {
    v12 = v10;
  }

  *v12 = v7;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  return 1;
}

void pugi::impl::anonymous namespace::destroy_node(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v5 = a1[1];
    v6 = *(v5 - 4);
    v5 -= 4;
    v7 = v5 - 8 * v6;
    v8 = *(v5 + 2);
    if (v8)
    {
      v9 = 8 * v8;
    }

    else
    {
      v9 = *(v7 - 16);
    }

    v4 = *a1;
  }

  if ((v4 & 0x10) != 0)
  {
    v10 = a1[2];
    v11 = *(v10 - 4);
    v10 -= 4;
    v12 = v10 - 8 * v11;
    v13 = *(v10 + 2);
    if (v13)
    {
      v14 = 8 * v13;
    }

    else
    {
      v14 = *(v12 - 16);
    }
  }

  v15 = a1[7];
  if (v15)
  {
    do
    {
      v16 = v15[4];
      v17 = *v15;
      if ((*v15 & 0x20) != 0)
      {
        v18 = v15[1];
        v19 = *(v18 - 4);
        v18 -= 4;
        v20 = v18 - 8 * v19;
        v21 = *(v18 + 2);
        if (v21)
        {
          v22 = 8 * v21;
        }

        else
        {
          v22 = *(v20 - 16);
        }

        v17 = *v15;
      }

      if ((v17 & 0x10) != 0)
      {
        v23 = v15[2];
        v24 = *(v23 - 4);
        v23 -= 4;
        v25 = v23 - 8 * v24;
        v26 = *(v23 + 2);
        if (v26)
        {
          v27 = 8 * v26;
        }

        else
        {
          v27 = *(v25 - 16);
        }

        v17 = *v15;
      }

      v15 = v16;
    }

    while (v16);
  }

  v28 = a1[4];
  if (v28)
  {
    do
    {
      v29 = v28[6];
      v28 = v29;
    }

    while (v29);
  }

  v30 = (a1 - (*a1 >> 8));
}

void pugi::impl::anonymous namespace::load_buffer_impl(pugi::impl::_anonymous_namespace_ *this@<X2>, unsigned __int8 *a2@<X3>, uint64_t a3@<X0>, uint64_t a4@<X1>, unint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 **a10)
{
  v12 = a5;
  v13 = a2;
  v17 = a9;
  if (!this && a2)
  {
    *(a9 + 16) = 0;
    v18 = 2;
LABEL_557:
    *v17 = v18;
    *(v17 + 8) = 0;
    return;
  }

  v232 = buffer_encoding;
  v233 = a3;
  if (buffer_encoding == 1)
  {
    if (a7)
    {
      v21 = this;
      goto LABEL_123;
    }

    goto LABEL_117;
  }

  if ((buffer_encoding & 0xFFFFFFFE) == 2)
  {
    v22 = v13 >> 1;
    if (buffer_encoding == 2)
    {
      if (v13 >= 2)
      {
        v23 = 0;
        v24 = this;
        v25 = v13 >> 1;
        while (1)
        {
          v26 = *v24;
          if (v26 >> 11 > 0x1A)
          {
            if ((~v26 & 0xE000) != 0)
            {
              v28 = (v24 + 2);
              v29 = -1;
              if (v25 != 1)
              {
                v26 = v26 & 0xFC00;
                if (v26 == 55296)
                {
                  v30 = *v28 & 0xFC00;
                  v31 = v30 == 56320;
                  v26 = v23 + 4;
                  v32 = (v24 + 4);
                  if (v30 == 56320)
                  {
                    v29 = -2;
                  }

                  else
                  {
                    v29 = -1;
                  }

                  if (v31)
                  {
                    v23 += 4;
                  }

                  if (v31)
                  {
                    v28 = v32;
                  }
                }
              }

              goto LABEL_21;
            }

            v23 += 3;
          }

          else
          {
            if (v26 < 0x800)
            {
              v27 = 2;
            }

            else
            {
              v27 = 3;
            }

            if (v26 < 0x80)
            {
              v27 = 1;
            }

            v23 += v27;
          }

          v28 = (v24 + 2);
          v29 = -1;
LABEL_21:
          v24 = v28;
          v25 += v29;
          if (!v25)
          {
            v46 = v23 + 1;
            if (!v47)
            {
              goto LABEL_556;
            }

            v48 = this;
            v226 = v47;
            while (2)
            {
              v49 = *v48;
              if (v49 >> 11 <= 0x1A || (~v49 & 0xE000) == 0)
              {
                v50 = (v48 + 2);
                goto LABEL_67;
              }

              v50 = (v48 + 2);
              v51 = -1;
              if (v22 != 1 && (v49 & 0xFC00) == 0xD800)
              {
                v52 = *v50;
                if ((*v50 & 0xFC00) == 0xDC00)
                {
                  v53 = ((v49 << 10) & 0xFFC00) + 0x10000;
                  *v47 = (v53 >> 18) | 0xF0;
                  v47[1] = (v53 >> 12) & 0x3F | 0x80;
                  v47[2] = (((v49 << 10) | v52 & 0x3FFu) >> 6) & 0x3F | 0x80;
                  v47[3] = v52 & 0x3F | 0x80;
                  v47 += 4;
                  v50 = (v48 + 4);
                  v51 = -2;
                }

                else
                {
LABEL_67:
                  v51 = -1;
                }
              }

              v48 = v50;
              v22 += v51;
              if (!v22)
              {
                goto LABEL_113;
              }

              continue;
            }
          }
        }
      }

LABEL_55:
      v46 = 1;
      if (v47)
      {
        v21 = v47;
        goto LABEL_121;
      }

      goto LABEL_556;
    }

    if (v13 < 2)
    {
      goto LABEL_55;
    }

    v54 = 0;
    v55 = this;
    v56 = v13 >> 1;
    while (1)
    {
      v57 = bswap32(*v55);
      v58 = HIWORD(v57);
      if (v57 >> 27 > 0x1A)
      {
        if ((~v58 & 0xE000) != 0)
        {
          v60 = (v55 + 2);
          v61 = -1;
          if (v56 != 1 && (v58 & 0xFC00) == 0xD800)
          {
            v62 = *v60 & 0xFC;
            v63 = v62 == 220;
            v64 = (v55 + 4);
            if (v62 == 220)
            {
              v61 = -2;
            }

            else
            {
              v61 = -1;
            }

            if (v63)
            {
              v54 += 4;
            }

            if (v63)
            {
              v60 = v64;
            }
          }

          goto LABEL_88;
        }

        v54 += 3;
      }

      else
      {
        if (v58 < 0x800)
        {
          v59 = 2;
        }

        else
        {
          v59 = 3;
        }

        if (v58 < 0x80)
        {
          v59 = 1;
        }

        v54 += v59;
      }

      v60 = (v55 + 2);
      v61 = -1;
LABEL_88:
      v55 = v60;
      v56 += v61;
      if (!v56)
      {
        v46 = v54 + 1;
        if (!v47)
        {
          goto LABEL_556;
        }

        v65 = this;
        v226 = v47;
        while (2)
        {
          v66 = bswap32(*v65);
          v67 = HIWORD(v66);
          if (v66 >> 27 <= 0x1A || (~v67 & 0xE000) == 0)
          {
            v68 = (v65 + 2);
            goto LABEL_106;
          }

          v68 = (v65 + 2);
          v69 = -1;
          if (v22 != 1 && (v67 & 0xFC00) == 0xD800)
          {
            v70 = bswap32(*v68) >> 16;
            if ((v70 & 0xFC00) == 0xDC00)
            {
              v71 = ((v67 << 10) & 0xFFC00) + 0x10000;
              *v47 = (v71 >> 18) | 0xF0;
              v47[1] = (v71 >> 12) & 0x3F | 0x80;
              v47[2] = (((v67 << 10) | v70 & 0x3FF) >> 6) & 0x3F | 0x80;
              v47[3] = v70 & 0x3F | 0x80;
              v47 += 4;
              v68 = (v65 + 4);
              v69 = -2;
            }

            else
            {
LABEL_106:
              v69 = -1;
            }
          }

          v65 = v68;
          v22 += v69;
          if (!v22)
          {
LABEL_113:
            v21 = v226;
            goto LABEL_122;
          }

          continue;
        }
      }
    }
  }

  if ((buffer_encoding - 5) <= 1)
  {
    v33 = v13 >> 2;
    if (buffer_encoding == 5)
    {
      if (v13 >= 4)
      {
        v34 = 0;
        v35 = this;
        v36 = v13 >> 2;
        do
        {
          v38 = *v35;
          v35 = (v35 + 4);
          v37 = v38;
          v39 = HIWORD(v38);
          v40 = v34 + 4;
          if (v38 < 0x800)
          {
            v41 = 2;
          }

          else
          {
            v41 = 3;
          }

          if (v37 < 0x80)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          v34 += v42;
          if (v39)
          {
            v34 = v40;
          }

          --v36;
        }

        while (v36);
        v46 = v34 + 1;
        if (v47)
        {
          v21 = v47;
          v43 = this;
          do
          {
            v44 = *v43;
            if (v44 >> 16)
            {
              *v47 = (v44 >> 18) | 0xF0;
              v47[1] = (v44 >> 12) & 0x3F | 0x80;
              v47[2] = (v44 >> 6) & 0x3F | 0x80;
              v47[3] = v44 & 0x3F | 0x80;
              v47 += 4;
            }

            else
            {
            }

            v43 = (v43 + 4);
            --v33;
          }

          while (v33);
          goto LABEL_121;
        }

        goto LABEL_556;
      }
    }

    else if (v13 >= 4)
    {
      v202 = 0;
      v203 = this;
      v204 = v13 >> 2;
      do
      {
        v205 = bswap32(*v203);
        if (HIWORD(v205))
        {
          v202 += 4;
        }

        else
        {
          if (v205 < 0x800)
          {
            v206 = 2;
          }

          else
          {
            v206 = 3;
          }

          if (v205 < 0x80)
          {
            v207 = 1;
          }

          else
          {
            v207 = v206;
          }

          v202 += v207;
        }

        ++v203;
        --v204;
      }

      while (v204);
      v46 = v202 + 1;
      if (v47)
      {
        v21 = v47;
        v208 = this;
        do
        {
          v209 = bswap32(*v208);
          if (v209 >> 16)
          {
            *v47 = (v209 >> 18) | 0xF0;
            v47[1] = (v209 >> 12) & 0x3F | 0x80;
            v47[2] = (v209 >> 6) & 0x3F | 0x80;
            v47[3] = v209 & 0x3F | 0x80;
            v47 += 4;
          }

          else
          {
          }

          ++v208;
          --v33;
        }

        while (v33);
        goto LABEL_121;
      }

      goto LABEL_556;
    }

    v46 = 1;
    if (v47)
    {
      v21 = v47;
      goto LABEL_121;
    }

    goto LABEL_556;
  }

  if (buffer_encoding != 9)
  {
    goto LABEL_556;
  }

  v45 = 0;
  if (v13)
  {
    while ((*(this + v45) & 0x80000000) == 0)
    {
      if (v13 == ++v45)
      {
        goto LABEL_115;
      }
    }
  }

  v72 = v13 - v45;
  if (v13 == v45)
  {
LABEL_115:
    if (a7)
    {
      v21 = this;
      goto LABEL_123;
    }

LABEL_117:
    v46 = v13 + 1;
    if (v73)
    {
      v21 = v73;
      if (this)
      {
        memcpy(v73, this, v13);
      }

      v47 = &v21[v13];
      goto LABEL_121;
    }

LABEL_556:
    *(v17 + 16) = 0;
    v18 = 3;
    goto LABEL_557;
  }

  v210 = this + v45;
  if (v72)
  {
    v72 = 0;
    v211 = v45 - v13;
    v212 = this + v45;
    do
    {
      v213 = *v212++;
      if (v213 >= 0)
      {
        v214 = 1;
      }

      else
      {
        v214 = 2;
      }

      v72 += v214;
      v215 = __CFADD__(v211++, 1);
    }

    while (!v215);
  }

  v46 = v45 + v72 + 1;
  if (!v216)
  {
    goto LABEL_556;
  }

  v21 = v216;
  memcpy(v216, this, v45);
  v47 = &v21[v45];
  if (v13 != v45)
  {
    v217 = v45 - v13;
    do
    {
      v218 = *v210++;
      v215 = __CFADD__(v217++, 1);
    }

    while (!v215);
  }

LABEL_121:
  a3 = v233;
LABEL_122:
  *v47 = 0;
  v13 = v46;
LABEL_123:
  if (a8)
  {
    v74 = v232;
    if (this && v21 != this)
    {
    }

    goto LABEL_128;
  }

  v74 = v232;
  if (v21 != this)
  {
LABEL_128:
    *a10 = v21;
  }

  *(a3 + 80) = v21;
  if (!v13)
  {
    *v17 = ~(v12 >> 8) & 0x10;
    *(v17 + 8) = 0;
    goto LABEL_617;
  }

  v75 = *(a4 + 32);
  if (v75)
  {
    v228 = *(v75 + 40);
  }

  else
  {
    v228 = 0;
  }

  v76 = v13 - 1;
  v231 = v21[v13 - 1];
  v21[v13 - 1] = 0;
  v77 = v21;
  if (*v21 == 239)
  {
    v77 = v21;
    if (v21[1] == 187)
    {
      v78 = 3;
      if (v21[2] != 191)
      {
        v78 = 0;
      }

      v77 = &v21[v78];
    }
  }

  v229 = *(&off_285955F00 + ((v12 >> 9) & 4 | (v12 >> 4) & 3));
  v230 = *(&off_285955E80 + (v12 >> 4));
  v79 = (v12 & 0x800) == 0 && (v12 & 0x408) != 0;
  v80 = a4;
LABEL_143:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          while (2)
          {
            while (2)
            {
              while (2)
              {
                v81 = *v77;
                do
                {
                  v82 = v77;
                  if (!v81)
                  {
                    goto LABEL_509;
                  }

                  if (v81 == 60)
                  {
                    v86 = v233;
LABEL_167:
                    v88 = *++v82;
                    v87 = v88;
                    goto LABEL_175;
                  }

                  {
                    do
                    {
                      v83 = *++v77;
                      v81 = v83;
                    }
                  }

                  v84 = v81 == 60 || v81 == 0;
                }

                while (v84 && (!v79 || (v12 & 0x400) != 0 && (v81 != 60 || v77[1] != 47 || v80[4])));
                if ((v12 & 0x800) != 0)
                {
                  v82 = v77;
                }

                v85 = v80[3];
                if ((v12 & 0x1000) == 0 && !v85)
                {
                  v86 = v233;
                  while (*v82)
                  {
                    if (*v82 == 60)
                    {
                      goto LABEL_167;
                    }

                    ++v82;
                  }

LABEL_509:
                  if (v80 != a4)
                  {
                    v89 = 14;
                    goto LABEL_511;
                  }

                  v74 = v232;
                  if (v231 == 60)
                  {
                    v199 = 5;
LABEL_522:
                    *v17 = v199;
                    *(v17 + 8) = v76;
                    goto LABEL_617;
                  }

                  if ((v12 & 0x1000) == 0)
                  {
                    v200 = (v228 + 48);
                    if (!v228)
                    {
                      v200 = (a4 + 32);
                    }

                    v201 = *v200;
                    if (!v201)
                    {
LABEL_521:
                      v199 = 16;
                      goto LABEL_522;
                    }

                    while ((*v201 & 0xFLL) != 2)
                    {
                      v201 = v201[6];
                      if (!v201)
                      {
                        goto LABEL_521;
                      }
                    }
                  }

                  v89 = 0;
LABEL_542:
                  v198 = 0;
                  goto LABEL_616;
                }

                if ((v12 & 0x2000) != 0 && v85 && !v80[4] && !v80[2])
                {
                  v91 = v80;
                  v80[2] = v82;
                  goto LABEL_174;
                }

                v89 = 3;
                if (!appended)
                {
                  goto LABEL_511;
                }

                *(appended + 16) = v82;
                v91 = *(appended + 24);
LABEL_174:
                v82 = v229(v82);
                v87 = *v82;
                v86 = v233;
                v80 = v91;
                if (!*v82)
                {
                  goto LABEL_509;
                }

LABEL_175:
                {
                  if (v80)
                  {
                    v80[1] = v82;
                    i = v82 + 1;
                    while (1)
                    {
                      v96 = *(i - 1);
                      if ((v97 & 0x40) == 0)
                      {
                        break;
                      }

                      v96 = *i;
                      if ((v97 & 0x40) == 0)
                      {
                        goto LABEL_265;
                      }

                      v96 = i[1];
                      if ((v97 & 0x40) == 0)
                      {
                        ++i;
LABEL_265:
                        *i = 0;
                        v77 = i + 1;
                        if (v96 != 62)
                        {
                          if ((v97 & 8) != 0)
                          {
                            goto LABEL_417;
                          }

                          if (v96)
                          {
                            if (v96 != 47 || ((v132 = *v77, v231 == 62) ? (v133 = v132 == 0) : (v133 = 0), !v133 ? (v134 = 0) : (v134 = 1), v132 != 62 && !v134))
                            {
                              v89 = 11;
                              goto LABEL_606;
                            }

                            v80 = v80[3];
                            if (v132 == 62)
                            {
                              v77 = i + 2;
                            }
                          }

                          else
                          {
                            v77 = i;
                            if (v231 != 62)
                            {
                              v89 = 11;
                              goto LABEL_607;
                            }
                          }
                        }

                        goto LABEL_143;
                      }

                      v96 = i[2];
                      i += 4;
                      if ((v97 & 0x40) == 0)
                      {
                        i -= 2;
                        goto LABEL_265;
                      }
                    }

                    --i;
                    goto LABEL_265;
                  }

                  v89 = 3;
                  goto LABEL_576;
                }

                if (v87 == 33)
                {
                  v77 = v82 + 1;
                  v112 = v82[1];
                  if (v112 != 91)
                  {
                    if (v112 != 68)
                    {
                      if (v112 == 45)
                      {
                        if (v82[2] != 45)
                        {
                          i = v82 + 2;
LABEL_588:
                          v89 = 7;
                          goto LABEL_607;
                        }

                        i = v82 + 3;
                        v113 = v80;
                        if ((v12 & 2) == 0)
                        {
                          goto LABEL_212;
                        }

                        v114 = v80;
                        if (v115)
                        {
                          v113 = v115;
                          *(v115 + 16) = i;
                          v80 = v114;
LABEL_212:
                          if ((v12 & 0x22) == 0x22)
                          {
                            v225 = v76;
                            v116 = 0;
                            v117 = 0;
                            while (1)
                            {
                              while (1)
                              {
                                v118 = *i;
                                {
                                  v119 = i;
                                }

                                else
                                {
                                  v119 = i + 2;
                                  while (1)
                                  {
                                    v118 = *(v119 - 1);
                                    {
                                      --v119;
                                      goto LABEL_223;
                                    }

                                    v118 = *v119;
                                    {
                                      goto LABEL_223;
                                    }

                                    v118 = v119[1];
                                    {
                                      break;
                                    }

                                    v118 = v119[2];
                                    v119 += 4;
                                    {
                                      v119 -= 2;
                                      goto LABEL_223;
                                    }
                                  }

                                  ++v119;
                                }

LABEL_223:
                                if (v118 != 13)
                                {
                                  break;
                                }

                                i = v119 + 1;
                                v123 = v119[1];
                                *v119 = 10;
                                if (v123 == 10)
                                {
                                  if (v116)
                                  {
                                    v124 = v80;
                                    v125 = i - v116;
                                    v126 = v117;
                                    memmove(&v116[-v117], v116, v125);
                                    v117 = v126;
                                    v80 = v124;
                                  }

                                  i = v119 + 2;
                                  ++v117;
                                  v116 = v119 + 2;
                                }
                              }

                              if (v118 == 45)
                              {
                                if (v119[1] == 45)
                                {
                                  v120 = v119[2];
                                  v121 = v231 == 62 && v120 == 0;
                                  v122 = v121;
                                  if (v120 == 62 || v122)
                                  {
                                    v190 = v119;
                                    if (v116)
                                    {
                                      v191 = v80;
                                      v192 = v117;
                                      memmove(&v116[-v117], v116, v119 - v116);
                                      v80 = v191;
                                      v190 = &v119[-v192];
                                    }

                                    *v190 = 0;
                                    v193 = 2;
                                    if (v119[2] == 62)
                                    {
                                      v193 = 3;
                                    }

                                    v77 = &v119[v193];
                                    v76 = v225;
                                    goto LABEL_143;
                                  }
                                }
                              }

                              else if (!v118)
                              {
                                v89 = 7;
                                v76 = v225;
                                goto LABEL_566;
                              }

                              i = v119 + 1;
                            }
                          }

                          while (1)
                          {
                            if (*i == 45)
                            {
                              if (i[1] == 45)
                              {
                                v178 = i[2];
                                v179 = v231 == 62 && v178 == 0;
                                v180 = !v179;
                                if (v178 == 62 || !v180)
                                {
                                  if ((v12 & 2) != 0)
                                  {
                                    *i = 0;
                                  }

                                  v188 = v178 == 62;
                                  v189 = 2;
LABEL_497:
                                  if (v188)
                                  {
                                    ++v189;
                                  }

                                  v77 = &i[v189];
                                  goto LABEL_143;
                                }
                              }
                            }

                            else if (!*i)
                            {
                              goto LABEL_588;
                            }

                            ++i;
                          }
                        }

LABEL_562:
                        v89 = 3;
                        goto LABEL_607;
                      }

                      if (v231 == 45 && !v82[1])
                      {
                        v89 = 7;
                        goto LABEL_606;
                      }

                      if (v231 == 91 && !v82[1])
                      {
                        v89 = 8;
                        goto LABEL_606;
                      }

LABEL_605:
                      v89 = 5;
                      goto LABEL_606;
                    }

                    if (v82[2] != 79 || v82[3] != 67 || v82[4] != 84 || v82[5] != 89 || v82[6] != 80)
                    {
                      goto LABEL_605;
                    }

                    v139 = v82[7];
                    v140 = v231 == 69 && v139 == 0;
                    v141 = v140;
                    if (v139 != 69 && !v141)
                    {
                      goto LABEL_605;
                    }

                    v142 = v80[3];
                    if (v142)
                    {
                      i = v82 - 1;
                      goto LABEL_598;
                    }

                    v143 = 68;
LABEL_310:
                    if (v143 > 59)
                    {
                      if (v143 == 60)
                      {
                        v147 = v77[1];
                        if (v147 == 63)
                        {
                          for (i = v77 + 2; ; ++i)
                          {
                            if (*i == 63)
                            {
                              if (i[1] == 62)
                              {
                                v77 = i + 2;
                                goto LABEL_347;
                              }
                            }

                            else if (!*i)
                            {
                              goto LABEL_598;
                            }
                          }
                        }

                        if (v147 != 33)
                        {
                          goto LABEL_599;
                        }

                        v148 = v77[2];
                        if (v148 == 45)
                        {
                          if (v77[3] == 45)
                          {
                            for (i = v77 + 4; ; ++i)
                            {
                              if (*i == 45)
                              {
                                if (i[1] == 45 && i[2] == 62)
                                {
                                  v77 = i + 3;
                                  goto LABEL_347;
                                }
                              }

                              else if (!*i)
                              {
                                goto LABEL_598;
                              }
                            }
                          }

LABEL_599:
                          v89 = 9;
                          goto LABEL_606;
                        }

                        if (v148 != 91)
                        {
                          ++v142;
                          v77 += 2;
                          goto LABEL_347;
                        }

                        v149 = 0;
                        v77 += 3;
LABEL_330:
                        for (v77 += 3; ; ++v77)
                        {
                          v150 = *(v77 - 3);
                          if (v150 == 60)
                          {
                            if (*(v77 - 2) == 33 && *(v77 - 1) == 91)
                            {
                              v151 = 1;
LABEL_344:
                              v149 += v151;
                              goto LABEL_330;
                            }
                          }

                          else if (v150 == 93)
                          {
                            if (*(v77 - 2) == 93 && *(v77 - 1) == 62)
                            {
                              if (v149)
                              {
                                v151 = -1;
                                goto LABEL_344;
                              }

LABEL_347:
                              v143 = *v77;
                              goto LABEL_310;
                            }
                          }

                          else if (!*(v77 - 3))
                          {
                            i = v77 - 3;
                            goto LABEL_598;
                          }
                        }
                      }

                      if (v143 != 62)
                      {
LABEL_346:
                        ++v77;
                        goto LABEL_347;
                      }

                      if (v142)
                      {
                        --v142;
                        goto LABEL_346;
                      }

                      *v77++ = 0;
                    }

                    else
                    {
                      if (v143 == 34 || v143 == 39)
                      {
                        ++v77;
                        do
                        {
                          v145 = *v77++;
                          v144 = v145;
                          if (v145)
                          {
                            v146 = v144 == v143;
                          }

                          else
                          {
                            v146 = 1;
                          }
                        }

                        while (!v146);
                        if (v144)
                        {
                          goto LABEL_347;
                        }

                        i = v77 - 1;
LABEL_598:
                        v89 = 9;
                        goto LABEL_607;
                      }

                      if (v143)
                      {
                        goto LABEL_346;
                      }

                      v89 = 9;
                      if (v231 != 62)
                      {
                        goto LABEL_606;
                      }

                      i = v77;
                      if (v142)
                      {
                        goto LABEL_607;
                      }
                    }

                    if ((v12 & 0x200) != 0)
                    {
                      v194 = v82 + 7;
                      do
                      {
                        v195 = *++v194;
                      }

                      v196 = v80;
                      if (!v197)
                      {
                        v89 = 3;
                        goto LABEL_606;
                      }

                      *(v197 + 16) = v194;
                      v80 = v196;
                    }

                    continue;
                  }

                  if (v82[2] == 67)
                  {
                    if (v82[3] == 68)
                    {
                      if (v82[4] == 65)
                      {
                        if (v82[5] == 84)
                        {
                          if (v82[6] == 65)
                          {
                            if (v82[7] == 91)
                            {
                              i = v82 + 8;
                              if ((v12 & 4) == 0)
                              {
                                while (1)
                                {
                                  if (*i == 93)
                                  {
                                    if (i[1] == 93)
                                    {
                                      v152 = i[2];
                                      v153 = v231 == 62 && v152 == 0;
                                      v154 = !v153;
                                      if (v152 == 62 || !v154)
                                      {
                                        ++i;
                                        goto LABEL_496;
                                      }
                                    }
                                  }

                                  else if (!*i)
                                  {
                                    goto LABEL_596;
                                  }

                                  ++i;
                                }
                              }

                              v182 = v80;
                              if (!v183)
                              {
                                goto LABEL_562;
                              }

                              v113 = v183;
                              *(v183 + 16) = i;
                              if ((v12 & 0x20) == 0)
                              {
                                v80 = v182;
                                while (1)
                                {
                                  if (*i == 93)
                                  {
                                    if (i[1] == 93)
                                    {
                                      v184 = i[2];
                                      v185 = v231 == 62 && v184 == 0;
                                      v186 = !v185;
                                      if (v184 == 62 || !v186)
                                      {
                                        *i++ = 0;
                                        goto LABEL_496;
                                      }
                                    }
                                  }

                                  else if (!*i)
                                  {
                                    goto LABEL_596;
                                  }

                                  ++i;
                                }
                              }

                              v80 = v182;
                              if (i)
                              {
LABEL_496:
                                v188 = i[1] == 62;
                                v189 = 1;
                                goto LABEL_497;
                              }

                              v89 = 8;
LABEL_566:
                              v82 = v113[2];
LABEL_511:
                              v74 = v232;
                              if (v82)
                              {
                                v198 = v82 - v21;
                                goto LABEL_608;
                              }

                              goto LABEL_542;
                            }

                            i = v82 + 7;
                          }

                          else
                          {
                            i = v82 + 6;
                          }
                        }

                        else
                        {
                          i = v82 + 5;
                        }
                      }

                      else
                      {
                        i = v82 + 4;
                      }
                    }

                    else
                    {
                      i = v82 + 3;
                    }
                  }

                  else
                  {
                    i = v82 + 2;
                  }

LABEL_596:
                  v89 = 8;
                  goto LABEL_607;
                }

                break;
              }

              if (v87 != 63)
              {
                if (v87 == 47)
                {
                  i = v82 + 1;
                  v93 = v80[1];
                  if (v93)
                  {
                    v77 = v82 + 1;
                    while (1)
                    {
                      v94 = *v77;
                      {
                        break;
                      }

                      ++v77;
                      v95 = *v93++;
                      if (v94 != v95)
                      {
                        goto LABEL_581;
                      }
                    }

                    if (!*v93)
                    {
                      v80 = v80[3];
                      do
                      {
                        i = v77;
                        v131 = *v77++;
                        v130 = v131;
                      }

                      if (v130)
                      {
                        if (v130 != 62)
                        {
                          v89 = 13;
                          goto LABEL_607;
                        }

                        continue;
                      }

                      --v77;
                      if (v231 == 62)
                      {
                        continue;
                      }

LABEL_590:
                      v89 = 13;
                      goto LABEL_606;
                    }

                    if (!*v77 && *v93 == v231 && !v93[1])
                    {
                      goto LABEL_590;
                    }
                  }

LABEL_581:
                  v89 = 14;
                  goto LABEL_607;
                }

                if (v87)
                {
                  v219 = 0;
                }

                else
                {
                  v219 = v231 == 63;
                }

                if (v219)
                {
                  v89 = 6;
                }

                else
                {
                  v89 = 5;
                }

LABEL_576:
                i = v82;
                goto LABEL_607;
              }

              break;
            }

            i = v82 + 1;
            {
LABEL_565:
              v89 = 6;
              goto LABEL_607;
            }

            v224 = v76;
            v227 = v21;
            v98 = v82 + 1;
            v99 = v82 + 3;
            v100 = 4;
            v101 = 1;
            do
            {
              v102 = v101;
              v77 = v98;
              v104 = *v98++;
              v103 = v104;
              v105 = v99;
              ++v101;
              --v100;
              ++v99;
            }

            v106 = &v82[v102];
            if (!v103)
            {
              v89 = 6;
              i = v106;
              goto LABEL_560;
            }

            v223 = v106;
            v107 = v98 - 1;
            if ((v82[1] & 0xDF) != 0x58 || (v82[2] & 0xDF) != 0x4D)
            {
              v110 = v231;
              if ((v12 & 1) == 0)
              {
                goto LABEL_243;
              }

LABEL_280:
              if (v80)
              {
                v111 = 0;
                v21 = v227;
                goto LABEL_282;
              }

              v89 = 3;
LABEL_559:
              i = v107;
LABEL_560:
              v76 = v224;
              v21 = v227;
              goto LABEL_607;
            }

            v108 = v100 == 0 && (v82[3] & 0xDF) == 76;
            if (v108)
            {
              v109 = 256;
            }

            else
            {
              v109 = 1;
            }

            v110 = v231;
            if ((v109 & v12) == 0)
            {
              while (1)
              {
LABEL_243:
                if (v103 == 63)
                {
                  v103 = v107[1];
                  v128 = v110 != 62 || v103 != 0;
                  if (v103 == 62 || !v128)
                  {
                    v31 = v103 == 62;
                    v162 = 1;
                    if (v31)
                    {
                      v162 = 2;
                    }

                    v77 = &v107[v162];
                    v21 = v227;
                    goto LABEL_415;
                  }
                }

                else
                {
                  if (!v103)
                  {
                    v89 = 6;
                    goto LABEL_559;
                  }

                  v103 = v107[1];
                }

                ++v107;
              }
            }

            if (!v108)
            {
              goto LABEL_280;
            }

            if (v80[3])
            {
              v89 = 6;
              i = v106;
              goto LABEL_560;
            }

            v21 = v227;
            if (!v80)
            {
              v89 = 3;
              i = v223;
              v76 = v224;
              goto LABEL_607;
            }

            v111 = 1;
LABEL_282:
            v80[1] = i;
            v135 = *(v98 - 1);
            *(v98 - 1) = 0;
            if (v135 == 63)
            {
              v136 = *v98;
              v138 = v110 == 62 && v136 == 0;
              if (v136 != 62 && !v138)
              {
                v89 = 6;
                i = v98;
                v76 = v224;
                goto LABEL_607;
              }

              if (v136 == 62)
              {
                v77 = v98 + 1;
              }

              else
              {
                v77 = v98;
              }

              v80 = v80[3];
LABEL_415:
              v76 = v224;
              goto LABEL_416;
            }

            {
              v76 = v224;
              i = v223 + 1;
              goto LABEL_565;
            }

            v76 = v224;
            do
            {
              v156 = v105;
              v158 = *++v77;
              v157 = v158;
              ++v105;
            }

            while (v157 != 63)
            {
              if (!v157)
              {
                i = v156 - 1;
                goto LABEL_565;
              }

              v157 = *v156;
LABEL_391:
              ++v156;
            }

            v157 = *v156;
            v160 = v110 != 62 || v157 != 0;
            if (v157 != 62 && v160)
            {
              goto LABEL_391;
            }

            if (v111)
            {
              *(v156 - 1) = 47;
            }

            else
            {
              v80[2] = v77;
              v80 = v80[3];
              *(v156 - 1) = 0;
              if (*v156 == 62)
              {
                v77 = v156 + 1;
              }

              else
              {
                v77 = v156;
              }
            }

LABEL_416:
            if ((*v80 & 0xFLL) != 7)
            {
              continue;
            }

            break;
          }

          while (1)
          {
            do
            {
LABEL_417:
              i = v77;
              v164 = *v77++;
              v163 = v164;
            }

            while ((v165 & 8) != 0);
            if ((v165 & 0x80) == 0)
            {
              break;
            }

            v166 = v17;
            v167 = v76;
            v168 = v80;
            if (!v169)
            {
              v76 = v167;
              v17 = v166;
              goto LABEL_562;
            }

            v113 = v169;
            *(v169 + 8) = i;
            v170 = i + 1;
            while (1)
            {
              v171 = *(v170 - 1);
              if ((v172 & 0x40) == 0)
              {
                --v170;
                goto LABEL_428;
              }

              v171 = *v170;
              if ((v172 & 0x40) == 0)
              {
                goto LABEL_428;
              }

              v171 = v170[1];
              if ((v172 & 0x40) == 0)
              {
                break;
              }

              v171 = v170[2];
              v170 += 4;
              if ((v172 & 0x40) == 0)
              {
                v170 -= 2;
                goto LABEL_428;
              }
            }

            ++v170;
LABEL_428:
            *v170 = 0;
            i = v170 + 1;
            if ((v172 & 8) != 0)
            {
              do
              {
                v173 = *i++;
                v171 = v173;
              }
            }

            if (v171 != 61)
            {
              goto LABEL_568;
            }

            do
            {
              v175 = *i++;
              v174 = v175;
            }

            if (v174 != 34 && v174 != 39)
            {
              --i;
LABEL_568:
              v76 = v167;
              v17 = v166;
              v89 = 12;
              goto LABEL_607;
            }

            *(v169 + 16) = i;
            v176 = v230(i, v174);
            if (!v176)
            {
              v76 = v167;
              v17 = v166;
              v89 = 12;
              goto LABEL_566;
            }

            v77 = v176;
            v80 = v168;
            v76 = v167;
            v17 = v166;
            if (v177 < 0)
            {
              v89 = 12;
              goto LABEL_606;
            }
          }

          if (v163 == 62)
          {
            continue;
          }

          break;
        }

        if (v163 != 47)
        {
          v89 = 11;
          if (v231 != 62)
          {
            goto LABEL_607;
          }

          v77 = i;
          if (v163)
          {
            goto LABEL_607;
          }

          continue;
        }

        break;
      }

      if (*v77 == 62)
      {
        v80 = v80[3];
        v77 = i + 2;
        continue;
      }

      break;
    }

    v89 = 11;
    if (v231 == 62 && !*v77)
    {
      v80 = v80[3];
      continue;
    }

    break;
  }

LABEL_606:
  i = v77;
LABEL_607:
  v198 = i - v21;
  v74 = v232;
LABEL_608:
  if (v231)
  {
    v220 = 0;
  }

  else
  {
    v220 = v198 == v76;
  }

  v221 = v220;
  v222 = v198 - v221;
  if (v198 >= 1)
  {
    v198 = v222;
  }

LABEL_616:
  *v17 = v89;
  *(v17 + 8) = v198;
LABEL_617:
  *(v17 + 16) = v74;
}

const char *pugi::xml_parse_result::description(pugi::xml_parse_result *this)
{
  v1 = *this;
  if (v1 > 0x10)
  {
    return "Unknown error";
  }

  else
  {
    return off_278EA8478[v1];
  }
}

void *pugi::xml_document::_destroy(pugi::xml_document *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 1) = 0;
  }

  v3 = *this;
  v4 = *(*this + 88);
  if (v4)
  {
    do
    {
      if (*v4)
      {
      }

      v4 = *(v4 + 8);
    }

    while (v4);
    v3 = *this;
  }

  result = *(v3 - (*v3 >> 8) + 16);
  if (result)
  {
    do
    {
      v6 = result[2];
      result = v6;
    }

    while (v6);
  }

  *this = 0;
  return result;
}

void pugi::xml_document::load(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  pugi::xml_document::_destroy(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 56) = 10241;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    *(a5 + 16) = 0;
    *a5 = 2;
LABEL_40:
    *(a5 + 8) = 0;
    return;
  }

  v35 = a4;
  std::istream::tellg();
  if (v37 < 0)
  {
    std::ios_base::clear((a2 + *(*a2 - 24)), 0);
    v34 = a3;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v21 = a2 + 4;
    v20 = *a2;
    while ((*(v21 + *(v20 - 24)) & 2) == 0)
    {
      v13 = v22;
      if (!v22)
      {
        goto LABEL_32;
      }

      *v22 = 0;
      v22[1] = 0;
      v23 = v22;
      if (v19)
      {
        *v19 = v22;
        v23 = v18;
      }

      std::istream::read();
      v24 = a2[1];
      *(v13 + 8) = v24;
      v20 = *a2;
      v14 = 2;
      if ((*(v21 + *(*a2 - 24)) & 1) != 0 || (*(v21 + *(*a2 - 24)) & 6) == 4)
      {
        v13 = 0;
        v15 = 0;
LABEL_35:
        v18 = v23;
        while (v18)
        {
LABEL_36:
          v32 = v18;
          v18 = *v18;
        }

LABEL_37:
        a3 = v34;
        goto LABEL_38;
      }

      v25 = __CFADD__(v24, v15);
      v26 = &v15[v24];
      v27 = v25;
      if (v26 > v15)
      {
        v15 = v26;
      }

      v18 = v23;
      v19 = v13;
      if (v27)
      {
        v13 = 0;
        v15 = 0;
        v14 = 3;
        goto LABEL_35;
      }
    }

    v13 = v28;
    if (!v28)
    {
LABEL_32:
      v15 = 0;
      v14 = 3;
      if (v18)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v18)
    {
      v29 = v18;
      v30 = v28;
      do
      {
        memcpy(v30, v29 + 2, v29[1]);
        v31 = v29;
        v29 = *v29;
        v30 += v31[1];
      }

      while (v29);
      v14 = 0;
      goto LABEL_36;
    }

    a3 = v34;
    goto LABEL_43;
  }

  std::istream::tellg();
  std::istream::seekg();
  std::istream::tellg();
  std::istream::seekg();
  v13 = 0;
  v14 = 2;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    goto LABEL_39;
  }

  v15 = 0;
  if (v37 < 0)
  {
LABEL_38:
    if (!v14)
    {
      goto LABEL_43;
    }

LABEL_39:
    *(a5 + 16) = 0;
    *a5 = v14;
    goto LABEL_40;
  }

  {
    v14 = 3;
    goto LABEL_39;
  }

  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 1) != 0 || (*(a2 + *(*a2 - 24) + 32) & 6) == 4)
  {
    v16(v13);
    goto LABEL_39;
  }

  v15 = a2[1];
LABEL_43:
  if (buffer_encoding == 1)
  {
    (v15++)[v13] = 0;
  }
}

void sub_247629024(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pugi::xml_document::load_file(uint64_t a1@<X0>, const char *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  pugi::xml_document::_destroy(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 56) = 10241;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  v10 = fopen(a2, "rb");
  if (v10)
  {

    fclose(v10);
  }
}

void sub_247629178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    fclose(v1);
  }

  _Unwind_Resume(exception_object);
}

void pugi::impl::anonymous namespace::load_file_impl(FILE *a1@<X1>, uint64_t a2@<X0>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X4>, uint64_t a6@<X8>)
{
  if (!a1)
  {
    *(a6 + 16) = 0;
    v19 = 1;
LABEL_12:
    *a6 = v19;
    goto LABEL_13;
  }

  fseek(a1, 0, 2);
  v12 = MEMORY[0x24C1A94F0](a1);
  fseek(a1, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    *(a6 + 16) = 0;
    *a6 = 2;
LABEL_13:
    *(a6 + 8) = 0;
    return;
  }

  if (!v14)
  {
    *(a6 + 16) = 0;
    v19 = 3;
    goto LABEL_12;
  }

  v15 = v14;
  if (fread(v14, 1uLL, v12, a1) != v12)
  {
    *(a6 + 16) = 0;
    v19 = 2;
    goto LABEL_12;
  }

  if (buffer_encoding == 1)
  {
    *(v15 + v12++) = 0;
  }
}

uint64_t pugi::xml_document::save(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = v3;
  __s = v7;
  v8 = v2;
  v39 = *MEMORY[0x277D85DE8];
  v36 = v9;
  v37 = 0;
  v10 = v4;
  if (v4 <= 8)
  {
    v10 = v4;
    if ((0x191u >> v4))
    {
      v10 = dword_247766500[v4];
    }
  }

  v38 = v10;
  if ((v3 & 2) != 0 && v4 != 9)
  {
    *v35 = -17425;
    v35[2] = -65;
    v37 = 3;
  }

  if ((v3 & 8) == 0)
  {
    for (i = *(*v2 + 32); i; i = *(i + 48))
    {
      if ((*i & 0xF) == 2)
      {
        break;
      }

      if ((*i & 0xF) == 7)
      {
        goto LABEL_20;
      }
    }

    if (v5 == 9)
    {
    }

    v12 = v37;
    if (v37 >= 0x7FF)
    {
      v12 = 0;
    }

    *&v35[v12] = 15935;
    v13 = v12 + 2;
    v37 = v12 + 2;
    if ((v6 & 4) == 0)
    {
      if (v12 >= 0x7FE)
      {
        v13 = 0;
      }

      v35[v13] = 10;
      v37 = v13 + 1;
    }
  }

LABEL_20:
  v14 = 0;
  v15 = *v8;
  if ((v6 & 0x41) != 0 && (v6 & 4) == 0)
  {
    v14 = strlen(__s);
  }

  v16 = 0;
  v17 = 2;
  v18 = v15;
  do
  {
    if ((*v18 & 0xFu) - 3 <= 1)
    {
      v17 = 0;
      goto LABEL_73;
    }

    if (v6 & 4) == 0 && (v17)
    {
      v19 = v37;
      if (v37 >= 0x800)
      {
        v19 = 0;
      }

      v35[v19] = 10;
      v37 = v19 + 1;
    }

    if ((v17 & 2) != 0 && v14)
    {
    }

    if ((*v18 & 0xF) != 1)
    {
      if ((*v18 & 0xF) != 2)
      {
LABEL_94:
        v17 = 3;
        goto LABEL_73;
      }

      if (*(v18 + 8))
      {
        v20 = *(v18 + 8);
      }

      else
      {
        v20 = ":anonymous";
      }

      v21 = v37;
      if (v37 >= 0x800)
      {
        v21 = 0;
      }

      v35[v21] = 60;
      v37 = v21 + 1;
      v22 = *(v18 + 56);
      if (v22)
      {
      }

      if (*(v18 + 16))
      {
        v23 = v37;
        if (v37 >= 0x800)
        {
          v23 = 0;
        }

        v35[v23] = 62;
        v37 = v23 + 1;
        v24 = *(v18 + 32);
        if (!v24)
        {
          goto LABEL_87;
        }

        goto LABEL_55;
      }

      v25 = v37;
      if (*(v18 + 32))
      {
        if (v37 >= 0x800)
        {
          v25 = 0;
        }

        v35[v25] = 62;
        v37 = v25 + 1;
        v24 = *(v18 + 32);
LABEL_55:
        if (*(v18 + 16))
        {
          v17 = 0;
        }

        else
        {
          v17 = 3;
        }

        ++v16;
        goto LABEL_59;
      }

      if ((v6 & 0x80) == 0)
      {
        if ((v6 & 4) == 0)
        {
          if (v37 >= 0x800)
          {
            v25 = 0;
          }

          v35[v25++] = 32;
          v37 = v25;
        }

        if (v25 >= 0x7FF)
        {
          v25 = 0;
        }

        *&v35[v25] = 15919;
        v26 = v25 + 2;
        goto LABEL_93;
      }

      if (v37 >= 0x7FE)
      {
        v25 = 0;
      }

      v27 = &v35[v25];
      *v27 = 15422;
      v27[2] = 47;
      v28 = v25 + 3;
LABEL_90:
      v37 = v28;
      v31 = v37;
      if (v37 >= 0x800)
      {
        v31 = 0;
      }

      v35[v31] = 62;
      v26 = v31 + 1;
LABEL_93:
      v37 = v26;
      goto LABEL_94;
    }

    v24 = *(v18 + 32);
    v17 = 2;
    if (!v24)
    {
      do
      {
LABEL_73:
        if (v18 == v15)
        {
          goto LABEL_60;
        }

        v24 = *(v18 + 48);
        if (v24)
        {
          goto LABEL_59;
        }

        v18 = *(v18 + 24);
      }

      while ((*v18 & 0xFLL) != 2);
      if (v6 & 4) == 0 && (v17)
      {
        v29 = v37;
        if (v37 >= 0x800)
        {
          v29 = 0;
        }

        v35[v29] = 10;
        v37 = v29 + 1;
      }

      --v16;
      if ((v17 & 2) != 0 && v14)
      {
      }

      if (*(v18 + 8))
      {
        v20 = *(v18 + 8);
      }

      else
      {
        v20 = ":anonymous";
      }

LABEL_87:
      v30 = v37;
      if (v37 >= 0x7FF)
      {
        v30 = 0;
      }

      *&v35[v30] = 12092;
      v28 = v30 + 2;
      goto LABEL_90;
    }

LABEL_59:
    v18 = v24;
LABEL_60:
    ;
  }

  while (v18 != v15);
  v32 = v37;
  if (v6 & 4) == 0 && (v17)
  {
    if (v37 >= 0x800)
    {
      v32 = 0;
    }

    v35[v32++] = 10;
    v37 = v32;
  }
}

pugi::impl::_anonymous_namespace_::xml_buffered_writer *pugi::impl::anonymous namespace::xml_buffered_writer::write_string(pugi::impl::_anonymous_namespace_::xml_buffered_writer *this, const char *__s)
{
  v2 = this;
  v3 = *(this + 1281);
  LOBYTE(v4) = *__s;
  v5 = v3 < 0x800;
  if (*__s && v3 <= 0x7FF)
  {
    do
    {
      v6 = v3;
      *(this + v3) = v4;
      v7 = *++__s;
      v4 = v7;
      v5 = v3++ < 0x7FF;
    }

    while (v6 <= 0x7FE && v4);
  }

  if (v5)
  {
    *(this + 1281) = v3;
  }

  else
  {
    v9 = *(this + 1281);
    v10 = v3 - v9;
    if (v3 - v9 >= 5)
    {
      v11 = ~v9 + v3;
      v12 = -1;
      while ((__s[v12] & 0xC0) == 0x80)
      {
        --v12;
        --v11;
        if (v12 == -5)
        {
          v11 = v10;
          break;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    *(this + 1281) = v3 - (v10 - v11);
    v13 = &__s[-(v10 - v11)];
    v14 = strlen(__s) + v10 - v11;
  }

  return this;
}

uint64_t pugi::impl::anonymous namespace::append_new_node(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = a2[1];
  if ((v5 + 64) > 0x7FD8)
  {
    v11 = 0;
    if (!result)
    {
      return result;
    }

    v6 = v11;
  }

  else
  {
    v6 = *a2;
    result = *a2 + v5 + 40;
    a2[1] = v5 + 64;
  }

  *(result + 56) = 0;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = a3 | ((result - v6) << 8);
  *(result + 24) = a1;
  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    *(v10 + 48) = result;
    *(result + 40) = v10;
  }

  else
  {
    *(a1 + 32) = result;
    v9 = (result + 40);
  }

  *v9 = result;
  return result;
}

uint64_t pugi::impl::anonymous namespace::append_new_attribute(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if ((v3 + 40) > 0x7FD8)
  {
    v9 = 0;
    if (!result)
    {
      return result;
    }

    v4 = v9;
  }

  else
  {
    v4 = *a2;
    result = *a2 + v3 + 40;
    a2[1] = v3 + 40;
  }

  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = (result - v4) << 8;
  v6 = *(a1 + 56);
  if (v6)
  {
    v8 = *(v6 + 24);
    v7 = (v6 + 24);
    *(v8 + 32) = result;
    *(result + 24) = v8;
  }

  else
  {
    *(a1 + 56) = result;
    v7 = (result + 24);
  }

  *v7 = result;
  return result;
}

void pugi::impl::anonymous namespace::xml_allocator::deallocate_memory(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a1 == a3)
  {
    v3 = *(a1 + 8);
    a3[3] = v3;
  }

  else
  {
    v3 = a3[3];
  }

  v4 = a3[4] + a2;
  a3[4] = v4;
  if (v4 == v3)
  {
    v5 = a3[2];
    if (v5)
    {
      v6 = a3[1];
      *(v6 + 16) = v5;
      *(a3[2] + 8) = v6;
    }

    else
    {
      a3[3] = 0;
      a3[4] = 0;
      *(a1 + 8) = 0;
    }
  }
}

uint64_t pugi::impl::anonymous namespace::xml_allocator::allocate_memory_oob(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (a2 >= 0x1FF7)
  {
    v6 = a2 + 40;
  }

  else
  {
    v6 = 0x8000;
  }

  if (result)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = **a1;
    *a3 = result;
    if (a2 > 0x1FF6)
    {
      v11 = *a1;
      v12 = *(*a1 + 8);
      *(result + 8) = v12;
      *(result + 16) = v11;
      *(v12 + 16) = result;
      v11[1] = result;
      v8 = (result + 24);
    }

    else
    {
      v8 = (a1 + 8);
      v9 = *(a1 + 8);
      v10 = *a1;
      *(result + 8) = *a1;
      v10[2] = result;
      v10[3] = v9;
      *a1 = result;
    }

    *v8 = a2;
    result += 40;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t pugi::impl::anonymous namespace::get_buffer_encoding(uint64_t result, pugi::impl::_anonymous_namespace_ *this, unsigned __int8 *a3, uint64_t a4, unint64_t *a5)
{
  if (result > 6)
  {
    if (result == 8)
    {
      v7 = 5;
    }

    else
    {
      v7 = result;
    }

    if (result == 7)
    {
      return 5;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (result)
    {
      if (result == 4)
      {
        return 2;
      }

      else
      {
        return result;
      }
    }

    if (a3 < 4)
    {
      return 1;
    }

    v8 = *this;
    v9 = *(this + 1);
    v10 = *(this + 2);
    v11 = *(this + 3);
    v12 = (v8 | v9) == 0;
    if (!(v8 | v9) && v10 == 254 && v11 == 255)
    {
      return 6;
    }

    v14 = v8 == 255 && v9 == 254;
    if (v14 && v10 == 0 && v11 == 0)
    {
      return 5;
    }

    v17 = v8 == 254 && v9 == 255 || v14;
    if (v8 == 254 && v9 == 255)
    {
      result = 3;
    }

    else
    {
      result = 2;
    }

    if (v17)
    {
      return result;
    }

    if (v8 == 239 && v9 == 187 && v10 == 191)
    {
      return 1;
    }

    if (*(this + 2))
    {
      v12 = 0;
    }

    if (v12 && v11 == 60)
    {
      return 6;
    }

    v18 = v8 == 60 && v9 == 0;
    v19 = v18;
    if (v18 && !*(this + 2) && !*(this + 3))
    {
      return 5;
    }

    if (*this)
    {
      v20 = 0;
    }

    else
    {
      v20 = v9 == 60;
    }

    v21 = v20;
    if (v20 && !*(this + 2) && v11 == 63)
    {
      return 3;
    }

    v22 = v10 == 63 && v19;
    v23 = v19 | v21;
    if (v21)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    if (v22 && v11 == 0)
    {
      result = 2;
    }

    else
    {
      result = v24;
    }

    if ((v23 & 1) == 0)
    {
      v27[1] = v5;
      v27[2] = v6;
      v26 = 0;
      v27[0] = 0;
      {
        if (v26 == 6)
        {
          if ((*v27[0] & 0xDF) == 0x4C && (*(v27[0] + 1) & 0xDF) == 0x41 && (*(v27[0] + 2) & 0xDF) == 0x54 && (*(v27[0] + 3) & 0xDF) == 0x49 && (*(v27[0] + 4) & 0xDF) == 0x4E)
          {
            v25 = *(v27[0] + 5);
LABEL_98:
            if (v25 == 49)
            {
              return 9;
            }
          }
        }

        else if (v26 == 10 && (*v27[0] & 0xDF) == 0x49 && (*(v27[0] + 1) & 0xDF) == 0x53 && (*(v27[0] + 2) & 0xDF) == 0x4F && *(v27[0] + 3) == 45 && *(v27[0] + 4) == 56 && *(v27[0] + 5) == 56 && *(v27[0] + 6) == 53 && *(v27[0] + 7) == 57 && *(v27[0] + 8) == 45)
        {
          v25 = *(v27[0] + 9);
          goto LABEL_98;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL pugi::impl::anonymous namespace::parse_declaration_encoding(pugi::impl::_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, const unsigned __int8 **a4, unint64_t *a5)
{
  if (a2 < 6)
  {
    return 0;
  }

  v5 = 0;
  if (*this != 1836597052)
  {
    return v5;
  }

  if (*(this + 4) != 108)
  {
    return v5;
  }

  v5 = 0;
  {
    return v5;
  }

  v7 = this + 13;
  v8 = 14;
  while (1)
  {
    v9 = v7[v8 - 21];
    if (v9 != 101)
    {
      if (v9 == 63)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v7[v8 - 20] == 110)
    {
      break;
    }

LABEL_13:
    ++v8;
    if (7 - a2 + v8 == 14)
    {
      return 0;
    }
  }

  if (v8 - 8 >= a2 || v8 - 6 >= a2 || *(this + v8 - 6) != 99 || v8 - 5 >= a2 || *(this + v8 - 5) != 111 || v8 - 4 >= a2 || *(this + v8 - 4) != 100 || v8 - 3 >= a2 || *(this + v8 - 3) != 105 || v8 - 2 >= a2 || *(this + v8 - 2) != 110 || v8 - 1 >= a2)
  {
    return 0;
  }

  v5 = 0;
  if (*(this + v8 - 1) == 103 && v8 < a2)
  {
    while (1)
    {
      v10 = *(this + v8);
      {
        break;
      }

      v5 = 0;
      if (a2 == ++v8)
      {
        return v5;
      }
    }

    if (v10 == 61)
    {
      v11 = v8 + 1;
      v12 = this + v11;
      while (v11 < a2)
      {
        v14 = *v12++;
        v13 = v14;
        ++v11;
        {
          if (v13 == 34)
          {
            v15 = 34;
          }

          else
          {
            v15 = 39;
          }

          if (v15 != v13)
          {
            return 0;
          }

          *a3 = v12;
          if (v11 >= a2)
          {
LABEL_44:
            v5 = 0;
            v18 = &a2[-v11];
            if (a2 < v11)
            {
              v18 = 0;
            }

            *a4 = v18;
          }

          else
          {
            v16 = 0;
            v17 = v11;
            {
              ++v17;
              ++v16;
              ++v12;
              if (v17 >= a2)
              {
                goto LABEL_44;
              }
            }

            *a4 = v16;
            return v15 == *v12;
          }

          return v5;
        }
      }
    }

    return 0;
  }

  return v5;
}

uint64_t pugi::impl::anonymous namespace::utf8_writer::low(pugi::impl::_anonymous_namespace_::utf8_writer *this, unsigned __int8 *a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      *this = (a2 >> 12) | 0xE0;
      *(this + 1) = (a2 >> 6) & 0x3F | 0x80;
      *(this + 2) = a2 & 0x3F | 0x80;
      v2 = 3;
    }

    else
    {
      *this = (a2 >> 6) | 0xC0;
      *(this + 1) = a2 & 0x3F | 0x80;
      v2 = 2;
    }
  }

  else
  {
    *this = a2;
    v2 = 1;
  }

  return this + v2;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_simple(unsigned __int8 *a1, unsigned __int8 a2)
{
  while (1)
  {
    do
    {
      v2 = *a1;
      {
        goto LABEL_6;
      }

      v3 = a1 + 1;
      v2 = a1[1];
      {
        break;
      }

      v3 = a1 + 2;
      v2 = a1[2];
      {
        break;
      }

      v3 = a1 + 3;
      v2 = a1[3];
      a1 += 4;
    }

    while ((v4 & 2) == 0);
    a1 = v3;
LABEL_6:
    if (v2 == a2)
    {
      *a1 = 0;
      return a1 + 1;
    }

    if (!v2)
    {
      return 0;
    }

    ++a1;
  }
}

uint64_t pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_simple(pugi::impl::_anonymous_namespace_::utf8_writer *this, unsigned __int8 a2)
{
  v3 = a2;
  __src = 0;
  v11 = 0;
  while (1)
  {
    do
    {
      v4 = *this;
      {
        goto LABEL_7;
      }

      v5 = (this + 1);
      v4 = *(this + 1);
      {
        break;
      }

      v5 = (this + 2);
      v4 = *(this + 2);
      {
        break;
      }

      v5 = (this + 3);
      v4 = *(this + 3);
      this = (this + 4);
    }

    while ((v6 & 2) == 0);
    this = v5;
LABEL_7:
    if (v4 == v3)
    {
      break;
    }

    if (v4 == 38)
    {
    }

    else
    {
      if (!v4)
      {
        return 0;
      }

      this = (this + 1);
    }
  }

  v7 = this;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, this - __src);
    v7 = (this - v8);
  }

  *v7 = 0;
  return this + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_eol(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *a1;
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 + 2;
      while (1)
      {
        v6 = *(v7 - 1);
        {
          --v7;
          goto LABEL_11;
        }

        v6 = *v7;
        {
          goto LABEL_11;
        }

        v6 = v7[1];
        {
          break;
        }

        v6 = v7[2];
        v7 += 4;
        if ((v8 & 2) != 0)
        {
          v7 -= 2;
          goto LABEL_11;
        }
      }

      ++v7;
    }

LABEL_11:
    if (v6 == v5)
    {
      break;
    }

    if (v6 == 13)
    {
      a1 = v7 + 1;
      v9 = v7[1];
      *v7 = 10;
      if (v9 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, a1 - v3);
        }

        a1 = v7 + 2;
        ++v4;
        v3 = (v7 + 2);
      }
    }

    else
    {
      if (!v6)
      {
        return 0;
      }

      a1 = v7 + 1;
    }
  }

  v10 = v7;
  if (v3)
  {
    memmove(&v3[-v4], v3, v7 - v3);
    v10 = &v7[-v4];
  }

  *v10 = 0;
  return v7 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_eol(char *a1, unsigned __int8 a2)
{
  v2 = a2;
  __src = 0;
  v12 = 0;
  while (1)
  {
    v3 = *a1;
    {
      v4 = a1;
    }

    else
    {
      v4 = (a1 + 2);
      while (1)
      {
        v3 = *(v4 - 1);
        {
          --v4;
          goto LABEL_11;
        }

        v3 = *v4;
        {
          goto LABEL_11;
        }

        v3 = v4[1];
        {
          break;
        }

        v3 = v4[2];
        v4 += 4;
        if ((v5 & 2) != 0)
        {
          v4 -= 2;
          goto LABEL_11;
        }
      }

      ++v4;
    }

LABEL_11:
    if (v3 == v2)
    {
      break;
    }

    switch(v3)
    {
      case 13:
        a1 = (v4 + 1);
        v6 = v4[1];
        *v4 = 10;
        if (v6 == 10)
        {
          v7 = v12;
          if (__src)
          {
            memmove(__src - v12, __src, a1 - __src);
          }

          a1 = (v4 + 2);
          __src = v4 + 2;
          v12 = v7 + 1;
        }

        break;
      case 38:
        break;
      case 0:
        return 0;
      default:
        a1 = (v4 + 1);
        break;
    }
  }

  v8 = v4;
  if (__src)
  {
    v9 = v12;
    memmove(__src - v12, __src, v4 - __src);
    v8 = &v4[-v9];
  }

  *v8 = 0;
  return v4 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_wconv(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *a1;
    if ((v7 & 4) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 + 2;
      while (1)
      {
        v6 = *(v8 - 1);
        if ((v7 & 4) != 0)
        {
          --v8;
          goto LABEL_11;
        }

        v6 = *v8;
        if ((v7 & 4) != 0)
        {
          goto LABEL_11;
        }

        v6 = v8[1];
        if ((v7 & 4) != 0)
        {
          break;
        }

        v6 = v8[2];
        v8 += 4;
        if ((v7 & 4) != 0)
        {
          v8 -= 2;
          goto LABEL_11;
        }
      }

      ++v8;
    }

LABEL_11:
    if (v6 == v5)
    {
      break;
    }

    if ((v7 & 8) != 0)
    {
      *v8 = 32;
      a1 = v8 + 1;
      if (v6 == 13 && *a1 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, a1 - v3);
        }

        a1 = v8 + 2;
        ++v4;
        v3 = (v8 + 2);
      }
    }

    else
    {
      if (!v6)
      {
        return 0;
      }

      a1 = v8 + 1;
    }
  }

  v9 = v8;
  if (v3)
  {
    memmove(&v3[-v4], v3, v8 - v3);
    v9 = &v8[-v4];
  }

  *v9 = 0;
  return v8 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_wconv(char *a1, unsigned __int8 a2)
{
  v2 = a2;
  __src = 0;
  v11 = 0;
  while (1)
  {
    v3 = *a1;
    if ((v4 & 4) != 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = (a1 + 2);
      while (1)
      {
        v3 = *(v5 - 1);
        if ((v4 & 4) != 0)
        {
          --v5;
          goto LABEL_11;
        }

        v3 = *v5;
        if ((v4 & 4) != 0)
        {
          goto LABEL_11;
        }

        v3 = v5[1];
        if ((v4 & 4) != 0)
        {
          break;
        }

        v3 = v5[2];
        v5 += 4;
        if ((v4 & 4) != 0)
        {
          v5 -= 2;
          goto LABEL_11;
        }
      }

      ++v5;
    }

LABEL_11:
    if (v3 == v2)
    {
      break;
    }

    if ((v4 & 8) != 0)
    {
      *v5 = 32;
      a1 = (v5 + 1);
      if (v3 == 13 && *a1 == 10)
      {
        v6 = v11;
        if (__src)
        {
          memmove(__src - v11, __src, a1 - __src);
        }

        a1 = (v5 + 2);
        __src = v5 + 2;
        v11 = v6 + 1;
      }
    }

    else if (v3 == 38)
    {
    }

    else
    {
      if (!v3)
      {
        return 0;
      }

      a1 = (v5 + 1);
    }
  }

  v7 = v5;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, v5 - __src);
    v7 = &v5[-v8];
  }

  *v7 = 0;
  return v5 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_wnorm(unsigned __int8 *a1, unsigned __int8 a2)
{
  v2 = a1;
  {
    v4 = 0;
    do
    {
    }

    while ((v5 & 8) != 0);
    v2 = &a1[v4];
    v3 = &a1[v4];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v6 = a2;
LABEL_7:
  v7 = v4;
  v8 = v3;
  v9 = v2;
  while (1)
  {
    v10 = *v9;
    if ((v11 & 0xC) != 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v9 + 2;
      while (1)
      {
        v10 = *(v12 - 1);
        if ((v11 & 0xC) != 0)
        {
          --v12;
          goto LABEL_17;
        }

        v10 = *v12;
        if ((v11 & 0xC) != 0)
        {
          goto LABEL_17;
        }

        v10 = v12[1];
        if ((v11 & 0xC) != 0)
        {
          break;
        }

        v10 = v12[2];
        v12 += 4;
        if ((v11 & 0xC) != 0)
        {
          v12 -= 2;
          goto LABEL_17;
        }
      }

      ++v12;
    }

LABEL_17:
    if (v10 == v6)
    {
      break;
    }

    if ((v11 & 8) != 0)
    {
      v9 = v12 + 1;
      v13 = v12[1];
      *v12 = 32;
      {
        v2 = v12 + 1;
        do
        {
          v14 = *++v2;
          ++v4;
        }

        v3 = v2;
        if (v8)
        {
          memmove(&v8[-v7], v8, v9 - v8);
          v3 = v2;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (!v10)
      {
        return 0;
      }

      v9 = v12 + 1;
    }
  }

  v15 = v12;
  if (v8)
  {
    memmove(&v8[-v4], v8, v12 - v8);
    v15 = &v12[-v4];
  }

  v16 = v15;
  do
  {
    v17 = *--v16;
    *v15 = 0;
    v15 = v16;
  }

  return v12 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_wnorm(char *a1, unsigned __int8 a2)
{
  __src = 0;
  v18 = 0;
  {
    v2 = 0;
    do
    {
    }

    while ((v3 & 8) != 0);
    a1 += v2;
    __src = a1;
    v18 = v2;
  }

  v4 = a2;
  while (1)
  {
    v5 = *a1;
    if ((v6 & 0xC) != 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = (a1 + 2);
      while (1)
      {
        v5 = *(v7 - 1);
        if ((v6 & 0xC) != 0)
        {
          --v7;
          goto LABEL_15;
        }

        v5 = *v7;
        if ((v6 & 0xC) != 0)
        {
          goto LABEL_15;
        }

        v5 = v7[1];
        if ((v6 & 0xC) != 0)
        {
          break;
        }

        v5 = v7[2];
        v7 += 4;
        if ((v6 & 0xC) != 0)
        {
          v7 -= 2;
          goto LABEL_15;
        }
      }

      ++v7;
    }

LABEL_15:
    if (v5 == v4)
    {
      break;
    }

    if ((v6 & 8) != 0)
    {
      a1 = (v7 + 1);
      v8 = v7[1];
      *v7 = 32;
      {
        v9 = 0;
        do
        {
        }

        while ((v10 & 8) != 0);
        v11 = v18;
        if (__src)
        {
          memmove(__src - v18, __src, a1 - __src);
        }

        a1 = &v7[v9 + 1];
        __src = a1;
        v18 = v11 + v9;
      }
    }

    else if (v5 == 38)
    {
    }

    else
    {
      if (!v5)
      {
        return 0;
      }

      a1 = (v7 + 1);
    }
  }

  v12 = v7;
  if (__src)
  {
    v13 = v18;
    memmove(__src - v18, __src, v7 - __src);
    v12 = &v7[-v13];
  }

  v14 = v12;
  do
  {
    v15 = *--v14;
    *v12 = 0;
    v12 = v14;
  }

  return v7 + 1;
}

char *pugi::impl::anonymous namespace::strconv_escape(pugi::impl::_anonymous_namespace_::utf8_writer *this, const void **a2)
{
  v3 = this + 1;
  v4 = *(this + 1);
  v5 = this + 1;
  if (v4 > 0x66)
  {
    if (v4 == 103)
    {
      v5 = this + 2;
      if (*(this + 2) != 116)
      {
        return v5;
      }

      v5 = this + 3;
      if (*(this + 3) != 59)
      {
        return v5;
      }

      v11 = 62;
    }

    else
    {
      if (v4 != 108)
      {
        if (v4 == 113)
        {
          v5 = this + 2;
          if (*(this + 2) == 117)
          {
            v5 = this + 3;
            if (*(this + 3) == 111)
            {
              v5 = this + 4;
              if (*(this + 4) == 116)
              {
                v5 = this + 5;
                if (*(this + 5) == 59)
                {
                  v6 = 34;
LABEL_43:
                  *this = v6;
                  v8 = this + 6;
                  v19 = *a2;
                  if (*a2)
                  {
                    memmove((v19 - a2[1]), v19, v3 - v19);
                  }

                  v10 = 5;
LABEL_28:
                  v5 = v8;
LABEL_29:
                  v13 = a2[1] + v10;
                  *a2 = v8;
                  a2[1] = v13;
                  return v5;
                }
              }
            }
          }
        }

        return v5;
      }

      v5 = this + 2;
      if (*(this + 2) != 116)
      {
        return v5;
      }

      v5 = this + 3;
      if (*(this + 3) != 59)
      {
        return v5;
      }

      v11 = 60;
    }

    *this = v11;
    v8 = this + 4;
    v12 = *a2;
    if (*a2)
    {
      memmove((v12 - a2[1]), v12, v3 - v12);
    }

    v10 = 3;
    goto LABEL_28;
  }

  if (v4 == 35)
  {
    v5 = this + 2;
    v14 = *(this + 2);
    if (v14 == 59)
    {
      return v5;
    }

    if (v14 == 120)
    {
      v5 = this + 3;
      v15 = *(this + 3);
      if (v15 != 59)
      {
        v16 = 0;
        while (1)
        {
          v15 = v15;
          v17 = v15 - 48;
          if (v17 > 9)
          {
            if ((v15 | 0x20u) - 97 > 5)
            {
              goto LABEL_50;
            }

            v16 = ((v15 | 0x20u) + 16 * v16 - 87);
          }

          else
          {
            v16 = (v17 | (16 * v16));
          }

          v18 = *++v5;
          LOBYTE(v15) = v18;
        }
      }
    }

    else
    {
      v20 = v14 - 48;
      if (v20 <= 9)
      {
        LODWORD(v16) = 0;
        do
        {
          v16 = (v20 + 10 * v16);
          v22 = *++v5;
          v21 = v22;
          v20 = v22 - 48;
        }

        while ((v22 - 48) < 0xA);
        v15 = v21;
LABEL_50:
        if (v15 == 59)
        {
          ++v5;
          if (v16 >> 16)
          {
            *this = (v16 >> 18) | 0xF0;
            *(this + 1) = (v16 >> 12) & 0x3F | 0x80;
            *(this + 2) = (v16 >> 6) & 0x3F | 0x80;
            *(this + 3) = v16 & 0x3F | 0x80;
            v23 = this + 4;
          }

          else
          {
          }

          v10 = v5 - v23;
          if (*a2)
          {
            memmove((*a2 - a2[1]), *a2, v23 - *a2);
          }

          v8 = v5;
          goto LABEL_29;
        }
      }
    }
  }

  else if (v4 == 97)
  {
    v5 = this + 2;
    v7 = *(this + 2);
    if (v7 == 112)
    {
      v5 = this + 3;
      if (*(this + 3) == 111)
      {
        v5 = this + 4;
        if (*(this + 4) == 115)
        {
          v5 = this + 5;
          if (*(this + 5) == 59)
          {
            v6 = 39;
            goto LABEL_43;
          }
        }
      }
    }

    else if (v7 == 109)
    {
      v5 = this + 3;
      if (*(this + 3) == 112)
      {
        v5 = this + 4;
        if (*(this + 4) == 59)
        {
          *this = 38;
          v8 = this + 5;
          v9 = *a2;
          if (*a2)
          {
            memmove((v9 - a2[1]), v9, v3 - v9);
          }

          v10 = 4;
          goto LABEL_28;
        }
      }
    }
  }

  return v5;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *result)
{
  while (1)
  {
    do
    {
      v1 = *result;
      {
        goto LABEL_6;
      }

      v2 = result + 1;
      v1 = result[1];
      {
        break;
      }

      v2 = result + 2;
      v1 = result[2];
      {
        break;
      }

      v2 = result + 3;
      v1 = result[3];
      result += 4;
    }

    result = v2;
LABEL_6:
    if (!v1)
    {
      break;
    }

    if (v1 == 60)
    {
      *result++ = 0;
      return result;
    }

    ++result;
  }

  *result = 0;
  return result;
}

pugi::impl::_anonymous_namespace_::utf8_writer *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true>::parse(pugi::impl::_anonymous_namespace_::utf8_writer *this)
{
  __src = 0;
  v10 = 0;
  while (1)
  {
    while (1)
    {
      do
      {
        v2 = *this;
        {
          goto LABEL_7;
        }

        v3 = (this + 1);
        v2 = *(this + 1);
        {
          break;
        }

        v3 = (this + 2);
        v2 = *(this + 2);
        {
          break;
        }

        v3 = (this + 3);
        v2 = *(this + 3);
        this = (this + 4);
      }

      this = v3;
LABEL_7:
      if (v2 != 38)
      {
        break;
      }
    }

    if (!v2)
    {
      break;
    }

    if (v2 == 60)
    {
      v4 = this;
      if (__src)
      {
        v5 = v10;
        memmove(__src - v10, __src, this - __src);
        v4 = (this - v5);
      }

      *v4 = 0;
      return (this + 1);
    }

    this = (this + 1);
  }

  v6 = this;
  if (__src)
  {
    v7 = v10;
    memmove(__src - v10, __src, this - __src);
    v6 = (this - v7);
  }

  *v6 = 0;
  return this;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    while (1)
    {
      v3 = *a1;
      {
        v4 = a1;
      }

      else
      {
        v4 = a1 + 2;
        while (1)
        {
          v3 = *(v4 - 1);
          {
            --v4;
            goto LABEL_11;
          }

          v3 = *v4;
          {
            goto LABEL_11;
          }

          v3 = v4[1];
          {
            break;
          }

          v3 = v4[2];
          v4 += 4;
          {
            v4 -= 2;
            goto LABEL_11;
          }
        }

        ++v4;
      }

LABEL_11:
      if (v3 != 13)
      {
        break;
      }

      a1 = v4 + 1;
      v5 = v4[1];
      *v4 = 10;
      if (v5 == 10)
      {
        if (v1)
        {
          memmove(&v1[-v2], v1, a1 - v1);
        }

        a1 = v4 + 2;
        ++v2;
        v1 = (v4 + 2);
      }
    }

    if (!v3)
    {
      break;
    }

    if (v3 == 60)
    {
      v6 = v4;
      if (v1)
      {
        memmove(&v1[-v2], v1, v4 - v1);
        v6 = &v4[-v2];
      }

      *v6 = 0;
      return ++v4;
    }

    a1 = v4 + 1;
  }

  v7 = v4;
  if (v1)
  {
    memmove(&v1[-v2], v1, v4 - v1);
    v7 = &v4[-v2];
  }

  *v7 = 0;
  return v4;
}

char *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true>::parse(char *a1)
{
  __src = 0;
  v11 = 0;
  while (1)
  {
    while (1)
    {
      v1 = *a1;
      {
        v2 = a1;
      }

      else
      {
        v2 = a1 + 2;
        while (1)
        {
          v1 = *(v2 - 1);
          {
            --v2;
            goto LABEL_11;
          }

          v1 = *v2;
          {
            goto LABEL_11;
          }

          v1 = v2[1];
          {
            break;
          }

          v1 = v2[2];
          v2 += 4;
          {
            v2 -= 2;
            goto LABEL_11;
          }
        }

        ++v2;
      }

LABEL_11:
      if (v1 > 37)
      {
        break;
      }

      if (v1 == 13)
      {
        a1 = v2 + 1;
        v3 = v2[1];
        *v2 = 10;
        if (v3 == 10)
        {
          v4 = v11;
          if (__src)
          {
            memmove(__src - v11, __src, a1 - __src);
          }

          a1 = v2 + 2;
          __src = v2 + 2;
          v11 = v4 + 1;
        }
      }

      else
      {
        if (!v1)
        {
          v5 = v2;
          if (__src)
          {
            v6 = v11;
            memmove(__src - v11, __src, v2 - __src);
            v5 = &v2[-v6];
          }

          *v5 = 0;
          return v2;
        }

LABEL_22:
        a1 = v2 + 1;
      }
    }

    if (v1 != 38)
    {
      break;
    }
  }

  if (v1 != 60)
  {
    goto LABEL_22;
  }

  v7 = v2;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, v2 - __src);
    v7 = &v2[-v8];
  }

  *v7 = 0;
  return ++v2;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  for (i = a1; ; ++i)
  {
    do
    {
      v2 = *i;
      {
        goto LABEL_7;
      }

      v3 = i + 1;
      v2 = i[1];
      {
        break;
      }

      v3 = i + 2;
      v2 = i[2];
      {
        break;
      }

      v3 = i + 3;
      v2 = i[3];
      i += 4;
    }

    i = v3;
LABEL_7:
    if (v2 == 60)
    {
      break;
    }

    if (!v2)
    {
      v4 = i;
      do
      {
        v5 = v4;
        if (v4 <= a1)
        {
          break;
        }

        --v4;
      }

      *v5 = 0;
      return i;
    }
  }

  v6 = i;
  do
  {
    v7 = v6;
    if (v6 <= a1)
    {
      break;
    }

    --v6;
  }

  *v7 = 0;
  return ++i;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true>::parse(pugi::impl::_anonymous_namespace_::utf8_writer *this)
{
  v1 = this;
  __src = 0;
  v13 = 0;
LABEL_2:
  for (i = this; ; ++i)
  {
    do
    {
      v3 = *i;
      {
        goto LABEL_8;
      }

      v4 = i + 1;
      v3 = i[1];
      {
        break;
      }

      v4 = i + 2;
      v3 = i[2];
      {
        break;
      }

      v4 = i + 3;
      v3 = i[3];
      i += 4;
    }

    i = v4;
LABEL_8:
    if (v3 == 38)
    {
      goto LABEL_2;
    }

    if (!v3)
    {
      break;
    }

    if (v3 == 60)
    {
      v8 = i;
      if (__src)
      {
        v9 = v13;
        memmove(__src - v13, __src, i - __src);
        v8 = &i[-v9];
      }

      do
      {
        v10 = v8;
        if (v8 <= v1)
        {
          break;
        }

        --v8;
      }

      *v10 = 0;
      return ++i;
    }
  }

  v5 = i;
  if (__src)
  {
    v6 = v13;
    memmove(__src - v13, __src, i - __src);
    v5 = &i[-v6];
  }

  do
  {
    v7 = v5;
    if (v5 <= v1)
    {
      break;
    }

    --v5;
  }

  *v7 = 0;
  return i;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  for (i = a1; ; i = v6 + 1)
  {
    while (1)
    {
      v5 = *i;
      {
        v6 = i;
      }

      else
      {
        v6 = i + 2;
        while (1)
        {
          v5 = *(v6 - 1);
          {
            --v6;
            goto LABEL_11;
          }

          v5 = *v6;
          {
            goto LABEL_11;
          }

          v5 = v6[1];
          {
            break;
          }

          v5 = v6[2];
          v6 += 4;
          {
            v6 -= 2;
            goto LABEL_11;
          }
        }

        ++v6;
      }

LABEL_11:
      if (v5 != 13)
      {
        break;
      }

      i = v6 + 1;
      v7 = v6[1];
      *v6 = 10;
      if (v7 == 10)
      {
        if (v2)
        {
          memmove(&v2[-v3], v2, i - v2);
        }

        i = v6 + 2;
        ++v3;
        v2 = (v6 + 2);
      }
    }

    if (!v5)
    {
      break;
    }

    if (v5 == 60)
    {
      v8 = v6;
      if (v2)
      {
        memmove(&v2[-v3], v2, v6 - v2);
        v8 = &v6[-v3];
      }

      do
      {
        v9 = v8;
        if (v8 <= a1)
        {
          break;
        }

        --v8;
      }

      *v9 = 0;
      return ++v6;
    }
  }

  v10 = v6;
  if (v2)
  {
    memmove(&v2[-v3], v2, v6 - v2);
    v10 = &v6[-v3];
  }

  do
  {
    v11 = v10;
    if (v10 <= a1)
    {
      break;
    }

    --v10;
  }

  *v11 = 0;
  return v6;
}

char *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true>::parse(char *a1)
{
  v1 = a1;
  __src = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      v2 = *a1;
      {
        v3 = a1;
      }

      else
      {
        v3 = a1 + 2;
        while (1)
        {
          v2 = *(v3 - 1);
          {
            --v3;
            goto LABEL_11;
          }

          v2 = *v3;
          {
            goto LABEL_11;
          }

          v2 = v3[1];
          {
            break;
          }

          v2 = v3[2];
          v3 += 4;
          {
            v3 -= 2;
            goto LABEL_11;
          }
        }

        ++v3;
      }

LABEL_11:
      if (v2 > 37)
      {
        break;
      }

      if (v2 == 13)
      {
        a1 = v3 + 1;
        v4 = v3[1];
        *v3 = 10;
        if (v4 == 10)
        {
          v5 = v14;
          if (__src)
          {
            memmove(__src - v14, __src, a1 - __src);
          }

          a1 = v3 + 2;
          __src = v3 + 2;
          v14 = v5 + 1;
        }
      }

      else
      {
        if (!v2)
        {
          v6 = v3;
          if (__src)
          {
            v7 = v14;
            memmove(__src - v14, __src, v3 - __src);
            v6 = &v3[-v7];
          }

          do
          {
            v8 = v6;
            if (v6 <= v1)
            {
              break;
            }

            --v6;
          }

          *v8 = 0;
          return v3;
        }

LABEL_22:
        a1 = v3 + 1;
      }
    }

    if (v2 != 38)
    {
      break;
    }
  }

  if (v2 != 60)
  {
    goto LABEL_22;
  }

  v9 = v3;
  if (__src)
  {
    v10 = v14;
    memmove(__src - v14, __src, v3 - __src);
    v9 = &v3[-v10];
  }

  do
  {
    v11 = v9;
    if (v9 <= v1)
    {
      break;
    }

    --v9;
  }

  *v11 = 0;
  return ++v3;
}

char *pugi::impl::anonymous namespace::strconv_cdata(pugi::impl::_anonymous_namespace_ *this, char *a2)
{
  v2 = a2;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v5 = *this;
      {
        v6 = this;
      }

      else
      {
        v6 = (this + 2);
        while (1)
        {
          v5 = *(v6 - 1);
          {
            v6 = (v6 - 1);
            goto LABEL_11;
          }

          v5 = *v6;
          {
            goto LABEL_11;
          }

          v5 = *(v6 + 1);
          {
            break;
          }

          v5 = *(v6 + 2);
          v6 = (v6 + 4);
          {
            v6 = (v6 - 2);
            goto LABEL_11;
          }
        }

        v6 = (v6 + 1);
      }

LABEL_11:
      if (v5 != 13)
      {
        break;
      }

      this = (v6 + 1);
      v10 = *(v6 + 1);
      *v6 = 10;
      if (v10 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, this - v3);
        }

        this = (v6 + 2);
        ++v4;
        v3 = v6 + 2;
      }
    }

    if (v5 == 93)
    {
      break;
    }

    if (!v5)
    {
      return 0;
    }

LABEL_24:
    this = (v6 + 1);
  }

  if (*(v6 + 1) != 93)
  {
    goto LABEL_24;
  }

  v7 = *(v6 + 2);
  v8 = v2 == 62 && v7 == 0;
  v9 = v8;
  if (v7 != 62 && !v9)
  {
    goto LABEL_24;
  }

  v11 = v6 + 1;
  if (v3)
  {
    memmove(&v3[-v4], v3, v6 - v3);
    v6 = (v6 - v4);
  }

  *v6 = 0;
  return v11;
}

pugi::impl::_anonymous_namespace_::xml_buffered_writer *pugi::impl::anonymous namespace::node_output_simple(pugi::impl::_anonymous_namespace_::xml_buffered_writer *this, uint64_t a2, char a3)
{
  v5 = this;
  v6 = *a2 & 0xF;
  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        v42 = *(this + 1281);
        if (v42 >= 0x7FF)
        {
          v42 = 0;
        }

        *(v5 + v42) = 16188;
        v5[1281] = v42 + 2;
        if (*(a2 + 8))
        {
          v43 = *(a2 + 8);
        }

        else
        {
          v43 = ":anonymous";
        }

        v23 = v5[1281];
        goto LABEL_97;
      }

      if (v6 != 8)
      {
        return this;
      }

      v15 = *(this + 1281);
      if (v15 >= 0x7FC)
      {
        v15 = 0;
      }

      v16 = v5 + v15;
      *v16 = 1329865020;
      v16[4] = 67;
      v17 = v15 + 5;
      v5[1281] = v15 + 5;
      if (v15 >= 0x7F8)
      {
        v17 = 0;
      }

      *(v5 + v17) = 1162893652;
      v18 = v17 + 4;
      v5[1281] = v17 + 4;
      if (*(a2 + 16))
      {
        if (v17 >= 0x7FC)
        {
          v18 = 0;
        }

        *(v5 + v18) = 32;
        v5[1281] = v18 + 1;
        v18 = v5[1281];
      }

      if (v18 >= 0x800)
      {
        v18 = 0;
      }

      *(v5 + v18) = 62;
      v19 = v18 + 1;
LABEL_104:
      v5[1281] = v19;
      return this;
    }

    v21 = *(this + 1281);
    if (v21 >= 0x7FF)
    {
      v21 = 0;
    }

    *(v5 + v21) = 16188;
    v5[1281] = v21 + 2;
    if (*(a2 + 8))
    {
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = ":anonymous";
    }

    v23 = v5[1281];
    if (!*(a2 + 16))
    {
      goto LABEL_97;
    }

    if (v23 >= 0x800)
    {
      v23 = 0;
    }

    *(v5 + v23++) = 32;
    v5[1281] = v23;
    v24 = *(a2 + 16);
    v25 = *v24;
    if (!*v24)
    {
      goto LABEL_97;
    }

LABEL_55:
    for (i = 0; ; ++i)
    {
      if (v25 == 63)
      {
        v25 = v24[i + 1];
        if (v25 == 62)
        {
LABEL_61:
          v27 = v23 + i;
          if (v23 + i > 0x800)
          {
            v27 = v5[1281];
          }

          else
          {
            this = memcpy(v5 + v23, v24, i);
            v5[1281] = v27;
          }

          if (!v24[i])
          {
            v23 = v27;
            goto LABEL_97;
          }

          if (v27 >= 0x7FE)
          {
            v27 = 0;
          }

          v28 = v5 + v27;
          *v28 = 8255;
          v28[2] = 62;
          v23 = v27 + 3;
          v5[1281] = v27 + 3;
          v29 = &v24[i];
          v30 = *(v29 + 2);
          v24 = v29 + 2;
          v25 = v30;
          if (!v30)
          {
LABEL_97:
            if (v23 >= 0x7FF)
            {
              v23 = 0;
            }

            *(v5 + v23) = 15935;
            v19 = v23 + 2;
            goto LABEL_104;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_61;
        }

        v25 = v24[i + 1];
      }
    }
  }

  if (v6 != 3)
  {
    if (v6 != 4)
    {
      if (v6 != 5)
      {
        return this;
      }

      if (*(a2 + 16))
      {
        v7 = *(a2 + 16);
      }

      else
      {
        v7 = &str_16;
      }

      v8 = *(this + 1281);
      if (v8 >= 0x7FD)
      {
        v8 = 0;
      }

      *(v5 + v8) = 757932348;
      v9 = v8 + 4;
      v5[1281] = v9;
      v10 = *v7;
      if (!*v7)
      {
        goto LABEL_101;
      }

LABEL_11:
      for (j = 0; ; ++j)
      {
        if (v10 == 45)
        {
          v10 = v7[j + 1];
          if (!v7[j + 1] || v10 == 45)
          {
LABEL_18:
            v12 = v9 + j;
            if (v9 + j > 0x800)
            {
              v12 = v5[1281];
            }

            else
            {
              this = memcpy(v5 + v9, v7, j);
              v5[1281] = v12;
            }

            if (!v7[j])
            {
              v9 = v12;
              goto LABEL_101;
            }

            if (v12 >= 0x7FF)
            {
              v12 = 0;
            }

            *(v5 + v12) = 8237;
            v9 = v12 + 2;
            v5[1281] = v12 + 2;
            v13 = &v7[j];
            v14 = *(v13 + 1);
            v7 = v13 + 1;
            v10 = v14;
            if (!v14)
            {
LABEL_101:
              if (v9 >= 0x7FE)
              {
                v9 = 0;
              }

              v44 = v5 + v9;
              *v44 = 11565;
              v44[2] = 62;
              v19 = v9 + 3;
              goto LABEL_104;
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_18;
          }

          v10 = v7[j + 1];
        }
      }
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &str_16;
    }

    v32 = *(this + 1281);
    while (1)
    {
      if (v32 >= 0x7FC)
      {
        v32 = 0;
      }

      v33 = v5 + v32;
      *v33 = 1130045756;
      v33[4] = 68;
      v34 = v32 + 5;
      v5[1281] = v32 + 5;
      if (v32 >= 0x7F8)
      {
        v34 = 0;
      }

      v35 = 0;
      *(v5 + v34) = 1531008065;
      v36 = v34 + 4;
      v5[1281] = v36;
      while (1)
      {
        v37 = v31[v35];
        if (v37 == 93)
        {
          break;
        }

        if (!v31[v35])
        {
          goto LABEL_84;
        }

LABEL_83:
        ++v35;
      }

      if (v31[v35 + 1] != 93 || v31[v35 + 2] != 62)
      {
        goto LABEL_83;
      }

LABEL_84:
      v38 = v37 != 0;
      v39 = v35 + 2 * v38;
      v40 = v39 + v36;
      if (v39 + v36 > 0x800)
      {
        v40 = v5[1281];
      }

      else
      {
        this = memcpy(v5 + v36, v31, v35 + 2 * v38);
        v5[1281] = v40;
      }

      if (v40 >= 0x7FE)
      {
        v40 = 0;
      }

      v31 += v39;
      v41 = v5 + v40;
      *v41 = 23901;
      v41[2] = 62;
      v32 = v40 + 3;
      v5[1281] = v40 + 3;
      if (!*v31)
      {
        return this;
      }
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 16);
  }

  else
  {
    v20 = &str_16;
  }
}