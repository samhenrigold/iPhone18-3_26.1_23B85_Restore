void sub_239ECF124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239ECF6EC(OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::resizeComponentTopology() || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(a1, v5) || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignComponentTopology() || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment() || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignComponentTags() || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(a1, v6) || !OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignFaceVaryingTopology())
  {
    return 0;
  }

  return MEMORY[0x282205D80](a1);
}

int *sub_239ECF7BC(int *result, int *a2, uint64_t a3, int a4, int a5, double a6, int64x2_t a7)
{
  v7 = a3;
  v49[1] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v9 = *a2;
    v10 = a2[2];
    if (*(*(*a2 + 216) + 4 * v10) <= 0.0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v11 = *a2;
        LODWORD(v12) = a2[2];
        v13 = *(result + 3);
        goto LABEL_8;
      }
    }

    else if (a4 != 4)
    {
      v11 = *a2;
      v12 = a2[2];
      v30 = *(*(*a2 + 216) + 4 * v12);
      if (v30 < 1.0)
      {
        v13 = HIBYTE(*result);
        if ((*result & 0xFF0000) == 0 || (v30 + -1.0) <= 0.0)
        {
LABEL_8:
          v14 = *(*(v11 + 144) + 8 * v12);
          *(a3 + 24) = 2;
          *(a3 + 32) = v14;
          *(a3 + 36) = 1;
          if (v13 == 1)
          {
            if (v14 == 2)
            {
              v49[0] = 0;
              result = sub_239ECFC04(a2, v49);
              if (LODWORD(v49[0]) == 3 || (v15 = 0.25, v16 = 0.25, HIDWORD(v49[0]) == 3))
              {
                v17 = 0.47;
                if (HIDWORD(v49[0]) == 3)
                {
                  v18 = 0.47;
                }

                else
                {
                  v18 = 0.25;
                }

                if (LODWORD(v49[0]) != 3)
                {
                  v17 = 0.25;
                }

                v16 = (v18 + v17) * 0.5;
                v15 = 0.5 - v16;
              }

              v19 = *v7;
              v19->f32[0] = v15;
              v19->f32[1] = v15;
              v11 = *a2;
              LODWORD(v14) = *(v7 + 32);
              goto LABEL_51;
            }

            v19 = *a3;
            __asm { FMOV            V0.2S, #0.25 }

            **a3 = _D0;
          }

          else
          {
            v19 = *a3;
            __asm { FMOV            V0.2S, #0.25 }

            **a3 = _D0;
            if (v14 == 2)
            {
              v16 = 0.25;
              LODWORD(v14) = 2;
LABEL_51:
              v40 = *(v7 + 16);
              *v40 = v16;
              v40[1] = v16;
LABEL_62:
              a7.i32[0] = *(*(v11 + 216) + 4 * a2[2]);
              v47 = 1.0 - *a7.i32;
              *a7.i32 = *a7.i32 * 0.5;
              *v19 = vmla_n_f32(vdup_lane_s32(*a7.i8, 0), *v19, v47);
              if (v14 >= 1)
              {
                v48 = *(v7 + 16);
                v14 = v14;
                do
                {
                  *v48 = *v48 * v47;
                  ++v48;
                  --v14;
                }

                while (v14);
              }

              return result;
            }
          }

          if (v14 >= 1)
          {
            *_D0.i32 = 0.5 / v14;
            v41 = (v14 + 3) & 0xFFFFFFFC;
            a7 = vdupq_n_s64(v14 - 1);
            v42 = xmmword_239F9AD30;
            v43 = xmmword_239F9AD40;
            v44 = (*(a3 + 16) + 8);
            v45 = vdupq_n_s64(4uLL);
            do
            {
              v46 = vmovn_s64(vcgeq_u64(a7, v43));
              if (vuzp1_s16(v46, _D0).u8[0])
              {
                *(v44 - 2) = _D0.i32[0];
              }

              if (vuzp1_s16(v46, _D0).i8[2])
              {
                *(v44 - 1) = _D0.i32[0];
              }

              if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(*&a7, *&v42))).i32[1])
              {
                *v44 = _D0.i32[0];
                v44[1] = _D0.i32[0];
              }

              v42 = vaddq_s64(v42, v45);
              v43 = vaddq_s64(v43, v45);
              v44 += 4;
              v41 -= 4;
            }

            while (v41);
          }

          goto LABEL_62;
        }
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    _D0.i32[0] = 0.5;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v9 = *a2;
  LODWORD(v10) = a2[2];
LABEL_19:
  v20 = *(*(v9 + 144) + 8 * v10);
  *(a3 + 24) = 2;
  *(a3 + 32) = v20;
  *(a3 + 36) = 1;
  if (*(result + 3) == 1)
  {
    if (v20 == 2)
    {
      v49[0] = 0;
      result = sub_239ECFC04(a2, v49);
      if (LODWORD(v49[0]) == 3 || (v21 = 0.25, _D0.i32[0] = 0.25, HIDWORD(v49[0]) == 3))
      {
        v23 = 0.47;
        if (HIDWORD(v49[0]) == 3)
        {
          v24 = 0.47;
        }

        else
        {
          v24 = 0.25;
        }

        if (LODWORD(v49[0]) != 3)
        {
          v23 = 0.25;
        }

        *_D0.i32 = (v24 + v23) * 0.5;
        v21 = 0.5 - *_D0.i32;
      }

      v25 = *v7;
      *v25 = v21;
      v25[1] = v21;
      goto LABEL_31;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
    _D0.i32[0] = 0.25;
    if (v20 == 2)
    {
LABEL_31:
      v7 += 16;
LABEL_37:
      v31 = *v7;
      v31->i32[0] = _D0.i32[0];
      v31->i32[1] = _D0.i32[0];
      return result;
    }
  }

  if (v20 >= 1)
  {
    *_D0.i32 = 0.5 / v20;
    v32 = (v20 + 3) & 0xFFFFFFFC;
    v33 = vdupq_n_s64(v20 - 1);
    v34 = xmmword_239F9AD30;
    v35 = xmmword_239F9AD40;
    v36 = (*(a3 + 16) + 8);
    v37 = vdupq_n_s64(4uLL);
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v33, v35));
      if (vuzp1_s16(v38, _D0).u8[0])
      {
        *(v36 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v38, _D0).i8[2])
      {
        *(v36 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v33, *&v34))).i32[1])
      {
        *v36 = _D0.i32[0];
        v36[1] = _D0.i32[0];
      }

      v34 = vaddq_s64(v34, v37);
      v35 = vaddq_s64(v35, v37);
      v36 += 4;
      v32 -= 4;
    }

    while (v32);
  }

  return result;
}

int *sub_239ECFC04(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[2];
  v4 = *(*result + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_239ECFC50(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x28223BE20]();
  v18 = &v78 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v21 = 0.0;
LABEL_25:
    if (v12 == 4)
    {
      v78 = v15;
      v31 = *MEMORY[0x277D86528];
      v32 = 0xFFFFFFFF00000000;
      v33 = v18;
      do
      {
        v34 = *v33++;
        v32 += 0x100000000;
      }

      while (v31 >= v34);
      v35 = v16 << 32;
      v36 = &v18[4 * v16 - 4];
      do
      {
        v37 = *v36--;
        v35 -= 0x100000000;
      }

      while (v31 >= v37);
      v38 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v38;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v39 = *(a3 + 8);
      if (v38 >= 1)
      {
        bzero(*(a3 + 8), 4 * v38);
      }

      *(v39 + (v32 >> 30)) = 1040187392;
      *(v39 + (v35 >> 30)) = 1040187392;
      v15 = v78;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v79 = *a1;
      MEMORY[0x28223BE20]();
      bzero(&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      v40 = sub_239ED0230(a2, &v79, (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v41 = *(a2 + 20);
      v42 = *(*(a2 + 8) + 408);
      v43 = *(v42 + 4 * v41);
      if (v15 || (v15 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v79, *(v42 + 4 * v41), v16, v40), v15 != v12))
      {
        MEMORY[0x28223BE20]();
        v45 = (&v78 - v44);
        bzero(&v78 - v44, v46);
        v47 = v45 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v54 = *MEMORY[0x277D86528];
            v48 = 0xFFFFFFFF00000000;
            v55 = v40;
            do
            {
              v56 = *v55++;
              v48 += 0x100000000;
            }

            while (v54 >= v56);
            v57 = v16 << 32;
            v58 = &v40[v16 - 1];
            do
            {
              v59 = *v58--;
              v57 -= 0x100000000;
            }

            while (v54 >= v59);
            v60 = *(a2 + 24);
            *v45 = 0.75;
            if (v60 >= 1)
            {
              bzero(v45 + 1, 4 * v60);
            }

            v53 = 0;
            *(v47 + (v48 >> 30)) = 1040187392;
            *(v47 + (v57 >> 30)) = 1040187392;
            LODWORD(v48) = v60;
            v52 = 0;
          }

          else
          {
            LODWORD(v48) = 0;
            v53 = 0;
            v52 = 0;
            *v45 = 1.0;
          }
        }

        else
        {
          v48 = *(a2 + 28);
          *v45 = (v48 - 2) / v48;
          if (v48 >= 1)
          {
            v49 = 1.0 / (v48 * v48);
            v50 = v45 + 1;
            v51 = v48;
            do
            {
              *v50 = v49;
              v50[v16] = v49;
              ++v50;
              --v51;
            }

            while (v51);
          }

          v52 = 1;
          v53 = v48;
        }

        OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v79, v21, v43, v16, v18, v40);
        v62 = 1.0 - v61;
        **a3 = (**a3 * v61) + (*v45 * (1.0 - v61));
        if (v48)
        {
          if (*(a3 + 28))
          {
            if (v48 >= 1)
            {
              v63 = *(a3 + 8);
              v64 = v48;
              v65 = v45 + 1;
              do
              {
                v66 = *v65++;
                *v63 = (*v63 * v61) + (v66 * v62);
                ++v63;
                --v64;
              }

              while (v64);
            }
          }

          else
          {
            *(a3 + 28) = v48;
            if (v48 >= 1)
            {
              v67 = *(a3 + 8);
              v68 = v48;
              v69 = v45 + 1;
              do
              {
                v70 = *v69++;
                *v67++ = v70 * v62;
                --v68;
              }

              while (v68);
            }
          }
        }

        if (v53)
        {
          v71 = &v47[v16];
          if (*(a3 + 32))
          {
            if (v53 >= 1)
            {
              v72 = *(a3 + 16);
              v73 = v53;
              do
              {
                v74 = *v71++;
                *v72 = (*v72 * v61) + (v74 * v62);
                ++v72;
                --v73;
              }

              while (v73);
            }
          }

          else
          {
            *(a3 + 32) = v53;
            *(a3 + 36) = v52;
            if (v53 >= 1)
            {
              v75 = *(a3 + 16);
              v76 = v53;
              do
              {
                v77 = *v71++;
                *v75++ = v77 * v62;
                --v76;
              }

              while (v76);
            }
          }
        }
      }
    }

    return;
  }

  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(*(*a2 + 408) + 4 * v20);
  if (v16 >= 1)
  {
    v22 = (v19[45] + 4 * *(v19[42] + 8 * v20 + 4));
    v23 = v19[27];
    v24 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v16;
    do
    {
      v26 = *v22++;
      *v24++ = *(v23 + 4 * v26);
      --v25;
    }

    while (v25);
  }

  if (!v12)
  {
    v79 = *a1;
    v12 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v79, v21, v16, (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v7 = v12 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_25;
  }

  v27 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v27;
  *(a3 + 32) = v27;
  *(a3 + 36) = 1;
  **a3 = (v27 - 2) / v27;
  if (v27 >= 1)
  {
    v28 = 1.0 / (v27 * v27);
    v29 = *(a3 + 8);
    v30 = *(a3 + 16);
    do
    {
      *v29++ = v28;
      *v30++ = v28;
      --v27;
    }

    while (v27);
  }
}

float *sub_239ED0230(int *a1, OpenSubdiv::__aapl__::Sdc::Crease *this, float *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = v14;
  memset(v14, 0, sizeof(v14));
  v7 = a1[6];
  __p = 0;
  if (v7 >= 0x11)
  {
    v6 = operator new(4 * v7);
    __p = v6;
    v7 = a1[6];
  }

  if (v7 >= 1)
  {
    v8 = (*(*a1 + 360) + 4 * *(*(*a1 + 336) + 8 * a1[4] + 4));
    v9 = *(*a1 + 216);
    v10 = v7;
    v11 = v6;
    do
    {
      v12 = *v8++;
      *v11++ = *(v9 + 4 * v12);
      --v10;
    }

    while (v10);
  }

  OpenSubdiv::__aapl__::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(this, v7, v6, a3);
  operator delete(__p);
  return a3;
}

_DWORD *sub_239ED035C(_DWORD *result, int *a2, uint64_t a3, int a4, int a5, double a6, int64x2_t a7)
{
  if (!a4)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(*(*a2 + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *a2;
        LODWORD(v10) = a2[2];
LABEL_8:
        v11 = v10;
        v12 = *(*(v9 + 144) + 8 * v10);
        *(a3 + 24) = 2;
        *(a3 + 32) = v12;
        *(a3 + 36) = 0;
        v13 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v12 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v12 >= 1)
        {
          *_D0.i32 = 0.25 / v12;
          v31 = (v12 + 3) & 0xFFFFFFFC;
          a7 = vdupq_n_s64(v12 - 1);
          v32 = xmmword_239F9AD30;
          v33 = xmmword_239F9AD40;
          v34 = (*(a3 + 16) + 8);
          v35 = vdupq_n_s64(4uLL);
          do
          {
            v36 = vmovn_s64(vcgeq_u64(a7, v33));
            if (vuzp1_s16(v36, _D0).u8[0])
            {
              *(v34 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v36, _D0).i8[2])
            {
              *(v34 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(*&a7, *&v32))).i32[1])
            {
              *v34 = _D0.i32[0];
              v34[1] = _D0.i32[0];
            }

            v32 = vaddq_s64(v32, v35);
            v33 = vaddq_s64(v33, v35);
            v34 += 4;
            v31 -= 4;
          }

          while (v31);
        }

        a7.i32[0] = *(*(v9 + 216) + 4 * v11);
        v37 = 1.0 - *a7.i32;
        *a7.i32 = *a7.i32 * 0.5;
        *v13 = vmla_n_f32(vdup_lane_s32(*a7.i8, 0), *v13, v37);
        if (v12 >= 1)
        {
          v38 = *(a3 + 16);
          do
          {
            *v38 = *v38 * v37;
            ++v38;
            --v12;
          }

          while (v12);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v9 = *a2;
      v10 = a2[2];
      v29 = *(*(*a2 + 216) + 4 * v10);
      if (v29 < 1.0 && ((*result & 0xFF0000) == 0 || (v29 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v21 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *a2;
  LODWORD(v8) = a2[2];
LABEL_10:
  v19 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v19;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v19 == 2)
  {
    a3 += 16;
    v21 = 0.125;
LABEL_27:
    v30 = *a3;
    v30->f32[0] = v21;
    v30->f32[1] = v21;
    return result;
  }

  if (v19 >= 1)
  {
    *_D0.i32 = 0.25 / v19;
    v22 = (v19 + 3) & 0xFFFFFFFC;
    v23 = vdupq_n_s64(v19 - 1);
    v24 = xmmword_239F9AD30;
    v25 = xmmword_239F9AD40;
    v26 = (*(a3 + 16) + 8);
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s16(v28, _D0).u8[0])
      {
        *(v26 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v28, _D0).i8[2])
      {
        *(v26 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
      {
        *v26 = _D0.i32[0];
        v26[1] = _D0.i32[0];
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 4;
      v22 -= 4;
    }

    while (v22);
  }

  return result;
}

void sub_239ED0628(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, __n128 a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      a6.n128_u32[0] = 1031798784;
    }

    else
    {
      v27 = 1.0 / v9;
      a6.n128_f64[0] = cos(v27 * 6.28318531);
      a6.n128_f64[0] = -(((a6.n128_f64[0] * 0.25 + 0.375) * (a6.n128_f64[0] * 0.25 + 0.375) + -0.625) * v27);
      a6.n128_f32[0] = a6.n128_f64[0];
      v28 = 1.0 - a6.n128_f32[0] * v9;
      **a3 = v28;
      if (v9 < 1)
      {
        return;
      }
    }

    v29 = (v9 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v9 - 1);
    v31 = xmmword_239F9AD30;
    v32 = xmmword_239F9AD40;
    v33 = (*(a3 + 8) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, a6.n128_u64[0]).u8[0])
      {
        *(v33 - 2) = a6.n128_u32[0];
      }

      if (vuzp1_s16(v35, *&a6).i8[2])
      {
        *(v33 - 1) = a6.n128_u32[0];
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = a6.n128_u32[0];
        v33[1] = a6.n128_u32[0];
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x28223BE20](a6);
  v16 = &v89 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * v14);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v16 = 0;
    v20 = 0.0;
    goto LABEL_31;
  }

  v18 = *a2;
  v19 = *(a2 + 16);
  v20 = *(*(*a2 + 408) + 4 * v19);
  if (v14 >= 1)
  {
    v21 = (v18[45] + 4 * *(v18[42] + 8 * v19 + 4));
    v22 = v18[27];
    v23 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = v14;
    do
    {
      v25 = *v21++;
      v17.n128_u32[0] = *(v22 + 4 * v25);
      *v23++ = v17.n128_u32[0];
      --v24;
    }

    while (v24);
  }

  if (!v10)
  {
    v90 = *a1;
    v10 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v90, v20, v14, (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v8 = v10 - 1;
  }

  if (v8 > 1)
  {
LABEL_31:
    if (v10 == 4)
    {
      v89 = v13;
      v17.n128_u32[0] = *MEMORY[0x277D86528];
      v36 = 0xFFFFFFFF00000000;
      v37 = v16;
      do
      {
        v38 = *v37++;
        v36 += 0x100000000;
      }

      while (v17.n128_f32[0] >= v38);
      v39 = v14 << 32;
      v40 = &v16[4 * v14 - 4];
      do
      {
        v41 = *v40--;
        v39 -= 0x100000000;
      }

      while (v17.n128_f32[0] >= v41);
      v42 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v42;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v43 = *(a3 + 8);
      if (v42 >= 1)
      {
        bzero(*(a3 + 8), 4 * v42);
      }

      *(v43 + (v36 >> 30)) = 1040187392;
      *(v43 + (v39 >> 30)) = 1040187392;
      v13 = v89;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v90 = *a1;
    MEMORY[0x28223BE20](v17);
    bzero(&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    v44 = sub_239ED0230(a2, &v90, (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v46 = *(a2 + 20);
    v47 = *(*(a2 + 8) + 408);
    v48 = *(v47 + 4 * v46);
    if (!v13)
    {
      v13 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v90, *(v47 + 4 * v46), v14, v44);
      if (v13 == v10)
      {
        return;
      }
    }

    MEMORY[0x28223BE20](v45);
    v50 = (&v89 - v49);
    bzero(&v89 - v49, v51);
    v53 = (v50 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v64 = *MEMORY[0x277D86528];
        v65 = 0xFFFFFFFF00000000;
        v66 = v44;
        do
        {
          v67 = *v66++;
          v65 += 0x100000000;
        }

        while (v64 >= v67);
        v68 = v14 << 32;
        v69 = &v44[v14 - 1];
        do
        {
          v70 = *v69--;
          v68 -= 0x100000000;
        }

        while (v64 >= v70);
        v54 = *(a2 + 24);
        *v50 = 1061158912;
        if (v54 >= 1)
        {
          bzero(v50 + 1, 4 * v54);
        }

        *(v53 + (v65 >> 30)) = 0.125;
        *(v53 + (v68 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v54) = 0;
        *v50 = 1065353216;
      }

      goto LABEL_75;
    }

    v54 = *(a2 + 28);
    if (v54 == 6)
    {
      *v50 = 1059061760;
      LODWORD(v52) = 1031798784;
    }

    else
    {
      v71 = 1.0 / v54;
      v72 = cos(v71 * 6.28318531);
      v52 = -(((v72 * 0.25 + 0.375) * (v72 * 0.25 + 0.375) + -0.625) * v71);
      *&v52 = v52;
      v73 = 1.0 - *&v52 * v54;
      *v50 = v73;
      if (v54 < 1)
      {
LABEL_75:
        OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v90, v20, v48, v14, v16, v44);
        v82 = 1.0 - v81;
        **a3 = (**a3 * v81) + (*v50 * (1.0 - v81));
        if (v54)
        {
          if (*(a3 + 28))
          {
            if (v54 >= 1)
            {
              v83 = *(a3 + 8);
              v84 = v54;
              do
              {
                v85 = *v53++;
                *v83 = (*v83 * v81) + (v85 * v82);
                ++v83;
                --v84;
              }

              while (v84);
            }
          }

          else
          {
            *(a3 + 28) = v54;
            if (v54 >= 1)
            {
              v86 = *(a3 + 8);
              v87 = v54;
              do
              {
                v88 = *v53++;
                *v86++ = v88 * v82;
                --v87;
              }

              while (v87);
            }
          }
        }

        return;
      }
    }

    v74 = (v54 + 3) & 0xFFFFFFFC;
    v75 = vdupq_n_s64(v54 - 1);
    v76 = xmmword_239F9AD30;
    v77 = xmmword_239F9AD40;
    v78 = v50 + 4;
    v79 = vdupq_n_s64(4uLL);
    do
    {
      v80 = vmovn_s64(vcgeq_u64(v75, v77));
      if (vuzp1_s16(v80, *&v52).u8[0])
      {
        *(v78 - 3) = LODWORD(v52);
      }

      if (vuzp1_s16(v80, *&v52).i8[2])
      {
        *(v78 - 2) = LODWORD(v52);
      }

      if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v75, *&v76))).i32[1])
      {
        *(v78 - 1) = LODWORD(v52);
        *v78 = LODWORD(v52);
      }

      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v78 += 4;
      v74 -= 4;
    }

    while (v74);
    goto LABEL_75;
  }

  v26 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v26;
  *(a3 + 36) = 0;
  if (v26 == 6)
  {
    **a3 = 1059061760;
    v17.n128_u32[0] = 1031798784;
  }

  else
  {
    v55 = 1.0 / v26;
    v17.n128_f64[0] = cos(v55 * 6.28318531);
    v17.n128_f64[0] = -(((v17.n128_f64[0] * 0.25 + 0.375) * (v17.n128_f64[0] * 0.25 + 0.375) + -0.625) * v55);
    v17.n128_f32[0] = v17.n128_f64[0];
    v56 = 1.0 - v17.n128_f32[0] * v26;
    **a3 = v56;
    if (v26 < 1)
    {
      return;
    }
  }

  v57 = (v26 + 3) & 0xFFFFFFFC;
  v58 = vdupq_n_s64(v26 - 1);
  v59 = xmmword_239F9AD30;
  v60 = xmmword_239F9AD40;
  v61 = (*(a3 + 8) + 8);
  v62 = vdupq_n_s64(4uLL);
  do
  {
    v63 = vmovn_s64(vcgeq_u64(v58, v60));
    if (vuzp1_s16(v63, v17.n128_u64[0]).u8[0])
    {
      *(v61 - 2) = v17.n128_u32[0];
    }

    if (vuzp1_s16(v63, *&v17).i8[2])
    {
      *(v61 - 1) = v17.n128_u32[0];
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v58, *&v59))).i32[1])
    {
      *v61 = v17.n128_u32[0];
      v61[1] = v17.n128_u32[0];
    }

    v59 = vaddq_s64(v59, v62);
    v60 = vaddq_s64(v60, v62);
    v61 += 4;
    v57 -= 4;
  }

  while (v57);
}

