void sub_1B2B6A4DC(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    (*(*STACK[0x2A8] + 56))();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  if (STACK[0x2B0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2B0]);
  }

  if (LOBYTE(STACK[0x2F0]) == 1)
  {
    (*(*STACK[0x2D0] + 56))();
  }

  if (STACK[0x2E8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2E8]);
  }

  if (STACK[0x2D8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2D8]);
  }

  _Unwind_Resume(a1);
}

BOOL md::setupSharedStylingParameters(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v11 = *(a1 + 14);
  v12 = *(a1 + 15);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v492, v11, v12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v495 != 1)
  {
    md::defaultStandardFillColor(&v491, v8);
    *(a2 + 20) = v491;
    __asm { FMOV            V0.4S, #1.0 }

    *(a2 + 36) = _Q0;
    v16 = 0.375;
    v4 = 4.0;
    v6 = 1.0;
    v18 = 0.1;
    v5 = 3.4028e38;
    v7 = 3.4028e38;
    goto LABEL_708;
  }

  v486 = *(a1 + 12);
  v13 = v486;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_52;
      }

      v14 = fminf(fmaxf(v13, 0.0), 23.0);
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 76, 2u, v14);
      v482 = vdupq_n_s32(0x37800080u);
      *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v482);
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 77, 2u, v14);
      *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v482);
      v479 = (a2 + 20);
      v481 = (a2 + 36);
      md::trafficWidthForSpeedAtZ(&v492, 3, v13);
      v16 = v37;
      v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 3, v13, v38);
      v19 = v492[3];
      if (v486 >= 0x17)
      {
        v39 = 23;
      }

      else
      {
        v39 = v486;
      }

      v21 = *v19;
      if (*v19)
      {
        v40 = *v21;
        v41 = *v21 == 1.0;
        if (*(v19 + 10) == 1 && v40 != 0.0 && v40 != 1.0)
        {
LABEL_43:
          v44 = *(v19 + 16);
          if (v44)
          {
            v45 = *(v44 + 72);
            if (v45)
            {
              v46 = *v45 + 120 * *(v45 + v39 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x52u) != *(v46 + 12))
              {
                goto LABEL_116;
              }
            }

            if (*(v19 + 56))
            {
              v47 = *(v19 + 48);
              v48 = 8 * *(v19 + 56);
              while (1)
              {
                v49 = *(*v47 + 72);
                if (v49)
                {
                  v50 = *v49 + 120 * *(v49 + v39 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v50, 0x52u) != *(v50 + 12))
                  {
                    goto LABEL_116;
                  }
                }

                v47 += 8;
                v43 = 1;
                v48 -= 8;
                if (!v48)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          v43 = 1;
LABEL_113:
          v94 = *(v19 + 16 * v43 + 16);
          if (!v94)
          {
            goto LABEL_168;
          }

          v95 = *(v94 + 72);
          if (!v95 || (v96 = *v95 + 120 * *(v95 + v39 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v96, 0x52u) == *(v96 + 12)))
          {
            v99 = v19 + 16 * v43;
            if (!*(v99 + 56))
            {
              goto LABEL_168;
            }

            v100 = *(v99 + 48);
            v101 = 8 * *(v99 + 56);
            while (1)
            {
              v102 = *(*v100 + 72);
              if (v102)
              {
                v103 = *v102 + 120 * *(v102 + v39 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v103, 0x52u) != *(v103 + 12))
                {
                  break;
                }
              }

              v100 += 8;
              v101 -= 8;
              if (!v101)
              {
                goto LABEL_168;
              }
            }
          }

LABEL_116:
          if (v21)
          {
            v6 = *v21;
            v97 = *v21 == 1.0;
            if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
            {
              goto LABEL_785;
            }
          }

          else
          {
            v97 = 0;
          }

          v86 = *(v19 + v97 + 11);
          if (v86 != 2)
          {
            v87 = v19;
            v88 = 82;
            goto LABEL_177;
          }

          v6 = 0.0;
LABEL_785:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 82, 0, &v491, v14);
          v5 = v475;
          v472 = v19;
          v473 = 82;
          goto LABEL_790;
        }
      }

      else
      {
        v41 = 0;
      }

      v43 = *(v19 + v41 + 11);
      if (v43 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_43;
    }

    v14 = fminf(fmaxf(v13, 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 65, 2u, v14);
    v484 = vdupq_n_s32(0x37800080u);
    *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v484);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 66, 2u, v14);
    *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v484);
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, 2, v13);
    v16 = v67;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 2, v13, v68);
    v19 = v492[3];
    if (v486 >= 0x17)
    {
      v69 = 23;
    }

    else
    {
      v69 = v486;
    }

    v21 = *v19;
    if (*v19)
    {
      v70 = *v21;
      v71 = *v21 == 1.0;
      if (*(v19 + 10) == 1 && v70 != 0.0 && v70 != 1.0)
      {
LABEL_84:
        v74 = *(v19 + 16);
        if (v74)
        {
          v75 = *(v74 + 72);
          if (v75)
          {
            v76 = *v75 + 120 * *(v75 + v69 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x47u) != *(v76 + 12))
            {
              goto LABEL_154;
            }
          }

          if (*(v19 + 56))
          {
            v77 = *(v19 + 48);
            v78 = 8 * *(v19 + 56);
            while (1)
            {
              v79 = *(*v77 + 72);
              if (v79)
              {
                v80 = *v79 + 120 * *(v79 + v69 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x47u) != *(v80 + 12))
                {
                  goto LABEL_154;
                }
              }

              v77 += 8;
              v73 = 1;
              v78 -= 8;
              if (!v78)
              {
                goto LABEL_151;
              }
            }
          }
        }

        v73 = 1;
LABEL_151:
        v114 = *(v19 + 16 * v73 + 16);
        if (!v114)
        {
          goto LABEL_168;
        }

        v115 = *(v114 + 72);
        if (!v115 || (v116 = *v115 + 120 * *(v115 + v69 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v116, 0x47u) == *(v116 + 12)))
        {
          v119 = v19 + 16 * v73;
          if (!*(v119 + 56))
          {
            goto LABEL_168;
          }

          v120 = *(v119 + 48);
          v121 = 8 * *(v119 + 56);
          while (1)
          {
            v122 = *(*v120 + 72);
            if (v122)
            {
              v123 = *v122 + 120 * *(v122 + v69 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0x47u) != *(v123 + 12))
              {
                break;
              }
            }

            v120 += 8;
            v121 -= 8;
            if (!v121)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_154:
        if (v21)
        {
          v6 = *v21;
          v117 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_789;
          }
        }

        else
        {
          v117 = 0;
        }

        v86 = *(v19 + v117 + 11);
        if (v86 != 2)
        {
          v87 = v19;
          v88 = 71;
          goto LABEL_177;
        }

        v6 = 0.0;
LABEL_789:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 71, 0, &v491, v14);
        v5 = v477;
        v472 = v19;
        v473 = 71;
        goto LABEL_790;
      }
    }

    else
    {
      v71 = 0;
    }

    v73 = *(v19 + v71 + 11);
    if (v73 != 2)
    {
      goto LABEL_151;
    }

    goto LABEL_84;
  }

  if (!v8)
  {
    v14 = fminf(fmaxf(v13, 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 43, 2u, v14);
    v483 = vdupq_n_s32(0x37800080u);
    *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v483);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 44, 2u, v14);
    *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v483);
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, 0, v13);
    v16 = v53;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 0, v13, v54);
    v19 = v492[3];
    if (v486 >= 0x17)
    {
      v55 = 23;
    }

    else
    {
      v55 = v486;
    }

    v21 = *v19;
    if (*v19)
    {
      v56 = *v21;
      v57 = *v21 == 1.0;
      if (*(v19 + 10) == 1 && v56 != 0.0 && v56 != 1.0)
      {
LABEL_64:
        v60 = *(v19 + 16);
        if (v60)
        {
          v61 = *(v60 + 72);
          if (v61)
          {
            v62 = *v61 + 120 * *(v61 + v55 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v62, 0x31u) != *(v62 + 12))
            {
              goto LABEL_135;
            }
          }

          if (*(v19 + 56))
          {
            v63 = *(v19 + 48);
            v64 = 8 * *(v19 + 56);
            while (1)
            {
              v65 = *(*v63 + 72);
              if (v65)
              {
                v66 = *v65 + 120 * *(v65 + v55 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v66, 0x31u) != *(v66 + 12))
                {
                  goto LABEL_135;
                }
              }

              v63 += 8;
              v59 = 1;
              v64 -= 8;
              if (!v64)
              {
                goto LABEL_132;
              }
            }
          }
        }

        v59 = 1;
LABEL_132:
        v104 = *(v19 + 16 * v59 + 16);
        if (!v104)
        {
          goto LABEL_168;
        }

        v105 = *(v104 + 72);
        if (!v105 || (v106 = *v105 + 120 * *(v105 + v55 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v106, 0x31u) == *(v106 + 12)))
        {
          v109 = v19 + 16 * v59;
          if (!*(v109 + 56))
          {
            goto LABEL_168;
          }

          v110 = *(v109 + 48);
          v111 = 8 * *(v109 + 56);
          while (1)
          {
            v112 = *(*v110 + 72);
            if (v112)
            {
              v113 = *v112 + 120 * *(v112 + v55 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v113, 0x31u) != *(v113 + 12))
              {
                break;
              }
            }

            v110 += 8;
            v111 -= 8;
            if (!v111)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_135:
        if (v21)
        {
          v6 = *v21;
          v107 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_787;
          }
        }

        else
        {
          v107 = 0;
        }

        v86 = *(v19 + v107 + 11);
        if (v86 != 2)
        {
          v87 = v19;
          v88 = 49;
          goto LABEL_177;
        }

        v6 = 0.0;
LABEL_787:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 49, 0, &v491, v14);
        v5 = v476;
        v472 = v19;
        v473 = 49;
        goto LABEL_790;
      }
    }

    else
    {
      v57 = 0;
    }

    v59 = *(v19 + v57 + 11);
    if (v59 != 2)
    {
      goto LABEL_132;
    }

    goto LABEL_64;
  }

  if (v8 != 1)
  {
LABEL_52:
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, v8, v486);
    v16 = v51;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, v8, v13, v52);
    goto LABEL_178;
  }

  v14 = fminf(fmaxf(v13, 0.0), 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 54, 2u, v14);
  v480 = vdupq_n_s32(0x37800080u);
  *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v480);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 55, 2u, v14);
  *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v480);
  v479 = (a2 + 20);
  v481 = (a2 + 36);
  md::trafficWidthForSpeedAtZ(&v492, 1, v13);
  v16 = v15;
  v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 1, v13, v17);
  v19 = v492[3];
  if (v486 >= 0x17)
  {
    v20 = 23;
  }

  else
  {
    v20 = v486;
  }

  v21 = *v19;
  if (*v19)
  {
    v22 = *v21;
    v23 = *v21 == 1.0;
    if (*(v19 + 10) == 1 && v22 != 0.0 && v22 != 1.0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(v19 + v23 + 11);
  if (v25 == 2)
  {
LABEL_20:
    v26 = *(v19 + 16);
    if (v26)
    {
      v27 = *(v26 + 72);
      if (v27)
      {
        v28 = *v27 + 120 * *(v27 + v20 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v28, 0x3Cu) != *(v28 + 12))
        {
          goto LABEL_97;
        }
      }

      if (*(v19 + 56))
      {
        v29 = *(v19 + 48);
        v30 = 8 * *(v19 + 56);
        while (1)
        {
          v31 = *(*v29 + 72);
          if (v31)
          {
            v32 = *v31 + 120 * *(v31 + v20 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, 0x3Cu) != *(v32 + 12))
            {
              goto LABEL_97;
            }
          }

          v29 += 8;
          v25 = 1;
          v30 -= 8;
          if (!v30)
          {
            goto LABEL_94;
          }
        }
      }
    }

    v25 = 1;
  }

LABEL_94:
  v81 = *(v19 + 16 * v25 + 16);
  if (v81)
  {
    v82 = *(v81 + 72);
    if (v82)
    {
      v83 = *v82 + 120 * *(v82 + v20 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v83, 0x3Cu) != *(v83 + 12))
      {
LABEL_97:
        if (v21)
        {
          v6 = *v21;
          v84 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_783;
          }
        }

        else
        {
          v84 = 0;
        }

        v86 = *(v19 + v84 + 11);
        if (v86 == 2)
        {
          v6 = 0.0;
LABEL_783:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 60, 0, &v491, v14);
          v5 = v474;
          v472 = v19;
          v473 = 60;
          goto LABEL_790;
        }

        v87 = v19;
        v88 = 60;
LABEL_177:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v87, v88, v86, 0, v14);
        v4 = v126;
        goto LABEL_178;
      }
    }

    v89 = v19 + 16 * v25;
    if (*(v89 + 56))
    {
      v90 = *(v89 + 48);
      v91 = 8 * *(v89 + 56);
      do
      {
        v92 = *(*v90 + 72);
        if (v92)
        {
          v93 = *v92 + 120 * *(v92 + v20 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v93, 0x3Cu) != *(v93 + 12))
          {
            goto LABEL_97;
          }
        }

        v90 += 8;
        v91 -= 8;
      }

      while (v91);
    }
  }

LABEL_168:
  if (v21)
  {
    v6 = *v21;
    v124 = *v21 == 1.0;
    if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
    {
      goto LABEL_781;
    }
  }

  else
  {
    v124 = 0;
  }

  v86 = *(v19 + v124 + 11);
  if (v86 != 2)
  {
    v87 = v19;
    v88 = 270;
    goto LABEL_177;
  }

  v6 = 0.0;
LABEL_781:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 270, 0, &v491, v14);
  v5 = v471;
  v472 = v19;
  v473 = 270;
LABEL_790:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v472, v473, 1, &v490, v14);
  v4 = v5 + ((v478 - v5) * v6);
LABEL_178:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_348;
      }

      v127 = v492[3];
      if (v486 >= 0x17)
      {
        v141 = 23;
      }

      else
      {
        v141 = v486;
      }

      v129 = *v127;
      if (*v127)
      {
        v142 = *v129;
        v143 = *v129 == 1.0;
        if (*(v127 + 10) == 1 && v142 != 0.0 && v142 != 1.0)
        {
LABEL_214:
          v146 = *(v127 + 16);
          if (v146)
          {
            v147 = *(v146 + 72);
            if (v147)
            {
              v148 = *v147 + 120 * *(v147 + v141 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v148, 0x54u) != *(v148 + 12))
              {
                goto LABEL_286;
              }
            }

            if (*(v127 + 56))
            {
              v149 = *(v127 + 48);
              v150 = 8 * *(v127 + 56);
              while (1)
              {
                v151 = *(*v149 + 72);
                if (v151)
                {
                  v152 = *v151 + 120 * *(v151 + v141 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v152, 0x54u) != *(v152 + 12))
                  {
                    goto LABEL_286;
                  }
                }

                v149 += 8;
                v145 = 1;
                v150 -= 8;
                if (!v150)
                {
                  goto LABEL_283;
                }
              }
            }
          }

          v145 = 1;
LABEL_283:
          v191 = *(v127 + 16 * v145 + 16);
          if (!v191)
          {
            goto LABEL_338;
          }

          v192 = *(v191 + 72);
          if (!v192 || (v193 = *v192 + 120 * *(v192 + v141 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v193, 0x54u) == *(v193 + 12)))
          {
            v196 = v127 + 16 * v145;
            if (!*(v196 + 56))
            {
              goto LABEL_338;
            }

            v197 = *(v196 + 48);
            v198 = 8 * *(v196 + 56);
            while (1)
            {
              v199 = *(*v197 + 72);
              if (v199)
              {
                v200 = *v199 + 120 * *(v199 + v141 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v200, 0x54u) != *(v200 + 12))
                {
                  break;
                }
              }

              v197 += 8;
              v198 -= 8;
              if (!v198)
              {
                goto LABEL_338;
              }
            }
          }

LABEL_286:
          v180 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v129)
          {
            v7 = *v129;
            v194 = *v129 == 1.0;
            if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
            {
              goto LABEL_732;
            }
          }

          else
          {
            v194 = 0;
          }

          v183 = *(v127 + v194 + 11);
          v7 = 0.0;
          if (v183 != 2)
          {
            v184 = v127;
            v185 = 84;
            goto LABEL_347;
          }

LABEL_732:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 84, 0, &v491, v180);
          v6 = v455;
          v446 = v127;
          v447 = 84;
          goto LABEL_739;
        }
      }

      else
      {
        v143 = 0;
      }

      v145 = *(v127 + v143 + 11);
      if (v145 != 2)
      {
        goto LABEL_283;
      }

      goto LABEL_214;
    }

    v127 = v492[3];
    if (v486 >= 0x17)
    {
      v165 = 23;
    }

    else
    {
      v165 = v486;
    }

    v129 = *v127;
    if (*v127)
    {
      v166 = *v129;
      v167 = *v129 == 1.0;
      if (*(v127 + 10) == 1 && v166 != 0.0 && v166 != 1.0)
      {
LABEL_254:
        v170 = *(v127 + 16);
        if (v170)
        {
          v171 = *(v170 + 72);
          if (v171)
          {
            v172 = *v171 + 120 * *(v171 + v165 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v172, 0x49u) != *(v172 + 12))
            {
              goto LABEL_324;
            }
          }

          if (*(v127 + 56))
          {
            v173 = *(v127 + 48);
            v174 = 8 * *(v127 + 56);
            while (1)
            {
              v175 = *(*v173 + 72);
              if (v175)
              {
                v176 = *v175 + 120 * *(v175 + v165 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v176, 0x49u) != *(v176 + 12))
                {
                  goto LABEL_324;
                }
              }

              v173 += 8;
              v169 = 1;
              v174 -= 8;
              if (!v174)
              {
                goto LABEL_321;
              }
            }
          }
        }

        v169 = 1;
LABEL_321:
        v211 = *(v127 + 16 * v169 + 16);
        if (!v211)
        {
          goto LABEL_338;
        }

        v212 = *(v211 + 72);
        if (!v212 || (v213 = *v212 + 120 * *(v212 + v165 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v213, 0x49u) == *(v213 + 12)))
        {
          v216 = v127 + 16 * v169;
          if (!*(v216 + 56))
          {
            goto LABEL_338;
          }

          v217 = *(v216 + 48);
          v218 = 8 * *(v216 + 56);
          while (1)
          {
            v219 = *(*v217 + 72);
            if (v219)
            {
              v220 = *v219 + 120 * *(v219 + v165 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v220, 0x49u) != *(v220 + 12))
              {
                break;
              }
            }

            v217 += 8;
            v218 -= 8;
            if (!v218)
            {
              goto LABEL_338;
            }
          }
        }

LABEL_324:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v214 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_738;
          }
        }

        else
        {
          v214 = 0;
        }

        v183 = *(v127 + v214 + 11);
        v7 = 0.0;
        if (v183 != 2)
        {
          v184 = v127;
          v185 = 73;
          goto LABEL_347;
        }

LABEL_738:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 73, 0, &v491, v180);
        v6 = v461;
        v446 = v127;
        v447 = 73;
        goto LABEL_739;
      }
    }

    else
    {
      v167 = 0;
    }

    v169 = *(v127 + v167 + 11);
    if (v169 != 2)
    {
      goto LABEL_321;
    }

    goto LABEL_254;
  }

  if (!v8)
  {
    v127 = v492[3];
    if (v486 >= 0x17)
    {
      v153 = 23;
    }

    else
    {
      v153 = v486;
    }

    v129 = *v127;
    if (*v127)
    {
      v154 = *v129;
      v155 = *v129 == 1.0;
      if (*(v127 + 10) == 1 && v154 != 0.0 && v154 != 1.0)
      {
LABEL_234:
        v158 = *(v127 + 16);
        if (v158)
        {
          v159 = *(v158 + 72);
          if (v159)
          {
            v160 = *v159 + 120 * *(v159 + v153 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v160, 0x33u) != *(v160 + 12))
            {
              goto LABEL_305;
            }
          }

          if (*(v127 + 56))
          {
            v161 = *(v127 + 48);
            v162 = 8 * *(v127 + 56);
            while (1)
            {
              v163 = *(*v161 + 72);
              if (v163)
              {
                v164 = *v163 + 120 * *(v163 + v153 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v164, 0x33u) != *(v164 + 12))
                {
                  goto LABEL_305;
                }
              }

              v161 += 8;
              v157 = 1;
              v162 -= 8;
              if (!v162)
              {
                goto LABEL_302;
              }
            }
          }
        }

        v157 = 1;
LABEL_302:
        v201 = *(v127 + 16 * v157 + 16);
        if (!v201)
        {
          goto LABEL_338;
        }

        v202 = *(v201 + 72);
        if (!v202 || (v203 = *v202 + 120 * *(v202 + v153 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v203, 0x33u) == *(v203 + 12)))
        {
          v206 = v127 + 16 * v157;
          if (!*(v206 + 56))
          {
            goto LABEL_338;
          }

          v207 = *(v206 + 48);
          v208 = 8 * *(v206 + 56);
          while (1)
          {
            v209 = *(*v207 + 72);
            if (v209)
            {
              v210 = *v209 + 120 * *(v209 + v153 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v210, 0x33u) != *(v210 + 12))
              {
                break;
              }
            }

            v207 += 8;
            v208 -= 8;
            if (!v208)
            {
              goto LABEL_338;
            }
          }
        }

LABEL_305:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v204 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_737;
          }
        }

        else
        {
          v204 = 0;
        }

        v183 = *(v127 + v204 + 11);
        v7 = 0.0;
        if (v183 != 2)
        {
          v184 = v127;
          v185 = 51;
          goto LABEL_347;
        }

LABEL_737:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 51, 0, &v491, v180);
        v6 = v460;
        v446 = v127;
        v447 = 51;
        goto LABEL_739;
      }
    }

    else
    {
      v155 = 0;
    }

    v157 = *(v127 + v155 + 11);
    if (v157 != 2)
    {
      goto LABEL_302;
    }

    goto LABEL_234;
  }

  if (v8 != 1)
  {
    goto LABEL_348;
  }

  v127 = v492[3];
  if (v486 >= 0x17)
  {
    v128 = 23;
  }

  else
  {
    v128 = v486;
  }

  v129 = *v127;
  if (*v127)
  {
    v130 = *v129;
    v131 = *v129 == 1.0;
    if (*(v127 + 10) == 1 && v130 != 0.0 && v130 != 1.0)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v131 = 0;
  }

  v133 = *(v127 + v131 + 11);
  if (v133 == 2)
  {
LABEL_192:
    v134 = *(v127 + 16);
    if (v134)
    {
      v135 = *(v134 + 72);
      if (v135)
      {
        v136 = *v135 + 120 * *(v135 + v128 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v136, 0x3Eu) != *(v136 + 12))
        {
          goto LABEL_267;
        }
      }

      if (*(v127 + 56))
      {
        v137 = *(v127 + 48);
        v138 = 8 * *(v127 + 56);
        while (1)
        {
          v139 = *(*v137 + 72);
          if (v139)
          {
            v140 = *v139 + 120 * *(v139 + v128 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v140, 0x3Eu) != *(v140 + 12))
            {
              goto LABEL_267;
            }
          }

          v137 += 8;
          v133 = 1;
          v138 -= 8;
          if (!v138)
          {
            goto LABEL_264;
          }
        }
      }
    }

    v133 = 1;
  }

