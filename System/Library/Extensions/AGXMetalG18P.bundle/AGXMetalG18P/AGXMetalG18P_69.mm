void sub_29CDF5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, char *a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, void **a24, void **a25, uint64_t a26, void **a27, void **a28, void **a29, void **a30, uint64_t a31, void **a32)
{
  CompileStatistics::~CompileStatistics(a23);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a32);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v32 + 2168));
  v35 = *a24;
  if (*a24)
  {
    *(v32 + 2152) = v35;
    operator delete(v35);
  }

  v36 = *a25;
  if (*a25)
  {
    *(v32 + 2128) = v36;
    operator delete(v36);
  }

  if (*a12 < 0)
  {
    operator delete(*a13);
    if ((*(v32 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v32 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v32 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  operator delete(*a27);
  if (*(v32 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a28);
    if ((*(v32 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((*(v32 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v32 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  operator delete(*a29);
  if ((*(v32 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v32 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v32 + 1016));
    v37 = *(v32 + 936);
    if (v37)
    {
      *(v32 + 944) = v37;
      operator delete(v37);
    }

    v38 = *(v32 + 912);
    if (v38)
    {
      *(v32 + 920) = v38;
      operator delete(v38);
    }

    v39 = (v32 + 864);
    v40 = *(v32 + 888);
    if (v40)
    {
      *(v32 + 896) = v40;
      operator delete(v40);
    }

    v41 = *v39;
    if (*v39)
    {
      *(v32 + 872) = v41;
      operator delete(v41);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v32 + 776);
    v42 = *a10;
    if (*a10)
    {
      *(v32 + 760) = v42;
      operator delete(v42);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a11);
    v43 = *(v32 + 592);
    if (v43)
    {
      *(v32 + 600) = v43;
      operator delete(v43);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a22);
    if (*(v33 - 193) < 0)
    {
      operator delete(*(v33 - 216));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a30);
  goto LABEL_11;
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4144));
  v2 = *(a1 + 584);
  if (v2)
  {
    v165 = *(a1 + 576);
    v3 = *(v2 + 208);
    v5 = *(v2 + 144);
    v4 = *(v2 + 148);
    if (v3)
    {
      v6 = *(v2 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v5 = 0;
    }

    v8 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v6 + v4 + v5 + *(v2 + 152) + ((v8 + 3) & 0xFFFFFFFC);
    v9 = (a1 + 664);
    v10 = *(a1 + 664);
    v11 = (*(a1 + 672) - v10) >> 2;
    v166 = v2;
    if (v8 <= v11)
    {
      if (v8 < v11)
      {
        *(a1 + 672) = v10 + 4 * v8;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v8 - v11);
      v7 = *(v2 + 176);
      v4 = *(v2 + 148);
      v3 = *(v2 + 208);
    }

    if (v3)
    {
      v12 = *(v2 + 144);
    }

    else
    {
      v12 = 0;
    }

    if (v7 | *(v2 + 184))
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    v14 = (v4 + v12 + v13);
    v15 = *(a1 + 752);
    v16 = (*(a1 + 760) - v15) >> 2;
    if (v14 <= v16)
    {
      if (v14 < v16)
      {
        *(a1 + 760) = v15 + 4 * v14;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v14 - v16);
    }

    v17 = *v165;
    v18 = v165[1];
    if (*v165 != v18)
    {
      do
      {
        v19 = *v17;
        v20 = *(*v17 + 4);
        if ((v20 & 0x80000000) == 0)
        {
          v21 = 4 * *(v19 + 8) - *(v2 + 120);
          v22 = *v19 == 6 ? 32 : 6;
          v23 = (v22 & 0xF800007F | ((v20 & 0xFFFFF) << 7)) >> 3;
          *(*v9 + 4 * v21) = v23 | 0x40000008;
          v23 += 1073741832;
          *(*v9 + 4 * (v21 + 1)) = v23 + 1;
          *(*v9 + 4 * (v21 + 2)) = v23 + 2;
          *(*v9 + 4 * (v21 + 3)) = v23 + 3;
          if (*(v19 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v19 + 4) & 0xFFFC0) != 0)) |= 1 << *(v19 + 4);
          }
        }

        ++v17;
      }

      while (v17 != v18);
    }

    if (*(a1 + 1350))
    {
      for (i = v165[9]; i != v165[10]; ++i)
      {
        if (**i == 93)
        {
          v25 = *(*i + 4);
          if ((v25 & 0x80000000) == 0 && (v25 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v26 = v165[3];
    for (j = v165[4]; v26 != j; ++v26)
    {
      v28 = *(*v26 + 4);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = *(a1 + 2192) ? 3 : 1;
        v30 = *(v2 + 124) + v29 * *(*v26 + 8) - (*(v2 + 120) + *(v2 + 128));
        v31 = 4 * (v28 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v30) = v31 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v32 = v31 + 1610612737;
          *(*v9 + 4 * (v30 + 1)) = v32 + 1;
          *(*v9 + 4 * (v30 + 2)) = v32 + 2;
        }
      }
    }

    v33 = v165[6];
    v34 = v165[7];
    if (v33 != v34)
    {
      v35 = (a1 + 1152);
      do
      {
        v36 = *v33;
        v37 = *(*v33 + 4);
        if ((v37 & 0x80000000) == 0)
        {
          v38 = ((*(v36 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v39 = v37 & 0xFFFFF;
          v40 = v37 & 0xFFFFF | 0x20000000;
          if ((v37 & 0xFFFFFu) >= 0x1F)
          {
            v40 = (v37 & 0xFFFFF) + 128;
          }

          *(*v9 + 4 * v38) = v40;
          if (*(v36 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v39 > 0x3F)) |= 1 << v37;
          }

          if (*(a1 + 2195) == 1)
          {
            v41 = *(a1 + 2208);
            if (!v41)
            {
LABEL_257:
              abort();
            }

            v42 = 2 * v38;
            v43 = (2 * v38) | 1;
            while (1)
            {
              while (1)
              {
                v44 = *(v41 + 7);
                if (v39 >= v44)
                {
                  break;
                }

                v41 = *v41;
                if (!v41)
                {
                  goto LABEL_257;
                }
              }

              if (v44 >= v39)
              {
                break;
              }

              v41 = v41[1];
              if (!v41)
              {
                goto LABEL_257;
              }
            }

            v45 = *v35;
            if (!*v35)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v46 = v45;
                v47 = *(v45 + 7);
                if (v43 >= v47)
                {
                  break;
                }

                v45 = *v46;
                if (!*v46)
                {
                  goto LABEL_69;
                }
              }

              if (v47 > v42)
              {
                break;
              }

              v45 = v46[1];
              if (!v45)
              {
                goto LABEL_69;
              }
            }

            *(v46 + 8) = *(v41 + 8);
            v2 = v166;
          }
        }

        ++v33;
      }

      while (v33 != v34);
    }

    *(a1 + 744) = 1;
    v48 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v48 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v48)
    {
      if (!((v48 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_258;
    }

    v49 = *(a1 + 664);
    v50 = *(a1 + 672);
    if (v49 != v50)
    {
      do
      {
        v51 = *v49;
        if (*v49 >> 29 == 7)
        {
          v52 = 272;
        }

        else
        {
          v52 = dword_29D2F52CC[v51 >> 29];
        }

        LODWORD(m) = v52 + (v51 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v49;
      }

      while (v49 != v50);
      v49 = *(a1 + 664);
      if (*(a1 + 672) != v49)
      {
        operator new();
      }
    }

    *(a1 + 672) = v49;
    v54 = *(v166 + 120);
    v53 = *(v166 + 124);
    v55 = *(v166 + 128);
    v56 = *(v166 + 132);
    v57 = *(v166 + 136);
    v58 = *(v166 + 140);
    v59 = (v53 + v56 + v58 - (v54 + v55 + v57) + 3) & 0xFFFFFFFC;
    v60 = *(v166 + 160);
    v61 = *(v166 + 168);
    if (*(v166 + 160) != 0)
    {
      v62 = 0;
      v63 = *(v166 + 144);
      if (*(v166 + 208) == 1)
      {
        v64 = (a1 + 752);
        if (!v63)
        {
          goto LABEL_92;
        }

        v65 = 0;
        v167 = *(v166 + 168);
        m = v60;
        for (k = v60; ; k = m)
        {
          if (k)
          {
            v67 = __clz(__rbit64(k));
            v68 = &m;
            v69 = v67;
          }

          else
          {
            k = v167;
            if (!v167)
            {
              v57 = *(v166 + 136);
              v58 = *(v166 + 140);
              v55 = *(v166 + 128);
              v56 = *(v166 + 132);
              v54 = *(v166 + 120);
              v53 = *(v166 + 124);
              v63 = *(v166 + 144);
              v62 = v63;
              goto LABEL_92;
            }

            v67 = __clz(__rbit64(v167));
            v69 = v67 | 0x40;
            v68 = &v167;
          }

          *v68 = k & ~(1 << v67);
          *(*(a1 + 752) + 4 * v65) = vorrq_s8(vdupq_n_s32(16 * v69), xmmword_29D2F2010);
          v65 += 4;
        }
      }

      v64 = (a1 + 752);
LABEL_92:
      v70 = *(v166 + 176);
      if (*&v70 != 0 && v63 != 0)
      {
        v159 = v62 - v59 + ((v58 + v56 - (v57 + v55 + v54) + v53 + 3) & 0xFFFFFFFC);
        v167 = v61;
        m = v60;
        while (1)
        {
          if (v60)
          {
            v160 = __clz(__rbit64(v60));
            v161 = &m;
            v162 = v160;
          }

          else
          {
            v60 = v167;
            if (!v167)
            {
              break;
            }

            v160 = __clz(__rbit64(v167));
            v162 = v160 | 0x40;
            v161 = &v167;
          }

          v163 = *v64;
          *(*v64 + 4 * (v159 + 1)) = (16 * (v162 & 0x7F)) | 0xD;
          *(v163 + 4 * v159) = (16 * (v162 & 0x7F)) | 0xC;
          *v161 = v60 & ~(1 << v160);
          *(v163 + 4 * (v159 + 2)) = (16 * (v162 & 0x7F)) | 0xE;
          v164 = v159 + 3;
          v159 += 4;
          v60 = m;
          *(v163 + 4 * v164) = (16 * v162) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v70);
    }

    if (*(v166 + 148))
    {
      v72 = *(v166 + 144);
      if (*(v166 + 208))
      {
        v73 = *(v166 + 144);
      }

      else
      {
        v73 = 0;
      }

      if (*(v166 + 176) == 0)
      {
        v72 = 0;
      }

      v74 = ((*(v166 + 124) + *(v166 + 132) + *(v166 + 140) - (*(v166 + 120) + *(v166 + 128) + *(v166 + 136)) + 3) & 0xFFFFFFFC) - v59 + v73 + v72;
      v75 = *(v166 + 192);
      v167 = *(v166 + 200);
      for (m = v75; ; v75 = m)
      {
        if (v75)
        {
          v76 = __clz(__rbit64(v75));
          p_m = &m;
          v78 = v76;
        }

        else
        {
          v75 = v167;
          if (!v167)
          {
            break;
          }

          v76 = __clz(__rbit64(v167));
          v78 = v76 | 0x40;
          p_m = &v167;
        }

        *p_m = v75 & ~(1 << v76);
        v79 = *(a1 + 752);
        *(v79 + 4 * v74) = (4 * (v78 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v80 = 4 * v78;
          *(v79 + 4 * (v74 + 1)) = v80 | 2;
          *(v79 + 4 * (v74 + 2)) = v80 | 3;
        }

        v74 += 4;
      }
    }

    v81 = (*(v165 + 24) + 3) >> 2;
    if (*(v166 + 467) == 1)
    {
      *(a1 + 1016) = v81;
    }

    *(a1 + 660) = v81;
    v82 = *(a1 + 776);
    v83 = (*(a1 + 784) - v82) >> 2;
    if (v81 <= v83)
    {
      if (v81 < v83)
      {
        *(a1 + 784) = v82 + 4 * v81;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v81 - v83);
    }

    if (a1 + 864 != v166 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v166 + 216), *(v166 + 224), (*(v166 + 224) - *(v166 + 216)) >> 2);
    }

    if (a1 + 912 != v166 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v166 + 240), *(v166 + 248), (*(v166 + 248) - *(v166 + 240)) >> 2);
    }

    if (a1 + 888 != v166 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v166 + 320), *(v166 + 328), (*(v166 + 328) - *(v166 + 320)) >> 1);
    }

    if (a1 + 936 != v166 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v166 + 368), *(v166 + 376), (*(v166 + 376) - *(v166 + 368)) >> 1);
    }

    *(a1 + 960) = *(v166 + 416);
    *(a1 + 1352) = *(v166 + 160) != 0;
    *(a1 + 1353) = *(v166 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v166);
    if ((*(a1 + 3703) & 1) == 0)
    {
      v84 = *(a1 + 2392);
      v85 = *(a1 + 3012);
      v86 = *(a1 + 3024);
      v87 = ((*(a1 + 3008) + 3) >> 2);
      *(v84 + 140) = *(v84 + 140) & 0xFFFFF00000000000 | (v87 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v87;
      *(v84 + 320) = (v85 + 3) >> 2;
      *(v84 + 324) = (((v86 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v84 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v84 + 48, *(v84 + 312), *v84 + *(v84 + 316));
      }
    }

    v88 = *(a1 + 3704);
    if (v88 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(a1 + 2392), v88, *(a1 + 3708), *(a1 + 3056), *(a1 + 3064), *(a1 + 3072), *(a1 + 3716));
    }

    v89 = *(a1 + 3272);
    if (v89)
    {
      v90 = *(a1 + 3012);
      v91 = *(a1 + 3024);
      v92 = ((*(a1 + 3008) + 3) >> 2);
      *(v89 + 140) = *(v89 + 140) & 0xFFFFF00000000000 | (v92 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v92;
      *(v89 + 320) = (v90 + 3) >> 2;
      *(v89 + 324) = (((v91 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v89 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v89 + 48, *(v89 + 312), *v89 + *(v89 + 316));
      }

      v93 = *(a1 + 3272);
      v94 = *(a1 + 3224);
      memcpy(v94, *v93, *(v93 + 8) - *v93);
      if (*(v93 + 272) == 1)
      {
        *&v94[*(v93 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v94[*(v93 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v95 = *(a1 + 3272);
      v97 = *(v95 + 64);
      v96 = *(v95 + 80);
      *(a1 + 3280) = *(v95 + 48);
      *(a1 + 3296) = v97;
      *(a1 + 3312) = v96;
      v98 = *(v95 + 128);
      v99 = *(v95 + 144);
      v100 = *(v95 + 112);
      *(a1 + 3328) = *(v95 + 96);
      *(a1 + 3376) = v99;
      *(a1 + 3360) = v98;
      *(a1 + 3344) = v100;
      v102 = *(v95 + 176);
      v101 = *(v95 + 192);
      v103 = *(v95 + 208);
      *(a1 + 3392) = *(v95 + 160);
      *(a1 + 3440) = v103;
      *(a1 + 3424) = v101;
      *(a1 + 3408) = v102;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(a1 + 2392));
    v104 = *(a1 + 2392);
    v105 = *(a1 + 3724);
    v106 = 8 * (*(v104 + 324) & 0xFFF);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v107 = 0x80000;
    }

    else
    {
      v107 = 0;
    }

    if (v105)
    {
      v108 = 0x800000;
    }

    else
    {
      v108 = 0;
    }

    v109 = v107 | v108 | v106;
    v110 = 8 * (*(v104 + 320) & 0x3FFFF);
    *(a1 + 3728) = v109;
    *(a1 + 3732) = v110;
    *(a1 + 3736) = 0x4000000000000000;
    *(a1 + 3744) = 0;
    *(a1 + 3760) = 0;
    *(a1 + 3752) = 0;
    v111 = *(a1 + 2392);
    v112 = *(a1 + 3724);
    v113 = 8 * (*(v111 + 324) & 0xFFF);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v114 = 0x80000;
    }

    else
    {
      v114 = 0;
    }

    if (v112)
    {
      v115 = 0x800000;
    }

    else
    {
      v115 = 0;
    }

    v116 = v114 | v115 | v113;
    v117 = 8 * (*(v111 + 320) & 0x3FFFF);
    *(a1 + 3768) = v116;
    *(a1 + 3772) = v117;
    *(a1 + 3776) = 0x4000000000000000;
    *(a1 + 3784) = 0;
    *(a1 + 3800) = 0;
    *(a1 + 3792) = 0;
    v118 = *(a1 + 2392);
    v119 = *(a1 + 3724);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v120 = 134742016;
    }

    else
    {
      v120 = 0x8000000;
    }

    if (v119)
    {
      v121 = 0x800000;
    }

    else
    {
      v121 = 0;
    }

    v122 = 8 * (*(v118 + 320) & 0x3FFFF);
    *(a1 + 3808) = v121 & 0xFFFF8007 | (8 * (*(v118 + 324) & 0xFFF)) | v120;
    *(a1 + 3812) = v122;
    *(a1 + 3816) = 0x4000000000000000;
    *(a1 + 3824) = 0u;
    *(a1 + 3840) = 0;
    v123 = *(a1 + 2392);
    v124 = *(a1 + 3724);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v125 = 268959744;
    }

    else
    {
      v125 = 0x10000000;
    }

    if (v124)
    {
      v126 = 0x800000;
    }

    else
    {
      v126 = 0;
    }

    v127 = 8 * (*(v123 + 320) & 0x3FFFF);
    *(a1 + 3844) = v126 & 0xFFFF8007 | (8 * (*(v123 + 324) & 0xFFF)) | v125;
    *(a1 + 3848) = v127;
    *(a1 + 3852) = 0x4000000000000000;
    *(a1 + 3860) = 0;
    if (*(v166 + 312) == 1)
    {
      *(a1 + 2608) = vorrq_s8(*(a1 + 2608), *(a1 + 2448));
      *(a1 + 2448) = 0uLL;
    }

    if (*(v166 + 313) == 1)
    {
      *(a1 + 2624) = vorrq_s8(*(a1 + 2624), *(a1 + 2464));
      *(a1 + 2464) = 0u;
    }

    if (*(v166 + 314) == 1)
    {
      *(a1 + 2592) = vorrq_s8(*(a1 + 2592), *(a1 + 2432));
      *(a1 + 2432) = 0u;
    }

    if (*(v166 + 315))
    {
      v128 = vorrq_s8(*(a1 + 2656), *(a1 + 2544));
      *(a1 + 2656) = v128;
      *(a1 + 2672) = vorrq_s8(*(a1 + 2672), *(a1 + 2560));
      v129 = vorrq_s8(*(a1 + 2640), *(a1 + 2528));
      *(a1 + 2640) = v129;
      *(a1 + 2688) = vorrq_s8(*(a1 + 2688), *(a1 + 2576));
      v130 = 0uLL;
      *(a1 + 2560) = 0u;
      *(a1 + 2576) = 0u;
      v131 = 0uLL;
      *(a1 + 2528) = 0u;
      *(a1 + 2544) = 0u;
    }

    else
    {
      v130 = *(a1 + 2528);
      v129 = *(a1 + 2640);
      v131 = *(a1 + 2544);
      v128 = *(a1 + 2656);
    }

    *(a1 + 2400) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2432), *(a1 + 2480)), vorrq_s8(v130, *(a1 + 2592))), v129);
    *(a1 + 2416) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2448), *(a1 + 2496)), vorrq_s8(v131, *(a1 + 2608))), v128);
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(a1 + 2392);
    v132 = *(a1 + 576);
    v133 = *(v132 + 72);
    v134 = *(v132 + 80);
    if (v133 != v134)
    {
      while (1)
      {
        v136 = *v133;
        v137 = **v133;
        if ((v137 > 0x3E || ((1 << v137) & 0x4000000000033800) == 0) && (v137 - 93 > 0x14 || ((1 << (v137 - 93)) & 0x100031) == 0))
        {
          break;
        }

        v140 = v136[1];
        if ((v140 & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

LABEL_178:
        if (++v133 == v134)
        {
          goto LABEL_230;
        }
      }

      v140 = v136[1];
LABEL_189:
      v141 = (*(a1 + 776) + 4 * v136[2]);
      switch(v137)
      {
        case ' ':
          v135 = 13;
          goto LABEL_177;
        case '!':
          v135 = 14;
          goto LABEL_177;
        case '""':
          v135 = 15;
          goto LABEL_177;
        case '#':
          v135 = 7;
          goto LABEL_177;
        case '$':
          v135 = 8;
          goto LABEL_177;
        case '%':
          v135 = 9;
          goto LABEL_177;
        case '&':
          v135 = 4;
          goto LABEL_177;
        case '\'':
          v135 = 5;
          goto LABEL_177;
        case '(':
          v135 = 6;
          goto LABEL_177;
        case '*':
          *v141 = 470;
          *(a1 + 4074) = 1;
          goto LABEL_178;
        case '+':
          *v141 = (v140 + 474) & 0x1FFFFFFF;
          v142 = *(a1 + 3916);
          *(a1 + 3920 + 4 * v142) = v140;
          *(a1 + 3916) = v142 + 1;
          goto LABEL_178;
        case ',':
          *v141 = 0x1100000010;
          *(a1 + 4072) = 1;
          goto LABEL_178;
        case '-':
          v135 = 10;
          goto LABEL_177;
        case '.':
          v135 = 11;
          goto LABEL_177;
        case '/':
          v135 = 12;
          goto LABEL_177;
        case ':':
          v135 = 471;
          goto LABEL_177;
        case '@':
          *v141 = 0x1300000012;
          goto LABEL_178;
        case 'H':
          *v141 = 0x1500000014;
          v141[2] = 22;
          goto LABEL_178;
        case 'I':
          *v141 = 0x1800000017;
          v141[2] = 25;
          goto LABEL_178;
        case 'T':
          v135 = 473;
          goto LABEL_177;
        case '^':
          v135 = 3;
          goto LABEL_177;
        case 'o':
          v135 = 472;
          goto LABEL_177;
        case 'v':
          *v141 = 0x1B0000001ALL;
          goto LABEL_178;
        case 'w':
          *v141 = 0x1D0000001CLL;
          goto LABEL_178;
        case 'x':
          goto LABEL_178;
        default:
          v143 = v137 - 11;
          v144 = v140 & 0xFFFFF;
          v145 = (v140 & 0xFFFFF) << 7;
          switch(v143)
          {
            case 0u:
              *v141 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v145), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
              goto LABEL_178;
            case 1u:
              LODWORD(v146) = (32 * v144) | 0x40000000;
              DWORD1(v146) = (32 * (v140 & 0xFFFFF)) | 0x40000001;
              *(&v146 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v145), 0xC00000008), 2uLL) | 0x4000000040000000;
              *v141 = v146;
              goto LABEL_178;
            case 2u:
              v135 = (32 * v144) | 0x40000008;
              break;
            case 5u:
              v135 = (32 * v144) | 0x40000009;
              break;
            case 6u:
              v135 = (32 * v144) | 0x4000000A;
              break;
            case 0x33u:
              v135 = (32 * v144) | 0x4000000B;
              break;
            case 0x52u:
              if ((v140 & 0xFFF00000) == 0x400000)
              {
                *v141 = 0;
                goto LABEL_178;
              }

              v135 = (32 * v144) | 0x4000000C;
              break;
            case 0x56u:
              *v141 = vorr_s8(vdup_n_s32(32 * v144), 0x4000000F4000000ELL);
              goto LABEL_178;
            case 0x57u:
              *v141 = vorr_s8(vdup_n_s32(8 * v144), 0x6000000160000000);
              goto LABEL_178;
            case 0x62u:
              v135 = (2 * (v140 & 0xFFFFFFF)) | 0xC0000000;
              break;
            case 0x63u:
              v135 = (2 * (v140 & 0xFFFFFFF)) | 0xC0000001;
              break;
            case 0x66u:
              v135 = (8 * v144) | 0x60000000;
              break;
            case 0x78u:
              v135 = v140 & 0x1FFFFFFF | 0x80000000;
              break;
            default:
              goto LABEL_178;
          }

LABEL_177:
          *v141 = v135;
          break;
      }

      goto LABEL_178;
    }

LABEL_230:
    *(a1 + 856) = 1;
    v147 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v147 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v147)
    {
      if (!((v147 >> 2) >> 62))
      {
        operator new();
      }

LABEL_258:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v148 = *(a1 + 776);
    v149 = *(a1 + 784);
    if (v148 != v149)
    {
      do
      {
        v150 = *v148;
        if (*v148 >> 29 == 7)
        {
          v151 = 544;
        }

        else
        {
          v151 = dword_29D2F5224[v150 >> 29];
        }

        LODWORD(m) = v151 + (v150 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v148;
      }

      while (v148 != v149);
      v148 = *(a1 + 776);
      if (*(a1 + 784) != v148)
      {
        operator new();
      }
    }

    *(a1 + 784) = v148;
    if (*(v166 + 467) == 1)
    {
      v152 = *(a1 + 576);
      v153 = *(a1 + 1344);
      v154 = *(v152 + 136);
      if (*(a1 + 968) > v153)
      {
        v153 = *(a1 + 968);
      }

      *(a1 + 968) = v153;
      v155 = vorrq_s8(*(a1 + 992), *(v152 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v152 + 104));
      *(a1 + 992) = v155;
      *(a1 + 1008) |= v154;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    *(a1 + 1360) &= ~0x4000000000uLL;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v166);
    v156 = *(a1 + 584);
    if (v156)
    {
      v157 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v156);
      MEMORY[0x29ED520D0](v157, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v158 = *(a1 + 576);
    if (v158)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v158);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 4144));
}

void sub_29CDF78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4144));
  _Unwind_Resume(a1);
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v30 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v30;
    if (!v30)
    {
      break;
    }

    v19 = __clz(__rbit64(v30));
    v21 = v19 | 0x40;
    p_i = &v30;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= ~(1 << v25))
  {
    v25 = __clz(__rbit64(k));
    v16->i32[0] = v25 + 474;
    v16 = (v16 + 4);
    v26 = *(a1 + 3916);
    *(a1 + 3920 + 4 * v26) = v25;
    *(a1 + 3916) = v26 + 1;
  }

  AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v27 = *(a1 + 1128);
  v28 = *(a1 + 1120);
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v29 + (((v27 - v28) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4144));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = *(a2 + 64);
  v11 = *(a2 + 88);
  if (*(a1 + 3016) > v8)
  {
    v8 = *(a1 + 3016);
  }

  *(a1 + 3016) = v8;
  v12 = v11 + v9;
  v13 = *(a1 + 3008);
  if (v13 <= v12)
  {
    v13 = v12;
  }

  *(a1 + 3008) = v13;
  if (*(a1 + 3020) > v10)
  {
    v10 = *(a1 + 3020);
  }

  *(a1 + 3020) = v10;
  v14 = *(a1 + 2392);
  v15 = *(a1 + 3012);
  v16 = *(a1 + 3024);
  *(v14 + 140) = *(v14 + 140) & 0xFFFFF00000000000 | (((v13 + 3) >> 2) << 16) | (((((((v10 + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | ((v13 + 3) >> 2);
  *(v14 + 320) = (v15 + 3) >> 2;
  *(v14 + 324) = (((v16 + 3) >> 2) + 1) & 0x7FFFFFFE;
  if (*(v14 + 222) == 1)
  {
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v14 + 48, *(v14 + 312), *v14 + *(v14 + 316));
  }

  v17 = *(a1 + 3272);
  if (v17)
  {
    v18 = *(a1 + 3012);
    v19 = *(a1 + 3024);
    v20 = ((*(a1 + 3008) + 3) >> 2);
    *(v17 + 140) = *(v17 + 140) & 0xFFFFF00000000000 | (v20 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v20;
    *(v17 + 320) = (v18 + 3) >> 2;
    *(v17 + 324) = (((v19 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v17 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v17 + 48, *(v17 + 312), *v17 + *(v17 + 316));
    }

    v21 = *(a1 + 3272);
    v22 = *(a1 + 3224);
    memcpy(v22, *v21, *(v21 + 8) - *v21);
    if (*(v21 + 272) == 1)
    {
      *&v22[*(v21 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v22[*(v21 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v23 = *(a1 + 3272);
    v25 = *(v23 + 64);
    v24 = *(v23 + 80);
    *(a1 + 3280) = *(v23 + 48);
    *(a1 + 3296) = v25;
    *(a1 + 3312) = v24;
    v26 = *(v23 + 128);
    v27 = *(v23 + 144);
    v28 = *(v23 + 112);
    *(a1 + 3328) = *(v23 + 96);
    *(a1 + 3376) = v27;
    *(a1 + 3360) = v26;
    *(a1 + 3344) = v28;
    v30 = *(v23 + 176);
    v29 = *(v23 + 192);
    v31 = *(v23 + 208);
    *(a1 + 3392) = *(v23 + 160);
    *(a1 + 3440) = v31;
    *(a1 + 3424) = v29;
    *(a1 + 3408) = v30;
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a2 + 228) == 1)
  {
    *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
  }

  std::mutex::unlock((a1 + 4144));
}

void AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BackgroundObjectProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v482 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E40;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v469 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 640) = v10;
  *(a1 + 656) = v10;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v10;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v459 = (a1 + 896);
  *(a1 + 904) = 0u;
  v11 = a1 + 928;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v12 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v462 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v467 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v472 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v9 = (v16 + *v16);
  }

  v17 = (v9 - *v9);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v474 = (v9 + v18 + *(v9 + v18));
  }

  else
  {
    v474 = 0;
  }

  v19 = 0;
  v20 = a3 + 128;
  if (a3[58])
  {
    v21 = a3[59] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 58;
  if (v21)
  {
    v22 = 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v23 = a3[v22];
  if (v23 && v20[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 < 5u)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24[2];
    if (v25)
    {
      v25 = (v25 + v19 + *(v25 + v19));
    }
  }

  v26 = *v25;
  v27 = -v26;
  v473 = v25;
  v28 = (v25 - v26);
  v29 = *v28;
  if (v29 < 0x25)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v28[18];
    if (v28[18])
    {
      LOBYTE(v30) = *(v473 + v30) != 0;
    }
  }

  *(a1 + 1585) = v30;
  v31 = (v474 - *v474);
  if (*v31 < 0x55u || (v32 = v31[42]) == 0 || !*(v474 + v32))
  {
LABEL_63:
    if (v29 < 7)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      v46 = *(v473 + v27 + 6);
      if (*(v473 + v27 + 6))
      {
        LODWORD(v46) = *(v473 + v46);
      }
    }

    v457 = (a1 + 304);
    v458 = (a1 + 256);
    v455 = (a1 + 328);
    v456 = (a1 + 280);
    *(a1 + 800) = v46;
    v47 = (v473 - *v473);
    if (*v47 >= 0x13u && (v48 = v47[9]) != 0)
    {
      v49 = v473 + v48 + *(v473 + v48) + 4;
    }

    else
    {
      v49 = "";
    }

    v460 = (a1 + 864);
    v461 = (a1 + 840);
    v50 = (a1 + 1400);
    v466 = a1 + 1536;
    v454 = (a1 + 1616);
    v470 = (a1 + 56);
    v463 = (a1 + 144);
    MEMORY[0x29ED51E00](v462, v49);
    v51 = (v473 - *v473);
    if (*v51 >= 9u && (v52 = v51[4]) != 0)
    {
      v53 = v473 + v52 + *(v473 + v52) + 4;
    }

    else
    {
      v53 = "";
    }

    MEMORY[0x29ED51E00](v461, v53);
    v54 = (v473 - *v473);
    if (*v54 < 0x29u)
    {
      LOBYTE(v55) = 0;
    }

    else
    {
      v55 = v54[20];
      if (v55)
      {
        LOBYTE(v55) = *(v473 + v55) != 0;
      }
    }

    *(a1 + 888) = v55;
    std::string::operator=(v460, &__str);
    v56 = (v473 - *v473);
    if (*v56 >= 0x51u && (v57 = v56[40]) != 0)
    {
      v58 = v473 + v57 + *(v473 + v57) + 4;
    }

    else
    {
      v58 = "";
    }

    MEMORY[0x29ED51E00](v459, v58);
    v453 = v11;
    v59 = v474;
    v60 = (v473 - *v473);
    if (*v60 >= 5u && v60[2] && *(a2 + 16608) == 1)
    {
      v61 = a3[1];
      if (v61 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_719;
      }

      v62 = *a3;
      if (v61 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v61)
      {
        memmove(__dst, v62, v61);
      }

      __dst[v61] = 0;
      if (*v12 < 0)
      {
        operator delete(*v50);
      }

      *v50 = *__dst;
      *(a1 + 1416) = *&__dst[16];
      v63 = a3[3];
      if (a3[4])
      {
        v64 = v63 == 0;
      }

      else
      {
        v64 = 1;
      }

      if (v64)
      {
        v63 = a3[73];
      }

      *(a1 + 1424) = v63 - *a3;
      v59 = v474;
    }

    v452 = a5;
    v65 = a3 + 113;
    if (a3[43])
    {
      v66 = a3[44] == 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = 43;
    if (v66)
    {
      v67 = 113;
    }

    else
    {
      v65 = a3 + 43;
    }

    v468 = a3;
    v68 = a3[v67];
    if (!v68 || !v65[1])
    {
LABEL_126:
      v81 = v468;
      v82 = v468 + 138;
      if (v468[68])
      {
        v83 = v468[69] == 0;
      }

      else
      {
        v83 = 1;
      }

      v84 = 68;
      if (v83)
      {
        v84 = 138;
      }

      else
      {
        v82 = v468 + 68;
      }

      v85 = v468[v84];
      v86 = v82[1];
      if (v85)
      {
        v87 = v86 == 0;
      }

      else
      {
        v87 = 1;
      }

      if (v87 || (v88 = (v85 + *v85), v89 = (v88 - *v88), *v89 < 5u) || (v90 = v89[2]) == 0)
      {
        v91 = 0;
      }

      else
      {
        v91 = *(v88 + v90);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      v92 = v473;
      *(a1 + 1624) = (v91 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v93 = (v59 - *v59);
      if (*v93 < 5u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[2];
        if (v94)
        {
          LODWORD(v94) = *(v59 + v94);
        }
      }

      *v454 = v94;
      v95 = (v59 - *v59);
      if (*v95 < 0x2Du)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[22];
        if (v96)
        {
          LODWORD(v96) = *(v59 + v96);
        }
      }

      *(a1 + 1620) = v96;
      v97 = (v59 - *v59);
      if (*v97 < 0x35u)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v97[26];
        if (v98)
        {
          LODWORD(v98) = *(v59 + v98);
        }
      }

      *(a1 + 1660) = v98;
      v99 = (v59 - *v59);
      if (*v99 < 0x43u)
      {
        LODWORD(v100) = 0;
      }

      else
      {
        v100 = v99[33];
        if (v100)
        {
          LODWORD(v100) = *(v59 + v100);
        }
      }

      *(a1 + 1696) = v100;
      v101 = v468 + 108;
      if (v468[38])
      {
        v102 = v468[39] == 0;
      }

      else
      {
        v102 = 1;
      }

      v103 = 38;
      if (v102)
      {
        v103 = 108;
      }

      else
      {
        v101 = v468 + 38;
      }

      v104 = v468[v103];
      if (v104 && v101[1])
      {
        v105 = (v104 + *v104);
        v106 = (v105 - *v105);
        if (*v106 < 0xDu)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[6];
          if (v107)
          {
            LODWORD(v107) = *(v105 + v107);
          }
        }

        *(a1 + 1620) = v107;
        v108 = (v105 - *v105);
        if (*v108 < 0xBu)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[5];
          if (v109)
          {
            LODWORD(v109) = *(v105 + v109);
          }
        }

        *(a1 + 1628) = v109;
        v110 = (v105 - *v105);
        if (*v110 < 0x11u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[8];
          if (v111)
          {
            LODWORD(v111) = *(v105 + v111);
          }
        }

        *(a1 + 1632) = v111;
        v112 = (v105 - *v105);
        if (*v112 < 0x13u)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[9];
          if (v113)
          {
            LODWORD(v113) = *(v105 + v113);
          }
        }

        *(a1 + 1636) = v113;
        v114 = (v105 - *v105);
        if (*v114 < 0x17u)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[11];
          if (v115)
          {
            LODWORD(v115) = *(v105 + v115);
          }
        }

        *(a1 + 1640) = v115;
        v116 = (v105 - *v105);
        if (*v116 < 0x1Bu)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[13];
          if (v117)
          {
            LODWORD(v117) = *(v105 + v117);
          }
        }

        *(a1 + 1644) = v117;
        v118 = (v105 - *v105);
        if (*v118 < 0x15u)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[10];
          if (v119)
          {
            LODWORD(v119) = *(v105 + v119);
          }
        }

        *(a1 + 1648) = v119;
        v120 = (v105 - *v105);
        if (*v120 < 0x19u)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[12];
          if (v121)
          {
            LODWORD(v121) = *(v105 + v121);
          }
        }

        *(a1 + 1652) = v121;
        v122 = (v105 - *v105);
        if (*v122 < 0x1Du)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[14];
          if (v123)
          {
            LODWORD(v123) = *(v105 + v123);
          }
        }

        *(a1 + 1656) = v123;
        v124 = (v105 - *v105);
        if (*v124 < 0xFu)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[7];
          if (v125)
          {
            LODWORD(v125) = *(v105 + v125);
          }
        }

        *(a1 + 1660) = v125;
        v126 = (v105 - *v105);
        if (*v126 < 0x1Fu)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[15];
          if (v127)
          {
            LODWORD(v127) = *(v105 + v127);
          }
        }

        *(a1 + 1664) = v127;
        v128 = (v105 - *v105);
        if (*v128 < 0x21u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[16];
          if (v129)
          {
            LODWORD(v129) = *(v105 + v129);
          }
        }

        *(a1 + 1668) = v129;
        v130 = (v105 - *v105);
        if (*v130 < 0x23u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[17];
          if (v131)
          {
            LODWORD(v131) = *(v105 + v131);
          }
        }

        *(a1 + 1672) = v131;
        v132 = (v105 - *v105);
        if (*v132 < 0x25u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[18];
          if (v133)
          {
            LODWORD(v133) = *(v105 + v133);
          }
        }

        *(a1 + 1676) = v133;
        v134 = (v105 - *v105);
        if (*v134 < 0x27u)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[19];
          if (v135)
          {
            LODWORD(v135) = *(v105 + v135);
          }
        }

        *(a1 + 1680) = v135;
        v136 = (v105 - *v105);
        if (*v136 < 0x29u)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[20];
          if (v137)
          {
            LODWORD(v137) = *(v105 + v137);
          }
        }

        *(a1 + 1684) = v137;
        v138 = (v105 - *v105);
        if (*v138 < 0x2Bu)
        {
          LODWORD(v139) = 0;
        }

        else
        {
          v139 = v138[21];
          if (v139)
          {
            LODWORD(v139) = *(v105 + v139);
          }
        }

        *(a1 + 1688) = v139;
        v140 = (v105 - *v105);
        if (*v140 < 7u)
        {
          LODWORD(v141) = 0;
        }

        else
        {
          v141 = v140[3];
          if (v141)
          {
            LODWORD(v141) = *(v105 + v141);
          }
        }

        *(a1 + 1692) = v141;
        v142 = (v105 - *v105);
        if (*v142 >= 5u && (v143 = v142[2]) != 0)
        {
          v144 = *(v105 + v143);
        }

        else
        {
          v144 = 0;
        }

        *(a1 + 1700) = v144;
      }

      if (v468[53])
      {
        v145 = v468[54];
        if (v145)
        {
          v146 = v468[53];
        }

        else
        {
          v146 = v468[123];
        }

        if (v145)
        {
          v147 = v468 + 53;
        }

        else
        {
          v147 = v468 + 123;
        }
      }

      else
      {
        v147 = v468 + 123;
        v146 = v468[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v146, v147[1]);
      std::string::push_back((a1 + 1760), 0);
      v148 = *v59;
      v149 = v59 - v148;
      v150 = *(v59 - v148);
      if (v150 < 0x39)
      {
        goto LABEL_269;
      }

      v151 = -v148;
      v152 = *(v149 + 28);
      if (v152)
      {
        v153 = (v59 + v152 + *(v59 + v152));
        if (*v153)
        {
          *(a1 + 1504) = 1;
          v154 = (v153 + v153[1] + 4);
          v155 = (v154 - *v154);
          if (*v155 >= 9u && (v156 = v155[4]) != 0)
          {
            v157 = *(v154 + v156);
          }

          else
          {
            v157 = 0;
          }

          *(a1 + 1704) = v157;
          *(a1 + 1708) = 1;
          v158 = *v59;
          v151 = -v158;
          v150 = *(v59 - v158);
        }
      }

      if (v150 < 0x3B)
      {
        goto LABEL_269;
      }

      v159 = v59 + v151;
      if (*(v159 + 29))
      {
        v160 = (v59 + *(v159 + 29) + *(v59 + *(v159 + 29)));
        v161 = *v160;
        if (v161)
        {
          v162 = v160 + 1;
          do
          {
            v164 = *v162++;
            v163 = v164;
            if (!(v164 >> 20))
            {
              *(a1 + 1488 + 8 * (v163 > 0x3F)) |= 1 << v163;
            }

            --v161;
          }

          while (v161);
        }
      }

      if (v150 < 0x57)
      {
LABEL_269:
        LODWORD(v165) = 0;
      }

      else
      {
        v165 = *(v159 + 43);
        if (*(v159 + 43))
        {
          LODWORD(v165) = *(v59 + v165);
        }
      }

      *(a1 + 692) = v165;
      v166 = (v59 - *v59);
      if (*v166 >= 0x21u && (v167 = v166[16]) != 0)
      {
        v168 = *(v59 + v167);
      }

      else
      {
        v168 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v168;
      v169 = (v59 - *v59);
      if (*v169 < 0x59u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[44];
        if (v170)
        {
          LODWORD(v170) = *(v59 + v170);
        }
      }

      *(a1 + 720) = v170;
      v171 = (v59 - *v59);
      if (*v171 < 0x51u)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[40];
        if (v172)
        {
          LODWORD(v172) = *(v59 + v172);
        }
      }

      *(a1 + 724) = v172;
      v173 = (v59 - *v59);
      if (*v173 < 0x4Bu)
      {
        LODWORD(v174) = 0;
      }

      else
      {
        v174 = v173[37];
        if (v174)
        {
          LODWORD(v174) = *(v59 + v174);
        }
      }

      *(a1 + 732) = v174;
      v175 = (v59 - *v59);
      v176 = *v175;
      if (v176 >= 0x25)
      {
        if (v175[18] && *(v59 + v175[18]))
        {
          if (v176 < 0x27)
          {
            LOBYTE(v177) = 0;
            v178 = 1;
            goto LABEL_298;
          }

          v177 = v175[19];
          goto LABEL_292;
        }

        if (v176 >= 0x27)
        {
          v177 = v175[19];
          if (v175[19] && *(v59 + v175[19]))
          {
            v178 = 1;
            LOBYTE(v177) = 1;
            goto LABEL_298;
          }

          if (v176 < 0x29)
          {
            goto LABEL_715;
          }

          if (v175[20] && *(v59 + v175[20]))
          {
LABEL_292:
            v178 = 1;
            goto LABEL_716;
          }

          if (v176 >= 0x71 && (v444 = v175[56]) != 0)
          {
            v178 = *(v59 + v444) != 0;
          }

          else
          {
LABEL_715:
            v178 = 0;
          }

LABEL_716:
          if (v177)
          {
            LOBYTE(v177) = *(v59 + v177) != 0;
          }

LABEL_298:
          *(a1 + 742) = v177;
          v179 = (v473 - *v473);
          v180 = *v179;
          if (v180 < 0x21)
          {
            v182 = 0;
            LODWORD(v181) = 0;
          }

          else
          {
            v181 = v179[16];
            if (v179[16])
            {
              LODWORD(v181) = *(v473 + v181);
            }

            if (v180 < 0x4D)
            {
              v182 = 0;
            }

            else
            {
              v182 = v179[38];
              if (v179[38])
              {
                v182 = *(v473 + v182);
              }

              if (v180 >= 0x4F)
              {
                v183 = v179[39];
                if (v183)
                {
                  v183 = *(v473 + v183);
                }

LABEL_310:
                *(a1 + 784) = v181 | (v182 << 32);
                *(a1 + 792) = v183;
                *(a1 + 746) = (v178 | v177) & 1;
                v184 = *v59;
                v185 = (v59 - v184);
                v186 = *(v59 - v184);
                if (v186 < 0x37)
                {
                  LOBYTE(v187) = 0;
                }

                else
                {
                  v187 = v185[27];
                  if (v185[27])
                  {
                    LOBYTE(v187) = *(v59 + v187) != 0;
                  }
                }

                *(a1 + 741) = v187;
                v188 = (v473 - *v473);
                v189 = *v188;
                if (v189 < 0x33)
                {
                  LOBYTE(v190) = 0;
                }

                else
                {
                  v190 = v188[25];
                  if (v188[25])
                  {
                    LOBYTE(v190) = *(v473 + v190) != 0;
                  }
                }

                *(a1 + 747) = v190;
                if (v186 < 0x3F)
                {
                  LOBYTE(v191) = 0;
                }

                else
                {
                  v191 = v185[31];
                  if (v185[31])
                  {
                    v192 = (v59 + v191 + *(v59 + v191));
                    v191 = *v192;
                    if (v191)
                    {
                      v193 = v192 + 1;
                      while (1)
                      {
                        v195 = *v193++;
                        v194 = v195;
                        if (v195 < 0x36 && ((0x3F000000000777uLL >> v194) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v191)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v191) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 749) = v191;
                if (v189 <= 0x14)
                {
                  LOBYTE(v197) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v196 = v188[10];
                  if (v188[10])
                  {
                    LOBYTE(v196) = *(v473 + v196) != 0;
                  }

                  *(a1 + 743) = v196;
                  if (v189 < 0x25)
                  {
                    LOBYTE(v197) = 0;
                  }

                  else
                  {
                    v197 = v188[18];
                    if (v188[18])
                    {
                      LOBYTE(v197) = *(v473 + v197) != 0;
                    }
                  }
                }

                v198 = -v184;
                *(a1 + 1585) = v197;
                if (v186 < 0x5D)
                {
                  LOBYTE(v199) = 0;
                }

                else
                {
                  v199 = v185[46];
                  if (v199)
                  {
                    LOBYTE(v199) = *(v59 + v199) != 0;
                  }
                }

                v464 = v178;
                *(a1 + 748) = v199;
                if (v189 >= 0x23 && (v200 = v188[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v201 = (v473 + v200 + *(v473 + v200));
                  v202 = *v201;
                  if (v202)
                  {
                    v203 = &v201[v202];
                    while (1)
                    {
                      v204 = v201[1];
                      v205 = (++v201 + v204);
                      v206 = (v205 - *v205);
                      v207 = *v206;
                      if (v207 < 7)
                      {
                        v208 = 0;
                        v210 = 0;
                        if (v207 < 5)
                        {
                          goto LABEL_351;
                        }

                        v209 = v206[2];
                        if (v209)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v206[3])
                      {
                        v208 = *(v205 + v206[3]);
                        v209 = v206[2];
                        if (v209)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v208 = 0;
                        v209 = v206[2];
                        if (v209)
                        {
LABEL_350:
                          v210 = *(v205 + v209);
                          goto LABEL_351;
                        }
                      }

                      v210 = 0;
LABEL_351:
                      v211 = v472;
LABEL_352:
                      v212 = *v211;
                      if (!*v211)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v211 = v212;
                        v213 = *(v212 + 28);
                        if (v210 < v213)
                        {
                          goto LABEL_352;
                        }

                        if (v213 >= v210)
                        {
                          break;
                        }

                        v212 = v211[1];
                        if (!v212)
                        {
                          goto LABEL_356;
                        }
                      }

                      v214 = v211;
                      v81 = v468;
                      v59 = v474;
                      *(v214 + 8) = v208;
                      if (v201 == v203)
                      {
                        v215 = *v474;
                        v198 = -v215;
                        v186 = *(v474 - v215);
                        v92 = v473;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v186 >= 0x21 && *(v59 + v198 + 32))
                {
                  v216 = *(v59 + *(v59 + v198 + 32));
                  {
                    goto LABEL_367;
                  }
                }

                else
                {
                  v216 = 0;
                  {
                    goto LABEL_367;
                  }
                }

                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

LABEL_367:
                v217 = getAdditionalSpillBufferBytes(void)::extra + v216;
                *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v216;
                v218 = (v59 - *v59);
                if (*v218 < 0x43u)
                {
                  LODWORD(v219) = 0;
                }

                else
                {
                  v219 = v218[33];
                  if (v219)
                  {
                    LODWORD(v219) = *(v59 + v219);
                  }
                }

                *(a1 + 700) = v219;
                v220 = (v59 - *v59);
                if (*v220 < 5u)
                {
                  LODWORD(v221) = 0;
                }

                else
                {
                  v221 = v220[2];
                  if (v221)
                  {
                    LODWORD(v221) = *(v59 + v221);
                  }
                }

                *(a1 + 684) = v221;
                v222 = (v59 - *v59);
                if (*v222 < 0x51u)
                {
                  LODWORD(v223) = 0;
                }

                else
                {
                  v223 = v222[40];
                  if (v223)
                  {
                    LODWORD(v223) = *(v59 + v223);
                  }
                }

                *(a1 + 716) = v223;
                v224 = (v59 - *v59);
                if (*v224 < 0x4Fu)
                {
                  LODWORD(v225) = 0;
                }

                else
                {
                  v225 = v224[39];
                  if (v225)
                  {
                    LODWORD(v225) = *(v59 + v225);
                  }
                }

                *(a1 + 728) = v225;
                *(a1 + 736) = *(a4 + 468);
                v226 = (v59 - *v59);
                if ((*(v59 + v226[6] + *(v59 + v226[6])) | v217) != 0 || v464)
                {
                  goto LABEL_394;
                }

                v227 = *v226;
                if (v227 < 0x21)
                {
                  v228 = 0;
                  goto LABEL_389;
                }

                if (v226[16])
                {
                  v228 = *(v59 + v226[16]);
                  if (v227 < 0x43)
                  {
                    goto LABEL_389;
                  }
                }

                else
                {
                  v228 = 0;
                  if (v227 < 0x43)
                  {
                    goto LABEL_389;
                  }
                }

                if (v226[33])
                {
                  v229 = *(v59 + v226[33]);
                  {
                    goto LABEL_390;
                  }

                  goto LABEL_688;
                }

LABEL_389:
                v229 = 0;
                {
                  goto LABEL_390;
                }

LABEL_688:
                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

LABEL_390:
                if (!(v229 + v228 + getAdditionalSpillBufferBytes(void)::extra))
                {
                  v230 = (v59 - *v59);
                  if (*v230 < 0x5Fu)
                  {
                    LOBYTE(v231) = 0;
                  }

                  else
                  {
                    v231 = v230[47];
                    if (v231)
                    {
                      LOBYTE(v231) = *(v59 + v231) != 0;
                    }
                  }

LABEL_395:
                  *(a1 + 740) = v231;
                  v232 = (v92 - *v92);
                  if (*v232 < 0x11u)
                  {
                    LODWORD(v233) = 0;
                  }

                  else
                  {
                    v233 = v232[8];
                    if (v233)
                    {
                      LODWORD(v233) = *(v92 + v233);
                    }
                  }

                  v234 = (a1 + 1200);
                  *(a1 + 1392) = v233;
                  {
                  }

                  v235 = v81 + 3;
                  if (v81[4])
                  {
                    v236 = v81[3] == 0;
                  }

                  else
                  {
                    v236 = 1;
                  }

                  v237 = v81 + 73;
                  if (v236)
                  {
                    v238 = v81 + 73;
                  }

                  else
                  {
                    v238 = v81 + 3;
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6496, v238[1], (a1 + 1448));
                  *(a1 + 1480) += *&__dst[16];
                  v239 = *&__dst[16];
                  *v234 = *__dst;
                  *(a1 + 1216) = v239;
                  *(a1 + 1225) = *&__dst[25];
                  *(a1 + 920) = *(a1 + 1200);
                  *(a1 + 952) = a2 + 6496;
                  v240 = *(a1 + 1216);
                  *(a1 + 960) = *v234;
                  *(a1 + 976) = v240;
                  *(a1 + 985) = *(a1 + 1225);
                  if (*v235)
                  {
                    v241 = v81[4];
                    if (v241)
                    {
                      v242 = *v235;
                    }

                    else
                    {
                      v242 = v81[73];
                    }

                    if (v241)
                    {
                      v237 = v81 + 3;
                    }
                  }

                  else
                  {
                    v242 = *v237;
                  }

                  v243 = v463;
                  memcpy(*(a1 + 1208), v242, v237[1]);
                  v244 = *(a1 + 1208);
                  v245 = *(a1 + 1216);
                  *(a1 + 928) = *(a1 + 920);
                  *(a1 + 936) = v244;
                  *(a1 + 944) = v245;
                  v246 = v81 + 8;
                  if (v81[8])
                  {
                    if (v81[9])
                    {
                      v247 = v81 + 8;
                    }

                    else
                    {
                      v247 = v81 + 78;
                    }

                    v248 = v247[1];
                    if (!v248)
                    {
                      goto LABEL_430;
                    }
                  }

                  else
                  {
                    v248 = v81[79];
                    if (!v248)
                    {
                      goto LABEL_430;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v248, (a1 + 1456));
                  *(a1 + 1480) += *&__dst[16];
                  v249 = *&__dst[16];
                  *(a1 + 1248) = *__dst;
                  *(a1 + 1264) = v249;
                  *(a1 + 1273) = *&__dst[25];
                  v250 = *(a1 + 1264);
                  *(a1 + 1008) = *(a1 + 1248);
                  *(a1 + 1024) = v250;
                  *(a1 + 1033) = *(a1 + 1273);
                  if (*v246)
                  {
                    v251 = v81[9];
                    if (v251)
                    {
                      v252 = *v246;
                    }

                    else
                    {
                      v252 = v81[78];
                    }

                    if (v251)
                    {
                      v253 = v81 + 8;
                    }

                    else
                    {
                      v253 = v81 + 78;
                    }
                  }

                  else
                  {
                    v253 = v81 + 78;
                    v252 = v81[78];
                  }

                  v243 = v463;
                  memcpy(*(a1 + 1256), v252, v253[1]);
LABEL_430:
                  v254 = v81 + 13;
                  if (v81[13])
                  {
                    if (v81[14])
                    {
                      v255 = v81 + 13;
                    }

                    else
                    {
                      v255 = v81 + 83;
                    }

                    v256 = v255[1];
                    if (!v256)
                    {
                      goto LABEL_446;
                    }
                  }

                  else
                  {
                    v256 = v81[84];
                    if (!v256)
                    {
                      goto LABEL_446;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v256, (a1 + 1464));
                  *(a1 + 1480) += *&__dst[16];
                  v257 = *&__dst[16];
                  *(a1 + 1296) = *__dst;
                  *(a1 + 1312) = v257;
                  *(a1 + 1321) = *&__dst[25];
                  v258 = *(a1 + 1312);
                  *(a1 + 1056) = *(a1 + 1296);
                  *(a1 + 1072) = v258;
                  *(a1 + 1081) = *(a1 + 1321);
                  if (*v254)
                  {
                    v259 = v81[14];
                    if (v259)
                    {
                      v260 = *v254;
                    }

                    else
                    {
                      v260 = v81[83];
                    }

                    if (v259)
                    {
                      v261 = v81 + 13;
                    }

                    else
                    {
                      v261 = v81 + 83;
                    }
                  }

                  else
                  {
                    v261 = v81 + 83;
                    v260 = v81[83];
                  }

                  v243 = v463;
                  memcpy(*(a1 + 1304), v260, v261[1]);
                  v262 = *(a1 + 1312);
                  *(a1 + 1152) = *(a1 + 1296);
                  *(a1 + 1168) = v262;
LABEL_446:
                  v263 = v81 + 23;
                  if (v81[23])
                  {
                    if (!v81[24])
                    {
                      v263 = v81 + 93;
                    }

                    v264 = v263[1];
                    if (!v264)
                    {
                      goto LABEL_451;
                    }
                  }

                  else
                  {
                    v264 = v81[94];
                    if (!v264)
                    {
LABEL_451:
                      v268 = v470;
                      v269 = v473;
                      if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                      {
                        {
                          {
                            v271 = v462;
                            if (*(a1 + 839) < 0)
                            {
                              v271 = *v462;
                            }

                            v272 = v460;
                            if (*(a1 + 887) < 0)
                            {
                              v272 = v460->__r_.__value_.__r.__words[0];
                            }

                            v273 = v461;
                            if (*(a1 + 863) < 0)
                            {
                              v273 = *v461;
                            }

                            v274 = *(a1 + 800);
                            v275 = *(a1 + 808);
                            v276 = v459;
                            if (*(a1 + 919) < 0)
                            {
                              v276 = *v459;
                            }

                            v277 = *(a1 + 920);
                            v278 = *(a1 + 1216);
                            *__dst = 136448002;
                            *&__dst[4] = v271;
                            *&__dst[12] = 2082;
                            *&__dst[14] = v272;
                            *&__dst[22] = 2082;
                            *&__dst[24] = v273;
                            *&__dst[32] = 1026;
                            *&__dst[34] = v274;
                            *&__dst[38] = 2050;
                            *&__dst[40] = v275;
                            *v479 = 2082;
                            *&v479[2] = v276;
                            *&v479[10] = 2050;
                            *&v479[12] = v277;
                            v480 = 2050;
                            v481 = v278;
                            _os_signpost_emit_with_name_impl(&dword_29CA13000, v270, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                          }
                        }

                        v279 = *(a1 + 8);
                        v280 = v462;
                        if (*(a1 + 839) < 0)
                        {
                          v280 = *v462;
                        }

                        v281 = v460;
                        if (*(a1 + 887) < 0)
                        {
                          v281 = v460->__r_.__value_.__r.__words[0];
                        }

                        v282 = v461;
                        if (*(a1 + 863) < 0)
                        {
                          v282 = *v461;
                        }

                        v283 = v459;
                        if (*(a1 + 919) < 0)
                        {
                          v283 = *v459;
                        }

                        v284 = *(a1 + 800);
                        v285 = *(a1 + 808);
                        v286 = *(a1 + 920);
                        v287 = *(a1 + 1216);
                        v288 = *(a1 + 888);
                        *__dst = v280;
                        *&__dst[8] = v281;
                        *&__dst[16] = v282;
                        *&__dst[24] = v283;
                        *&__dst[32] = v284;
                        *&__dst[40] = v285;
                        *v479 = v286;
                        *&v479[8] = v287;
                        v479[16] = v288;
                        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v279, a1, __dst);
                      }

                      v289 = *(a4 + 208);
                      v291 = *(a4 + 144);
                      v290 = *(a4 + 148);
                      if (v289)
                      {
                        v292 = *(a4 + 144);
                      }

                      else
                      {
                        v292 = 0;
                      }

                      v293 = *(a4 + 176);
                      if (*(a4 + 176) == 0)
                      {
                        v291 = 0;
                      }

                      v294 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                      *(a1 + 48) = v292 + v290 + v291 + *(a4 + 152) + ((v294 + 3) & 0xFFFFFFFC);
                      v295 = *(a1 + 56);
                      v296 = (*(a1 + 64) - v295) >> 2;
                      if (v294 <= v296)
                      {
                        if (v294 < v296)
                        {
                          *(a1 + 64) = v295 + 4 * v294;
                        }
                      }

                      else
                      {
                        std::vector<unsigned int>::__append(v470, v294 - v296);
                        v293 = *(a4 + 176);
                        v290 = *(a4 + 148);
                        v289 = *(a4 + 208);
                      }

                      if (v289)
                      {
                        v297 = *(a4 + 144);
                      }

                      else
                      {
                        v297 = 0;
                      }

                      if (v293 | *(a4 + 184))
                      {
                        v298 = *(a4 + 144);
                      }

                      else
                      {
                        v298 = 0;
                      }

                      v299 = (v290 + v297 + v298);
                      v300 = *(a1 + 144);
                      v301 = (*(a1 + 152) - v300) >> 2;
                      if (v299 <= v301)
                      {
                        if (v299 < v301)
                        {
                          *(a1 + 152) = v300 + 4 * v299;
                        }
                      }

                      else
                      {
                        std::vector<unsigned int>::__append(v243, v299 - v301);
                      }

                      v302 = *v474;
                      v303 = *(v474 - v302 + 16);
                      v304 = *(v474 + v303);
                      v305 = *(v474 + v303 + v304);
                      if (v305)
                      {
                        v306 = 4 * v305;
                        v307 = v303 + v304;
                        while (1)
                        {
                          v309 = *(v474 + v307 + 4);
                          v310 = v474 + v307 + v309;
                          v311 = v309 - *(v310 + 1);
                          v312 = v474 + v307 + v311;
                          v313 = *(v312 + 2);
                          if (v313 < 7)
                          {
                            v316 = -*(a4 + 120);
                            if (v313 >= 5)
                            {
                              goto LABEL_509;
                            }

                            goto LABEL_517;
                          }

                          v314 = *(v312 + 5);
                          if (!v314 || (*(v474 + v307 + v309 + v314 + 4) & 0x80000000) == 0)
                          {
                            break;
                          }

LABEL_497:
                          v307 += 4;
                          v306 -= 4;
                          if (!v306)
                          {
                            v302 = *v474;
                            goto LABEL_524;
                          }
                        }

                        if (v313 <= 8)
                        {
                          v316 = -*(a4 + 120);
                        }

                        else
                        {
                          if (*(v474 + v307 + v311 + 12))
                          {
                            v315 = 4 * *(v474 + v307 + v309 + *(v474 + v307 + v311 + 12) + 4);
                          }

                          else
                          {
                            v315 = 0;
                          }

                          v316 = v315 - *(a4 + 120);
                        }

LABEL_509:
                        if (*(v474 + v307 + v311 + 8))
                        {
                          v317 = *(v474 + v307 + v309 + *(v474 + v307 + v311 + 8) + 4) != 6;
                          if (v313 >= 7)
                          {
LABEL_513:
                            v318 = *(v474 + v307 + v311 + 10);
                            if (v318)
                            {
                              v319 = 4 * (*(v474 + v307 + v309 + v318 + 4) & 0xFFFFF);
                              if (v317)
                              {
                                goto LABEL_518;
                              }

LABEL_517:
                              v319 = 0x40000000;
LABEL_518:
                              v470->__begin_[v316] = v319 & 0x1FFFFFFF | 0x40000000;
                              v470->__begin_[v316 + 1] = (v319 + 1) & 0x1FFFFFFF | 0x40000000;
                              v470->__begin_[v316 + 2] = (v319 + 2) & 0x1FFFFFFF | 0x40000000;
                              v470->__begin_[v316 + 3] = (v319 + 3) & 0x1FFFFFFF | 0x40000000;
                              v320 = v309 - *(v310 + 1);
                              v321 = v474 + v307 + v320;
                              if (*(v321 + 2) >= 0xBu)
                              {
                                v322 = *(v321 + 7);
                                if (v322)
                                {
                                  if (*(v474 + v307 + v309 + v322 + 4))
                                  {
                                    v323 = *(v474 + v307 + v320 + 10);
                                    if (v323)
                                    {
                                      v308 = *(v474 + v307 + v309 + v323 + 4) & 0xFFFFF;
                                    }

                                    else
                                    {
                                      v308 = 0;
                                    }

                                    *(a1 + 768 + 8 * (v308 > 0x3F)) |= 1 << v308;
                                  }
                                }
                              }

                              goto LABEL_497;
                            }
                          }
                        }

                        else
                        {
                          v317 = 1;
                          if (v313 >= 7)
                          {
                            goto LABEL_513;
                          }
                        }

                        v319 = 0x40000000;
                        if (!v317)
                        {
                          goto LABEL_517;
                        }

                        goto LABEL_518;
                      }

LABEL_524:
                      v324 = -v302;
                      v325 = v474 + v324;
                      if (*(a1 + 742))
                      {
                        v326 = *(v325 + 12);
                        v327 = *(v474 + v326);
                        v328 = (v474 + v326 + v327);
                        v329 = *v328;
                        if (v329)
                        {
                          v330 = 0;
                          v331 = 4 * v329;
                          v332 = v474 + v326 + v327;
                          while (1)
                          {
                            v333 = v328[v330 / 4 + 1];
                            v334 = v333 - *(&v328[v330 / 4 + 1] + v333);
                            v335 = &v332[v330 + v334];
                            v336 = *(v335 + 2);
                            if (v336 >= 5)
                            {
                              v337 = *(v335 + 4);
                              if (v337)
                              {
                                if (v332[v330 + 4 + v333 + v337] == 93)
                                {
                                  if (v336 < 7)
                                  {
                                    break;
                                  }

                                  v338 = *&v332[v330 + 10 + v334];
                                  if (!v338)
                                  {
                                    break;
                                  }

                                  v339 = *&v332[v330 + 4 + v333 + v338];
                                  if ((v339 & 0x80000000) == 0 && (v339 & 0xFFF00000) != 0x400000)
                                  {
                                    break;
                                  }
                                }
                              }
                            }

                            v330 += 4;
                            if (v331 == v330)
                            {
                              goto LABEL_536;
                            }
                          }

                          *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                        }
                      }

LABEL_536:
                      v340 = *(v325 + 10);
                      v341 = *(v474 + v340);
                      v342 = *(v474 + v340 + v341);
                      if (!v342)
                      {
                        goto LABEL_555;
                      }

                      v343 = 4 * v342;
                      v344 = v340 + v341;
                      while (1)
                      {
                        v345 = *(v474 + v344 + 4);
                        v346 = v345 - *(v474 + v344 + v345 + 4);
                        v347 = v474 + v344 + v346;
                        v348 = *(v347 + 2);
                        if (v348 < 7)
                        {
                          goto LABEL_545;
                        }

                        v349 = *(v347 + 5);
                        if (!v349 || (*(v474 + v344 + v345 + v349 + 4) & 0x80000000) == 0)
                        {
                          break;
                        }

LABEL_538:
                        v344 += 4;
                        v343 -= 4;
                        if (!v343)
                        {
                          v324 = -*v474;
LABEL_555:
                          v465 = a1 + 752;
                          v355 = (v474 + *(v474 + v324 + 12));
                          v356 = (v355 + *v355);
                          v357 = *v356;
                          if (v357)
                          {
                            v358 = &v356[v357];
                            while (1)
                            {
                              v359 = v356[1];
                              v360 = (++v356 + v359);
                              v361 = (v360 - *v360);
                              v362 = *v361;
                              if (v362 < 7)
                              {
                                LODWORD(v363) = 0;
                                goto LABEL_565;
                              }

                              if (!v361[3] || (*(v360 + v361[3]) & 0x80000000) == 0)
                              {
                                break;
                              }

LABEL_557:
                              if (v356 == v358)
                              {
                                goto LABEL_595;
                              }
                            }

                            if (v362 < 9)
                            {
                              LODWORD(v363) = 0;
                              goto LABEL_566;
                            }

                            v363 = v361[4];
                            if (v361[4])
                            {
                              LODWORD(v363) = (*(v360 + v363) >> 1) & 0x1FFFFFFF;
                              goto LABEL_566;
                            }

LABEL_565:
                            if (v362 < 7)
                            {
                              LODWORD(v364) = 0;
                            }

                            else
                            {
LABEL_566:
                              v364 = v361[3];
                              if (v364)
                              {
                                LODWORD(v364) = *(v360 + v364) & 0xFFFFF;
                                if (v364 == 62)
                                {
                                  v365 = 0;
                                }

                                else
                                {
                                  v365 = 536871012;
                                }

                                if (v364 == 49)
                                {
                                  v365 = 536871011;
                                }

LABEL_576:
                                v366 = *(a4 + 124) + v363 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                *(*v268 + 4 * v366) = v365;
                                v367 = (v360 - *v360);
                                if (*v367 >= 0xBu)
                                {
                                  v368 = v367[5];
                                  if (v368)
                                  {
                                    if (*(v360 + v368))
                                    {
                                      *(v465 + 8 * (v364 > 0x3F)) |= 1 << v364;
                                    }
                                  }
                                }

                                if (*(a1 + 1587) == 1)
                                {
                                  v369 = *v472;
                                  if (!*v472)
                                  {
LABEL_718:
                                    abort();
                                  }

                                  v370 = 2 * v366;
                                  v371 = (2 * v366) | 1;
                                  while (1)
                                  {
                                    while (1)
                                    {
                                      v372 = *(v369 + 7);
                                      if (v364 >= v372)
                                      {
                                        break;
                                      }

                                      v369 = *v369;
                                      if (!v369)
                                      {
                                        goto LABEL_718;
                                      }
                                    }

                                    if (v372 >= v364)
                                    {
                                      break;
                                    }

                                    v369 = v369[1];
                                    if (!v369)
                                    {
                                      goto LABEL_718;
                                    }
                                  }

                                  v373 = v469;
LABEL_589:
                                  v374 = *v373;
                                  if (!*v373)
                                  {
LABEL_593:
                                    operator new();
                                  }

                                  while (1)
                                  {
                                    v373 = v374;
                                    v375 = *(v374 + 28);
                                    if (v371 < v375)
                                    {
                                      goto LABEL_589;
                                    }

                                    if (v375 > v370)
                                    {
                                      break;
                                    }

                                    v374 = v373[1];
                                    if (!v374)
                                    {
                                      goto LABEL_593;
                                    }
                                  }

                                  v376 = v373;
                                  v268 = v470;
                                  v269 = v473;
                                  *(v376 + 8) = *(v369 + 8);
                                }

                                goto LABEL_557;
                              }
                            }

                            v365 = 536871012;
                            goto LABEL_576;
                          }

LABEL_595:
                          AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v268);
                          v379 = *(a4 + 120);
                          v378 = *(a4 + 124);
                          v380 = *(a4 + 128);
                          v381 = *(a4 + 132);
                          v382 = *(a4 + 136);
                          v383 = *(a4 + 140);
                          v384 = (v378 + v381 + v383 - (v379 + v380 + v382) + 3) & 0xFFFFFFFC;
                          v385 = *(a4 + 160);
                          v386 = *(a4 + 168);
                          if (*(a4 + 160) == 0)
                          {
                            goto LABEL_613;
                          }

                          v387 = 0;
                          v388 = *(a4 + 144);
                          if (*(a4 + 208) != 1 || !v388)
                          {
                            goto LABEL_607;
                          }

                          v389 = 0;
                          *__dst = *(a4 + 160);
                          *&v477 = v386;
                          v390 = v385;
                          while (2)
                          {
                            if (v390)
                            {
                              v391 = __clz(__rbit64(v390));
                              v392 = __dst;
                              v393 = v391;
LABEL_600:
                              *v392 = v390 & ~(1 << v391);
                              v394 = &v463->__begin_[v389];
                              *v394 = 4 * v393;
                              *(v394 + 4) = vorr_s8(vdup_n_s32(4 * v393), 0x200000001);
                              *(v394 + 12) = (4 * (v393 & 0x7F)) | 3;
                              v389 += 4;
                              v390 = *__dst;
                              continue;
                            }

                            break;
                          }

                          v390 = v477;
                          if (v477)
                          {
                            v391 = __clz(__rbit64(v477));
                            v393 = v391 | 0x40;
                            v392 = &v477;
                            goto LABEL_600;
                          }

                          v382 = *(a4 + 136);
                          v383 = *(a4 + 140);
                          v380 = *(a4 + 128);
                          v381 = *(a4 + 132);
                          v379 = *(a4 + 120);
                          v378 = *(a4 + 124);
                          v388 = *(a4 + 144);
                          v387 = v388;
LABEL_607:
                          v395 = *(a4 + 176);
                          if (*&v395 != 0 && v388 != 0)
                          {
                            v408 = v387 - v384 + ((v383 + v381 - (v382 + v380 + v379) + v378 + 3) & 0xFFFFFFFC);
                            *__dst = v385;
                            *&v477 = v386;
                            while (1)
                            {
                              if (v385)
                              {
                                v409 = __dst;
                              }

                              else
                              {
                                v385 = v477;
                                if (!v477)
                                {
                                  break;
                                }

                                v409 = &v477;
                              }

                              *v409 = v385 & (v385 - 1);
                              begin = v463->__begin_;
                              v463->__begin_[v408] = 0;
                              begin[v408 + 1] = 1;
                              begin[v408 + 2] = 2;
                              begin[v408 + 3] = 3;
                              v408 += 4;
                              v385 = *__dst;
                            }
                          }

                          v377 = vorrq_s8(*(a1 + 768), v395);
                          *(a1 + 768) = v377;
LABEL_613:
                          if (*(a4 + 148))
                          {
                            v397 = *(a4 + 144);
                            if (*(a4 + 208))
                            {
                              v398 = *(a4 + 144);
                            }

                            else
                            {
                              v398 = 0;
                            }

                            if (*(a4 + 176) == 0)
                            {
                              v397 = 0;
                            }

                            v399 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v384 + v398 + v397;
                            v401 = *(a4 + 192);
                            v400 = *(a4 + 200);
                            *__dst = v401;
                            *&v477 = v400;
                            while (1)
                            {
                              if (v401)
                              {
                                v402 = __clz(__rbit64(v401));
                                v403 = __dst;
                                v404 = v402;
                              }

                              else
                              {
                                v401 = v477;
                                if (!v477)
                                {
                                  break;
                                }

                                v402 = __clz(__rbit64(v477));
                                v404 = v402 | 0x40;
                                v403 = &v477;
                              }

                              *v403 = v401 & ~(1 << v402);
                              v405 = *(a1 + 144);
                              *(v405 + 4 * v399) = v404 + 96;
                              if (*(a1 + 1584) == 1)
                              {
                                *(v405 + 4 * (v399 + 1)) = -1;
                                *(v405 + 4 * (v399 + 2)) = 0;
                              }

                              v399 += 4;
                              v401 = *__dst;
                            }
                          }

                          if (*(a4 + 467) == 1)
                          {
                            v406 = (v474 - *v474);
                            if (*v406 < 0x17u)
                            {
                              LODWORD(v407) = 0;
                            }

                            else
                            {
                              v407 = v406[11];
                              if (v407)
                              {
                                v407 = (*(v474 + v407) + 3) >> 2;
                              }
                            }

                            *(a1 + 408) = v407;
                            *(a1 + 412) = 200;
                          }

                          v411 = (v474 - *v474);
                          if (*v411 >= 0x17u && (v412 = v411[11]) != 0)
                          {
                            v413 = *(v474 + v412) + 3;
                            v414 = (a1 + 176);
                            v415 = *(a1 + 176);
                            v416 = v413 >> 2;
                            *(a1 + 52) = v416;
                            v417 = *(a1 + 168);
                            v418 = (v415 - v417) >> 2;
                            if (v416 > v418)
                            {
                              std::vector<unsigned int>::__append((a1 + 168), v416 - v418);
                              goto LABEL_645;
                            }
                          }

                          else
                          {
                            v416 = 0;
                            v414 = (a1 + 176);
                            v419 = *(a1 + 176);
                            *(a1 + 52) = 0;
                            v417 = *(a1 + 168);
                            v418 = (v419 - v417) >> 2;
                          }

                          if (v418 > v416)
                          {
                            *v414 = v417 + 4 * v416;
                          }

LABEL_645:
                          if (v458 != (a4 + 216))
                          {
                            std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v458, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                          }

                          if (v457 != (a4 + 240))
                          {
                            std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v457, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                          }

                          if (v456 != (a4 + 320))
                          {
                            std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v456, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                          }

                          if (v455 != (a4 + 368))
                          {
                            std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v455, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                          }

                          *(a1 + 352) = *(a4 + 416);
                          *(a1 + 744) = *(a4 + 160) != 0;
                          *(a1 + 745) = *(a4 + 148) != 0;
                          v420 = *(v474 - *v474 + 24);
                          v421 = *(v474 + v420);
                          v422 = (v474 + v420 + v421);
                          v423 = *v422;
                          if (v423)
                          {
                            v424 = 0;
                            v425 = 4 * v423;
                            v426 = v474 + v420 + v421;
                            do
                            {
                              v427 = v422[v424 / 4 + 1];
                              v428 = v427 - *(&v422[v424 / 4 + 1] + v427);
                              v429 = &v426[v424 + v428];
                              v430 = *(v429 + 2);
                              if (v430 >= 5)
                              {
                                v431 = *(v429 + 4);
                                if (v431)
                                {
                                  if (v430 >= 7 && v426[v424 + 4 + v427 + v431] == 139)
                                  {
                                    if (*&v426[v424 + 10 + v428])
                                    {
                                      v432 = *&v426[v424 + 4 + v427 + *&v426[v424 + 10 + v428]] & 0xFFFFF;
                                      if (v430 >= 0xB)
                                      {
                                        goto LABEL_664;
                                      }
                                    }

                                    else
                                    {
                                      v432 = 0;
                                      if (v430 >= 0xB)
                                      {
LABEL_664:
                                        v433 = *&v426[v424 + 14 + v428];
                                        if (v433 && v426[v424 + 4 + v427 + v433])
                                        {
                                          *(v465 + 8 * (v432 > 0x3F)) |= 1 << v432;
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              v424 += 4;
                            }

                            while (v425 != v424);
                          }

                          v434 = (v269 - *v269);
                          if (*v434 >= 0xDu)
                          {
                            v435 = v434[6];
                            if (v434[6])
                            {
                              v436 = v473 + v435;
                              v437 = *(v473 + v435);
                              if (*(v473 + v435 + v437) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                              {
                                operator new();
                              }

                              v438 = (v473 - *v473);
                              if (*v438 >= 0x41u && (v439 = v438[32]) != 0)
                              {
                                v440 = v473 + v439 + *(v473 + v439);
                                if (!*&v436[v437])
                                {
                                  goto LABEL_698;
                                }

LABEL_676:
                                if (v440)
                                {
                                  v441 = 0;
                                  v442 = v473 + v435 + v437 + 4;
                                  do
                                  {
                                    if (*v440)
                                    {
                                      v443 = *(v440 + 8 * v441 + 4);
                                    }

                                    else
                                    {
                                      v443 = 0;
                                    }

                                    *__dst = *(v442 + 8 * v441);
                                    *&__dst[8] = v443;
                                    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v467, __dst);
                                    ++v441;
                                  }

                                  while (v441 < *&v436[v437]);
                                }

                                else
                                {
                                  v445 = v473 + v435 + v437 + 4;
                                  do
                                  {
                                    *__dst = *(v445 + 8 * v440);
                                    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v467, __dst);
                                    ++v440;
                                  }

                                  while (v440 < *&v436[v437]);
                                }
                              }

                              else
                              {
                                v440 = 0;
                                if (*&v436[v437])
                                {
                                  goto LABEL_676;
                                }
                              }
                            }
                          }

LABEL_698:
                          v446 = (v473 - *v473);
                          if (*v446 >= 0xBu)
                          {
                            v447 = v446[5];
                            if (v447)
                            {
                              v448 = (v473 + v447 + *(v473 + v447));
                              if (*v448 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                              {
                                operator new();
                              }

                              if (*v448 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                              {
                                operator new();
                              }

                              if (*v448)
                              {
                                v449 = 0;
                                v450 = v448 + 1;
                                do
                                {
                                  AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v450 + *v450), *v377.i32);
                                  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v477, a2, __dst);
                                  std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v477);
                                  v476 = *(v477 + 96);
                                  std::vector<unsigned long long>::push_back[abi:nn200100](v466, &v476);
                                  v451 = *(&v477 + 1);
                                  if (*(&v477 + 1) && !atomic_fetch_add((*(&v477 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                  {
                                    (v451->__on_zero_shared)(v451);
                                    std::__shared_weak_count::__release_weak(v451);
                                  }

                                  if (SBYTE1(v481) < 0)
                                  {
                                    operator delete(*v479);
                                  }

                                  ++v449;
                                  ++v450;
                                }

                                while (v449 < *v448);
                              }
                            }
                          }

                          *(a1 + 1396) = 0;
                          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__str.__r_.__value_.__l.__data_);
                          }

                          *a1 = &unk_2A23F7750;
                          *__dst = *v453;
                          *&__dst[16] = *(v453 + 16);
                          AGX::BackgroundObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BackgroundObjectProgramVariantESLState(a1 + 1784, a2, v468, a4, __dst, v452);
                        }
                      }

                      if (v348 >= 9 && *(v474 + v344 + v346 + 12))
                      {
                        v350 = *(v474 + v344 + v345 + *(v474 + v344 + v346 + 12) + 4);
                      }

                      else
                      {
LABEL_545:
                        v350 = 0;
                      }

                      if (*(a1 + 1584))
                      {
                        v351 = 3;
                      }

                      else
                      {
                        v351 = 1;
                      }

                      v352 = 1610612832;
                      if (v348 >= 7)
                      {
                        v353 = *(v474 + v344 + v346 + 10);
                        if (v353)
                        {
                          v352 = (*(v474 + v344 + v345 + v353 + 4) & 0xFFFFF) + 1610612832;
                        }
                      }

                      v354 = *(a4 + 124) + v351 * v350 - (*(a4 + 120) + *(a4 + 128));
                      *(*(a1 + 56) + 4 * v354) = v352;
                      if (*(a1 + 1584) == 1)
                      {
                        v470->__begin_[v354 + 1] = 0x7FFFFFFF;
                        v470->__begin_[v354 + 2] = 1610612736;
                      }

                      goto LABEL_538;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v264, (a1 + 1472));
                  *(a1 + 1480) += *&__dst[16];
                  v265 = *&__dst[16];
                  *(a1 + 1344) = *__dst;
                  *(a1 + 1360) = v265;
                  *(a1 + 1369) = *&__dst[25];
                  v266 = *(a1 + 1360);
                  *(a1 + 1104) = *(a1 + 1344);
                  *(a1 + 1120) = v266;
                  *(a1 + 1129) = *(a1 + 1369);
                  v267 = *(a1 + 1360);
                  *(a1 + 1176) = *(a1 + 1344);
                  *(a1 + 1192) = v267;
                  v243 = v463;
                  goto LABEL_451;
                }

LABEL_394:
                LOBYTE(v231) = 1;
                goto LABEL_395;
              }
            }
          }

          v183 = 0;
          goto LABEL_310;
        }
      }

      v178 = 0;
      LOBYTE(v177) = 0;
      goto LABEL_298;
    }

    v69 = (v68 + *v68);
    v70 = (v69 - *v69);
    v71 = *v70;
    if (v70[2])
    {
      v72 = (v69 + v70[2] + *(v69 + v70[2]));
      if (v71 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v72 = 0;
      if (v71 < 7)
      {
        goto LABEL_115;
      }
    }

    v73 = v70[3];
    if (v73)
    {
      v74 = v69 + v73 + *(v69 + v73);
      if (!*v72)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v74 = 0;
    if (!*v72)
    {
      goto LABEL_126;
    }

LABEL_116:
    v75 = 0;
    v76 = v74 + 4;
    v77 = (v72 + 2);
    while (1)
    {
      v78 = *(v77 - 1);
      v79 = strlen(&v77[v78]);
      if (v79 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v80 = v79;
      if (v79 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v79;
      if (v79)
      {
        memmove(__dst, &v77[v78], v79);
      }

      __dst[v80] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      v59 = v474;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v76[4 * v75];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v75;
      v77 += 4;
      if (v75 >= *v72)
      {
        goto LABEL_126;
      }
    }

LABEL_719:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v29 < 0x45)
  {
    if (v29 < 0x3D)
    {
      LOWORD(v34) = 0;
      if (v29 < 0x3B)
      {
        LODWORD(v36) = 0;
        v37 = 0;
        LOWORD(v33) = 0;
        v35 = 0;
LABEL_56:
        *(a1 + 560) = v36;
        v38 = v34 + v36 - 1;
        v39 = -v36;
        v40 = *(a1 + 568);
        v41 = (v33 | ((v39 & v38) << 32) | (v35 << 48)) + v37 + (v40 & 0xFF000000);
        *(a1 + 568) = v41;
        if (v41 != v40)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v42 = -1;
          *(&v42 + 1) = -1;
          *(a1 + 624) = v42;
          *(a1 + 640) = v42;
          *(a1 + 656) = v42;
          *(a1 + 672) = -1;
        }

        v43 = (v473 - *v473);
        if (*v43 < 0x57u)
        {
          LODWORD(v44) = 0;
        }

        else
        {
          v44 = v43[43];
          if (v44)
          {
            LODWORD(v44) = *(v473 + v44);
          }
        }

        *(a1 + 680) = v44;
        v45 = *v473;
        v27 = -v45;
        v29 = *(v473 - v45);
        goto LABEL_63;
      }

      LOWORD(v33) = 0;
      v35 = v28[29];
      if (!v28[29])
      {
LABEL_41:
        if (v29 < 0x3F)
        {
          LODWORD(v36) = 0;
          v37 = 0;
        }

        else
        {
          v36 = v28[31];
          if (v28[31])
          {
            v36 = *(v473 + v36);
          }

          if (v29 < 0x4B)
          {
            v37 = 0;
          }

          else
          {
            v37 = v28[37];
            if (v28[37])
            {
              v37 = *(v473 + v37) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v35 = *(v473 + v35);
      goto LABEL_41;
    }

    LOWORD(v33) = 0;
    v34 = v28[30];
    if (v28[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v28[34];
    if (v28[34])
    {
      LODWORD(v33) = *(v473 + v33);
    }

    v34 = v28[30];
    if (v28[30])
    {
LABEL_38:
      LODWORD(v34) = *(v473 + v34);
    }
  }

  v35 = v28[29];
  if (!v28[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDFB4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, char *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, void **a28, uint64_t a29, void **a30, void **a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  CompileStatistics::~CompileStatistics(a19);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a36);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v44 + 1560));
  v46 = *a30;
  if (*a30)
  {
    *(v44 + 1544) = v46;
    operator delete(v46);
  }

  v47 = *a31;
  if (*a31)
  {
    *(v44 + 1520) = v47;
    operator delete(v47);
  }

  if (*a11 < 0)
  {
    operator delete(*a10);
    if ((*(v44 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v44 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v44 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a24);
  if (*(v44 + 887) < 0)
  {
LABEL_8:
    operator delete(*a25);
    if ((*(v44 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v44 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v44 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a26);
  if ((*(v44 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a33);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a12);
    v48 = *a20;
    if (*a20)
    {
      *(v44 + 336) = v48;
      operator delete(v48);
    }

    v49 = *a22;
    if (*a22)
    {
      *(v44 + 312) = v49;
      operator delete(v49);
    }

    v50 = *a21;
    if (*a21)
    {
      *(v44 + 288) = v50;
      operator delete(v50);
    }

    v51 = *a23;
    if (*a23)
    {
      *(v44 + 264) = v51;
      operator delete(v51);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v44 + 168);
    v52 = *a28;
    if (*a28)
    {
      *(v44 + 152) = v52;
      operator delete(v52);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a34);
    if (a44 < 0)
    {
      operator delete(__p);
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a27);
  goto LABEL_11;
}

void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(uint64_t *a1)
{
  *(a1 + 80) = 1;
  v1 = *a1;
  v2 = a1[1] - *a1;
  a1[9] = v2 >> 2;
  if (v2)
  {
    operator new();
  }

  a1[1] = v1;
}

void sub_29CDFBA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void AGX::BlitFragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitFragmentProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, const _AGCDrawBufferState *a5)
{
  v9 = 0;
  v474 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E60;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v464 = (a1 + 56);
  *(a1 + 144) = 0u;
  v451 = (a1 + 144);
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v463 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 640) = v10;
  *(a1 + 656) = v10;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v10;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v452 = (a1 + 896);
  *(a1 + 904) = 0u;
  v11 = a1 + 928;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v12 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v455 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v461 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v465 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v9 = (v16 + *v16);
  }

  v17 = (v9 - *v9);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v466 = (v9 + v18 + *(v9 + v18));
  }

  else
  {
    v466 = 0;
  }

  v19 = 0;
  if (a3[58])
  {
    v20 = a3[59] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 58;
  if (v20)
  {
    v21 = 128;
    v22 = a3 + 128;
  }

  else
  {
    v22 = a3 + 58;
  }

  v23 = a3[v21];
  if (v23 && v22[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v26 = (v19 + v25 + *(v19 + v25));
  }

  else
  {
    v26 = 0;
  }

  v27 = *v26;
  v28 = -v27;
  v29 = (v26 - v27);
  v30 = *(v26 - v27);
  if (v30 < 0x25)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v29[18];
    if (v29[18])
    {
      LOBYTE(v31) = *(v26 + v31) != 0;
    }
  }

  *(a1 + 1585) = v31;
  v32 = (v466 - *v466);
  if (*v32 < 0x55u || (v33 = v32[42]) == 0 || !*(v466 + v33))
  {
LABEL_63:
    if (v30 < 7)
    {
      LODWORD(v47) = 0;
    }

    else
    {
      v47 = *(v26 + v28 + 6);
      if (*(v26 + v28 + 6))
      {
        LODWORD(v47) = *(v26 + v47);
      }
    }

    v449 = (a1 + 304);
    v450 = (a1 + 256);
    v447 = (a1 + 328);
    v448 = (a1 + 280);
    *(a1 + 800) = v47;
    v48 = (v26 - *v26);
    if (*v48 >= 0x13u && (v49 = v48[9]) != 0)
    {
      v50 = v26 + v49 + *(v26 + v49) + 4;
    }

    else
    {
      v50 = "";
    }

    v453 = (a1 + 864);
    v454 = (a1 + 840);
    v444 = a1 + 1400;
    v460 = a1 + 1536;
    v446 = (a1 + 1616);
    MEMORY[0x29ED51E00](v455, v50);
    v51 = (v26 - *v26);
    if (*v51 >= 9u && (v52 = v51[4]) != 0)
    {
      v53 = v26 + v52 + *(v26 + v52) + 4;
    }

    else
    {
      v53 = "";
    }

    MEMORY[0x29ED51E00](v454, v53);
    v54 = (v26 - *v26);
    if (*v54 < 0x29u)
    {
      LOBYTE(v55) = 0;
    }

    else
    {
      v55 = v54[20];
      if (v55)
      {
        LOBYTE(v55) = *(v26 + v55) != 0;
      }
    }

    *(a1 + 888) = v55;
    std::string::operator=(v453, &__str);
    v56 = (v26 - *v26);
    if (*v56 >= 0x51u && (v57 = v56[40]) != 0)
    {
      v58 = v26 + v57 + *(v26 + v57) + 4;
    }

    else
    {
      v58 = "";
    }

    MEMORY[0x29ED51E00](v452, v58);
    v445 = v11;
    v59 = (v26 - *v26);
    v457 = a2;
    v462 = v26;
    if (*v59 >= 5u && v59[2] && *(a2 + 16608) == 1)
    {
      v60 = a3[1];
      if (v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_715;
      }

      v61 = *a3;
      if (v60 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v60)
      {
        memmove(__dst, v61, v60);
      }

      __dst[v60] = 0;
      if (*v12 < 0)
      {
        operator delete(*v444);
      }

      *v444 = *__dst;
      *(v444 + 16) = *&__dst[16];
      v62 = a3[3];
      if (a3[4])
      {
        v63 = v62 == 0;
      }

      else
      {
        v63 = 1;
      }

      if (v63)
      {
        v62 = a3[73];
      }

      *(a1 + 1424) = v62 - *a3;
    }

    v64 = a3 + 113;
    if (a3[43])
    {
      v65 = a3[44] == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = 43;
    if (v65)
    {
      v66 = 113;
    }

    else
    {
      v64 = a3 + 43;
    }

    v456 = a3;
    v67 = a3[v66];
    if (!v67 || !v64[1])
    {
LABEL_126:
      v80 = v456 + 138;
      if (v456[68])
      {
        v81 = v456[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = v456 + 68;
      }

      v83 = v456[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        v86 = 0;
        v87 = v466;
      }

      else
      {
        v88 = (v83 + *v83);
        v89 = (v88 - *v88);
        v87 = v466;
        if (*v89 >= 5u && (v90 = v89[2]) != 0)
        {
          v86 = *(v88 + v90);
        }

        else
        {
          v86 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v86 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v91 = (v87 - *v87);
      if (*v91 < 5u)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[2];
        if (v92)
        {
          LODWORD(v92) = *(v87 + v92);
        }
      }

      *v446 = v92;
      v93 = (v87 - *v87);
      if (*v93 < 0x2Du)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[22];
        if (v94)
        {
          LODWORD(v94) = *(v87 + v94);
        }
      }

      *(a1 + 1620) = v94;
      v95 = (v87 - *v87);
      if (*v95 < 0x35u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[26];
        if (v96)
        {
          LODWORD(v96) = *(v87 + v96);
        }
      }

      *(a1 + 1660) = v96;
      v97 = (v87 - *v87);
      if (*v97 < 0x43u)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v97[33];
        if (v98)
        {
          LODWORD(v98) = *(v87 + v98);
        }
      }

      *(a1 + 1696) = v98;
      v99 = v456 + 108;
      if (v456[38])
      {
        v100 = v456[39] == 0;
      }

      else
      {
        v100 = 1;
      }

      v101 = 38;
      if (v100)
      {
        v101 = 108;
      }

      else
      {
        v99 = v456 + 38;
      }

      v102 = v456[v101];
      if (v102 && v99[1])
      {
        v103 = (v102 + *v102);
        v104 = (v103 - *v103);
        if (*v104 < 0xDu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[6];
          if (v105)
          {
            LODWORD(v105) = *(v103 + v105);
          }
        }

        *(a1 + 1620) = v105;
        v106 = (v103 - *v103);
        if (*v106 < 0xBu)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[5];
          if (v107)
          {
            LODWORD(v107) = *(v103 + v107);
          }
        }

        *(a1 + 1628) = v107;
        v108 = (v103 - *v103);
        if (*v108 < 0x11u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[8];
          if (v109)
          {
            LODWORD(v109) = *(v103 + v109);
          }
        }

        *(a1 + 1632) = v109;
        v110 = (v103 - *v103);
        if (*v110 < 0x13u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[9];
          if (v111)
          {
            LODWORD(v111) = *(v103 + v111);
          }
        }

        *(a1 + 1636) = v111;
        v112 = (v103 - *v103);
        if (*v112 < 0x17u)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[11];
          if (v113)
          {
            LODWORD(v113) = *(v103 + v113);
          }
        }

        *(a1 + 1640) = v113;
        v114 = (v103 - *v103);
        if (*v114 < 0x1Bu)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[13];
          if (v115)
          {
            LODWORD(v115) = *(v103 + v115);
          }
        }

        *(a1 + 1644) = v115;
        v116 = (v103 - *v103);
        if (*v116 < 0x15u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[10];
          if (v117)
          {
            LODWORD(v117) = *(v103 + v117);
          }
        }

        *(a1 + 1648) = v117;
        v118 = (v103 - *v103);
        if (*v118 < 0x19u)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[12];
          if (v119)
          {
            LODWORD(v119) = *(v103 + v119);
          }
        }

        *(a1 + 1652) = v119;
        v120 = (v103 - *v103);
        if (*v120 < 0x1Du)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[14];
          if (v121)
          {
            LODWORD(v121) = *(v103 + v121);
          }
        }

        *(a1 + 1656) = v121;
        v122 = (v103 - *v103);
        if (*v122 < 0xFu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[7];
          if (v123)
          {
            LODWORD(v123) = *(v103 + v123);
          }
        }

        *(a1 + 1660) = v123;
        v124 = (v103 - *v103);
        if (*v124 < 0x1Fu)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[15];
          if (v125)
          {
            LODWORD(v125) = *(v103 + v125);
          }
        }

        *(a1 + 1664) = v125;
        v126 = (v103 - *v103);
        if (*v126 < 0x21u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[16];
          if (v127)
          {
            LODWORD(v127) = *(v103 + v127);
          }
        }

        *(a1 + 1668) = v127;
        v128 = (v103 - *v103);
        if (*v128 < 0x23u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[17];
          if (v129)
          {
            LODWORD(v129) = *(v103 + v129);
          }
        }

        *(a1 + 1672) = v129;
        v130 = (v103 - *v103);
        if (*v130 < 0x25u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[18];
          if (v131)
          {
            LODWORD(v131) = *(v103 + v131);
          }
        }

        *(a1 + 1676) = v131;
        v132 = (v103 - *v103);
        if (*v132 < 0x27u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[19];
          if (v133)
          {
            LODWORD(v133) = *(v103 + v133);
          }
        }

        *(a1 + 1680) = v133;
        v134 = (v103 - *v103);
        if (*v134 < 0x29u)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[20];
          if (v135)
          {
            LODWORD(v135) = *(v103 + v135);
          }
        }

        *(a1 + 1684) = v135;
        v136 = (v103 - *v103);
        if (*v136 < 0x2Bu)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[21];
          if (v137)
          {
            LODWORD(v137) = *(v103 + v137);
          }
        }

        *(a1 + 1688) = v137;
        v138 = (v103 - *v103);
        if (*v138 < 7u)
        {
          LODWORD(v139) = 0;
        }

        else
        {
          v139 = v138[3];
          if (v139)
          {
            LODWORD(v139) = *(v103 + v139);
          }
        }

        *(a1 + 1692) = v139;
        v140 = (v103 - *v103);
        if (*v140 >= 5u && (v141 = v140[2]) != 0)
        {
          v142 = *(v103 + v141);
        }

        else
        {
          v142 = 0;
        }

        *(a1 + 1700) = v142;
      }

      if (v456[53])
      {
        v143 = v456[54];
        if (v143)
        {
          v144 = v456[53];
        }

        else
        {
          v144 = v456[123];
        }

        if (v143)
        {
          v145 = v456 + 53;
        }

        else
        {
          v145 = v456 + 123;
        }
      }

      else
      {
        v145 = v456 + 123;
        v144 = v456[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v144, v145[1]);
      std::string::push_back((a1 + 1760), 0);
      v146 = *v87;
      v147 = v87 - v146;
      v148 = *(v87 - v146);
      if (v148 < 0x39)
      {
        goto LABEL_271;
      }

      v149 = -v146;
      v150 = *(v147 + 28);
      if (v150)
      {
        v151 = (v87 + v150 + *(v87 + v150));
        if (*v151)
        {
          *(a1 + 1504) = 1;
          v152 = (v151 + v151[1] + 4);
          v153 = (v152 - *v152);
          if (*v153 >= 9u && (v154 = v153[4]) != 0)
          {
            v155 = *(v152 + v154);
          }

          else
          {
            v155 = 0;
          }

          *(a1 + 1704) = v155;
          *(a1 + 1708) = 1;
          v156 = *v87;
          v149 = -v156;
          v148 = *(v87 - v156);
        }
      }

      if (v148 < 0x3B)
      {
        goto LABEL_271;
      }

      v157 = v87 + v149;
      if (*(v157 + 29))
      {
        v158 = (v87 + *(v157 + 29) + *(v87 + *(v157 + 29)));
        v159 = *v158;
        if (v159)
        {
          v160 = v158 + 1;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (!(v162 >> 20))
            {
              *(a1 + 1488 + 8 * (v161 > 0x3F)) |= 1 << v161;
            }

            --v159;
          }

          while (v159);
        }
      }

      if (v148 < 0x57)
      {
LABEL_271:
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v157 + 43);
        if (*(v157 + 43))
        {
          LODWORD(v163) = *(v87 + v163);
        }
      }

      *(a1 + 692) = v163;
      v164 = (v87 - *v87);
      if (*v164 >= 0x21u && (v165 = v164[16]) != 0)
      {
        v166 = *(v87 + v165);
      }

      else
      {
        v166 = 0;
      }

      v167 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v166;
      v168 = (v87 - *v87);
      if (*v168 < 0x59u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[44];
        if (v169)
        {
          LODWORD(v169) = *(v87 + v169);
        }
      }

      *(a1 + 720) = v169;
      v170 = (v87 - *v87);
      if (*v170 < 0x51u)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[40];
        if (v171)
        {
          LODWORD(v171) = *(v87 + v171);
        }
      }

      *(a1 + 724) = v171;
      v172 = (v87 - *v87);
      if (*v172 < 0x4Bu)
      {
        LODWORD(v173) = 0;
      }

      else
      {
        v173 = v172[37];
        if (v173)
        {
          LODWORD(v173) = *(v87 + v173);
        }
      }

      *(a1 + 732) = v173;
      v174 = (v87 - *v87);
      v175 = *v174;
      if (v175 >= 0x25)
      {
        if (v174[18] && *(v87 + v174[18]))
        {
          if (v175 < 0x27)
          {
            LOBYTE(v176) = 0;
            v177 = 1;
            goto LABEL_300;
          }

          v176 = v174[19];
          goto LABEL_294;
        }

        if (v175 >= 0x27)
        {
          v176 = v174[19];
          if (v174[19] && *(v87 + v174[19]))
          {
            v177 = 1;
            LOBYTE(v176) = 1;
            goto LABEL_300;
          }

          if (v175 < 0x29)
          {
            goto LABEL_711;
          }

          if (v174[20] && *(v87 + v174[20]))
          {
LABEL_294:
            v177 = 1;
            goto LABEL_712;
          }

          if (v175 >= 0x71 && (v436 = v174[56]) != 0)
          {
            v177 = *(v87 + v436) != 0;
          }

          else
          {
LABEL_711:
            v177 = 0;
          }

LABEL_712:
          if (v176)
          {
            LOBYTE(v176) = *(v87 + v176) != 0;
          }

LABEL_300:
          *(a1 + 742) = v176;
          v178 = (v26 - *v26);
          v179 = *v178;
          if (v179 < 0x21)
          {
            v181 = 0;
            LODWORD(v180) = 0;
          }

          else
          {
            v180 = v178[16];
            if (v178[16])
            {
              LODWORD(v180) = *(v26 + v180);
            }

            if (v179 < 0x4D)
            {
              v181 = 0;
            }

            else
            {
              v181 = v178[38];
              if (v178[38])
              {
                v181 = *(v26 + v181);
              }

              if (v179 >= 0x4F)
              {
                v182 = v178[39];
                if (v182)
                {
                  v182 = *(v26 + v182);
                }

LABEL_312:
                *(a1 + 784) = v180 | (v181 << 32);
                *(a1 + 792) = v182;
                *(a1 + 746) = (v177 | v176) & 1;
                v183 = *v87;
                v184 = (v87 - v183);
                v185 = *(v87 - v183);
                if (v185 < 0x37)
                {
                  LOBYTE(v186) = 0;
                }

                else
                {
                  v186 = v184[27];
                  if (v184[27])
                  {
                    LOBYTE(v186) = *(v87 + v186) != 0;
                  }
                }

                *(a1 + 741) = v186;
                v187 = (v26 - *v26);
                v188 = *v187;
                if (v188 < 0x33)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v187[25];
                  if (v187[25])
                  {
                    LOBYTE(v189) = *(v26 + v189) != 0;
                  }
                }

                *(a1 + 747) = v189;
                if (v185 < 0x3F)
                {
                  LOBYTE(v190) = 0;
                }

                else
                {
                  v190 = v184[31];
                  if (v184[31])
                  {
                    v191 = (v87 + v190 + *(v87 + v190));
                    v190 = *v191;
                    if (v190)
                    {
                      v192 = v191 + 1;
                      while (1)
                      {
                        v194 = *v192++;
                        v193 = v194;
                        if (v194 < 0x36 && ((0x3F000000000777uLL >> v193) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v190)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v190) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 749) = v190;
                if (v188 <= 0x14)
                {
                  LOBYTE(v196) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v195 = v187[10];
                  if (v187[10])
                  {
                    LOBYTE(v195) = *(v26 + v195) != 0;
                  }

                  *(a1 + 743) = v195;
                  if (v188 < 0x25)
                  {
                    LOBYTE(v196) = 0;
                  }

                  else
                  {
                    v196 = v187[18];
                    if (v187[18])
                    {
                      LOBYTE(v196) = *(v26 + v196) != 0;
                    }
                  }
                }

                v197 = -v183;
                *(a1 + 1585) = v196;
                if (v185 < 0x5D)
                {
                  LOBYTE(v198) = 0;
                }

                else
                {
                  v198 = v184[46];
                  if (v198)
                  {
                    LOBYTE(v198) = *(v87 + v198) != 0;
                  }
                }

                v458 = v177;
                *(a1 + 748) = v198;
                if (v188 >= 0x23 && (v199 = v187[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v200 = (v26 + v199 + *(v26 + v199));
                  v201 = *v200;
                  if (v201)
                  {
                    v202 = &v200[v201];
                    while (1)
                    {
                      v203 = v200[1];
                      v204 = (++v200 + v203);
                      v205 = (v204 - *v204);
                      v206 = *v205;
                      if (v206 < 7)
                      {
                        v207 = 0;
                        v209 = 0;
                        if (v206 < 5)
                        {
                          goto LABEL_353;
                        }

                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v205[3])
                      {
                        v207 = *(v204 + v205[3]);
                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v207 = 0;
                        v208 = v205[2];
                        if (v208)
                        {
LABEL_352:
                          v209 = *(v204 + v208);
                          goto LABEL_353;
                        }
                      }

                      v209 = 0;
LABEL_353:
                      v210 = v465;
LABEL_354:
                      v211 = *v210;
                      if (!*v210)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v210 = v211;
                        v212 = *(v211 + 28);
                        if (v209 < v212)
                        {
                          goto LABEL_354;
                        }

                        if (v212 >= v209)
                        {
                          break;
                        }

                        v211 = v210[1];
                        if (!v211)
                        {
                          goto LABEL_358;
                        }
                      }

                      v213 = v210;
                      v87 = v466;
                      *(v213 + 8) = v207;
                      if (v200 == v202)
                      {
                        v216 = *v466;
                        v197 = -v216;
                        v26 = v462;
                        v167 = &qword_2A17A1000;
                        if (*(v466 - v216) < 0x21u)
                        {
LABEL_368:
                          v215 = 0;
                          v214 = v456;
                          {
                            goto LABEL_718;
                          }

                          goto LABEL_371;
                        }

LABEL_364:
                        v214 = v456;
                        if (*(v87 + v197 + 32))
                        {
                          v215 = *(v87 + *(v87 + v197 + 32));
                          {
                            goto LABEL_371;
                          }
                        }

                        else
                        {
                          v215 = 0;
                          {
                            goto LABEL_371;
                          }
                        }

LABEL_718:
                        {
                          *(v167 + 402) = 0;
                        }

LABEL_371:
                        v217 = *(v167 + 402) + v215;
                        *(a1 + 688) = v217;
                        v218 = (v87 - *v87);
                        if (*v218 < 0x43u)
                        {
                          LODWORD(v219) = 0;
                        }

                        else
                        {
                          v219 = v218[33];
                          if (v219)
                          {
                            LODWORD(v219) = *(v87 + v219);
                          }
                        }

                        *(a1 + 700) = v219;
                        v220 = (v87 - *v87);
                        if (*v220 < 5u)
                        {
                          LODWORD(v221) = 0;
                        }

                        else
                        {
                          v221 = v220[2];
                          if (v221)
                          {
                            LODWORD(v221) = *(v87 + v221);
                          }
                        }

                        *(a1 + 684) = v221;
                        v222 = (v87 - *v87);
                        if (*v222 < 0x51u)
                        {
                          LODWORD(v223) = 0;
                        }

                        else
                        {
                          v223 = v222[40];
                          if (v223)
                          {
                            LODWORD(v223) = *(v87 + v223);
                          }
                        }

                        *(a1 + 716) = v223;
                        v224 = (v87 - *v87);
                        if (*v224 < 0x4Fu)
                        {
                          LODWORD(v225) = 0;
                        }

                        else
                        {
                          v225 = v224[39];
                          if (v225)
                          {
                            LODWORD(v225) = *(v87 + v225);
                          }
                        }

                        *(a1 + 728) = v225;
                        *(a1 + 736) = *(a4 + 468);
                        v226 = (v87 - *v87);
                        if ((*(v87 + v226[6] + *(v87 + v226[6])) | v217) != 0 || v458)
                        {
                          goto LABEL_398;
                        }

                        v227 = *v226;
                        if (v227 < 0x21)
                        {
                          v228 = 0;
                        }

                        else if (v226[16])
                        {
                          v228 = *(v87 + v226[16]);
                          if (v227 >= 0x43)
                          {
LABEL_682:
                            if (v226[33])
                            {
                              v229 = *(v87 + v226[33]);
                              {
                                goto LABEL_684;
                              }

                              goto LABEL_394;
                            }
                          }
                        }

                        else
                        {
                          v228 = 0;
                          if (v227 >= 0x43)
                          {
                            goto LABEL_682;
                          }
                        }

                        v229 = 0;
                        {
LABEL_684:
                          {
                            *(v167 + 402) = 0;
                          }
                        }

LABEL_394:
                        if (v229 + v228 + *(v167 + 402))
                        {
LABEL_398:
                          LOBYTE(v231) = 1;
                        }

                        else
                        {
                          v230 = (v87 - *v87);
                          if (*v230 < 0x5Fu)
                          {
                            LOBYTE(v231) = 0;
                          }

                          else
                          {
                            v231 = v230[47];
                            if (v231)
                            {
                              LOBYTE(v231) = *(v87 + v231) != 0;
                            }
                          }
                        }

                        *(a1 + 740) = v231;
                        v232 = (v26 - *v26);
                        if (*v232 < 0x11u)
                        {
                          LODWORD(v233) = 0;
                        }

                        else
                        {
                          v233 = v232[8];
                          if (v233)
                          {
                            LODWORD(v233) = *(v26 + v233);
                          }
                        }

                        v234 = (a1 + 1200);
                        *(a1 + 1392) = v233;
                        {
                        }

                        v235 = v214 + 3;
                        if (v214[4])
                        {
                          v236 = v214[3] == 0;
                        }

                        else
                        {
                          v236 = 1;
                        }

                        v237 = v214;
                        v238 = v214 + 73;
                        if (v236)
                        {
                          v239 = v235 + 70;
                        }

                        else
                        {
                          v239 = v235;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v457 + 6496, v239[1], (a1 + 1448));
                        *(a1 + 1480) += *&__dst[16];
                        v240 = *&__dst[16];
                        *v234 = *__dst;
                        *(a1 + 1216) = v240;
                        *(a1 + 1225) = *&__dst[25];
                        *(a1 + 920) = *(a1 + 1200);
                        *(a1 + 952) = v457 + 6496;
                        v241 = *(a1 + 1216);
                        *(a1 + 960) = *v234;
                        *(a1 + 976) = v241;
                        *(a1 + 985) = *(a1 + 1225);
                        if (*v235)
                        {
                          v242 = v237[4];
                          if (v242)
                          {
                            v243 = *v235;
                          }

                          else
                          {
                            v243 = v237[73];
                          }

                          if (v242)
                          {
                            v238 = v235;
                          }
                        }

                        else
                        {
                          v243 = *v238;
                        }

                        memcpy(*(a1 + 1208), v243, v238[1]);
                        v244 = *(a1 + 1208);
                        v245 = *(a1 + 1216);
                        *(a1 + 928) = *(a1 + 920);
                        *(a1 + 936) = v244;
                        *(a1 + 944) = v245;
                        v246 = v237 + 8;
                        if (v237[8])
                        {
                          if (v237[9])
                          {
                            v247 = v237 + 8;
                          }

                          else
                          {
                            v247 = v237 + 78;
                          }

                          v248 = v247[1];
                        }

                        else
                        {
                          v248 = v237[79];
                        }

                        if (v248)
                        {
                          AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v248, (a1 + 1456));
                          *(a1 + 1480) += *&__dst[16];
                          v249 = *&__dst[16];
                          *(a1 + 1248) = *__dst;
                          *(a1 + 1264) = v249;
                          *(a1 + 1273) = *&__dst[25];
                          v250 = *(a1 + 1264);
                          *(a1 + 1008) = *(a1 + 1248);
                          *(a1 + 1024) = v250;
                          *(a1 + 1033) = *(a1 + 1273);
                          if (*v246)
                          {
                            v251 = v237[9];
                            if (v251)
                            {
                              v252 = *v246;
                            }

                            else
                            {
                              v252 = v237[78];
                            }

                            if (v251)
                            {
                              v253 = v237 + 8;
                            }

                            else
                            {
                              v253 = v237 + 78;
                            }
                          }

                          else
                          {
                            v253 = v237 + 78;
                            v252 = v237[78];
                          }

                          memcpy(*(a1 + 1256), v252, v253[1]);
                        }

                        v254 = v237 + 13;
                        if (v237[13])
                        {
                          if (v237[14])
                          {
                            v255 = v237 + 13;
                          }

                          else
                          {
                            v255 = v237 + 83;
                          }

                          v256 = v255[1];
                          if (!v256)
                          {
                            goto LABEL_450;
                          }
                        }

                        else
                        {
                          v256 = v237[84];
                          if (!v256)
                          {
                            goto LABEL_450;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v256, (a1 + 1464));
                        *(a1 + 1480) += *&__dst[16];
                        v257 = *&__dst[16];
                        *(a1 + 1296) = *__dst;
                        *(a1 + 1312) = v257;
                        *(a1 + 1321) = *&__dst[25];
                        v258 = *(a1 + 1312);
                        *(a1 + 1056) = *(a1 + 1296);
                        *(a1 + 1072) = v258;
                        *(a1 + 1081) = *(a1 + 1321);
                        if (*v254)
                        {
                          v259 = v237[14];
                          if (v259)
                          {
                            v260 = *v254;
                          }

                          else
                          {
                            v260 = v237[83];
                          }

                          if (v259)
                          {
                            v261 = v237 + 13;
                          }

                          else
                          {
                            v261 = v237 + 83;
                          }
                        }

                        else
                        {
                          v261 = v237 + 83;
                          v260 = v237[83];
                        }

                        memcpy(*(a1 + 1304), v260, v261[1]);
                        v262 = *(a1 + 1312);
                        *(a1 + 1152) = *(a1 + 1296);
                        *(a1 + 1168) = v262;
LABEL_450:
                        v263 = v237 + 23;
                        if (v237[23])
                        {
                          if (!v237[24])
                          {
                            v263 = v237 + 93;
                          }

                          v264 = v263[1];
                          v265 = v464;
                          if (v264)
                          {
LABEL_454:
                            AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v264, (a1 + 1472));
                            *(a1 + 1480) += *&__dst[16];
                            v266 = *&__dst[16];
                            *(a1 + 1344) = *__dst;
                            *(a1 + 1360) = v266;
                            *(a1 + 1369) = *&__dst[25];
                            v267 = *(a1 + 1360);
                            *(a1 + 1104) = *(a1 + 1344);
                            *(a1 + 1120) = v267;
                            *(a1 + 1129) = *(a1 + 1369);
                            v268 = *(a1 + 1360);
                            *(a1 + 1176) = *(a1 + 1344);
                            *(a1 + 1192) = v268;
                          }
                        }

                        else
                        {
                          v264 = v237[94];
                          v265 = v464;
                          if (v264)
                          {
                            goto LABEL_454;
                          }
                        }

                        if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                        {
                          {
                            {
                              v270 = v455;
                              if (*(a1 + 839) < 0)
                              {
                                v270 = *v455;
                              }

                              v271 = v453;
                              if (*(a1 + 887) < 0)
                              {
                                v271 = v453->__r_.__value_.__r.__words[0];
                              }

                              v272 = v454;
                              if (*(a1 + 863) < 0)
                              {
                                v272 = *v454;
                              }

                              v273 = *(a1 + 800);
                              v274 = *(a1 + 808);
                              v275 = v452;
                              if (*(a1 + 919) < 0)
                              {
                                v275 = *v452;
                              }

                              v276 = *(a1 + 920);
                              v277 = *(a1 + 1216);
                              *__dst = 136448002;
                              *&__dst[4] = v270;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v271;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v272;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v273;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v274;
                              *v471 = 2082;
                              *&v471[2] = v275;
                              *&v471[10] = 2050;
                              *&v471[12] = v276;
                              v472 = 2050;
                              v473 = v277;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v269, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v278 = *(a1 + 8);
                          v279 = v455;
                          if (*(a1 + 839) < 0)
                          {
                            v279 = *v455;
                          }

                          v280 = v453;
                          if (*(a1 + 887) < 0)
                          {
                            v280 = v453->__r_.__value_.__r.__words[0];
                          }

                          v281 = v454;
                          if (*(a1 + 863) < 0)
                          {
                            v281 = *v454;
                          }

                          v282 = v452;
                          if (*(a1 + 919) < 0)
                          {
                            v282 = *v452;
                          }

                          v283 = *(a1 + 800);
                          v284 = *(a1 + 808);
                          v285 = *(a1 + 920);
                          v286 = *(a1 + 1216);
                          v287 = *(a1 + 888);
                          *__dst = v279;
                          *&__dst[8] = v280;
                          *&__dst[16] = v281;
                          *&__dst[24] = v282;
                          *&__dst[32] = v283;
                          *&__dst[40] = v284;
                          *v471 = v285;
                          *&v471[8] = v286;
                          v471[16] = v287;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v278, a1, __dst);
                        }

                        v288 = *(a4 + 208);
                        v290 = *(a4 + 144);
                        v289 = *(a4 + 148);
                        if (v288)
                        {
                          v291 = *(a4 + 144);
                        }

                        else
                        {
                          v291 = 0;
                        }

                        v292 = *(a4 + 176);
                        if (*(a4 + 176) == 0)
                        {
                          v290 = 0;
                        }

                        v293 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                        *(a1 + 48) = v291 + v289 + v290 + *(a4 + 152) + ((v293 + 3) & 0xFFFFFFFC);
                        v294 = *(a1 + 56);
                        v295 = (*(a1 + 64) - v294) >> 2;
                        if (v293 <= v295)
                        {
                          if (v293 < v295)
                          {
                            *(a1 + 64) = v294 + 4 * v293;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v265, v293 - v295);
                          v292 = *(a4 + 176);
                          v289 = *(a4 + 148);
                          v288 = *(a4 + 208);
                        }

                        if (v288)
                        {
                          v296 = *(a4 + 144);
                        }

                        else
                        {
                          v296 = 0;
                        }

                        if (v292 | *(a4 + 184))
                        {
                          v297 = *(a4 + 144);
                        }

                        else
                        {
                          v297 = 0;
                        }

                        v298 = (v289 + v296 + v297);
                        v299 = *(a1 + 144);
                        v300 = (*(a1 + 152) - v299) >> 2;
                        if (v298 <= v300)
                        {
                          if (v298 < v300)
                          {
                            *(a1 + 152) = v299 + 4 * v298;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v451, v298 - v300);
                        }

                        v301 = *v87;
                        v302 = *(v87 - v301 + 16);
                        v303 = *(v87 + v302);
                        v304 = *(v87 + v302 + v303);
                        if (v304)
                        {
                          v305 = 4 * v304;
                          v306 = v302 + v303;
                          while (1)
                          {
                            v308 = *(v87 + v306 + 4);
                            v309 = v87 + v306 + v308;
                            v310 = v308 - *(v309 + 1);
                            v311 = v87 + v306 + v310;
                            v312 = *(v311 + 2);
                            if (v312 < 7)
                            {
                              break;
                            }

                            v313 = *(v311 + 5);
                            if (!v313 || (*(v87 + v306 + v308 + v313 + 4) & 0x80000000) == 0)
                            {
                              if (v312 <= 8)
                              {
                                v315 = -*(a4 + 120);
                              }

                              else
                              {
                                if (*(v87 + v306 + v310 + 12))
                                {
                                  v314 = 4 * *(v87 + v306 + v308 + *(v87 + v306 + v310 + 12) + 4);
                                }

                                else
                                {
                                  v314 = 0;
                                }

                                v315 = v314 - *(a4 + 120);
                              }

LABEL_513:
                              v316 = *(v87 + v306 + v310 + 8);
                              if (v316 && *(v87 + v306 + v308 + v316 + 4) == 6)
                              {
                                v317 = 1073741828;
LABEL_517:
                                v265->__begin_[v315] = v317;
                                v265->__begin_[v315 + 1] = v317 | 0x40000001;
                                v265->__begin_[v315 + 2] = v317 | 0x40000002;
                                v265->__begin_[v315 + 3] = v317 | 0x40000003;
                                v318 = v308 - *(v309 + 1);
                                v319 = v87 + v306 + v318;
                                if (*(v319 + 2) >= 0xBu)
                                {
                                  v320 = *(v319 + 7);
                                  if (v320)
                                  {
                                    if (*(v87 + v306 + v308 + v320 + 4))
                                    {
                                      v321 = *(v87 + v306 + v318 + 10);
                                      if (v321)
                                      {
                                        v307 = *(v87 + v306 + v308 + v321 + 4) & 0xFFFFF;
                                      }

                                      else
                                      {
                                        v307 = 0;
                                      }

                                      *(a1 + 768 + 8 * (v307 > 0x3F)) |= 1 << v307;
                                    }
                                  }
                                }

                                goto LABEL_501;
                              }

LABEL_516:
                              v317 = 0x40000000;
                              goto LABEL_517;
                            }

LABEL_501:
                            v306 += 4;
                            v305 -= 4;
                            if (!v305)
                            {
                              v301 = *v87;
                              goto LABEL_523;
                            }
                          }

                          v315 = -*(a4 + 120);
                          if (v312 >= 5)
                          {
                            goto LABEL_513;
                          }

                          goto LABEL_516;
                        }

LABEL_523:
                        v322 = -v301;
                        v323 = v87 + v322;
                        if (*(a1 + 742))
                        {
                          v324 = *(v323 + 12);
                          v325 = *(v87 + v324);
                          v326 = (v87 + v324 + v325);
                          v327 = *v326;
                          if (v327)
                          {
                            v328 = 0;
                            v329 = 4 * v327;
                            v330 = v87 + v324 + v325;
                            while (1)
                            {
                              v331 = v326[v328 / 4 + 1];
                              v332 = v331 - *(&v326[v328 / 4 + 1] + v331);
                              v333 = &v330[v328 + v332];
                              v334 = *(v333 + 2);
                              if (v334 >= 5)
                              {
                                v335 = *(v333 + 4);
                                if (v335)
                                {
                                  if (v330[v328 + 4 + v331 + v335] == 93)
                                  {
                                    if (v334 < 7)
                                    {
                                      break;
                                    }

                                    v336 = *&v330[v328 + 10 + v332];
                                    if (!v336)
                                    {
                                      break;
                                    }

                                    v337 = *&v330[v328 + 4 + v331 + v336];
                                    if ((v337 & 0x80000000) == 0 && (v337 & 0xFFF00000) != 0x400000)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v328 += 4;
                              if (v329 == v328)
                              {
                                goto LABEL_535;
                              }
                            }

                            *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                          }
                        }

LABEL_535:
                        v338 = *(v323 + 10);
                        v339 = *(v87 + v338);
                        v340 = *(v87 + v338 + v339);
                        if (!v340)
                        {
                          goto LABEL_551;
                        }

                        v341 = 4 * v340;
                        v342 = v338 + v339;
                        while (2)
                        {
                          v343 = *(v87 + v342 + 4);
                          v344 = v343 - *(v87 + v342 + v343 + 4);
                          v345 = v87 + v342 + v344;
                          v346 = *(v345 + 2);
                          if (v346 < 7)
                          {
                            goto LABEL_544;
                          }

                          v347 = *(v345 + 5);
                          if (v347 && *(v87 + v342 + v343 + v347 + 4) < 0)
                          {
                            goto LABEL_537;
                          }

                          if (v346 < 9 || (v348 = *(v87 + v342 + v344 + 12)) == 0)
                          {
LABEL_544:
                            v349 = 0;
                            goto LABEL_545;
                          }

                          v349 = *(v87 + v342 + v343 + v348 + 4);
LABEL_545:
                          if (*(a1 + 1584))
                          {
                            v350 = 3;
                          }

                          else
                          {
                            v350 = 1;
                          }

                          v351 = *(a4 + 124) + v350 * v349 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v351) = 1610612744;
                          if (*(a1 + 1584) == 1)
                          {
                            v265->__begin_[v351 + 1] = 0x7FFFFFFF;
                            v265->__begin_[v351 + 2] = 1610612736;
                          }

LABEL_537:
                          v342 += 4;
                          v341 -= 4;
                          if (v341)
                          {
                            continue;
                          }

                          break;
                        }

                        v322 = -*v87;
LABEL_551:
                        v459 = a1 + 752;
                        v352 = (v87 + *(v87 + v322 + 12));
                        v353 = (v352 + *v352);
                        v354 = *v353;
                        if (v354)
                        {
                          v355 = &v353[v354];
                          while (1)
                          {
                            v356 = v353[1];
                            v357 = (++v353 + v356);
                            v358 = (v357 - *v357);
                            v359 = *v358;
                            if (v359 < 7)
                            {
                              LODWORD(v360) = 0;
                              goto LABEL_561;
                            }

                            if (!v358[3] || (*(v357 + v358[3]) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_553:
                            if (v353 == v355)
                            {
                              goto LABEL_591;
                            }
                          }

                          if (v359 < 9)
                          {
                            LODWORD(v360) = 0;
                            goto LABEL_562;
                          }

                          v360 = v358[4];
                          if (v358[4])
                          {
                            LODWORD(v360) = (*(v357 + v360) >> 1) & 0x1FFFFFFF;
                            goto LABEL_562;
                          }

LABEL_561:
                          if (v359 < 7)
                          {
                            LODWORD(v361) = 0;
                          }

                          else
                          {
LABEL_562:
                            v361 = v358[3];
                            if (v361)
                            {
                              LODWORD(v361) = *(v357 + v361) & 0xFFFFF;
                              switch(v361)
                              {
                                case '1':
                                  v362 = 536870925;
                                  goto LABEL_570;
                                case '5':
                                  v362 = 536870927;
                                  goto LABEL_570;
                                case '2':
                                  v362 = 536870926;
LABEL_570:
                                  v363 = *(a4 + 124) + v360 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                  v265->__begin_[v363] = v362;
                                  v364 = (v357 - *v357);
                                  if (*v364 >= 0xBu)
                                  {
                                    v365 = v364[5];
                                    if (v365)
                                    {
                                      if (*(v357 + v365))
                                      {
                                        *(v459 + 8 * (v361 > 0x3F)) |= 1 << v361;
                                      }
                                    }
                                  }

                                  if (*(a1 + 1587) == 1)
                                  {
                                    v366 = *v465;
                                    if (!*v465)
                                    {
LABEL_714:
                                      abort();
                                    }

                                    v367 = 2 * v363;
                                    v368 = (2 * v363) | 1;
                                    while (1)
                                    {
                                      while (1)
                                      {
                                        v369 = *(v366 + 7);
                                        if (v361 >= v369)
                                        {
                                          break;
                                        }

                                        v366 = *v366;
                                        if (!v366)
                                        {
                                          goto LABEL_714;
                                        }
                                      }

                                      if (v369 >= v361)
                                      {
                                        break;
                                      }

                                      v366 = v366[1];
                                      if (!v366)
                                      {
                                        goto LABEL_714;
                                      }
                                    }

                                    v370 = v463;
LABEL_583:
                                    v371 = *v370;
                                    if (!*v370)
                                    {
LABEL_587:
                                      operator new();
                                    }

                                    while (1)
                                    {
                                      v370 = v371;
                                      v372 = *(v371 + 28);
                                      if (v368 < v372)
                                      {
                                        goto LABEL_583;
                                      }

                                      if (v372 > v367)
                                      {
                                        break;
                                      }

                                      v371 = v370[1];
                                      if (!v371)
                                      {
                                        goto LABEL_587;
                                      }
                                    }

                                    v373 = v370;
                                    v265 = v464;
                                    v87 = v466;
                                    *(v373 + 8) = *(v366 + 8);
                                  }

                                  goto LABEL_553;
                              }
                            }
                          }

                          v362 = 536870921;
                          goto LABEL_570;
                        }

LABEL_591:
                        AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v265);
                        v376 = *(a4 + 120);
                        v375 = *(a4 + 124);
                        v377 = *(a4 + 128);
                        v378 = *(a4 + 132);
                        v379 = *(a4 + 136);
                        v380 = *(a4 + 140);
                        v381 = (v375 + v378 + v380 - (v376 + v377 + v379) + 3) & 0xFFFFFFFC;
                        v382 = *(a4 + 160);
                        v383 = *(a4 + 168);
                        if (*(a4 + 160) == 0)
                        {
                          goto LABEL_609;
                        }

                        v384 = 0;
                        v385 = *(a4 + 144);
                        if (*(a4 + 208) != 1 || !v385)
                        {
                          goto LABEL_603;
                        }

                        v386 = 0;
                        *__dst = *(a4 + 160);
                        *&v468 = v383;
                        v387 = v382;
                        while (2)
                        {
                          if (v387)
                          {
                            v388 = __dst;
LABEL_596:
                            *v388 = v387 & (v387 - 1);
                            *&v451->__begin_[v386] = xmmword_29D2F17F0;
                            v386 += 4;
                            v387 = *__dst;
                            continue;
                          }

                          break;
                        }

                        v387 = v468;
                        if (v468)
                        {
                          v388 = &v468;
                          goto LABEL_596;
                        }

                        v379 = *(a4 + 136);
                        v380 = *(a4 + 140);
                        v377 = *(a4 + 128);
                        v378 = *(a4 + 132);
                        v376 = *(a4 + 120);
                        v375 = *(a4 + 124);
                        v385 = *(a4 + 144);
                        v384 = v385;
LABEL_603:
                        v389 = *(a4 + 176);
                        if (*&v389 != 0 && v385 != 0)
                        {
                          v400 = v384 - v381 + ((v380 + v378 - (v379 + v377 + v376) + v375 + 3) & 0xFFFFFFFC);
                          *__dst = v382;
                          *&v468 = v383;
                          while (1)
                          {
                            if (v382)
                            {
                              v401 = __dst;
                            }

                            else
                            {
                              v382 = v468;
                              if (!v468)
                              {
                                break;
                              }

                              v401 = &v468;
                            }

                            *v401 = v382 & (v382 - 1);
                            begin = v451->__begin_;
                            v451->__begin_[v400] = 4;
                            begin[v400 + 1] = 5;
                            begin[v400 + 2] = 6;
                            begin[v400 + 3] = 7;
                            v400 += 4;
                            v382 = *__dst;
                          }
                        }

                        v374 = vorrq_s8(*(a1 + 768), v389);
                        *(a1 + 768) = v374;
LABEL_609:
                        if (*(a4 + 148))
                        {
                          v391 = *(a4 + 144);
                          if (*(a4 + 208))
                          {
                            v392 = *(a4 + 144);
                          }

                          else
                          {
                            v392 = 0;
                          }

                          if (*(a4 + 176) == 0)
                          {
                            v391 = 0;
                          }

                          v393 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v381 + v392 + v391;
                          v395 = *(a4 + 192);
                          v394 = *(a4 + 200);
                          *__dst = v395;
                          *&v468 = v394;
                          while (1)
                          {
                            if (v395)
                            {
                              v396 = __dst;
                            }

                            else
                            {
                              v395 = v468;
                              if (!v468)
                              {
                                break;
                              }

                              v396 = &v468;
                            }

                            *v396 = v395 & (v395 - 1);
                            v397 = *(a1 + 144);
                            *(v397 + 4 * v393) = 8;
                            if (*(a1 + 1584) == 1)
                            {
                              *(v397 + 4 * (v393 + 1)) = -1;
                              *(v397 + 4 * (v393 + 2)) = 0;
                            }

                            v393 += 4;
                            v395 = *__dst;
                          }
                        }

                        if (*(a4 + 467) == 1)
                        {
                          v398 = (v87 - *v87);
                          if (*v398 < 0x17u)
                          {
                            LODWORD(v399) = 0;
                          }

                          else
                          {
                            v399 = v398[11];
                            if (v399)
                            {
                              v399 = (*(v87 + v399) + 3) >> 2;
                            }
                          }

                          *(a1 + 408) = v399;
                          *(a1 + 412) = 18;
                        }

                        v403 = (v87 - *v87);
                        if (*v403 >= 0x17u && (v404 = v403[11]) != 0)
                        {
                          v405 = *(v87 + v404) + 3;
                          v406 = (a1 + 176);
                          v407 = *(a1 + 176);
                          v408 = v405 >> 2;
                          *(a1 + 52) = v408;
                          v409 = *(a1 + 168);
                          v410 = (v407 - v409) >> 2;
                          if (v408 > v410)
                          {
                            std::vector<unsigned int>::__append((a1 + 168), v408 - v410);
                            goto LABEL_641;
                          }
                        }

                        else
                        {
                          v408 = 0;
                          v406 = (a1 + 176);
                          v411 = *(a1 + 176);
                          *(a1 + 52) = 0;
                          v409 = *(a1 + 168);
                          v410 = (v411 - v409) >> 2;
                        }

                        if (v410 > v408)
                        {
                          *v406 = v409 + 4 * v408;
                        }

LABEL_641:
                        if (v450 != (a4 + 216))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v450, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                        }

                        if (v449 != (a4 + 240))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v449, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                        }

                        if (v448 != (a4 + 320))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v448, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                        }

                        if (v447 != (a4 + 368))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v447, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                        }

                        *(a1 + 352) = *(a4 + 416);
                        *(a1 + 744) = *(a4 + 160) != 0;
                        *(a1 + 745) = *(a4 + 148) != 0;
                        v412 = *(v87 - *v87 + 24);
                        v413 = *(v87 + v412);
                        v414 = (v87 + v412 + v413);
                        v415 = *v414;
                        if (v415)
                        {
                          v416 = 0;
                          v417 = 4 * v415;
                          v418 = v87 + v412 + v413;
                          do
                          {
                            v419 = v414[v416 / 4 + 1];
                            v420 = v419 - *(&v414[v416 / 4 + 1] + v419);
                            v421 = &v418[v416 + v420];
                            v422 = *(v421 + 2);
                            if (v422 >= 5)
                            {
                              v423 = *(v421 + 4);
                              if (v423)
                              {
                                if (v422 >= 7 && v418[v416 + 4 + v419 + v423] == 139)
                                {
                                  if (*&v418[v416 + 10 + v420])
                                  {
                                    v424 = *&v418[v416 + 4 + v419 + *&v418[v416 + 10 + v420]] & 0xFFFFF;
                                    if (v422 >= 0xB)
                                    {
                                      goto LABEL_660;
                                    }
                                  }

                                  else
                                  {
                                    v424 = 0;
                                    if (v422 >= 0xB)
                                    {
LABEL_660:
                                      v425 = *&v418[v416 + 14 + v420];
                                      if (v425 && v418[v416 + 4 + v419 + v425])
                                      {
                                        *(v459 + 8 * (v424 > 0x3F)) |= 1 << v424;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            v416 += 4;
                          }

                          while (v417 != v416);
                        }

                        v426 = (v462 - *v462);
                        if (*v426 >= 0xDu)
                        {
                          v427 = v426[6];
                          if (v426[6])
                          {
                            v428 = v462 + v427;
                            v429 = *(v462 + v427);
                            if (*(v462 + v427 + v429) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                            {
                              operator new();
                            }

                            v430 = (v462 - *v462);
                            if (*v430 >= 0x41u && (v431 = v430[32]) != 0)
                            {
                              v432 = v462 + v431 + *(v462 + v431);
                              if (!*&v428[v429])
                              {
                                goto LABEL_694;
                              }

LABEL_672:
                              if (v432)
                              {
                                v433 = 0;
                                v434 = v462 + v427 + v429 + 4;
                                do
                                {
                                  if (*v432)
                                  {
                                    v435 = *(v432 + 8 * v433 + 4);
                                  }

                                  else
                                  {
                                    v435 = 0;
                                  }

                                  *__dst = *(v434 + 8 * v433);
                                  *&__dst[8] = v435;
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v461, __dst);
                                  ++v433;
                                }

                                while (v433 < *&v428[v429]);
                              }

                              else
                              {
                                v437 = v462 + v427 + v429 + 4;
                                do
                                {
                                  *__dst = *(v437 + 8 * v432);
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v461, __dst);
                                  ++v432;
                                }

                                while (v432 < *&v428[v429]);
                              }
                            }

                            else
                            {
                              v432 = 0;
                              if (*&v428[v429])
                              {
                                goto LABEL_672;
                              }
                            }
                          }
                        }

LABEL_694:
                        v438 = (v462 - *v462);
                        if (*v438 >= 0xBu)
                        {
                          v439 = v438[5];
                          if (v439)
                          {
                            v440 = (v462 + v439 + *(v462 + v439));
                            if (*v440 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                            {
                              operator new();
                            }

                            if (*v440 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                            {
                              operator new();
                            }

                            if (*v440)
                            {
                              v441 = 0;
                              v442 = v440 + 1;
                              do
                              {
                                AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v442 + *v442), *v374.i32);
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v468, v457, __dst);
                                std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v468);
                                *v467 = *(v468 + 96);
                                std::vector<unsigned long long>::push_back[abi:nn200100](v460, v467);
                                v443 = *(&v468 + 1);
                                if (*(&v468 + 1) && !atomic_fetch_add((*(&v468 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v443->__on_zero_shared)(v443);
                                  std::__shared_weak_count::__release_weak(v443);
                                }

                                if (SBYTE1(v473) < 0)
                                {
                                  operator delete(*v471);
                                }

                                ++v441;
                                ++v442;
                              }

                              while (v441 < *v440);
                            }
                          }
                        }

                        *(a1 + 1396) = 0;
                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        *a1 = &unk_2A23F7770;
                        *__dst = *v445;
                        *&__dst[16] = *(v445 + 16);
                        AGX::BlitFragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitFragmentProgramVariantESLState(a1 + 1784, v457, v456, a4, __dst);
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v185 < 0x21)
                {
                  goto LABEL_368;
                }

                goto LABEL_364;
              }
            }
          }

          v182 = 0;
          goto LABEL_312;
        }
      }

      v177 = 0;
      LOBYTE(v176) = 0;
      goto LABEL_300;
    }

    v68 = (v67 + *v67);
    v69 = (v68 - *v68);
    v70 = *v69;
    if (v69[2])
    {
      v71 = (v68 + v69[2] + *(v68 + v69[2]));
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v71 = 0;
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    v72 = v69[3];
    if (v72)
    {
      v73 = v68 + v72 + *(v68 + v72);
      if (!*v71)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v73 = 0;
    if (!*v71)
    {
      goto LABEL_126;
    }

LABEL_116:
    v74 = 0;
    v75 = v73 + 4;
    v76 = (v71 + 2);
    while (1)
    {
      v77 = *(v76 - 1);
      v78 = strlen(&v76[v77]);
      if (v78 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v79 = v78;
      if (v78 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v78;
      if (v78)
      {
        memmove(__dst, &v76[v77], v78);
      }

      __dst[v79] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v75[4 * v74];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v74;
      v76 += 4;
      if (v74 >= *v71)
      {
        goto LABEL_126;
      }
    }

LABEL_715:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v30 < 0x45)
  {
    if (v30 < 0x3D)
    {
      LOWORD(v35) = 0;
      if (v30 < 0x3B)
      {
        LODWORD(v37) = 0;
        v38 = 0;
        LOWORD(v34) = 0;
        v36 = 0;
LABEL_56:
        *(a1 + 560) = v37;
        v39 = v35 + v37 - 1;
        v40 = -v37;
        v41 = *(a1 + 568);
        v42 = (v34 | ((v40 & v39) << 32) | (v36 << 48)) + v38 + (v41 & 0xFF000000);
        *(a1 + 568) = v42;
        if (v42 != v41)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v43 = -1;
          *(&v43 + 1) = -1;
          *(a1 + 624) = v43;
          *(a1 + 640) = v43;
          *(a1 + 656) = v43;
          *(a1 + 672) = -1;
        }

        v44 = (v26 - *v26);
        if (*v44 < 0x57u)
        {
          LODWORD(v45) = 0;
        }

        else
        {
          v45 = v44[43];
          if (v45)
          {
            LODWORD(v45) = *(v26 + v45);
          }
        }

        *(a1 + 680) = v45;
        v46 = *v26;
        v28 = -v46;
        v30 = *(v26 - v46);
        goto LABEL_63;
      }

      LOWORD(v34) = 0;
      v36 = v29[29];
      if (!v29[29])
      {
LABEL_41:
        if (v30 < 0x3F)
        {
          LODWORD(v37) = 0;
          v38 = 0;
        }

        else
        {
          v37 = v29[31];
          if (v29[31])
          {
            v37 = *(v26 + v37);
          }

          if (v30 < 0x4B)
          {
            v38 = 0;
          }

          else
          {
            v38 = v29[37];
            if (v29[37])
            {
              v38 = *(v26 + v38) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v36 = *(v26 + v36);
      goto LABEL_41;
    }

    LOWORD(v34) = 0;
    v35 = v29[30];
    if (v29[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v34 = v29[34];
    if (v29[34])
    {
      LODWORD(v34) = *(v26 + v34);
    }

    v35 = v29[30];
    if (v29[30])
    {
LABEL_38:
      LODWORD(v35) = *(v26 + v35);
    }
  }

  v36 = v29[29];
  if (!v29[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDFF650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void **a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, void **a21, void **a22, void **a23, void **a24, uint64_t a25, void **a26, void **a27, void **a28, void **a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34, void **a35, uint64_t a36, void **a37, uint64_t a38, void **a39)
{
  CompileStatistics::~CompileStatistics(a19);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a39);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v39 + 1560));
  v42 = *a34;
  if (*a34)
  {
    *(v39 + 1544) = v42;
    operator delete(v42);
  }

  v43 = *a35;
  if (*a35)
  {
    *(v39 + 1520) = v43;
    operator delete(v43);
  }

  if (*a10 < 0)
  {
    operator delete(*a11);
    if ((*(v39 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v39 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v39 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a27);
  if (*(v39 + 887) < 0)
  {
LABEL_8:
    operator delete(*a28);
    if ((*(v39 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v39 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v39 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a29);
  if ((*(v39 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a14);
    v44 = *a21;
    if (*a21)
    {
      *(v39 + 336) = v44;
      operator delete(v44);
    }

    v45 = *a23;
    if (*a23)
    {
      *(v39 + 312) = v45;
      operator delete(v45);
    }

    v46 = *a22;
    if (*a22)
    {
      *(v39 + 288) = v46;
      operator delete(v46);
    }

    v47 = *a24;
    if (*a24)
    {
      *(v39 + 264) = v47;
      operator delete(v47);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v39 + 168);
    v48 = *a26;
    if (*a26)
    {
      *(v39 + 152) = v48;
      operator delete(v48);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a38);
    if (*(v40 - 209) < 0)
    {
      operator delete(*(v40 - 232));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a30);
  goto LABEL_11;
}

void AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v471 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E80;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v459 = (a1 + 56);
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v458 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *(a1 + 640) = v11;
  *(a1 + 656) = v11;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v11;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v449 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v12 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v452 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v456 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v461 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v10 = (v16 + *v16);
  }

  v17 = (v10 - *v10);
  v442 = a1 + 928;
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v463 = (v10 + v18 + *(v10 + v18));
  }

  else
  {
    v463 = 0;
  }

  v19 = 0;
  if (a3[58])
  {
    v20 = a3[59] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 58;
  if (v20)
  {
    v21 = 128;
    v22 = a3 + 128;
  }

  else
  {
    v22 = a3 + 58;
  }

  v23 = a3[v21];
  if (v23 && v22[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v26 = (v19 + v25 + *(v19 + v25));
  }

  else
  {
    v26 = 0;
  }

  v27 = *v26;
  v28 = -v27;
  v29 = (v26 - v27);
  v30 = *(v26 - v27);
  if (v30 < 0x25)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v29[18];
    if (v29[18])
    {
      LOBYTE(v31) = *(v26 + v31) != 0;
    }
  }

  *(a1 + 1585) = v31;
  v32 = (v463 - *v463);
  if (*v32 < 0x55u || (v33 = v32[42]) == 0 || !*(v463 + v33))
  {
LABEL_63:
    if (v30 < 7)
    {
      LODWORD(v47) = 0;
    }

    else
    {
      v47 = *(v26 + v28 + 6);
      if (*(v26 + v28 + 6))
      {
        LODWORD(v47) = *(v26 + v47);
      }
    }

    v446 = (a1 + 304);
    v447 = (a1 + 256);
    v444 = (a1 + 328);
    v445 = (a1 + 280);
    *(a1 + 800) = v47;
    v48 = (v26 - *v26);
    if (*v48 >= 0x13u && (v49 = v48[9]) != 0)
    {
      v50 = v26 + v49 + *(v26 + v49) + 4;
    }

    else
    {
      v50 = "";
    }

    v450 = (a1 + 864);
    v451 = (a1 + 840);
    v440 = a1 + 1400;
    v455 = a1 + 1536;
    v443 = (a1 + 1616);
    v448 = (a1 + 144);
    MEMORY[0x29ED51E00](v452, v50);
    v51 = (v26 - *v26);
    if (*v51 >= 9u && (v52 = v51[4]) != 0)
    {
      v53 = v26 + v52 + *(v26 + v52) + 4;
    }

    else
    {
      v53 = "";
    }

    MEMORY[0x29ED51E00](v451, v53);
    v54 = (v26 - *v26);
    if (*v54 < 0x29u)
    {
      LOBYTE(v55) = 0;
    }

    else
    {
      v55 = v54[20];
      if (v55)
      {
        LOBYTE(v55) = *(v26 + v55) != 0;
      }
    }

    *(a1 + 888) = v55;
    std::string::operator=(v450, &__str);
    v56 = (v26 - *v26);
    if (*v56 >= 0x51u && (v57 = v56[40]) != 0)
    {
      v58 = v26 + v57 + *(v26 + v57) + 4;
    }

    else
    {
      v58 = "";
    }

    MEMORY[0x29ED51E00](v449, v58);
    v59 = (v26 - *v26);
    v462 = v26;
    if (*v59 >= 5u && v59[2] && *(a2 + 16608) == 1)
    {
      v60 = a3[1];
      if (v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_705;
      }

      v61 = *a3;
      if (v60 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v60)
      {
        memmove(__dst, v61, v60);
      }

      __dst[v60] = 0;
      if (*v12 < 0)
      {
        operator delete(*v440);
      }

      *v440 = *__dst;
      *(v440 + 16) = *&__dst[16];
      v62 = a3[3];
      if (a3[4])
      {
        v63 = v62 == 0;
      }

      else
      {
        v63 = 1;
      }

      if (v63)
      {
        v62 = a3[73];
      }

      *(a1 + 1424) = v62 - *a3;
    }

    v441 = a5;
    v460 = a2;
    v64 = a3 + 113;
    if (a3[43])
    {
      v65 = a3[44] == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = 43;
    if (v65)
    {
      v66 = 113;
    }

    else
    {
      v64 = a3 + 43;
    }

    v457 = a3;
    v67 = a3[v66];
    if (!v67 || !v64[1])
    {
LABEL_126:
      v80 = v457 + 138;
      if (v457[68])
      {
        v81 = v457[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = v457 + 68;
      }

      v83 = v457[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85 || (v86 = (v83 + *v83), v87 = (v86 - *v86), *v87 < 5u) || (v88 = v87[2]) == 0)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(v86 + v88);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v89 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v90 = (v463 - *v463);
      if (*v90 < 5u)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[2];
        if (v91)
        {
          LODWORD(v91) = *(v463 + v91);
        }
      }

      *v443 = v91;
      v92 = (v463 - *v463);
      if (*v92 < 0x2Du)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[22];
        if (v93)
        {
          LODWORD(v93) = *(v463 + v93);
        }
      }

      *(a1 + 1620) = v93;
      v94 = (v463 - *v463);
      if (*v94 < 0x35u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[26];
        if (v95)
        {
          LODWORD(v95) = *(v463 + v95);
        }
      }

      *(a1 + 1660) = v95;
      v96 = (v463 - *v463);
      if (*v96 < 0x43u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[33];
        if (v97)
        {
          LODWORD(v97) = *(v463 + v97);
        }
      }

      *(a1 + 1696) = v97;
      v98 = v457 + 108;
      if (v457[38])
      {
        v99 = v457[39] == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = 38;
      if (v99)
      {
        v100 = 108;
      }

      else
      {
        v98 = v457 + 38;
      }

      v101 = v457[v100];
      if (v101 && v98[1])
      {
        v102 = (v101 + *v101);
        v103 = (v102 - *v102);
        if (*v103 < 0xDu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[6];
          if (v104)
          {
            LODWORD(v104) = *(v102 + v104);
          }
        }

        *(a1 + 1620) = v104;
        v105 = (v102 - *v102);
        if (*v105 < 0xBu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[5];
          if (v106)
          {
            LODWORD(v106) = *(v102 + v106);
          }
        }

        *(a1 + 1628) = v106;
        v107 = (v102 - *v102);
        if (*v107 < 0x11u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[8];
          if (v108)
          {
            LODWORD(v108) = *(v102 + v108);
          }
        }

        *(a1 + 1632) = v108;
        v109 = (v102 - *v102);
        if (*v109 < 0x13u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[9];
          if (v110)
          {
            LODWORD(v110) = *(v102 + v110);
          }
        }

        *(a1 + 1636) = v110;
        v111 = (v102 - *v102);
        if (*v111 < 0x17u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[11];
          if (v112)
          {
            LODWORD(v112) = *(v102 + v112);
          }
        }

        *(a1 + 1640) = v112;
        v113 = (v102 - *v102);
        if (*v113 < 0x1Bu)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[13];
          if (v114)
          {
            LODWORD(v114) = *(v102 + v114);
          }
        }

        *(a1 + 1644) = v114;
        v115 = (v102 - *v102);
        if (*v115 < 0x15u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[10];
          if (v116)
          {
            LODWORD(v116) = *(v102 + v116);
          }
        }

        *(a1 + 1648) = v116;
        v117 = (v102 - *v102);
        if (*v117 < 0x19u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[12];
          if (v118)
          {
            LODWORD(v118) = *(v102 + v118);
          }
        }

        *(a1 + 1652) = v118;
        v119 = (v102 - *v102);
        if (*v119 < 0x1Du)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[14];
          if (v120)
          {
            LODWORD(v120) = *(v102 + v120);
          }
        }

        *(a1 + 1656) = v120;
        v121 = (v102 - *v102);
        if (*v121 < 0xFu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[7];
          if (v122)
          {
            LODWORD(v122) = *(v102 + v122);
          }
        }

        *(a1 + 1660) = v122;
        v123 = (v102 - *v102);
        if (*v123 < 0x1Fu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[15];
          if (v124)
          {
            LODWORD(v124) = *(v102 + v124);
          }
        }

        *(a1 + 1664) = v124;
        v125 = (v102 - *v102);
        if (*v125 < 0x21u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[16];
          if (v126)
          {
            LODWORD(v126) = *(v102 + v126);
          }
        }

        *(a1 + 1668) = v126;
        v127 = (v102 - *v102);
        if (*v127 < 0x23u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[17];
          if (v128)
          {
            LODWORD(v128) = *(v102 + v128);
          }
        }

        *(a1 + 1672) = v128;
        v129 = (v102 - *v102);
        if (*v129 < 0x25u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[18];
          if (v130)
          {
            LODWORD(v130) = *(v102 + v130);
          }
        }

        *(a1 + 1676) = v130;
        v131 = (v102 - *v102);
        if (*v131 < 0x27u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[19];
          if (v132)
          {
            LODWORD(v132) = *(v102 + v132);
          }
        }

        *(a1 + 1680) = v132;
        v133 = (v102 - *v102);
        if (*v133 < 0x29u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[20];
          if (v134)
          {
            LODWORD(v134) = *(v102 + v134);
          }
        }

        *(a1 + 1684) = v134;
        v135 = (v102 - *v102);
        if (*v135 < 0x2Bu)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[21];
          if (v136)
          {
            LODWORD(v136) = *(v102 + v136);
          }
        }

        *(a1 + 1688) = v136;
        v137 = (v102 - *v102);
        if (*v137 < 7u)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[3];
          if (v138)
          {
            LODWORD(v138) = *(v102 + v138);
          }
        }

        *(a1 + 1692) = v138;
        v139 = (v102 - *v102);
        if (*v139 >= 5u && (v140 = v139[2]) != 0)
        {
          v141 = *(v102 + v140);
        }

        else
        {
          v141 = 0;
        }

        *(a1 + 1700) = v141;
      }

      if (v457[53])
      {
        v142 = v457[54];
        if (v142)
        {
          v143 = v457[53];
        }

        else
        {
          v143 = v457[123];
        }

        if (v142)
        {
          v144 = v457 + 53;
        }

        else
        {
          v144 = v457 + 123;
        }
      }

      else
      {
        v144 = v457 + 123;
        v143 = v457[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v143, v144[1]);
      v145 = v463;
      std::string::push_back((a1 + 1760), 0);
      v146 = *v463;
      v147 = v463 - v146;
      v148 = *(v463 - v146);
      if (v148 < 0x39)
      {
        goto LABEL_269;
      }

      v149 = -v146;
      v150 = *(v147 + 28);
      if (v150)
      {
        v151 = (v463 + v150 + *(v463 + v150));
        if (*v151)
        {
          *(a1 + 1504) = 1;
          v152 = (v151 + v151[1] + 4);
          v153 = (v152 - *v152);
          if (*v153 >= 9u && (v154 = v153[4]) != 0)
          {
            v155 = *(v152 + v154);
          }

          else
          {
            v155 = 0;
          }

          *(a1 + 1704) = v155;
          *(a1 + 1708) = 1;
          v156 = *v463;
          v149 = -v156;
          v148 = *(v463 - v156);
        }
      }

      if (v148 < 0x3B)
      {
        goto LABEL_269;
      }

      v157 = v463 + v149;
      if (*(v157 + 29))
      {
        v158 = (v463 + *(v157 + 29) + *(v463 + *(v157 + 29)));
        v159 = *v158;
        if (v159)
        {
          v160 = v158 + 1;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (!(v162 >> 20))
            {
              *(a1 + 1488 + 8 * (v161 > 0x3F)) |= 1 << v161;
            }

            --v159;
          }

          while (v159);
        }
      }

      if (v148 < 0x57)
      {
LABEL_269:
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v157 + 43);
        if (*(v157 + 43))
        {
          LODWORD(v163) = *(v463 + v163);
        }
      }

      *(a1 + 692) = v163;
      v164 = (v463 - *v463);
      if (*v164 >= 0x21u && (v165 = v164[16]) != 0)
      {
        v166 = *(v463 + v165);
      }

      else
      {
        v166 = 0;
      }

      v167 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v166;
      v168 = (v463 - *v463);
      if (*v168 < 0x59u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[44];
        if (v169)
        {
          LODWORD(v169) = *(v463 + v169);
        }
      }

      *(a1 + 720) = v169;
      v170 = (v463 - *v463);
      if (*v170 < 0x51u)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[40];
        if (v171)
        {
          LODWORD(v171) = *(v463 + v171);
        }
      }

      *(a1 + 724) = v171;
      v172 = (v463 - *v463);
      if (*v172 < 0x4Bu)
      {
        LODWORD(v173) = 0;
      }

      else
      {
        v173 = v172[37];
        if (v173)
        {
          LODWORD(v173) = *(v463 + v173);
        }
      }

      *(a1 + 732) = v173;
      v174 = (v463 - *v463);
      v175 = *v174;
      if (v175 >= 0x25)
      {
        if (v174[18] && *(v463 + v174[18]))
        {
          if (v175 < 0x27)
          {
            LOBYTE(v176) = 0;
            v177 = 1;
            goto LABEL_298;
          }

          v176 = v174[19];
          goto LABEL_292;
        }

        if (v175 >= 0x27)
        {
          v176 = v174[19];
          if (v174[19] && *(v463 + v174[19]))
          {
            v177 = 1;
            LOBYTE(v176) = 1;
            goto LABEL_298;
          }

          if (v175 < 0x29)
          {
            goto LABEL_701;
          }

          if (v174[20] && *(v463 + v174[20]))
          {
LABEL_292:
            v177 = 1;
            goto LABEL_702;
          }

          if (v175 >= 0x71 && (v432 = v174[56]) != 0)
          {
            v177 = *(v463 + v432) != 0;
          }

          else
          {
LABEL_701:
            v177 = 0;
          }

LABEL_702:
          if (v176)
          {
            LOBYTE(v176) = *(v463 + v176) != 0;
          }

LABEL_298:
          *(a1 + 742) = v176;
          v178 = (v26 - *v26);
          v179 = *v178;
          if (v179 < 0x21)
          {
            v181 = 0;
            LODWORD(v180) = 0;
          }

          else
          {
            v180 = v178[16];
            if (v178[16])
            {
              LODWORD(v180) = *(v26 + v180);
            }

            if (v179 < 0x4D)
            {
              v181 = 0;
            }

            else
            {
              v181 = v178[38];
              if (v178[38])
              {
                v181 = *(v26 + v181);
              }

              if (v179 >= 0x4F)
              {
                v182 = v178[39];
                if (v182)
                {
                  v182 = *(v26 + v182);
                }

LABEL_310:
                *(a1 + 784) = v180 | (v181 << 32);
                *(a1 + 792) = v182;
                *(a1 + 746) = (v177 | v176) & 1;
                v183 = *v463;
                v184 = (v463 - v183);
                v185 = *(v463 - v183);
                if (v185 < 0x37)
                {
                  LOBYTE(v186) = 0;
                }

                else
                {
                  v186 = v184[27];
                  if (v184[27])
                  {
                    LOBYTE(v186) = *(v463 + v186) != 0;
                  }
                }

                *(a1 + 741) = v186;
                v187 = (v26 - *v26);
                v188 = *v187;
                if (v188 < 0x33)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v187[25];
                  if (v187[25])
                  {
                    LOBYTE(v189) = *(v26 + v189) != 0;
                  }
                }

                *(a1 + 747) = v189;
                if (v185 < 0x3F)
                {
                  LOBYTE(v190) = 0;
                }

                else
                {
                  v190 = v184[31];
                  if (v184[31])
                  {
                    v191 = (v463 + v190 + *(v463 + v190));
                    v190 = *v191;
                    if (v190)
                    {
                      v192 = v191 + 1;
                      while (1)
                      {
                        v194 = *v192++;
                        v193 = v194;
                        if (v194 < 0x36 && ((0x3F000000000777uLL >> v193) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v190)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v190) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 749) = v190;
                if (v188 <= 0x14)
                {
                  LOBYTE(v196) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v195 = v187[10];
                  if (v187[10])
                  {
                    LOBYTE(v195) = *(v26 + v195) != 0;
                  }

                  *(a1 + 743) = v195;
                  if (v188 < 0x25)
                  {
                    LOBYTE(v196) = 0;
                  }

                  else
                  {
                    v196 = v187[18];
                    if (v187[18])
                    {
                      LOBYTE(v196) = *(v26 + v196) != 0;
                    }
                  }
                }

                v197 = -v183;
                *(a1 + 1585) = v196;
                if (v185 < 0x5D)
                {
                  LOBYTE(v198) = 0;
                }

                else
                {
                  v198 = v184[46];
                  if (v198)
                  {
                    LOBYTE(v198) = *(v463 + v198) != 0;
                  }
                }

                v453 = v177;
                *(a1 + 748) = v198;
                if (v188 >= 0x23 && (v199 = v187[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v200 = (v26 + v199 + *(v26 + v199));
                  v201 = *v200;
                  if (v201)
                  {
                    v202 = &v200[v201];
                    while (1)
                    {
                      v203 = v200[1];
                      v204 = (++v200 + v203);
                      v205 = (v204 - *v204);
                      v206 = *v205;
                      if (v206 < 7)
                      {
                        v207 = 0;
                        v209 = 0;
                        if (v206 < 5)
                        {
                          goto LABEL_351;
                        }

                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v205[3])
                      {
                        v207 = *(v204 + v205[3]);
                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v207 = 0;
                        v208 = v205[2];
                        if (v208)
                        {
LABEL_350:
                          v209 = *(v204 + v208);
                          goto LABEL_351;
                        }
                      }

                      v209 = 0;
LABEL_351:
                      v210 = v461;
LABEL_352:
                      v211 = *v210;
                      if (!*v210)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v210 = v211;
                        v212 = *(v211 + 28);
                        if (v209 < v212)
                        {
                          goto LABEL_352;
                        }

                        if (v212 >= v209)
                        {
                          break;
                        }

                        v211 = v210[1];
                        if (!v211)
                        {
                          goto LABEL_356;
                        }
                      }

                      v26 = v462;
                      *(v210 + 8) = v207;
                      if (v200 == v202)
                      {
                        v145 = v463;
                        v215 = *v463;
                        v197 = -v215;
                        v167 = &qword_2A17A1000;
                        if (*(v463 - v215) < 0x21u)
                        {
LABEL_366:
                          v214 = 0;
                          v213 = v457;
                          {
                            goto LABEL_708;
                          }

                          goto LABEL_369;
                        }

LABEL_362:
                        v213 = v457;
                        if (*(v145 + v197 + 32))
                        {
                          v214 = *(v145 + *(v145 + v197 + 32));
                          {
                            goto LABEL_369;
                          }
                        }

                        else
                        {
                          v214 = 0;
                          {
                            goto LABEL_369;
                          }
                        }

LABEL_708:
                        {
                          *(v167 + 402) = 0;
                        }

LABEL_369:
                        v216 = *(v167 + 402) + v214;
                        *(a1 + 688) = v216;
                        v217 = (v145 - *v145);
                        if (*v217 < 0x43u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[33];
                          if (v218)
                          {
                            LODWORD(v218) = *(v145 + v218);
                          }
                        }

                        *(a1 + 700) = v218;
                        v219 = (v145 - *v145);
                        if (*v219 < 5u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[2];
                          if (v220)
                          {
                            LODWORD(v220) = *(v145 + v220);
                          }
                        }

                        *(a1 + 684) = v220;
                        v221 = (v145 - *v145);
                        if (*v221 < 0x51u)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[40];
                          if (v222)
                          {
                            LODWORD(v222) = *(v145 + v222);
                          }
                        }

                        *(a1 + 716) = v222;
                        v223 = (v145 - *v145);
                        if (*v223 < 0x4Fu)
                        {
                          LODWORD(v224) = 0;
                        }

                        else
                        {
                          v224 = v223[39];
                          if (v224)
                          {
                            LODWORD(v224) = *(v145 + v224);
                          }
                        }

                        *(a1 + 728) = v224;
                        *(a1 + 736) = *(a4 + 468);
                        v225 = (v145 - *v145);
                        if ((*(v145 + v225[6] + *(v145 + v225[6])) | v216) != 0 || v453)
                        {
                          goto LABEL_396;
                        }

                        v226 = *v225;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v225[16])
                        {
                          v227 = *(v145 + v225[16]);
                          if (v226 >= 0x43)
                          {
LABEL_672:
                            if (v225[33])
                            {
                              v228 = *(v145 + v225[33]);
                              {
                                goto LABEL_674;
                              }

                              goto LABEL_392;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_672;
                          }
                        }

                        v228 = 0;
                        {
LABEL_674:
                          {
                            *(v167 + 402) = 0;
                          }
                        }

LABEL_392:
                        if (v228 + v227 + *(v167 + 402))
                        {
LABEL_396:
                          LOBYTE(v230) = 1;
                        }

                        else
                        {
                          v229 = (v463 - *v463);
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v230) = 0;
                          }

                          else
                          {
                            v230 = v229[47];
                            if (v230)
                            {
                              LOBYTE(v230) = *(v463 + v230) != 0;
                            }
                          }
                        }

                        *(a1 + 740) = v230;
                        v231 = (v26 - *v26);
                        if (*v231 < 0x11u)
                        {
                          LODWORD(v232) = 0;
                        }

                        else
                        {
                          v232 = v231[8];
                          if (v232)
                          {
                            LODWORD(v232) = *(v26 + v232);
                          }
                        }

                        v233 = (a1 + 1200);
                        *(a1 + 1392) = v232;
                        {
                        }

                        v234 = v213 + 3;
                        if (v213[4])
                        {
                          v235 = v213[3] == 0;
                        }

                        else
                        {
                          v235 = 1;
                        }

                        v236 = v213;
                        v237 = v213 + 73;
                        if (v235)
                        {
                          v238 = v234 + 70;
                        }

                        else
                        {
                          v238 = v234;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v460 + 6496, v238[1], (a1 + 1448));
                        *(a1 + 1480) += *&__dst[16];
                        v239 = *&__dst[16];
                        *v233 = *__dst;
                        *(a1 + 1216) = v239;
                        *(a1 + 1225) = *&__dst[25];
                        *(a1 + 920) = *(a1 + 1200);
                        *(a1 + 952) = v460 + 6496;
                        v240 = *(a1 + 1216);
                        *(a1 + 960) = *v233;
                        *(a1 + 976) = v240;
                        *(a1 + 985) = *(a1 + 1225);
                        if (*v234)
                        {
                          v241 = v236[4];
                          if (v241)
                          {
                            v242 = *v234;
                          }

                          else
                          {
                            v242 = v236[73];
                          }

                          if (v241)
                          {
                            v237 = v234;
                          }
                        }

                        else
                        {
                          v242 = *v237;
                        }

                        v243 = v459;
                        memcpy(*(a1 + 1208), v242, v237[1]);
                        v244 = *(a1 + 1208);
                        v245 = *(a1 + 1216);
                        *(a1 + 928) = *(a1 + 920);
                        *(a1 + 936) = v244;
                        *(a1 + 944) = v245;
                        v246 = v236 + 8;
                        v247 = v463;
                        if (v236[8])
                        {
                          if (v236[9])
                          {
                            v248 = v236 + 8;
                          }

                          else
                          {
                            v248 = v236 + 78;
                          }

                          v249 = v248[1];
                          v250 = v448;
                          if (!v249)
                          {
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          v249 = v236[79];
                          v250 = v448;
                          if (!v249)
                          {
                            goto LABEL_432;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v460 + 6328, v249, (a1 + 1456));
                        *(a1 + 1480) += *&__dst[16];
                        v251 = *&__dst[16];
                        *(a1 + 1248) = *__dst;
                        *(a1 + 1264) = v251;
                        *(a1 + 1273) = *&__dst[25];
                        v252 = *(a1 + 1264);
                        *(a1 + 1008) = *(a1 + 1248);
                        *(a1 + 1024) = v252;
                        *(a1 + 1033) = *(a1 + 1273);
                        if (*v246)
                        {
                          v253 = v457[9];
                          if (v253)
                          {
                            v254 = *v246;
                          }

                          else
                          {
                            v254 = v457[78];
                          }

                          if (v253)
                          {
                            v255 = v236 + 8;
                          }

                          else
                          {
                            v255 = v457 + 78;
                          }
                        }

                        else
                        {
                          v255 = v457 + 78;
                          v254 = v457[78];
                        }

                        v247 = v463;
                        memcpy(*(a1 + 1256), v254, v255[1]);
LABEL_432:
                        v256 = v457 + 13;
                        if (v457[13])
                        {
                          if (v457[14])
                          {
                            v257 = v457 + 13;
                          }

                          else
                          {
                            v257 = v457 + 83;
                          }

                          v258 = v257[1];
                          if (!v258)
                          {
                            goto LABEL_448;
                          }
                        }

                        else
                        {
                          v258 = v457[84];
                          if (!v258)
                          {
                            goto LABEL_448;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v460 + 6328, v258, (a1 + 1464));
                        *(a1 + 1480) += *&__dst[16];
                        v259 = *&__dst[16];
                        *(a1 + 1296) = *__dst;
                        *(a1 + 1312) = v259;
                        *(a1 + 1321) = *&__dst[25];
                        v260 = *(a1 + 1312);
                        *(a1 + 1056) = *(a1 + 1296);
                        *(a1 + 1072) = v260;
                        *(a1 + 1081) = *(a1 + 1321);
                        if (*v256)
                        {
                          v261 = v457[14];
                          if (v261)
                          {
                            v262 = *v256;
                          }

                          else
                          {
                            v262 = v457[83];
                          }

                          if (v261)
                          {
                            v263 = v457 + 13;
                          }

                          else
                          {
                            v263 = v457 + 83;
                          }
                        }

                        else
                        {
                          v263 = v457 + 83;
                          v262 = v457[83];
                        }

                        v247 = v463;
                        memcpy(*(a1 + 1304), v262, v263[1]);
                        v264 = *(a1 + 1312);
                        *(a1 + 1152) = *(a1 + 1296);
                        *(a1 + 1168) = v264;
LABEL_448:
                        v265 = v457 + 23;
                        if (v457[23])
                        {
                          if (!v457[24])
                          {
                            v265 = v457 + 93;
                          }

                          v266 = v265[1];
                          if (v266)
                          {
LABEL_452:
                            AGX::Heap<true>::allocateImpl(__dst, v460 + 6328, v266, (a1 + 1472));
                            *(a1 + 1480) += *&__dst[16];
                            v267 = *&__dst[16];
                            *(a1 + 1344) = *__dst;
                            *(a1 + 1360) = v267;
                            *(a1 + 1369) = *&__dst[25];
                            v268 = *(a1 + 1360);
                            *(a1 + 1104) = *(a1 + 1344);
                            *(a1 + 1120) = v268;
                            *(a1 + 1129) = *(a1 + 1369);
                            v269 = *(a1 + 1360);
                            *(a1 + 1176) = *(a1 + 1344);
                            *(a1 + 1192) = v269;
                            v247 = v463;
                          }
                        }

                        else
                        {
                          v266 = v457[94];
                          if (v266)
                          {
                            goto LABEL_452;
                          }
                        }

                        if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                        {
                          {
                            {
                              v271 = v452;
                              if (*(a1 + 839) < 0)
                              {
                                v271 = *v452;
                              }

                              v272 = v450;
                              if (*(a1 + 887) < 0)
                              {
                                v272 = v450->__r_.__value_.__r.__words[0];
                              }

                              v273 = v451;
                              if (*(a1 + 863) < 0)
                              {
                                v273 = *v451;
                              }

                              v274 = *(a1 + 800);
                              v275 = *(a1 + 808);
                              v276 = v449;
                              if (*(a1 + 919) < 0)
                              {
                                v276 = *v449;
                              }

                              v277 = *(a1 + 920);
                              v278 = *(a1 + 1216);
                              *__dst = 136448002;
                              *&__dst[4] = v271;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v272;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v273;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v274;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v275;
                              *v468 = 2082;
                              *&v468[2] = v276;
                              *&v468[10] = 2050;
                              *&v468[12] = v277;
                              v469 = 2050;
                              v470 = v278;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v270, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v279 = *(a1 + 8);
                          v280 = v452;
                          if (*(a1 + 839) < 0)
                          {
                            v280 = *v452;
                          }

                          v281 = v450;
                          if (*(a1 + 887) < 0)
                          {
                            v281 = v450->__r_.__value_.__r.__words[0];
                          }

                          v282 = v451;
                          if (*(a1 + 863) < 0)
                          {
                            v282 = *v451;
                          }

                          v283 = v449;
                          v247 = v463;
                          if (*(a1 + 919) < 0)
                          {
                            v283 = *v449;
                          }

                          v284 = *(a1 + 800);
                          v285 = *(a1 + 808);
                          v286 = *(a1 + 920);
                          v287 = *(a1 + 1216);
                          v288 = *(a1 + 888);
                          *__dst = v280;
                          *&__dst[8] = v281;
                          *&__dst[16] = v282;
                          *&__dst[24] = v283;
                          *&__dst[32] = v284;
                          *&__dst[40] = v285;
                          *v468 = v286;
                          *&v468[8] = v287;
                          v468[16] = v288;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v279, a1, __dst);
                        }

                        v289 = *(a4 + 208);
                        v291 = *(a4 + 144);
                        v290 = *(a4 + 148);
                        if (v289)
                        {
                          v292 = *(a4 + 144);
                        }

                        else
                        {
                          v292 = 0;
                        }

                        v293 = *(a4 + 176);
                        if (*(a4 + 176) == 0)
                        {
                          v291 = 0;
                        }

                        v294 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                        *(a1 + 48) = v292 + v290 + v291 + *(a4 + 152) + ((v294 + 3) & 0xFFFFFFFC);
                        v295 = *(a1 + 56);
                        v296 = (*(a1 + 64) - v295) >> 2;
                        if (v294 <= v296)
                        {
                          if (v294 < v296)
                          {
                            *(a1 + 64) = v295 + 4 * v294;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v459, v294 - v296);
                          v293 = *(a4 + 176);
                          v290 = *(a4 + 148);
                          v289 = *(a4 + 208);
                        }

                        if (v289)
                        {
                          v297 = *(a4 + 144);
                        }

                        else
                        {
                          v297 = 0;
                        }

                        if (v293 | *(a4 + 184))
                        {
                          v298 = *(a4 + 144);
                        }

                        else
                        {
                          v298 = 0;
                        }

                        v299 = (v290 + v297 + v298);
                        v300 = *(a1 + 144);
                        v301 = (*(a1 + 152) - v300) >> 2;
                        if (v299 <= v301)
                        {
                          if (v299 < v301)
                          {
                            *(a1 + 152) = v300 + 4 * v299;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v250, v299 - v301);
                        }

                        v302 = *v247;
                        v303 = *(v247 - v302 + 16);
                        v304 = *(v247 + v303);
                        v305 = *(v247 + v303 + v304);
                        if (v305)
                        {
                          v306 = 4 * v305;
                          v307 = v303 + v304;
                          while (1)
                          {
                            v309 = *(v247 + v307 + 4);
                            v310 = v247 + v307 + v309;
                            v311 = v309 - *(v310 + 1);
                            v312 = v247 + v307 + v311;
                            v313 = *(v312 + 2);
                            if (v313 < 7)
                            {
                              goto LABEL_506;
                            }

                            v314 = *(v312 + 5);
                            if (!v314 || (*(v247 + v307 + v309 + v314 + 4) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_499:
                            v307 += 4;
                            v306 -= 4;
                            if (!v306)
                            {
                              v302 = *v247;
                              goto LABEL_513;
                            }
                          }

                          if (v313 < 9)
                          {
LABEL_506:
                            LODWORD(v315) = 0;
                          }

                          else
                          {
                            v315 = *(v247 + v307 + v311 + 12);
                            if (v315)
                            {
                              LODWORD(v315) = 4 * *(v247 + v307 + v309 + v315 + 4);
                            }
                          }

                          v316 = v315 - *(a4 + 120);
                          v459->__begin_[v316] = 0x40000000;
                          v459->__begin_[v316 + 1] = 1073741825;
                          v459->__begin_[v316 + 2] = 1073741826;
                          v459->__begin_[v316 + 3] = 1073741827;
                          v317 = v309 - *(v310 + 1);
                          if (*(v247 + v307 + v317 + 4) >= 0xBu && *(v247 + v307 + v317 + 14) && *(v247 + v307 + v309 + *(v247 + v307 + v317 + 14) + 4))
                          {
                            v318 = *(v247 + v307 + v317 + 10);
                            if (v318)
                            {
                              v308 = *(v247 + v307 + v309 + v318 + 4) & 0xFFFFF;
                            }

                            else
                            {
                              v308 = 0;
                            }

                            *(a1 + 768 + 8 * (v308 > 0x3F)) |= 1 << v308;
                          }

                          goto LABEL_499;
                        }

LABEL_513:
                        v319 = -v302;
                        v320 = v247 + v319;
                        if (*(a1 + 742))
                        {
                          v321 = *(v320 + 12);
                          v322 = *(v247 + v321);
                          v323 = (v247 + v321 + v322);
                          v324 = *v323;
                          if (v324)
                          {
                            v325 = 0;
                            v326 = 4 * v324;
                            v327 = v247 + v321 + v322;
                            while (1)
                            {
                              v328 = v323[v325 / 4 + 1];
                              v329 = v328 - *(&v323[v325 / 4 + 1] + v328);
                              v330 = &v327[v325 + v329];
                              v331 = *(v330 + 2);
                              if (v331 >= 5)
                              {
                                v332 = *(v330 + 4);
                                if (v332)
                                {
                                  if (v327[v325 + 4 + v328 + v332] == 93)
                                  {
                                    if (v331 < 7)
                                    {
                                      break;
                                    }

                                    v333 = *&v327[v325 + 10 + v329];
                                    if (!v333)
                                    {
                                      break;
                                    }

                                    v334 = *&v327[v325 + 4 + v328 + v333];
                                    if ((v334 & 0x80000000) == 0 && (v334 & 0xFFF00000) != 0x400000)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v325 += 4;
                              if (v326 == v325)
                              {
                                goto LABEL_525;
                              }
                            }

                            *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                          }
                        }

LABEL_525:
                        v335 = *(v320 + 10);
                        v336 = *(v247 + v335);
                        v337 = *(v247 + v335 + v336);
                        if (!v337)
                        {
                          goto LABEL_541;
                        }

                        v338 = 4 * v337;
                        v339 = v335 + v336;
                        while (2)
                        {
                          v340 = *(v247 + v339 + 4);
                          v341 = v340 - *(v247 + v339 + v340 + 4);
                          v342 = v247 + v339 + v341;
                          v343 = *(v342 + 2);
                          if (v343 < 7)
                          {
                            goto LABEL_534;
                          }

                          v344 = *(v342 + 5);
                          if (v344 && *(v247 + v339 + v340 + v344 + 4) < 0)
                          {
                            goto LABEL_527;
                          }

                          if (v343 < 9 || (v345 = *(v247 + v339 + v341 + 12)) == 0)
                          {
LABEL_534:
                            v346 = 0;
                            goto LABEL_535;
                          }

                          v346 = *(v247 + v339 + v340 + v345 + 4);
LABEL_535:
                          if (*(a1 + 1584))
                          {
                            v347 = 3;
                          }

                          else
                          {
                            v347 = 1;
                          }

                          v348 = *(a4 + 124) + v347 * v346 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v348) = 1610612740;
                          if (*(a1 + 1584) == 1)
                          {
                            v459->__begin_[v348 + 1] = 0x7FFFFFFF;
                            v459->__begin_[v348 + 2] = 1610612736;
                          }

LABEL_527:
                          v339 += 4;
                          v338 -= 4;
                          if (v338)
                          {
                            continue;
                          }

                          break;
                        }

                        v319 = -*v247;
LABEL_541:
                        v454 = a1 + 752;
                        v349 = (v247 + *(v247 + v319 + 12));
                        v350 = (v349 + *v349);
                        v351 = *v350;
                        if (v351)
                        {
                          v352 = &v350[v351];
                          while (1)
                          {
                            v353 = v350[1];
                            v354 = (++v350 + v353);
                            v355 = (v354 - *v354);
                            v356 = *v355;
                            if (v356 < 7)
                            {
                              LODWORD(v357) = 0;
                              goto LABEL_551;
                            }

                            if (!v355[3] || (*(v354 + v355[3]) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_543:
                            if (v350 == v352)
                            {
                              goto LABEL_581;
                            }
                          }

                          if (v356 < 9)
                          {
                            LODWORD(v357) = 0;
                            goto LABEL_552;
                          }

                          v357 = v355[4];
                          if (v355[4])
                          {
                            LODWORD(v357) = (*(v354 + v357) >> 1) & 0x1FFFFFFF;
                            goto LABEL_552;
                          }

LABEL_551:
                          if (v356 < 7)
                          {
                            LODWORD(v358) = 0;
                          }

                          else
                          {
LABEL_552:
                            v358 = v355[3];
                            if (v358)
                            {
                              LODWORD(v358) = *(v354 + v358) & 0xFFFFF;
                              if (v358 == 53)
                              {
                                v359 = 536870920;
                              }

                              else
                              {
                                v359 = 0x1FFFFFFF;
                              }

                              if (v358 == 49)
                              {
                                v359 = 536870919;
                              }

LABEL_562:
                              v360 = *(a4 + 124) + v357 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                              *(*v243 + 4 * v360) = v359;
                              v361 = (v354 - *v354);
                              if (*v361 >= 0xBu)
                              {
                                v362 = v361[5];
                                if (v362)
                                {
                                  if (*(v354 + v362))
                                  {
                                    *(v454 + 8 * (v358 > 0x3F)) |= 1 << v358;
                                  }
                                }
                              }

                              if (*(a1 + 1587) == 1)
                              {
                                v363 = *v461;
                                if (!*v461)
                                {
LABEL_704:
                                  abort();
                                }

                                v364 = 2 * v360;
                                v365 = (2 * v360) | 1;
                                while (1)
                                {
                                  while (1)
                                  {
                                    v366 = *(v363 + 7);
                                    if (v358 >= v366)
                                    {
                                      break;
                                    }

                                    v363 = *v363;
                                    if (!v363)
                                    {
                                      goto LABEL_704;
                                    }
                                  }

                                  if (v366 >= v358)
                                  {
                                    break;
                                  }

                                  v363 = v363[1];
                                  if (!v363)
                                  {
                                    goto LABEL_704;
                                  }
                                }

                                v367 = v458;
LABEL_575:
                                v368 = *v367;
                                if (!*v367)
                                {
LABEL_579:
                                  operator new();
                                }

                                while (1)
                                {
                                  v367 = v368;
                                  v369 = *(v368 + 7);
                                  if (v365 < v369)
                                  {
                                    goto LABEL_575;
                                  }

                                  if (v369 > v364)
                                  {
                                    break;
                                  }

                                  v368 = v367[1];
                                  if (!v368)
                                  {
                                    goto LABEL_579;
                                  }
                                }

                                v243 = v459;
                                v247 = v463;
                                *(v367 + 8) = *(v363 + 8);
                              }

                              goto LABEL_543;
                            }
                          }

                          v359 = 0x1FFFFFFF;
                          goto LABEL_562;
                        }

LABEL_581:
                        AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v243);
                        v372 = *(a4 + 120);
                        v371 = *(a4 + 124);
                        v373 = *(a4 + 128);
                        v374 = *(a4 + 132);
                        v375 = *(a4 + 136);
                        v376 = *(a4 + 140);
                        v377 = (v371 + v374 + v376 - (v372 + v373 + v375) + 3) & 0xFFFFFFFC;
                        v378 = *(a4 + 160);
                        v379 = *(a4 + 168);
                        if (*(a4 + 160) == 0)
                        {
                          goto LABEL_599;
                        }

                        v380 = 0;
                        v381 = *(a4 + 144);
                        if (*(a4 + 208) != 1 || !v381)
                        {
                          goto LABEL_593;
                        }

                        v382 = 0;
                        *__dst = *(a4 + 160);
                        *&v465 = v379;
                        v383 = v378;
                        while (2)
                        {
                          if (v383)
                          {
                            v384 = __dst;
LABEL_586:
                            *v384 = v383 & (v383 - 1);
                            *&v448->__begin_[v382] = xmmword_29D2F17F0;
                            v382 += 4;
                            v383 = *__dst;
                            continue;
                          }

                          break;
                        }

                        v383 = v465;
                        if (v465)
                        {
                          v384 = &v465;
                          goto LABEL_586;
                        }

                        v375 = *(a4 + 136);
                        v376 = *(a4 + 140);
                        v373 = *(a4 + 128);
                        v374 = *(a4 + 132);
                        v372 = *(a4 + 120);
                        v371 = *(a4 + 124);
                        v381 = *(a4 + 144);
                        v380 = v381;
LABEL_593:
                        v385 = *(a4 + 176);
                        if (*&v385 != 0 && v381 != 0)
                        {
                          v396 = v380 - v377 + ((v376 + v374 - (v375 + v373 + v372) + v371 + 3) & 0xFFFFFFFC);
                          *__dst = v378;
                          *&v465 = v379;
                          while (1)
                          {
                            if (v378)
                            {
                              v397 = __dst;
                            }

                            else
                            {
                              v378 = v465;
                              if (!v465)
                              {
                                break;
                              }

                              v397 = &v465;
                            }

                            *v397 = v378 & (v378 - 1);
                            begin = v448->__begin_;
                            v448->__begin_[v396] = 0;
                            begin[v396 + 1] = 1;
                            begin[v396 + 2] = 2;
                            begin[v396 + 3] = 3;
                            v396 += 4;
                            v378 = *__dst;
                          }
                        }

                        v370 = vorrq_s8(*(a1 + 768), v385);
                        *(a1 + 768) = v370;
LABEL_599:
                        if (*(a4 + 148))
                        {
                          v387 = *(a4 + 144);
                          if (*(a4 + 208))
                          {
                            v388 = *(a4 + 144);
                          }

                          else
                          {
                            v388 = 0;
                          }

                          if (*(a4 + 176) == 0)
                          {
                            v387 = 0;
                          }

                          v389 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v377 + v388 + v387;
                          v391 = *(a4 + 192);
                          v390 = *(a4 + 200);
                          *__dst = v391;
                          *&v465 = v390;
                          while (1)
                          {
                            if (v391)
                            {
                              v392 = __dst;
                            }

                            else
                            {
                              v391 = v465;
                              if (!v465)
                              {
                                break;
                              }

                              v392 = &v465;
                            }

                            *v392 = v391 & (v391 - 1);
                            v393 = *(a1 + 144);
                            *(v393 + 4 * v389) = 4;
                            if (*(a1 + 1584) == 1)
                            {
                              *(v393 + 4 * (v389 + 1)) = -1;
                              *(v393 + 4 * (v389 + 2)) = 0;
                            }

                            v389 += 4;
                            v391 = *__dst;
                          }
                        }

                        if (*(a4 + 467) == 1)
                        {
                          v394 = (v247 - *v247);
                          if (*v394 < 0x17u)
                          {
                            LODWORD(v395) = 0;
                          }

                          else
                          {
                            v395 = v394[11];
                            if (v395)
                            {
                              v395 = (*(v247 + v395) + 3) >> 2;
                            }
                          }

                          *(a1 + 408) = v395;
                          *(a1 + 412) = 1073741822;
                        }

                        v399 = (v247 - *v247);
                        if (*v399 >= 0x17u && (v400 = v399[11]) != 0)
                        {
                          v401 = *(v247 + v400) + 3;
                          v402 = (a1 + 176);
                          v403 = *(a1 + 176);
                          v404 = v401 >> 2;
                          *(a1 + 52) = v404;
                          v405 = *(a1 + 168);
                          v406 = (v403 - v405) >> 2;
                          if (v404 > v406)
                          {
                            std::vector<unsigned int>::__append((a1 + 168), v404 - v406);
                            goto LABEL_631;
                          }
                        }

                        else
                        {
                          v404 = 0;
                          v402 = (a1 + 176);
                          v407 = *(a1 + 176);
                          *(a1 + 52) = 0;
                          v405 = *(a1 + 168);
                          v406 = (v407 - v405) >> 2;
                        }

                        if (v406 > v404)
                        {
                          *v402 = v405 + 4 * v404;
                        }

LABEL_631:
                        if (v447 != (a4 + 216))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v447, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                        }

                        if (v446 != (a4 + 240))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v446, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                        }

                        if (v445 != (a4 + 320))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v445, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                        }

                        if (v444 != (a4 + 368))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v444, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                        }

                        *(a1 + 352) = *(a4 + 416);
                        *(a1 + 744) = *(a4 + 160) != 0;
                        *(a1 + 745) = *(a4 + 148) != 0;
                        v408 = *(v247 - *v247 + 24);
                        v409 = *(v247 + v408);
                        v410 = (v247 + v408 + v409);
                        v411 = *v410;
                        if (v411)
                        {
                          v412 = 0;
                          v413 = 4 * v411;
                          v414 = v247 + v408 + v409;
                          do
                          {
                            v415 = v410[v412 / 4 + 1];
                            v416 = v415 - *(&v410[v412 / 4 + 1] + v415);
                            v417 = &v414[v412 + v416];
                            v418 = *(v417 + 2);
                            if (v418 >= 5)
                            {
                              v419 = *(v417 + 4);
                              if (v419)
                              {
                                if (v418 >= 7 && v414[v412 + 4 + v415 + v419] == 139)
                                {
                                  if (*&v414[v412 + 10 + v416])
                                  {
                                    v420 = *&v414[v412 + 4 + v415 + *&v414[v412 + 10 + v416]] & 0xFFFFF;
                                    if (v418 >= 0xB)
                                    {
                                      goto LABEL_650;
                                    }
                                  }

                                  else
                                  {
                                    v420 = 0;
                                    if (v418 >= 0xB)
                                    {
LABEL_650:
                                      v421 = *&v414[v412 + 14 + v416];
                                      if (v421 && v414[v412 + 4 + v415 + v421])
                                      {
                                        *(v454 + 8 * (v420 > 0x3F)) |= 1 << v420;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            v412 += 4;
                          }

                          while (v413 != v412);
                        }

                        v422 = (v462 - *v462);
                        if (*v422 >= 0xDu)
                        {
                          v423 = v422[6];
                          if (v422[6])
                          {
                            v424 = v462 + v423;
                            v425 = *(v462 + v423);
                            if (*(v462 + v423 + v425) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                            {
                              operator new();
                            }

                            v426 = (v462 - *v462);
                            if (*v426 >= 0x41u && (v427 = v426[32]) != 0)
                            {
                              v428 = v462 + v427 + *(v462 + v427);
                              if (!*&v424[v425])
                              {
                                goto LABEL_684;
                              }

LABEL_662:
                              if (v428)
                              {
                                v429 = 0;
                                v430 = v462 + v423 + v425 + 4;
                                do
                                {
                                  if (*v428)
                                  {
                                    v431 = *(v428 + 8 * v429 + 4);
                                  }

                                  else
                                  {
                                    v431 = 0;
                                  }

                                  *__dst = *(v430 + 8 * v429);
                                  *&__dst[8] = v431;
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v456, __dst);
                                  ++v429;
                                }

                                while (v429 < *&v424[v425]);
                              }

                              else
                              {
                                v433 = v462 + v423 + v425 + 4;
                                do
                                {
                                  *__dst = *(v433 + 8 * v428);
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v456, __dst);
                                  ++v428;
                                }

                                while (v428 < *&v424[v425]);
                              }
                            }

                            else
                            {
                              v428 = 0;
                              if (*&v424[v425])
                              {
                                goto LABEL_662;
                              }
                            }
                          }
                        }

LABEL_684:
                        v434 = (v462 - *v462);
                        if (*v434 >= 0xBu)
                        {
                          v435 = v434[5];
                          if (v435)
                          {
                            v436 = (v462 + v435 + *(v462 + v435));
                            if (*v436 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                            {
                              operator new();
                            }

                            if (*v436 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                            {
                              operator new();
                            }

                            if (*v436)
                            {
                              v437 = 0;
                              v438 = v436 + 1;
                              do
                              {
                                AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v438 + *v438), *v370.i32);
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v465, v460, __dst);
                                std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v465);
                                v464 = *(v465 + 96);
                                std::vector<unsigned long long>::push_back[abi:nn200100](v455, &v464);
                                v439 = *(&v465 + 1);
                                if (*(&v465 + 1) && !atomic_fetch_add((*(&v465 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v439->__on_zero_shared)(v439);
                                  std::__shared_weak_count::__release_weak(v439);
                                }

                                if (SBYTE1(v470) < 0)
                                {
                                  operator delete(*v468);
                                }

                                ++v437;
                                ++v438;
                              }

                              while (v437 < *v436);
                            }
                          }
                        }

                        *(a1 + 1396) = 0;
                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        *a1 = &unk_2A23F7790;
                        *__dst = *v442;
                        *&__dst[16] = *(v442 + 16);
                        AGX::BlitVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexProgramVariantESLState(a1 + 1784, v460, v457, a4, __dst, v441);
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v185 < 0x21)
                {
                  goto LABEL_366;
                }

                goto LABEL_362;
              }
            }
          }

          v182 = 0;
          goto LABEL_310;
        }
      }

      v177 = 0;
      LOBYTE(v176) = 0;
      goto LABEL_298;
    }

    v68 = (v67 + *v67);
    v69 = (v68 - *v68);
    v70 = *v69;
    if (v69[2])
    {
      v71 = (v68 + v69[2] + *(v68 + v69[2]));
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v71 = 0;
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    v72 = v69[3];
    if (v72)
    {
      v73 = v68 + v72 + *(v68 + v72);
      if (!*v71)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v73 = 0;
    if (!*v71)
    {
      goto LABEL_126;
    }

LABEL_116:
    v74 = 0;
    v75 = v73 + 4;
    v76 = (v71 + 2);
    while (1)
    {
      v77 = *(v76 - 1);
      v78 = strlen(&v76[v77]);
      if (v78 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v79 = v78;
      if (v78 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v78;
      if (v78)
      {
        memmove(__dst, &v76[v77], v78);
      }

      __dst[v79] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      v26 = v462;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v75[4 * v74];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v74;
      v76 += 4;
      if (v74 >= *v71)
      {
        goto LABEL_126;
      }
    }

LABEL_705:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v30 < 0x45)
  {
    if (v30 < 0x3D)
    {
      LOWORD(v35) = 0;
      if (v30 < 0x3B)
      {
        LODWORD(v37) = 0;
        v38 = 0;
        LOWORD(v34) = 0;
        v36 = 0;
LABEL_56:
        *(a1 + 560) = v37;
        v39 = v35 + v37 - 1;
        v40 = -v37;
        v41 = *(a1 + 568);
        v42 = (v34 | ((v40 & v39) << 32) | (v36 << 48)) + v38 + (v41 & 0xFF000000);
        *(a1 + 568) = v42;
        if (v42 != v41)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v43 = -1;
          *(&v43 + 1) = -1;
          *(a1 + 624) = v43;
          *(a1 + 640) = v43;
          *(a1 + 656) = v43;
          *(a1 + 672) = -1;
        }

        v44 = (v26 - *v26);
        if (*v44 < 0x57u)
        {
          LODWORD(v45) = 0;
        }

        else
        {
          v45 = v44[43];
          if (v45)
          {
            LODWORD(v45) = *(v26 + v45);
          }
        }

        *(a1 + 680) = v45;
        v46 = *v26;
        v28 = -v46;
        v30 = *(v26 - v46);
        goto LABEL_63;
      }

      LOWORD(v34) = 0;
      v36 = v29[29];
      if (!v29[29])
      {
LABEL_41:
        if (v30 < 0x3F)
        {
          LODWORD(v37) = 0;
          v38 = 0;
        }

        else
        {
          v37 = v29[31];
          if (v29[31])
          {
            v37 = *(v26 + v37);
          }

          if (v30 < 0x4B)
          {
            v38 = 0;
          }

          else
          {
            v38 = v29[37];
            if (v29[37])
            {
              v38 = *(v26 + v38) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v36 = *(v26 + v36);
      goto LABEL_41;
    }

    LOWORD(v34) = 0;
    v35 = v29[30];
    if (v29[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v34 = v29[34];
    if (v29[34])
    {
      LODWORD(v34) = *(v26 + v34);
    }

    v35 = v29[30];
    if (v29[30])
    {
LABEL_38:
      LODWORD(v35) = *(v26 + v35);
    }
  }

  v36 = v29[29];
  if (!v29[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}