uint64_t sub_239ED0DC4(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 == -1)
  {
    sub_239ED1824();
  }

  v4 = &v3;
  return (off_284D17DD8[v1])(&v4, a1);
}

void sub_239ED0E10(pxrInternal__aapl__pxrReserved__::UsdGeomBoundable *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    v4[1] = 0;
    v4[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v4[0] = MEMORY[0x277D86738] + 16;
    v2 = 0u;
    v3 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v2, v4);
    if (sub_239E5E5B4(&v2))
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      v9 = 0u;
      MEMORY[0x23EE7E950](&v9, &v2);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::CreateExtentAttr(&v9, v4, v7);
    LODWORD(v2) = v9;
    if (*(&v2 + 1))
    {
      sub_239E5E560(*(&v2 + 1));
    }

    *(&v2 + 1) = *(&v9 + 1);
    *(&v9 + 1) = 0;
    sub_239E650AC(&v3, v10);
    sub_239E65104(&v3 + 4, v10 + 1);
    if ((BYTE8(v3) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v3 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v3 + 1) = *(&v10[0] + 1);
    *(&v10[0] + 1) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(v10);
    if (*(&v9 + 1))
    {
      sub_239E5E560(*(&v9 + 1));
    }

    sub_239E5B240(v7);
    v1[1] = 0;
    v1[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v1[0] = MEMORY[0x277D86770] + 16;
    MEMORY[0x23EE7E9A0](v1);
    if ((BYTE8(v3) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v3 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v3);
    if (*(&v2 + 1))
    {
      sub_239E5E560(*(&v2 + 1));
    }

    MEMORY[0x23EE7E8D0](v4);
  }

  sub_239E56C80(v5);
}

void sub_239ED147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_239E56C80(v36 - 176);
  MEMORY[0x23EE7E6C0](&a27);
  MEMORY[0x23EE7E6F0](&a34);
  sub_239E56C80(va);
  MEMORY[0x23EE7E9A0](&a10);
  sub_239E85E5C(&a13);
  MEMORY[0x23EE7E8D0](&a18);
  sub_239E56C80(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_239ED1618(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 120) = -1;
  sub_239ED1660(a1, a2);
  return a1;
}

uint64_t sub_239ED1660(uint64_t a1, uint64_t a2)
{
  result = sub_239ED16C4(a1);
  v5 = *(a2 + 120);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_284D17DC8 + v5))(&v6, a2);
    *(a1 + 120) = v5;
  }

  return result;
}

uint64_t sub_239ED16C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 != -1)
  {
    result = (off_284D17DB8[v2])(&v3, result);
  }

  *(v1 + 120) = -1;
  return result;
}

uint64_t sub_239ED171C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return sub_239E5E560(result);
  }

  return result;
}

_DWORD *sub_239ED1794(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  v4 = *(a2 + 8);
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_239E57FC0((v3 + 16), (a2 + 16));
  result = sub_239E5B49C((v3 + 20), (a2 + 20));
  v6 = *(a2 + 24);
  *(v3 + 24) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_239ED1824()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

void *sub_239ED1884(void *a1)
{
  v4 = a1[14];
  v2 = a1 + 14;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_239ED18EC(v2, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239F74270(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    sub_239E5E560(v5);
  }

  return a1;
}

void sub_239ED18EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_239E9A9B4(v2);
    }

    JUMPOUT(0x23EE802C0);
  }
}

uint64_t sub_239ED1944(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5B574(a1);
}

uint64_t sub_239ED1984(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

void sub_239ED19E0(uint64_t result, _DWORD *a2)
{
  if (!*(result + 8))
  {
    v4 = *result;
    if (!*(result + 24))
    {
      v5 = *(result + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(result + 32);
      if (v5)
      {
        if (*(result + 24))
        {
          v7 = result;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*result;
        return;
      }
    }

LABEL_14:
    sub_239F74394(result, v4, a2);
    goto LABEL_13;
  }

  sub_239F74318(result);
}

void *sub_239ED1A88(void *a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_239ED1AC4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v1 = 0uLL;
  operator new();
}

void sub_239ED1B5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239ED1BB0(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      sub_239E9A9B4(v2);
    }

    v6 = v4[7];
    v5 = v4[8];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    if (v7)
    {
      sub_239E9A9B4(v7);
    }

    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v4 + 3;
    v9 = v4[3];
    v10 = v3;
    if (v9)
    {
      v11 = v3;
      do
      {
        v12 = v9;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v8;
        }

        v10 = v4[4];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          sub_239E9A9B4(v11);
          sub_239E9A9B4(v11);
        }

        v8 = v12 + 3;
        v9 = v12[3];
        v11 = v10;
        v4 = v12;
      }

      while (v9);
    }

    v13 = *(a1 + 8);
    if (v10)
    {
      sub_239E9A9B4(v10);
    }

    v2 = v3;
    if (!v13)
    {
      v14 = 0uLL;
      operator new();
    }
  }
}

void sub_239ED1D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239E9A9B4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239ED1D44(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_239ED22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_239E9A9B4(a14);
    if (!v16)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  sub_239E9A9B4(v16);
  if (!v17)
  {
LABEL_5:
    if (a16)
    {
      sub_239E9A9B4(a16);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_239E9A9B4(v17);
  goto LABEL_5;
}

void sub_239ED2318(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  sub_239ED2574(a1, a2, &v25);
  v3 = v25;
  if (v25)
  {
    v4 = v26;
    v5 = v26;
    while (1)
    {
      v6 = v3[2];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7 ? v3[1] : 0;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v9 = *(a1 + 8);
      if (v8 == v9 && !v3[3])
      {
        v22 = *(v9 + 56);
        if (v22)
        {
          break;
        }
      }

      v10 = v3[2];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v3[1];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v14 = v3[3];
      v13 = v3[4];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v12 + 32);
      *(v12 + 24) = v14;
      *(v12 + 32) = v13;
      if (v15)
      {
        sub_239E9A9B4(v15);
      }

      v16 = v3[3];
      if (v16)
      {
        v18 = v3[1];
        v17 = v3[2];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
        }

        v19 = *(v16 + 16);
        *(v16 + 8) = v18;
        *(v16 + 16) = v17;
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v20 = v3[7];
      if (!v20)
      {
        v21 = 3;
        if (!v11)
        {
          goto LABEL_37;
        }

LABEL_36:
        sub_239E9A9B4(v11);
        goto LABEL_37;
      }

      v4 = v3[8];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = v4;
      if (v5)
      {
        sub_239E9A9B4(v5);
      }

      if (v4)
      {
        sub_239E9A9B4(v4);
        v21 = 0;
LABEL_31:
        v5 = v4;
        goto LABEL_35;
      }

      v5 = 0;
      v21 = 0;
LABEL_35:
      v3 = v20;
      if (v11)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v7)
      {
        sub_239E9A9B4(v7);
      }

      if (v21 == 3)
      {
        goto LABEL_56;
      }
    }

    v11 = *(v9 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 16);
    *(a1 + 8) = v22;
    *(a1 + 16) = v11;
    if (v23)
    {
      sub_239E9A9B4(v23);
      v22 = *(a1 + 8);
    }

    v24 = *(v22 + 48);
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    v20 = v3[7];
    v4 = v3[8];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v4;
    if (v5)
    {
      sub_239E9A9B4(v5);
    }

    --*a1;
    if (v4)
    {
      sub_239E9A9B4(v4);
    }

    v21 = 2;
    goto LABEL_31;
  }

  v4 = v26;
LABEL_56:
  if (v4)
  {

    sub_239E9A9B4(v4);
  }
}

void sub_239ED2574(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      if (*(v5 + 72) == -1 || *(*v5 + 4) < *(a2 + 4))
      {
        break;
      }

      if (*v5 == a2)
      {
        *a3 = v5;
        a3[1] = v6;
        return;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = *(v5 + 8);
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = 0;
          if (!v7)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        sub_239E9A9B4(v7);
        goto LABEL_20;
      }

      v11 = 0;
      v10 = 0;
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      v5 = *(v11 + 56);
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = *(v11 + 64);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v10;
      v8 = v5;
      if (v10)
      {
LABEL_24:
        sub_239E9A9B4(v7);
        v5 = v8;
      }
    }

    v8 = *(v5 + 24);
    if (!v8)
    {
      break;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 = v8;
    if (v7)
    {
      goto LABEL_24;
    }
  }

  v8 = *(v5 + 56);
  if (v8)
  {
    v6 = *(v5 + 64);
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v10 = v6;
LABEL_29:
  *a3 = 0;
  a3[1] = 0;
  if (v10)
  {

    sub_239E9A9B4(v10);
  }
}

void *sub_239ED26E0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_239ED2574(a1, a2, &v10);
  v2 = v10;
  if (!v10)
  {
    v7 = v11;
    if (!v11)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v3 = v10[7];
  if (v3)
  {
    v4 = v11;
    do
    {
      v5 = v2[8];
      v2 = v3;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        sub_239E9A9B4(v4);
      }

      v3 = v2[7];
      v4 = v5;
    }

    while (v3);
    v11 = v5;
  }

  v6 = v2[2];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v2[1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v11)
  {
    sub_239E9A9B4(v11);
  }

  if (*(v8 + 72) == -1)
  {
    v2 = 0;
    if (!v7)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v2 = *v8;
  if (v7)
  {
LABEL_21:
    sub_239E9A9B4(v7);
  }

  return v2;
}

void *sub_239ED27CC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_239ED2574(a1, a2, &v8);
  v2 = v8;
  if (v8)
  {
    v3 = v8[7];
    if (v3)
    {
      v4 = v9;
      do
      {
        v5 = v2[8];
        v2 = v3;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          sub_239E9A9B4(v4);
        }

        v3 = v2[7];
        v4 = v5;
      }

      while (v3);
      v9 = v5;
    }

    v6 = v2[3];
    if (v6)
    {
      v2 = *v6;
    }

    else
    {
      v2 = 0;
    }
  }

  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  return v2;
}

void sub_239ED286C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_239ED28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239ED2900(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_239ED2900(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_239ED2A08(v2);
    MEMORY[0x23EE802C0](v3, 0x1020C40DCAD37ECLL);
  }

  return a1;
}

void sub_239ED294C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

void *sub_239ED2984(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_239ED2A08(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239ED29C8(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17680))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_239ED2A08(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

double sub_239ED2C10@<D0>(uint64_t a1@<X8>, double a2@<D0>, float64x2_t a3@<Q1>, float64_t a4@<D2>, float64x2_t a5@<Q3>)
{
  a3.f64[1] = a4;
  v6 = vmulq_f64(a3, a3);
  v6.f64[0] = 1.0 / sqrt(vaddvq_f64(v6) + vmulq_f64(a5, a5).f64[0]);
  v23 = vmulq_n_f64(a3, v6.f64[0]);
  v24 = vmulq_f64(v6, a5).f64[0];
  v7 = __sincos_stret(a2);
  v8 = (1.0 - v7.__cosval) * v23.f64[0];
  *&v9 = v7.__cosval + v8 * v23.f64[0];
  v10 = vmuld_lane_f64(v8, v23, 1);
  v11 = v8 * v24;
  v12 = vmuld_lane_f64(v7.__sinval, v23, 1);
  _V19.D[1] = v23.f64[1];
  *(&v9 + 1) = v10 + v7.__sinval * v24;
  *a1 = v9;
  *(a1 + 16) = COERCE_UNSIGNED_INT64(v11 - v12);
  *&v9 = v10 - v7.__sinval * v24;
  _D5 = vmuld_lane_f64(1.0 - v7.__cosval, v23, 1);
  __asm { FMLA            D1, D5, V19.D[1] }

  v20 = _D5 * v24;
  *(&v9 + 1) = _D1;
  *(a1 + 32) = v9;
  *(a1 + 48) = COERCE_UNSIGNED_INT64(v20 + v7.__sinval * v23.f64[0]);
  *&v21 = v11 + v12;
  *(&v21 + 1) = v20 - v7.__sinval * v23.f64[0];
  *(a1 + 64) = v21;
  *(a1 + 80) = COERCE_UNSIGNED_INT64(v7.__cosval + vmuld_n_f64(v24, v24) * (1.0 - v7.__cosval));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 112) = xmmword_239F9C570;
  return result;
}

uint64_t sub_239ED9758(uint64_t a1)
{
  *(a1 + 48) = 0u;
  v2 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_239ED9820(a1);
  v4 = 0x1000000;
  sub_239EA83F8(a1, &v4);
  sub_239EDC368((a1 + 24));
  v4 = 0x2000000;
  sub_239EA83F8((a1 + 24), &v4);
  sub_239EDEEF0(v2);
  v4 = 0x4000000;
  sub_239EA83F8(v2, &v4);
  return a1;
}

void sub_239ED97F4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  sub_239F74424((v1 + 24), v1);
  _Unwind_Resume(a1);
}