LABEL_264:
  v177 = *(v127 + 16 * v133 + 16);
  if (v177)
  {
    v178 = *(v177 + 72);
    if (v178)
    {
      v179 = *v178 + 120 * *(v178 + v128 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v179, 0x3Eu) != *(v179 + 12))
      {
LABEL_267:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v181 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_731;
          }
        }

        else
        {
          v181 = 0;
        }

        v183 = *(v127 + v181 + 11);
        v7 = 0.0;
        if (v183 == 2)
        {
LABEL_731:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 62, 0, &v491, v180);
          v6 = v454;
          v446 = v127;
          v447 = 62;
          goto LABEL_739;
        }

        v184 = v127;
        v185 = 62;
LABEL_347:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v184, v185, v183, 0, v180);
        v5 = v223;
        goto LABEL_348;
      }
    }

    v186 = v127 + 16 * v133;
    if (*(v186 + 56))
    {
      v187 = *(v186 + 48);
      v188 = 8 * *(v186 + 56);
      do
      {
        v189 = *(*v187 + 72);
        if (v189)
        {
          v190 = *v189 + 120 * *(v189 + v128 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v190, 0x3Eu) != *(v190 + 12))
          {
            goto LABEL_267;
          }
        }

        v187 += 8;
        v188 -= 8;
      }

      while (v188);
    }
  }

LABEL_338:
  v180 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v129)
  {
    v7 = *v129;
    v221 = *v129 == 1.0;
    if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
    {
      goto LABEL_724;
    }
  }

  else
  {
    v221 = 0;
  }

  v183 = *(v127 + v221 + 11);
  v7 = 0.0;
  if (v183 != 2)
  {
    v184 = v127;
    v185 = 278;
    goto LABEL_347;
  }

LABEL_724:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 278, 0, &v491, v180);
  v6 = v445;
  v446 = v127;
  v447 = 278;
LABEL_739:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v446, v447, 1, &v490, v180);
  v5 = v6 + ((v462 - v6) * v7);
LABEL_348:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_518;
      }

      v224 = v492[3];
      if (v486 >= 0x17)
      {
        v238 = 23;
      }

      else
      {
        v238 = v486;
      }

      v226 = *v224;
      if (*v224)
      {
        v239 = *v226;
        v240 = *v226 == 1.0;
        if (*(v224 + 10) == 1 && v239 != 0.0 && v239 != 1.0)
        {
LABEL_384:
          v243 = *(v224 + 16);
          if (v243)
          {
            v244 = *(v243 + 72);
            if (v244)
            {
              v245 = *v244 + 120 * *(v244 + v238 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v245, 0x53u) != *(v245 + 12))
              {
                goto LABEL_456;
              }
            }

            if (*(v224 + 56))
            {
              v246 = *(v224 + 48);
              v247 = 8 * *(v224 + 56);
              while (1)
              {
                v248 = *(*v246 + 72);
                if (v248)
                {
                  v249 = *v248 + 120 * *(v248 + v238 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v249, 0x53u) != *(v249 + 12))
                  {
                    goto LABEL_456;
                  }
                }

                v246 += 8;
                v242 = 1;
                v247 -= 8;
                if (!v247)
                {
                  goto LABEL_453;
                }
              }
            }
          }

          v242 = 1;
LABEL_453:
          v289 = *(v224 + 16 * v242 + 16);
          if (!v289)
          {
            goto LABEL_508;
          }

          v290 = *(v289 + 72);
          if (!v290 || (v291 = *v290 + 120 * *(v290 + v238 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v291, 0x53u) == *(v291 + 12)))
          {
            v294 = v224 + 16 * v242;
            if (!*(v294 + 56))
            {
              goto LABEL_508;
            }

            v295 = *(v294 + 48);
            v296 = 8 * *(v294 + 56);
            while (1)
            {
              v297 = *(*v295 + 72);
              if (v297)
              {
                v298 = *v297 + 120 * *(v297 + v238 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v298, 0x53u) != *(v298 + 12))
                {
                  break;
                }
              }

              v295 += 8;
              v296 -= 8;
              if (!v296)
              {
                goto LABEL_508;
              }
            }
          }

LABEL_456:
          v277 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v226)
          {
            v278 = *v226;
            v292 = *v226 == 1.0;
            if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
            {
              goto LABEL_734;
            }
          }

          else
          {
            v292 = 0;
          }

          v281 = *(v224 + v292 + 11);
          v278 = 0.0;
          if (v281 != 2)
          {
            v282 = v224;
            v283 = 83;
            goto LABEL_517;
          }

LABEL_734:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 83, 0, &v491, v277);
          v7 = v457;
          v449 = v224;
          v450 = 83;
          goto LABEL_742;
        }
      }

      else
      {
        v240 = 0;
      }

      v242 = *(v224 + v240 + 11);
      if (v242 != 2)
      {
        goto LABEL_453;
      }

      goto LABEL_384;
    }

    v224 = v492[3];
    if (v486 >= 0x17)
    {
      v262 = 23;
    }

    else
    {
      v262 = v486;
    }

    v226 = *v224;
    if (*v224)
    {
      v263 = *v226;
      v264 = *v226 == 1.0;
      if (*(v224 + 10) == 1 && v263 != 0.0 && v263 != 1.0)
      {
LABEL_424:
        v267 = *(v224 + 16);
        if (v267)
        {
          v268 = *(v267 + 72);
          if (v268)
          {
            v269 = *v268 + 120 * *(v268 + v262 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v269, 0x48u) != *(v269 + 12))
            {
              goto LABEL_494;
            }
          }

          if (*(v224 + 56))
          {
            v270 = *(v224 + 48);
            v271 = 8 * *(v224 + 56);
            while (1)
            {
              v272 = *(*v270 + 72);
              if (v272)
              {
                v273 = *v272 + 120 * *(v272 + v262 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v273, 0x48u) != *(v273 + 12))
                {
                  goto LABEL_494;
                }
              }

              v270 += 8;
              v266 = 1;
              v271 -= 8;
              if (!v271)
              {
                goto LABEL_491;
              }
            }
          }
        }

        v266 = 1;
LABEL_491:
        v309 = *(v224 + 16 * v266 + 16);
        if (!v309)
        {
          goto LABEL_508;
        }

        v310 = *(v309 + 72);
        if (!v310 || (v311 = *v310 + 120 * *(v310 + v262 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v311, 0x48u) == *(v311 + 12)))
        {
          v314 = v224 + 16 * v266;
          if (!*(v314 + 56))
          {
            goto LABEL_508;
          }

          v315 = *(v314 + 48);
          v316 = 8 * *(v314 + 56);
          while (1)
          {
            v317 = *(*v315 + 72);
            if (v317)
            {
              v318 = *v317 + 120 * *(v317 + v262 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v318, 0x48u) != *(v318 + 12))
              {
                break;
              }
            }

            v315 += 8;
            v316 -= 8;
            if (!v316)
            {
              goto LABEL_508;
            }
          }
        }

LABEL_494:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v312 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_741;
          }
        }

        else
        {
          v312 = 0;
        }

        v281 = *(v224 + v312 + 11);
        v278 = 0.0;
        if (v281 != 2)
        {
          v282 = v224;
          v283 = 72;
          goto LABEL_517;
        }

LABEL_741:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 72, 0, &v491, v277);
        v7 = v464;
        v449 = v224;
        v450 = 72;
        goto LABEL_742;
      }
    }

    else
    {
      v264 = 0;
    }

    v266 = *(v224 + v264 + 11);
    if (v266 != 2)
    {
      goto LABEL_491;
    }

    goto LABEL_424;
  }

  if (!v8)
  {
    v224 = v492[3];
    if (v486 >= 0x17)
    {
      v250 = 23;
    }

    else
    {
      v250 = v486;
    }

    v226 = *v224;
    if (*v224)
    {
      v251 = *v226;
      v252 = *v226 == 1.0;
      if (*(v224 + 10) == 1 && v251 != 0.0 && v251 != 1.0)
      {
LABEL_404:
        v255 = *(v224 + 16);
        if (v255)
        {
          v256 = *(v255 + 72);
          if (v256)
          {
            v257 = *v256 + 120 * *(v256 + v250 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v257, 0x32u) != *(v257 + 12))
            {
              goto LABEL_475;
            }
          }

          if (*(v224 + 56))
          {
            v258 = *(v224 + 48);
            v259 = 8 * *(v224 + 56);
            while (1)
            {
              v260 = *(*v258 + 72);
              if (v260)
              {
                v261 = *v260 + 120 * *(v260 + v250 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v261, 0x32u) != *(v261 + 12))
                {
                  goto LABEL_475;
                }
              }

              v258 += 8;
              v254 = 1;
              v259 -= 8;
              if (!v259)
              {
                goto LABEL_472;
              }
            }
          }
        }

        v254 = 1;
LABEL_472:
        v299 = *(v224 + 16 * v254 + 16);
        if (!v299)
        {
          goto LABEL_508;
        }

        v300 = *(v299 + 72);
        if (!v300 || (v301 = *v300 + 120 * *(v300 + v250 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v301, 0x32u) == *(v301 + 12)))
        {
          v304 = v224 + 16 * v254;
          if (!*(v304 + 56))
          {
            goto LABEL_508;
          }

          v305 = *(v304 + 48);
          v306 = 8 * *(v304 + 56);
          while (1)
          {
            v307 = *(*v305 + 72);
            if (v307)
            {
              v308 = *v307 + 120 * *(v307 + v250 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v308, 0x32u) != *(v308 + 12))
              {
                break;
              }
            }

            v305 += 8;
            v306 -= 8;
            if (!v306)
            {
              goto LABEL_508;
            }
          }
        }

LABEL_475:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v302 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_740;
          }
        }

        else
        {
          v302 = 0;
        }

        v281 = *(v224 + v302 + 11);
        v278 = 0.0;
        if (v281 != 2)
        {
          v282 = v224;
          v283 = 50;
          goto LABEL_517;
        }

LABEL_740:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 50, 0, &v491, v277);
        v7 = v463;
        v449 = v224;
        v450 = 50;
        goto LABEL_742;
      }
    }

    else
    {
      v252 = 0;
    }

    v254 = *(v224 + v252 + 11);
    if (v254 != 2)
    {
      goto LABEL_472;
    }

    goto LABEL_404;
  }

  if (v8 != 1)
  {
    goto LABEL_518;
  }

  v224 = v492[3];
  if (v486 >= 0x17)
  {
    v225 = 23;
  }

  else
  {
    v225 = v486;
  }

  v226 = *v224;
  if (*v224)
  {
    v227 = *v226;
    v228 = *v226 == 1.0;
    if (*(v224 + 10) == 1 && v227 != 0.0 && v227 != 1.0)
    {
      goto LABEL_362;
    }
  }

  else
  {
    v228 = 0;
  }

  v230 = *(v224 + v228 + 11);
  if (v230 == 2)
  {
LABEL_362:
    v231 = *(v224 + 16);
    if (v231)
    {
      v232 = *(v231 + 72);
      if (v232)
      {
        v233 = *v232 + 120 * *(v232 + v225 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v233, 0x3Du) != *(v233 + 12))
        {
          goto LABEL_437;
        }
      }

      if (*(v224 + 56))
      {
        v234 = *(v224 + 48);
        v235 = 8 * *(v224 + 56);
        while (1)
        {
          v236 = *(*v234 + 72);
          if (v236)
          {
            v237 = *v236 + 120 * *(v236 + v225 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v237, 0x3Du) != *(v237 + 12))
            {
              goto LABEL_437;
            }
          }

          v234 += 8;
          v230 = 1;
          v235 -= 8;
          if (!v235)
          {
            goto LABEL_434;
          }
        }
      }
    }

    v230 = 1;
  }

LABEL_434:
  v274 = *(v224 + 16 * v230 + 16);
  if (v274)
  {
    v275 = *(v274 + 72);
    if (v275)
    {
      v276 = *v275 + 120 * *(v275 + v225 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v276, 0x3Du) != *(v276 + 12))
      {
LABEL_437:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v279 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_733;
          }
        }

        else
        {
          v279 = 0;
        }

        v281 = *(v224 + v279 + 11);
        v278 = 0.0;
        if (v281 == 2)
        {
LABEL_733:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 61, 0, &v491, v277);
          v7 = v456;
          v449 = v224;
          v450 = 61;
          goto LABEL_742;
        }

        v282 = v224;
        v283 = 61;
LABEL_517:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v282, v283, v281, 0, v277);
        v6 = v321;
        goto LABEL_518;
      }
    }

    v284 = v224 + 16 * v230;
    if (*(v284 + 56))
    {
      v285 = *(v284 + 48);
      v286 = 8 * *(v284 + 56);
      do
      {
        v287 = *(*v285 + 72);
        if (v287)
        {
          v288 = *v287 + 120 * *(v287 + v225 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v288, 0x3Du) != *(v288 + 12))
          {
            goto LABEL_437;
          }
        }

        v285 += 8;
        v286 -= 8;
      }

      while (v286);
    }
  }

LABEL_508:
  v277 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v226)
  {
    v278 = *v226;
    v319 = *v226 == 1.0;
    if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
    {
      goto LABEL_725;
    }
  }

  else
  {
    v319 = 0;
  }

  v281 = *(v224 + v319 + 11);
  v278 = 0.0;
  if (v281 != 2)
  {
    v282 = v224;
    v283 = 271;
    goto LABEL_517;
  }

LABEL_725:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 271, 0, &v491, v277);
  v7 = v448;
  v449 = v224;
  v450 = 271;
LABEL_742:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v449, v450, 1, &v490, v277);
  v6 = v7 + ((v465 - v7) * v278);
LABEL_518:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_688;
      }

      v322 = v492[3];
      if (v486 >= 0x17)
      {
        v336 = 23;
      }

      else
      {
        v336 = v486;
      }

      v324 = *v322;
      if (*v322)
      {
        v337 = *v324;
        v338 = *v324 == 1.0;
        if (*(v322 + 10) == 1 && v337 != 0.0 && v337 != 1.0)
        {
LABEL_554:
          v341 = *(v322 + 16);
          if (v341)
          {
            v342 = *(v341 + 72);
            if (v342)
            {
              v343 = *v342 + 120 * *(v342 + v336 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v343, 0x55u) != *(v343 + 12))
              {
                goto LABEL_626;
              }
            }

            if (*(v322 + 56))
            {
              v344 = *(v322 + 48);
              v345 = 8 * *(v322 + 56);
              while (1)
              {
                v346 = *(*v344 + 72);
                if (v346)
                {
                  v347 = *v346 + 120 * *(v346 + v336 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v347, 0x55u) != *(v347 + 12))
                  {
                    goto LABEL_626;
                  }
                }

                v344 += 8;
                v340 = 1;
                v345 -= 8;
                if (!v345)
                {
                  goto LABEL_623;
                }
              }
            }
          }

          v340 = 1;
LABEL_623:
          v387 = *(v322 + 16 * v340 + 16);
          if (!v387)
          {
            goto LABEL_678;
          }

          v388 = *(v387 + 72);
          if (!v388 || (v389 = *v388 + 120 * *(v388 + v336 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v389, 0x55u) == *(v389 + 12)))
          {
            v392 = v322 + 16 * v340;
            if (!*(v392 + 56))
            {
              goto LABEL_678;
            }

            v393 = *(v392 + 48);
            v394 = 8 * *(v392 + 56);
            while (1)
            {
              v395 = *(*v393 + 72);
              if (v395)
              {
                v396 = *v395 + 120 * *(v395 + v336 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v396, 0x55u) != *(v396 + 12))
                {
                  break;
                }
              }

              v393 += 8;
              v394 -= 8;
              if (!v394)
              {
                goto LABEL_678;
              }
            }
          }

LABEL_626:
          v375 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v324)
          {
            v376 = *v324;
            v390 = *v324 == 1.0;
            if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
            {
              goto LABEL_736;
            }
          }

          else
          {
            v390 = 0;
          }

          v379 = *(v322 + v390 + 11);
          v376 = 0.0;
          if (v379 != 2)
          {
            v380 = v322;
            v381 = 85;
            goto LABEL_687;
          }

LABEL_736:
          LOBYTE(v491) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 85, 0, &v491, v375);
          v488 = v459;
          v452 = v322;
          v453 = 85;
          goto LABEL_745;
        }
      }

      else
      {
        v338 = 0;
      }

      v340 = *(v322 + v338 + 11);
      if (v340 != 2)
      {
        goto LABEL_623;
      }

      goto LABEL_554;
    }

    v322 = v492[3];
    if (v486 >= 0x17)
    {
      v360 = 23;
    }

    else
    {
      v360 = v486;
    }

    v324 = *v322;
    if (*v322)
    {
      v361 = *v324;
      v362 = *v324 == 1.0;
      if (*(v322 + 10) == 1 && v361 != 0.0 && v361 != 1.0)
      {
LABEL_594:
        v365 = *(v322 + 16);
        if (v365)
        {
          v366 = *(v365 + 72);
          if (v366)
          {
            v367 = *v366 + 120 * *(v366 + v360 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v367, 0x4Au) != *(v367 + 12))
            {
              goto LABEL_664;
            }
          }

          if (*(v322 + 56))
          {
            v368 = *(v322 + 48);
            v369 = 8 * *(v322 + 56);
            while (1)
            {
              v370 = *(*v368 + 72);
              if (v370)
              {
                v371 = *v370 + 120 * *(v370 + v360 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v371, 0x4Au) != *(v371 + 12))
                {
                  goto LABEL_664;
                }
              }

              v368 += 8;
              v364 = 1;
              v369 -= 8;
              if (!v369)
              {
                goto LABEL_661;
              }
            }
          }
        }

        v364 = 1;
LABEL_661:
        v407 = *(v322 + 16 * v364 + 16);
        if (!v407)
        {
          goto LABEL_678;
        }

        v408 = *(v407 + 72);
        if (!v408 || (v409 = *v408 + 120 * *(v408 + v360 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v409, 0x4Au) == *(v409 + 12)))
        {
          v412 = v322 + 16 * v364;
          if (!*(v412 + 56))
          {
            goto LABEL_678;
          }

          v413 = *(v412 + 48);
          v414 = 8 * *(v412 + 56);
          while (1)
          {
            v415 = *(*v413 + 72);
            if (v415)
            {
              v416 = *v415 + 120 * *(v415 + v360 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v416, 0x4Au) != *(v416 + 12))
              {
                break;
              }
            }

            v413 += 8;
            v414 -= 8;
            if (!v414)
            {
              goto LABEL_678;
            }
          }
        }

LABEL_664:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v410 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_744;
          }
        }

        else
        {
          v410 = 0;
        }

        v379 = *(v322 + v410 + 11);
        v376 = 0.0;
        if (v379 != 2)
        {
          v380 = v322;
          v381 = 74;
          goto LABEL_687;
        }

LABEL_744:
        LOBYTE(v491) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 74, 0, &v491, v375);
        v488 = v467;
        v452 = v322;
        v453 = 74;
        goto LABEL_745;
      }
    }

    else
    {
      v362 = 0;
    }

    v364 = *(v322 + v362 + 11);
    if (v364 != 2)
    {
      goto LABEL_661;
    }

    goto LABEL_594;
  }

  if (!v8)
  {
    v322 = v492[3];
    if (v486 >= 0x17)
    {
      v348 = 23;
    }

    else
    {
      v348 = v486;
    }

    v324 = *v322;
    if (*v322)
    {
      v349 = *v324;
      v350 = *v324 == 1.0;
      if (*(v322 + 10) == 1 && v349 != 0.0 && v349 != 1.0)
      {
LABEL_574:
        v353 = *(v322 + 16);
        if (v353)
        {
          v354 = *(v353 + 72);
          if (v354)
          {
            v355 = *v354 + 120 * *(v354 + v348 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v355, 0x34u) != *(v355 + 12))
            {
              goto LABEL_645;
            }
          }

          if (*(v322 + 56))
          {
            v356 = *(v322 + 48);
            v357 = 8 * *(v322 + 56);
            while (1)
            {
              v358 = *(*v356 + 72);
              if (v358)
              {
                v359 = *v358 + 120 * *(v358 + v348 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v359, 0x34u) != *(v359 + 12))
                {
                  goto LABEL_645;
                }
              }

              v356 += 8;
              v352 = 1;
              v357 -= 8;
              if (!v357)
              {
                goto LABEL_642;
              }
            }
          }
        }

        v352 = 1;
LABEL_642:
        v397 = *(v322 + 16 * v352 + 16);
        if (!v397)
        {
          goto LABEL_678;
        }

        v398 = *(v397 + 72);
        if (!v398 || (v399 = *v398 + 120 * *(v398 + v348 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v399, 0x34u) == *(v399 + 12)))
        {
          v402 = v322 + 16 * v352;
          if (!*(v402 + 56))
          {
            goto LABEL_678;
          }

          v403 = *(v402 + 48);
          v404 = 8 * *(v402 + 56);
          while (1)
          {
            v405 = *(*v403 + 72);
            if (v405)
            {
              v406 = *v405 + 120 * *(v405 + v348 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v406, 0x34u) != *(v406 + 12))
              {
                break;
              }
            }

            v403 += 8;
            v404 -= 8;
            if (!v404)
            {
              goto LABEL_678;
            }
          }
        }

LABEL_645:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v400 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_743;
          }
        }

        else
        {
          v400 = 0;
        }

        v379 = *(v322 + v400 + 11);
        v376 = 0.0;
        if (v379 != 2)
        {
          v380 = v322;
          v381 = 52;
          goto LABEL_687;
        }

LABEL_743:
        LOBYTE(v491) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 52, 0, &v491, v375);
        v488 = v466;
        v452 = v322;
        v453 = 52;
        goto LABEL_745;
      }
    }

    else
    {
      v350 = 0;
    }

    v352 = *(v322 + v350 + 11);
    if (v352 != 2)
    {
      goto LABEL_642;
    }

    goto LABEL_574;
  }

  if (v8 != 1)
  {
    goto LABEL_688;
  }

  v322 = v492[3];
  if (v486 >= 0x17)
  {
    v323 = 23;
  }

  else
  {
    v323 = v486;
  }

  v324 = *v322;
  if (*v322)
  {
    v325 = *v324;
    v326 = *v324 == 1.0;
    if (*(v322 + 10) == 1 && v325 != 0.0 && v325 != 1.0)
    {
      goto LABEL_532;
    }
  }

  else
  {
    v326 = 0;
  }

  v328 = *(v322 + v326 + 11);
  if (v328 == 2)
  {
LABEL_532:
    v329 = *(v322 + 16);
    if (v329)
    {
      v330 = *(v329 + 72);
      if (v330)
      {
        v331 = *v330 + 120 * *(v330 + v323 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v331, 0x3Fu) != *(v331 + 12))
        {
          goto LABEL_607;
        }
      }

      if (*(v322 + 56))
      {
        v332 = *(v322 + 48);
        v333 = 8 * *(v322 + 56);
        while (1)
        {
          v334 = *(*v332 + 72);
          if (v334)
          {
            v335 = *v334 + 120 * *(v334 + v323 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v335, 0x3Fu) != *(v335 + 12))
            {
              goto LABEL_607;
            }
          }

          v332 += 8;
          v328 = 1;
          v333 -= 8;
          if (!v333)
          {
            goto LABEL_604;
          }
        }
      }
    }

    v328 = 1;
  }

LABEL_604:
  v372 = *(v322 + 16 * v328 + 16);
  if (v372)
  {
    v373 = *(v372 + 72);
    if (v373)
    {
      v374 = *v373 + 120 * *(v373 + v323 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v374, 0x3Fu) != *(v374 + 12))
      {
LABEL_607:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v377 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_735;
          }
        }

        else
        {
          v377 = 0;
        }

        v379 = *(v322 + v377 + 11);
        v376 = 0.0;
        if (v379 == 2)
        {
LABEL_735:
          LOBYTE(v491) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 63, 0, &v491, v375);
          v488 = v458;
          v452 = v322;
          v453 = 63;
          goto LABEL_745;
        }

        v380 = v322;
        v381 = 63;
LABEL_687:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v380, v381, v379, 0, v375);
        v7 = v419;
        goto LABEL_688;
      }
    }

    v382 = v322 + 16 * v328;
    if (*(v382 + 56))
    {
      v383 = *(v382 + 48);
      v384 = 8 * *(v382 + 56);
      do
      {
        v385 = *(*v383 + 72);
        if (v385)
        {
          v386 = *v385 + 120 * *(v385 + v323 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v386, 0x3Fu) != *(v386 + 12))
          {
            goto LABEL_607;
          }
        }

        v383 += 8;
        v384 -= 8;
      }

      while (v384);
    }
  }

LABEL_678:
  v375 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v324)
  {
    v376 = *v324;
    v417 = *v324 == 1.0;
    if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
    {
      goto LABEL_726;
    }
  }

  else
  {
    v417 = 0;
  }

  v379 = *(v322 + v417 + 11);
  v376 = 0.0;
  if (v379 != 2)
  {
    v380 = v322;
    v381 = 279;
    goto LABEL_687;
  }

LABEL_726:
  LOBYTE(v491) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 279, 0, &v491, v375);
  v488 = v451;
  v452 = v322;
  v453 = 279;
LABEL_745:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v452, v453, 1, &v490, v375);
  v7 = v488 + ((v468 - v488) * v376);
LABEL_688:
  v420 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a1 + 16), *(*(*a1 + 16) + 8));
  if (!v420)
  {
    goto LABEL_708;
  }

  v421 = v420;
  v490 = *v479;
  v422 = v492[3];
  v423 = fminf(fmaxf(v13, 0.0), 23.0);
  v424 = *v422;
  if (*v422)
  {
    v425 = *v424;
    v426 = *v424 == 1.0;
    if (*(v422 + 10) == 1 && v425 != 0.0 && v425 != 1.0)
    {
      goto LABEL_721;
    }
  }

  else
  {
    v426 = 0;
  }

  v428 = *(v422 + v426 + 11);
  v425 = 0.0;
  if (v428 != 2)
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v492[3], 489, v428, 0, v423);
    goto LABEL_698;
  }

LABEL_721:
  LOBYTE(v491) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 0, &v491, v423);
  v487 = v443;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 1, v496, v423);
  v429 = v487 + ((v444 - v487) * v425);
LABEL_698:
  v430 = *v421;
  md::AccessibilityHelper::luminanceAdjustedColor(&v491, v430, &v490, v429);
  *v479 = v491;
  v490 = *v481;
  if (v424)
  {
    v431 = *v424;
    v432 = *v424 == 1.0;
    if (*(v422 + 10) == 1 && v431 != 0.0 && v431 != 1.0)
    {
      goto LABEL_779;
    }
  }

  else
  {
    v432 = 0;
  }

  v434 = *(v422 + v432 + 11);
  if (v434 == 2)
  {
    v431 = 0.0;
LABEL_779:
    LOBYTE(v491) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 0, &v491, v423);
    v489 = v469;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 1, v496, v423);
    v435 = v489 + ((v470 - v489) * v431);
    goto LABEL_707;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, v434, 0, v423);
LABEL_707:
  md::AccessibilityHelper::luminanceAdjustedColor(&v491, v430, &v490, v435);
  *v481 = v491;
LABEL_708:
  *a2 = (fminf(fmaxf(15.0 - a1[2], 0.0), 4.0) * -0.25) + 1.0;
  if (v495 == 1)
  {
    (*(*v492 + 56))(v492);
  }

  if (v494)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v494);
  }

  if (v493)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v493);
  }

  v436 = a1[38];
  if (v436 <= 0.0)
  {
    LODWORD(v492) = 0;
    v438 = 0.0;
    if (*(a3 + 32) == 1)
    {
      LODWORD(v491) = 0;
      LODWORD(v490) = 0;
      md::getRoadWidths(a3, &v492, &v491, &v490, v496, a1[2]);
      v438 = *&v492;
    }

    v439 = fminf(fmaxf(v438 * v16, v4), v5);
    v440 = fmaxf((v439 + v438) * 0.16667, (v439 * 0.5) + 0.5);
    v441 = fmaxf(v6, v438 * v18);
    v442 = fminf(v7, v441);
    if (v7 > 0.0)
    {
      v441 = v442;
    }

    *(a2 + 4) = v439;
    *(a2 + 8) = v441;
    *(a2 + 12) = v440;
    return v439 >= a1[15];
  }

  else
  {
    *(a2 + 12) = 0;
    *(a2 + 4) = v436 * v16;
    *(a2 + 8) = v436 * v18;
    return 1;
  }
}

void sub_1B2B6D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::defaultStandardFillColor(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = xmmword_1B33B14B0;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = xmmword_1B33B14A0;
    }
  }

  else
  {
    if (a2 > 1)
    {
      return result;
    }

    v2 = xmmword_1B33B14C0;
  }

  v3 = v2;
  return geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(result, &v3);
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassShadowDescriptor>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>();
    unk_1EB83CF40 = 0x73F7A94D4E0637DDLL;
    qword_1EB83CF48 = "md::ls::PassShadowDescriptor]";
    qword_1EB83CF50 = 28;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowDescriptor>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowDescriptor>(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(void *result, void *a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v79, v3);
      if (*(v6 + 272) == 1)
      {
        ggl::Batcher::reset((v6 + 144));
        md::RenderItemPool::reset((v6 + 224));
        std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v80, v79);
        if (*(v6 + 272) == 1)
        {
          memset(&v70, 0, sizeof(v70));
          std::vector<unsigned int>::reserve(&v70, 5uLL);
          end = v70.__end_;
          v65 = v5;
          if (*(v6 + 136))
          {
            if (v70.__end_ >= v70.__end_cap_.__value_)
            {
              begin = v70.__begin_;
              v11 = v70.__end_ - v70.__begin_;
              v12 = v70.__end_ - v70.__begin_;
              v13 = v12 + 1;
              if ((v12 + 1) >> 62)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v14 = v70.__end_cap_.__value_ - v70.__begin_;
              if ((v70.__end_cap_.__value_ - v70.__begin_) >> 1 > v13)
              {
                v13 = v14 >> 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v13;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
              }

              v16 = (4 * v12);
              *v16 = 0;
              end = v16 + 1;
              memcpy(0, begin, v11);
              v70.__begin_ = 0;
              v70.__end_cap_.__value_ = 0;
              if (begin)
              {
                operator delete(begin);
              }
            }

            else
            {
              *v70.__end_ = 0;
              ++end;
            }

            v70.__end_ = end;
            v17 = *(*(v6 + 8) + 56);
            *(v6 + 40) = v17;
            v18 = *(v17 + 58) == 1;
            v9 = 16;
            if (v18)
            {
              v9 = 32;
            }
          }

          else
          {
            v9 = 16;
          }

          v67 = v9;
          v19 = v70.__begin_;
          if (v70.__begin_ != end)
          {
            v21 = *(v6 + 248);
            v20 = *(v6 + 256);
            if (v21 == v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v66 = *(v6 + 256);
              do
              {
                v23 = *v21;
                if (*(*v21 + 48) == 1)
                {
                  if (*(v23 + 88) != v22)
                  {
                    v68 = v22;
                    if (v22)
                    {
                      v24 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
                      if (v24[1] != *v24)
                      {
                        v26 = v70.__begin_;
                        v25 = v70.__end_;
                        if (v70.__begin_ != v70.__end_)
                        {
                          v27 = v24;
                          do
                          {
                            v28 = *v26;
                            v71 = &off_1F2A5D8B8;
                            v29 = v6 + 16 + (v28 << 7);
                            v30 = *(v29 + 8);
                            v31 = *(v29 + 24);
                            v74 = *(v29 + 40);
                            v73 = v31;
                            v72 = v30;
                            v32 = *(v29 + 56);
                            v33 = *(v29 + 72);
                            v34 = *(v29 + 88);
                            v78 = *(v29 + 104);
                            v77 = v34;
                            v76 = v33;
                            v75 = v32;
                            v35 = *(v6 + 232);
                            v36 = v35[1];
                            if (v36 == *(v6 + 240))
                            {
                              v35 = *v35;
                              if (!v35)
                              {
                                v35 = malloc_type_malloc(120 * v36 + 16, 0x1020040EDED9539uLL);
                                *v35 = 0;
                                v35[1] = 0;
                                **(v6 + 232) = v35;
                              }

                              *(v6 + 232) = v35;
                              v36 = v35[1];
                            }

                            v37 = &v35[15 * v36];
                            v35[1] = v36 + 1;
                            v37[2] = &off_1F2A5D8B8;
                            v38 = v72;
                            v39 = v73;
                            *(v37 + 7) = v74;
                            *(v37 + 5) = v39;
                            *(v37 + 3) = v38;
                            v40 = v75;
                            v41 = v76;
                            v42 = v77;
                            *(v37 + 15) = v78;
                            *(v37 + 13) = v42;
                            *(v37 + 11) = v41;
                            *(v37 + 9) = v40;
                            ggl::RenderItem::~RenderItem(&v71);
                            v37[10] = v68;
                            v43 = *v27;
                            v37[13] = *v27;
                            v37[14] = (v27[1] - v43) >> 4;
                            std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v28, (v37 + 2));
                            ++v26;
                          }

                          while (v26 != v25);
                        }
                      }
                    }

                    v23 = *v21;
                    v22 = *(*v21 + 88);
                    v20 = v66;
                  }

                  ggl::Batcher::addRange(v6 + 144, (v23 + v67));
                }

                ++v21;
              }

              while (v21 != v20);
              v19 = v70.__begin_;
            }

            v44 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
            if (v44[1] != *v44)
            {
              v45 = v70.__end_;
              if (v19 != v70.__end_)
              {
                v46 = v44;
                v69 = v22;
                do
                {
                  v47 = *v19;
                  v71 = &off_1F2A5D8B8;
                  v48 = v6 + 16 + (v47 << 7);
                  v49 = *(v48 + 8);
                  v50 = *(v48 + 24);
                  v74 = *(v48 + 40);
                  v73 = v50;
                  v72 = v49;
                  v51 = *(v48 + 56);
                  v52 = *(v48 + 72);
                  v53 = *(v48 + 88);
                  v78 = *(v48 + 104);
                  v77 = v53;
                  v76 = v52;
                  v75 = v51;
                  v54 = *(v6 + 232);
                  v55 = v54[1];
                  if (v55 == *(v6 + 240))
                  {
                    v54 = *v54;
                    if (!v54)
                    {
                      v54 = malloc_type_malloc(120 * v55 + 16, 0x1020040EDED9539uLL);
                      *v54 = 0;
                      v54[1] = 0;
                      **(v6 + 232) = v54;
                    }

                    *(v6 + 232) = v54;
                    v55 = v54[1];
                  }

                  v56 = &v54[15 * v55];
                  v54[1] = v55 + 1;
                  v56[2] = &off_1F2A5D8B8;
                  v57 = v72;
                  v58 = v73;
                  *(v56 + 7) = v74;
                  *(v56 + 5) = v58;
                  *(v56 + 3) = v57;
                  v59 = v75;
                  v60 = v76;
                  v61 = v77;
                  *(v56 + 15) = v78;
                  *(v56 + 13) = v61;
                  *(v56 + 11) = v60;
                  *(v56 + 9) = v59;
                  ggl::RenderItem::~RenderItem(&v71);
                  v56[10] = v69;
                  v62 = *v46;
                  v56[13] = *v46;
                  v56[14] = (v46[1] - v62) >> 4;
                  std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v47, (v56 + 2));
                  ++v19;
                }

                while (v19 != v45);
                v19 = v70.__begin_;
              }
            }
          }

          if (v19)
          {
            v70.__end_ = v19;
            operator delete(v19);
          }

          v4 = a2;
          v3 = a3;
          v5 = v65;
        }

        std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v80);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v79);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2B6DC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A368A0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4, v5, v6);
}