void sub_239ED9820(const void **a1)
{
  sub_239ED9878(a1);
  v2 = 2396744;
  sub_239EA83F8(a1, &v2);
  v2 = 2396745;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9878(const void **a1)
{
  sub_239ED98D0(a1);
  v2 = 2396736;
  sub_239EA83F8(a1, &v2);
  v2 = 2396737;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED98D0(const void **a1)
{
  sub_239ED9928(a1);
  v2 = 2396680;
  sub_239EA83F8(a1, &v2);
  v2 = 2396681;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9928(const void **a1)
{
  sub_239ED9980(a1);
  v2 = 2396672;
  sub_239EA83F8(a1, &v2);
  v2 = 2396673;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9980(const void **a1)
{
  sub_239ED99D8(a1);
  v2 = 2396232;
  sub_239EA83F8(a1, &v2);
  v2 = 2396233;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED99D8(const void **a1)
{
  sub_239ED9A30(a1);
  v2 = 2396224;
  sub_239EA83F8(a1, &v2);
  v2 = 2396225;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9A30(const void **a1)
{
  sub_239ED9A88(a1);
  v2 = 2396168;
  sub_239EA83F8(a1, &v2);
  v2 = 2396169;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9A88(const void **a1)
{
  sub_239ED9AE0(a1);
  v2 = 2396160;
  sub_239EA83F8(a1, &v2);
  v2 = 2396161;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9AE0(const void **a1)
{
  sub_239ED9B38(a1);
  v2 = 2392648;
  sub_239EA83F8(a1, &v2);
  v2 = 2392649;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9B38(const void **a1)
{
  sub_239ED9B90(a1);
  v2 = 2392640;
  sub_239EA83F8(a1, &v2);
  v2 = 2392641;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9B90(const void **a1)
{
  sub_239ED9BE8(a1);
  v2 = 2392584;
  sub_239EA83F8(a1, &v2);
  v2 = 2392585;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9BE8(const void **a1)
{
  sub_239ED9C40(a1);
  v2 = 2392576;
  sub_239EA83F8(a1, &v2);
  v2 = 2392577;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9C40(const void **a1)
{
  sub_239ED9C98(a1);
  v2 = 2392136;
  sub_239EA83F8(a1, &v2);
  v2 = 2392137;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9C98(const void **a1)
{
  sub_239ED9CF0(a1);
  v2 = 2392128;
  sub_239EA83F8(a1, &v2);
  v2 = 2392129;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9CF0(const void **a1)
{
  sub_239ED9D48(a1);
  v2 = 2392072;
  sub_239EA83F8(a1, &v2);
  v2 = 2392073;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9D48(const void **a1)
{
  sub_239ED9DA0(a1);
  v2 = 2392064;
  sub_239EA83F8(a1, &v2);
  v2 = 2392065;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9DA0(const void **a1)
{
  sub_239ED9DF8(a1);
  v2 = 2363976;
  sub_239EA83F8(a1, &v2);
  v2 = 2363977;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9DF8(const void **a1)
{
  sub_239ED9E50(a1);
  v2 = 2363968;
  sub_239EA83F8(a1, &v2);
  v2 = 2363969;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9E50(const void **a1)
{
  sub_239ED9EA8(a1);
  v2 = 2363912;
  sub_239EA83F8(a1, &v2);
  v2 = 2363913;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9EA8(const void **a1)
{
  sub_239ED9F00(a1);
  v2 = 2363904;
  sub_239EA83F8(a1, &v2);
  v2 = 2363905;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9F00(const void **a1)
{
  sub_239ED9F58(a1);
  v2 = 2363464;
  sub_239EA83F8(a1, &v2);
  v2 = 2363465;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9F58(const void **a1)
{
  sub_239ED9FB0(a1);
  v2 = 2363456;
  sub_239EA83F8(a1, &v2);
  v2 = 2363457;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9FB0(const void **a1)
{
  sub_239EDA008(a1);
  v2 = 2363400;
  sub_239EA83F8(a1, &v2);
  v2 = 2363401;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA008(const void **a1)
{
  sub_239EDA060(a1);
  v2 = 2363392;
  sub_239EA83F8(a1, &v2);
  v2 = 2363393;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA060(const void **a1)
{
  sub_239EDA0B8(a1);
  v2 = 2359880;
  sub_239EA83F8(a1, &v2);
  v2 = 2359881;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA0B8(const void **a1)
{
  sub_239EDA110(a1);
  v2 = 2359872;
  sub_239EA83F8(a1, &v2);
  v2 = 2359873;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA110(const void **a1)
{
  sub_239EDA168(a1);
  v2 = 2359816;
  sub_239EA83F8(a1, &v2);
  v2 = 2359817;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA168(const void **a1)
{
  sub_239EDA1C0(a1);
  v2 = 2359808;
  sub_239EA83F8(a1, &v2);
  v2 = 2359809;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA1C0(const void **a1)
{
  sub_239EDA218(a1);
  v2 = 2359368;
  sub_239EA83F8(a1, &v2);
  v2 = 2359369;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA218(const void **a1)
{
  sub_239EDA270(a1);
  v2 = 2359360;
  sub_239EA83F8(a1, &v2);
  v2 = 2359361;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA270(const void **a1)
{
  sub_239EDA2C8(a1);
  v2 = 2359304;
  sub_239EA83F8(a1, &v2);
  v2 = 2359305;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA2C8(const void **a1)
{
  sub_239EDA320(a1);
  v2 = 2359296;
  sub_239EA83F8(a1, &v2);
  v2 = 2359297;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA320(const void **a1)
{
  sub_239EDA378(a1);
  v2 = 2134600;
  sub_239EA83F8(a1, &v2);
  v2 = 2134601;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA378(const void **a1)
{
  sub_239EDA3D0(a1);
  v2 = 2134592;
  sub_239EA83F8(a1, &v2);
  v2 = 2134593;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA3D0(const void **a1)
{
  sub_239EDA428(a1);
  v2 = 2134536;
  sub_239EA83F8(a1, &v2);
  v2 = 2134537;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA428(const void **a1)
{
  sub_239EDA480(a1);
  v2 = 2134528;
  sub_239EA83F8(a1, &v2);
  v2 = 2134529;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA480(const void **a1)
{
  sub_239EDA4D8(a1);
  v2 = 2134088;
  sub_239EA83F8(a1, &v2);
  v2 = 2134089;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA4D8(const void **a1)
{
  sub_239EDA530(a1);
  v2 = 2134080;
  sub_239EA83F8(a1, &v2);
  v2 = 2134081;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA530(const void **a1)
{
  sub_239EDA588(a1);
  v2 = 2134024;
  sub_239EA83F8(a1, &v2);
  v2 = 2134025;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA588(const void **a1)
{
  sub_239EDA5E0(a1);
  v2 = 2134016;
  sub_239EA83F8(a1, &v2);
  v2 = 2134017;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA5E0(const void **a1)
{
  sub_239EDA638(a1);
  v2 = 2130504;
  sub_239EA83F8(a1, &v2);
  v2 = 2130505;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA638(const void **a1)
{
  sub_239EDA690(a1);
  v2 = 2130496;
  sub_239EA83F8(a1, &v2);
  v2 = 2130497;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA690(const void **a1)
{
  sub_239EDA6E8(a1);
  v2 = 2130440;
  sub_239EA83F8(a1, &v2);
  v2 = 2130441;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA6E8(const void **a1)
{
  sub_239EDA740(a1);
  v2 = 2130432;
  sub_239EA83F8(a1, &v2);
  v2 = 2130433;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA740(const void **a1)
{
  sub_239EDA798(a1);
  v2 = 2129992;
  sub_239EA83F8(a1, &v2);
  v2 = 2129993;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA798(const void **a1)
{
  sub_239EDA7F0(a1);
  v2 = 2129984;
  sub_239EA83F8(a1, &v2);
  v2 = 2129985;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA7F0(const void **a1)
{
  sub_239EDA848(a1);
  v2 = 2129928;
  sub_239EA83F8(a1, &v2);
  v2 = 2129929;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA848(const void **a1)
{
  sub_239EDA8A0(a1);
  v2 = 2129920;
  sub_239EA83F8(a1, &v2);
  v2 = 2129921;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA8A0(const void **a1)
{
  sub_239EDA8F8(a1);
  v2 = 2101832;
  sub_239EA83F8(a1, &v2);
  v2 = 2101833;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA8F8(const void **a1)
{
  sub_239EDA950(a1);
  v2 = 2101824;
  sub_239EA83F8(a1, &v2);
  v2 = 2101825;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA950(const void **a1)
{
  sub_239EDA9A8(a1);
  v2 = 2101768;
  sub_239EA83F8(a1, &v2);
  v2 = 2101769;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA9A8(const void **a1)
{
  sub_239EDAA00(a1);
  v2 = 2101760;
  sub_239EA83F8(a1, &v2);
  v2 = 2101761;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAA00(const void **a1)
{
  sub_239EDAA58(a1);
  v2 = 2101320;
  sub_239EA83F8(a1, &v2);
  v2 = 2101321;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAA58(const void **a1)
{
  sub_239EDAAB0(a1);
  v2 = 2101312;
  sub_239EA83F8(a1, &v2);
  v2 = 2101313;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAAB0(const void **a1)
{
  sub_239EDAB08(a1);
  v2 = 2101256;
  sub_239EA83F8(a1, &v2);
  v2 = 2101257;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAB08(const void **a1)
{
  sub_239EDAB60(a1);
  v2 = 2101248;
  sub_239EA83F8(a1, &v2);
  v2 = 2101249;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAB60(const void **a1)
{
  sub_239EDABB8(a1);
  v2 = 2097736;
  sub_239EA83F8(a1, &v2);
  v2 = 2097737;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDABB8(const void **a1)
{
  sub_239EDAC10(a1);
  v2 = 2097728;
  sub_239EA83F8(a1, &v2);
  v2 = 2097729;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAC10(const void **a1)
{
  sub_239EDAC68(a1);
  v2 = 2097672;
  sub_239EA83F8(a1, &v2);
  v2 = 2097673;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAC68(const void **a1)
{
  sub_239EDACC0(a1);
  v2 = 2097664;
  sub_239EA83F8(a1, &v2);
  v2 = 2097665;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDACC0(const void **a1)
{
  sub_239EDAD18(a1);
  v2 = 2097224;
  sub_239EA83F8(a1, &v2);
  v2 = 2097225;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAD18(const void **a1)
{
  sub_239EDAD70(a1);
  v2 = 2097216;
  sub_239EA83F8(a1, &v2);
  v2 = 2097217;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAD70(const void **a1)
{
  sub_239EDADC8(a1);
  v2 = 2097160;
  sub_239EA83F8(a1, &v2);
  v2 = 2097161;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDADC8(const void **a1)
{
  sub_239EDAE20(a1);
  v2 = 0x200000;
  sub_239EA83F8(a1, &v2);
  v2 = 2097153;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAE20(const void **a1)
{
  sub_239EDAE78(a1);
  v2 = 299592;
  sub_239EA83F8(a1, &v2);
  v2 = 299593;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAE78(const void **a1)
{
  sub_239EDAED0(a1);
  v2 = 299584;
  sub_239EA83F8(a1, &v2);
  v2 = 299585;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAED0(const void **a1)
{
  sub_239EDAF28(a1);
  v2 = 299528;
  sub_239EA83F8(a1, &v2);
  v2 = 299529;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAF28(const void **a1)
{
  sub_239EDAF80(a1);
  v2 = 299520;
  sub_239EA83F8(a1, &v2);
  v2 = 299521;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAF80(const void **a1)
{
  sub_239EDAFD8(a1);
  v2 = 299080;
  sub_239EA83F8(a1, &v2);
  v2 = 299081;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAFD8(const void **a1)
{
  sub_239EDB030(a1);
  v2 = 299072;
  sub_239EA83F8(a1, &v2);
  v2 = 299073;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB030(const void **a1)
{
  sub_239EDB088(a1);
  v2 = 299016;
  sub_239EA83F8(a1, &v2);
  v2 = 299017;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB088(const void **a1)
{
  sub_239EDB0E0(a1);
  v2 = 299008;
  sub_239EA83F8(a1, &v2);
  v2 = 299009;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB0E0(const void **a1)
{
  sub_239EDB138(a1);
  v2 = 295496;
  sub_239EA83F8(a1, &v2);
  v2 = 295497;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB138(const void **a1)
{
  sub_239EDB190(a1);
  v2 = 295488;
  sub_239EA83F8(a1, &v2);
  v2 = 295489;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB190(const void **a1)
{
  sub_239EDB1E8(a1);
  v2 = 295432;
  sub_239EA83F8(a1, &v2);
  v2 = 295433;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB1E8(const void **a1)
{
  sub_239EDB240(a1);
  v2 = 295424;
  sub_239EA83F8(a1, &v2);
  v2 = 295425;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB240(const void **a1)
{
  sub_239EDB298(a1);
  v2 = 294984;
  sub_239EA83F8(a1, &v2);
  v2 = 294985;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB298(const void **a1)
{
  sub_239EDB2F0(a1);
  v2 = 294976;
  sub_239EA83F8(a1, &v2);
  v2 = 294977;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB2F0(const void **a1)
{
  sub_239EDB348(a1);
  v2 = 294920;
  sub_239EA83F8(a1, &v2);
  v2 = 294921;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB348(const void **a1)
{
  sub_239EDB3A0(a1);
  v2 = 294912;
  sub_239EA83F8(a1, &v2);
  v2 = 294913;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB3A0(const void **a1)
{
  sub_239EDB3F8(a1);
  v2 = 266824;
  sub_239EA83F8(a1, &v2);
  v2 = 266825;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB3F8(const void **a1)
{
  sub_239EDB450(a1);
  v2 = 266816;
  sub_239EA83F8(a1, &v2);
  v2 = 266817;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB450(const void **a1)
{
  sub_239EDB4A8(a1);
  v2 = 266760;
  sub_239EA83F8(a1, &v2);
  v2 = 266761;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB4A8(const void **a1)
{
  sub_239EDB500(a1);
  v2 = 266752;
  sub_239EA83F8(a1, &v2);
  v2 = 266753;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB500(const void **a1)
{
  sub_239EDB558(a1);
  v2 = 266312;
  sub_239EA83F8(a1, &v2);
  v2 = 266313;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB558(const void **a1)
{
  sub_239EDB5B0(a1);
  v2 = 266304;
  sub_239EA83F8(a1, &v2);
  v2 = 266305;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB5B0(const void **a1)
{
  sub_239EDB608(a1);
  v2 = 266248;
  sub_239EA83F8(a1, &v2);
  v2 = 266249;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB608(const void **a1)
{
  sub_239EDB660(a1);
  v2 = 266240;
  sub_239EA83F8(a1, &v2);
  v2 = 266241;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB660(const void **a1)
{
  sub_239EDB6B8(a1);
  v2 = 262728;
  sub_239EA83F8(a1, &v2);
  v2 = 262729;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB6B8(const void **a1)
{
  sub_239EDB710(a1);
  v2 = 262720;
  sub_239EA83F8(a1, &v2);
  v2 = 262721;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB710(const void **a1)
{
  sub_239EDB768(a1);
  v2 = 262664;
  sub_239EA83F8(a1, &v2);
  v2 = 262665;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB768(const void **a1)
{
  sub_239EDB7C0(a1);
  v2 = 262656;
  sub_239EA83F8(a1, &v2);
  v2 = 262657;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB7C0(const void **a1)
{
  sub_239EDB818(a1);
  v2 = 262216;
  sub_239EA83F8(a1, &v2);
  v2 = 262217;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB818(const void **a1)
{
  sub_239EDB870(a1);
  v2 = 262208;
  sub_239EA83F8(a1, &v2);
  v2 = 262209;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB870(const void **a1)
{
  sub_239EDB8C8(a1);
  v2 = 262152;
  sub_239EA83F8(a1, &v2);
  v2 = 262153;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB8C8(const void **a1)
{
  sub_239EDB920(a1);
  v2 = 0x40000;
  sub_239EA83F8(a1, &v2);
  v2 = 262145;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB920(const void **a1)
{
  sub_239EDB974(a1);
  v2 = 37448;
  sub_239EA83F8(a1, &v2);
  v2 = 37449;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB974(const void **a1)
{
  sub_239EDB9C8(a1);
  v2 = 37440;
  sub_239EA83F8(a1, &v2);
  v2 = 37441;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB9C8(const void **a1)
{
  sub_239EDBA1C(a1);
  v2 = 37384;
  sub_239EA83F8(a1, &v2);
  v2 = 37385;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBA1C(const void **a1)
{
  sub_239EDBA70(a1);
  v2 = 37376;
  sub_239EA83F8(a1, &v2);
  v2 = 37377;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBA70(const void **a1)
{
  sub_239EDBAC4(a1);
  v2 = 36936;
  sub_239EA83F8(a1, &v2);
  v2 = 36937;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBAC4(const void **a1)
{
  sub_239EDBB18(a1);
  v2 = 36928;
  sub_239EA83F8(a1, &v2);
  v2 = 36929;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBB18(const void **a1)
{
  sub_239EDBB6C(a1);
  v2 = 36872;
  sub_239EA83F8(a1, &v2);
  v2 = 36873;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBB6C(const void **a1)
{
  sub_239EDBBC0(a1);
  v2 = 36864;
  sub_239EA83F8(a1, &v2);
  v2 = 36865;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBBC0(const void **a1)
{
  sub_239EDBC14(a1);
  v2 = 33352;
  sub_239EA83F8(a1, &v2);
  v2 = 33353;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBC14(const void **a1)
{
  sub_239EDBC68(a1);
  v2 = 33344;
  sub_239EA83F8(a1, &v2);
  v2 = 33345;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBC68(const void **a1)
{
  sub_239EDBCBC(a1);
  v2 = 33288;
  sub_239EA83F8(a1, &v2);
  v2 = 33289;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBCBC(const void **a1)
{
  sub_239EDBD10(a1);
  v2 = 33280;
  sub_239EA83F8(a1, &v2);
  v2 = 33281;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBD10(const void **a1)
{
  sub_239EDBD64(a1);
  v2 = 32840;
  sub_239EA83F8(a1, &v2);
  v2 = 32841;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBD64(const void **a1)
{
  sub_239EDBDB8(a1);
  v2 = 32832;
  sub_239EA83F8(a1, &v2);
  v2 = 32833;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBDB8(const void **a1)
{
  sub_239EDBE0C(a1);
  v2 = 32776;
  sub_239EA83F8(a1, &v2);
  v2 = 32777;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBE0C(const void **a1)
{
  sub_239EDBE60(a1);
  v2 = 0x8000;
  sub_239EA83F8(a1, &v2);
  v2 = 32769;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBE60(const void **a1)
{
  sub_239EDBEB4(a1);
  v2 = 4680;
  sub_239EA83F8(a1, &v2);
  v2 = 4681;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBEB4(const void **a1)
{
  sub_239EDBF08(a1);
  v2 = 4672;
  sub_239EA83F8(a1, &v2);
  v2 = 4673;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBF08(const void **a1)
{
  sub_239EDBF5C(a1);
  v2 = 4616;
  sub_239EA83F8(a1, &v2);
  v2 = 4617;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBF5C(const void **a1)
{
  sub_239EDBFB0(a1);
  v2 = 4608;
  sub_239EA83F8(a1, &v2);
  v2 = 4609;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBFB0(const void **a1)
{
  sub_239EDC004(a1);
  v2 = 4168;
  sub_239EA83F8(a1, &v2);
  v2 = 4169;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC004(const void **a1)
{
  sub_239EDC058(a1);
  v2 = 4160;
  sub_239EA83F8(a1, &v2);
  v2 = 4161;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC058(const void **a1)
{
  sub_239EDC0AC(a1);
  v2 = 4104;
  sub_239EA83F8(a1, &v2);
  v2 = 4105;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC0AC(const void **a1)
{
  sub_239EDC100(a1);
  v2 = 4096;
  sub_239EA83F8(a1, &v2);
  v2 = 4097;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC100(const void **a1)
{
  sub_239EDC154(a1);
  v2 = 584;
  sub_239EA83F8(a1, &v2);
  v2 = 585;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC154(const void **a1)
{
  sub_239EDC1A8(a1);
  v2 = 576;
  sub_239EA83F8(a1, &v2);
  v2 = 577;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC1A8(const void **a1)
{
  sub_239EDC1FC(a1);
  v2 = 520;
  sub_239EA83F8(a1, &v2);
  v2 = 521;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC1FC(const void **a1)
{
  sub_239EDC250(a1);
  v2 = 512;
  sub_239EA83F8(a1, &v2);
  v2 = 513;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC250(const void **a1)
{
  sub_239EDC2A4(a1);
  v2 = 72;
  sub_239EA83F8(a1, &v2);
  v2 = 73;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC2A4(const void **a1)
{
  sub_239EDC2F8(a1);
  v2 = 64;
  sub_239EA83F8(a1, &v2);
  v2 = 65;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC2F8(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 1;
  sub_239EA83F8(a1, &v2);
  v2 = 8;
  sub_239EA83F8(a1, &v2);
  v2 = 9;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC368(const void **a1)
{
  sub_239EDC3C0(a1);
  v2 = 4793488;
  sub_239EA83F8(a1, &v2);
  v2 = 4793490;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC3C0(const void **a1)
{
  sub_239EDC418(a1);
  v2 = 4793472;
  sub_239EA83F8(a1, &v2);
  v2 = 4793474;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC418(const void **a1)
{
  sub_239EDC470(a1);
  v2 = 4793360;
  sub_239EA83F8(a1, &v2);
  v2 = 4793362;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC470(const void **a1)
{
  sub_239EDC4C8(a1);
  v2 = 4793344;
  sub_239EA83F8(a1, &v2);
  v2 = 4793346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC4C8(const void **a1)
{
  sub_239EDC520(a1);
  v2 = 4792464;
  sub_239EA83F8(a1, &v2);
  v2 = 4792466;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC520(const void **a1)
{
  sub_239EDC578(a1);
  v2 = 4792448;
  sub_239EA83F8(a1, &v2);
  v2 = 4792450;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC578(const void **a1)
{
  sub_239EDC5D0(a1);
  v2 = 4792336;
  sub_239EA83F8(a1, &v2);
  v2 = 4792338;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC5D0(const void **a1)
{
  sub_239EDC628(a1);
  v2 = 4792320;
  sub_239EA83F8(a1, &v2);
  v2 = 4792322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC628(const void **a1)
{
  sub_239EDC680(a1);
  v2 = 4785296;
  sub_239EA83F8(a1, &v2);
  v2 = 4785298;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC680(const void **a1)
{
  sub_239EDC6D8(a1);
  v2 = 4785280;
  sub_239EA83F8(a1, &v2);
  v2 = 4785282;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC6D8(const void **a1)
{
  sub_239EDC730(a1);
  v2 = 4785168;
  sub_239EA83F8(a1, &v2);
  v2 = 4785170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC730(const void **a1)
{
  sub_239EDC788(a1);
  v2 = 4785152;
  sub_239EA83F8(a1, &v2);
  v2 = 4785154;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC788(const void **a1)
{
  sub_239EDC7E0(a1);
  v2 = 4784272;
  sub_239EA83F8(a1, &v2);
  v2 = 4784274;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC7E0(const void **a1)
{
  sub_239EDC838(a1);
  v2 = 4784256;
  sub_239EA83F8(a1, &v2);
  v2 = 4784258;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC838(const void **a1)
{
  sub_239EDC890(a1);
  v2 = 4784144;
  sub_239EA83F8(a1, &v2);
  v2 = 4784146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC890(const void **a1)
{
  sub_239EDC8E8(a1);
  v2 = 4784128;
  sub_239EA83F8(a1, &v2);
  v2 = 4784130;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC8E8(const void **a1)
{
  sub_239EDC940(a1);
  v2 = 4727952;
  sub_239EA83F8(a1, &v2);
  v2 = 4727954;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC940(const void **a1)
{
  sub_239EDC998(a1);
  v2 = 4727936;
  sub_239EA83F8(a1, &v2);
  v2 = 4727938;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC998(const void **a1)
{
  sub_239EDC9F0(a1);
  v2 = 4727824;
  sub_239EA83F8(a1, &v2);
  v2 = 4727826;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC9F0(const void **a1)
{
  sub_239EDCA48(a1);
  v2 = 4727808;
  sub_239EA83F8(a1, &v2);
  v2 = 4727810;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCA48(const void **a1)
{
  sub_239EDCAA0(a1);
  v2 = 4726928;
  sub_239EA83F8(a1, &v2);
  v2 = 4726930;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCAA0(const void **a1)
{
  sub_239EDCAF8(a1);
  v2 = 4726912;
  sub_239EA83F8(a1, &v2);
  v2 = 4726914;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCAF8(const void **a1)
{
  sub_239EDCB50(a1);
  v2 = 4726800;
  sub_239EA83F8(a1, &v2);
  v2 = 4726802;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCB50(const void **a1)
{
  sub_239EDCBA8(a1);
  v2 = 4726784;
  sub_239EA83F8(a1, &v2);
  v2 = 4726786;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCBA8(const void **a1)
{
  sub_239EDCC00(a1);
  v2 = 4719760;
  sub_239EA83F8(a1, &v2);
  v2 = 4719762;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCC00(const void **a1)
{
  sub_239EDCC58(a1);
  v2 = 4719744;
  sub_239EA83F8(a1, &v2);
  v2 = 4719746;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCC58(const void **a1)
{
  sub_239EDCCB0(a1);
  v2 = 4719632;
  sub_239EA83F8(a1, &v2);
  v2 = 4719634;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCCB0(const void **a1)
{
  sub_239EDCD08(a1);
  v2 = 4719616;
  sub_239EA83F8(a1, &v2);
  v2 = 4719618;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCD08(const void **a1)
{
  sub_239EDCD60(a1);
  v2 = 4718736;
  sub_239EA83F8(a1, &v2);
  v2 = 4718738;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCD60(const void **a1)
{
  sub_239EDCDB8(a1);
  v2 = 4718720;
  sub_239EA83F8(a1, &v2);
  v2 = 4718722;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCDB8(const void **a1)
{
  sub_239EDCE10(a1);
  v2 = 4718608;
  sub_239EA83F8(a1, &v2);
  v2 = 4718610;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCE10(const void **a1)
{
  sub_239EDCE68(a1);
  v2 = 4718592;
  sub_239EA83F8(a1, &v2);
  v2 = 4718594;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCE68(const void **a1)
{
  sub_239EDCEC0(a1);
  v2 = 4269200;
  sub_239EA83F8(a1, &v2);
  v2 = 4269202;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCEC0(const void **a1)
{
  sub_239EDCF18(a1);
  v2 = 4269184;
  sub_239EA83F8(a1, &v2);
  v2 = 4269186;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCF18(const void **a1)
{
  sub_239EDCF70(a1);
  v2 = 4269072;
  sub_239EA83F8(a1, &v2);
  v2 = 4269074;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCF70(const void **a1)
{
  sub_239EDCFC8(a1);
  v2 = 4269056;
  sub_239EA83F8(a1, &v2);
  v2 = 4269058;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCFC8(const void **a1)
{
  sub_239EDD020(a1);
  v2 = 4268176;
  sub_239EA83F8(a1, &v2);
  v2 = 4268178;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD020(const void **a1)
{
  sub_239EDD078(a1);
  v2 = 4268160;
  sub_239EA83F8(a1, &v2);
  v2 = 4268162;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD078(const void **a1)
{
  sub_239EDD0D0(a1);
  v2 = 4268048;
  sub_239EA83F8(a1, &v2);
  v2 = 4268050;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD0D0(const void **a1)
{
  sub_239EDD128(a1);
  v2 = 4268032;
  sub_239EA83F8(a1, &v2);
  v2 = 4268034;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD128(const void **a1)
{
  sub_239EDD180(a1);
  v2 = 4261008;
  sub_239EA83F8(a1, &v2);
  v2 = 4261010;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD180(const void **a1)
{
  sub_239EDD1D8(a1);
  v2 = 4260992;
  sub_239EA83F8(a1, &v2);
  v2 = 4260994;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD1D8(const void **a1)
{
  sub_239EDD230(a1);
  v2 = 4260880;
  sub_239EA83F8(a1, &v2);
  v2 = 4260882;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD230(const void **a1)
{
  sub_239EDD288(a1);
  v2 = 4260864;
  sub_239EA83F8(a1, &v2);
  v2 = 4260866;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD288(const void **a1)
{
  sub_239EDD2E0(a1);
  v2 = 4259984;
  sub_239EA83F8(a1, &v2);
  v2 = 4259986;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD2E0(const void **a1)
{
  sub_239EDD338(a1);
  v2 = 4259968;
  sub_239EA83F8(a1, &v2);
  v2 = 4259970;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD338(const void **a1)
{
  sub_239EDD390(a1);
  v2 = 4259856;
  sub_239EA83F8(a1, &v2);
  v2 = 4259858;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD390(const void **a1)
{
  sub_239EDD3E8(a1);
  v2 = 4259840;
  sub_239EA83F8(a1, &v2);
  v2 = 4259842;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD3E8(const void **a1)
{
  sub_239EDD440(a1);
  v2 = 4203664;
  sub_239EA83F8(a1, &v2);
  v2 = 4203666;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD440(const void **a1)
{
  sub_239EDD498(a1);
  v2 = 4203648;
  sub_239EA83F8(a1, &v2);
  v2 = 4203650;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD498(const void **a1)
{
  sub_239EDD4F0(a1);
  v2 = 4203536;
  sub_239EA83F8(a1, &v2);
  v2 = 4203538;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD4F0(const void **a1)
{
  sub_239EDD548(a1);
  v2 = 4203520;
  sub_239EA83F8(a1, &v2);
  v2 = 4203522;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD548(const void **a1)
{
  sub_239EDD5A0(a1);
  v2 = 4202640;
  sub_239EA83F8(a1, &v2);
  v2 = 4202642;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD5A0(const void **a1)
{
  sub_239EDD5F8(a1);
  v2 = 4202624;
  sub_239EA83F8(a1, &v2);
  v2 = 4202626;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD5F8(const void **a1)
{
  sub_239EDD650(a1);
  v2 = 4202512;
  sub_239EA83F8(a1, &v2);
  v2 = 4202514;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD650(const void **a1)
{
  sub_239EDD6A8(a1);
  v2 = 4202496;
  sub_239EA83F8(a1, &v2);
  v2 = 4202498;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD6A8(const void **a1)
{
  sub_239EDD700(a1);
  v2 = 4195472;
  sub_239EA83F8(a1, &v2);
  v2 = 4195474;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD700(const void **a1)
{
  sub_239EDD758(a1);
  v2 = 4195456;
  sub_239EA83F8(a1, &v2);
  v2 = 4195458;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD758(const void **a1)
{
  sub_239EDD7B0(a1);
  v2 = 4195344;
  sub_239EA83F8(a1, &v2);
  v2 = 4195346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD7B0(const void **a1)
{
  sub_239EDD808(a1);
  v2 = 4195328;
  sub_239EA83F8(a1, &v2);
  v2 = 4195330;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD808(const void **a1)
{
  sub_239EDD860(a1);
  v2 = 4194448;
  sub_239EA83F8(a1, &v2);
  v2 = 4194450;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD860(const void **a1)
{
  sub_239EDD8B8(a1);
  v2 = 4194432;
  sub_239EA83F8(a1, &v2);
  v2 = 4194434;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD8B8(const void **a1)
{
  sub_239EDD910(a1);
  v2 = 4194320;
  sub_239EA83F8(a1, &v2);
  v2 = 4194322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD910(const void **a1)
{
  sub_239EDD968(a1);
  v2 = 0x400000;
  sub_239EA83F8(a1, &v2);
  v2 = 4194306;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD968(const void **a1)
{
  sub_239EDD9C0(a1);
  v2 = 599184;
  sub_239EA83F8(a1, &v2);
  v2 = 599186;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD9C0(const void **a1)
{
  sub_239EDDA18(a1);
  v2 = 599168;
  sub_239EA83F8(a1, &v2);
  v2 = 599170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDA18(const void **a1)
{
  sub_239EDDA70(a1);
  v2 = 599056;
  sub_239EA83F8(a1, &v2);
  v2 = 599058;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDA70(const void **a1)
{
  sub_239EDDAC8(a1);
  v2 = 599040;
  sub_239EA83F8(a1, &v2);
  v2 = 599042;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDAC8(const void **a1)
{
  sub_239EDDB20(a1);
  v2 = 598160;
  sub_239EA83F8(a1, &v2);
  v2 = 598162;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDB20(const void **a1)
{
  sub_239EDDB78(a1);
  v2 = 598144;
  sub_239EA83F8(a1, &v2);
  v2 = 598146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDB78(const void **a1)
{
  sub_239EDDBD0(a1);
  v2 = 598032;
  sub_239EA83F8(a1, &v2);
  v2 = 598034;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDBD0(const void **a1)
{
  sub_239EDDC28(a1);
  v2 = 598016;
  sub_239EA83F8(a1, &v2);
  v2 = 598018;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDC28(const void **a1)
{
  sub_239EDDC80(a1);
  v2 = 590992;
  sub_239EA83F8(a1, &v2);
  v2 = 590994;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDC80(const void **a1)
{
  sub_239EDDCD8(a1);
  v2 = 590976;
  sub_239EA83F8(a1, &v2);
  v2 = 590978;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDCD8(const void **a1)
{
  sub_239EDDD30(a1);
  v2 = 590864;
  sub_239EA83F8(a1, &v2);
  v2 = 590866;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDD30(const void **a1)
{
  sub_239EDDD88(a1);
  v2 = 590848;
  sub_239EA83F8(a1, &v2);
  v2 = 590850;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDD88(const void **a1)
{
  sub_239EDDDE0(a1);
  v2 = 589968;
  sub_239EA83F8(a1, &v2);
  v2 = 589970;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDDE0(const void **a1)
{
  sub_239EDDE38(a1);
  v2 = 589952;
  sub_239EA83F8(a1, &v2);
  v2 = 589954;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDE38(const void **a1)
{
  sub_239EDDE90(a1);
  v2 = 589840;
  sub_239EA83F8(a1, &v2);
  v2 = 589842;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDE90(const void **a1)
{
  sub_239EDDEE8(a1);
  v2 = 589824;
  sub_239EA83F8(a1, &v2);
  v2 = 589826;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDEE8(const void **a1)
{
  sub_239EDDF40(a1);
  v2 = 533648;
  sub_239EA83F8(a1, &v2);
  v2 = 533650;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDF40(const void **a1)
{
  sub_239EDDF98(a1);
  v2 = 533632;
  sub_239EA83F8(a1, &v2);
  v2 = 533634;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDF98(const void **a1)
{
  sub_239EDDFF0(a1);
  v2 = 533520;
  sub_239EA83F8(a1, &v2);
  v2 = 533522;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDFF0(const void **a1)
{
  sub_239EDE048(a1);
  v2 = 533504;
  sub_239EA83F8(a1, &v2);
  v2 = 533506;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE048(const void **a1)
{
  sub_239EDE0A0(a1);
  v2 = 532624;
  sub_239EA83F8(a1, &v2);
  v2 = 532626;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE0A0(const void **a1)
{
  sub_239EDE0F8(a1);
  v2 = 532608;
  sub_239EA83F8(a1, &v2);
  v2 = 532610;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE0F8(const void **a1)
{
  sub_239EDE150(a1);
  v2 = 532496;
  sub_239EA83F8(a1, &v2);
  v2 = 532498;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE150(const void **a1)
{
  sub_239EDE1A8(a1);
  v2 = 532480;
  sub_239EA83F8(a1, &v2);
  v2 = 532482;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE1A8(const void **a1)
{
  sub_239EDE200(a1);
  v2 = 525456;
  sub_239EA83F8(a1, &v2);
  v2 = 525458;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE200(const void **a1)
{
  sub_239EDE258(a1);
  v2 = 525440;
  sub_239EA83F8(a1, &v2);
  v2 = 525442;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE258(const void **a1)
{
  sub_239EDE2B0(a1);
  v2 = 525328;
  sub_239EA83F8(a1, &v2);
  v2 = 525330;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE2B0(const void **a1)
{
  sub_239EDE308(a1);
  v2 = 525312;
  sub_239EA83F8(a1, &v2);
  v2 = 525314;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE308(const void **a1)
{
  sub_239EDE360(a1);
  v2 = 524432;
  sub_239EA83F8(a1, &v2);
  v2 = 524434;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE360(const void **a1)
{
  sub_239EDE3B8(a1);
  v2 = 524416;
  sub_239EA83F8(a1, &v2);
  v2 = 524418;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE3B8(const void **a1)
{
  sub_239EDE410(a1);
  v2 = 524304;
  sub_239EA83F8(a1, &v2);
  v2 = 524306;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE410(const void **a1)
{
  sub_239EDE468(a1);
  v2 = 0x80000;
  sub_239EA83F8(a1, &v2);
  v2 = 524290;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE468(const void **a1)
{
  sub_239EDE4C0(a1);
  v2 = 74896;
  sub_239EA83F8(a1, &v2);
  v2 = 74898;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE4C0(const void **a1)
{
  sub_239EDE518(a1);
  v2 = 74880;
  sub_239EA83F8(a1, &v2);
  v2 = 74882;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE518(const void **a1)
{
  sub_239EDE570(a1);
  v2 = 74768;
  sub_239EA83F8(a1, &v2);
  v2 = 74770;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE570(const void **a1)
{
  sub_239EDE5C8(a1);
  v2 = 74752;
  sub_239EA83F8(a1, &v2);
  v2 = 74754;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE5C8(const void **a1)
{
  sub_239EDE620(a1);
  v2 = 73872;
  sub_239EA83F8(a1, &v2);
  v2 = 73874;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE620(const void **a1)
{
  sub_239EDE678(a1);
  v2 = 73856;
  sub_239EA83F8(a1, &v2);
  v2 = 73858;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE678(const void **a1)
{
  sub_239EDE6D0(a1);
  v2 = 73744;
  sub_239EA83F8(a1, &v2);
  v2 = 73746;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE6D0(const void **a1)
{
  sub_239EDE728(a1);
  v2 = 73728;
  sub_239EA83F8(a1, &v2);
  v2 = 73730;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE728(const void **a1)
{
  sub_239EDE780(a1);
  v2 = 66704;
  sub_239EA83F8(a1, &v2);
  v2 = 66706;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE780(const void **a1)
{
  sub_239EDE7D8(a1);
  v2 = 66688;
  sub_239EA83F8(a1, &v2);
  v2 = 66690;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE7D8(const void **a1)
{
  sub_239EDE830(a1);
  v2 = 66576;
  sub_239EA83F8(a1, &v2);
  v2 = 66578;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE830(const void **a1)
{
  sub_239EDE888(a1);
  v2 = 66560;
  sub_239EA83F8(a1, &v2);
  v2 = 66562;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE888(const void **a1)
{
  sub_239EDE8E0(a1);
  v2 = 65680;
  sub_239EA83F8(a1, &v2);
  v2 = 65682;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE8E0(const void **a1)
{
  sub_239EDE938(a1);
  v2 = 65664;
  sub_239EA83F8(a1, &v2);
  v2 = 65666;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE938(const void **a1)
{
  sub_239EDE990(a1);
  v2 = 65552;
  sub_239EA83F8(a1, &v2);
  v2 = 65554;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE990(const void **a1)
{
  sub_239EDE9E8(a1);
  v2 = 0x10000;
  sub_239EA83F8(a1, &v2);
  v2 = 65538;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE9E8(const void **a1)
{
  sub_239EDEA3C(a1);
  v2 = 9360;
  sub_239EA83F8(a1, &v2);
  v2 = 9362;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEA3C(const void **a1)
{
  sub_239EDEA90(a1);
  v2 = 9344;
  sub_239EA83F8(a1, &v2);
  v2 = 9346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEA90(const void **a1)
{
  sub_239EDEAE4(a1);
  v2 = 9232;
  sub_239EA83F8(a1, &v2);
  v2 = 9234;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEAE4(const void **a1)
{
  sub_239EDEB38(a1);
  v2 = 9216;
  sub_239EA83F8(a1, &v2);
  v2 = 9218;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEB38(const void **a1)
{
  sub_239EDEB8C(a1);
  v2 = 8336;
  sub_239EA83F8(a1, &v2);
  v2 = 8338;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEB8C(const void **a1)
{
  sub_239EDEBE0(a1);
  v2 = 8320;
  sub_239EA83F8(a1, &v2);
  v2 = 8322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEBE0(const void **a1)
{
  sub_239EDEC34(a1);
  v2 = 8208;
  sub_239EA83F8(a1, &v2);
  v2 = 8210;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEC34(const void **a1)
{
  sub_239EDEC88(a1);
  v2 = 0x2000;
  sub_239EA83F8(a1, &v2);
  v2 = 8194;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEC88(const void **a1)
{
  sub_239EDECDC(a1);
  v2 = 1168;
  sub_239EA83F8(a1, &v2);
  v2 = 1170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDECDC(const void **a1)
{
  sub_239EDED30(a1);
  v2 = 1152;
  sub_239EA83F8(a1, &v2);
  v2 = 1154;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDED30(const void **a1)
{
  sub_239EDED84(a1);
  v2 = 1040;
  sub_239EA83F8(a1, &v2);
  v2 = 1042;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDED84(const void **a1)
{
  sub_239EDEDD8(a1);
  v2 = 1024;
  sub_239EA83F8(a1, &v2);
  v2 = 1026;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEDD8(const void **a1)
{
  sub_239EDEE2C(a1);
  v2 = 144;
  sub_239EA83F8(a1, &v2);
  v2 = 146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEE2C(const void **a1)
{
  sub_239EDEE80(a1);
  v2 = 128;
  sub_239EA83F8(a1, &v2);
  v2 = 130;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEE80(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 2;
  sub_239EA83F8(a1, &v2);
  v2 = 16;
  sub_239EA83F8(a1, &v2);
  v2 = 18;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEEF0(const void **a1)
{
  sub_239EDEF48(a1);
  v2 = 9586976;
  sub_239EA83F8(a1, &v2);
  v2 = 9586980;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEF48(const void **a1)
{
  sub_239EDEFA0(a1);
  v2 = 9586944;
  sub_239EA83F8(a1, &v2);
  v2 = 9586948;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEFA0(const void **a1)
{
  sub_239EDEFF8(a1);
  v2 = 9586720;
  sub_239EA83F8(a1, &v2);
  v2 = 9586724;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEFF8(const void **a1)
{
  sub_239EDF050(a1);
  v2 = 9586688;
  sub_239EA83F8(a1, &v2);
  v2 = 9586692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF050(const void **a1)
{
  sub_239EDF0A8(a1);
  v2 = 9584928;
  sub_239EA83F8(a1, &v2);
  v2 = 9584932;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF0A8(const void **a1)
{
  sub_239EDF100(a1);
  v2 = 9584896;
  sub_239EA83F8(a1, &v2);
  v2 = 9584900;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF100(const void **a1)
{
  sub_239EDF158(a1);
  v2 = 9584672;
  sub_239EA83F8(a1, &v2);
  v2 = 9584676;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF158(const void **a1)
{
  sub_239EDF1B0(a1);
  v2 = 9584640;
  sub_239EA83F8(a1, &v2);
  v2 = 9584644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF1B0(const void **a1)
{
  sub_239EDF208(a1);
  v2 = 9570592;
  sub_239EA83F8(a1, &v2);
  v2 = 9570596;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF208(const void **a1)
{
  sub_239EDF260(a1);
  v2 = 9570560;
  sub_239EA83F8(a1, &v2);
  v2 = 9570564;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF260(const void **a1)
{
  sub_239EDF2B8(a1);
  v2 = 9570336;
  sub_239EA83F8(a1, &v2);
  v2 = 9570340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF2B8(const void **a1)
{
  sub_239EDF310(a1);
  v2 = 9570304;
  sub_239EA83F8(a1, &v2);
  v2 = 9570308;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF310(const void **a1)
{
  sub_239EDF368(a1);
  v2 = 9568544;
  sub_239EA83F8(a1, &v2);
  v2 = 9568548;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF368(const void **a1)
{
  sub_239EDF3C0(a1);
  v2 = 9568512;
  sub_239EA83F8(a1, &v2);
  v2 = 9568516;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF3C0(const void **a1)
{
  sub_239EDF418(a1);
  v2 = 9568288;
  sub_239EA83F8(a1, &v2);
  v2 = 9568292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF418(const void **a1)
{
  sub_239EDF470(a1);
  v2 = 9568256;
  sub_239EA83F8(a1, &v2);
  v2 = 9568260;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF470(const void **a1)
{
  sub_239EDF4C8(a1);
  v2 = 9455904;
  sub_239EA83F8(a1, &v2);
  v2 = 9455908;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF4C8(const void **a1)
{
  sub_239EDF520(a1);
  v2 = 9455872;
  sub_239EA83F8(a1, &v2);
  v2 = 9455876;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF520(const void **a1)
{
  sub_239EDF578(a1);
  v2 = 9455648;
  sub_239EA83F8(a1, &v2);
  v2 = 9455652;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF578(const void **a1)
{
  sub_239EDF5D0(a1);
  v2 = 9455616;
  sub_239EA83F8(a1, &v2);
  v2 = 9455620;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF5D0(const void **a1)
{
  sub_239EDF628(a1);
  v2 = 9453856;
  sub_239EA83F8(a1, &v2);
  v2 = 9453860;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF628(const void **a1)
{
  sub_239EDF680(a1);
  v2 = 9453824;
  sub_239EA83F8(a1, &v2);
  v2 = 9453828;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF680(const void **a1)
{
  sub_239EDF6D8(a1);
  v2 = 9453600;
  sub_239EA83F8(a1, &v2);
  v2 = 9453604;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF6D8(const void **a1)
{
  sub_239EDF730(a1);
  v2 = 9453568;
  sub_239EA83F8(a1, &v2);
  v2 = 9453572;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF730(const void **a1)
{
  sub_239EDF788(a1);
  v2 = 9439520;
  sub_239EA83F8(a1, &v2);
  v2 = 9439524;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF788(const void **a1)
{
  sub_239EDF7E0(a1);
  v2 = 9439488;
  sub_239EA83F8(a1, &v2);
  v2 = 9439492;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF7E0(const void **a1)
{
  sub_239EDF838(a1);
  v2 = 9439264;
  sub_239EA83F8(a1, &v2);
  v2 = 9439268;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF838(const void **a1)
{
  sub_239EDF890(a1);
  v2 = 9439232;
  sub_239EA83F8(a1, &v2);
  v2 = 9439236;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF890(const void **a1)
{
  sub_239EDF8E8(a1);
  v2 = 9437472;
  sub_239EA83F8(a1, &v2);
  v2 = 9437476;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF8E8(const void **a1)
{
  sub_239EDF940(a1);
  v2 = 9437440;
  sub_239EA83F8(a1, &v2);
  v2 = 9437444;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF940(const void **a1)
{
  sub_239EDF998(a1);
  v2 = 9437216;
  sub_239EA83F8(a1, &v2);
  v2 = 9437220;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF998(const void **a1)
{
  sub_239EDF9F0(a1);
  v2 = 9437184;
  sub_239EA83F8(a1, &v2);
  v2 = 9437188;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF9F0(const void **a1)
{
  sub_239EDFA48(a1);
  v2 = 8538400;
  sub_239EA83F8(a1, &v2);
  v2 = 8538404;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFA48(const void **a1)
{
  sub_239EDFAA0(a1);
  v2 = 8538368;
  sub_239EA83F8(a1, &v2);
  v2 = 8538372;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFAA0(const void **a1)
{
  sub_239EDFAF8(a1);
  v2 = 8538144;
  sub_239EA83F8(a1, &v2);
  v2 = 8538148;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFAF8(const void **a1)
{
  sub_239EDFB50(a1);
  v2 = 8538112;
  sub_239EA83F8(a1, &v2);
  v2 = 8538116;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFB50(const void **a1)
{
  sub_239EDFBA8(a1);
  v2 = 8536352;
  sub_239EA83F8(a1, &v2);
  v2 = 8536356;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFBA8(const void **a1)
{
  sub_239EDFC00(a1);
  v2 = 8536320;
  sub_239EA83F8(a1, &v2);
  v2 = 8536324;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFC00(const void **a1)
{
  sub_239EDFC58(a1);
  v2 = 8536096;
  sub_239EA83F8(a1, &v2);
  v2 = 8536100;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFC58(const void **a1)
{
  sub_239EDFCB0(a1);
  v2 = 8536064;
  sub_239EA83F8(a1, &v2);
  v2 = 8536068;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFCB0(const void **a1)
{
  sub_239EDFD08(a1);
  v2 = 8522016;
  sub_239EA83F8(a1, &v2);
  v2 = 8522020;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFD08(const void **a1)
{
  sub_239EDFD60(a1);
  v2 = 8521984;
  sub_239EA83F8(a1, &v2);
  v2 = 8521988;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFD60(const void **a1)
{
  sub_239EDFDB8(a1);
  v2 = 8521760;
  sub_239EA83F8(a1, &v2);
  v2 = 8521764;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFDB8(const void **a1)
{
  sub_239EDFE10(a1);
  v2 = 8521728;
  sub_239EA83F8(a1, &v2);
  v2 = 8521732;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFE10(const void **a1)
{
  sub_239EDFE68(a1);
  v2 = 8519968;
  sub_239EA83F8(a1, &v2);
  v2 = 8519972;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFE68(const void **a1)
{
  sub_239EDFEC0(a1);
  v2 = 8519936;
  sub_239EA83F8(a1, &v2);
  v2 = 8519940;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFEC0(const void **a1)
{
  sub_239EDFF18(a1);
  v2 = 8519712;
  sub_239EA83F8(a1, &v2);
  v2 = 8519716;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFF18(const void **a1)
{
  sub_239EDFF70(a1);
  v2 = 8519680;
  sub_239EA83F8(a1, &v2);
  v2 = 8519684;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFF70(const void **a1)
{
  sub_239EDFFC8(a1);
  v2 = 8407328;
  sub_239EA83F8(a1, &v2);
  v2 = 8407332;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFFC8(const void **a1)
{
  sub_239EE0020(a1);
  v2 = 8407296;
  sub_239EA83F8(a1, &v2);
  v2 = 8407300;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0020(const void **a1)
{
  sub_239EE0078(a1);
  v2 = 8407072;
  sub_239EA83F8(a1, &v2);
  v2 = 8407076;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0078(const void **a1)
{
  sub_239EE00D0(a1);
  v2 = 8407040;
  sub_239EA83F8(a1, &v2);
  v2 = 8407044;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE00D0(const void **a1)
{
  sub_239EE0128(a1);
  v2 = 8405280;
  sub_239EA83F8(a1, &v2);
  v2 = 8405284;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0128(const void **a1)
{
  sub_239EE0180(a1);
  v2 = 8405248;
  sub_239EA83F8(a1, &v2);
  v2 = 8405252;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0180(const void **a1)
{
  sub_239EE01D8(a1);
  v2 = 8405024;
  sub_239EA83F8(a1, &v2);
  v2 = 8405028;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE01D8(const void **a1)
{
  sub_239EE0230(a1);
  v2 = 8404992;
  sub_239EA83F8(a1, &v2);
  v2 = 8404996;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0230(const void **a1)
{
  sub_239EE0288(a1);
  v2 = 8390944;
  sub_239EA83F8(a1, &v2);
  v2 = 8390948;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0288(const void **a1)
{
  sub_239EE02E0(a1);
  v2 = 8390912;
  sub_239EA83F8(a1, &v2);
  v2 = 8390916;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE02E0(const void **a1)
{
  sub_239EE0338(a1);
  v2 = 8390688;
  sub_239EA83F8(a1, &v2);
  v2 = 8390692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0338(const void **a1)
{
  sub_239EE0390(a1);
  v2 = 8390656;
  sub_239EA83F8(a1, &v2);
  v2 = 8390660;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0390(const void **a1)
{
  sub_239EE03E8(a1);
  v2 = 8388896;
  sub_239EA83F8(a1, &v2);
  v2 = 8388900;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE03E8(const void **a1)
{
  sub_239EE0440(a1);
  v2 = 8388864;
  sub_239EA83F8(a1, &v2);
  v2 = 8388868;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0440(const void **a1)
{
  sub_239EE0498(a1);
  v2 = 8388640;
  sub_239EA83F8(a1, &v2);
  v2 = 8388644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0498(const void **a1)
{
  sub_239EE04F0(a1);
  v2 = 0x800000;
  sub_239EA83F8(a1, &v2);
  v2 = 8388612;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE04F0(const void **a1)
{
  sub_239EE0548(a1);
  v2 = 1198368;
  sub_239EA83F8(a1, &v2);
  v2 = 1198372;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0548(const void **a1)
{
  sub_239EE05A0(a1);
  v2 = 1198336;
  sub_239EA83F8(a1, &v2);
  v2 = 1198340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE05A0(const void **a1)
{
  sub_239EE05F8(a1);
  v2 = 1198112;
  sub_239EA83F8(a1, &v2);
  v2 = 1198116;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE05F8(const void **a1)
{
  sub_239EE0650(a1);
  v2 = 1198080;
  sub_239EA83F8(a1, &v2);
  v2 = 1198084;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0650(const void **a1)
{
  sub_239EE06A8(a1);
  v2 = 1196320;
  sub_239EA83F8(a1, &v2);
  v2 = 1196324;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE06A8(const void **a1)
{
  sub_239EE0700(a1);
  v2 = 1196288;
  sub_239EA83F8(a1, &v2);
  v2 = 1196292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0700(const void **a1)
{
  sub_239EE0758(a1);
  v2 = 1196064;
  sub_239EA83F8(a1, &v2);
  v2 = 1196068;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0758(const void **a1)
{
  sub_239EE07B0(a1);
  v2 = 1196032;
  sub_239EA83F8(a1, &v2);
  v2 = 1196036;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE07B0(const void **a1)
{
  sub_239EE0808(a1);
  v2 = 1181984;
  sub_239EA83F8(a1, &v2);
  v2 = 1181988;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0808(const void **a1)
{
  sub_239EE0860(a1);
  v2 = 1181952;
  sub_239EA83F8(a1, &v2);
  v2 = 1181956;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0860(const void **a1)
{
  sub_239EE08B8(a1);
  v2 = 1181728;
  sub_239EA83F8(a1, &v2);
  v2 = 1181732;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE08B8(const void **a1)
{
  sub_239EE0910(a1);
  v2 = 1181696;
  sub_239EA83F8(a1, &v2);
  v2 = 1181700;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0910(const void **a1)
{
  sub_239EE0968(a1);
  v2 = 1179936;
  sub_239EA83F8(a1, &v2);
  v2 = 1179940;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0968(const void **a1)
{
  sub_239EE09C0(a1);
  v2 = 1179904;
  sub_239EA83F8(a1, &v2);
  v2 = 1179908;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE09C0(const void **a1)
{
  sub_239EE0A18(a1);
  v2 = 1179680;
  sub_239EA83F8(a1, &v2);
  v2 = 1179684;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0A18(const void **a1)
{
  sub_239EE0A70(a1);
  v2 = 1179648;
  sub_239EA83F8(a1, &v2);
  v2 = 1179652;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0A70(const void **a1)
{
  sub_239EE0AC8(a1);
  v2 = 1067296;
  sub_239EA83F8(a1, &v2);
  v2 = 1067300;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0AC8(const void **a1)
{
  sub_239EE0B20(a1);
  v2 = 1067264;
  sub_239EA83F8(a1, &v2);
  v2 = 1067268;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0B20(const void **a1)
{
  sub_239EE0B78(a1);
  v2 = 1067040;
  sub_239EA83F8(a1, &v2);
  v2 = 1067044;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0B78(const void **a1)
{
  sub_239EE0BD0(a1);
  v2 = 1067008;
  sub_239EA83F8(a1, &v2);
  v2 = 1067012;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0BD0(const void **a1)
{
  sub_239EE0C28(a1);
  v2 = 1065248;
  sub_239EA83F8(a1, &v2);
  v2 = 1065252;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0C28(const void **a1)
{
  sub_239EE0C80(a1);
  v2 = 1065216;
  sub_239EA83F8(a1, &v2);
  v2 = 1065220;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0C80(const void **a1)
{
  sub_239EE0CD8(a1);
  v2 = 1064992;
  sub_239EA83F8(a1, &v2);
  v2 = 1064996;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0CD8(const void **a1)
{
  sub_239EE0D30(a1);
  v2 = 1064960;
  sub_239EA83F8(a1, &v2);
  v2 = 1064964;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0D30(const void **a1)
{
  sub_239EE0D88(a1);
  v2 = 1050912;
  sub_239EA83F8(a1, &v2);
  v2 = 1050916;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0D88(const void **a1)
{
  sub_239EE0DE0(a1);
  v2 = 1050880;
  sub_239EA83F8(a1, &v2);
  v2 = 1050884;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0DE0(const void **a1)
{
  sub_239EE0E38(a1);
  v2 = 1050656;
  sub_239EA83F8(a1, &v2);
  v2 = 1050660;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0E38(const void **a1)
{
  sub_239EE0E90(a1);
  v2 = 1050624;
  sub_239EA83F8(a1, &v2);
  v2 = 1050628;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0E90(const void **a1)
{
  sub_239EE0EE8(a1);
  v2 = 1048864;
  sub_239EA83F8(a1, &v2);
  v2 = 1048868;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0EE8(const void **a1)
{
  sub_239EE0F40(a1);
  v2 = 1048832;
  sub_239EA83F8(a1, &v2);
  v2 = 1048836;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0F40(const void **a1)
{
  sub_239EE0F98(a1);
  v2 = 1048608;
  sub_239EA83F8(a1, &v2);
  v2 = 1048612;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0F98(const void **a1)
{
  sub_239EE0FF0(a1);
  v2 = 0x100000;
  sub_239EA83F8(a1, &v2);
  v2 = 1048580;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0FF0(const void **a1)
{
  sub_239EE1048(a1);
  v2 = 149792;
  sub_239EA83F8(a1, &v2);
  v2 = 149796;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1048(const void **a1)
{
  sub_239EE10A0(a1);
  v2 = 149760;
  sub_239EA83F8(a1, &v2);
  v2 = 149764;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE10A0(const void **a1)
{
  sub_239EE10F8(a1);
  v2 = 149536;
  sub_239EA83F8(a1, &v2);
  v2 = 149540;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE10F8(const void **a1)
{
  sub_239EE1150(a1);
  v2 = 149504;
  sub_239EA83F8(a1, &v2);
  v2 = 149508;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1150(const void **a1)
{
  sub_239EE11A8(a1);
  v2 = 147744;
  sub_239EA83F8(a1, &v2);
  v2 = 147748;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE11A8(const void **a1)
{
  sub_239EE1200(a1);
  v2 = 147712;
  sub_239EA83F8(a1, &v2);
  v2 = 147716;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1200(const void **a1)
{
  sub_239EE1258(a1);
  v2 = 147488;
  sub_239EA83F8(a1, &v2);
  v2 = 147492;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1258(const void **a1)
{
  sub_239EE12B0(a1);
  v2 = 147456;
  sub_239EA83F8(a1, &v2);
  v2 = 147460;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE12B0(const void **a1)
{
  sub_239EE1308(a1);
  v2 = 133408;
  sub_239EA83F8(a1, &v2);
  v2 = 133412;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1308(const void **a1)
{
  sub_239EE1360(a1);
  v2 = 133376;
  sub_239EA83F8(a1, &v2);
  v2 = 133380;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1360(const void **a1)
{
  sub_239EE13B8(a1);
  v2 = 133152;
  sub_239EA83F8(a1, &v2);
  v2 = 133156;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE13B8(const void **a1)
{
  sub_239EE1410(a1);
  v2 = 133120;
  sub_239EA83F8(a1, &v2);
  v2 = 133124;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1410(const void **a1)
{
  sub_239EE1468(a1);
  v2 = 131360;
  sub_239EA83F8(a1, &v2);
  v2 = 131364;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1468(const void **a1)
{
  sub_239EE14C0(a1);
  v2 = 131328;
  sub_239EA83F8(a1, &v2);
  v2 = 131332;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE14C0(const void **a1)
{
  sub_239EE1518(a1);
  v2 = 131104;
  sub_239EA83F8(a1, &v2);
  v2 = 131108;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1518(const void **a1)
{
  sub_239EE1570(a1);
  v2 = 0x20000;
  sub_239EA83F8(a1, &v2);
  v2 = 131076;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1570(const void **a1)
{
  sub_239EE15C4(a1);
  v2 = 18720;
  sub_239EA83F8(a1, &v2);
  v2 = 18724;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE15C4(const void **a1)
{
  sub_239EE1618(a1);
  v2 = 18688;
  sub_239EA83F8(a1, &v2);
  v2 = 18692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1618(const void **a1)
{
  sub_239EE166C(a1);
  v2 = 18464;
  sub_239EA83F8(a1, &v2);
  v2 = 18468;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE166C(const void **a1)
{
  sub_239EE16C0(a1);
  v2 = 18432;
  sub_239EA83F8(a1, &v2);
  v2 = 18436;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE16C0(const void **a1)
{
  sub_239EE1714(a1);
  v2 = 16672;
  sub_239EA83F8(a1, &v2);
  v2 = 16676;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1714(const void **a1)
{
  sub_239EE1768(a1);
  v2 = 16640;
  sub_239EA83F8(a1, &v2);
  v2 = 16644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1768(const void **a1)
{
  sub_239EE17BC(a1);
  v2 = 16416;
  sub_239EA83F8(a1, &v2);
  v2 = 16420;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE17BC(const void **a1)
{
  sub_239EE1810(a1);
  v2 = 0x4000;
  sub_239EA83F8(a1, &v2);
  v2 = 16388;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1810(const void **a1)
{
  sub_239EE1864(a1);
  v2 = 2336;
  sub_239EA83F8(a1, &v2);
  v2 = 2340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1864(const void **a1)
{
  sub_239EE18B8(a1);
  v2 = 2304;
  sub_239EA83F8(a1, &v2);
  v2 = 2308;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE18B8(const void **a1)
{
  sub_239EE190C(a1);
  v2 = 2080;
  sub_239EA83F8(a1, &v2);
  v2 = 2084;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE190C(const void **a1)
{
  sub_239EE1960(a1);
  v2 = 2048;
  sub_239EA83F8(a1, &v2);
  v2 = 2052;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1960(const void **a1)
{
  sub_239EE19B4(a1);
  v2 = 288;
  sub_239EA83F8(a1, &v2);
  v2 = 292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE19B4(const void **a1)
{
  sub_239EE1A08(a1);
  v2 = 256;
  sub_239EA83F8(a1, &v2);
  v2 = 260;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1A08(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 4;
  sub_239EA83F8(a1, &v2);
  v2 = 32;
  sub_239EA83F8(a1, &v2);
  v2 = 36;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1B24(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x1030C403C5DC1E9);

  _Unwind_Resume(a1);
}

void sub_239EE1C0C(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x1030C403C5DC1E9);

  _Unwind_Resume(a1);
}

void sub_239EE1E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

void *sub_239EE1E40(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[25];
    if (v3)
    {
      v2[26] = v3;
      operator delete(v3);
    }

    v4 = v2[11];
    if (v4)
    {
      v2[12] = v4;
      operator delete(v4);
    }

    v5 = v2[8];
    if (v5)
    {
      v2[9] = v5;
      operator delete(v5);
    }

    v6 = v2[5];
    if (v6)
    {
      v2[6] = v6;
      operator delete(v6);
    }

    v7 = v2[1];
    if (v7)
    {
      v2[2] = v7;
      operator delete(v7);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EE1EE8(uint64_t a1, char a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *a1 = &unk_284D17568;
  operator new();
}

void sub_239EE1F90(_Unwind_Exception *a1)
{
  *v1 = &unk_284D17508;
  sub_239E91CE0(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_239EE1FC8(uint64_t a1)
{
  *a1 = &unk_284D17568;
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 56);
  sub_239EE83A4(&v9);
  v7 = *(a1 + 48);
  if (v7)
  {
    sub_239E9A9B4(v7);
  }

  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239EE20A8(uint64_t a1)
{
  sub_239EE1FC8(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239EE20E0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  if (!sub_239EE2B84(a3, &__str))
  {
    sub_239E552A0(a4, "Parse PLY: Bad header");
    goto LABEL_169;
  }

  memset(v72, 0, sizeof(v72));
  *v70 = 0u;
  v71 = 0u;
  memset(v69, 0, sizeof(v69));
  v68 = 0u;
  sub_239EE2D04(&v68);
  std::string::operator=(v70, &__str);
  sub_239E98A8C(v69);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_239E88B00(&v68, &v65);
  if (SHIBYTE(v67) < 0)
  {
    if (v66 == 6)
    {
      v8 = v65;
      goto LABEL_8;
    }

LABEL_12:
    MEMORY[0x23EE7FFA0](a2, "ascii");
    goto LABEL_13;
  }

  if (SHIBYTE(v67) != 6)
  {
    goto LABEL_12;
  }

  v8 = &v65;
LABEL_8:
  v9 = *v8;
  v10 = v8[2];
  if (v9 != 1836216166 || v10 != 29793)
  {
    goto LABEL_12;
  }

  sub_239E88B00(&v68, a2);
LABEL_13:
  while (sub_239EE2B84(a3, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((&v69[-1] + *(v68 - 24)), 0);
      std::string::operator=(v70, &__str);
      sub_239E98A8C(v69);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      sub_239E88B00(&v68, &v62);
      if (SHIBYTE(v64) < 0)
      {
        if (v63 != 7)
        {
          if (v63 != 8 || *v62 != 0x79747265706F7270)
          {
            goto LABEL_30;
          }

LABEL_40:
          if (a1[8] == a1[7])
          {
            v18 = 0;
            if (v64 < 0)
            {
              goto LABEL_58;
            }

            goto LABEL_161;
          }

          v54[0] = 0;
          v54[1] = 0;
          v55 = 0;
          sub_239E88B00(&v68, v54);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
            if (SHIBYTE(v55) == 4)
            {
              v19 = v54;
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          if (v54[1] != 4)
          {
            goto LABEL_63;
          }

          v19 = v54[0];
LABEL_62:
          if (*v19 == 1953720684)
          {
            sub_239E88B00(&v68, v54);
            v26 = sub_239EE2E74(v54);
            sub_239E88B00(&v68, v54);
          }

          else
          {
LABEL_63:
            v26 = 8;
          }

          v60 = 0uLL;
          v61 = 0;
          sub_239E88B00(&v68, &v60);
          v27 = a1[8];
          if ((SHIBYTE(v61) & 0x80000000) == 0)
          {
            v28 = 10;
            if (HIBYTE(v61) > 3u)
            {
              if (HIBYTE(v61) <= 0xBu)
              {
                if (HIBYTE(v61) != 4)
                {
                  if (HIBYTE(v61) != 5)
                  {
                    goto LABEL_143;
                  }

                  if (v60 != 1701147239 || BYTE4(v60) != 110)
                  {
                    goto LABEL_143;
                  }

LABEL_132:
                  v28 = 7;
                  goto LABEL_143;
                }

                if (v60 != 1702194274)
                {
                  goto LABEL_143;
                }

LABEL_120:
                v28 = 8;
                goto LABEL_143;
              }

              if (HIBYTE(v61) != 12)
              {
                if (HIBYTE(v61) != 14)
                {
                  goto LABEL_143;
                }

                v32 = (v60 ^ 0x695F786574726576 | *(&v60 + 6) ^ 0x73656369646E695FLL) == 0;
                goto LABEL_140;
              }

              v37 = &v60;
LABEL_122:
              v38 = bswap64(*v37);
              if (v38 == 0x7665727465785F69)
              {
                v38 = bswap32(*(v37 + 8));
                if (v38 == 1852073336)
                {
                  v39 = 0;
LABEL_139:
                  v32 = v39 == 0;
LABEL_140:
                  if (v32)
                  {
                    v28 = 9;
                  }

                  else
                  {
                    v28 = 10;
                  }

                  goto LABEL_143;
                }

                v40 = 1852073336;
              }

              else
              {
                v40 = 0x7665727465785F69;
              }

              if (v38 < v40)
              {
                v39 = -1;
              }

              else
              {
                v39 = 1;
              }

              goto LABEL_139;
            }

            if (HIBYTE(v61) != 1)
            {
              if (HIBYTE(v61) != 2)
              {
                if (HIBYTE(v61) != 3 || (v60 == 25970 ? (v31 = BYTE2(v60) == 100) : (v31 = 0), !v31))
                {
LABEL_143:
                  v41 = sub_239EE2E74(v54);
                  v43 = *(v27 - 48);
                  v42 = *(v27 - 40);
                  if (v43 >= v42)
                  {
                    v45 = *(v27 - 56);
                    v46 = v43 - v45;
                    v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 2);
                    v48 = v47 + 1;
                    if (v47 + 1 > 0x1555555555555555)
                    {
                      sub_239E797B4();
                    }

                    v49 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 2);
                    if (2 * v49 > v48)
                    {
                      v48 = 2 * v49;
                    }

                    if (v49 >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v50 = 0x1555555555555555;
                    }

                    else
                    {
                      v50 = v48;
                    }

                    if (v50)
                    {
                      sub_239E95B5C(v27 - 56, v50);
                    }

                    v51 = 12 * v47;
                    *v51 = v28;
                    *(v51 + 4) = v41;
                    *(v51 + 8) = v26;
                    v44 = 12 * v47 + 12;
                    v52 = v51 - v46;
                    memcpy((v51 - v46), v45, v46);
                    v53 = *(v27 - 56);
                    *(v27 - 56) = v52;
                    *(v27 - 48) = v44;
                    *(v27 - 40) = 0;
                    if (v53)
                    {
                      operator delete(v53);
                    }
                  }

                  else
                  {
                    *v43 = v28;
                    v43[1] = v41;
                    v44 = (v43 + 3);
                    v43[2] = v26;
                  }

                  *(v27 - 48) = v44;
                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v60);
                  }

                  if (SHIBYTE(v55) < 0)
                  {
                    v25 = v54[0];
                    goto LABEL_159;
                  }

                  goto LABEL_160;
                }

LABEL_130:
                v28 = 6;
                goto LABEL_143;
              }

              if (v60 != 30830)
              {
                if (v60 != 31086)
                {
                  if (v60 != 31342)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_128;
                }

LABEL_134:
                v28 = 4;
                goto LABEL_143;
              }

LABEL_129:
              v28 = 3;
              goto LABEL_143;
            }

            v33 = v60 - 120;
            if (v33 >= 3)
            {
              goto LABEL_143;
            }

LABEL_118:
            v28 = v33;
            goto LABEL_143;
          }

          v30 = *(&v60 + 1);
          if (*(&v60 + 1) == 1)
          {
            v33 = *v60 - 120;
            if (v33 < 3)
            {
              goto LABEL_118;
            }

LABEL_95:
            v30 = *(&v60 + 1);
          }

          else if (*(&v60 + 1) == 2)
          {
            switch(*v60)
            {
              case 0x786E:
                goto LABEL_129;
              case 0x796E:
                goto LABEL_134;
              case 0x7A6E:
LABEL_128:
                v28 = 5;
                goto LABEL_143;
            }

            goto LABEL_95;
          }

          if (v30 == 3)
          {
            if (*v60 == 25970 && *(v60 + 2) == 100)
            {
              goto LABEL_130;
            }

            v30 = *(&v60 + 1);
          }

          if (v30 == 5 && *v60 == 1701147239 && *(v60 + 4) == 110)
          {
            goto LABEL_132;
          }

          if (*(&v60 + 1) == 14)
          {
            if (*v60 == 0x695F786574726576 && *(v60 + 6) == 0x73656369646E695FLL)
            {
              v28 = 9;
              goto LABEL_143;
            }
          }

          else if (*(&v60 + 1) == 4 && *v60 == 1702194274)
          {
            goto LABEL_120;
          }

          if (*(&v60 + 1) != 12)
          {
            v28 = 10;
            goto LABEL_143;
          }

          v37 = v60;
          goto LABEL_122;
        }

        if (*v62 != 1835363429 || *(v62 + 3) != 1953391981)
        {
LABEL_30:
          if (v63 != 10)
          {
            goto LABEL_160;
          }

          v13 = v62;
          goto LABEL_32;
        }

LABEL_49:
        v60 = 0uLL;
        v61 = 0;
        sub_239E88B00(&v68, &v60);
        v59 = 0;
        MEMORY[0x23EE800C0](&v68, &v59);
        sub_239EE7C30(v54, &v60, v59);
        v21 = a1[8];
        if (v21 >= a1[9])
        {
          v23 = sub_239EE8540(a1 + 7, v54);
          v24 = SHIBYTE(v57);
          a1[8] = v23;
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = *v54;
          *(v21 + 16) = v55;
          v54[0] = 0;
          v54[1] = 0;
          v55 = 0;
          v22 = v57;
          *(v21 + 24) = *__p;
          *(v21 + 40) = v22;
          __p[1] = 0;
          v57 = 0;
          __p[0] = 0;
          *(v21 + 48) = v58;
          a1[8] = v21 + 56;
        }

        if (v54[0])
        {
          v54[1] = v54[0];
          operator delete(v54[0]);
        }

        if (SHIBYTE(v61) < 0)
        {
          v25 = v60;
LABEL_159:
          operator delete(v25);
        }

LABEL_160:
        v18 = 0;
        if ((v64 & 0x8000000000000000) == 0)
        {
          goto LABEL_161;
        }

LABEL_58:
        operator delete(v62);
        if (v18)
        {
          break;
        }
      }

      else
      {
        if (HIBYTE(v64) == 7)
        {
          if (v62 != 1835363429 || *(&v62 + 3) != 1953391981)
          {
            goto LABEL_160;
          }

          goto LABEL_49;
        }

        if (HIBYTE(v64) == 8)
        {
          if (v62 != 0x79747265706F7270)
          {
            goto LABEL_160;
          }

          goto LABEL_40;
        }

        if (HIBYTE(v64) != 10)
        {
          goto LABEL_160;
        }

        v13 = &v62;
LABEL_32:
        v15 = *v13;
        v16 = v13[4];
        if (v15 != 0x646165685F646E65 || v16 != 29285)
        {
          goto LABEL_160;
        }

        v18 = 1;
        if (v64 < 0)
        {
          goto LABEL_58;
        }

LABEL_161:
        if (v18)
        {
          break;
        }
      }
    }
  }

  sub_239E552A0(a4, "");
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v65);
  }

  *&v68 = *MEMORY[0x277D82820];
  *(&v69[-1] + *(v68 - 24)) = *(MEMORY[0x277D82820] + 24);
  *&v69[0] = MEMORY[0x277D82878] + 16;
  if (SBYTE7(v71) < 0)
  {
    operator delete(v70[0]);
  }

  *&v69[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v69 + 1);
  std::istream::~istream();
  MEMORY[0x23EE80250](v72 + 8);
LABEL_169:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_239EE2AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_239EE7CF0(&a39, MEMORY[0x277D82820]);
  MEMORY[0x23EE80250](&a54);
  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  _Unwind_Resume(a1);
}

BOOL sub_239EE2B84(void *a1, std::string *a2)
{
  v3 = sub_239EE3F14(a1, a2);
  v4 = *(v3 + *(*v3 - 24) + 32) & 5;
  if (!v4)
  {
    v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v6 = v5;
    v7 = a2 + v5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    }

    if (v6 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2->__r_.__value_.__r.__words[0];
    }

    v10 = MEMORY[0x277D85DE0];
    while (v8 != v9)
    {
      v12 = *--v8;
      v11 = v12;
      if ((v12 & 0x80000000) != 0)
      {
        if (!__maskrune(v11, 0x4000uLL))
        {
LABEL_14:
          v9 = (v8 + 1);
          break;
        }
      }

      else if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
      {
        goto LABEL_14;
      }
    }

    v13 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v14 = v13;
    v15 = a2 + v13;
    if (v14 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v15 = (a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_);
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    std::string::erase(a2, v9 - v16, v15 - v9);
    v17 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v18 = a2->__r_.__value_.__r.__words[0];
    if (v17 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2->__r_.__value_.__r.__words[0];
    }

    if (v17 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v21 = (v19 + size);
      v22 = v19;
      do
      {
        v23 = v22->__r_.__value_.__s.__data_[0];
        if ((v23 & 0x80000000) != 0)
        {
          if (!__maskrune(v23, 0x4000uLL))
          {
            goto LABEL_32;
          }
        }

        else if ((*(v10 + 4 * v23 + 60) & 0x4000) == 0)
        {
          goto LABEL_32;
        }

        v22 = (v22 + 1);
        --size;
      }

      while (size);
      v22 = v21;
LABEL_32:
      LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
      v18 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      v22 = v19;
    }

    if ((v17 & 0x80u) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v18;
    }

    std::string::erase(a2, v19 - v24, v22 - v19);
  }

  return v4 == 0;
}

uint64_t *sub_239EE2D04(uint64_t *a1)
{
  a1[21] = 0;
  v2 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v3 = *(MEMORY[0x277D82820] + 16);
  v4 = *(MEMORY[0x277D82820] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82898] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[15] = v2;
  sub_239EE8484((a1 + 2), 8);
  return a1;
}

void sub_239EE2E4C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239EE2E74(void *a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) <= 4u)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        v3 = a1;
        if (*a1 == 1918986339)
        {
          return 0;
        }

LABEL_46:
        if (*v3 == 1953393013)
        {
          return 5;
        }

        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v2 != 5)
    {
      if (v2 == 6 && *a1 == 1869116277 && *(a1 + 2) == 29810)
      {
        return 3;
      }

      goto LABEL_58;
    }

    if (*a1 != 1634231157 || *(a1 + 4) != 114)
    {
      if (*a1 != 1919903859 || *(a1 + 4) != 116)
      {
        goto LABEL_44;
      }

      return 2;
    }

    return 1;
  }

  if (a1[1] == 4 && **a1 == 1918986339)
  {
    return 0;
  }

  if (a1[1] == 5 && **a1 == 1634231157 && *(*a1 + 4) == 114)
  {
    return 1;
  }

  if (a1[1] == 5 && **a1 == 1919903859 && *(*a1 + 4) == 116)
  {
    return 2;
  }

  if (a1[1] == 6)
  {
    if (**a1 == 1869116277 && *(*a1 + 4) == 29810)
    {
      return 3;
    }

    if ((v2 & 0x80) == 0)
    {
LABEL_44:
      if (v2 != 3)
      {
        v3 = a1;
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }

LABEL_48:
      if (*a1 == 28265 && *(a1 + 2) == 116)
      {
        return 4;
      }

      goto LABEL_58;
    }
  }

  v7 = a1[1];
  if (v7 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_58;
    }

    v3 = *a1;
    goto LABEL_46;
  }

  if (**a1 == 28265 && *(*a1 + 2) == 116)
  {
    return 4;
  }

LABEL_58:
  if (sub_239E55D74(a1, "float"))
  {
    return 6;
  }

  if (sub_239E55D74(a1, "double"))
  {
    return 7;
  }

  if (sub_239E55D74(a1, "int8"))
  {
    return 0;
  }

  if (sub_239E55D74(a1, "uint8"))
  {
    return 1;
  }

  if (sub_239E55D74(a1, "int16"))
  {
    return 2;
  }

  if (sub_239E55D74(a1, "uint16"))
  {
    return 3;
  }

  if (sub_239E55D74(a1, "int32"))
  {
    return 4;
  }

  if (sub_239E55D74(a1, "uint32"))
  {
    return 5;
  }

  if (sub_239E55D74(a1, "float32"))
  {
    return 6;
  }

  if (sub_239E55D74(a1, "float64"))
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_239EE3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  if (v7 == 8)
  {
    sub_239EE3224(a4, a3, *(a2 + 4));
    return 1;
  }

  sub_239EE3224(a4, a3, v7);
  v9 = v8;
  if (v8 <= 0x400)
  {
    for (; v9; --v9)
    {
      sub_239EE3224(a4, a3, *(a2 + 4));
    }

    return 1;
  }

  return 0;
}

uint64_t sub_239EE3224(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_239E7C368();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_239EE3278(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  v111[0] = 0;
  v111[1] = 0;
  v112 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v6 = std::locale::use_facet(&v119, MEMORY[0x277D82680]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v119);
  v8 = sub_239EE8088(a2, v111, v7);
  if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
  {
    sub_239E552A0(a3, "Parse PLY: Empty file");
    goto LABEL_68;
  }

  v9 = v111[0];
  v10 = v111;
  if (v112 >= 0)
  {
    v11 = v111;
  }

  else
  {
    v11 = v111[0];
  }

  v12 = *v11;
  if (v12 != 112)
  {
    if (112 == v12)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v112 < 0)
  {
    v10 = v111[0];
  }

  v13 = *(v10 + 1);
  if (v13 != 108)
  {
    if (108 == v13)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_239E552A0(a3, "Parse PLY: Bad format");
    goto LABEL_68;
  }

  if (v112 >= 0)
  {
    v9 = v111;
  }

  if (121 != *(v9 + 2))
  {
    goto LABEL_18;
  }

LABEL_13:
  v108 = 0;
  v109 = 0;
  v110 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v107 = 0;
  sub_239EE20E0(a1, &v108, a2, __p);
  v14 = HIBYTE(v107);
  if (v107 < 0)
  {
    v14 = __p[1];
  }

  if (!v14)
  {
    memset(v118, 0, sizeof(v118));
    memset(v117, 0, sizeof(v117));
    memset(v116, 0, sizeof(v116));
    if (v110 < 0)
    {
      if (v109 != 5 || (*v108 == 1768125281 ? (v17 = *(v108 + 4) == 105) : (v17 = 0), !v17))
      {
        if (v109 == 20)
        {
          v18 = *v108 == 0x6C5F7972616E6962 && *(v108 + 1) == 0x6E655F656C747469;
          if (v18 && *(v108 + 4) == 1851877732)
          {
LABEL_72:
            v119.__locale_ = &unk_284D17DF8;
            v120 = sub_239EE42D4;
            v121 = &v119;
            sub_239EE8A90(&v119, v118);
            v30 = sub_239EE88FC(&v119);
            v119.__locale_ = &unk_284D17EA8;
            v120 = sub_239EE43F8;
            v121 = &v119;
            sub_239EE8A90(v30, v117);
            v28 = sub_239EE88FC(&v119);
            v119.__locale_ = &unk_284D17EA8;
            v29 = sub_239EE4538;
            goto LABEL_73;
          }
        }

        if (v109 != 17)
        {
LABEL_63:
          sub_239E552A0(a3, "Parse PLY: Bad format");
          goto LABEL_64;
        }

        v20 = v108;
LABEL_50:
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v20 + 16);
        if (v21 != 0x625F7972616E6962 || v22 != 0x6169646E655F6769 || v23 != 110)
        {
          goto LABEL_63;
        }

        sub_239EE40A0(v118, sub_239EE4578);
        sub_239EE4204(v117, sub_239EE46AC);
        sub_239EE4204(v116, sub_239EE47FC);
        goto LABEL_74;
      }
    }

    else
    {
      if (HIBYTE(v110) != 5)
      {
        if (HIBYTE(v110) != 17)
        {
          if (HIBYTE(v110) != 20)
          {
            goto LABEL_63;
          }

          v15 = v108 == 0x6C5F7972616E6962 && v109 == 0x6E655F656C747469;
          if (!v15 || v110 != 1851877732)
          {
            goto LABEL_63;
          }

          goto LABEL_72;
        }

        v20 = &v108;
        goto LABEL_50;
      }

      if (v108 != 1768125281 || BYTE4(v108) != 105)
      {
        goto LABEL_63;
      }
    }

    v119.__locale_ = &unk_284D17DF8;
    v120 = sub_239EE3FD0;
    v121 = &v119;
    sub_239EE8A90(&v119, v118);
    v27 = sub_239EE88FC(&v119);
    v119.__locale_ = &unk_284D17EA8;
    v120 = sub_239EE4130;
    v121 = &v119;
    sub_239EE8A90(v27, v117);
    v28 = sub_239EE88FC(&v119);
    v119.__locale_ = &unk_284D17EA8;
    v29 = sub_239EE4294;
LABEL_73:
    v120 = v29;
    v121 = &v119;
    sub_239EE8A90(v28, v116);
    sub_239EE88FC(&v119);
LABEL_74:
    v31 = a1[7];
    v100 = a1[8];
    if (v31 == v100)
    {
LABEL_180:
      sub_239E552A0(a3, "");
LABEL_64:
      sub_239EE88FC(v116);
      sub_239EE88FC(v117);
      sub_239EE88FC(v118);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_66;
    }

    while (1)
    {
      v32 = *(v31 + 48);
      if (v32 >> 28)
      {
        sub_239E552A0(a3, "Parse PLY: Element has invalid count");
        goto LABEL_64;
      }

      v33 = (v31 + 24);
      v102 = v31;
      if (*(v31 + 47) < 0)
      {
        if (*(v31 + 32) != 6 || (**v33 == 1953654134 ? (v36 = *(*v33 + 4) == 30821) : (v36 = 0), !v36))
        {
          if (*(v31 + 32) == 4)
          {
            v33 = *v33;
LABEL_92:
            if (*v33 == 1701011814)
            {
              sub_239E95D48(a1 + 19, 3 * v32);
              sub_239E95D48(a1 + 22, *(v31 + 48));
              v47 = *(v31 + 48);
              if (!v47)
              {
                goto LABEL_179;
              }

              v48 = 0;
              while (1)
              {
                v49 = *v31;
                v101 = *(v31 + 8);
                if (*v31 != v101)
                {
                  break;
                }

LABEL_140:
                if (++v48 >= v47)
                {
                  goto LABEL_179;
                }
              }

              v99 = v48;
              while (1)
              {
                if (*v49 == 9)
                {
                  sub_239EE3224(v118, a2, v49[2]);
                  v51 = v50;
                  if (v50 > 0x400)
                  {
                    sub_239E552A0(a3, "Parse PLY: Property list has invalid number of elements");
                    goto LABEL_64;
                  }

                  v52 = v50;
                  if (v51)
                  {
                    do
                    {
                      sub_239EE3224(v118, a2, v49[1]);
                      v54 = v53;
                      v56 = a1[20];
                      v55 = a1[21];
                      if (v56 >= v55)
                      {
                        v58 = a1[19];
                        v59 = v56 - v58;
                        v60 = (v56 - v58) >> 2;
                        v61 = v60 + 1;
                        if ((v60 + 1) >> 62)
                        {
                          sub_239E797B4();
                        }

                        v62 = v55 - v58;
                        if (v62 >> 1 > v61)
                        {
                          v61 = v62 >> 1;
                        }

                        v63 = v62 >= 0x7FFFFFFFFFFFFFFCLL;
                        v64 = 0x3FFFFFFFFFFFFFFFLL;
                        if (!v63)
                        {
                          v64 = v61;
                        }

                        if (v64)
                        {
                          sub_239E79984((a1 + 19), v64);
                        }

                        v65 = (v56 - v58) >> 2;
                        v66 = (4 * v60);
                        v67 = (4 * v60 - 4 * v65);
                        *v66 = v54;
                        v57 = v66 + 1;
                        memcpy(v67, v58, v59);
                        v68 = a1[19];
                        a1[19] = v67;
                        a1[20] = v57;
                        a1[21] = 0;
                        if (v68)
                        {
                          operator delete(v68);
                        }
                      }

                      else
                      {
                        *v56 = v54;
                        v57 = v56 + 1;
                      }

                      a1[20] = v57;
                      --v52;
                    }

                    while (v52);
                  }

                  v70 = a1[23];
                  v69 = a1[24];
                  v31 = v102;
                  v48 = v99;
                  if (v70 >= v69)
                  {
                    v74 = a1[22];
                    v75 = v70 - v74;
                    v76 = (v70 - v74) >> 2;
                    v77 = v76 + 1;
                    if ((v76 + 1) >> 62)
                    {
                      sub_239E797B4();
                    }

                    v78 = v69 - v74;
                    if (v78 >> 1 > v77)
                    {
                      v77 = v78 >> 1;
                    }

                    v63 = v78 >= 0x7FFFFFFFFFFFFFFCLL;
                    v79 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v63)
                    {
                      v79 = v77;
                    }

                    if (v79)
                    {
                      sub_239E79984((a1 + 22), v79);
                    }

                    v80 = (v70 - v74) >> 2;
                    v81 = (4 * v76);
                    v82 = (4 * v76 - 4 * v80);
                    *v81 = v51;
                    v71 = v81 + 1;
                    memcpy(v82, v74, v75);
                    v83 = a1[22];
                    a1[22] = v82;
                    a1[23] = v71;
                    a1[24] = 0;
                    if (v83)
                    {
                      operator delete(v83);
                    }
                  }

                  else
                  {
                    *v70 = v51;
                    v71 = v70 + 1;
                  }

                  a1[23] = v71;
                }

                else
                {
                  v72 = sub_239EE8E74(v114, v118);
                  v73 = sub_239EE3194(v72, v49, a2, v114);
                  sub_239EE88FC(v114);
                  if ((v73 & 1) == 0)
                  {
                    goto LABEL_127;
                  }
                }

                v49 += 3;
                if (v49 == v101)
                {
                  v47 = *(v31 + 48);
                  goto LABEL_140;
                }
              }
            }
          }

LABEL_93:
          if (!v32)
          {
            goto LABEL_179;
          }

          v37 = 0;
          while (1)
          {
            v38 = *v31;
            v39 = *(v31 + 8);
            if (*v31 != v39)
            {
              break;
            }

LABEL_99:
            if (++v37 >= v32)
            {
              goto LABEL_179;
            }
          }

          while (1)
          {
            v40 = sub_239EE8E74(v113, v118);
            v41 = sub_239EE3194(v40, v38, a2, v113);
            sub_239EE88FC(v113);
            if ((v41 & 1) == 0)
            {
              break;
            }

            v38 += 12;
            if (v38 == v39)
            {
              v32 = *(v31 + 48);
              goto LABEL_99;
            }
          }

LABEL_127:
          sub_239E552A0(a3, "Parse PLY: Unknown property");
          goto LABEL_64;
        }
      }

      else
      {
        v34 = *(v31 + 47);
        if (v34 == 4)
        {
          goto LABEL_92;
        }

        if (v34 != 6)
        {
          goto LABEL_93;
        }

        if (*v33 != 1953654134 || *(v31 + 28) != 30821)
        {
          goto LABEL_93;
        }
      }

      v42 = *v31;
      v43 = *(v31 + 8);
      if (*v31 == v43)
      {
        v45 = 0;
        v44 = 0;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        do
        {
          v46 = *v42;
          v42 += 3;
          v44 |= v46 == 3;
          v45 |= v46 == 6;
        }

        while (v42 != v43);
      }

      sub_239EE483C(a1 + 10, v32);
      if (v44)
      {
        sub_239EE483C(a1 + 13, *(v31 + 48));
      }

      if (v45)
      {
        sub_239EE483C(a1 + 16, *(v31 + 48));
      }

      LODWORD(v120) = 0;
      v119.__locale_ = 0;
      v103 = 0;
      v104 = 0;
      v105 = 1065353216;
      if (*(v31 + 48))
      {
        break;
      }

LABEL_179:
      v31 += 56;
      if (v31 == v100)
      {
        goto LABEL_180;
      }
    }

    v84 = 0;
LABEL_149:
    v85 = *v31;
    v86 = *(v31 + 8);
    while (1)
    {
      if (v85 == v86)
      {
        sub_239EE4964(a1 + 10, &v119);
        if (v44)
        {
          sub_239EE4964(a1 + 13, &v104 + 4);
        }

        if (v45)
        {
          sub_239EE4964(a1 + 16, &v103);
        }

        ++v84;
        v31 = v102;
        if (v84 >= *(v102 + 48))
        {
          goto LABEL_179;
        }

        goto LABEL_149;
      }

      v87 = *v85;
      if (*v85 <= 3)
      {
        if (v87 > 1)
        {
          if (v87 == 2)
          {
            sub_239EE3224(v117, a2, v85[1]);
            LODWORD(v120) = v93;
            goto LABEL_173;
          }

          if (v87 == 3)
          {
            sub_239EE3224(v117, a2, v85[1]);
            HIDWORD(v104) = v90;
            goto LABEL_173;
          }
        }

        else
        {
          if (!v87)
          {
            sub_239EE3224(v117, a2, v85[1]);
            LODWORD(v119.__locale_) = v92;
            goto LABEL_173;
          }

          if (v87 == 1)
          {
            sub_239EE3224(v117, a2, v85[1]);
            HIDWORD(v119.__locale_) = v89;
            goto LABEL_173;
          }
        }
      }

      else if (v87 <= 5)
      {
        if (v87 == 4)
        {
          sub_239EE3224(v117, a2, v85[1]);
          LODWORD(v105) = v95;
          goto LABEL_173;
        }

        if (v87 == 5)
        {
          sub_239EE3224(v117, a2, v85[1]);
          HIDWORD(v105) = v91;
          goto LABEL_173;
        }
      }

      else
      {
        switch(v87)
        {
          case 6:
            sub_239EE3224(v116, a2, v85[1]);
            LODWORD(v103) = v94;
            goto LABEL_173;
          case 7:
            sub_239EE3224(v116, a2, v85[1]);
            HIDWORD(v103) = v96;
            goto LABEL_173;
          case 8:
            sub_239EE3224(v116, a2, v85[1]);
            LODWORD(v104) = v88;
            goto LABEL_173;
        }
      }

      v97 = sub_239EE8E74(v115, v118);
      v98 = sub_239EE3194(v97, v85, a2, v115);
      sub_239EE88FC(v115);
      if ((v98 & 1) == 0)
      {
        goto LABEL_127;
      }

LABEL_173:
      v85 += 3;
    }
  }

  *a3 = *__p;
  a3[2] = v107;
LABEL_66:
  if (SHIBYTE(v110) < 0)
  {
    operator delete(v108);
  }

LABEL_68:
  if (SHIBYTE(v112) < 0)
  {
    operator delete(v111[0]);
  }
}

void sub_239EE3E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_239EE88FC(&a46);
  sub_239EE88FC(v46 - 208);
  sub_239EE88FC(v46 - 176);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void *sub_239EE3F14(void *a1, uint64_t a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v7);
  return sub_239EE8088(a1, a2, v5);
}

uint64_t sub_239EE3FD0(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return v2;
        }

        goto LABEL_10;
      }

LABEL_11:
      LODWORD(v4) = 0;
      MEMORY[0x23EE800A0](a1, &v4);
      return LODWORD(v4);
    }

    if (a2 == 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    LODWORD(v4) = 0;
    MEMORY[0x23EE800B0](a1, &v4);
    return LODWORD(v4);
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 6)
  {
    LODWORD(v4) = 0;
    MEMORY[0x23EE80090](a1, &v4);
    return *&v4;
  }

  else if (a2 == 7)
  {
    v4 = 0.0;
    MEMORY[0x23EE80080](a1, &v4);
    return v4;
  }

  return v2;
}

void *sub_239EE40A0(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284D17DF8;
  v4[1] = a2;
  v4[3] = v4;
  sub_239EE8A90(v4, a1);
  sub_239EE88FC(v4);
  return a1;
}

float sub_239EE4130(uint64_t a1, int a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return a3.n128_f32[0];
        }

        goto LABEL_10;
      }

LABEL_11:
      LODWORD(v4) = 0;
      MEMORY[0x23EE800A0](a1, &v4, a3);
      a3.n128_f32[0] = SLODWORD(v4);
      return a3.n128_f32[0];
    }

    if (a2 == 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    LODWORD(v4) = 0;
    MEMORY[0x23EE800B0](a1, &v4, a3);
    a3.n128_f32[0] = LODWORD(v4);
    return a3.n128_f32[0];
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 7)
  {
    v4 = 0.0;
    MEMORY[0x23EE80080](a1, &v4, 0.0);
    a3.n128_f32[0] = v4;
  }

  else if (a2 == 6)
  {
    LODWORD(v4) = 0;
    MEMORY[0x23EE80090](a1, &v4, 0.0);
    a3.n128_u32[0] = LODWORD(v4);
  }

  return a3.n128_f32[0];
}

void *sub_239EE4204(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284D17EA8;
  v4[1] = a2;
  v4[3] = v4;
  sub_239EE8A90(v4, a1);
  sub_239EE88FC(v4);
  return a1;
}

float sub_239EE4294(uint64_t a1, unsigned int a2, __n128 a3)
{
  if (a2 <= 5)
  {
    return sub_239EE3FD0(a1, a2) * 0.0039216;
  }

  return sub_239EE4130(a1, a2, a3);
}

uint64_t sub_239EE42D4(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
LABEL_5:
      std::istream::read();
      return 0;
    }

    if (a2 == 6)
    {
      std::istream::read();
      return 0.0;
    }

    else if (a2 == 7)
    {
      std::istream::read();
      return 0.0;
    }
  }

  else if (a2 >= 0)
  {
    goto LABEL_5;
  }

  return v2;
}

float sub_239EE43F8(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return result;
        }

        std::istream::read();
        LOBYTE(v3) = 0;
        return v3;
      }

      goto LABEL_15;
    }

    if (a2 != 2)
    {
      std::istream::read();
      LOWORD(v3) = 0;
      return v3;
    }

    goto LABEL_15;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      std::istream::read();
      return 0;
    }

LABEL_15:
    std::istream::read();
    return 0;
  }

  if (a2 == 7)
  {
    std::istream::read();
    return 0.0;
  }

  else if (a2 == 6)
  {
    std::istream::read();
    return 0.0;
  }

  return result;
}

float sub_239EE4538(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_239EE42D4(a1, a2) * 0.0039216;
  }

  return sub_239EE43F8(a1, a2);
}

uint64_t sub_239EE4578(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        std::istream::read();
        return COERCE_FLOAT(bswap32(0));
      }

      else if (a2 == 7)
      {
        return sub_239EE7E0C(a1);
      }
    }

    else
    {
      std::istream::read();
      return bswap32(0);
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        std::istream::read();
        return __rev16(0);
      }

      goto LABEL_4;
    }

    if (a2 <= 1)
    {
LABEL_4:
      std::istream::read();
      return 0;
    }
  }

  return v2;
}

float sub_239EE46AC(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          std::istream::read();
          LOBYTE(v3) = 0;
          return v3;
        }

        return result;
      }

      std::istream::read();
      return 0;
    }

    if (a2 == 2)
    {
      std::istream::read();
      return (bswap32(0) >> 16);
    }

    std::istream::read();
    return (bswap32(0) >> 16);
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      std::istream::read();
      return bswap32(0);
    }

    std::istream::read();
    return bswap32(0);
  }

  if (a2 == 7)
  {
    return sub_239EE7E0C(a1);
  }

  if (a2 == 6)
  {
    std::istream::read();
    return COERCE_FLOAT(bswap32(0));
  }

  return result;
}

float sub_239EE47FC(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_239EE4578(a1, a2) * 0.0039216;
  }

  return sub_239EE46AC(a1, a2);
}

void sub_239EE483C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      sub_239E95B5C(a1, a2);
    }

    sub_239E797B4();
  }
}

void sub_239EE4914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EE4964(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239EE8F0C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

void sub_239EE49B4(uint64_t *a1, void *a2, void *a3)
{
  v701[1] = *MEMORY[0x277D85DE8];
  v696 = a2;
  v692 = a3;
  v5 = objc_alloc_init(MDLVertexDescriptor);
  v17 = objc_msgSend_attributes(v5, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, 0, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  objc_msgSend_setName_(v28, v29, @"position", v30, v35, v36, v37, v38, v31, v32, v33, v34);

  v50 = objc_msgSend_attributes(v5, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v61 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0, v52, v57, v58, v59, v60, v53, v54, v55, v56);
  objc_msgSend_setFormat_(v61, v62, 786435, v63, v68, v69, v70, v71, v64, v65, v66, v67);

  v83 = objc_msgSend_attributes(v5, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
  v94 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 0, v85, v90, v91, v92, v93, v86, v87, v88, v89);
  objc_msgSend_setBufferIndex_(v94, v95, 0, v96, v101, v102, v103, v104, v97, v98, v99, v100);

  if (a1[14] != a1[13])
  {
    v116 = objc_msgSend_attributes(v5, v105, v106, v107, v112, v113, v114, v115, v108, v109, v110, v111);
    v127 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, 1, v118, v123, v124, v125, v126, v119, v120, v121, v122);
    objc_msgSend_setName_(v127, v128, @"normal", v129, v134, v135, v136, v137, v130, v131, v132, v133);

    v149 = objc_msgSend_attributes(v5, v138, v139, v140, v145, v146, v147, v148, v141, v142, v143, v144);
    v160 = objc_msgSend_objectAtIndexedSubscript_(v149, v150, 1, v151, v156, v157, v158, v159, v152, v153, v154, v155);
    objc_msgSend_setFormat_(v160, v161, 786435, v162, v167, v168, v169, v170, v163, v164, v165, v166);

    v182 = objc_msgSend_attributes(v5, v171, v172, v173, v178, v179, v180, v181, v174, v175, v176, v177);
    v193 = objc_msgSend_objectAtIndexedSubscript_(v182, v183, 1, v184, v189, v190, v191, v192, v185, v186, v187, v188);
    objc_msgSend_setBufferIndex_(v193, v194, 0, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  }

  if (a1[17] != a1[16])
  {
    v204 = objc_msgSend_attributes(v5, v105, v106, v107, v112, v113, v114, v115, v108, v109, v110, v111);
    v215 = objc_msgSend_objectAtIndexedSubscript_(v204, v205, 2, v206, v211, v212, v213, v214, v207, v208, v209, v210);
    objc_msgSend_setName_(v215, v216, @"color", v217, v222, v223, v224, v225, v218, v219, v220, v221);

    v237 = objc_msgSend_attributes(v5, v226, v227, v228, v233, v234, v235, v236, v229, v230, v231, v232);
    v248 = objc_msgSend_objectAtIndexedSubscript_(v237, v238, 2, v239, v244, v245, v246, v247, v240, v241, v242, v243);
    objc_msgSend_setFormat_(v248, v249, 786435, v250, v255, v256, v257, v258, v251, v252, v253, v254);

    v270 = objc_msgSend_attributes(v5, v259, v260, v261, v266, v267, v268, v269, v262, v263, v264, v265);
    v281 = objc_msgSend_objectAtIndexedSubscript_(v270, v271, 2, v272, v277, v278, v279, v280, v273, v274, v275, v276);
    objc_msgSend_setBufferIndex_(v281, v282, 0, v283, v288, v289, v290, v291, v284, v285, v286, v287);
  }

  objc_msgSend_setPackedOffsets(v5, v105, v106, v107, v112, v113, v114, v115, v108, v109, v110, v111);
  objc_msgSend_setPackedStrides(v5, v292, v293, v294, v299, v300, v301, v302, v295, v296, v297, v298);
  v304 = a1[10];
  v303 = a1[11];
  v316 = objc_msgSend_layouts(v5, v305, v306, v307, v312, v313, v314, v315, v308, v309, v310, v311);
  v327 = objc_msgSend_objectAtIndexedSubscript_(v316, v317, 0, v318, v323, v324, v325, v326, v319, v320, v321, v322);
  v693 = objc_msgSend_stride(v327, v328, v329, v330, v335, v336, v337, v338, v331, v332, v333, v334);

  __p = 0;
  v699 = 0;
  v700 = 0;
  sub_239E95D48(&__p, (a1[20] - a1[19]) >> 2);
  v340 = a1[19];
  v339 = a1[20];
  sub_239E95D48(&__p, (a1[11] - a1[10]) >> 2);
  if (v339 == v340)
  {
    v697 = 0;
    if (a1[11] != a1[10])
    {
      do
      {
        sub_239E73254(&__p, &v697);
        ++v697;
      }

      while (v697 < ((a1[11] - a1[10]) >> 2));
    }

    v689 = 0;
  }

  else
  {
    v341 = a1[22];
    v342 = a1[23];
    if (v341 == v342)
    {
      v689 = 2;
    }

    else
    {
      v343 = 0;
      v689 = 2;
      v690 = v303;
      do
      {
        v344 = *v341;
        if (*v341 >= 3)
        {
          v346 = 0;
          v347 = 4 * v343;
          v345 = v343;
          do
          {
            v348 = a1[19];
            if (v345 >= (a1[20] - v348) >> 2)
            {
              break;
            }

            sub_239E73254(&__p, (v348 + v347));
            if (v346 >= 3)
            {
              sub_239E73254(&__p, (a1[19] + 4 * v343));
              sub_239E73254(&__p, (a1[19] + v347 - 4));
            }

            ++v345;
            v347 += 4;
            ++v346;
          }

          while (v344 != v346);
        }

        else
        {
          v345 = v343 + v344;
        }

        ++v341;
        v343 = v345;
      }

      while (v341 != v342);
      v303 = v690;
    }
  }

  v687 = __p;
  v688 = v699;
  v349 = objc_alloc(MEMORY[0x277CBEB28]);
  v350 = 0xAAAAAAAAAAAAAAABLL * ((v303 - v304) >> 2);
  v351 = (v693 * v350);
  v362 = objc_msgSend_initWithLength_(v349, v352, v693 * v350, v353, v358, v359, v360, v361, v354, v355, v356, v357);
  v363 = objc_alloc_init(MDLVertexAttribute);
  objc_msgSend_setFormat_(v363, v364, 786435, v365, v370, v371, v372, v373, v366, v367, v368, v369);
  objc_msgSend_setBufferIndex_(v363, v374, 0, v375, v380, v381, v382, v383, v376, v377, v378, v379);
  objc_msgSend_setOffset_(v363, v384, 0, v385, v390, v391, v392, v393, v386, v387, v388, v389);
  objc_msgSend_setName_(v363, v394, @"position", v395, v400, v401, v402, v403, v396, v397, v398, v399);
  v695 = objc_alloc_init(MDLVertexAttribute);
  objc_msgSend_setFormat_(v695, v404, 786436, v405, v410, v411, v412, v413, v406, v407, v408, v409);
  objc_msgSend_setBufferIndex_(v695, v414, 0, v415, v420, v421, v422, v423, v416, v417, v418, v419);
  objc_msgSend_setOffset_(v695, v424, 0, v425, v430, v431, v432, v433, v426, v427, v428, v429);
  objc_msgSend_setName_(v695, v434, @"color", v435, v440, v441, v442, v443, v436, v437, v438, v439);
  v444 = v362;
  v456 = objc_msgSend_mutableBytes(v362, v445, v446, v447, v452, v453, v454, v455, v448, v449, v450, v451);
  v468 = objc_msgSend_attributes(v5, v457, v458, v459, v464, v465, v466, v467, v460, v461, v462, v463);
  v479 = objc_msgSend_objectAtIndexedSubscript_(v468, v469, 0, v470, v475, v476, v477, v478, v471, v472, v473, v474);
  sub_239E70888(v456, v693, v479, a1[10], 0xC, v363, v350, (v693 * v350), (a1[11] - a1[10]));

  if (a1[14] != a1[13])
  {
    objc_msgSend_setName_(v363, v480, @"normal", v482, v487, v488, v489, v490, v483, v484, v485, v486);
    v491 = v362;
    v503 = objc_msgSend_mutableBytes(v362, v492, v493, v494, v499, v500, v501, v502, v495, v496, v497, v498);
    v515 = objc_msgSend_attributes(v5, v504, v505, v506, v511, v512, v513, v514, v507, v508, v509, v510);
    v526 = objc_msgSend_objectAtIndexedSubscript_(v515, v516, 1, v517, v522, v523, v524, v525, v518, v519, v520, v521);
    sub_239E70888(v503, v693, v526, a1[13], 0xC, v363, v350, v351, (a1[14] - a1[13]));
  }

  if (a1[17] != a1[16])
  {
    v527 = v362;
    v539 = objc_msgSend_mutableBytes(v362, v528, v529, v530, v535, v536, v537, v538, v531, v532, v533, v534);
    v551 = objc_msgSend_attributes(v5, v540, v541, v542, v547, v548, v549, v550, v543, v544, v545, v546);
    v562 = objc_msgSend_objectAtIndexedSubscript_(v551, v552, 2, v553, v558, v559, v560, v561, v554, v555, v556, v557);
    sub_239E70888(v539, v693, v562, a1[16], 0xC, v695, v350, v351, (a1[17] - a1[16]));
  }

  v563 = objc_msgSend_bufferAllocator(v696, v480, v481, v482, v487, v488, v489, v490, v483, v484, v485, v486);
  v691 = objc_msgSend_newBufferFromZone_data_type_(v563, v564, 0, v362, v568, v569, v570, v571, 1, v565, v566, v567);

  v572 = objc_alloc(MEMORY[0x277CBEA90]);
  v694 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v572, v573, __p, v688 - v687, v577, v578, v579, v580, 0, v574, v575, v576);
  v592 = objc_msgSend_bufferAllocator(v696, v581, v582, v583, v588, v589, v590, v591, v584, v585, v586, v587);
  v601 = objc_msgSend_newBufferFromZone_data_type_(v592, v593, 0, v694, v597, v598, v599, v600, 2, v594, v595, v596);

  v602 = [MDLSubmesh alloc];
  v603 = __p;
  v604 = v699;
  v605 = [MDLMaterial alloc];
  v606 = objc_opt_new();
  v616 = objc_msgSend_initWithName_scatteringFunction_(v605, v607, @"PLY Material", v606, v612, v613, v614, v615, v608, v609, v610, v611);
  v623 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v602, v617, v601, (v604 - v603) >> 2, v619, v620, v621, v622, 32, v689, v616, v618);

  v624 = [MDLMesh alloc];
  v701[0] = v623;
  v634 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v625, v701, 1, v630, v631, v632, v633, v626, v627, v628, v629);
  v642 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v624, v635, v691, v350, v638, v639, v640, v641, v5, v634, v636, v637);

  v654 = objc_msgSend_vertexDescriptor(v696, v643, v644, v645, v650, v651, v652, v653, v646, v647, v648, v649);
  LOBYTE(v634) = v654 == 0;

  if ((v634 & 1) == 0)
  {
    v666 = objc_msgSend_vertexDescriptor(v696, v655, v656, v657, v662, v663, v664, v665, v658, v659, v660, v661);
    objc_msgSend_setVertexDescriptor_(v642, v667, v666, v668, v673, v674, v675, v676, v669, v670, v671, v672);
  }

  objc_msgSend_setName_(v642, v655, v692, v657, v662, v663, v664, v665, v658, v659, v660, v661);
  objc_msgSend_addObject_(v696, v677, v642, v678, v683, v684, v685, v686, v679, v680, v681, v682);

  if (__p)
  {
    v699 = __p;
    operator delete(__p);
  }
}

void sub_239EE51B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EE5374(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v77[19] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (sub_239F5C490(v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19))
  {
    v31 = objc_msgSend_path(v7, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v32 = v31;
    if (v31)
    {
      v73[0] = 0;
      v73[1] = 0;
      v74 = 0;
      v33 = v31;
      v44 = objc_msgSend_cStringUsingEncoding_(v33, v34, 4, v35, v40, v41, v42, v43, v36, v37, v38, v39);
      sub_239E552A0(v73, v44);
      bzero(v75, 0x240uLL);
      if (v74 >= 0)
      {
        v45 = v73;
      }

      else
      {
        v45 = v73[0];
      }

      sub_239EE5698(v75, v45, 8);
      if (v76[15])
      {
        __p[0] = 0;
        __p[1] = 0;
        v72 = 0;
        sub_239EE3278(a1, v75, __p);
        v57 = HIBYTE(v72);
        if (v72 < 0)
        {
          v57 = __p[1];
        }

        if (v57)
        {
          *a4 = *__p;
          a4[2] = v72;
        }

        else
        {
          v58 = objc_msgSend_URLByDeletingPathExtension(v7, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
          v70 = objc_msgSend_lastPathComponent(v58, v59, v60, v61, v66, v67, v68, v69, v62, v63, v64, v65);
          sub_239EE49B4(a1, v8, v70);

          sub_239E552A0(a4, "");
          if (SHIBYTE(v72) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        sub_239E552A0(a4, "Could not open PLY file");
      }

      v75[0] = *MEMORY[0x277D82808];
      *(v75 + *(v75[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x23EE80040](v76);
      std::istream::~istream();
      MEMORY[0x23EE80250](v77);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73[0]);
      }
    }

    else
    {
      sub_239E552A0(a4, "Could not open PLY file: Incorrect URL");
    }
  }

  else
  {
    sub_239E552A0(a4, "Could not find PLY file");
  }
}

void sub_239EE560C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_239EE585C(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_239EE5698(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x23EE80030](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_239EE5824(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

void *sub_239EE585C(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EE80040](a1 + 2);
  std::istream::~istream();
  MEMORY[0x23EE80250](a1 + 53);
  return a1;
}

void sub_239EE5928(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v704 = *MEMORY[0x277D85DE8];
  v665 = a2;
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    sub_239E552A0(a4, "");
    goto LABEL_138;
  }

  v698 = 0;
  v697 = 0;
  v699 = 0;
  v693 = 0u;
  v694 = 0u;
  v695 = 0u;
  v696 = 0u;
  v9 = v7;
  v678 = v8;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v693, v703, v14, v15, v16, v17, 16, v11, v12, v13);
  if (v18)
  {
    v19 = *v694;
    v20 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v694 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v22 = *(*(&v693 + 1) + 8 * i);
        sub_239F5C680(a1, &v697, v22, *v20, v20[1], v20[2], v20[3]);
        sub_239F5CA38(a1, &v697, v22, *v20, v20[1], v20[2], v20[3]);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v23, &v693, v703, v27, v28, v29, v30, 16, v24, v25, v26);
    }

    while (v18);
  }

  v666 = a4;

  memset(&__str, 0, sizeof(__str));
  sub_239E5663C(v665, &__str, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v42 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  v43 = a4;
  if (v42 != -1)
  {
    std::string::basic_string(&v700, &__str, 0, v42, &v684);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v700;
  }

  v44 = v697;
  v675 = v698;
  v8 = v678;
  if (v697 == v698)
  {
    goto LABEL_133;
  }

  LODWORD(v45) = 0;
  v673 = *(MEMORY[0x277D82810] + 16);
  v674 = *(MEMORY[0x277D82810] + 8);
  v671 = *(MEMORY[0x277D82810] + 24);
  v672 = *MEMORY[0x277D82810];
  v669 = *(MEMORY[0x277D82818] + 64);
  v670 = *MEMORY[0x277D82818];
  v668 = *(MEMORY[0x277D82818] + 72);
  do
  {
    v691 = 0;
    v689 = 0u;
    memset(v690, 0, sizeof(v690));
    *v687 = 0u;
    v688 = 0u;
    v685 = 0u;
    memset(v686, 0, sizeof(v686));
    v684 = 0u;
    sub_239EE76F8(&v684);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    sub_239E98B94(&v685, p_str, size);
    v45 = (v45 + 1);
    if (0xCCCCCCCCCCCCCCCDLL * ((v698 - v697) >> 4) >= 2)
    {
      v48 = sub_239E98B94(&v685, "_", 1);
      MEMORY[0x23EE80140](v48, v45);
    }

    sub_239E98B94(&v685, ".ply", 4);
    v49 = MEMORY[0x277D82860] + 64;
    bzero(&v700.__r_.__value_.__r.__words[1], 0x230uLL);
    v702[0] = v49;
    v700.__r_.__value_.__r.__words[0] = v674;
    *(v700.__r_.__value_.__r.__words + *(v674 - 24)) = v673;
    v50 = (&v700 + *(v700.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v50, &v700.__r_.__value_.__r.__words[1]);
    v51 = MEMORY[0x277D82860] + 24;
    v50[1].__vftable = 0;
    v50[1].__fmtflags_ = -1;
    v700.__r_.__value_.__r.__words[0] = v51;
    v702[0] = v49;
    MEMORY[0x23EE80030](&v700.__r_.__value_.__r.__words[1]);
    std::stringbuf::str();
    std::ofstream::open();
    if (v683 < 0)
    {
      operator delete(__p[0]);
    }

    v679 = *&v701[*(v700.__r_.__value_.__r.__words[0] - 24)] & 5;
    if (v679)
    {
      sub_239E552A0(v43, "Failed to open file path.");
      goto LABEL_129;
    }

    v52 = sub_239E98B94(&v700, "ply ", 4);
    std::ios_base::getloc((v52 + *(*v52 - 24)));
    v53 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v53->__vftable[2].~facet_0)(v53, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v54 = sub_239E98B94(v52, "format ascii 1.0", 16);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v55->__vftable[2].~facet_0)(v55, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v67 = objc_msgSend_name(*(v44 + 64), v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    v677 = v45;
    v68 = v67 == 0;

    if (v68)
    {
      v108 = sub_239E98B94(&v700, "comment object: submesh", 23);
      v109 = MEMORY[0x23EE80140](v108, v677);
      std::ios_base::getloc((v109 + *(*v109 - 24)));
      v110 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v110->__vftable[2].~facet_0)(v110, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      v69 = sub_239E98B94(&v700, "comment object: ", 16);
      v81 = objc_msgSend_name(*(v44 + 64), v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
      v82 = v81;
      v94 = objc_msgSend_UTF8String(v81, v83, v84, v85, v90, v91, v92, v93, v86, v87, v88, v89);
      v95 = strlen(v94);
      v96 = sub_239E98B94(v69, v94, v95);
      v97 = MEMORY[0x23EE80140](v96, v677);
      std::ios_base::getloc((v97 + *(*v97 - 24)));
      v98 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v98->__vftable[2].~facet_0)(v98, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    v667 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v44 + 64), v99, @"normal", 786435, v104, v105, v106, v107, v100, v101, v102, v103);
    v125 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v44 + 64), v111, @"occlusionValue", 786435, v116, v117, v118, v119, v112, v113, v114, v115);
    if (!v125)
    {
      v125 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v44 + 64), v120, @"color", 786435, v126, v127, v128, v129, v121, v122, v123, v124);
    }

    v130 = sub_239E98B94(&v700, "element vertex ", 15);
    v142 = objc_msgSend_vertexCount(*(v44 + 64), v131, v132, v133, v138, v139, v140, v141, v134, v135, v136, v137);
    v143 = MEMORY[0x23EE80160](v130, v142);
    std::ios_base::getloc((v143 + *(*v143 - 24)));
    v144 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v144->__vftable[2].~facet_0)(v144, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v145 = sub_239E98B94(&v700, "property float x", 16);
    std::ios_base::getloc((v145 + *(*v145 - 24)));
    v146 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v146->__vftable[2].~facet_0)(v146, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v147 = sub_239E98B94(v145, "property float y", 16);
    std::ios_base::getloc((v147 + *(*v147 - 24)));
    v148 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v148->__vftable[2].~facet_0)(v148, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v149 = sub_239E98B94(v147, "property float z", 16);
    std::ios_base::getloc((v149 + *(*v149 - 24)));
    v150 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v150->__vftable[2].~facet_0)(v150, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    if (v125)
    {
      v162 = sub_239E98B94(&v700, "property uchar red", 18);
      std::ios_base::getloc((v162 + *(*v162 - 24)));
      v163 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v163->__vftable[2].~facet_0)(v163, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v164 = sub_239E98B94(v162, "property uchar green", 20);
      std::ios_base::getloc((v164 + *(*v164 - 24)));
      v165 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v165->__vftable[2].~facet_0)(v165, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v166 = sub_239E98B94(v164, "property uchar blue", 19);
      std::ios_base::getloc((v166 + *(*v166 - 24)));
      v167 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v167->__vftable[2].~facet_0)(v167, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    v680 = v125;
    if (objc_msgSend_geometryType(*(v44 + 72), v151, v152, v153, v158, v159, v160, v161, v154, v155, v156, v157) == 2)
    {
      v179 = sub_239E98B94(&v700, "element face ", 13);
      v191 = objc_msgSend_indexCount(*(v44 + 72), v180, v181, v182, v187, v188, v189, v190, v183, v184, v185, v186) / 3uLL;
LABEL_46:
      MEMORY[0x23EE80160](v179, v191);
      goto LABEL_47;
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v168, v169, v170, v175, v176, v177, v178, v171, v172, v173, v174) == 4)
    {
      v179 = sub_239E98B94(&v700, "element face ", 13);
      v191 = objc_msgSend_indexCount(*(v44 + 72), v203, v204, v205, v210, v211, v212, v213, v206, v207, v208, v209) >> 2;
      goto LABEL_46;
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198) == 1)
    {
      v179 = sub_239E98B94(&v700, "element face ", 13);
      v191 = objc_msgSend_indexCount(*(v44 + 72), v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231) >> 1;
      goto LABEL_46;
    }

    if (!objc_msgSend_geometryType(*(v44 + 72), v214, v215, v216, v221, v222, v223, v224, v217, v218, v219, v220))
    {
      v179 = sub_239E98B94(&v700, "element face ", 13);
      v191 = objc_msgSend_indexCount(*(v44 + 72), v309, v310, v311, v316, v317, v318, v319, v312, v313, v314, v315);
      goto LABEL_46;
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v236, v237, v238, v243, v244, v245, v246, v239, v240, v241, v242) == 5)
    {
      v265 = objc_msgSend_topology(*(v44 + 72), v247, v248, v249, v254, v255, v256, v257, v250, v251, v252, v253);
      if (v265)
      {
        v270 = objc_msgSend_topology(*(v44 + 72), v258, v259, v260, v266, v267, v268, v269, v261, v262, v263, v264);
        v282 = objc_msgSend_faceTopology(v270, v271, v272, v273, v278, v279, v280, v281, v274, v275, v276, v277);
        v283 = v282 == 0;

        if (!v283)
        {
          v284 = sub_239E98B94(&v700, "element face ", 13);
          v296 = objc_msgSend_topology(*(v44 + 72), v285, v286, v287, v292, v293, v294, v295, v288, v289, v290, v291);
          v308 = objc_msgSend_faceCount(v296, v297, v298, v299, v304, v305, v306, v307, v300, v301, v302, v303);
          MEMORY[0x23EE80160](v284, v308);
        }
      }
    }

LABEL_47:
    std::ios_base::getloc((&v700 + *(v700.__r_.__value_.__r.__words[0] - 24)));
    v320 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v320->__vftable[2].~facet_0)(v320, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v321 = sub_239E98B94(&v700, "property list uchar int vertex_index", 36);
    std::ios_base::getloc((v321 + *(*v321 - 24)));
    v322 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v322->__vftable[2].~facet_0)(v322, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v323 = sub_239E98B94(v321, "end_header", 10);
    std::ios_base::getloc((v323 + *(*v323 - 24)));
    v324 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v324->__vftable[2].~facet_0)(v324, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v334 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v44 + 64), v325, @"position", 786435, v330, v331, v332, v333, v326, v327, v328, v329);
    objc_msgSend_dataStart(v334, v335, v336, v337, v342, v343, v344, v345, v338, v339, v340, v341);
    v364 = objc_msgSend_stride(v334, v346, v347, v348, v353, v354, v355, v356, v349, v350, v351, v352);
    if (!v125)
    {
      v369 = 0;
      v381 = 0;
LABEL_56:
      v394 = 255.0;
      goto LABEL_58;
    }

    v369 = objc_msgSend_stride(v125, v357, v358, v359, v365, v366, v367, v368, v360, v361, v362, v363);
    v381 = objc_msgSend_dataStart(v125, v370, v371, v372, v377, v378, v379, v380, v373, v374, v375, v376);
    if (objc_msgSend_bufferSize(v125, v382, v383, v384, v389, v390, v391, v392, v385, v386, v387, v388) < 0xC)
    {
      goto LABEL_56;
    }

    v393 = -1;
    while (++v393 < objc_msgSend_vertexCount(*(v44 + 64), v357, v358, v359, v365, v366, v367, v368, v360, v361, v362, v363))
    {
      v365.n128_u32[0] = *v381;
      v394 = 1.0;
      if (*v381 <= 1.0)
      {
        v365.n128_u32[0] = v381[1];
        if (v365.n128_f32[0] <= 1.0)
        {
          v365.n128_u32[0] = v381[2];
          if (v365.n128_f32[0] <= 1.0)
          {
            continue;
          }
        }
      }

      goto LABEL_58;
    }

    v394 = 255.0;
LABEL_58:
    v395 = 0;
    v396 = 0;
    v397 = (v381 + 2);
    while (v396 < objc_msgSend_vertexCount(*(v44 + 64), v357, v358, v359, v365, v366, v367, v368, v360, v361, v362, v363))
    {
      if (v395 + 12 <= objc_msgSend_bufferSize(v334, v398, v399, v400, v405, v406, v407, v408, v401, v402, v403, v404))
      {
        v409 = std::ostream::operator<<();
        sub_239E98B94(v409, " ", 1);
        v410 = std::ostream::operator<<();
        sub_239E98B94(v410, " ", 1);
        std::ostream::operator<<();
        if (v125)
        {
          v411 = sub_239E98B94(&v700, " ", 1);
          v412 = MEMORY[0x23EE80140](v411, (*(v397 - 2) * v394));
          v413 = sub_239E98B94(v412, " ", 1);
          v414 = MEMORY[0x23EE80140](v413, (*(v397 - 1) * v394));
          v415 = sub_239E98B94(v414, " ", 1);
          MEMORY[0x23EE80140](v415, (*v397 * v394));
        }

        std::ios_base::getloc((&v700 + *(v700.__r_.__value_.__r.__words[0] - 24)));
        v416 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v416->__vftable[2].~facet_0)(v416, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v396;
      v397 = (v397 + v369);
      v395 += v364;
    }

    v417 = objc_msgSend_indexType(*(v44 + 72), v398, v399, v400, v405, v406, v407, v408, v401, v402, v403, v404);
    v429 = objc_msgSend_indexBuffer(*(v44 + 72), v418, v419, v420, v425, v426, v427, v428, v421, v422, v423, v424);
    v676 = objc_msgSend_map(v429, v430, v431, v432, v437, v438, v439, v440, v433, v434, v435, v436);

    v452 = objc_msgSend_bytes(v676, v441, v442, v443, v448, v449, v450, v451, v444, v445, v446, v447);
    if (objc_msgSend_geometryType(*(v44 + 72), v453, v454, v455, v460, v461, v462, v463, v456, v457, v458, v459) == 2)
    {
      v475 = (v452 + 8);
      v476 = (v452 + 2);
      v477 = (v452 + 2);
      v478 = 2;
      while (objc_msgSend_indexCount(*(v44 + 72), v464, v465, v466, v471, v472, v473, v474, v467, v468, v469, v470) > (v478 - 2))
      {
        switch(v417)
        {
          case 32:
            v479 = *(v475 - 2);
            v480 = *(v475 - 1);
            v481 = *v475;
            break;
          case 16:
            v479 = *(v476 - 1);
            v480 = *v476;
            v481 = v476[1];
            break;
          case 8:
            v479 = *(v477 - 2);
            v480 = *(v477 - 1);
            v481 = *v477;
            break;
          default:
            v479 = 0;
            v480 = 0;
            v481 = 0;
            break;
        }

        v482 = sub_239E98B94(&v700, "3 ", 2);
        v483 = MEMORY[0x23EE80140](v482, v479);
        v484 = sub_239E98B94(v483, " ", 1);
        v485 = MEMORY[0x23EE80140](v484, v480);
        v486 = sub_239E98B94(v485, " ", 1);
        v487 = MEMORY[0x23EE80140](v486, v481);
        std::ios_base::getloc((v487 + *(*v487 - 24)));
        v488 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v488->__vftable[2].~facet_0)(v488, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v478 += 3;
        v475 += 3;
        v477 += 3;
        v476 += 3;
      }

      goto LABEL_126;
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v464, v465, v466, v471, v472, v473, v474, v467, v468, v469, v470) == 4)
    {
      v500 = 0;
      v501 = 0;
      for (j = 0; ; j += 4)
      {
        if (objc_msgSend_indexCount(*(v44 + 72), v489, v490, v491, v496, v497, v498, v499, v492, v493, v494, v495) <= j)
        {
          goto LABEL_126;
        }

        if (v417 == 32)
        {
          v504 = *(v452 + v500);
        }

        else if (v417 == 16)
        {
          v504 = vmovl_u16(*(v452 + v501));
        }

        else
        {
          v503.i32[1] = 0;
          v681 = 0u;
          if (v417 != 8)
          {
            goto LABEL_86;
          }

          v503.i32[0] = *(v452 + j);
          v504 = vmovl_u16(*&vmovl_u8(v503));
        }

        v681 = v504;
LABEL_86:
        v505 = sub_239E98B94(&v700, "4 ", 2);
        v506 = MEMORY[0x23EE80140](v505, v681.u32[0]);
        v507 = sub_239E98B94(v506, " ", 1);
        v508 = MEMORY[0x23EE80140](v507, v681.u32[1]);
        v509 = sub_239E98B94(v508, " ", 1);
        v510 = MEMORY[0x23EE80140](v509, v681.u32[2]);
        v511 = sub_239E98B94(v510, " ", 1);
        v512 = MEMORY[0x23EE80140](v511, v681.u32[3]);
        std::ios_base::getloc((v512 + *(*v512 - 24)));
        v513 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v513->__vftable[2].~facet_0)(v513, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v501 += 8;
        v500 += 16;
      }
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v489, v490, v491, v496, v497, v498, v499, v492, v493, v494, v495) == 1)
    {
      v525 = (v452 + 2);
      v526 = (v452 + 4);
      v527 = (v452 + 1);
      v528 = 1;
      while (objc_msgSend_indexCount(*(v44 + 72), v514, v515, v516, v521, v522, v523, v524, v517, v518, v519, v520) > (v528 - 1))
      {
        switch(v417)
        {
          case 32:
            v529 = *(v526 - 1);
            v530 = *v526;
            break;
          case 16:
            v529 = *(v525 - 1);
            v530 = *v525;
            break;
          case 8:
            v529 = *(v527 - 1);
            v530 = *v527;
            break;
          default:
            v529 = 0;
            v530 = 0;
            break;
        }

        v531 = sub_239E98B94(&v700, "2 ", 2);
        v532 = MEMORY[0x23EE80140](v531, v529);
        v533 = sub_239E98B94(v532, " ", 1);
        v534 = MEMORY[0x23EE80140](v533, v530);
        std::ios_base::getloc((v534 + *(*v534 - 24)));
        v535 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v535->__vftable[2].~facet_0)(v535, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v528 += 2;
        v525 += 2;
        v526 += 2;
        v527 += 2;
      }

      goto LABEL_126;
    }

    if (!objc_msgSend_geometryType(*(v44 + 72), v514, v515, v516, v521, v522, v523, v524, v517, v518, v519, v520))
    {
      for (k = 0; objc_msgSend_indexCount(*(v44 + 72), v536, v537, v538, v543, v544, v545, v546, v539, v540, v541, v542) > k; ++k)
      {
        switch(v417)
        {
          case 32:
            v663 = *(v452 + 4 * k);
            break;
          case 16:
            v663 = *(v452 + 2 * k);
            break;
          case 8:
            v663 = *(v452 + k);
            break;
          default:
            v663 = 0;
            break;
        }

        v664 = sub_239E98B94(&v700, "1 ", 2);
        MEMORY[0x23EE80140](v664, v663);
      }

      goto LABEL_126;
    }

    if (objc_msgSend_geometryType(*(v44 + 72), v536, v537, v538, v543, v544, v545, v546, v539, v540, v541, v542) == 5)
    {
      v565 = objc_msgSend_topology(*(v44 + 72), v547, v548, v549, v554, v555, v556, v557, v550, v551, v552, v553);
      if (v565)
      {
        v570 = objc_msgSend_topology(*(v44 + 72), v558, v559, v560, v566, v567, v568, v569, v561, v562, v563, v564);
        v582 = objc_msgSend_faceTopology(v570, v571, v572, v573, v578, v579, v580, v581, v574, v575, v576, v577);
        v583 = v582 == 0;

        if (!v583)
        {
          v595 = objc_msgSend_topology(*(v44 + 72), v584, v585, v586, v591, v592, v593, v594, v587, v588, v589, v590);
          v607 = objc_msgSend_faceTopology(v595, v596, v597, v598, v603, v604, v605, v606, v599, v600, v601, v602);
          v619 = objc_msgSend_map(v607, v608, v609, v610, v615, v616, v617, v618, v611, v612, v613, v614);

          v638 = objc_msgSend_bytes(v619, v620, v621, v622, v627, v628, v629, v630, v623, v624, v625, v626);
          v643 = 0;
          v644 = 0;
          while (1)
          {
            v645 = objc_msgSend_topology(*(v44 + 72), v631, v632, v633, v639, v640, v641, v642, v634, v635, v636, v637);
            v657 = objc_msgSend_faceCount(v645, v646, v647, v648, v653, v654, v655, v656, v649, v650, v651, v652) > v643;

            if (!v657)
            {
              break;
            }

            v658 = *(v638 + v643);
            v659 = MEMORY[0x23EE80140](&v700, *(v638 + v643));
            sub_239E98B94(v659, " ", 1);
            for (; v658; --v658)
            {
              switch(v417)
              {
                case 32:
                  v660 = *(v452 + 4 * v644);
                  break;
                case 16:
                  v660 = *(v452 + 2 * v644);
                  break;
                case 8:
                  v660 = *(v452 + v644);
                  break;
                default:
                  v660 = 0;
                  goto LABEL_113;
              }

              ++v644;
LABEL_113:
              MEMORY[0x23EE80140](&v700, v660);
            }

            std::ios_base::getloc((&v700 + *(v700.__r_.__value_.__r.__words[0] - 24)));
            v661 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
            (v661->__vftable[2].~facet_0)(v661, 10);
            std::locale::~locale(__p);
            std::ostream::put();
            std::ostream::flush();
            ++v643;
          }
        }
      }
    }

LABEL_126:
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v700 + *(v700.__r_.__value_.__r.__words[0] - 24)), *&v701[*(v700.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v43 = v666;
    LODWORD(v45) = v677;
LABEL_129:
    v700.__r_.__value_.__r.__words[0] = v672;
    *(v700.__r_.__value_.__r.__words + *(v672 - 24)) = v671;
    MEMORY[0x23EE80040](&v700.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x23EE80250](v702);
    *&v684 = v670;
    *(&v684 + *(v670 - 24)) = v669;
    *&v685 = v668;
    *(&v685 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v688) < 0)
    {
      operator delete(v687[1]);
    }

    *(&v685 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v686);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v690);
    v8 = v678;
    if (v679)
    {
      goto LABEL_134;
    }

    v44 += 80;
  }

  while (v44 != v675);
LABEL_133:
  sub_239E552A0(v43, "");
LABEL_134:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v700.__r_.__value_.__r.__words[0] = &v697;
  sub_239E99B30(&v700);
LABEL_138:
}

void sub_239EE737C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, std::locale a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_239EE7E70(&STACK[0x2A0], MEMORY[0x277D82810]);
  MEMORY[0x23EE80250](a15);
  sub_239EE7F38(&a41, MEMORY[0x277D82818]);
  MEMORY[0x23EE80250](&a57);
  if (a2 == 1)
  {
    v61 = __cxa_begin_catch(a1);
    v62 = (*(*v61 + 16))(v61);
    sub_239E552A0(a16, v62);
    __cxa_end_catch();
    JUMPOUT(0x239EE72FCLL);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  STACK[0x2A0] = &STACK[0x288];
  sub_239E99B30(&STACK[0x2A0]);

  _Unwind_Resume(a1);
}

uint64_t *sub_239EE76F8(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_239EE8484((a1 + 3), 24);
  return a1;
}

void sub_239EE7974(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

void sub_239EE799C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39[19] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = objc_msgSend_path(v5, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v18 = v17;
  if (v17)
  {
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v19 = v17;
    v30 = objc_msgSend_cStringUsingEncoding_(v19, v20, 4, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    sub_239E552A0(v35, v30);
    bzero(v37, 0x240uLL);
    if (v36 >= 0)
    {
      v31 = v35;
    }

    else
    {
      v31 = v35[0];
    }

    sub_239EE5698(v37, v31, 8);
    if (v38[15])
    {
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      sub_239EE3278(a1, v37, __p);
      v32 = HIBYTE(v34);
      if (v34 < 0)
      {
        v32 = __p[1];
      }

      if (v32)
      {
        *a3 = *__p;
        a3[2] = v34;
      }

      else
      {
        sub_239E552A0(a3, "");
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      sub_239E552A0(a3, "Could not open PLY file");
    }

    v37[0] = *MEMORY[0x277D82808];
    *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x23EE80040](v38);
    std::istream::~istream();
    MEMORY[0x23EE80250](v39);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }
  }

  else
  {
    sub_239E552A0(a3, "Could not open PLY file: Incorrect URL");
  }
}

void sub_239EE7BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_239EE585C(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EE7C30(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = a3;
  return a1;
}

void sub_239EE7C90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EE7CAC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_239EE7CF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_239EE7E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EE80040](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_239EE7F38(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_239EE8088(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x23EE80060](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_239EE81F0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x239EE81B0);
  }

  __cxa_rethrow();
}

void sub_239EE82E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE802C0](v1, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EE8310(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EE8348(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EE8364(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D176C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_239EE83A4(void ***a1)
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
        v4 -= 56;
        sub_239EE842C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_239EE842C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t sub_239EE8484(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE80200](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_239E98A8C(a1);
  return a1;
}

void sub_239EE8518(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_239EE8540(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_239EE86B8(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v7 + 48) = *(a2 + 48);
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  sub_239EE8714(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_239EE8880(&v15);
  return v14;
}

void sub_239EE86A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239EE8880(va);
  _Unwind_Resume(a1);
}

void sub_239EE86B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EE8714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v8;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      sub_239EE842C(a1, v5);
      v5 += 56;
    }
  }

  return sub_239EE87F4(v10);
}

uint64_t sub_239EE87F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EE882C(a1);
  }

  return a1;
}

void sub_239EE882C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_239EE842C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_239EE8880(void **a1)
{
  sub_239EE88B4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EE88B4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_239EE842C(v4, i - 56);
  }
}

uint64_t sub_239EE88FC(uint64_t a1)
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

uint64_t sub_239EE89EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D17DF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_239EE8A44(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17E78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_239EE8A90(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, 24);
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}