ggl::zone_mallocator *std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(result + 1);
  v6 = v4[10];
  v5 = v4[11];
  if (v6 >= v5)
  {
    v8 = v4[9];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v22[4] = v4 + 12;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v4[9];
    v18 = v4[10] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v4[9];
    v4[9] = v19;
    v4[10] = v7;
    v21 = v4[11];
    v4[11] = v16;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v4[10] = v7;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::ClientDrapedPolygonRenderLayer::_layoutDrapedTileOverlay(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v5 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v9 = a4[51];
  v10 = *(v9 + 169);
  v11 = *(v9 + 172);
  v12 = *(v9 + 168);
  v13 = *(v9 + 184);
  v14 = *(v9 + 192);
  v15 = a4[49];
  v16 = *(v15 + 169);
  v17 = *(v15 + 172);
  v18 = *(v15 + 168);
  v19 = *(v15 + 184);
  v20 = *(v15 + 192);
  v21 = *(v15 + 24);
  v22 = *(v15 + 8);
  if (a5)
  {
    v23 = *a3;
    v24 = *(a3 + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v9 + 8);
  v51[1] = v16;
  *v52 = v17;
  v51[0] = v18;
  *&v52[3] = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v58[1] = v10;
  v59 = v11;
  v58[0] = v12;
  v60 = v13;
  v61 = v14;
  v62 = v25;
  v26 = std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::find<md::FoundationKey>(a3[2], v58);
  if (v26)
  {
    v27 = std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::find<md::OverlayKey>(v26 + 7, v51);
    if (v27)
    {
      v28 = atomic_load(*(v27 + 9));
      if (v28 == 2)
      {
        v29 = *(v27 + 9);
        md::ElevatedPolygonContext::ElevatedPolygonContext(v48, a2, *(a1 + 496), *(*(a1 + 40) + 24));
        v30 = a4[51];
        v31 = *(v30 + 169);
        v32 = *(a4[1] + 169);
        if (v31 <= v32)
        {
          v33 = *(a4[1] + 169);
        }

        else
        {
          v33 = *(v30 + 169);
        }

        if (v10 == v33)
        {
          v34 = 0.0;
          v35 = -1.0;
          v36 = 1.0;
          v37 = 1.0;
        }

        else
        {
          if (v31 < v32)
          {
            v30 = a4[1];
          }

          v38 = 1 << (v33 - v10);
          v36 = v38--;
          v34 = -(*(v30 + 176) & v38);
          v37 = v36 - (*(v30 + 172) & v38);
          v35 = -v36;
        }

        *v47 = v36;
        *&v47[1] = v35;
        *&v47[2] = v34;
        *&v47[3] = v37;
        if (*(v29 + 56))
        {
          v39 = 0;
          v44 = v5;
          do
          {
            v40 = *(a4[49] + 760) + 160 * *(*(v29 + 88) + 4 * v39);
            if (v5)
            {
              md::ElevatedStrokeGroup::selectedStyleQuery(&v45, v40);
            }

            else
            {
              v45 = *(v40 + 104);
              v43 = *(v40 + 112);
              v46 = v43;
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            if (*(v29 + 60))
            {
              v41 = 0;
              do
              {
                std::__variant_detail::__alt<1ul,md::ClientDrapedMeshes>::__alt[abi:nn200100]<md::ClientDrapedMeshes&>(&v52[1], *(v29 + 112) + 80 * (v39 + *(v29 + 56) * v41));
                v62 = 1;
                if ((*(*(v29 + 64) + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v41))
                {
                  v42 = 0.0;
                }

                else
                {
                  v42 = 0.001;
                }

                v49 = v42;
                md::layoutElevatedPolygonMeshes<md::ElevatedPolygonRenderable>(a2, a4, v48, a1 + 456, *(a1 + 480), v51, &v45, v47);
                if (v62 != -1)
                {
                  (off_1F2A3F930[v62])(&v50, &v52[1]);
                }

                ++v41;
              }

              while (v41 < *(v29 + 60));
            }

            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v46);
            }

            ++v39;
            v5 = v44;
          }

          while (v39 < *(v29 + 56));
        }
      }
    }
  }
}

uint64_t md::CompositeLabelPart::prepareForDisplay(uint64_t this, md::LabelManager *a2)
{
  v2 = *(this + 576);
  for (i = *(this + 584); v2 != i; this = (*(*v5 + 104))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

float *md::IconLabelPart::prepareForDisplay(float *this, md::LabelManager *a2)
{
  v2 = this;
  v3 = this[153];
  if (v3 == this[204])
  {
    v4 = 0;
    v5 = 1;
    while (this[v4 + 80] >= this[v4 + 78])
    {
      v6 = v5;
      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  this[204] = v3;
  this = (*(*this + 920))(this, 1, this + 160, this + 78);
LABEL_7:
  if (*(v2 + 565) == 1)
  {
    operator new();
  }

  return this;
}

void md::Label::layoutForStaging(uint64_t this, uint64_t a2, md::LabelManager *a3, _BYTE *a4)
{
  v8 = *(a2 + 424);
  *(this + 1358) = *(v8 + 12);
  if (*(this + 1337) == 1)
  {
    *(this + 1337) = 256;
  }

  else if ((*(this + 1338) & 1) == 0)
  {
    v9 = *(this + 1343);
    goto LABEL_4;
  }

  v9 = 1;
LABEL_4:
  *(this + 405) = v9 & 1;
  *(this + 482) = 0;
  if (a3 && ((*(this + 1349) & 1) != 0 || *(this + 1350) == 1) && md::Label::checkReplacementLabelReady(this, a3, a3, *(v8 + 336)))
  {
    if (*(this + 1350) == 1)
    {
      *(this + 1350) = 0;
      md::Label::updateStateMachineForStaging(this, 2, 28);
    }

    if (*(this + 1349) == 1)
    {
      *(this + 1349) = 0;
      md::Label::updateStateMachineForStaging(this, 1, 37);
    }
  }

  *(this + 352) = 0;
  if (*(this + 844))
  {
    if (((*(**(this + 8) + 448))(*(this + 8), this + 48) & 1) == 0)
    {
      v10 = this;
      v11 = 0;
LABEL_15:

      md::Label::updateStateMachineForStaging(v10, 2, v11);
      return;
    }

    if (*(v8 + 25) == 1 && (*(this + 859) & 1) == 0)
    {
      v10 = this;
      v11 = 32;
      goto LABEL_15;
    }

    if ((*(this + 1352) & 1) == 0)
    {
      v12 = *(this + 1392);
      if (v12 != -1 && *(this + 1293) == 1)
      {
        v13 = *(a2 + 3616);
        if (v13)
        {
          if (md::LabelCategoryFilter::shouldFilterPoiType(v13, v12))
          {
LABEL_30:
            v10 = this;
            v11 = 33;
            goto LABEL_15;
          }
        }
      }
    }

    if ((*(a2 + 3033) & 1) != 0 || (*(a2 + 3032) & 1) == 0)
    {
      if (*(this + 1352) != 1 || *(this + 1346) == 1 && (*(this + 1345) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(a2 + 3026) == 1 && ((*(a2 + 3029) & 1) == 0 && *(this + 1290) == 1 && (*(this + 1352) & 1) == 0 || (*(a2 + 3027) & 1) == 0 && *(this + 1291) == 2 || (*(a2 + 3028) & 1) == 0 && *(this + 1290) == 7 || (*(a2 + 3030) & 1) == 0 && *(this + 1291) == 4 || (*(a2 + 3031) & 1) == 0 && *(this + 1291) == 3))
    {
      goto LABEL_30;
    }

    if (*(a2 + 3681) == 1)
    {
      switch(*(this + 1291))
      {
        case 0:
        case 6:
        case 0xA:
        case 0xF:
        case 0x10:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
          if (*(a2 + 3676))
          {
            goto LABEL_41;
          }

          break;
        case 1:
        case 7:
        case 8:
        case 0xB:
        case 0xC:
        case 0x11:
        case 0x12:
          if (*(a2 + 3678) != 1)
          {
            break;
          }

          goto LABEL_41;
        case 2:
        case 4:
        case 5:
        case 9:
        case 0xD:
        case 0xE:
          if (*(this + 1290) == 8)
          {
            if ((*(a2 + 3680) & 1) == 0)
            {
              break;
            }
          }

          else if ((*(a2 + 3677) & 1) == 0)
          {
            break;
          }

LABEL_41:
          v10 = this;
          v11 = 5;
          goto LABEL_15;
        case 3:
          if ((*(a2 + 3679) & 1) == 0)
          {
            break;
          }

          goto LABEL_41;
        default:
          break;
      }
    }

    if (*(this + 888) == 1)
    {
      v14 = *(v8 + 29);
      v15 = *(v8 + 29);
      if (v15 != *(this + 861))
      {
        *(this + 861) = v15;
        v16 = atomic_load((a2 + 3368));
        v17 = (v14 - v16) & ~((v14 - v16) >> 31);
        v18 = *(this + 864);
        if (((*(this + 872) - v18) >> 5) <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = (*(this + 872) - v18) >> 5;
        }

        v20 = v19 - 1;
        v21 = (v18 + 32);
        v22 = 1 - v19;
        v23 = -1;
        while (v22 + v23 != -1)
        {
          v24 = *v21;
          v21 += 32;
          ++v23;
          if (v24 > v17)
          {
            goto LABEL_60;
          }
        }

        LODWORD(v23) = v20;
LABEL_60:
        v25 = 0;
        v26 = v18 + 32 * v23 + 8;
        do
        {
          *(this + 496 + v25) = *(v26 + v25);
          v25 += 8;
        }

        while (v25 != 24);
      }
    }

    v27 = (this + 360);
    v28 = *(this + 704);
    if (!v28 || (v31 = *(this + 392), v32 = *(v8 + 32), v31 == v32))
    {
      v29 = (this + 520);
      v30 = 3;
      do
      {
        *v29 = *(v29 - 3);
        ++v29;
        --v30;
      }

      while (v30);
    }

    else
    {
      LOBYTE(v32) = *(v28 + 16);
      v33 = exp2f(v31 - LODWORD(v32));
      v34 = 0;
      v274 = 0u;
      v276 = 0u;
      v275 = 0u;
      v273 = 0u;
      *&v272[8] = 0u;
      v35 = *v28;
      v271 = 0x3FF0000000000000;
      *v272 = 0x3FF0000000000000;
      *&v274 = 0x3FF0000000000000;
      *(&v276 + 1) = 0x3FF0000000000000;
      v277 = 0;
      v278 = v35;
      v279 = xmmword_1B33B0740;
      v265 = 0u;
      v267 = 0;
      v270 = 0u;
      v269 = 0u;
      v266 = 0u;
      v264 = 0u;
      v263 = 0u;
      v262 = 1.0 / v33;
      *&v265 = v262;
      v268 = v262;
      v36 = v272;
      do
      {
        v37 = 0;
        v38 = &v262;
        do
        {
          v39 = 0;
          v40 = 0.0;
          v41 = v36;
          do
          {
            v42 = *v41;
            v41 += 4;
            v40 = v40 + v38[v39++] * v42;
          }

          while (v39 != 4);
          *(&v280 + 4 * v37++ + v34) = v40;
          v38 += 4;
        }

        while (v37 != 4);
        ++v34;
        ++v36;
      }

      while (v34 != 4);
      v257 = 0;
      v256 = 0u;
      v254 = 0u;
      v253 = 0u;
      v252 = 0x3FF0000000000000;
      v255 = 0x3FF0000000000000uLL;
      v258 = 0x3FF0000000000000;
      v259 = 0;
      v260 = vnegq_f64(v35);
      v261 = xmmword_1B33B0740;
      gm::operator*<double,4,4,4>(&v283, &v280, &v252);
      *(this + 520) = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v283.f64, this + 496);
      *(this + 528) = v43;
      *(this + 536) = v44;
    }

    v45 = *(v8 + 1232);
    if ((*(**(this + 8) + 368))(*(this + 8)))
    {
      if ((*(**(this + 8) + 384))(*(this + 8)) && v45 != 0)
      {
        v47 = (*(**(this + 8) + 384))(*(this + 8));
        v48 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v45, v47);
        v49 = (*(**(this + 8) + 384))();
        md::VenueLogicContext::getVenueLevelElevation(v45, v49, v48, 0);
        if (v51)
        {
          v52 = 0;
          v53 = *(this + 232);
          *(this + 680) = v53 * v50;
          do
          {
            v283.f64[v52] = *(this + 544 + v52 * 8) * (v53 * v50);
            ++v52;
          }

          while (v52 != 3);
          v54 = v284;
          *(this + 568) = v283;
          *(this + 584) = v54;
        }
      }
    }

    v55 = 0;
    v56 = *(v8 + 52);
    do
    {
      v283.f64[v55] = *(this + v55 * 8 + 568) * v56;
      ++v55;
    }

    while (v55 != 3);
    v57 = 0;
    v280 = v283;
    v281 = v284;
    do
    {
      v283.f64[v57] = *(&v280 + v57 * 8) + *(this + v57 * 8 + 520);
      ++v57;
    }

    while (v57 != 3);
    v58 = v284;
    *(this + 640) = v283;
    *(this + 656) = v58;
    v59.n128_u64[1] = 0x3F80000000000000;
    v280 = xmmword_1B33B0710;
    v281 = 0.0;
    v282 = 0;
    v59.n128_u64[0] = *(this + 224);
    md::LabelLayoutContext::evaluateWorldPoint(v8, this + 640, (this + 152), *(this + 1300), 1, &v280, v59);
    *(this + 784) = HIDWORD(v280);
    v60 = *(&v280 + 2);
    v61 = fmaxf(*&v280, 0.0);
    v62 = v281;
    *(this + 804) = v62;
    *(this + 392) = v61;
    v63 = v61;
    if (v61 >= 0x17)
    {
      LOBYTE(v63) = 23;
    }

    *(this + 404) = v63;
    *(this + 788) = v60;
    if (a4[2] == 1 && ((v282 & 1) != 0 || *(this + 808) > v62 || *(this + 812) < v62))
    {
      v64 = this;
      v65 = 2;
      v66 = 3;
LABEL_94:
      md::Label::updateStateMachineForStaging(v64, v65, v66);
      return;
    }

    *(this + 400) = v62;
    if (a4[1] == 1)
    {
      v67 = v60;
      if (*(this + 816) > v67 || *(this + 824) < v67)
      {
        v64 = this;
        v65 = 2;
        v66 = 34;
        goto LABEL_94;
      }
    }

    v68 = (*(**(this + 8) + 48))(*(this + 8), a2, this);
    atomic_load((this + 1328));
    v69 = (*(**(this + 8) + 568))();
    v70 = *v69;
    if (!*v69)
    {
      goto LABEL_444;
    }

    v71 = *(*(a2 + 336) + 161);
    v251 = v68;
    if (*(v70 + 94) != v71 || __PAIR64__(*(v70 + 96), *(v70 + 95)) != __PAIR64__(BYTE2(v71), BYTE1(v71)) || *(v70 + 97) != BYTE3(v71) || __PAIR64__(*(v70 + 99), *(v70 + 98)) != __PAIR64__(BYTE5(v71), BYTE4(v71)) || __PAIR64__(*(v70 + 101), *(v70 + 100)) != __PAIR64__(HIBYTE(v71), BYTE6(v71)))
    {
      *(v70 + 94) = v71;
      md::LabelStyle::invalidateCachedProperties(v70);
      v70 = *v69;
    }

    md::LabelStyle::setZoom(v70, *(this + 392));
    v72 = (*(**(this + 8) + 576))(*(this + 8));
    v76 = *v72;
    v77 = *(v72 + 8);
    while (v76 != v77)
    {
      if (*v76)
      {
        md::LabelStyle::setVariantStyleType(*v76, *(*(a2 + 336) + 161));
        md::LabelStyle::setZoom(*v76, *(this + 392));
      }

      v76 += 2;
    }

    v78 = *v69;
    if (*(*v69 + 125) != 1 || *(v78 + 136) == 255)
    {
LABEL_444:
      v64 = this;
      v65 = 2;
      v66 = 1;
      goto LABEL_94;
    }

    v79 = v69[1];
    if (v79)
    {
      atomic_fetch_add_explicit(v79 + 1, 1uLL, memory_order_relaxed);
    }

    v80 = *(this + 384);
    *(this + 376) = v78;
    *(this + 384) = v79;
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v80);
    }

    if (((*(this + 1299) & 1) != 0 || *(a2 + 3046) == 1 && *(*v69 + 141) == 1) && (LODWORD(v74) = *(v8 + 36), *(this + 392) >= *&v74) && (v81 = atomic_load((this + 1331)), (v81 & 1) == 0))
    {
      v82 = *(a2 + 3652);
    }

    else
    {
      v82 = 0;
    }

    atomic_store(v82 & 1, (this + 481));
    v83 = atomic_load((this + 481));
    if ((v83 & 1) == 0)
    {
      *(this + 1372) = 0;
    }

    if (*(this + 483) == 1)
    {
      v84 = atomic_load((this + 481));
      v85 = *(this + 456);
      if (v84)
      {
        v86 = atomic_load((v85 + 286));
        if (v86)
        {
          if (*(*(this + 456) + 280))
          {
            *(this + 485) = *(*(this + 456) + 280);
          }

          *(this + 483) = 0;
          if (*(this + 484) == 1)
          {
            *(this + 1372) = 0;
          }
        }
      }

      else
      {
        *(v85 + 285) = 1;
        *(this + 483) = 0;
      }
    }

    if (*(a2 + 3043) == 1)
    {
      v87 = *(a2 + 3051) ^ 1;
    }

    else
    {
      v87 = 1;
    }

    *(this + 1333) = v87 & 1;
    v88 = *v69;
    *(this + 846) = *(*v69 + 252);
    *(this + 780) = *(v88 + 38);
    if (*(this + 1359) == 1)
    {
      v89 = vdupq_n_s64(0x400921FB54442D18uLL);
      v90 = vmaxnmq_f64(vmlaq_f64(v89, vdupq_n_s64(0xBF91DF46A2529D39), vcvtq_f64_f32(*(v88 + 228))), 0);
      v91 = vmovn_s64(vcgtq_f64(v90, v89));
      v92 = v91.i8[4];
      if (v91.i8[0])
      {
        v93 = 3.14159265;
      }

      else
      {
        v93 = v90.f64[0];
      }

      if (v92)
      {
        v94 = 3.14159265;
      }

      else
      {
        v94 = v90.f64[1];
      }

      v95 = cos(v93);
      v73 = cos(v94);
      *(this + 816) = v95;
      *(this + 824) = v73;
    }

    if (*(this + 1360) == 1)
    {
      v74 = *(this + 224);
      v96 = v74 * *(v88 + 55);
      *(this + 808) = v96;
      v73 = v74 * *(v88 + 54);
      *&v73 = v73;
      *(this + 812) = LODWORD(v73);
    }

    v97 = *(v88 + 123);
    *(this + 847) = v97;
    if (v97 == 4)
    {
      *&v73 = exp2f(*(this + 392) + -5.0);
    }

    else if (v97 == 2)
    {
      v243 = *(v88 + 49);
      v244 = v88[49];
      if (!v244)
      {
        md::LabelStyle::prepareDisplayCoreStyleGroup(v88);
      }

      std::shared_ptr<md::LabelTile>::operator=[abi:nn200100]((this + 728), v244, v88[50]);
      LODWORD(v73) = v243;
    }

    else if (v97 == 1 || (LODWORD(v73) = 1.0, v97 == 3))
    {
      LODWORD(v74) = LODWORD(v281);
      v73 = *(v8 + 256) / v281;
      *&v73 = v73;
      if (v97 == 3)
      {
        if (*(this + 851) == 1 && *(this + 840) == 1)
        {
          LODWORD(v74) = *(this + 836);
        }

        else
        {
          LODWORD(v74) = *(v88 + 49);
          *(this + 836) = LODWORD(v74);
          *(this + 840) = 1;
        }

        *&v73 = *&v74 * *&v73;
      }
    }

    *(this + 396) = LODWORD(v73);
    md::LabelStyle::getLabelKnobs(*v69, this + 744, *(this + 1290), *(this + 1362), v73, *&v74, v75);
    v98 = *(this + 748) != *(this + 744);
    if (*(this + 849) != v98)
    {
      *(this + 849) = v98;
      *(this + 1335) = 1;
    }

    v99 = (*(**(this + 8) + 240))(*(this + 8), this + 48);
    if (v99 <= 252.0)
    {
      v113 = roundf(v99 * 10.0) * 0.1;
      v114 = *(this + 768);
      *(this + 860) = v113 > v114;
      if (v113 <= v114)
      {
        v113 = v114;
      }

      *(this + 768) = v113;
      v100 = fmaxf(*(this + 752), v99);
    }

    else
    {
      *(this + 860) = 0;
      v100 = *(this + 752);
      if (v100 == 0.0)
      {
        v100 = *(this + 768);
      }
    }

    v101 = v100 + *(this + 760);
    *(this + 752) = v101;
    if (*(this + 1340) == 1)
    {
      *(this + 752) = *(this + 756) + v101;
    }

    v103 = (*(**(this + 8) + 248))(*(this + 8), this + 48);
    if (v103 < 252.0)
    {
      *(this + 772) = fminf(roundf(v103 * 10.0) * 0.1, *(this + 772));
    }

    if (*(this + 1334) & 1) != 0 || (v104 = atomic_load((this + 1328)), (v104))
    {
      *(this + 744) = 0xFFFFFFFF00000000;
      *(this + 768) = 0;
      *(this + 752) = 0;
    }

    v105 = atomic_load((this + 1331));
    if (v105)
    {
      goto LABEL_166;
    }

    v106 = atomic_load((this + 1328));
    if (v106)
    {
      goto LABEL_166;
    }

    v125 = *(this + 392);
    v126 = *(this + 768);
    if (v125 >= v126)
    {
      v130 = *(this + 772);
      if (v125 < v130)
      {
LABEL_166:
        v107 = 0;
        v108 = 4;
        v109 = 37;
        v110 = 1;
        goto LABEL_167;
      }

      v109 = 7;
      if (v125 > (v130 + 0.4))
      {
        v110 = 0;
        v107 = 1;
        v108 = 7;
        goto LABEL_167;
      }

      v108 = 7;
    }

    else
    {
      v108 = 1;
      v109 = 6;
      if (v125 < (v126 + -0.4))
      {
        v110 = 0;
        v107 = 1;
        goto LABEL_167;
      }
    }

    v110 = 0;
    v107 = *(this + 1364);
LABEL_167:
    v111 = *(this + 855);
    if (v111 != v108)
    {
      if (!*(this + 855))
      {
        LOBYTE(v111) = v108;
      }

      *(this + 856) = v111;
      *(this + 855) = v108;
    }

    if (v110)
    {
      v112 = atomic_load((this + 1331));
      if (v112)
      {
LABEL_173:
        v109 = 37;
        goto LABEL_174;
      }

      if (*(this + 848) == 1 && *(this + 1350) != 1)
      {
        v109 = 28;
      }

      else
      {
        v122 = *(this + 1272);
        if (!v122)
        {
          goto LABEL_173;
        }

        v123 = atomic_load((v122 + 55));
        if (v123)
        {
          goto LABEL_173;
        }

        v124 = atomic_load((this + 1329));
        if ((v124 & 1) != 0 || a3 && (*(this + 1352) & 1) != 0 && !md::Label::checkReplacementLabelReady(this, a3, v102, *(*(a2 + 424) + 336)))
        {
          goto LABEL_173;
        }

        v109 = 29;
      }
    }

LABEL_174:
    if (v107)
    {
      v64 = this;
      v65 = 8;
LABEL_176:
      v66 = v109;
      goto LABEL_94;
    }

    v115 = this + 592;
    *(this + 608) = 0;
    *(this + 592) = 0u;
    if ((*(**(this + 8) + 368))(*(this + 8)))
    {
      *(this + 796) = 1065353216;
      v116 = *(*v69 + 50);
      if (v116 != 0.0)
      {
        v137 = v116 * (40075017.0 * *(v8 + 304)) / *(v8 + 476) + 1.0;
        *(this + 796) = v137;
      }

      *(this + 792) = 0;
      goto LABEL_184;
    }

    if (*(this + 257) == 1)
    {
      if (*(this + 164) == 1)
      {
        v220 = *(this + 244) <= 10.0 && *(this + 392) < 18.0;
        if ((*(v8 + 23) | v220))
        {
          v225 = 2;
        }

        else
        {
          v225 = 3;
        }
      }

      else
      {
        v225 = 1;
      }

      v227 = *(this + 256);
      if (v227 != v225)
      {
        *(this + 1383) = v227 != 0;
        *(this + 256) = v225;
      }

      *(this + 800) = 0;
      *(this + 792) = 0;
      if (*(this + 258) == 1)
      {
        if (v225 >= 2u)
        {
          v228 = -1.5;
          if (v225 == 3)
          {
            v228 = 1.0;
          }

          *(this + 800) = v228;
        }

        if (v225 != 3 && (*(v8 + 19) & 1) != 0)
        {
          *(this + 796) = *(this + 244);
        }

        v131 = 1.0;
        if (*(v8 + 424) <= 0.0)
        {
LABEL_184:
          v117 = *(this + 800);
          if (v117 == 0.0)
          {
            if ((*(this + 164) & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          else
          {
            if ((*(this + 164) & 1) == 0)
            {
              goto LABEL_240;
            }

            v118 = 0;
            v119 = *(this + 224) * v117;
            do
            {
              *(v283.f64 + v118) = *(this + 152 + v118) * v119;
              v118 += 4;
            }

            while (v118 != 12);
            v120 = 0;
            *v272 = v283.f64[0];
            *&v272[8] = LODWORD(v283.f64[1]);
            do
            {
              v283.f64[v120] = *&v272[4 * v120];
              ++v120;
            }

            while (v120 != 3);
            for (i = 0; i != 3; ++i)
            {
              *(v115 + i * 8) = *(v115 + i * 8) + v283.f64[i];
            }
          }

          if (*(this + 180) == 1)
          {
            if ((*(this + 852) & 1) == 0)
            {
              v127 = fabsf(*(this + 788));
              if (v127 > 0.93)
              {
                v128 = v127;
                if (v127 <= 0.985 && *(this + 184) == HIBYTE(v282))
                {
                  v129 = fminf(-*(this + 216), 0.0);
                }

                else
                {
                  v129 = fmaxf(*(this + 212), 0.0);
                }

                v138 = v128 * 66.6667302 + -65.6667302;
                v139 = fmin(fmax(v138, 0.0), 1.0) * v129;
                *(this + 832) = v139;
              }
            }

            for (j = 0; j != 3; ++j)
            {
              *&v272[8 * j] = *(this + 168 + 4 * j);
            }

            v141 = 0;
            v142 = *(this + 224) * *(this + 832);
            do
            {
              v283.f64[v141] = v142 * *&v272[v141 * 8];
              ++v141;
            }

            while (v141 != 3);
            for (k = 0; k != 3; ++k)
            {
              *(v115 + k * 8) = *(v115 + k * 8) + v283.f64[k];
            }
          }

LABEL_240:
          for (m = 0; m != 3; ++m)
          {
            v283.f64[m] = *(this + m * 8 + 592) + *(this + m * 8 + 640);
          }

          v145 = v284;
          v146 = this + 616;
          *(this + 616) = v283;
          *(this + 632) = v145;
          v147 = *(this + 796);
          if (v147 != 0.0)
          {
            v148 = 0;
            v149 = *(this + 232) * v147 * *(v8 + 1184);
            do
            {
              v283.f64[v148] = v149 * *(this + 544 + v148 * 8);
              ++v148;
            }

            while (v148 != 3);
            for (n = 0; n != 3; ++n)
            {
              *(v146 + n * 8) = *(v146 + n * 8) + v283.f64[n];
            }
          }

          if (*(this + 259) == 1)
          {
            v151 = 0;
            v152 = (v8 + 864);
            do
            {
              v153 = 0;
              v154 = 0.0;
              v155 = v152;
              do
              {
                v156 = *v155;
                v155 += 4;
                v154 = v154 + *(v146 + v153) * v156;
                v153 += 8;
              }

              while (v153 != 24);
              v283.f64[v151] = *(v8 + 864 + 8 * v151 + 96) + v154;
              ++v151;
              ++v152;
            }

            while (v151 != 4);
            __asm { FMOV            V1.2D, #1.0 }

            *(this + 688) = vcvt_f32_f64(vmulq_f64(v283, vdivq_f64(_Q1, vdupq_lane_s64(v285, 0))));
          }

          else
          {
            *(this + 688) = md::Label::featurePixel(this, a2, 0);
            *(this + 692) = v245;
          }

          if (*a4 == 1 && *(this + 1354) == 1)
          {
            v161 = 0;
            v162 = 0;
            v163 = *(a2 + 424);
            v164 = v163 + 1136;
            v165 = v163 + 1144;
            do
            {
              v166 = *(this + 688 + 4 * v162);
              if (v166 < *(v164 + 4 * v162))
              {
                v109 = 2;
                goto LABEL_262;
              }

              v167 = *(v165 + 4 * v162);
              v162 = 1;
              v168 = (v166 < v167) & ~v161;
              v161 = 1;
            }

            while ((v168 & 1) != 0);
            if (v166 >= v167)
            {
              v109 = 2;
            }
          }

LABEL_262:
          if ((*(**(*(a2 + 168) + 32) + 24))(*(*(a2 + 168) + 32)))
          {
            if (*(this + 1290) == 1 && *(*v69 + 261) <= 3u)
            {
              v169 = (*(**(*(a2 + 168) + 32) + 104))(*(*(a2 + 168) + 32), this + 688, *(this + 1296));
              if (v169 != *(this + 1296))
              {
                *(this + 320) = v169;
                v170 = 32 * v169;
                if (v169 >= 8)
                {
                  v170 = 0;
                }

                *(this + 321) = v170;
                *(this + 1296) = v169;
              }
            }
          }

          if (v109 != 37)
          {
            v171 = atomic_load((this + 1328));
            if ((v171 & 1) == 0)
            {
              if (*(this + 288))
              {
                *(this + 288) = 0;
                *(this + 1335) = 1;
              }

              if (*(this + 844) == 1)
              {
                *(this + 845) = v109;
                *(this + 1378) = 0;
                return;
              }

LABEL_331:
              v207 = 3;
              goto LABEL_332;
            }
          }

          v172 = *(this + 264);
          v173 = v172;
          if (!v172)
          {
            v173 = *(this + 272);
          }

          v174 = *(this + 56);
          v175 = *(a2 + 3336);
          if (*(a2 + 3407) != 1 || v174 == v175)
          {
            if (v173)
            {
              v249 = v172 == 0;
              v182 = *(this + 404);
              v183 = *(this + 1295);
              *(this + 1295) = v182;
              v246 = v175;
              v247 = v174;
              if (v172)
              {
                (*(*v172 + 72))(v172, a2);
                v226 = *(this + 264);
                v283.f64[0] = 0.0;
                v109 = (*(*v226 + 80))(v226, a2, this + 688, &v283);
                v248 = 0;
                v250 = 37;
              }

              else
              {
                if (v182 == v183)
                {
                  (*(**(this + 272) + 72))(*(this + 272), a2);
                }

                v248 = v182 == v183;
                v184 = *(this + 272);
                v283.f64[0] = 0.0;
                v250 = (*(*v184 + 80))(v184, a2, this + 688, &v283);
                v109 = 37;
              }

              v181 = v172 != 0;
              LODWORD(v283.f64[1]) = 0;
              *(v283.f64 + 1) = 7.29112202e-304;
              LOBYTE(v283.f64[0]) = 0;
              if (((v251 | (*(*v173 + 768))(v173, a2, v182 != v183, &v283)) & 1) != 0 || !md::LabelPlacement::operator==((this + 312), (this + 317)) || *(this + 52) != *(*(this + 8) + 132) || v247 != v246 || *(this + 1383) == 1)
              {
                md::Label::createNextPart(this, a2, &v283);
                if (!*(this + 264))
                {
                  goto LABEL_350;
                }

                v181 = 0;
              }

              v179 = v248;
              v180 = v249;
LABEL_298:
              v185 = *(this + 272);
              if (v185)
              {
                v186 = *(this + 264);
                if (v186)
                {
                  v179 = 1;
                }

                if (v179)
                {
                  if (v180)
                  {
                    goto LABEL_300;
                  }
                }

                else
                {
                  (*(*v185 + 72))(*(this + 272), a2);
                }

                if ((*(this + 1372) & 1) == 0)
                {
                  v242 = *(this + 272);
                  v283.f64[0] = 0.0;
                  v250 = (*(*v242 + 80))(v242, a2, this + 688, &v283);
                }
              }

              v186 = *(this + 264);
LABEL_300:
              if (!v186)
              {
                goto LABEL_451;
              }

              if (!v181)
              {
                (*(*v186 + 72))(v186, a2);
                v187 = *(this + 264);
                v283.f64[0] = 0.0;
                v109 = (*(*v187 + 80))(v187, a2, this + 688, &v283);
                v186 = *(this + 264);
              }

              if (!v186 || (v109 & 0xFB) == 0xB || (*(this + 1372) & 1) != 0)
              {
LABEL_451:
                *(this + 1371) = 0;
                if (!*(this + 272))
                {
                  v64 = this;
                  v65 = 2;
                  goto LABEL_176;
                }

                if (v250 == 37)
                {
                  goto LABEL_312;
                }

                v207 = 2;
                LOBYTE(v109) = v250;
              }

              else
              {
                if (v109 == 37)
                {
                  *(this + 1371) = 1;
                  (*(*v186 + 104))(v186, a2);
                  v188 = *v69;
                  v189 = (*v69)[40];
                  if (!v189)
                  {
                    *v272 = 0;
                    v272[2] = 6;
                    v221 = v188[42];
                    v222 = v188[43];
                    while (1)
                    {
                      if (v221 == v222)
                      {
                        goto LABEL_397;
                      }

                      v223 = !*v221 && *(v221 + 1) == 0;
                      if (v223 && *(v221 + 2) == 6)
                      {
                        break;
                      }

                      v221 += 16;
                    }

                    if (v221 != v222)
                    {
                      v229 = *(v221 + 8);
                      if ((*(v229 + 12) & 1) == 0)
                      {
                        v230 = *v229;
                        *(v229 + 12) = 1;
                        if (*v188)
                        {
                          v231 = md::LabelStyle::styleQueryForComponent(v188, 0, 0);
                          v232 = *v231;
                          if (*v231)
                          {
                            v233 = v231[1];
                            if (v233)
                            {
                              atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v283, v232, v233);
                            if (v233)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v233);
                            }

                            if (v286 == 1)
                            {
                              v234 = *(v188 + 26);
                              v235 = v234 >= 0x17 ? 23 : v234;
                              *(v230 + 8) = 0;
                              *(v230 + 16) = 0;
                              *(v230 + 24) = 0;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v283.f64[0] + 24), 288, v235, 1u, 0);
                              *(v230 + 8) = v236;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v283.f64[0] + 24), 289, v235, 1u, 0);
                              *(v230 + 12) = v237;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v283.f64[0] + 24), 290, v235, 1u, 0);
                              *(v230 + 16) = v238;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v283.f64[0] + 24), 292, v235, 1u, 0);
                              *(v230 + 20) = v239;
                              *(v230 + 24) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v283.f64[0] + 24), 291, v235, 1, 0);
                              *(v230 + 25) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v283.f64[0] + 24), 293, v235, 1, 0);
                              if (v286)
                              {
                                (*(**&v283.f64[0] + 56))(*&v283.f64[0]);
                              }
                            }

                            if (v285)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v285);
                            }

                            if (*&v283.f64[1])
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](*&v283.f64[1]);
                            }
                          }
                        }
                      }

                      operator new();
                    }

LABEL_397:
                    operator new();
                  }

                  v190 = v188[41];
                  if (v190)
                  {
                    atomic_fetch_add_explicit((v190 + 8), 1uLL, memory_order_relaxed);
                  }

                  *(this + 712) = v189;
                  v191 = *(this + 720);
                  *(this + 720) = v190;
                  if (v191)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v191);
                  }

LABEL_312:
                  v192 = *(a2 + 424);
                  v193 = md::Label::boundsForStaging(this);
                  v194 = 0;
                  *&v283.f64[0] = __PAIR64__(v195, LODWORD(v193));
                  v196 = &v283;
                  *&v283.f64[1] = __PAIR64__(v198, v197);
                  v199 = 1;
                  do
                  {
                    if (*(v192 + 1112 + 4 * v194) <= *v196 || *(v192 + 1104 + 4 * v194) >= *(&v283.f64[1] + v194))
                    {
                      if (*a4)
                      {
                        LOBYTE(v109) = 2;
                        goto LABEL_331;
                      }

                      goto LABEL_423;
                    }

                    v200 = v199;
                    v199 = 0;
                    v196 = v283.f64 + 1;
                    v194 = 1;
                  }

                  while ((v200 & 1) != 0);
                  v201 = atomic_load((this + 481));
                  if (v201)
                  {
                    if ((*(a2 + 3655) & 1) != 0 || *(*(a2 + 232) + 23) != 1 || (*(a2 + 3176) & 1) != 0 || *(this + 485) != 2)
                    {
                      v202 = 0;
                      v203 = *(a2 + 3332);
                      v204 = 1;
                      do
                      {
                        v205 = vabds_f32(*(this + 688 + 4 * v202), *(this + 472 + 4 * v202));
                        if ((v204 & 1) == 0)
                        {
                          break;
                        }

                        v204 = 0;
                        v202 = 1;
                      }

                      while (v205 < v203);
                      if ((*(a2 + 3655) & 1) != 0 || v205 >= v203)
                      {
                        *(this + 480) = 1;
                        *(this + 472) = *(this + 688);
                      }
                    }

                    v206 = *(this + 480) == 1 ? *(a2 + 3177) : 0;
                    *(this + 482) = v206 & 1;
                    if (*(this + 485) != 2)
                    {
                      atomic_store(1u, (this + 1332));
                      LOBYTE(v109) = 22;
                      goto LABEL_331;
                    }
                  }

LABEL_423:
                  if ((*(this + 1378) & 1) == 0)
                  {
                    *(this + 1186) = *(this + 856);
                    *(this + 856) = *(this + 855);
                    *(this + 1378) = 1;
                    *(this + 1351) = 1;
                  }

                  v240 = *(this + 264);
                  if (v240 && *(this + 1371) == 1)
                  {
                    if (*(this + 288) != v240)
                    {
                      *(this + 288) = v240;
                      *(this + 1335) = 1;
                    }

                    if (*(this + 1373))
                    {
                      v208 = 0;
                      v209 = 1379;
                      goto LABEL_335;
                    }

                    goto LABEL_336;
                  }

                  v241 = *(this + 272);
                  if (*(this + 288) == v241)
                  {
                    goto LABEL_336;
                  }

                  *(this + 288) = v241;
                  goto LABEL_334;
                }

                v207 = 2;
              }

LABEL_332:
              md::Label::updateStateMachineForStaging(this, v207, v109);
              if (!*(this + 288))
              {
LABEL_336:
                if (*(this + 1378) == 1)
                {
                  v210 = md::LabelStyle::collisionGroupInfo(*v69, *(this + 1290));
                  if (__PAIR64__(*(this + 365), *(this + 364)) != __PAIR64__(BYTE5(v210), BYTE4(v210)) || *(this + 366) != BYTE6(v210) || *v27 != v210)
                  {
                    *v27 = v210;
                    *(this + 366) = BYTE6(v210);
                    *(this + 364) = WORD2(v210);
                    v211 = *(this + 360);
                    v212 = atomic_load((this + 1328));
                    v213 = 1;
                    if ((v212 & 1) == 0)
                    {
                      v213 = *(this + 365);
                      if (!*(this + 365))
                      {
                        v213 = md::Label::defaultCollisionOverlayGroup(this);
                      }
                    }

                    *(this + 369) = v213;
                    v214 = *(this + 328);
                    v215 = BYTE4(v211) + 3;
                    if ((v211 >> 8) >> 24 >= -3)
                    {
                      v216 = 10;
                    }

                    else
                    {
                      v216 = 0;
                    }

                    if ((BYTE4(v211) + 3) > 0xAu)
                    {
                      v215 = v216;
                    }

                    v217 = 1 << v215;
                    v214[8] = v217;
                    v218 = LabelCollisionOverlayGroupToLayersCollided[v213] | v217;
                    v214[9] = v218;
                    v214[11] = 1 << SBYTE6(v211);
                    v214[12] = v211;
                    v219 = *(this + 336);
                    if (v219)
                    {
                      v219[8] = v217;
                      v219[9] = v218;
                      v219[11] = 1 << SBYTE6(v211);
                      v219[12] = v211;
                    }
                  }
                }

                return;
              }

              *(this + 288) = 0;
LABEL_334:
              v208 = 1;
              v209 = 1335;
LABEL_335:
              *(this + v209) = v208;
              goto LABEL_336;
            }

            v177 = this;
            v178 = a2;
            v176 = 0;
          }

          else
          {
            LOBYTE(v283.f64[0]) = 1;
            *(v283.f64 + 1) = 0.0;
            LODWORD(v283.f64[1]) = 0;
            if (v173 && *(this + 844) == 2)
            {
              LOBYTE(v283.f64[1]) = 1;
              LOBYTE(v283.f64[0]) = 0;
            }

            v176 = &v283;
            v177 = this;
            v178 = a2;
          }

          md::Label::createNextPart(v177, v178, v176);
          if (*(this + 264))
          {
            v179 = 0;
            v180 = 0;
            v181 = 0;
            v250 = 37;
            v109 = 37;
            goto LABEL_298;
          }

LABEL_350:
          v64 = this;
          v65 = 2;
          v66 = 8;
          goto LABEL_94;
        }
      }

      else
      {
        v131 = *(this + 240);
      }
    }

    else if ((*(**(this + 8) + 336))(*(this + 8)))
    {
      v131 = *(v8 + 56);
    }

    else if (*(this + 1291) == 4)
    {
      v131 = *(v8 + 64);
    }

    else
    {
      if ((*(this + 854) & 1) == 0)
      {
        *(this + 800) = *(*v69 + 52);
      }

      if (*(this + 853) == 1)
      {
        v131 = *(this + 792);
LABEL_221:
        if (v131 != 0.0)
        {
          v132 = 0;
          v133 = *(this + 232);
          do
          {
            v283.f64[v132] = *(this + 544 + v132 * 8) * v133;
            ++v132;
          }

          while (v132 != 3);
          v134 = 0;
          *v272 = v283;
          *&v272[16] = v284;
          v135 = v131;
          do
          {
            v283.f64[v134] = *&v272[v134 * 8] * v135;
            ++v134;
          }

          while (v134 != 3);
          for (ii = 0; ii != 3; ++ii)
          {
            *(v115 + ii * 8) = *(v115 + ii * 8) + v283.f64[ii];
          }
        }

        goto LABEL_184;
      }

      v131 = *(*v69 + 51);
      if (v131 == 0.0)
      {
        v131 = *(this + 200);
      }
    }

    *(this + 792) = v131;
    goto LABEL_221;
  }
}

void sub_1B2B706B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 - 232);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Label::checkReplacementLabelReady(md::Label *this, md::LabelManager *a2, md::LabelPool *a3, double a4)
{
  v4 = *(this + 164);
  if (v4 == 0.0)
  {
    *(this + 164) = a4;
    v4 = a4;
  }

  if (vabdd_f64(a4, v4) <= 1.0)
  {
    v6 = md::LabelPool::replacementForLabel(a2, this);
    if (v6)
    {
      v5 = *(v6 + 1351);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(result[1]);
    std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((result + 5));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v3, result);
  }
}

void std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(v2, v1);
  }
}

void std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v6, v4);
  }
}

void std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 24));

  v2 = *a1;
}

mdm::zone_mallocator *md::MapNavLabeler::buildAvoidanceRects(md::MapNavLabeler *this, const md::NavContext *a2, void *a3, int a4)
{
  v7 = 0;
  v8 = *(a2 + 97);
  v9 = *(a2 + 96);
  v10 = 0x8E38E38E38E38E39 * ((v8 - v9) >> 3) + 1;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a4)
  {
    v7 = (*(a2 + 78) - *(a2 + 77)) >> 4;
  }

  v11 = v10 + v7;
  v61 = a4;
  if (v10 + v7)
  {
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_42:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v68 = this + 24;
    v12 = mdm::zone_mallocator::instance(this);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v12, v11);
    v14 = *this;
    v15 = *(this + 1);
    v16 = &v13[*this - v15];
    if (v15 != *this)
    {
      v17 = &v13[*this - v15];
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 24;
        v14 = (v14 + 24);
      }

      while (v14 != v15);
      v14 = *this;
    }

    *this = v16;
    *(this + 1) = v13;
    v19 = *(this + 2);
    *(this + 2) = &v13[24 * v11];
    v66 = v14;
    v67 = v19;
    *&v65 = v14;
    *(&v65 + 1) = v14;
    std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(&v65);
    v9 = *(a2 + 96);
    v8 = *(a2 + 97);
  }

  for (; v9 != v8; v9 += 72)
  {
    if (*(v9 + 56) == 1)
    {
      v63 = *(v9 + 32);
      v64 = *(v9 + 48);
      v20 = a3[3];
      if (!md::LabelLayoutContext::isDistanceClipped(v20, &v63))
      {
        md::LabelLayoutContext::projectPointToPixel(v20, &v63, &v62);
        v22 = gm::Box<float,2>::operator+((v9 + 16), &v62);
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = *(v9 + 64);
        v31 = *(this + 1);
        v32 = *(this + 2);
        if (v31 >= v32)
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *this) >> 3);
          v35 = v34 + 1;
          if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_42;
          }

          v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *this) >> 3);
          if (2 * v36 > v35)
          {
            v35 = 2 * v36;
          }

          if (v36 >= 0x555555555555555)
          {
            v37 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v37 = v35;
          }

          v68 = this + 24;
          if (v37)
          {
            v38 = mdm::zone_mallocator::instance(v21);
            v39 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v38, v37);
          }

          else
          {
            v39 = 0;
          }

          v40 = &v39[24 * v34];
          *v40 = v26;
          *(v40 + 1) = v27;
          *(v40 + 2) = v28;
          *(v40 + 3) = v29;
          *(v40 + 4) = 1065353216;
          v40[20] = v30;
          v41 = *this;
          v42 = *(this + 1);
          v43 = &v40[*this - v42];
          if (*this != v42)
          {
            v44 = &v40[*this - v42];
            do
            {
              v45 = *v41;
              *(v44 + 2) = *(v41 + 2);
              *v44 = v45;
              v44 += 24;
              v41 = (v41 + 24);
            }

            while (v41 != v42);
            v41 = *this;
          }

          v33 = v40 + 24;
          *this = v43;
          *(this + 1) = v40 + 24;
          v46 = *(this + 2);
          *(this + 2) = &v39[24 * v37];
          v66 = v41;
          v67 = v46;
          *&v65 = v41;
          *(&v65 + 1) = v41;
          std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(&v65);
        }

        else
        {
          *v31 = v22;
          *(v31 + 4) = v23;
          *(v31 + 8) = v24;
          *(v31 + 12) = v25;
          *(v31 + 16) = 1065353216;
          v33 = (v31 + 24);
          *(v31 + 20) = v30;
        }

        *(this + 1) = v33;
      }
    }
  }

  if (v61)
  {
    v47 = *(a2 + 77);
    for (i = *(a2 + 78); v47 != i; v47 += 2)
    {
      v49 = *v47;
      v50 = v47[1];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *(v49 + 360);
      std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(this, &v65);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }
    }
  }

  v51 = a3[3];
  v52 = a3[4];
  v53 = *(v52 + 120);
  v54 = *(a3[1] + 176);
  result = md::LabelLayoutContext::isDistanceClipped(v51, v52 + 96);
  if ((result & 1) == 0)
  {
    v56 = v54 * v53;
    if (v56 != 0.0)
    {
      v57 = md::LabelLayoutContext::projectPointToPixel(v51, v52 + 96, &v63);
      *v57.i32 = v56 * 0.5;
      v58.i64[0] = v63;
      v58.i64[1] = v63;
      v59 = vdupq_lane_s32(v57, 0);
      *&v60 = vsubq_f32(v58, v59).u64[0];
      *(&v60 + 1) = vaddq_f32(v58, v59).i64[1];
      v65 = v60;
      return std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(this, &v65);
    }
  }

  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 24) % 0x18uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(v4, v3);
  }

  return a1;
}

double md::MercatorAnchor::worldPointWithRouteElevationOffset(md::MercatorAnchor *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  (*(*this + 56))(this);
  return result;
}

BOOL md::LabelLayoutContext::isDistanceClipped(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 18) == 1 && (*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v3 = v3 + *(a2 + v2) * *(a1 + 160 + v2);
      v2 += 8;
    }

    while (v2 != 24);
    if (v3 > *(a1 + 288))
    {
      return 1;
    }
  }

  for (i = 0; i != 24; i += 8)
  {
    *(&v13 + i) = *(a2 + i) - *(a1 + 136 + i);
  }

  if (*(a1 + 15) == 1)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(&v13 + v5) * *(&v13 + v5);
      v5 += 8;
    }

    while (v5 != 24);
    v7 = sqrt(v6);
  }

  else
  {
    v8 = 0;
    v7 = 0.0;
    do
    {
      v7 = v7 + *(&v13 + v8) * *(a1 + 160 + v8);
      v8 += 8;
    }

    while (v8 != 24);
  }

  if (*(a1 + 1273) != 1 || (v9 = *(a1 + 1276), v10 = *(a1 + 1280), v9 <= v10))
  {
    if (v7 >= *(a1 + 272))
    {
      return v7 > *(a1 + 280);
    }

    return 1;
  }

  return v7 < *(a1 + 256) - *(a1 + 256) * v10 / v9 || v7 > *(a1 + 256) * v10 / v9 + *(a1 + 256);
}

mdm::zone_mallocator *std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(mdm::zone_mallocator *result, _OWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v20[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v7];
    *v13 = *a2;
    *(v13 + 4) = 1065353216;
    v13[20] = 0;
    v14 = *v3;
    v15 = *(v3 + 1);
    v16 = &v13[*v3 - v15];
    if (*v3 != v15)
    {
      v17 = &v13[*v3 - v15];
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 24;
        v14 = (v14 + 24);
      }

      while (v14 != v15);
      v14 = *v3;
    }

    v6 = v13 + 24;
    *v3 = v16;
    *(v3 + 1) = v13 + 24;
    v19 = *(v3 + 2);
    *(v3 + 2) = &v12[24 * v10];
    v20[2] = v14;
    v20[3] = v19;
    v20[0] = v14;
    v20[1] = v14;
    result = std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(v20);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = 1065353216;
    *(v4 + 20) = 0;
    v6 = (v4 + 24);
  }

  *(v3 + 1) = v6;
  return result;
}

void md::LabelNavEtaLabeler::layoutForStagingWithNavContext(uint64_t a1, void *a2, __int128 **a3)
{
  v56[19] = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 184));
  v7 = *(a1 + 152);
  v6 = *(a1 + 160);
  if (v6 != v7)
  {
    v8 = v6 - 3;
    v9 = v6 - 3;
    v10 = v6 - 3;
    do
    {
      v11 = *v10;
      v10 -= 3;
      (*v11)(v9);
      v8 -= 3;
      v12 = v9 == v7;
      v9 = v10;
    }

    while (!v12);
  }

  *(a1 + 160) = v7;
  v13 = *(a1 + 288);
  for (i = *(a1 + 296); i != v13; i -= 8)
  {
    v15 = *(i - 8);
  }

  *(a1 + 296) = v13;
  v16 = *(a1 + 320);
  for (j = *(a1 + 328); j != v16; j -= 8)
  {
    v18 = *(j - 8);
  }

  *(a1 + 328) = v16;
  *(a1 + 252) = 0;
  *(*(a1 + 48) + 40) = *(a2[3] + 52);
  v19 = *(a1 + 48);
  v20 = a2[4];
  std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(__p, v20 + 152);
  std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](&v44, (v20 + 192));
  if ((v19 + 48) != __p)
  {
    *(v19 + 80) = v43;
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *> *>>((v19 + 48), v42);
    std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__assign_multi<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>((v19 + 88), v44, &v45);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v45);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v42);
  v21 = __p[0];
  __p[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (*(a1 + 707) == 1)
  {
    *(a1 + 707) = 0;
    md::LabelNavEtaLabeler::clearETALabels(a1);
  }

  md::LabelNavEtaLabeler::updateLabelPositions(a1, a2, a3);
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  if (v22 != v23)
  {
    while (1)
    {
      geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v22);
      v24 = v51;
      v25 = [v24 label];

      v26 = v51;
      [v26 layoutForStagingWithNavContext:a2];

      v27 = *v25;
      if (*(*v25 + 314))
      {
        break;
      }

LABEL_25:
      v50 = off_1F2A59C08;

      v22 += 24;
      if (v22 == v23)
      {
        goto LABEL_26;
      }
    }

    if (*(v27 + 315) == 1)
    {
      v28 = *(v27 + 313);
      *(v27 + 316) = v28 ^ 1;
      v29 = v28;
    }

    else
    {
      if (*(v27 + 316))
      {
LABEL_24:
        std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100]((a1 + 184), v25);
        goto LABEL_25;
      }

      *(v27 + 316) = 1;
      v29 = 0.0;
    }

    *(v27 + 276) = v29;
    goto LABEL_24;
  }

LABEL_26:
  v30 = +[VKDebugSettings sharedSettings];
  v31 = [v30 traceEtaDebugLog];

  if (v31)
  {
    std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringstream[abi:nn200100](&v50);
    md::LabelNavEtaLabeler::describeDebugState(a1, &v52, 1);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v32 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::str[abi:nn200100](__dst, &v50);
      v33 = v47 >= 0 ? __dst : __dst[0];
      *buf = 136315138;
      v49 = v33;
      _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      if (v47 < 0)
      {
        v35 = __dst[0];
        v36 = mdm::zone_mallocator::instance(v34);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, v35);
      }
    }

    v37 = +[VKDebugSettings sharedSettings];
    [v37 setTraceEtaDebugLog:0];

    v50 = &unk_1F29F0E98;
    v56[0] = &unk_1F29F0EE8;
    v52 = &unk_1F29F0EC0;
    v53 = &unk_1F29F1070;
    if (v55 < 0)
    {
      locale = v54[7].__locale_;
      v40 = mdm::zone_mallocator::instance(v38);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, locale);
    }

    v53 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v54);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C620C0](v56);
  }
}

void sub_1B2B71544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  a44 = &unk_1F29F0EE8;
  if (a40 < 0)
  {
    v47 = a35;
    v48 = mdm::zone_mallocator::instance(v46);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v48, v47);
  }

  std::locale::~locale(&a28);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a44);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    if (i[40] == 1)
    {
      geo::QuadTile::computeHash(i + 16);
      i[40] = 0;
    }

    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_31;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = *(i + 4);
      if (v5 >= *&v6)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_31:
      operator new();
    }

    v12 = *(i + 4);
    while (1)
    {
      v13 = *(v11 + 1);
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_31;
      }

LABEL_26:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    if (v11[40] == 1)
    {
      geo::QuadTile::computeHash(v11 + 16);
      v11[40] = 0;
      v14 = *(v11 + 4);
      if (i[40])
      {
        v15 = (i[17] + ((i[16] - 0x61C8864680B583EBLL) << 6) + ((i[16] - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (i[16] - 0x61C8864680B583EBLL);
        v16 = (*(i + 5) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
        v12 = (*(i + 6) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
        *(i + 4) = v12;
        i[40] = 0;
      }

      else
      {
        v12 = *(i + 4);
      }
    }

    else
    {
      v14 = *(v11 + 4);
    }

    if (v14 != v12 || v11[16] != i[16] || v11[17] != i[17] || *(v11 + 5) != *(i + 5) || *(v11 + 6) != *(i + 6))
    {
      goto LABEL_26;
    }
  }

  return a1;
}

void *std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 25);
      if (*(v4 + 25) > v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }
      }

      else
      {
        v9 = a1 + 1;
        if (v3)
        {
          v9 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 25);
              if (v8 <= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 <= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v9 = *(v2 + 1);
        *(v6 + 25) = *(v2 + 25);
        *(v6 + 16) = v9;
        v11 = v2[6];
        v10 = v2[7];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(v6 + 56);
        *(v6 + 48) = v11;
        *(v6 + 56) = v10;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t std::optional<gdc::ResourceKey>::operator=[abi:nn200100]<gdc::ResourceKey const&,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      geo::small_vector_base<unsigned char>::copy((a1 + 8), (a2 + 8), (a1 + 40));
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = a1 + 40;
    *(a1 + 24) = a1 + 40;
    *(a1 + 32) = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = 1;
  }

  return a1;
}

void std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__assign_multi<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>(uint64_t ***a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = (a1 + 1);
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 25);
      *(v9 + 25) = v14;
      v15 = *v8;
      v16 = (a1 + 1);
      v17 = (a1 + 1);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 <= *(v15 + 25))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = *(v15 + 8);
        }

        while (v15);
        v17 = (v16 + 1);
      }

LABEL_16:
      std::__tree<unsigned short>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void md::LabelNavEtaLabeler::updateLabelPositions(id *a1, void *a2, __int128 **a3)
{
  v4 = a1;
  v393 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v336 = [v5 routeInfo];

  v379 = 0;
  v6 = geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v4[3], &v379);
  if (v336)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 != 1)
  {
    v8 = v4 + 72;
    v9 = v4 + 76;
    v10 = v4 + 77;
    v11 = v4 + 73;
    v12 = v4[73];
    v13 = *(v4 + 38);
    v4[76] = v4[72];
    v4[77] = v12;
    *(v4 + 36) = v13;
    v14 = v4[79];
    v15 = v4[75];
    v4[79] = v15;
    v4[75] = v14;
    v16 = v12 + 2;
    if (!v15)
    {
      v16 = (v4 + 76);
    }

    *v16 = v10;
    if (v14)
    {
      v17 = (v4[73] + 16);
    }

    else
    {
      v17 = (v4 + 72);
    }

    *v17 = v11;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(v4[73]);
    v4[75] = 0;
    v4[72] = v11;
    v4[73] = 0;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(v4[85]);
    v4[87] = 0;
    v338 = v4 + 85;
    v4[84] = v4 + 85;
    v4[85] = 0;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(v4[81]);
    v4[83] = 0;
    v343 = v4 + 81;
    v4[80] = v4 + 81;
    v4[81] = 0;
    v18 = +[VKDebugSettings sharedSettings];
    v359 = v4;
    if ([v18 forceEtaLabelPlacement])
    {
    }

    else
    {
      v19 = *(v4 + 449);

      v107 = v19 == 1;
      v4 = v359;
      if (!v107)
      {
        v347 = 0;
LABEL_16:
        if ((md::LabelNavEtaLabeler::hasPolylineForRoute(v4, v336) & 1) == 0)
        {
          v164 = [(VKRouteInfo *)v336 route];
          md::LabelNavEtaLabeler::extinguishLabels(v4, v164);

          goto LABEL_447;
        }

        if (v4 + 27 != a3)
        {
          std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::AvoidanceRectWithPriority*,md::AvoidanceRectWithPriority*>((v4 + 27), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
        }

        *(v4 + 62) = 0.01 / *(a2[1] + 176);
        frustumForScreenRect(v378, *(a2[4] + 136), a2[3], *(a2[4] + 32), *(a2[4] + 40));
        v21 = v336;
        memset(v376, 0, sizeof(v376));
        v377 = 1065353216;
        v346 = v21;
        if ((v4[88] & 1) == 0)
        {
          v22 = 0;
          *v391 = xmmword_1B33B0920;
          do
          {
            std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(v376, *&v391[v22], &v391[v22]);
            v22 += 8;
          }

          while (v22 != 16);
        }

        *v391 = 4;
        std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(v376, 4uLL, v391);

        std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v359 + 62));
        *(v359 + 64) = 0;
        *(v359 + 61) = v359 + 496;
        *(v359 + 62) = 0;
        std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v359 + 66));
        *(v359 + 68) = 0;
        v337 = (v359 + 528);
        *(v359 + 65) = v359 + 528;
        *(v359 + 66) = 0;
        v389[0] = &unk_1F29F10F0;
        v389[1] = v376;
        v389[3] = v389;
        md::LabelNavEtaLabeler::extractAndSortAnnotations(v359, v21, v389);
        std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v389);
        v374 = 0u;
        v375 = 0u;
        v372 = 0u;
        v373 = 0u;
        v23 = *(v359 + 3);
        obj = [v23 alternateRoutes];

        v340 = v8;
        v349 = v11;
        v24 = [obj countByEnumeratingWithState:&v372 objects:v388 count:16];
        if (v24)
        {
          v25 = *v373;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v373 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v372 + 1) + 8 * i);
              memset(v391, 0, sizeof(v391));
              LODWORD(v392) = 1065353216;
              v28 = 24;
              v29 = &qword_1B33B31C0;
              v30 = &qword_1B33B31C0;
              do
              {
                v31 = *v30++;
                std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(v391, v31, v29);
                v29 = v30;
                v28 -= 8;
              }

              while (v28);
              buf[0].n128_u64[0] = 4;
              std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(v391, 4uLL, buf);
              v387[0] = &unk_1F29F1138;
              v387[1] = v391;
              v387[3] = v387;
              md::LabelNavEtaLabeler::extractAndSortAnnotations(v359, v27, v387);
              std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v387);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v391);
            }

            v24 = [obj countByEnumeratingWithState:&v372 objects:v388 count:16];
          }

          while (v24);
        }

        v32 = v359;
        v33 = *v9;
        v34 = *(v359 + 84);
        v383 = *v340;
        v382 = v349;
        v381 = v33;
        v380 = v10;
        v335 = (v359 + 672);
        buf[0].n128_u64[0] = v359 + 672;
        buf[0].n128_u64[1] = v34;
        std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(v391, &v383, &v382, &v381, &v380, buf);
        v35 = *v340;
        v36 = *(v359 + 80);
        v383 = *v9;
        v382 = v10;
        v381 = v35;
        v380 = v349;
        buf[0].n128_u64[0] = v359 + 640;
        buf[0].n128_u64[1] = v36;
        std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(v391, &v383, &v382, &v381, &v380, buf);
        v37 = *(v359 + 80);
        if (v37 != v343)
        {
          v38 = (v359 + 464);
          obja = (v359 + 264);
          do
          {
            v39 = v37[4];
            v40 = *v38;
            if (!*v38)
            {
              goto LABEL_41;
            }

            v41 = v38;
            do
            {
              v42 = v40[4];
              v43 = v42 >= v39;
              v44 = v42 < v39;
              if (v43)
              {
                v41 = v40;
              }

              v40 = v40[v44];
            }

            while (v40);
            if (v41 == v38 || v39 < v41[4])
            {
LABEL_41:
              v41 = v38;
            }

            v45 = v37[4];
            v46 = *obja;
            if (!*obja)
            {
              goto LABEL_50;
            }

            v47 = (v359 + 264);
            do
            {
              v48 = v46[4];
              v43 = v48 >= v45;
              v49 = v48 < v45;
              if (v43)
              {
                v47 = v46;
              }

              v46 = v46[v49];
            }

            while (v46);
            if (v47 == obja || v45 < v47[4])
            {
LABEL_50:
              v47 = (v359 + 264);
            }

            v50 = v359;
            if (v41 != (v359 + 464))
            {
              v51 = v41[6];
              if (v41[5] != v51)
              {
                v51 = v41[5];
                while ((md::RouteRangeAnnotationRequest::operator==(v37 + 4, v51) & 1) == 0)
                {
                  v51 += 384;
                  if (v51 == v41[6])
                  {
                    v51 = v41[6];
                    goto LABEL_88;
                  }
                }

                v52 = v41[6];
                if (v51 != v52)
                {
                  v53 = v51 + 384;
                  if (v51 + 384 != v52)
                  {
                    do
                    {
                      v54 = *v53;
                      *v53 = 0;
                      v55 = *v51;
                      *v51 = v54;

                      v56 = *(v53 + 8);
                      *(v53 + 8) = 0;
                      v57 = *(v51 + 8);
                      *(v51 + 8) = v56;

                      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v51 + 16), (v53 + 16));
                      if (*(v51 + 72))
                      {
                        v58 = *(v51 + 64);
                        if (v58)
                        {
                          do
                          {
                            v59 = *v58;
                            operator delete(v58);
                            v58 = v59;
                          }

                          while (v59);
                        }

                        *(v51 + 64) = 0;
                        v60 = *(v51 + 56);
                        if (v60)
                        {
                          for (j = 0; j != v60; ++j)
                          {
                            *(*(v51 + 48) + 8 * j) = 0;
                          }
                        }

                        *(v51 + 72) = 0;
                      }

                      v62 = *(v53 + 48);
                      *(v53 + 48) = 0;
                      v63 = *(v51 + 48);
                      *(v51 + 48) = v62;
                      if (v63)
                      {
                        operator delete(v63);
                      }

                      v64 = *(v53 + 64);
                      v65 = *(v53 + 56);
                      *(v51 + 64) = v64;
                      *(v51 + 56) = v65;
                      *(v53 + 56) = 0;
                      v66 = *(v53 + 72);
                      *(v51 + 72) = v66;
                      *(v51 + 80) = *(v53 + 80);
                      if (v66)
                      {
                        v67 = *(v64 + 8);
                        if ((v65 & (v65 - 1)) != 0)
                        {
                          if (v67 >= v65)
                          {
                            v67 %= v65;
                          }
                        }

                        else
                        {
                          v67 &= v65 - 1;
                        }

                        *(*(v51 + 48) + 8 * v67) = v51 + 64;
                        *(v53 + 64) = 0;
                        *(v53 + 72) = 0;
                      }

                      v69 = (v51 + 96);
                      v68 = *(v51 + 96);
                      *(v51 + 88) = *(v53 + 88);
                      if (v68)
                      {
                        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v51 + 96));
                        v70 = *v69;
                        v72 = mdm::zone_mallocator::instance(v71);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::PolylineCollider>>(v72, v70);
                        *v69 = 0;
                        *(v51 + 104) = 0;
                        *(v51 + 112) = 0;
                      }

                      v73 = 0;
                      *(v51 + 96) = *(v53 + 96);
                      *(v51 + 112) = *(v53 + 112);
                      *(v53 + 104) = 0;
                      *(v53 + 112) = 0;
                      *(v53 + 96) = 0;
                      *(v51 + 136) = *(v53 + 136);
                      *(v51 + 128) = *(v53 + 128);
                      *(v51 + 140) = *(v53 + 140);
                      *(v51 + 144) = *(v53 + 144);
                      *(v51 + 148) = *(v53 + 148);
                      *(v51 + 152) = *(v53 + 152);
                      *(v51 + 188) = *(v53 + 188);
                      *(v51 + 172) = *(v53 + 172);
                      *(v51 + 156) = *(v53 + 156);
                      *(v51 + 204) = *(v53 + 204);
                      *(v51 + 208) = *(v53 + 208);
                      *(v51 + 216) = *(v53 + 216);
                      do
                      {
                        *(v51 + v73 + 224) = *(v51 + v73 + 608);
                        v73 += 16;
                      }

                      while (v73 != 128);
                      v74 = *(v51 + 352);
                      if (v74)
                      {
                        v75 = *(v51 + 360);
                        v76 = *(v51 + 352);
                        if (v75 != v74)
                        {
                          do
                          {
                            v77 = v75 - 72;
                            v63 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v75 - 40);
                            v75 = v77;
                          }

                          while (v77 != v74);
                          v76 = *(v51 + 352);
                        }

                        *(v51 + 360) = v74;
                        v78 = mdm::zone_mallocator::instance(v63);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineSampleDebug>(v78, v76);
                        *(v51 + 352) = 0;
                        *(v51 + 360) = 0;
                        *(v51 + 368) = 0;
                      }

                      *(v51 + 352) = *(v53 + 352);
                      *(v51 + 368) = *(v53 + 368);
                      *(v53 + 352) = 0;
                      *(v53 + 360) = 0;
                      *(v53 + 368) = 0;
                      v53 += 384;
                      v51 += 384;
                    }

                    while (v53 != v52);
                    v52 = v41[6];
                    v50 = v359;
                  }

                  while (v52 != v51)
                  {
                    v52 -= 384;
                    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(v52);
                  }

                  v41[6] = v51;
                }
              }

LABEL_88:
              if (v41[5] == v51)
              {
                v79 = v41[1];
                v80 = v41;
                if (v79)
                {
                  do
                  {
                    v81 = v79;
                    v79 = *v79;
                  }

                  while (v79);
                }

                else
                {
                  do
                  {
                    v81 = v80[2];
                    v107 = *v81 == v80;
                    v80 = v81;
                  }

                  while (!v107);
                }

                if (*(v50 + 57) == v41)
                {
                  *(v50 + 57) = v81;
                }

                --*(v50 + 60);
                std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v50 + 58), v41);
                *v391 = v41 + 5;
                std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::__destroy_vector::operator()[abi:nn200100](v391);

                v83 = mdm::zone_mallocator::instance(v82);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,void *>>(v83, v41);
                v50 = v359;
              }
            }

            if (v47 != obja)
            {
              v84 = v47[5];
              v85 = v47[6];
              if (v84 != v85)
              {
                v85 = v47[5];
                while ((md::RouteRangeAnnotationRequest::operator==(v37 + 4, v85) & 1) == 0)
                {
                  v85 += 72;
                  v84 += 72;
                  if (v85 == v47[6])
                  {
                    v85 = v47[6];
                    goto LABEL_111;
                  }
                }

                v86 = v47[6];
                if (v85 != v86)
                {
                  if (v85 + 72 != v86)
                  {
                    v87 = v47[5];
                    v88 = -v87;
                    v89 = v87 + v84;
                    do
                    {
                      v90 = (v89 + v88);
                      v91 = *(v89 + v88 + 72);
                      v90[9] = 0;
                      v92 = *(v89 + v88);
                      *v90 = v91;

                      v93 = *(v89 + v88 + 80);
                      v90[10] = 0;
                      v94 = *(v89 + v88 + 8);
                      v90[1] = v93;

                      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v89 + v88 + 16), (v89 + v88 + 88));
                      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v89 + v88 + 48, v89 + v88 + 120);
                      v89 += 72;
                      v85 = v89 + v88;
                    }

                    while (v89 + v88 + 72 != v86);
                    v86 = v47[6];
                    v50 = v359;
                  }

                  while (v86 != v85)
                  {
                    v86 -= 72;
                    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v86);
                  }

                  v47[6] = v85;
                }
              }

LABEL_111:
              if (v47[5] == v85)
              {
                std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::erase(v50 + 256, v47);
              }
            }

            v95 = GEOGetVectorKitLabelNavEtaLabelerLog();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              md::RouteRangeAnnotationRequest::to_string(v391, (v37 + 4));
              v96 = v391;
              if ((v391[23] & 0x80u) != 0)
              {
                v96 = *v391;
              }

              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v96;
              _os_log_impl(&dword_1B2754000, v95, OS_LOG_TYPE_INFO, "RouteRangeAnnotationRequest dropped - %s", buf, 0xCu);
              if (v391[23] < 0)
              {
                operator delete(*v391);
              }
            }

            v97 = v37[1];
            if (v97)
            {
              do
              {
                v98 = v97;
                v97 = *v97;
              }

              while (v97);
            }

            else
            {
              do
              {
                v98 = v37[2];
                v107 = *v98 == v37;
                v37 = v98;
              }

              while (!v107);
            }

            v37 = v98;
            v32 = v359;
            v38 = (v359 + 464);
          }

          while (v98 != v343);
        }

        v99 = *(v32 + 520);
        v100 = v346;
        if (v99 == v337)
        {
LABEL_194:
          v162 = *(v32 + 560);
          v163 = *(v32 + 552);
          while (v162 != v163)
          {
            v162 -= 56;
            std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v162);
          }

          *(v32 + 560) = v163;
          if (*(v32 + 136) == 1)
          {
            v342 = v100;
            buf[0].n128_u64[0] = [(VKRouteInfo *)v342 route];
            *v391 = buf;
            objc = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v32 + 488), buf[0].n128_u64[0], v391);

            v165 = v359;
            if (objc[5] != objc[6])
            {
              v166 = *(*(a2[1] + 168) + 32);
              v167 = (*(*v166 + 64))(v166);
              v169 = objc[5];
              v168 = objc[6];
              if (v169 != v168)
              {
                v170 = *v167;
                v345 = v170 | (*(v167 + 1) << 32);
                v351 = v167[1];
                while (1)
                {
                  v171 = v169;
                  v172 = md::RouteRangeAnnotationRequest::etaType(v169[1]);
                  v169 = objc[6];
                  if (v169 != v171)
                  {
                    v173 = 0xAAAAAAAAAAAAAAABLL * ((v169 - v171) >> 4);
                    v169 = v171;
                    do
                    {
                      v174 = &v169[6 * (v173 >> 1)];
                      if (md::RouteRangeAnnotationRequest::etaType(v174[1]) > v172)
                      {
                        v173 >>= 1;
                      }

                      else
                      {
                        v169 = v174 + 6;
                        v173 += ~(v173 >> 1);
                      }
                    }

                    while (v173);
                  }

                  v176 = (v172 > 4 || ((1 << v172) & 0x19) == 0) && v169 > v171;
                  v165 = v359;
                  if (!v176)
                  {
                    goto LABEL_215;
                  }

                  v177 = 0;
                  v178 = v171 + 3;
                  v179 = v169;
                  while (1)
                  {
                    v180 = [*(v178 - 2) start];
                    v181 = v178 - 3;
                    if (v170 <= v180 && (v170 == v180 ? (v182 = v351 < *(&v180 + 1)) : (v182 = 1), v182) || (v183 = [*(v178 - 2) end], v170 >= v183) && (v170 == v183 ? (v184 = v351 <= *(&v183 + 1)) : (v184 = 0), !v184))
                    {
                      v185 = [*(v178 - 2) start];
                      if (v170 < v185 || v170 == v185 && v351 < *(&v185 + 1))
                      {
                        v186 = geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v178 - 3);
                        if (v177)
                        {
                          v187 = 256;
                        }

                        else
                        {
                          v187 = 259;
                        }

                        *v186 = v187;
                        v177 = 1;
                        goto LABEL_240;
                      }

                      *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v178 - 3) = 258;
                      goto LABEL_239;
                    }

                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v178 - 3) = 257;
                    if (md::RouteRangeAnnotationRequest::etaType(*(v178 - 2)) == 2)
                    {
                      break;
                    }

LABEL_240:
                    v193 = v178 + 3;
                    v178 += 6;
                    if (v193 == v169)
                    {
                      v181 = v169;
                      goto LABEL_243;
                    }
                  }

                  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*v178);
                  v178[2] = 0;
                  *(v178 - 1) = v178;
                  *v178 = 0;
                  v188 = [*(v178 - 2) end];
                  *v391 = v170;
                  *&v391[4] = v351;
                  *&v391[8] = v188;
                  md::RouteRangeAnnotationRequest::addAnnotatableSection((v178 - 3), v391);
                  v189 = *(v359 + 3);
                  v190 = [v189 routeInfo];
                  v191 = [v190 route];

                  [v191 distanceFromPoint:v345 toPoint:{objc_msgSend(*(v178 - 2), "end")}];
                  if (v192 < 200.0)
                  {
                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v178 - 3) = 258;

LABEL_239:
                    v179 = (v178 - 3);
                    goto LABEL_240;
                  }

LABEL_243:
                  v165 = v359;
                  if (v179 != v169)
                  {
                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v179) = 260;
                  }

                  if (v181 != v169)
                  {
                    v194 = [v181[1] etaDescription];
                    v195 = [v194 routeEtaType] != 2;

                    v196 = (v181 + 6);
                    v197 = v196 == v169 || v195;
                    v165 = v359;
                    if ((v197 & 1) == 0)
                    {
                      do
                      {
                        *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v359 + 69, v196) = 256;
                        v196 += 6;
                      }

                      while (v196 != v169);
                    }
                  }

LABEL_215:
                  v168 = objc[6];
                  if (v169 == v168)
                  {
                    v169 = objc[5];
                    break;
                  }
                }
              }

              while (v169 != v168)
              {
                *v391 = [v169[1] start];
                v198 = *(*(a2[1] + 168) + 32);
                v199 = (*(*v198 + 96))(v198, v391);
                *(geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v165 + 69, v169) + 2) = v199;
                v169 += 6;
              }
            }

            v32 = v359;
          }

          v200 = *v335;
          if (*v335 != v338)
          {
            do
            {
              v201 = GEOGetVectorKitLabelNavEtaLabelerLog();
              if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
              {
                md::RouteRangeAnnotationRequest::to_string(v391, (v200 + 4));
                v202 = (v391[23] & 0x80u) == 0 ? v391 : *v391;
                buf[0].n128_u32[0] = 136315138;
                *(buf[0].n128_u64 + 4) = v202;
                _os_log_impl(&dword_1B2754000, v201, OS_LOG_TYPE_INFO, "RouteRangeAnnotationRequest added - %s", buf, 0xCu);
                if (v391[23] < 0)
                {
                  operator delete(*v391);
                }
              }

              v203 = v200[1];
              if (v203)
              {
                do
                {
                  v204 = v203;
                  v203 = *v203;
                }

                while (v203);
              }

              else
              {
                do
                {
                  v204 = v200[2];
                  v107 = *v204 == v200;
                  v200 = v204;
                }

                while (!v107);
              }

              v200 = v204;
              v32 = v359;
            }

            while (v204 != v338);
          }

          md::LabelNavEtaLabeler::setupRouteLabelingState(v32, a2, v378, v346, 1, 0, v347);
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v205 = *(v32 + 24);
          v206 = [v205 alternateRoutes];

          v207 = [v206 countByEnumeratingWithState:&v368 objects:v386 count:16];
          if (v207)
          {
            v208 = *v369;
            do
            {
              for (k = 0; k != v207; ++k)
              {
                if (*v369 != v208)
                {
                  objc_enumerationMutation(v206);
                }

                md::LabelNavEtaLabeler::setupRouteLabelingState(v359, a2, v378, *(*(&v368 + 1) + 8 * k), 0, [*(*(&v368 + 1) + 8 * k) etaComparisionToMain], v347);
              }

              v207 = [v206 countByEnumeratingWithState:&v368 objects:v386 count:16];
            }

            while (v207);
          }

          v210 = CACurrentMediaTime();
          v211 = [(VKRouteInfo *)v346 route];
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v212 = *(v359 + 3);
          v213 = [v212 alternateRoutes];

          v214 = [v213 countByEnumeratingWithState:&v364 objects:v385 count:16];
          if (v214)
          {
            v215 = *v365;
            do
            {
              for (m = 0; m != v214; ++m)
              {
                if (*v365 != v215)
                {
                  objc_enumerationMutation(v213);
                }

                v217 = *(*(&v364 + 1) + 8 * m);
                if ([v217 hasFocus])
                {
                  v218 = [v217 route];

                  v211 = v218;
                }
              }

              v214 = [v213 countByEnumeratingWithState:&v364 objects:v385 count:16];
            }

            while (v214);
          }

          v219 = v359;
          if (md::LabelNavEtaLabeler::animationCompletionPercentage(v359, v346) >= 1.0)
          {
            v220 = [(VKRouteInfo *)v346 route];
            md::LabelNavEtaLabeler::updateEtaFeature(v359, a2, v378, v346, 1u, v220 == v211, v347, v210);

            v219 = v359;
          }

          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v221 = *(v219 + 3);
          v222 = [v221 alternateRoutes];

          v223 = [v222 countByEnumeratingWithState:&v360 objects:v384 count:16];
          v224 = v359;
          if (v223)
          {
            v225 = *v361;
            do
            {
              for (n = 0; n != v223; ++n)
              {
                if (*v361 != v225)
                {
                  objc_enumerationMutation(v222);
                }

                v227 = *(*(&v360 + 1) + 8 * n);
                if (md::LabelNavEtaLabeler::hasPolylineForRoute(v224, v227))
                {
                  if (md::LabelNavEtaLabeler::animationCompletionPercentage(v224, v227) < 1.0)
                  {
                    continue;
                  }

                  v228 = [(VKRouteInfo *)v227 route];
                  md::LabelNavEtaLabeler::updateEtaFeature(v224, a2, v378, v227, 0, v228 == v211, v347, v210);
                }

                else
                {
                  v228 = [(VKRouteInfo *)v227 route];
                  md::LabelNavEtaLabeler::extinguishLabels(v224, v228);
                }

                v224 = v359;
              }

              v223 = [v222 countByEnumeratingWithState:&v360 objects:v384 count:16];
            }

            while (v223);
          }

          objd = v359 + 705;
          v229 = *(v359 + 705);
          v230 = v346;
          v231 = *(a2[3] + 32);
          v232 = v230;
          v233 = *(*(a2[1] + 168) + 32);
          v234 = (*(*v233 + 80))(v233);
          if (v234)
          {
            v235 = v232;
            v238 = *(v234 + 48);
            v237 = v234 + 48;
            v236 = v238;
            if (!v238)
            {
              goto LABEL_307;
            }

            v239 = v237;
            do
            {
              v240 = *(v236 + 32);
              v43 = v240 >= v235;
              v241 = v240 < v235;
              if (v43)
              {
                v239 = v236;
              }

              v236 = *(v236 + 8 * v241);
            }

            while (v236);
            if (v239 != v237 && *(v239 + 32) <= v235)
            {
              v330 = *(*(v239 + 40) + 280);

              if (v231 >= *&v330)
              {
                v242 = v231 <= *(&v330 + 1);
LABEL_309:

                v243 = [(VKRouteInfo *)v232 route];
                v244 = [v243 legs];
                v245 = [v244 count];

                v246 = [*(v359 + 3) alternateRoutes];
                LODWORD(v245) = v245 < 2;
                LOBYTE(v244) = [v246 count] != 0;

                v247 = v245 | v244;
                if (v245)
                {
                  LOBYTE(v248) = 4;
                }

                else
                {
                  LOBYTE(v248) = 3;
                }

                v249 = 1;
                if ((v247 & 1) == 0)
                {
                  v249 = *(v359 + 136) ? 2 : 1;
                  LOBYTE(v248) = *(v359 + 136) ? 5 : 1;
                  if (((*(v359 + 136) | v242) & 1) == 0)
                  {
                    v250 = v232;
                    v251 = [(VKRouteInfo *)v250 route];
                    v252 = *(v359 + 33);
                    if (!v252)
                    {
                      goto LABEL_328;
                    }

                    v253 = (v359 + 264);
                    do
                    {
                      v254 = v252[4];
                      v43 = v254 >= v251;
                      v255 = v254 < v251;
                      if (v43)
                      {
                        v253 = v252;
                      }

                      v252 = v252[v255];
                    }

                    while (v252);
                    if (v253 != (v359 + 264) && v251 >= v253[4])
                    {

                      v331 = md::LabelNavEtaLabeler::routeLabelStatesForRouteInfo(v359, v250);
                      v332 = v253[5];
                      if (v332 == v253[6])
                      {
                        v249 = 2;
                        LOBYTE(v248) = 2;
                      }

                      else
                      {
                        v333 = v331;
                        do
                        {
                          if (md::RouteRangeAnnotationRequest::etaType(*(v332 + 8)) == 3 && !*(v332 + 56))
                          {
                            for (ii = *v333; ii != v333[1]; ii += 384)
                            {
                              if (md::RouteRangeAnnotationRequest::operator==(v332, ii))
                              {
                                if (ii != v333[1] && *(ii + 128) != -1)
                                {
                                  LOBYTE(v248) = 2;
                                  v249 = 1;
                                  goto LABEL_329;
                                }

                                break;
                              }
                            }
                          }

                          v332 += 72;
                          v249 = 2;
                          LOBYTE(v248) = 2;
                        }

                        while (v332 != v253[6]);
                      }
                    }

                    else
                    {
LABEL_328:

                      v248 = v229 >> 8;
                      v249 = v229;
                    }
                  }
                }

LABEL_329:

                v256 = *(v359 + 705) == v249 && *(v359 + 706) == v248;
                v257 = !v256;
                v352 = v257;
                if (!v256)
                {
                  v258 = GEOGetVectorKitLabelNavEtaLabelerLog();
                  if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
                  {
                    if (v249 > 2u)
                    {
                      v259 = "<Invalid>";
                    }

                    else
                    {
                      v259 = (&off_1E7B32F18)[v249];
                    }

                    v260 = *objd;
                    if (v260 > 2)
                    {
                      v261 = "<Invalid>";
                    }

                    else
                    {
                      v261 = (&off_1E7B32F18)[v260];
                    }

                    *v391 = 136315394;
                    *&v391[4] = v259;
                    *&v391[12] = 2080;
                    *&v391[14] = v261;
                    _os_log_impl(&dword_1B2754000, v258, OS_LOG_TYPE_INFO, "EtaLabelingState changed - Mode:%s from:%s", v391, 0x16u);
                  }

                  *(v359 + 705) = v249;
                  *(v359 + 706) = v248;
                }

                if (!v249)
                {
                  goto LABEL_446;
                }

                v262 = *(v359 + 37) - *(v359 + 36);
                if (v262)
                {
                  v263 = 0;
                  v264 = v262 >> 3;
                  v348 = (v359 + 360);
                  if (v264 <= 1)
                  {
                    v265 = 1;
                  }

                  else
                  {
                    v265 = v264;
                  }

                  while (1)
                  {
                    v266 = *(*(v359 + 36) + 8 * v263);
                    v267 = [v266 routeInfo];
                    if (v267 != v232)
                    {
                      goto LABEL_351;
                    }

                    v280 = [v266 displayEtaDescription];
                    v281 = [v280 routeEtaType];
                    if (v281 > 4 || ((1 << v281) & 0x19) == 0)
                    {
                      break;
                    }

                    v283 = [v266 displayEtaDescription];
                    if ([v283 routeEtaType] == 3)
                    {
                      v284 = *objd == 1;

                      if (v284)
                      {
                        goto LABEL_377;
                      }
                    }

                    else
                    {
                    }

                    v267 = [v266 displayEtaDescription];
                    if ([(VKRouteInfo *)v267 routeEtaType])
                    {
                      goto LABEL_351;
                    }

                    v286 = *objd == 2;

                    if (v286)
                    {
LABEL_377:
                      if (v266)
                      {
                        objc_msgSend_updateRoadSignWithNavContext_artworkCache_(v266);
                      }

                      else
                      {
                        memset(v391, 0, 24);
                      }

                      if (v352)
                      {
                        v287 = *v348;
                        if (*v348)
                        {
                          v288 = v359 + 360;
                          do
                          {
                            v289 = *(v287 + 32);
                            v43 = v289 >= v266;
                            v290 = v289 < v266;
                            if (v43)
                            {
                              v288 = v287;
                            }

                            v287 = *(v287 + 8 * v290);
                          }

                          while (v287);
                          if (v288 != v348 && v266 >= *(v288 + 32))
                          {
                            std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(v359 + 352, v288);
                          }
                        }

                        v291 = *&v391[8];
                        v292 = v291;
                        if (v291)
                        {
                          v293 = v291;
                        }

                        else
                        {
                          v293 = [v266 label];
                        }

                        v294 = v293;

                        if (*(*[v294 label] + 160))
                        {
                          v295 = *[v294 label];
                          v295[313] = 0;
                          if (v295[312] == 1)
                          {
                            v295[314] = 0;
                          }

                          geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(buf, v294);
                          std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v359 + 19, buf);
                          buf[0].n128_u64[0] = off_1F2A59C08;
                        }
                      }

                      *v391 = off_1F2A59C08;

                      goto LABEL_372;
                    }

LABEL_352:
                    v269 = v359;
                    v271 = *(v359 + 41);
                    v270 = *(v359 + 42);
                    if (v271 >= v270)
                    {
                      v273 = *(v359 + 40);
                      v274 = (v271 - v273) >> 3;
                      if ((v274 + 1) >> 61)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v275 = v270 - v273;
                      v276 = v275 >> 2;
                      if (v275 >> 2 <= (v274 + 1))
                      {
                        v276 = v274 + 1;
                      }

                      if (v275 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v277 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v277 = v276;
                      }

                      v392 = (v359 + 344);
                      if (v277)
                      {
                        v278 = mdm::zone_mallocator::instance(v268);
                        v279 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKLabelNavRouteEta * {__strong}>(v278, v277);
                      }

                      else
                      {
                        v279 = 0;
                      }

                      v285 = &v279[8 * v274];
                      *v391 = v279;
                      *&v391[8] = v285;
                      *&v391[24] = &v279[8 * v277];
                      *v285 = v266;
                      *&v391[16] = v285 + 8;
                      v269 = v359;
                      std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(v359 + 320, v391);
                      v272 = *(v359 + 41);
                      std::__split_buffer<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator> &>::~__split_buffer(v391);
                    }

                    else
                    {
                      *v271 = v266;
                      v272 = v271 + 1;
                    }

                    *(v269 + 41) = v272;
LABEL_372:

                    if (++v263 == v265)
                    {
                      goto LABEL_400;
                    }
                  }

LABEL_351:
                  goto LABEL_352;
                }

LABEL_400:
                v296 = *(v359 + 40);
                v297 = *(v359 + 41);
                v298 = v297 - v296;
                if (v297 != v296)
                {
                  v299 = 0;
                  v300 = v298 >> 3;
                  if (v300 <= 1)
                  {
                    v301 = 1;
                  }

                  else
                  {
                    v301 = v300;
                  }

                  v302 = (v359 + 360);
                  do
                  {
                    v303 = *(*(v359 + 40) + 8 * v299);
                    v304 = v303;
                    if (v303)
                    {
                      objc_msgSend_updateRoadSignWithNavContext_artworkCache_(v303);
                      if (*&v391[8])
                      {
                        v305 = *&v391[8];
                        v306 = *(*[v305 label] + 313);

                        if (v306)
                        {
                          if ([v304 hasLabel])
                          {
                            v307 = *&v391[8];
                            v308 = *(*[v307 label] + 160) == 0;

                            if (!v308)
                            {
                              v310 = *v302;
                              v311 = (v359 + 360);
                              v312 = (v359 + 360);
                              if (*v302)
                              {
                                while (1)
                                {
                                  while (1)
                                  {
                                    v312 = v310;
                                    v313 = v310[4];
                                    if (v304 >= v313)
                                    {
                                      break;
                                    }

                                    v310 = *v312;
                                    v311 = v312;
                                    if (!*v312)
                                    {
                                      goto LABEL_417;
                                    }
                                  }

                                  if (v313 >= v304)
                                  {
                                    break;
                                  }

                                  v310 = v312[1];
                                  if (!v310)
                                  {
                                    v311 = v312 + 1;
                                    goto LABEL_417;
                                  }
                                }
                              }

                              else
                              {
LABEL_417:
                                v314 = mdm::zone_mallocator::instance(v309);
                                v315 = pthread_rwlock_rdlock((v314 + 32));
                                if (v315)
                                {
                                  geo::read_write_lock::logFailure(v315, "read lock", v316);
                                }

                                v317 = malloc_type_zone_malloc(*v314, 0x40uLL, 0x10E00407B6D3289uLL);
                                atomic_fetch_add((v314 + 24), 1u);
                                geo::read_write_lock::unlock((v314 + 32));
                                v317[4] = v304;
                                geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v317 + 5, v391);
                                *v317 = 0;
                                v317[1] = 0;
                                v317[2] = v312;
                                *v311 = v317;
                                v318 = **(v359 + 44);
                                if (v318)
                                {
                                  *(v359 + 44) = v318;
                                  v317 = *v311;
                                }

                                std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v359 + 45), v317);
                                ++*(v359 + 47);
                              }
                            }
                          }
                        }

                        else
                        {
                          std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v359 + 19, v391);
                        }
                      }
                    }

                    else
                    {
                      *&v391[8] = 0;
                      *&v391[16] = 0;
                    }

                    *v391 = off_1F2A59C08;

                    ++v299;
                  }

                  while (v299 != v301);
                  v296 = *(v359 + 40);
                  v297 = *(v359 + 41);
                }

                if (v296 == v297)
                {
LABEL_446:

                  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v376);
                  goto LABEL_447;
                }

                v319 = (v359 + 360);
                while (1)
                {
                  if ([*v296 hasLabelWithAnchor])
                  {
                    v320 = [*v296 label];
                    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v391, v320);
                    std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v359 + 19, v391);
                    *v391 = off_1F2A59C08;
                  }

                  v321 = *v319;
                  if (!*v319)
                  {
                    goto LABEL_445;
                  }

                  v322 = *v296;
                  v323 = v359 + 360;
                  do
                  {
                    v324 = *(v321 + 32);
                    v43 = v324 >= v322;
                    v325 = v324 < v322;
                    if (v43)
                    {
                      v323 = v321;
                    }

                    v321 = *(v321 + 8 * v325);
                  }

                  while (v321);
                  if (v323 == v319 || v322 < *(v323 + 32))
                  {
                    goto LABEL_445;
                  }

                  if (![v322 hasLabelWithAnchor])
                  {
                    goto LABEL_444;
                  }

                  v326 = [*v296 label];
                  v327 = *(*[v326 label] + 304);
                  if (!v327)
                  {
                    break;
                  }

                  v328 = *(v327 + 640);
                  if (!v328)
                  {
                    break;
                  }

                  v329 = atomic_load((v328 + 143));

                  if ((v329 & 1) == 0)
                  {
                    goto LABEL_444;
                  }

                  std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(v359 + 352, v323);
LABEL_445:
                  if (++v296 == v297)
                  {
                    goto LABEL_446;
                  }
                }

LABEL_444:
                *(v359 + 252) = 1;
                std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v359 + 19, v323 + 40);
                goto LABEL_445;
              }
            }

            else
            {
LABEL_307:
            }
          }

          v242 = 0;
          goto LABEL_309;
        }

        while (1)
        {
          v101 = v99[5];
          v339 = v99;
          v344 = v99[6];
          if (v101 != v344)
          {
            break;
          }

LABEL_188:
          v159 = v339;
          v160 = v339[1];
          if (v160)
          {
            do
            {
              v161 = v160;
              v160 = *v160;
            }

            while (v160);
          }

          else
          {
            do
            {
              v161 = v159[2];
              v107 = *v161 == v159;
              v159 = v161;
            }

            while (!v107);
          }

          v99 = v161;
          if (v161 == v337)
          {
            goto LABEL_194;
          }
        }

        v102 = 0;
        v350 = 0;
        while (1)
        {
          objb = v101;
          v104 = v101[3];
          v103 = v101 + 3;
          std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v104);
          *(objb + 16) = v103;
          v105 = (objb + 16);
          *(objb + 40) = 0;
          *v103 = 0;
          v106 = objb;
          if (!md::RouteRangeAnnotationRequest::etaType(*(objb + 8)))
          {
            break;
          }

          v107 = md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) != 4 || v102 == 0;
          if (v107)
          {
            goto LABEL_134;
          }

          v142 = [*(v102 + 8) etaDescription];
          v143 = [*(objb + 8) etaDescription];
          v144 = [v142 compare:v143];

          v32 = v359;
          v100 = v346;
          *v391 = [*(v102 + 8) start];
          v145 = *(*(a2[1] + 168) + 32);
          v146 = (*(*v145 + 96))(v145, v391);
          v383 = [*(objb + 8) start];
          v147 = *(*(a2[1] + 168) + 32);
          v148 = (*(*v147 + 96))(v147, &v383);
          v149 = HIBYTE(v146) == HIBYTE(v148);
          if (HIBYTE(v146) == HIBYTE(v148) && (v146 & 0x100) != 0)
          {
            v149 = v146 == v148;
          }

          if (v144 || !v149)
          {
LABEL_134:
            if ((v350 & 1) == 0 || md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) != 4)
            {
              v126 = [*(objb + 8) start];
              v127 = [*(objb + 8) end];
              *v391 = v126;
              *&v391[8] = v127;
              md::RouteRangeAnnotationRequest::addAnnotatableSection(objb, v391);
              goto LABEL_168;
            }

            v350 = 1;
          }

          else
          {
            v150 = [*(objb + 8) start];
            v151 = [*(objb + 8) end];
            *v391 = v150;
            *&v391[8] = v151;
            md::RouteRangeAnnotationRequest::addAnnotatableSection(v102, v391);
          }

LABEL_187:
          v101 = v106 + 6;
          if (v101 == v344)
          {
            goto LABEL_188;
          }
        }

        v108 = md::LabelNavEtaLabeler::annotatableSectionsForRoute(v32, v339[4]);
        v109 = v108 + 1;
        v110 = *v108;
        if (*v108 == v108 + 1)
        {
LABEL_168:
          v128 = v32;
          v129 = md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) == 4;
          v382 = *objb;
          *v391 = &v382;
          v130 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v128 + 488), v382, v391);
          v131 = v130;
          v133 = v130[6];
          v132 = v130[7];
          if (v133 >= v132)
          {
            v135 = v130[5];
            v136 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v135) >> 4);
            v137 = v136 + 1;
            if (v136 + 1 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v138 = 0xAAAAAAAAAAAAAAABLL * ((v132 - v135) >> 4);
            if (2 * v138 > v137)
            {
              v137 = 2 * v138;
            }

            if (v138 >= 0x2AAAAAAAAAAAAAALL)
            {
              v139 = 0x555555555555555;
            }

            else
            {
              v139 = v137;
            }

            v392 = v130 + 8;
            if (v139)
            {
              v140 = mdm::zone_mallocator::instance(v130);
              v141 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteRangeAnnotationRequest>(v140, v139);
            }

            else
            {
              v141 = 0;
            }

            v152 = &v141[48 * v136];
            *v391 = v141;
            *&v391[8] = v152;
            *&v391[16] = v152;
            *&v391[24] = &v141[48 * v139];
            v106 = objb;
            *v152 = *objb;
            *(v152 + 1) = *(objb + 8);
            std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v152 + 2, v105);
            *&v391[16] += 48;
            v153 = v131[5];
            v154 = v131[6];
            v155 = *&v391[8] + v153 - v154;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(v153, v154, v155);
            v156 = v131[5];
            v131[5] = v155;
            v157 = v131[7];
            v341 = *&v391[16];
            *(v131 + 3) = *&v391[16];
            *&v391[16] = v156;
            *&v391[24] = v157;
            *v391 = v156;
            *&v391[8] = v156;
            std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(v391);
            v134 = v341;
          }

          else
          {
            v106 = objb;
            *v133 = *objb;
            v133[1] = *(objb + 8);
            std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v133 + 2, v105);
            v134 = v133 + 6;
            v131[6] = v133 + 6;
          }

          v131[6] = v134;

          v381 = *v106;
          *v391 = &v381;
          v158 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(v359 + 61, v381, v391)[6];

          v350 |= v129;
          v102 = (v158 - 6);
          v32 = v359;
          v100 = v346;
          goto LABEL_187;
        }

        while (v110[5] == v110[6])
        {
LABEL_158:
          v124 = v110[1];
          if (v124)
          {
            do
            {
              v125 = v124;
              v124 = *v124;
            }

            while (v124);
          }

          else
          {
            do
            {
              v125 = v110[2];
              v107 = *v125 == v110;
              v110 = v125;
            }

            while (!v107);
          }

          v110 = v125;
          if (v125 == v109)
          {
            goto LABEL_168;
          }
        }

        v111 = *(v110 + 8);
        std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100](buf, (v110 + 5));
        LODWORD(v383) = v111;
        *v391 = &v383;
        v112 = std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v105, v111, v391);
        v113 = v112;
        v114 = (v112 + 5);
        if (v112 + 5 == buf)
        {
LABEL_157:
          std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
          goto LABEL_158;
        }

        v115 = buf[0];
        v116 = buf[0].n128_u64[1] - buf[0].n128_u64[0];
        v117 = v112[7];
        v118 = v112[5];
        if (v117 - v118 >= buf[0].n128_u64[1] - buf[0].n128_u64[0])
        {
          v122 = v112[6];
          v123 = v122 - v118;
          if (v122 - v118 < v116)
          {
            if (v122 != v118)
            {
              memmove(v112[5], buf[0].n128_u64[0], v122 - v118);
              v122 = v113[6];
            }

            if (v115.n128_u64[1] != v115.n128_u64[0] + v123)
            {
              memmove(v122, (v115.n128_u64[0] + v123), v115.n128_u64[1] - (v115.n128_u64[0] + v123));
            }

            v113[6] = (v122 + v115.n128_u64[1] - (v115.n128_u64[0] + v123));
            v32 = v359;
            goto LABEL_157;
          }

          v32 = v359;
          if (buf[0].n128_u64[1] == buf[0].n128_u64[0])
          {
            goto LABEL_150;
          }
        }

        else
        {
          if (v118)
          {
            v112[6] = v118;
            v119 = mdm::zone_mallocator::instance(v112);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(v119, v118);
            v117 = 0;
            *v114 = 0;
            *(v114 + 1) = 0;
            *(v114 + 2) = 0;
          }

          v120 = v116 >> 4;
          if ((v116 >> 4) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v117 >> 3 > v120)
          {
            v120 = v117 >> 3;
          }

          if (v117 >= 0x7FFFFFFFFFFFFFF0)
          {
            v121 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v121 = v120;
          }

          std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v114, v121);
          v118 = v113[6];
          if (v115.n128_u64[1] == v115.n128_u64[0])
          {
            goto LABEL_150;
          }
        }

        memmove(v118, v115.n128_u64[0], v115.n128_u64[1] - v115.n128_u64[0]);
LABEL_150:
        v113[6] = (v118 + v116);
        goto LABEL_157;
      }
    }

    v20 = +[VKDebugSettings sharedSettings];
    [v20 setForceEtaLabelPlacement:0];

    *(v4 + 449) = 0;
    v347 = 1;
    goto LABEL_16;
  }

  md::LabelNavEtaLabeler::clearEtaFeatures(v4);
LABEL_447:
}

void sub_1B2B74284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a59);

  _Unwind_Resume(a1);
}

BOOL std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  return std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v2, v3) != 0;
}

uint64_t geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

uint64_t md::PointLabelFeature::hasIdentifier(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 440);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  while (1)
  {
    v4 = *(v2 + 8);
    if (v3 >= v4)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 < v3)
  {
    ++v2;
    goto LABEL_6;
  }

  return 1;
}

uint64_t md::PointLabelFeature::updateDynamicStyling(md::PointLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = *(a3 + 25);
  if (*(this + 98) != v5)
  {
    v6 = *(a2 + 437);
LABEL_6:
    *(this + 98) = v5;
    *(this + 50) = v6;
    v8 = md::PointLabelFeature::didLiveMetadataChange(this, *(a3 + 10));
    if ((*(this + 424) & 1) == 0)
    {
      v7 = 0;
      if (!v8)
      {
        return v7;
      }

      goto LABEL_18;
    }

LABEL_7:
    *(this + 424) = 0;
    if (md::DebugStreamingPOIFeatureID)
    {
      v9 = md::DebugStreamingPOIFeatureID == *(this + 59);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
      }

      v10 = GEOGetVectorKitStreamingPOILog_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "PointLabelFeature::updateDynamicStyling [CrossFade]", v12, 2u);
      }
    }

    v7 = 1;
LABEL_18:
    (*(*this + 552))(this, a2);
    return v7;
  }

  v6 = *(a2 + 437);
  if (*(this + 50) != v6)
  {
    goto LABEL_6;
  }

  if (*(this + 424) == 1)
  {
    goto LABEL_7;
  }

  return 0;
}

void *md::PointLabelFeature::style(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = md::PointLabelFeature::styleEntryForIdentifier(a1, a2);
  if (!v8)
  {
    return a1 + 10;
  }

  v9 = v8;
  v10 = v8 + 16;
  if (a5 && !*(v8 + 16))
  {
    (*(*a1 + 600))(&v15, a1, v7);
    v11 = (*(*a1 + 488))(a1, 0);
    md::LabelManager::styleForFeatureAttributes(&v14, *(a5 + 336), &v15, v11);
    v12 = *(v9 + 24);
    *(v9 + 16) = v14;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  return v10;
}

void sub_1B2B74A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelStyle::setVariantStyleType(md::LabelStyle *this, unint64_t a2)
{
  if (__PAIR64__(*(this + 95), *(this + 94)) != __PAIR64__(BYTE1(a2), a2) || *(this + 96) != BYTE2(a2) || __PAIR64__(*(this + 98), *(this + 97)) != __PAIR64__(BYTE4(a2), BYTE3(a2)) || *(this + 99) != BYTE5(a2) || *(this + 100) != BYTE6(a2) || *(this + 101) != HIBYTE(a2))
  {
    *(this + 94) = a2;
    md::LabelStyle::invalidateCachedProperties(this);
  }
}

void md::LabelStyle::setZoom(md::LabelStyle *this, float a2)
{
  if (*(this + 125))
  {
    v4 = fminf(fmaxf(a2, 0.0), 23.0);
LABEL_4:
    if (*(this + 136) != 255)
    {
      v5 = *(this + 26);
      if (vabds_f32(v4, v5) < 0.01 && SLODWORD(v4) == SLODWORD(v5))
      {
        return;
      }
    }

    goto LABEL_9;
  }

  md::LabelStyle::updateZoomInvariantStyles(this);
  v4 = fminf(fmaxf(a2, 0.0), 23.0);
  if (*(this + 125))
  {
    goto LABEL_4;
  }

LABEL_9:
  *(this + 26) = v4;
  if (v4 < 24.0)
  {
    v7 = v4;
    v8 = *this;
    if (*this)
    {
      v9 = *(this + 1);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v15, v8, v9);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (*(this + 456) == 1 && *(this + 136) == v7)
      {
        if (v18 == 1)
        {
          md::LabelCoreStyleGroup::update(this + 140, &v15, *(this + 2), *(this + 93), 0, *(this + 26), *(this + 22));
        }

        else
        {
          *(this + 456) = 0;
        }
      }

      else
      {
        *(this + 136) = v7;
        if (v18 == 1)
        {
          *(this + 456) = v18;
          md::LabelCoreStyleGroup::update(this + 140, &v15, *(this + 2), *(this + 93), 1, *(this + 26), *(this + 22));
        }

        else
        {
          *(this + 456) = 0;
        }

        *(this + 457) = 0;
        v11 = *(this + 42);
        v12 = *(this + 43);
        while (v11 != v12)
        {
          *(*(v11 + 8) + 12) = 0;
          v11 += 16;
        }

        *(this + 296) = 0u;
        *(this + 312) = 0u;
        *(this + 264) = 0u;
        *(this + 280) = 0u;
        v13 = *(this + 41);
        *(this + 41) = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        if (*(this + 59) >= 1.0)
        {
          v14 = *(this + 59);
        }

        else
        {
          v14 = 12.0;
        }

        *(this + 16) = ldexp(1.0, v7) * 768.0 / v14;
      }

      if (v18 == 1)
      {
        (*(*v15 + 56))(v15);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    else if (*(this + 136) != v7)
    {
      *(this + 136) = v7;
      if (*(this + 59) >= 1.0)
      {
        v10 = *(this + 59);
      }

      else
      {
        v10 = 12.0;
      }

      *(this + 16) = ldexp(1.0, v7) * 768.0 / v10;
    }
  }
}

void sub_1B2B74D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelNavEtaLabeler::hasPolylineForRoute(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  for (i = *(this + 53); i; i = *i)
  {
    v5 = i[4];
    if (v5 <= v3)
    {
      if (v5 >= v3)
      {
        v6 = 1;
        goto LABEL_8;
      }

      ++i;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

uint64_t *md::LabelStyle::getLabelKnobs(uint64_t *result, uint64_t a2, int a3, char a4, double a5, float a6, float a7)
{
  v8 = result;
  v9 = *(result + 45);
  if (!v9)
  {
    v9 = 0x7FFFFFFF;
  }

  *a2 = v9;
  *(a2 + 4) = v9;
  v10 = *(result + 46);
  *(a2 + 20) = v10;
  *(a2 + 33) = *(result + 240);
  LOBYTE(v10) = *(result + 112);
  v11 = v10;
  *(a2 + 24) = v11;
  LOBYTE(a6) = *(result + 113);
  v12 = LODWORD(a6);
  *(a2 + 28) = v12;
  *(a2 + 32) = *(result + 142);
  *(a2 + 8) = v11;
  v13 = *(result + 188);
  *(a2 + 12) = v13;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3 == 1)
      {
        v25 = result[34];
        if (!v25)
        {
          result = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(result);
          v25 = *result;
          v8[34] = *result;
          v9 = *a2;
        }

        v26 = *(v25 + 60);
        if (v9 >= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v9;
        }

        v28 = v9 + v26;
        if (v26 >= 1)
        {
          v28 = v27;
        }

        *(a2 + 4) = v28;
      }

      return result;
    }

    if (a3 == 2)
    {
      goto LABEL_6;
    }

    if (a3 != 3)
    {
      LOBYTE(v13) = *(result + 114);
      LOBYTE(v12) = *(result + 118);
      v18 = LODWORD(v12);
      *&v13 = fminf(v18, v13);
      LOBYTE(v18) = *(result + 115);
      v19 = LODWORD(v18);
      LOBYTE(a7) = *(result + 119);
      v20 = fmaxf(v19, LODWORD(a7));
      if ((a4 & 1) == 0)
      {
        LOBYTE(v19) = *(result + 112);
        v21 = LODWORD(v19);
        *&v13 = fmaxf(*&v13, v21);
        LOBYTE(v21) = *(result + 113);
        v20 = fminf(v20, LODWORD(v21));
      }

      v22 = result[33];
      if (!v22)
      {
        v23 = v13;
        result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
        LODWORD(v13) = v23;
        v22 = *result;
        v8[33] = *result;
      }

      v24 = *(v22 + 16);
      *(a2 + 24) = fmaxf(v24, *&v13);
      *(a2 + 28) = v20;
      *(a2 + 8) = v24;
      return result;
    }

LABEL_38:
    LOBYTE(v13) = *(result + 116);
    v14 = v13;
    LOBYTE(v13) = *(result + 117);
    goto LABEL_7;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
      v29 = result[33];
      if (!v29)
      {
        result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
        v29 = *result;
        v8[33] = *result;
      }

      *(a2 + 33) = *(v29 + 63);
      LOBYTE(v13) = *(v8 + 120);
      *&v13 = v13;
      *(a2 + 24) = v13;
      *(a2 + 28) = 1132199936;
      goto LABEL_12;
    }

    if (a3 != 9)
    {
      if (a3 == 10)
      {
        *(a2 + 32) = 1;
      }

      return result;
    }

    goto LABEL_38;
  }

  if ((a3 - 5) < 2)
  {
LABEL_6:
    LOBYTE(v13) = *(result + 114);
    v14 = v13;
    LOBYTE(v13) = *(result + 115);
LABEL_7:
    v15 = v13;
    if ((a4 & 1) == 0)
    {
      LOBYTE(v13) = *(result + 112);
      v16 = v13;
      v14 = fmaxf(v14, v16);
      LOBYTE(v16) = *(result + 113);
      v15 = fminf(LODWORD(v16), v15);
    }

    v17 = result[33];
    if (!v17)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
      v17 = *result;
      v8[33] = *result;
    }

    LODWORD(v13) = *(v17 + 16);
    *(a2 + 24) = fmaxf(*&v13, v14);
    *(a2 + 28) = v15;
LABEL_12:
    *(a2 + 8) = v13;
    return result;
  }

  if (a3 == 7)
  {
    LOBYTE(v13) = *(result + 118);
    *&v13 = v13;
    LOBYTE(v12) = *(result + 119);
    v30 = LODWORD(v12);
    if ((a4 & 1) == 0)
    {
      LOBYTE(a7) = *(result + 112);
      v31 = LODWORD(a7);
      *&v13 = fmaxf(*&v13, v31);
      LOBYTE(v31) = *(result + 113);
      v30 = fminf(LODWORD(v31), v30);
    }

    v32 = result[33];
    if (!v32)
    {
      v33 = v13;
      v34 = v30;
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
      v30 = v34;
      LODWORD(v13) = v33;
      v32 = *result;
      v8[33] = *result;
    }

    v35 = *(v32 + 16);
    *(a2 + 24) = fmaxf(*(v32 + 20), *&v13);
    *(a2 + 28) = v30;
    *(a2 + 8) = v35;
  }

  return result;
}

mdm::zone_mallocator *std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::AvoidanceRectWithPriority*,md::AvoidanceRectWithPriority*>(mdm::zone_mallocator *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *(result + 2);
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) >= a4)
  {
    v16 = *(result + 1);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v9) >> 3) >= a4)
    {
      while (v6 != a3)
      {
        *v9 = *v6;
        v9[1] = *(v6 + 1);
        v9[2] = *(v6 + 2);
        v9[3] = *(v6 + 3);
        v21 = *(v6 + 4);
        *(v9 + 20) = *(v6 + 20);
        v9[4] = v21;
        v6 = (v6 + 24);
        v9 += 6;
      }

      *(result + 1) = v9;
    }

    else
    {
      v17 = (a2 + v16 - v9);
      if (v16 != v9)
      {
        do
        {
          *v9 = *v6;
          v9[1] = *(v6 + 1);
          v9[2] = *(v6 + 2);
          v9[3] = *(v6 + 3);
          v18 = *(v6 + 4);
          *(v9 + 20) = *(v6 + 20);
          v9[4] = v18;
          v6 = (v6 + 24);
          v9 += 6;
        }

        while (v6 != v17);
        v16 = *(result + 1);
      }

      v19 = v16;
      if (v17 != a3)
      {
        v19 = v16;
        do
        {
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          v19 += 24;
          v17 = (v17 + 24);
        }

        while (v17 != a3);
      }

      *(result + 1) = v19;
    }
  }

  else
  {
    if (v9)
    {
      *(result + 1) = v9;
      v10 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(v10, v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= a4)
    {
      v12 = a4;
    }

    v13 = v11 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v12;
    if (v13 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_26:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v14, v13);
    *v7 = result;
    *(v7 + 1) = result;
    *(v7 + 2) = result + 24 * v13;
    while (v6 != a3)
    {
      v15 = *v6;
      *(result + 2) = *(v6 + 2);
      *result = v15;
      result = (result + 24);
      v6 = (v6 + 24);
    }

    *(v7 + 1) = result;
  }

  return result;
}

double frustumForScreenRect(uint64_t a1, double a2, float32x2_t *a3, float32x2_t a4, float32x2_t a5)
{
  v5 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v6 = vdiv_f32(0x4000000040000000, a3[133]);
  __asm { FMOV            V5.2S, #-1.0 }

  v12 = vcvtq_f64_f32(vmla_f32(_D5, a4, v6));
  v13 = vcvtq_f64_f32(vmla_f32(_D5, a5, v6));
  v14 = &a3[92];
  v15 = &v31;
  v16 = v14;
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = *v18;
      v18 += 4;
      v15->f64[v17++] = v19;
    }

    while (v17 != 4);
    ++v5;
    v15 += 2;
    ++v16;
  }

  while (v5 != 4);
  v20 = 0;
  v43[8] = vmlsq_lane_f64(v31, v37, v12.f64[0], 0);
  v43[9] = vmlsq_lane_f64(v32, v38, v12.f64[0], 0);
  v43[10] = vmlaq_n_f64(vnegq_f64(v31), v37, v13.f64[0]);
  v43[11] = vmlaq_n_f64(vnegq_f64(v32), v38, v13.f64[0]);
  v43[4] = vmlsq_lane_f64(v33, v37, v12.f64[1], 0);
  v43[5] = vmlsq_lane_f64(v34, v38, v12.f64[1], 0);
  v43[6] = vmlaq_n_f64(vnegq_f64(v33), v37, v13.f64[1]);
  v43[7] = vmlaq_n_f64(vnegq_f64(v34), v38, v13.f64[1]);
  v43[0] = vmlsq_lane_f64(v35, v37, a2, 0);
  v43[1] = vmlsq_lane_f64(v36, v38, a2, 0);
  v43[2] = vsubq_f64(v37, v35);
  v43[3] = vsubq_f64(v38, v36);
  do
  {
    v21 = 0;
    v22 = &v43[2 * v20];
    v23 = *(v22 + 2);
    v39 = *v22;
    v40 = v23;
    v24 = 0.0;
    do
    {
      v24 = v24 + *(&v39 + v21) * *(&v39 + v21);
      v21 += 8;
    }

    while (v21 != 24);
    v25 = 0;
    v26 = 1.0 / sqrt(v24);
    do
    {
      *(&v41 + v25) = *(&v39 + v25) * v26;
      v25 += 8;
    }

    while (v25 != 24);
    v27 = a1 + 32 * v20;
    v28 = v42;
    v29 = *(v22 + 3) * v26;
    *v27 = v41;
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;
    ++v20;
  }

  while (v20 != 6);

  *&result = *&geo::Frustum<double>::calculateCorners(a1, a2, v14);
  return result;
}

void md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(uint64_t a1, uint64_t a2, float *a3, const void **a4)
{
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v8 = *(a3 + 2);
  v9 = *a3;
  if (v8 > *a3 || (v10 = *a3, v8 == LODWORD(v9)) && (v10 = *(a3 + 2), a3[3] > a3[1]))
  {
    if (LODWORD(v9) >= [*(a1 + 8) pointCount] - 1)
    {
      return;
    }

    v10 = *a3;
  }

  v11 = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(a1, v10, 0);
  v12 = v11;
  if (a3[3] <= 0.0)
  {
    v13 = *(a3 + 2);
  }

  else
  {
    v13 = *(a3 + 2) + 1;
  }

  v14 = v11;
  v15 = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(a1, v13, 1);
  if (v14 < v15 || (v14 == v15 ? (v17 = HIWORD(v12) >= HIWORD(v15)) : (v17 = 1), v16 = v12, !v17))
  {
    v16 = v15;
  }

  v93[0] = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v12, 0);
  v93[1] = v18;
  v93[2] = 0;
  md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v16, 1);
  for (i = 0; i != 192; i += 32)
  {
    v20 = 0;
    v21 = a2 + i;
    v22 = 0.0;
    do
    {
      v22 = v22 + *(v21 + v20 * 8) * *&v93[v20];
      ++v20;
    }

    while (v20 != 3);
    v23 = *(v21 + 24) + v22;
    if (v23 < 0.0)
    {
      break;
    }
  }

  v24 = *(a1 + 72);
  v92[0] = v12;
  v92[1] = v16;
  md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(a1, a2, v24, v92, &v94);
  v26 = v94;
  v27 = v95;
  v28 = 126 - 2 * __clz((v95 - v94) >> 3);
  v29 = v95 - v94;
  if (v95 == v94)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(v94, v95, v30, 1, v25);
  if (v29 >= 9)
  {
    v31 = *(v26 + 2);
    if (v31 >= *a3 && (v31 != *a3 || v26[3] >= a3[1]))
    {
      goto LABEL_32;
    }

    v29 = v27 - (v26 + 4);
    if (v27 != v26 + 4)
    {
      memmove(v26, v26 + 4, v27 - (v26 + 4));
    }

    v27 -= 4;
    v95 = (v26 + v29);
    if (v29 >= 9)
    {
LABEL_32:
      v32 = *(v26 + v29 - 16);
      v33 = *(a3 + 2);
      if (v32 > v33 || v32 == v33 && *(v26 + v29 - 12) > a3[3])
      {
        v95 = v27 - 4;
        v27 -= 4;
      }
    }
  }

  if (v27 == v26)
  {
    v34 = v26;
  }

  else
  {
    if (*v26 < *a3 || *v26 == *a3 && v26[1] < a3[1])
    {
      *v26 = *a3;
    }

    v35 = *(v27 - 2);
    v36 = *(a3 + 2);
    if (v35 > v36 || v35 == v36 && *(v27 - 1) > a3[3])
    {
      *(v27 - 1) = *(a3 + 1);
      v26 = v94;
      v27 = v95;
    }

    v34 = v27;
  }

  v37 = (((v34 - v26) >> 3) + 1) >> 1;
  if (v23 < 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 + 1;
  }

  std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(a4, v38);
  v39 = v26;
  if (v23 < 0.0)
  {
LABEL_75:
    if (v39 == v27)
    {
      goto LABEL_105;
    }

    v60 = v39 + 2;
    while (1)
    {
      v62 = *(v60 - 2);
      v61 = *(v60 - 1);
      if (v60 == v27)
      {
        break;
      }

      v63 = a4[1];
      v64 = a4[2];
      if (v63 >= v64)
      {
        v67 = (v63 - *a4) >> 4;
        v68 = v67 + 1;
        if ((v67 + 1) >> 60)
        {
          goto LABEL_110;
        }

        v69 = v64 - *a4;
        if (v69 >> 3 > v68)
        {
          v68 = v69 >> 3;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFF0)
        {
          v70 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v70);
        }

        v71 = 16 * v67;
        v72 = *v60;
        *v71 = v62;
        *(v71 + 4) = v61;
        *(v71 + 8) = v72;
        v66 = 16 * v67 + 16;
        v73 = a4[1] - *a4;
        v74 = (16 * v67 - v73);
        memcpy(v74, *a4, v73);
        v75 = *a4;
        *a4 = v74;
        a4[1] = v66;
        a4[2] = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        v65 = *v60;
        *v63 = v62;
        *(v63 + 1) = v61;
        *(v63 + 1) = v65;
        v66 = (v63 + 16);
      }

      a4[1] = v66;
      v76 = v60 + 2;
      v60 += 4;
      if (v76 == v27)
      {
        goto LABEL_105;
      }
    }

    v77 = a4[1];
    v78 = a4[2];
    if (v77 < v78)
    {
      v79 = *(a3 + 1);
      *v77 = v62;
      v77[1] = v61;
      *(v77 + 1) = v79;
      v46 = (v77 + 4);
      goto LABEL_104;
    }

    v80 = (v77 - *a4) >> 4;
    v81 = v80 + 1;
    if (!((v80 + 1) >> 60))
    {
      v82 = v78 - *a4;
      if (v82 >> 3 > v81)
      {
        v81 = v82 >> 3;
      }

      if (v82 >= 0x7FFFFFFFFFFFFFF0)
      {
        v83 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (v83)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v83);
      }

      v84 = 16 * v80;
      v85 = *(a3 + 1);
      *v84 = v62;
      *(v84 + 4) = v61;
      *(v84 + 8) = v85;
      v46 = 16 * v80 + 16;
      v86 = a4[1] - *a4;
      v87 = v84 - v86;
      memcpy((v84 - v86), *a4, v86);
      v88 = *a4;
      *a4 = v87;
      a4[1] = v46;
      a4[2] = 0;
      if (!v88)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }

    goto LABEL_110;
  }

  if (v26 != v27)
  {
    v40 = a4[1];
    v41 = a4[2];
    if (v40 >= v41)
    {
      v47 = (v40 - *a4) >> 4;
      v48 = v47 + 1;
      if ((v47 + 1) >> 60)
      {
        goto LABEL_110;
      }

      v49 = v41 - *a4;
      if (v49 >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v50);
      }

      v55 = (16 * v47);
      v56 = *v26;
      *v55 = *a3;
      v55[1] = v56;
      v43 = 16 * v47 + 16;
      v57 = a4[1] - *a4;
      v58 = 16 * v47 - v57;
      memcpy(v55 - v57, *a4, v57);
      v59 = *a4;
      *a4 = v58;
      a4[1] = v43;
      a4[2] = 0;
      if (v59)
      {
        operator delete(v59);
      }
    }

    else
    {
      v42 = *v26;
      *v40 = *a3;
      *(v40 + 1) = v42;
      v43 = (v40 + 16);
    }

    v39 = v26 + 2;
    a4[1] = v43;
    goto LABEL_75;
  }

  v45 = a4[1];
  v44 = a4[2];
  if (v45 >= v44)
  {
    v51 = (v45 - *a4) >> 4;
    v52 = v51 + 1;
    if (!((v51 + 1) >> 60))
    {
      v53 = v44 - *a4;
      if (v53 >> 3 > v52)
      {
        v52 = v53 >> 3;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF0)
      {
        v54 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v54);
      }

      v89 = (16 * v51);
      *v89 = *a3;
      v46 = 16 * v51 + 16;
      v90 = a4[1] - *a4;
      v91 = v89 - v90;
      memcpy(v89 - v90, *a4, v90);
      v88 = *a4;
      *a4 = v91;
      a4[1] = v46;
      a4[2] = 0;
      if (!v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      operator delete(v88);
      goto LABEL_104;
    }

LABEL_110:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v45 = *a3;
  v46 = (v45 + 16);
LABEL_104:
  a4[1] = v46;
LABEL_105:
  if (v26)
  {
    v95 = v26;
    operator delete(v26);
  }
}

void sub_1B2B75A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

float md::PointLabelFeature::maxZoomRank(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = *(a1 + 432);
    result = 0.0;
    if (v3 != (a1 + 440))
    {
      do
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        result = fmaxf(result, *(v3 + 34));
        v3 = v7;
      }

      while (v7 != (a1 + 440));
    }
  }

  else
  {
    v9 = *(a1 + 440);
    if (!v9)
    {
      return 252.0;
    }

    v10 = a1 + 440;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v2;
      v13 = v11 < v2;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == a1 + 440)
    {
      return 252.0;
    }

    if (v2 < *(v10 + 32))
    {
      return 252.0;
    }

    result = *(v10 + 136);
    if (result == 254.0)
    {
      return 252.0;
    }
  }

  return result;
}

void md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
LABEL_1:
  if (*a3)
  {
    v23 = *(a3 + 56);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = (*(a3 + 64) + 4 * i);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        if (v28 >= v26 && (v28 != v26 || a4[1] > v27))
        {
          continue;
        }

        v30 = a4[2];
        if (v30 <= v26 && (v30 != v26 || a4[3] < v27))
        {
          continue;
        }

        *&v46 = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 0);
        *(&v46 + 1) = v32;
        v47 = 0;
        v33 = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 1);
        v34 = 0;
        *&v44 = v33;
        *(&v44 + 1) = v35;
        v45 = 0;
        do
        {
          *(v41 + v34) = *(&v44 + v34) - *(&v46 + v34);
          v34 += 8;
        }

        while (v34 != 24);
        v36 = *&v41[1];
        v37 = v41[0];
        v41[0] = v46;
        *&v41[1] = v47;
        *(&v41[1] + 8) = v37;
        *(&v41[2] + 1) = v36;
        *&v46 = 0;
        *&v44 = 0;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(a2, v41, 2, &v46, &v44))
        {
          v38 = [*(*(a1 + 48) + 8 * v26) startPointIndex] + v27;
          if (*&v46 > 0.0)
          {
            v39 = *&v46;
            *&v42 = __PAIR64__(LODWORD(v39), v38);
            if (v39 >= 1.0)
            {
              LODWORD(v42) = v38 + vcvtms_u32_f32(v39);
              *(&v42 + 1) = v39 - floorf(v39);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v42);
          }

          if (*&v44 < 1.0)
          {
            v40 = *&v44;
            *&v42 = __PAIR64__(LODWORD(v40), v38);
            if (v40 >= 1.0)
            {
              LODWORD(v42) = v38 + vcvtms_u32_f32(v40);
              *(&v42 + 1) = v40 - floorf(v40);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v42);
          }
        }

        v23 = *(a3 + 56);
      }
    }
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 72), a4))
  {
    v10 = 0;
    v11 = 0;
    memset(&v41[1], 0, 32);
    v41[0] = *(a3 + 24);
    *(&v41[1] + 8) = *(a3 + 40);
    while (1)
    {
      v12 = 0;
      v13 = *(a2 + v11 + 16);
      v44 = *(a2 + v11);
      v45 = v13;
      do
      {
        v14 = v41 + v12;
        if (*(&v44 + v12) >= 0.0)
        {
          v14 = &v41[1] + v12 + 8;
        }

        *(&v46 + v12) = *v14;
        v12 += 8;
      }

      while (v12 != 24);
      v15 = 0;
      v42 = v46;
      v43 = v47;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a2 + v11 + v15) * *(&v42 + v15);
        v15 += 8;
      }

      while (v15 != 24);
      v17 = *(a2 + v11 + 24);
      if (v17 + v16 < 0.0)
      {
        break;
      }

      for (j = 0; j != 24; j += 8)
      {
        *(&v46 + j) = -*(a2 + v11 + j);
      }

      v19 = 0;
      v44 = v46;
      v45 = v47;
      do
      {
        v20 = v41 + v19;
        if (*(&v44 + v19) >= 0.0)
        {
          v20 = &v41[1] + v19 + 8;
        }

        *(&v46 + v19) = *v20;
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = 0.0;
      do
      {
        v22 = v22 + *(a2 + v11 + v21) * *(&v46 + v21);
        v21 += 8;
      }

      while (v21 != 24);
      if (v17 + v22 >= 0.0)
      {
        ++v10;
      }

      v11 += 32;
      if (v11 == 192)
      {
        if (v10 == 6)
        {
          return;
        }

        md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(a1, a2, *(a3 + 8), a4, a5);
        a3 = *(a3 + 16);
        goto LABEL_1;
      }
    }
  }
}