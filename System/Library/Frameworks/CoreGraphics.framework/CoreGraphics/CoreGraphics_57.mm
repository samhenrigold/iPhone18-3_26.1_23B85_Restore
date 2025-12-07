_DWORD *RGBAf_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6, double a7, double a8, double a9)
{
  LODWORD(v9) = a2[2];
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3) - a5;
  v13 = *(a2 + 15);
  v14 = *(a2 + 16);
  v15 = *(a2 + 7);
  v16 = *(a2 + 9);
  v17 = *(a2 + 5) + v16 * a4;
  v18 = *(a1 + 32);
  v19 = &v18[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v20 = *(a1 + 176);
  result = _blt_float;
  if (v20)
  {
    v22 = a3;
    v23 = *(a2 + 11);
    v24 = *(a2 + 13);
    *&a9 = 1.0 - v9;
    v25 = vdupq_lane_s32(*&a9, 0);
    v89 = v14 + 16 * v22 + 8;
    do
    {
      if (((v24 - v17) | (v17 - v23)) < 0)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = ((v17 & ~(-1 << v15)) >> (v15 - 4)) & 0xF;
        if (v26 - 7 >= 9)
        {
          v27 = -v13;
        }

        else
        {
          v27 = v13;
        }

        v28 = weights_21890[v26] & 0xF;
      }

      v29 = &v18[(v17 >> v15) * v13];
      if (v10 == 1)
      {
        if (a5 >= 1)
        {
          v30 = v89;
          v31 = a5;
          do
          {
            v32 = *v30;
            v33 = &v29[*(v30 - 1)];
            if (v19 >= v33)
            {
              v34 = &v29[*(v30 - 1)];
            }

            else
            {
              v34 = v19;
            }

            if (v18 > v34)
            {
              v34 = v18;
            }

            v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
            if ((v32 & 0xF) != 0)
            {
              v36 = (v33 + (v32 >> 4));
              if (v19 < v36)
              {
                v36 = v19;
              }

              if (v18 > v36)
              {
                v36 = v18;
              }

              v37 = (*v36 << 24) | (v36[1] << 16) | (v36[2] << 8);
              if (v28)
              {
                v38 = (v33 + v27);
                if (v19 >= v38)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = v19;
                }

                if (v18 > v39)
                {
                  v39 = v18;
                }

                v40 = &v38[v32 >> 4];
                if (v19 < v40)
                {
                  v40 = v19;
                }

                if (v18 > v40)
                {
                  v40 = v18;
                }

                v41 = BLEND8_21892[v28];
                v35 = v35 - ((v41 & v35) >> v28) + ((v41 & ((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8))) >> v28);
                v37 = v37 - ((v41 & v37) >> v28) + ((((*v40 << 24) | (v40[1] << 16) | (v40[2] << 8)) & v41) >> v28);
              }

              v35 = v35 - ((BLEND8_21892[*v30 & 0xF] & v35) >> (*v30 & 0xF)) + ((BLEND8_21892[*v30 & 0xF] & v37) >> (*v30 & 0xF));
            }

            else if (v28)
            {
              v42 = (v33 + v27);
              if (v19 < v33 + v27)
              {
                v42 = v19;
              }

              if (v18 > v42)
              {
                v42 = v18;
              }

              v35 = v35 - ((BLEND8_21892[v28] & v35) >> v28) + ((((*v42 << 24) | (v42[1] << 16) | (v42[2] << 8)) & BLEND8_21892[v28]) >> v28);
            }

            v43 = *&_blt_float[HIBYTE(v35)];
            if (v9 >= 1.0)
            {
              v44 = *&_blt_float[BYTE2(v35)];
              v45 = *&_blt_float[BYTE1(v35)];
              v46 = 1.0;
            }

            else
            {
              v43 = v9 * v43;
              v44 = v9 * *&_blt_float[BYTE2(v35)];
              v45 = v9 * *&_blt_float[BYTE1(v35)];
              v46 = v9;
            }

            v30 += 2;
            v11->f32[0] = v43;
            v11->f32[1] = v44;
            v11->f32[2] = v45;
            v11->f32[3] = v46;
            ++v11;
            --v31;
          }

          while (v31);
        }
      }

      else if (a5 >= 1)
      {
        v47 = v89;
        v48 = a5;
        do
        {
          v49 = *(v47 - 1);
          v50 = *v47;
          v51 = &v29[v49];
          if (v19 >= &v29[v49])
          {
            v52 = &v29[v49];
          }

          else
          {
            v52 = v19;
          }

          if (v18 > v52)
          {
            v52 = v18;
          }

          v53 = (*v52 << 24) | (v52[1] << 16) | (v52[2] << 8);
          if ((v50 & 0xF) != 0)
          {
            v54 = &v51[v50 >> 4];
            if (v19 < v54)
            {
              v54 = v19;
            }

            if (v18 > v54)
            {
              v54 = v18;
            }

            v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
            if (v28)
            {
              v56 = &v51[v27];
              if (v19 >= &v51[v27])
              {
                v57 = &v51[v27];
              }

              else
              {
                v57 = v19;
              }

              if (v18 > v57)
              {
                v57 = v18;
              }

              v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
              v59 = &v56[v50 >> 4];
              if (v19 < v59)
              {
                v59 = v19;
              }

              if (v18 > v59)
              {
                v59 = v18;
              }

              v60 = BLEND8_21892[v28];
              v53 = v53 - ((v60 & v53) >> v28) + ((v60 & v58) >> v28);
              v55 = v55 - ((v60 & v55) >> v28) + ((((*v59 << 24) | (v59[1] << 16) | (v59[2] << 8)) & v60) >> v28);
            }

            v53 = v53 - ((BLEND8_21892[*v47 & 0xF] & v53) >> (*v47 & 0xF)) + ((BLEND8_21892[*v47 & 0xF] & v55) >> (*v47 & 0xF));
          }

          else if (v28)
          {
            v61 = &v51[v27];
            if (v19 < &v51[v27])
            {
              v61 = v19;
            }

            if (v18 > v61)
            {
              v61 = v18;
            }

            v53 = v53 - ((BLEND8_21892[v28] & v53) >> v28) + ((((*v61 << 24) | (v61[1] << 16) | (v61[2] << 8)) & BLEND8_21892[v28]) >> v28);
          }

          v62 = *&_blt_float[HIBYTE(v53)];
          if (v9 >= 1.0)
          {
            v64 = _blt_float[BYTE2(v53)];
            v65 = _blt_float[BYTE1(v53)];
            v11->f32[0] = v62;
            v11->i32[1] = v64;
            v11->i32[2] = v65;
            v11->f32[3] = 1.0;
          }

          else
          {
            v63.f32[0] = v9 * v62;
            if (v9 > 0.0)
            {
              v63.f32[1] = v9 * *&_blt_float[BYTE2(v53)];
              v63.i64[1] = __PAIR64__(LODWORD(v9), v9 * *&_blt_float[BYTE1(v53)]);
              *v11 = vmlaq_f32(v63, v25, *v11);
            }
          }

          v47 += 2;
          ++v11;
          --v48;
        }

        while (v48);
      }

      v11 += v12;
      v17 += v16;
      --a6;
    }

    while (a6);
  }

  else
  {
    v66 = (v14 + 16 * a3);
    *&a9 = 1.0 - v9;
    v67 = vdupq_lane_s32(*&a9, 0);
    do
    {
      v68 = &v18[(v17 >> v15) * v13];
      if (v10 == 1)
      {
        if (a5 >= 1)
        {
          v69 = v66;
          v70 = a5;
          do
          {
            v71 = *v69;
            v69 += 2;
            v72 = &v68[v71];
            if (v19 < &v68[v71])
            {
              v72 = v19;
            }

            if (v18 > v72)
            {
              v72 = v18;
            }

            v73 = v72[1];
            v74 = v72[2];
            v75 = *&_blt_float[*v72];
            if (v9 >= 1.0)
            {
              v76 = *&_blt_float[v73];
              v77 = *&_blt_float[v74];
              v78 = 1.0;
            }

            else
            {
              v75 = v9 * v75;
              v76 = v9 * *&_blt_float[v73];
              v77 = v9 * *&_blt_float[v74];
              v78 = v9;
            }

            v11->f32[0] = v75;
            v11->f32[1] = v76;
            v11->f32[2] = v77;
            v11->f32[3] = v78;
            ++v11;
            --v70;
          }

          while (v70);
        }
      }

      else
      {
        v79 = v66;
        v80 = a5;
        if (a5 >= 1)
        {
          do
          {
            v81 = *v79;
            v79 += 2;
            v82 = &v68[v81];
            if (v19 < &v68[v81])
            {
              v82 = v19;
            }

            if (v18 > v82)
            {
              v82 = v18;
            }

            v83 = v82[1];
            v84 = v82[2];
            v85 = *&_blt_float[*v82];
            if (v9 >= 1.0)
            {
              v87 = _blt_float[v83];
              v88 = _blt_float[v84];
              v11->f32[0] = v85;
              v11->i32[1] = v87;
              v11->i32[2] = v88;
              v11->f32[3] = 1.0;
            }

            else
            {
              v86.f32[0] = v9 * v85;
              if (v9 > 0.0)
              {
                v86.f32[1] = v9 * *&_blt_float[v83];
                v86.i64[1] = __PAIR64__(LODWORD(v9), v9 * *&_blt_float[v84]);
                *v11 = vmlaq_f32(v86, v67, *v11);
              }
            }

            ++v11;
            --v80;
          }

          while (v80);
        }
      }

      v11 += v12;
      v17 += v16;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t RGBAf_image_mark_W8(uint64_t a1, float *a2, int a3, int a4, unsigned int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, int32x4_t a13)
{
  v13 = a2[2];
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 3) - a5;
  v18 = *(a2 + 15);
  v17 = *(a2 + 16);
  v19 = *(a2 + 7);
  v20 = *(a2 + 9);
  v21 = *(a2 + 5) + v20 * a4;
  v22 = *(a1 + 32);
  v23 = &v22[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  if (*(a1 + 176))
  {
    v24 = *(a2 + 11);
    result = *(a2 + 13);
    v26 = vdup_n_s32(v13 < 1.0);
    if (v13 >= 1.0)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = a2[2];
    }

    v28 = v17 + 16 * a3 + 8;
    __asm { FMOV            V3.2S, #1.0 }

    v34 = vcltz_s32(vshl_n_s32(v26, 0x1FuLL));
    while (1)
    {
      if (((result - v21) | (v21 - v24)) < 0)
      {
        v37 = 0;
        v36 = 0;
      }

      else
      {
        v35 = ((v21 & ~(-1 << v19)) >> (v19 - 4)) & 0xF;
        if (v35 - 7 >= 9)
        {
          v36 = -v18;
        }

        else
        {
          v36 = v18;
        }

        v37 = weights_21890[v35] & 0xF;
      }

      v38 = &v22[(v21 >> v19) * v18];
      if (LODWORD(v14) == 1)
      {
        if (a5 >= 1)
        {
          v39 = v28;
          v40 = a5;
          do
          {
            v41 = *v39;
            v42 = &v38[*(v39 - 1)];
            if (v23 >= v42)
            {
              v43 = &v38[*(v39 - 1)];
            }

            else
            {
              v43 = v23;
            }

            if (v22 > v43)
            {
              v43 = v22;
            }

            v44 = *v43;
            if ((v41 & 0xF) != 0)
            {
              v45 = (v42 + (v41 >> 4));
              if (v23 < v45)
              {
                v45 = v23;
              }

              if (v22 > v45)
              {
                v45 = v22;
              }

              v46 = *v45;
              if (v37)
              {
                v47 = (v42 + v36);
                if (v23 >= v47)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v23;
                }

                if (v22 > v48)
                {
                  v48 = v22;
                }

                v49 = *v48;
                v50 = &v47[v41 >> 4];
                if (v23 < v50)
                {
                  v50 = v23;
                }

                if (v22 > v50)
                {
                  v50 = v22;
                }

                v51 = BLEND8_21892[v37];
                v44 = v44 - ((v51 & v44) >> v37) + ((v51 & v49) >> v37);
                v46 = v46 - ((v51 & v46) >> v37) + ((v51 & *v50) >> v37);
              }

              v44 = v44 - ((BLEND8_21892[*v39 & 0xF] & v44) >> (*v39 & 0xF)) + ((BLEND8_21892[*v39 & 0xF] & v46) >> (*v39 & 0xF));
            }

            else if (v37)
            {
              v52 = (v42 + v36);
              if (v23 < v52)
              {
                v52 = v23;
              }

              if (v22 > v52)
              {
                v52 = v22;
              }

              v44 = v44 - ((BLEND8_21892[v37] & v44) >> v37) + ((BLEND8_21892[v37] & *v52) >> v37);
            }

            v53 = *&_blt_float[v44];
            if (v13 < 1.0)
            {
              v53 = v13 * v53;
            }

            v15->f32[0] = v53;
            v15->f32[1] = v53;
            v39 += 2;
            v15->f32[2] = v53;
            v15->f32[3] = v27;
            ++v15;
            --v40;
          }

          while (v40);
        }

        goto LABEL_82;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_82:
      v15 += v16;
      v21 += v20;
      if (!--a6)
      {
        return result;
      }
    }

    v54 = v28;
    v55 = a5;
    while (1)
    {
      v56 = *v54;
      v57 = &v38[*(v54 - 1)];
      if (v23 >= v57)
      {
        v58 = &v38[*(v54 - 1)];
      }

      else
      {
        v58 = v23;
      }

      if (v22 > v58)
      {
        v58 = v22;
      }

      v59 = *v58;
      if ((v56 & 0xF) != 0)
      {
        v60 = (v57 + (v56 >> 4));
        if (v23 < v60)
        {
          v60 = v23;
        }

        if (v22 > v60)
        {
          v60 = v22;
        }

        v61 = *v60;
        if (v37)
        {
          v62 = (v57 + v36);
          if (v23 >= v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = v23;
          }

          if (v22 > v63)
          {
            v63 = v22;
          }

          v64 = *v63;
          v65 = &v62[v56 >> 4];
          if (v23 < v65)
          {
            v65 = v23;
          }

          if (v22 > v65)
          {
            v65 = v22;
          }

          v66 = BLEND8_21892[v37];
          v59 = v59 - ((v66 & v59) >> v37) + ((v66 & v64) >> v37);
          v61 = v61 - ((v66 & v61) >> v37) + ((v66 & *v65) >> v37);
        }

        v59 = v59 - ((BLEND8_21892[*v54 & 0xF] & v59) >> (*v54 & 0xF)) + ((BLEND8_21892[*v54 & 0xF] & v61) >> (*v54 & 0xF));
      }

      else if (v37)
      {
        v67 = (v57 + v36);
        if (v23 < v67)
        {
          v67 = v23;
        }

        if (v22 > v67)
        {
          v67 = v22;
        }

        v59 = v59 - ((BLEND8_21892[v37] & v59) >> v37) + ((BLEND8_21892[v37] & *v67) >> v37);
      }

      v68.i32[1] = HIDWORD(_D3);
      v68.i32[0] = _blt_float[v59];
      *a13.i8 = vbsl_s8(v34, vmul_n_f32(v68, v13), v68);
      v69 = vzip1q_s32(a13, a13);
      v69.i32[2] = a13.i32[0];
      if (*&a13.i32[1] >= 1.0)
      {
        goto LABEL_80;
      }

      if (*&a13.i32[1] > 0.0)
      {
        break;
      }

LABEL_81:
      v54 += 2;
      ++v15;
      if (!--v55)
      {
        goto LABEL_82;
      }
    }

    v69 = vmlaq_n_f32(v69, *v15, 1.0 - *&a13.i32[1]);
LABEL_80:
    *v15 = v69;
    goto LABEL_81;
  }

  v70 = (v17 + 16 * a3);
  result = a5;
  v71 = vdup_n_s32(v13 < 1.0);
  if (v13 >= 1.0)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = a2[2];
  }

  __asm { FMOV            V3.2S, #1.0 }

  v74 = vcltz_s32(vshl_n_s32(v71, 0x1FuLL));
  do
  {
    v75 = &v22[(v21 >> v19) * v18];
    if (LODWORD(v14) != 1)
    {
      v81 = v70;
      v82 = a5;
      if (a5 < 1)
      {
        goto LABEL_109;
      }

      while (1)
      {
        v83 = *v81;
        v81 += 2;
        v84 = &v75[v83];
        if (v23 < &v75[v83])
        {
          v84 = v23;
        }

        if (v22 > v84)
        {
          v84 = v22;
        }

        v85.i32[1] = HIDWORD(_D3);
        v85.i32[0] = _blt_float[*v84];
        *a13.i8 = vbsl_s8(v74, vmul_n_f32(v85, v13), v85);
        v86 = vzip1q_s32(a13, a13);
        v86.i32[2] = a13.i32[0];
        if (*&a13.i32[1] >= 1.0)
        {
          goto LABEL_107;
        }

        if (*&a13.i32[1] > 0.0)
        {
          break;
        }

LABEL_108:
        ++v15;
        if (!--v82)
        {
          goto LABEL_109;
        }
      }

      v86 = vmlaq_n_f32(v86, *v15, 1.0 - *&a13.i32[1]);
LABEL_107:
      *v15 = v86;
      goto LABEL_108;
    }

    if (a5 >= 1)
    {
      v76 = v70;
      v77 = a5;
      do
      {
        v78 = *v76;
        v76 += 2;
        v79 = &v75[v78];
        if (v23 < &v75[v78])
        {
          v79 = v23;
        }

        if (v22 > v79)
        {
          v79 = v22;
        }

        v80 = *&_blt_float[*v79];
        if (v13 < 1.0)
        {
          v80 = v13 * v80;
        }

        v15->f32[0] = v80;
        v15->f32[1] = v80;
        v15->f32[2] = v80;
        v15->f32[3] = v72;
        ++v15;
        --v77;
      }

      while (v77);
    }

LABEL_109:
    v15 += v16;
    v21 += v20;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t RGBAf_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v19[482] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v7 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v8 = *(*(*v1 + 56) + 16 * *v2 + 8 * v7 + 4 * (*(v2 + 6) == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, &v12, v17) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) != 0x3000000)
  {
    if (v12)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v4 + 16))
  {
    v11 = RGBAf_shade_radial_RGB;
  }

  else if (*(v4 + 24))
  {
    v11 = RGBAf_shade_conic_RGB;
  }

  else if (v15 < 2)
  {
    v11 = RGBAf_shade_axial_RGB;
  }

  else
  {
    v11 = RGBAf_shade_custom_RGB;
  }

  v12 = v11;
LABEL_22:
  v13 = *v6;
  v14 = v13;
  RGBAf_image_mark(v5, &v12, v8, v10);
  if (v16 && (v16 < &v18 || v19 < v16))
  {
    free(v16);
  }

  return 1;
}

void RGBAf_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(a1 + 40);
  }

  else
  {
    v21 = v6;
  }

  if (v5 != 0.0)
  {
    v23 = &v15[1] + 1;
    v24 = vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL));
    while (1)
    {
      LODWORD(v25) = v12;
      if (v7 >= v10)
      {
        LODWORD(v25) = v13;
        if (v7 <= v11)
        {
          LODWORD(v25) = (v9 * (v7 - v8));
        }
      }

      if ((v25 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v30 = 0;
          goto LABEL_30;
        }

        v27 = *v18;
        v29 = vmul_n_f32(*v17, *v18);
        v28 = *v18 * v17[1].f32[0];
      }

      else
      {
        v26 = v19 + 4 * (3 * v25);
        v25 = v25;
        if (!v20)
        {
          v25 = 0;
        }

        v27 = v21[v25];
        v28 = *(v26 + 8);
        v29 = vbsl_s8(v24, *v26, vmul_n_f32(*v26, v27));
        if (v20)
        {
          v28 = v27 * v28;
        }
      }

      *(v23 - 3) = v29;
      v30 = -1;
      *(v23 - 1) = v28;
      *v23 = v27;
LABEL_30:
      v7 = v5 + v7;
      *v14 = v30;
      v14 = (v14 + 1);
      v23 += 4;
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      v32 = *v18;
      v35 = vmul_n_f32(*v17, *v18);
      v33 = *v18 * v17[1].f32[0];
    }

    else
    {
      v31 = (v19 + 4 * (3 * v12));
      v12 = v12;
      if (!v20)
      {
        v12 = 0;
      }

      v32 = v21[v12];
      v33 = v31[1].f32[0];
      v34 = vmul_n_f32(*v31, v32);
      if (v20)
      {
        v33 = v32 * v33;
      }

      v35 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL)), *v31, v34);
    }

    v36 = a4 + 4;
    do
    {
      *v15 = v35;
      v15[1].f32[0] = v33;
      v15[1].f32[1] = v32;
      v15[2] = v35;
      v15[3].f32[0] = v33;
      v15[3].f32[1] = v32;
      v15[4] = v35;
      v15[5].f32[0] = v33;
      v15[5].f32[1] = v32;
      v15[6] = v35;
      v15[7].f32[0] = v33;
      v15[7].f32[1] = v32;
      v15 += 8;
      v36 -= 4;
      *v14++ = -1;
    }

    while (v36 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = a4;
    }

    bzero(v14, ((a4 - v22 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t RGBAf_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(v6 + 4);
  v8 = v7 * a2;
  v9 = v7 * a3;
  v10 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), v9), v10, v8));
  v11 = *(result + 304);
  v12 = *(result + 336);
  v13 = *(result + 348);
  v14 = *(result + 344);
  v15 = *(result + 356);
  v16 = *(result + 144);
  v17 = *(result + 384);
  v18 = *(result + 392);
  if (!v18)
  {
    v18 = *(result + 272);
  }

  v19 = *(result + 32);
  v20 = *(result + 40);
  if (v20)
  {
    v21 = *(result + 48);
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v6 = *(result + 40);
  }

  v22 = 3 * *(result + 48);
  v23 = (*(result + 152) + 12);
  v24 = vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL));
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v11, v25))), vmovn_s32(vcgtq_f32(v25, v11)))) & 1) == 0)
    {
      v29 = (v15 * (*&a6.i32[1] - v13));
      v30 = v14 * (*a6.i32 - v12);
      v31 = v19 + 4 * v22 * v29 + 12 * v30;
      v32 = v6 + 4 * v21 * v29;
      result = v30;
      if (!v20)
      {
        result = 0;
      }

      v26 = *(v32 + 4 * result);
      v28 = *(v31 + 8);
      v27 = vbsl_s8(v24, *v31, vmul_n_f32(*v31, v26));
      if (v20)
      {
        v28 = v26 * v28;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      v26 = *v18;
      v27 = vmul_n_f32(*v17, *v18);
      v28 = *v18 * v17[1].f32[0];
LABEL_16:
      *(v23 - 3) = v27;
      v33 = -1;
      *(v23 - 1) = v28;
      *v23 = v26;
      goto LABEL_18;
    }

    v33 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v10, *a6.i8);
    *v16++ = v33;
    v23 += 4;
    --a4;
  }

  while (a4);
  return result;
}

void RGBAf_shade_conic_RGB(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
{
  v7 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v7, *(*&a1[34] + 4) * a2));
  v8 = a1[42].f32[0];
  v9 = a1[43].f32[0];
  v10 = a1[38].f32[0];
  v12 = a1[18];
  v11 = a1[19];
  v13 = a1[4];
  v14 = a1[5];
  if (v14)
  {
    v15 = a1[5];
  }

  else
  {
    v15 = a1[34];
  }

  v16 = a1[38].f32[1] - v10;
  do
  {
    v32 = a6;
    v17 = v9 * ((v10 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v16)) - v8);
    LODWORD(v18) = vcvtms_s32_f32(v17);
    v19 = ceilf(v17);
    v20 = vcvtms_s32_f32(v9 + v17);
    if (v17 < 0.0)
    {
      LODWORD(v18) = v20;
    }

    v21 = ceilf(v17 - v9);
    if (v17 > v9)
    {
      v19 = v21;
    }

    LODWORD(v22) = v19;
    v23 = (*&v13 + 12 * v18);
    v18 = v18;
    if (!*&v14)
    {
      v18 = 0;
    }

    v24 = *(*&v15 + 4 * v18);
    v25 = v23[1].f32[0];
    v26 = (*&v13 + 12 * v22);
    v22 = v22;
    if (!*&v14)
    {
      v22 = 0;
    }

    v27 = *(*&v15 + 4 * v22);
    v28 = *v23;
    v29 = *v26;
    v30 = v26[1].f32[0];
    if (v14)
    {
      v28 = vmul_n_f32(v28, v24);
      v25 = v24 * v25;
      v29 = vmul_n_f32(v29, v27);
      v30 = v27 * v30;
    }

    v31 = v17 - floorf(v17);
    *v11 = vmla_n_f32(v28, vsub_f32(v29, v28), v31);
    v11[1].f32[0] = v25 + (v31 * (v30 - v25));
    v11[1].f32[1] = v24 + (v31 * (v27 - v24));
    a6.n128_u64[1] = v32.n128_u64[1];
    a6.n128_u64[0] = vadd_f32(v7, v32.n128_u64[0]);
    v11 += 2;
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

void RGBAf_shade_radial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 400);
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(a1 + 272);
  v9 = v8[1];
  v10 = v9 * a2;
  v11 = v9 * a3;
  v12 = *(a1 + 296) + ((*(a1 + 288) * v11) + (v6 * v10));
  v13 = *(a1 + 300) + ((v11 * *(a1 + 292)) + (v7 * v10));
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 324);
  v19 = v5[2];
  v20 = v5[4];
  v21 = v5[5];
  v22 = v5[7];
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v27 = *(a1 + 392);
  }

  else
  {
    v27 = v8;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  if (v29)
  {
    v8 = *(a1 + 40);
  }

  if (v19 != 0.0 || v22 != 0.0 || v7 != 0.0)
  {
    v33 = *(a1 + 320);
    v34 = v5[3];
    v35 = v5[8];
    v36 = -v5[6];
    v37 = v17 - v16;
    v38 = &v24[1] + 1;
    v39 = vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL));
    while (1)
    {
      v40 = v36 + ((v12 + v12) * v19);
      v41 = ((v13 * v13) + (v12 * v12)) - v22;
      if (v21 == 0.0)
      {
        v48 = v41 / v40;
      }

      else
      {
        v42 = ((v21 * -4.0) * v41) + (v40 * v40);
        if (v42 < 0.0)
        {
          goto LABEL_48;
        }

        v43 = sqrtf(v42);
        v44 = v35 * (v40 - v43);
        v45 = v40 + v43;
        v46 = v35 * v45;
        v47 = (v35 * v45) <= v44;
        if ((v35 * v45) <= v44)
        {
          v48 = v35 * v45;
        }

        else
        {
          v48 = v44;
        }

        if (v47)
        {
          v46 = v44;
        }

        if (v46 < 0.0)
        {
          v49 = v46 < v34;
LABEL_30:
          LODWORD(v50) = v33;
          if (v49)
          {
            goto LABEL_48;
          }

LABEL_31:
          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v46 <= 1.0)
        {
          v51 = v16 + (v46 * v37);
          goto LABEL_42;
        }

        if ((v18 & 0x80000000) == 0)
        {
          LODWORD(v50) = v18;
          if (v46 <= v20)
          {
LABEL_43:
            v52 = v28 + 4 * (3 * v50);
            v50 = v50;
            if (!v29)
            {
              v50 = 0;
            }

            v53 = v8[v50];
            v54 = *(v52 + 8);
            v55 = vbsl_s8(v39, *v52, vmul_n_f32(*v52, v53));
            if (v29)
            {
              v54 = v53 * v54;
            }

            goto LABEL_50;
          }
        }
      }

      if (v48 < 0.0)
      {
        v49 = v48 < v34;
        goto LABEL_30;
      }

      if (v48 > 1.0)
      {
        LODWORD(v50) = v18;
        if (v48 > v20)
        {
          goto LABEL_48;
        }

        goto LABEL_31;
      }

      v51 = v16 + (v48 * v37);
LABEL_42:
      LODWORD(v50) = (v15 * (v51 - v14));
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_48:
      if (!v26)
      {
        v56 = 0;
        goto LABEL_52;
      }

      v53 = *v27;
      v55 = vmul_n_f32(*v26, *v27);
      v54 = *v27 * v26[1].f32[0];
LABEL_50:
      *(v38 - 3) = v55;
      v56 = -1;
      *(v38 - 1) = v54;
      *v38 = v53;
LABEL_52:
      v12 = v6 + v12;
      v13 = v7 + v13;
      *v23++ = v56;
      v38 += 4;
      if (!--a4)
      {
        return;
      }
    }
  }

  v30 = v13 * v13;
  v31 = -v21;
  if (v30 <= -v21)
  {
    v57 = fabsf(v5[8]);
    v58 = v21 * -4.0;
    v59 = v17 - v16;
    v60 = v28 + 4 * (3 * v18);
    if (v29)
    {
      v61 = v18;
    }

    else
    {
      v61 = 0;
    }

    v62 = a4 + 2;
    v63 = vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL));
    while (1)
    {
      v64 = v30 + (v12 * v12);
      v65 = v6 + v12;
      v66 = v30 + (v65 * v65);
      if (v64 > v31 && v66 > v31)
      {
        if ((v18 & 0x80000000) != 0)
        {
          if (!v26)
          {
            v87 = 0;
            v86 = 0;
            goto LABEL_89;
          }

          v75 = *v27;
          v77 = vmul_n_f32(*v26, *v27);
          v76 = *v27 * v26[1].f32[0];
        }

        else
        {
          v75 = v8[v61];
          v76 = *(v60 + 8);
          if (v29)
          {
            v76 = v75 * v76;
          }

          v77 = vbsl_s8(v63, *v60, vmul_n_f32(*v60, v75));
        }

        *v24 = v77;
        v24[1].f32[0] = v76;
        v24[1].f32[1] = v75;
        goto LABEL_87;
      }

      v68 = sqrtf(v58 * v66);
      v69 = v57 * sqrtf(v58 * v64);
      v70 = v57 * v68;
      v71 = (v15 * ((v16 + (v69 * v59)) - v14));
      v72 = (v15 * ((v16 + ((v57 * v68) * v59)) - v14));
      if (v69 <= 1.0 && v70 <= 1.0)
      {
        v78 = vceqd_s64(v29, 0);
        v79 = v28 + 12 * v71;
        v71 = v71;
        if (!v29)
        {
          v71 = 0;
        }

        v80 = v8[v71];
        v81 = vbsl_s8(v78, *v79, vmul_n_f32(*v79, v80));
        v82 = v72;
        if (v29)
        {
          v83 = v80 * *(v79 + 8);
        }

        else
        {
          v82 = 0;
          v83 = *(v79 + 8);
        }

        v84 = v28 + 12 * v72;
        v75 = v8[v82];
        v85 = *(v84 + 8);
        v77 = vbsl_s8(v63, *v84, vmul_n_f32(*v84, v75));
        *v24 = v81;
        if (v29)
        {
          v76 = v75 * v85;
        }

        else
        {
          v76 = v85;
        }

        v24[1].f32[0] = v83;
        v24[1].f32[1] = v80;
LABEL_87:
        v86 = -1;
        goto LABEL_88;
      }

      if (v69 <= 1.0)
      {
        if ((v71 & 0x80000000) == 0)
        {
          v74 = (3 * v71);
          if (!v29)
          {
            v71 = 0;
          }

LABEL_94:
          v88 = v28 + 4 * v74;
          v89 = v8[v71];
          v90 = *(v88 + 8);
          v91 = vbsl_s8(v63, *v88, vmul_n_f32(*v88, v89));
          if (v29)
          {
            v90 = v89 * v90;
          }

          goto LABEL_99;
        }
      }

      else if (v69 <= v20)
      {
        v71 = v61;
        v74 = (3 * v18);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_94;
        }
      }

      if (!v26)
      {
        v86 = 0;
        goto LABEL_100;
      }

      v89 = *v27;
      v91 = vmul_n_f32(*v26, *v27);
      v90 = *v27 * v26[1].f32[0];
LABEL_99:
      *v24 = v91;
      v86 = -1;
      v24[1].f32[0] = v90;
      v24[1].f32[1] = v89;
LABEL_100:
      if (v70 <= 1.0)
      {
        if ((v72 & 0x80000000) != 0)
        {
          goto LABEL_110;
        }

        v92 = (3 * v72);
        if (!v29)
        {
          v72 = 0;
        }
      }

      else if (v70 > v20 || (v72 = v61, v92 = (3 * v18), (v18 & 0x80000000) != 0))
      {
LABEL_110:
        if (!v26)
        {
          v87 = 0;
          goto LABEL_89;
        }

        v75 = *v27;
        v77 = vmul_n_f32(*v26, *v27);
        v76 = *v27 * v26[1].f32[0];
        goto LABEL_88;
      }

      v93 = v28 + 4 * v92;
      v75 = v8[v72];
      v76 = *(v93 + 8);
      v77 = vbsl_s8(v63, *v93, vmul_n_f32(*v93, v75));
      if (v29)
      {
        v76 = v75 * v76;
      }

LABEL_88:
      v24[2] = v77;
      v87 = -1;
      v24[3].f32[0] = v76;
      v24[3].f32[1] = v75;
LABEL_89:
      v12 = v6 + v65;
      v24 += 4;
      *v23 = v86;
      v23[1] = v87;
      v23 += 2;
      v62 -= 2;
      if (v62 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v18 & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) != 0)
    {
      v95 = *v27;
      v98 = vmul_n_f32(*v26, *v27);
      v96 = *v27 * v26[1].f32[0];
    }

    else
    {
      v94 = (v28 + 12 * v18);
      if (!v29)
      {
        v18 = 0;
      }

      v95 = v8[v18];
      v96 = v94[1].f32[0];
      v97 = vmul_n_f32(*v94, v95);
      if (v29)
      {
        v96 = v95 * v96;
      }

      v98 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL)), *v94, v97);
    }

    v99 = a4 + 4;
    do
    {
      *v24 = v98;
      v24[1].f32[0] = v96;
      v24[1].f32[1] = v95;
      v24[2] = v98;
      v24[3].f32[0] = v96;
      v24[3].f32[1] = v95;
      v24[4] = v98;
      v24[5].f32[0] = v96;
      v24[5].f32[1] = v95;
      v24[6] = v98;
      v24[7].f32[0] = v96;
      v24[7].f32[1] = v95;
      v24 += 8;
      v99 -= 4;
      *v23 = -1;
      v23 += 4;
    }

    while (v99 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = a4;
    }

    bzero(v23, ((a4 - v32 + 3) & 0xFFFFFFFC) + 4);
  }
}

int8x16_t *RGBAF_pattern(uint64_t a1, int8x16_t *a2, unsigned int a3, int a4, uint64_t a5, float a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v14 = *(*a1 + 64);
  a11.i32[0] = *v14;
  LODWORD(a10) = v14[1];
  if (a2 && a3 > 0xF || (v22 = a11.i64[0], v23 = a10, v15 = malloc_type_malloc(0x40uLL, 0x1080040E00A32E4uLL), a11.i64[0] = v22, a10 = v23, (a2 = v15) != 0))
  {
    if (*a11.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a11.i32;
    }

    if (*&a10 < a6)
    {
      v16 = *&a10;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        *a11.i32 = v16 * *a5;
        break;
      case 4:
        LODWORD(a7) = *(a5 + 16);
        *a11.i32 = v16 * ((*&a10 - *a5) - *&a7);
        v18 = vsub_f32(vsub_f32(vdup_lane_s32(*&a10, 0), *(a5 + 4)), vdup_lane_s32(*&a7, 0));
        goto LABEL_17;
      case 3:
        *a11.i32 = v16 * *a5;
        v18 = *(a5 + 4);
LABEL_17:
        v19 = vmul_n_f32(v18, v16);
LABEL_20:
        *a2 = xmmword_18439CB10;
        a2[1].i32[2] = 0;
        a2[1].i64[0] = 1;
        a11.i32[1] = v19.i32[0];
        a11.i64[1] = __PAIR64__(LODWORD(v16), v19.u32[1]);
        a2[3] = vrev32q_s8(a11);
        if (v16 >= *&a10)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2 + 3;
        }

        a2[2].i64[0] = a2[3].i64;
        a2[2].i64[1] = v20;
        return a2;
    }

    v19 = vdup_lane_s32(*a11.i8, 0);
    goto LABEL_20;
  }

  return a2;
}

uint64_t RGBAF_mark_inner(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v810 = *MEMORY[0x1E69E9840];
  v15 = *(v2 + 96);
  v16 = *(v2 + 48);
  v17 = *(v1 + 16 * *v2 + 8 * (v15 == 0) + 4 * (v16 == 0));
  if (v17 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v2;
  v20 = *(v2 + 4);
  v21 = v20 - 1;
  if (v20 < 1)
  {
    return 0;
  }

  v22 = *(v2 + 8);
  v23 = (v22 - 1);
  if (v22 < 1)
  {
    return 0;
  }

  v24 = *(v2 + 136);
  if ((*v2 & 0xFF0000) == 0x50000 || !v24)
  {
    v26 = *v2 & 0xFF00;
    v757 = *(v1 + 16 * *v2 + 8 * (v15 == 0) + 4 * (v16 == 0));
    v754 = v2;
    if (v26 == 1024)
    {
      v809[0] = *(v2 + 4);
      v799[0] = v22;
      v794 = **(v2 + 88);
      v27 = vrev32q_s8(v794);
      v28 = v27.f32[3];
      *&v10 = 1.0 - v27.f32[3];
      v29 = *(v2 + 12);
      v30 = *(v2 + 28) >> 4;
      v31 = *(v2 + 40) + 16 * v30 * *(v2 + 16);
      v32 = v31 + 16 * v29;
      v796 = v27;
      v792 = v10;
      v777 = *(v2 + 28);
      v790 = v32;
      if (v24)
      {
        shape_enum_clip_alloc(v1, v2, v24, 1, 1, 1, *(v2 + 104), *(v2 + 108), v20, v22);
        v34 = v33;
        if (!v33)
        {
          return 1;
        }

        goto LABEL_310;
      }

      v34 = 0;
      v57 = (v31 + 16 * v29);
LABEL_51:
      v83 = v30 - v20;
      v84 = v20;
      switch(v17)
      {
        case 0:
          v85 = v799[0];
          v86 = 16 * v20;
          v87 = v777 & 0xFFFFFFF0;
          goto LABEL_314;
        case 1:
          v179 = *(v754 + 88);
          if (v179)
          {
            CGSFillDRAM64(v57, v777 & 0xFFFFFFF0, 16 * v20, v799[0], v179, 16, 16, 1, 0, 0);
            if (!v34)
            {
              return 1;
            }

            goto LABEL_309;
          }

          v85 = v799[0];
          v87 = v777 & 0xFFFFFFF0;
          v86 = 16 * v20;
LABEL_314:
          CGBlt_fillBytes(v86, v85, 0, v57->i8, v87);
          if (v34)
          {
            goto LABEL_309;
          }

          return 1;
        case 2:
          v158 = vdupq_lane_s32(*&v10, 0);
          v159 = v799[0];
          do
          {
            if (v20 < 4)
            {
              v163 = v20;
            }

            else
            {
              v160 = (v20 >> 2) + 1;
              do
              {
                v161 = vrev32q_s8(vmlaq_f32(v27, v158, vrev32q_s8(v57[1])));
                *v57 = vrev32q_s8(vmlaq_f32(v27, v158, vrev32q_s8(*v57)));
                v57[1] = v161;
                v162 = vrev32q_s8(vmlaq_f32(v27, v158, vrev32q_s8(v57[3])));
                v57[2] = vrev32q_s8(vmlaq_f32(v27, v158, vrev32q_s8(v57[2])));
                v57[3] = v162;
                v57 += 4;
                --v160;
              }

              while (v160 > 1);
              v163 = v20 & 3;
            }

            if (v163 >= 1)
            {
              v164 = v163 + 1;
              do
              {
                *v57 = vrev32q_s8(vmlaq_f32(v27, v158, vrev32q_s8(*v57)));
                ++v57;
                --v164;
              }

              while (v164 > 1);
            }

            v57 += v83;
            --v159;
          }

          while (v159);
          goto LABEL_295;
        case 3:
          v173 = v799[0];
          do
          {
            v174 = v20;
            do
            {
              v175 = COERCE_FLOAT(bswap32(v57->u32[3]));
              if (v175 <= 0.0)
              {
                v57->i64[0] = 0;
                v57->i64[1] = 0;
              }

              else
              {
                if (v175 >= 1.0)
                {
                  v176 = v794;
                }

                else
                {
                  v176 = vrev32q_s8(vmulq_n_f32(v27, v175));
                }

                *v57 = v176;
              }

              ++v57;
              --v174;
            }

            while (v174);
            v57 += v83;
            --v173;
          }

          while (v173);
          goto LABEL_295;
        case 4:
          v124 = v799[0];
          do
          {
            v125 = v20;
            do
            {
              v126 = 1.0 - COERCE_FLOAT(bswap32(v57->u32[3]));
              if (v126 <= 0.0)
              {
                v57->i64[0] = 0;
                v57->i64[1] = 0;
              }

              else
              {
                if (v126 >= 1.0)
                {
                  v127 = v794;
                }

                else
                {
                  v127 = vrev32q_s8(vmulq_n_f32(v27, v126));
                }

                *v57 = v127;
              }

              ++v57;
              --v125;
            }

            while (v125);
            v57 += v83;
            --v124;
          }

          while (v124);
          goto LABEL_295;
        case 5:
          v197 = v799[0];
          do
          {
            v198 = v20;
            do
            {
              v199 = vrev32q_s8(*v57);
              *v57++ = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v199, *&v10), v27, v199, 3));
              --v198;
            }

            while (v198);
            v57 += v83;
            --v197;
          }

          while (v197);
          goto LABEL_295;
        case 6:
          v216 = v799[0];
          while (1)
          {
            v217 = v20;
            do
            {
              v218 = COERCE_FLOAT(bswap32(v57->u32[3]));
              v219 = 1.0 - v218;
              if ((1.0 - v218) >= 1.0)
              {
                v57->i64[0] = v794.i64[0];
                v57->i32[2] = v794.i32[2];
                v221 = v794.u32[3];
              }

              else
              {
                if (v219 <= 0.0)
                {
                  goto LABEL_237;
                }

                v220 = bswap32(COERCE_UNSIGNED_INT(COERCE_FLOAT(bswap32(v57->u32[2])) + (v27.f32[2] * v219)));
                v221 = bswap32(COERCE_UNSIGNED_INT(v218 + (v28 * v219)));
                *v57->i8 = vrev32_s8(vmla_n_f32(vrev32_s8(*v57->i8), *v27.f32, v219));
                v57->i32[2] = v220;
              }

              v57->i32[3] = v221;
LABEL_237:
              ++v57;
              --v217;
            }

            while (v217);
            v57 += v83;
            if (!--v216)
            {
              goto LABEL_295;
            }
          }

        case 7:
          v177 = v799[0];
          do
          {
            v178 = v20;
            do
            {
              *v57 = vrev32q_s8(vmulq_laneq_f32(vrev32q_s8(*v57), v27, 3));
              ++v57;
              --v178;
            }

            while (v178);
            v57 += v83;
            --v177;
          }

          while (v177);
          goto LABEL_295;
        case 8:
          v233 = v799[0];
          do
          {
            v234 = v20;
            do
            {
              *v57 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v57), *&v10));
              ++v57;
              --v234;
            }

            while (v234);
            v57 += v83;
            --v233;
          }

          while (v233);
          goto LABEL_295;
        case 9:
          v133 = v799[0];
          do
          {
            v134 = v20;
            do
            {
              v135 = vrev32q_s8(*v57);
              *v57++ = vrev32q_s8(vmlaq_n_f32(vmulq_laneq_f32(v135, v27, 3), v27, 1.0 - v135.f32[3]));
              --v134;
            }

            while (v134);
            v57 += v83;
            --v133;
          }

          while (v133);
          goto LABEL_295;
        case 10:
          v230 = v799[0];
          do
          {
            v231 = v20;
            do
            {
              v232 = vrev32q_s8(*v57);
              *v57++ = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v232, *&v10), v27, 1.0 - v232.f32[3]));
              --v231;
            }

            while (v231);
            v57 += v83;
            --v230;
          }

          while (v230);
          goto LABEL_295;
        case 11:
          v119 = vsub_f32(vdup_laneq_s32(v27, 3), *v27.f32);
          v120 = v799[0];
          do
          {
            v121 = v20;
            do
            {
              v122 = COERCE_FLOAT(bswap32(v57->u32[2]));
              v11.i32[0] = bswap32(v57->u32[3]);
              if (!v16)
              {
                *v11.i32 = 1.0;
              }

              *&v12 = *v11.i32 + v28;
              v123 = (v28 - v27.f32[2]) + (*v11.i32 - v122);
              if ((*v11.i32 + v28) > 1.0)
              {
                *&v12 = 1.0;
              }

              *v11.i8 = vsub_f32(vdup_lane_s32(*&v12, 0), vadd_f32(v119, vsub_f32(vdup_lane_s32(*v11.i8, 0), vrev32_s8(*v57->i8))));
              *&v11.i32[2] = *&v12 - v123;
              v11.i32[3] = LODWORD(v12);
              *v57++ = vrev32q_s8(v11);
              --v121;
            }

            while (v121);
            v57 += v83;
            --v120;
          }

          while (v120);
          goto LABEL_295;
        case 12:
          v128 = v799[0];
          do
          {
            v129 = v20;
            do
            {
              v130 = COERCE_FLOAT(bswap32(v57->u32[2]));
              v131 = v28 + COERCE_FLOAT(bswap32(v57->u32[3]));
              *v132.i8 = vadd_f32(*v27.f32, vrev32_s8(*v57->i8));
              if (v131 > 1.0)
              {
                v131 = 1.0;
              }

              v132.i64[1] = __PAIR64__(LODWORD(v131), v27.f32[2] + v130);
              *v57++ = vrev32q_s8(v132);
              --v129;
            }

            while (v129);
            v57 += v83;
            --v128;
          }

          while (v128);
          goto LABEL_295;
        case 13:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v208 = v27.i32[2];
          v209 = v799[0];
          while (1)
          {
            v210 = v20;
            do
            {
              v211 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v211;
              if (v16)
              {
                v212 = v211;
                if (v211 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v213 = v794.u32[3];
                  goto LABEL_227;
                }
              }

              else
              {
                v212 = 1.0;
              }

              v214 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v214.i32[1];
              *v215.i32 = PDAmultiplyPDA(*v214.i32, v8, v9, v10, v212, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v208)), v28);
              v27.i32[0] = v796.i32[0];
              v213 = bswap32(LODWORD(v10));
              v215.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v215);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_227:
              v57->i32[3] = v213;
              ++v57;
              --v210;
            }

            while (v210);
            v57 += v83;
            --v209;
            LODWORD(v20) = v84;
            if (!v209)
            {
              goto LABEL_307;
            }
          }

        case 14:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v107 = v799[0];
          __asm { FMOV            V0.2S, #1.0 }

          while (1)
          {
            v113 = v20;
            do
            {
              if (!v16)
              {
                v114 = 1.0;
LABEL_82:
                LODWORD(v116) = bswap32(v57->u32[2]);
                *v117.f32 = vrev32_s8(*v57->i8);
                *v118.f32 = vsub_f32(_D0, *v117.f32);
                v118.f32[2] = 1.0 - v116;
                v118.f32[3] = -v114;
                v117.i64[1] = __PAIR64__(v114 + v28, LODWORD(v116));
                v115 = vrev32q_s8(vmlaq_f32(v117, v27, v118));
                goto LABEL_83;
              }

              v114 = COERCE_FLOAT(bswap32(v57->u32[3]));
              v115 = v794;
              if (v114 > 0.0)
              {
                goto LABEL_82;
              }

LABEL_83:
              *v57++ = v115;
              --v113;
            }

            while (v113);
            v57 += v83;
            if (!--v107)
            {
              goto LABEL_295;
            }
          }

        case 15:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v165 = v27.i32[2];
          v166 = v799[0];
          while (1)
          {
            v167 = v20;
            do
            {
              v168 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v168;
              if (v16)
              {
                v169 = v168;
                if (v168 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v170 = v794.u32[3];
                  goto LABEL_159;
                }
              }

              else
              {
                v169 = 1.0;
              }

              v171 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v171.i32[1];
              *v172.i32 = PDAoverlayPDA(*v171.i32, v8, v9, v10, v169, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v165)), v28);
              v27.i32[0] = v796.i32[0];
              v170 = bswap32(LODWORD(v10));
              v172.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v172);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_159:
              v57->i32[3] = v170;
              ++v57;
              --v167;
            }

            while (v167);
            v57 += v83;
            --v166;
            LODWORD(v20) = v84;
            if (!v166)
            {
              goto LABEL_307;
            }
          }

        case 16:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v99 = v27.i32[2];
          v100 = v799[0];
          while (1)
          {
            v101 = v20;
            do
            {
              v102 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v102;
              if (v16)
              {
                v103 = v102;
                if (v102 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v104 = v794.u32[3];
                  goto LABEL_72;
                }
              }

              else
              {
                v103 = 1.0;
              }

              v105 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v105.i32[1];
              *v106.i32 = PDAdarkenPDA(*v105.i32, v8, v9, v10, v103, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v99)), v28);
              v27.i32[0] = v796.i32[0];
              v104 = bswap32(LODWORD(v10));
              v106.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v106);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_72:
              v57->i32[3] = v104;
              ++v57;
              --v101;
            }

            while (v101);
            v57 += v83;
            --v100;
            LODWORD(v20) = v84;
            if (!v100)
            {
              goto LABEL_307;
            }
          }

        case 17:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v180 = v27.i32[2];
          v181 = v799[0];
          while (1)
          {
            v182 = v20;
            do
            {
              v183 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v183;
              if (v16)
              {
                v184 = v183;
                if (v183 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v185 = v794.u32[3];
                  goto LABEL_189;
                }
              }

              else
              {
                v184 = 1.0;
              }

              v186 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v186.i32[1];
              *v187.i32 = PDAlightenPDA(*v186.i32, v8, v9, v10, v184, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v180)), v28);
              v27.i32[0] = v796.i32[0];
              v185 = bswap32(LODWORD(v10));
              v187.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v187);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_189:
              v57->i32[3] = v185;
              ++v57;
              --v182;
            }

            while (v182);
            v57 += v83;
            --v181;
            LODWORD(v20) = v84;
            if (!v181)
            {
              goto LABEL_307;
            }
          }

        case 18:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v222 = v27.i32[2];
          v223 = v799[0];
          while (1)
          {
            v224 = v20;
            do
            {
              v225 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v225;
              if (v16)
              {
                v226 = v225;
                if (v225 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v227 = v794.u32[3];
                  goto LABEL_248;
                }
              }

              else
              {
                v226 = 1.0;
              }

              v228 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v228.i32[1];
              *v229.i32 = PDAcolordodgePDA(*v228.i32, v8, v9, v10, v226, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v222)), v28);
              v27.i32[0] = v796.i32[0];
              v227 = bswap32(LODWORD(v10));
              v229.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v229);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_248:
              v57->i32[3] = v227;
              ++v57;
              --v224;
            }

            while (v224);
            v57 += v83;
            --v223;
            LODWORD(v20) = v84;
            if (!v223)
            {
              goto LABEL_307;
            }
          }

        case 19:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v249 = v27.i32[2];
          v250 = v799[0];
          while (1)
          {
            v251 = v20;
            do
            {
              v252 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v252;
              if (v16)
              {
                v253 = v252;
                if (v252 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v254 = v794.u32[3];
                  goto LABEL_282;
                }
              }

              else
              {
                v253 = 1.0;
              }

              v255 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v255.i32[1];
              *v256.i32 = PDAcolorburnPDA(*v255.i32, v8, v9, v10, v253, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v249)), v28);
              v27.i32[0] = v796.i32[0];
              v254 = bswap32(LODWORD(v10));
              v256.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v256);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_282:
              v57->i32[3] = v254;
              ++v57;
              --v251;
            }

            while (v251);
            v57 += v83;
            --v250;
            LODWORD(v20) = v84;
            if (!v250)
            {
              goto LABEL_307;
            }
          }

        case 20:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v188 = v27.u32[1];
          v189 = v27.i32[2];
          v190 = v799[0];
          while (1)
          {
            v191 = v20;
            do
            {
              v192 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v192;
              if (v16)
              {
                *v11.i32 = v192;
                if (v192 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v193 = v794.u32[3];
                  goto LABEL_200;
                }
              }

              else
              {
                v11.i32[0] = 1.0;
              }

              v194 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              *v195.i32 = PDAsoftlightPDA(*v194.i32, *&v194.i32[1], v9, *&v10, *v11.i64, v12, v13, v14, v1, v2, v24, v3, v4, v20, v5, v6, v27.u32[0], v188, __SPAIR64__(LODWORD(v28), v189), v28);
              v27.i32[0] = v796.i32[0];
              v193 = bswap32(LODWORD(v10));
              v195.i32[1] = v196;
              *v57->i8 = vrev32_s8(v195);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_200:
              v57->i32[3] = v193;
              ++v57;
              --v191;
            }

            while (v191);
            v57 += v83;
            --v190;
            v20 = v84;
            if (!v190)
            {
              goto LABEL_307;
            }
          }

        case 21:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v200 = v27.i32[2];
          v201 = v799[0];
          while (1)
          {
            v202 = v20;
            do
            {
              v203 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v203;
              if (v16)
              {
                v204 = v203;
                if (v203 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v205 = v794.u32[3];
                  goto LABEL_216;
                }
              }

              else
              {
                v204 = 1.0;
              }

              v206 = vrev32_s8(*v57->i8);
              LODWORD(v9) = bswap32(v57->u32[2]);
              LODWORD(v8) = v206.i32[1];
              *v207.i32 = PDAhardlightPDA(*v206.i32, v8, v9, v10, v204, v12, v13, v14, v27.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v28), v200)), v28);
              v27.i32[0] = v796.i32[0];
              v205 = bswap32(LODWORD(v10));
              v207.i32[1] = LODWORD(v8);
              *v57->i8 = vrev32_s8(v207);
              v57->i32[2] = bswap32(LODWORD(v9));
LABEL_216:
              v57->i32[3] = v205;
              ++v57;
              --v202;
            }

            while (v202);
            v57 += v83;
            --v201;
            LODWORD(v20) = v84;
            if (!v201)
            {
              goto LABEL_307;
            }
          }

        case 22:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v235 = v799[0];
          while (1)
          {
            v236 = v20;
            do
            {
              if (v16)
              {
                v237 = COERCE_FLOAT(bswap32(v57->u32[3]));
                if (v237 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v238 = v794.u32[3];
                  goto LABEL_271;
                }
              }

              else
              {
                v237 = 1.0;
              }

              v239 = COERCE_FLOAT(bswap32(v57->u32[2]));
              v240 = vrev32_s8(*v57->i8);
              v241 = vadd_f32(*v27.f32, v240);
              v242 = vmul_laneq_f32(v240, v27, 3);
              v243 = vmul_n_f32(*v27.f32, v237);
              v244 = vsub_f32(v241, v242);
              v245 = vsub_f32(v242, v243);
              v246 = vadd_f32(vsub_f32(v244, v243), vbsl_s8(vcltz_f32(v245), vneg_f32(v245), v245));
              v247 = (v28 * v239) - (v27.f32[2] * v237);
              if (v247 < 0.0)
              {
                v247 = -v247;
              }

              v248 = bswap32(COERCE_UNSIGNED_INT((((v27.f32[2] + v239) - (v28 * v239)) - (v27.f32[2] * v237)) + v247));
              v238 = bswap32(COERCE_UNSIGNED_INT((v237 + v28) - (v237 * v28)));
              *v57->i8 = vrev32_s8(v246);
              v57->i32[2] = v248;
LABEL_271:
              v57->i32[3] = v238;
              ++v57;
              --v236;
            }

            while (v236);
            v57 += v83;
            if (!--v235)
            {
LABEL_295:
              v799[0] = 0;
              if (!v34)
              {
                return 1;
              }

LABEL_309:
              v798 = 0;
LABEL_310:
              v1 = shape_enum_clip_next(v34, &v798 + 1, &v798, v809, v799);
              if (v1)
              {
                v57 = (v32 + 16 * v30 * v798 + 16 * SHIDWORD(v798));
                v20 = v809[0];
                v27 = v796;
                v10 = v792;
                goto LABEL_51;
              }

LABEL_312:
              v274 = v34;
LABEL_950:
              free(v274);
              return 1;
            }
          }

        case 23:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v257.i64[0] = 0x4000000040000000;
          v257.i32[2] = 0x40000000;
          v257.i32[3] = v27.i32[3];
          v258 = v799[0];
          while (1)
          {
            v259 = v20;
            do
            {
              if (!v16)
              {
                v260 = 1.0;
LABEL_292:
                *v262.f32 = vrev32_s8(*v57->i8);
                *v263.f32 = vmul_f32(*v27.f32, vneg_f32(*v262.f32));
                v262.i64[1] = __PAIR64__(LODWORD(v260), bswap32(v57->u32[2]));
                v263.f32[2] = -(v262.f32[2] * v27.f32[2]);
                v263.f32[3] = -v260;
                v261 = vrev32q_s8(vmlaq_f32(vaddq_f32(v262, v27), v257, v263));
                goto LABEL_293;
              }

              LODWORD(v260) = bswap32(v57->u32[3]);
              v261 = v794;
              if (v260 > 0.0)
              {
                goto LABEL_292;
              }

LABEL_293:
              *v57++ = v261;
              --v259;
            }

            while (v259);
            v57 += v83;
            if (!--v258)
            {
              goto LABEL_295;
            }
          }

        case 24:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v147 = v27.f32[1];
          v148 = v27.f32[2];
          v149 = v799[0];
          while (1)
          {
            v150 = v20;
            do
            {
              v151 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v151;
              if (v16)
              {
                v152 = v151;
                if (v151 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v153 = v794.u32[3];
                  goto LABEL_137;
                }
              }

              else
              {
                v152 = 1.0;
              }

              v154 = vrev32_s8(*v57->i8);
              *v155.i32 = PDAhuePDA(*v154.i32, *&v154.i32[1], COERCE_FLOAT(bswap32(v57->u32[2])), v10, v152, v12, v13, v14, v27.f32[0], v147, v148, v28, v28);
              v27.i32[0] = v796.i32[0];
              v153 = bswap32(LODWORD(v10));
              v155.i32[1] = v157;
              *v57->i8 = vrev32_s8(v155);
              v57->i32[2] = bswap32(v156);
LABEL_137:
              v57->i32[3] = v153;
              ++v57;
              --v150;
            }

            while (v150);
            v57 += v83;
            --v149;
            LODWORD(v20) = v84;
            if (!v149)
            {
              goto LABEL_307;
            }
          }

        case 25:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v136 = v27.f32[1];
          v137 = v27.f32[2];
          v138 = v799[0];
          while (1)
          {
            v139 = v20;
            do
            {
              v140 = COERCE_FLOAT(bswap32(v57->u32[3]));
              *&v10 = v140;
              if (v16)
              {
                v141 = v140;
                if (v140 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v142 = v794.u32[3];
                  goto LABEL_126;
                }
              }

              else
              {
                v141 = 1.0;
              }

              v143 = vrev32_s8(*v57->i8);
              *v144.i32 = PDAsaturationPDA(*v143.i32, *&v143.i32[1], COERCE_FLOAT(bswap32(v57->u32[2])), v10, v141, v12, v13, v14, v27.f32[0], v136, v137, v28, v28);
              v27.i32[0] = v796.i32[0];
              v142 = bswap32(LODWORD(v10));
              v144.i32[1] = v146;
              *v57->i8 = vrev32_s8(v144);
              v57->i32[2] = bswap32(v145);
LABEL_126:
              v57->i32[3] = v142;
              ++v57;
              --v139;
            }

            while (v139);
            v57 += v83;
            --v138;
            LODWORD(v20) = v84;
            if (!v138)
            {
              goto LABEL_307;
            }
          }

        case 26:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v264 = v27.f32[1];
          v265 = v27.f32[2];
          v266 = v799[0];
          while (1)
          {
            v267 = v20;
            do
            {
              v268 = COERCE_FLOAT(bswap32(v57->u32[3]));
              if (v16)
              {
                v269 = v268;
                if (v268 <= 0.0)
                {
                  v57->i64[0] = v794.i64[0];
                  v57->i32[2] = v794.i32[2];
                  v270 = v794.u32[3];
                  goto LABEL_305;
                }
              }

              else
              {
                v269 = 1.0;
              }

              v741 = vrev32_s8(*v57->i8);
              *&v10 = v28;
              *v271.i32 = PDAluminosityPDA(v27.f32[0], v264, v265, v10, v28, v12, v13, v14, *v741.i32, *&v741.i32[1], COERCE_FLOAT(bswap32(v57->u32[2])), v268, v269);
              v27.i32[0] = v796.i32[0];
              v270 = bswap32(LODWORD(v10));
              v271.i32[1] = v273;
              *v57->i8 = vrev32_s8(v271);
              v57->i32[2] = bswap32(v272);
LABEL_305:
              v57->i32[3] = v270;
              ++v57;
              --v267;
            }

            while (v267);
            v57 += v83;
            --v266;
            LODWORD(v20) = v84;
            if (!v266)
            {
              goto LABEL_307;
            }
          }

        case 27:
          if (v28 <= 0.0)
          {
            goto LABEL_308;
          }

          v88 = v27.f32[1];
          v89 = v27.f32[2];
          v90 = v799[0];
          break;
        default:
          goto LABEL_308;
      }

LABEL_55:
      v91 = v20;
      while (1)
      {
        v92 = COERCE_FLOAT(bswap32(v57->u32[3]));
        *&v10 = v92;
        if (!v16)
        {
          break;
        }

        v93 = v92;
        if (v92 > 0.0)
        {
          goto LABEL_60;
        }

        v57->i64[0] = v794.i64[0];
        v57->i32[2] = v794.i32[2];
        v94 = v794.u32[3];
LABEL_61:
        v57->i32[3] = v94;
        ++v57;
        if (!--v91)
        {
          v57 += v83;
          --v90;
          LODWORD(v20) = v84;
          if (!v90)
          {
LABEL_307:
            v799[0] = 0;
            LODWORD(v17) = v757;
            v32 = v790;
LABEL_308:
            if (v34)
            {
              goto LABEL_309;
            }

            return 1;
          }

          goto LABEL_55;
        }
      }

      v93 = 1.0;
LABEL_60:
      v95 = vrev32_s8(*v57->i8);
      *v96.i32 = PDAluminosityPDA(*v95.i32, *&v95.i32[1], COERCE_FLOAT(bswap32(v57->u32[2])), v10, v93, v12, v13, v14, v27.f32[0], v88, v89, v28, v28);
      v27.i32[0] = v796.i32[0];
      v94 = bswap32(LODWORD(v10));
      v96.i32[1] = v98;
      *v57->i8 = vrev32_s8(v96);
      v57->i32[2] = bswap32(v97);
      goto LABEL_61;
    }

    v809[0] = *(v2 + 4);
    v799[0] = v22;
    v35 = *(v2 + 88);
    v36 = *(v2 + 28) >> 4;
    v37 = *(v2 + 40) + 16 * v36 * *(v2 + 16) + 16 * *(v2 + 12);
    v38 = *(v2 + 104);
    v39 = *(v2 + 108);
    v40 = *(v2 + 56);
    v41 = *(v2 + 60);
    v42 = *(v2 + 76) >> 4;
    if (v26 == 256)
    {
      v35 += 16 * v42 * v41 + 16 * v40;
      if (v42 == v36)
      {
        v43 = (v37 - v35) >> 4;
        if (v43 < 1)
        {
          v3 = 1;
          v764 = *(v2 + 28) >> 4;
        }

        else if (v43 <= v20)
        {
          v37 += 16 * v21;
          v3 = 0xFFFFFFFFLL;
          v764 = *(v2 + 28) >> 4;
          v35 += 16 * v21;
        }

        else
        {
          v44 = v36 * v23;
          v45 = v35 + 16 * v36 * v23;
          v46 = v45 + 16 * v20 - 16;
          v47 = v37 + 16 * v44;
          v48 = v37 > v46;
          if (v37 > v46)
          {
            v49 = *(v2 + 28) >> 4;
          }

          else
          {
            v35 = v45;
            v37 = v47;
            v49 = -v36;
          }

          v764 = v49;
          if (!v48)
          {
            v36 = -v36;
          }

          v3 = 1;
        }
      }

      else
      {
        v3 = 1;
        v764 = *(v2 + 76) >> 4;
      }

      v755 = *(v2 + 60);
      v756 = *(v2 + 56);
      v55 = v15 != 0;
      if (v24)
      {
        LODWORD(v762) = 0;
        v797 = 0;
        v793 = 0;
        v56 = -1;
        v795 = v764;
        goto LABEL_46;
      }

      v761 = v3;
      LODWORD(v762) = 0;
      v82 = v3 * v20;
      v791 = v36 - v82;
      v56 = -1;
      v42 = v764;
    }

    else
    {
      LODWORD(v764) = *(v2 + 64);
      v762 = *(v2 + 68);
      v793 = v35 + 16 * v42 * v762;
      v55 = v15 != 0;
      if (v24)
      {
        v795 = *(v2 + 76) >> 4;
        v755 = *(v2 + 60);
        v756 = *(v2 + 56);
        LODWORD(v3) = 1;
        v797 = *(v2 + 88);
        v56 = v797;
LABEL_46:
        v761 = v3;
        shape_enum_clip_alloc(v1, v2, v24, v3, v36, 1, v38, v39, v20, v22);
        v81 = v80;
        if (!v80)
        {
          return 1;
        }

        while (2)
        {
          v1 = shape_enum_clip_next(v81, &v798 + 1, &v798, v809, v799);
          if (!v1)
          {
            v274 = v81;
            goto LABEL_950;
          }

          v763 = v81;
          if (v793)
          {
            v79 = (v37 + 16 * v36 * v798 + 16 * SHIDWORD(v798));
            v20 = v809[0];
            v734 = v35 + 16 * v795 * ((v798 + *(v19 + 60)) % v762);
            v78 = (v734 + 16 * ((HIDWORD(v798) + *(v19 + 56)) % v764));
            v56 = v734 + 16 * v764;
            v797 = v78;
            v735 = v809[0];
            v755 = (v798 + *(v19 + 60)) % v762;
            v756 = (HIDWORD(v798) + *(v19 + 56)) % v764;
          }

          else
          {
            v20 = v809[0];
            v735 = v809[0] * v761;
            v79 = (v37 + 16 * v36 * v798 + 16 * HIDWORD(v798) * v761);
            v78 = (v35 + 16 * v798 * v764 + 16 * HIDWORD(v798) * v761);
            v795 = v764 - v809[0] * v761;
          }

          v791 = v36 - v735;
LABEL_316:
          switch(v17)
          {
            case 0:
              i64 = v79[-v20 + 1].i64;
              v276 = v791 + v20;
              if (v761 < 0)
              {
                v276 = v791 - v20;
              }

              else
              {
                i64 = v79;
              }

              v277 = (i64 + 16 * ((v276 * (v799[0] - 1)) & (v276 >> 63)));
              if (v276 < 0)
              {
                v276 = -v276;
              }

              CGBlt_fillBytes(16 * v20, v799[0], 0, v277, 16 * v276);
              goto LABEL_942;
            case 1:
              v484 = *(v19 + 1);
              if (v484 == 2)
              {
                if (v20 >= 2 && (16 * v764) <= 0x40)
                {
                  LODWORD(v7) = 16 * v764;
                  v704 = vcnt_s8(*&v7);
                  v704.i16[0] = vaddlv_u8(v704);
                  if (v704.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v79, 16 * (v20 + v791), 16 * v20, v799[0], v35, 16 * v795, 16 * v764, v762, 16 * v756, v755);
                    goto LABEL_942;
                  }
                }

LABEL_893:
                if (v16 == 0 || v55)
                {
                  v705 = v799[0];
                  do
                  {
                    v706 = v20;
                    do
                    {
                      *v79 = *v78->i8;
                      v707 = &v78[2 * v761];
                      if (v707 >= v56)
                      {
                        v708 = -v764;
                      }

                      else
                      {
                        v708 = 0;
                      }

                      v78 = &v707[2 * v708];
                      v79 += v761;
                      --v706;
                    }

                    while (v706);
                    v79 += v791;
                    v709 = v797;
                    v710 = &v797[2 * v795];
                    if (v710 >= v793)
                    {
                      v711 = -(v795 * v762);
                    }

                    else
                    {
                      v711 = 0;
                    }

                    v712 = &v710[2 * v711];
                    v713 = v56 + 16 * v711 + 16 * v795;
                    if (v793)
                    {
                      v56 = v713;
                      v709 = v712;
                    }

                    v797 = v709;
                    if (v793)
                    {
                      v78 = v712;
                    }

                    else
                    {
                      v78 += 2 * v795;
                    }

                    --v705;
                  }

                  while (v705);
                }

                else
                {
                  v714 = v799[0];
                  do
                  {
                    v715 = v20;
                    do
                    {
                      v716 = v78[1].i32[0];
                      *v79->i8 = *v78;
                      v79->i32[2] = v716;
                      v79->i32[3] = 32831;
                      v717 = &v78[2 * v761];
                      if (v717 >= v56)
                      {
                        v718 = -v764;
                      }

                      else
                      {
                        v718 = 0;
                      }

                      v78 = &v717[2 * v718];
                      v79 += v761;
                      --v715;
                    }

                    while (v715);
                    v79 += v791;
                    v719 = v797;
                    v720 = &v797[2 * v795];
                    if (v720 >= v793)
                    {
                      v721 = -(v795 * v762);
                    }

                    else
                    {
                      v721 = 0;
                    }

                    v722 = &v720[2 * v721];
                    v723 = v56 + 16 * v721 + 16 * v795;
                    if (v793)
                    {
                      v56 = v723;
                      v719 = v722;
                    }

                    v797 = v719;
                    if (v793)
                    {
                      v78 = v722;
                    }

                    else
                    {
                      v78 += 2 * v795;
                    }

                    --v714;
                  }

                  while (v714);
                }

                goto LABEL_941;
              }

              if (v484 != 1)
              {
                goto LABEL_893;
              }

              if (v16 != 0 && !v55)
              {
                v724 = v799[0];
                do
                {
                  v725 = v20;
                  do
                  {
                    v726 = v78[1].i32[0];
                    *v79->i8 = *v78;
                    v79->i32[2] = v726;
                    v79->i32[3] = 32831;
                    v727 = &v78[2 * v761];
                    if (v727 >= v56)
                    {
                      v728 = -v764;
                    }

                    else
                    {
                      v728 = 0;
                    }

                    v78 = &v727[2 * v728];
                    v79 += v761;
                    --v725;
                  }

                  while (v725);
                  v79 += v791;
                  v729 = v797;
                  v730 = &v797[2 * v795];
                  if (v730 >= v793)
                  {
                    v731 = -(v795 * v762);
                  }

                  else
                  {
                    v731 = 0;
                  }

                  v732 = &v730[2 * v731];
                  v733 = v56 + 16 * v731 + 16 * v795;
                  if (v793)
                  {
                    v56 = v733;
                    v729 = v732;
                  }

                  v797 = v729;
                  if (v793)
                  {
                    v78 = v732;
                  }

                  else
                  {
                    v78 += 2 * v795;
                  }

                  --v724;
                }

                while (v724);
                goto LABEL_941;
              }

              if (v761 < 0)
              {
                v485 = v795 - v20;
                v736 = 16 * v20 - 16;
                v78 = (v78 - v736);
                v486 = v791 - v20;
                v79 = (v79 - v736);
              }

              else
              {
                v485 = v795 + v20;
                v486 = v791 + v20;
              }

              v737 = v799[0] - 1;
              v738 = &v78[2 * ((v485 * v737) & (v485 >> 63))];
              if (v485 >= 0)
              {
                v739 = v485;
              }

              else
              {
                v739 = -v485;
              }

              if (v486 >= 0)
              {
                LODWORD(v740) = v486;
              }

              else
              {
                v740 = -v486;
              }

              v795 = v739;
              CGBlt_copyBytes(16 * v20, v799[0], v738, v79[(v486 * v737) & (v486 >> 63)].i8, 16 * v739, 16 * v740);
LABEL_942:
              v81 = v763;
              if (!v763)
              {
                return 1;
              }

              v798 = 0;
              continue;
            case 2:
              v430 = v799[0];
              do
              {
                v431 = v20;
                do
                {
                  v432 = v78[1].u32[1];
                  LODWORD(v433) = bswap32(v432);
                  if (v433 >= 1.0)
                  {
                    *v79->i8 = *v78;
                    v79->i32[2] = v78[1].i32[0];
                    v79->i32[3] = v432;
                  }

                  else if (v433 > 0.0)
                  {
                    *v434.f32 = vrev32_s8(*v78);
                    v434.i64[1] = __PAIR64__(LODWORD(v433), bswap32(v78[1].u32[0]));
                    *v79 = vrev32q_s8(vmlaq_n_f32(v434, vrev32q_s8(*v79), 1.0 - v433));
                  }

                  v435 = &v78[2 * v761];
                  if (v435 >= v56)
                  {
                    v436 = -v764;
                  }

                  else
                  {
                    v436 = 0;
                  }

                  v78 = &v435[2 * v436];
                  v79 += v761;
                  --v431;
                }

                while (v431);
                v79 += v791;
                v437 = v797;
                v438 = &v797[2 * v795];
                if (v438 >= v793)
                {
                  v439 = -(v795 * v762);
                }

                else
                {
                  v439 = 0;
                }

                v440 = &v438[2 * v439];
                v441 = v56 + 16 * v439 + 16 * v795;
                if (v793)
                {
                  v56 = v441;
                  v437 = v440;
                }

                v797 = v437;
                if (v793)
                {
                  v78 = v440;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v430;
              }

              while (v430);
              goto LABEL_941;
            case 3:
              do
              {
                v460 = v809[0];
                do
                {
                  v461 = COERCE_FLOAT(bswap32(v79->u32[3]));
                  if (v461 <= 0.0)
                  {
                    v79->i64[0] = 0;
                    v79->i64[1] = 0;
                  }

                  else if (v461 >= 1.0)
                  {
                    v465 = bswap32(v78[1].u32[1]);
                    if (!v55)
                    {
                      v465 = 1065353216;
                    }

                    v466 = *(v78 + 4);
                    v79->i32[0] = v78->i32[0];
                    *(v79->i64 + 4) = v466;
                    v79->i32[3] = bswap32(v465);
                  }

                  else
                  {
                    v462 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
                    *v463.f32 = vrev32_s8(*v78);
                    v463.i32[2] = bswap32(v78[1].u32[0]);
                    if (v55)
                    {
                      v464 = v462;
                    }

                    else
                    {
                      v464 = 1.0;
                    }

                    v463.f32[3] = v464;
                    *v79 = vrev32q_s8(vmulq_n_f32(v463, v461));
                  }

                  v467 = &v78[2 * v761];
                  if (v467 >= v56)
                  {
                    v468 = -v764;
                  }

                  else
                  {
                    v468 = 0;
                  }

                  v78 = &v467[2 * v468];
                  v79 += v761;
                  --v460;
                }

                while (v460);
                v79 += v791;
                v469 = v797;
                v470 = &v797[2 * v795];
                if (v470 >= v793)
                {
                  v471 = -(v795 * v762);
                }

                else
                {
                  v471 = 0;
                }

                v472 = &v470[2 * v471];
                v473 = v56 + 16 * v471 + 16 * v795;
                if (v793)
                {
                  v56 = v473;
                  v469 = v472;
                }

                v797 = v469;
                if (v793)
                {
                  v78 = v472;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v799[0];
              }

              while (v799[0]);
              goto LABEL_942;
            case 4:
              do
              {
                v353 = v809[0];
                do
                {
                  v354 = 1.0 - COERCE_FLOAT(bswap32(v79->u32[3]));
                  if (v354 <= 0.0)
                  {
                    v79->i64[0] = 0;
                    v79->i64[1] = 0;
                  }

                  else if (v354 >= 1.0)
                  {
                    v358 = bswap32(v78[1].u32[1]);
                    if (!v55)
                    {
                      v358 = 1065353216;
                    }

                    v359 = *(v78 + 4);
                    v79->i32[0] = v78->i32[0];
                    *(v79->i64 + 4) = v359;
                    v79->i32[3] = bswap32(v358);
                  }

                  else
                  {
                    v355 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
                    *v356.f32 = vrev32_s8(*v78);
                    v356.i32[2] = bswap32(v78[1].u32[0]);
                    if (v55)
                    {
                      v357 = v355;
                    }

                    else
                    {
                      v357 = 1.0;
                    }

                    v356.f32[3] = v357;
                    *v79 = vrev32q_s8(vmulq_n_f32(v356, v354));
                  }

                  v360 = &v78[2 * v761];
                  if (v360 >= v56)
                  {
                    v361 = -v764;
                  }

                  else
                  {
                    v361 = 0;
                  }

                  v78 = &v360[2 * v361];
                  v79 += v761;
                  --v353;
                }

                while (v353);
                v79 += v791;
                v362 = v797;
                v363 = &v797[2 * v795];
                if (v363 >= v793)
                {
                  v364 = -(v795 * v762);
                }

                else
                {
                  v364 = 0;
                }

                v365 = &v363[2 * v364];
                v366 = v56 + 16 * v364 + 16 * v795;
                if (v793)
                {
                  v56 = v366;
                  v362 = v365;
                }

                v797 = v362;
                if (v793)
                {
                  v78 = v365;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v799[0];
              }

              while (v799[0]);
              goto LABEL_942;
            case 5:
              v521 = v799[0];
              do
              {
                v522 = v20;
                do
                {
                  v523 = vrev32q_s8(*v78->i8);
                  v524 = vrev32q_s8(*v79);
                  *v79 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v524, 1.0 - v523.f32[3]), v523, v524, 3));
                  v525 = &v78[2 * v761];
                  if (v525 >= v56)
                  {
                    v526 = -v764;
                  }

                  else
                  {
                    v526 = 0;
                  }

                  v78 = &v525[2 * v526];
                  v79 += v761;
                  --v522;
                }

                while (v522);
                v79 += v791;
                v527 = v797;
                v528 = &v797[2 * v795];
                if (v528 >= v793)
                {
                  v529 = -(v795 * v762);
                }

                else
                {
                  v529 = 0;
                }

                v530 = &v528[2 * v529];
                v531 = v56 + 16 * v529 + 16 * v795;
                if (v793)
                {
                  v56 = v531;
                  v527 = v530;
                }

                v797 = v527;
                if (v793)
                {
                  v78 = v530;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v521;
              }

              while (v521);
              goto LABEL_941;
            case 6:
              v568 = v799[0];
              break;
            case 7:
              v474 = v799[0];
              do
              {
                v475 = v20;
                do
                {
                  v476 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
                  if (v476 <= 0.0)
                  {
                    v79->i64[0] = 0;
                    v79->i64[1] = 0;
                  }

                  else if (v476 < 1.0)
                  {
                    *v79 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v79), v476));
                  }

                  v477 = &v78[2 * v761];
                  if (v477 >= v56)
                  {
                    v478 = -v764;
                  }

                  else
                  {
                    v478 = 0;
                  }

                  v78 = &v477[2 * v478];
                  v79 += v761;
                  --v475;
                }

                while (v475);
                v79 += v791;
                v479 = v797;
                v480 = &v797[2 * v795];
                if (v480 >= v793)
                {
                  v481 = -(v795 * v762);
                }

                else
                {
                  v481 = 0;
                }

                v482 = &v480[2 * v481];
                v483 = v56 + 16 * v481 + 16 * v795;
                if (v793)
                {
                  v56 = v483;
                  v479 = v482;
                }

                v797 = v479;
                if (v793)
                {
                  v78 = v482;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v474;
              }

              while (v474);
              goto LABEL_941;
            case 8:
              v615 = v799[0];
              do
              {
                v616 = v20;
                do
                {
                  v617 = 1.0 - COERCE_FLOAT(bswap32(v78[1].u32[1]));
                  if (v617 <= 0.0)
                  {
                    v79->i64[0] = 0;
                    v79->i64[1] = 0;
                  }

                  else if (v617 < 1.0)
                  {
                    *v79 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v79), v617));
                  }

                  v618 = &v78[2 * v761];
                  if (v618 >= v56)
                  {
                    v619 = -v764;
                  }

                  else
                  {
                    v619 = 0;
                  }

                  v78 = &v618[2 * v619];
                  v79 += v761;
                  --v616;
                }

                while (v616);
                v79 += v791;
                v620 = v797;
                v621 = &v797[2 * v795];
                if (v621 >= v793)
                {
                  v622 = -(v795 * v762);
                }

                else
                {
                  v622 = 0;
                }

                v623 = &v621[2 * v622];
                v624 = v56 + 16 * v622 + 16 * v795;
                if (v793)
                {
                  v56 = v624;
                  v620 = v623;
                }

                v797 = v620;
                if (v793)
                {
                  v78 = v623;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v615;
              }

              while (v615);
              goto LABEL_941;
            case 9:
              v383 = v799[0];
              do
              {
                v384 = v20;
                do
                {
                  v385 = vrev32q_s8(*v78->i8);
                  v386 = vrev32q_s8(*v79);
                  *v79 = vrev32q_s8(vmlaq_n_f32(vmulq_laneq_f32(v386, v385, 3), v385, 1.0 - v386.f32[3]));
                  v387 = &v78[2 * v761];
                  if (v387 >= v56)
                  {
                    v388 = -v764;
                  }

                  else
                  {
                    v388 = 0;
                  }

                  v78 = &v387[2 * v388];
                  v79 += v761;
                  --v384;
                }

                while (v384);
                v79 += v791;
                v389 = v797;
                v390 = &v797[2 * v795];
                if (v390 >= v793)
                {
                  v391 = -(v795 * v762);
                }

                else
                {
                  v391 = 0;
                }

                v392 = &v390[2 * v391];
                v393 = v56 + 16 * v391 + 16 * v795;
                if (v793)
                {
                  v56 = v393;
                  v389 = v392;
                }

                v797 = v389;
                if (v793)
                {
                  v78 = v392;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v383;
              }

              while (v383);
              goto LABEL_941;
            case 10:
              v604 = v799[0];
              do
              {
                v605 = v20;
                do
                {
                  v606 = vrev32q_s8(*v78->i8);
                  v607 = vrev32q_s8(*v79);
                  *v79 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v607, 1.0 - v606.f32[3]), v606, 1.0 - v607.f32[3]));
                  v608 = &v78[2 * v761];
                  if (v608 >= v56)
                  {
                    v609 = -v764;
                  }

                  else
                  {
                    v609 = 0;
                  }

                  v78 = &v608[2 * v609];
                  v79 += v761;
                  --v605;
                }

                while (v605);
                v79 += v791;
                v610 = v797;
                v611 = &v797[2 * v795];
                if (v611 >= v793)
                {
                  v612 = -(v795 * v762);
                }

                else
                {
                  v612 = 0;
                }

                v613 = &v611[2 * v612];
                v614 = v56 + 16 * v612 + 16 * v795;
                if (v793)
                {
                  v56 = v614;
                  v610 = v613;
                }

                v797 = v610;
                if (v793)
                {
                  v78 = v613;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v604;
              }

              while (v604);
              goto LABEL_941;
            case 11:
              v331 = v799[0];
              do
              {
                v332 = v20;
                do
                {
                  v333 = COERCE_FLOAT(bswap32(v79->i32[0]));
                  v334 = COERCE_FLOAT(bswap32(v79->u32[1]));
                  v335 = COERCE_FLOAT(bswap32(v79->u32[2]));
                  v336 = COERCE_FLOAT(bswap32(v79->u32[3]));
                  v337 = COERCE_FLOAT(bswap32(v78->i32[0]));
                  v338 = COERCE_FLOAT(bswap32(v78->u32[1]));
                  v339 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
                  v340 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
                  if (!v16)
                  {
                    v336 = 1.0;
                  }

                  if (!v55)
                  {
                    v340 = 1.0;
                  }

                  v341 = (v336 - v333) + (v340 - v337);
                  v342 = (v336 - v334) + (v340 - v338);
                  v343 = (v336 - v335) + (v340 - v339);
                  if ((v336 + v340) <= 1.0)
                  {
                    v344 = v336 + v340;
                  }

                  else
                  {
                    v344 = 1.0;
                  }

                  *v345.i32 = v344 - v341;
                  *&v345.i32[1] = v344 - v342;
                  v345.i64[1] = __PAIR64__(LODWORD(v344), v344 - v343);
                  *v79 = vrev32q_s8(v345);
                  v346 = &v78[2 * v761];
                  if (v346 >= v56)
                  {
                    v347 = -v764;
                  }

                  else
                  {
                    v347 = 0;
                  }

                  v78 = &v346[2 * v347];
                  v79 += v761;
                  --v332;
                }

                while (v332);
                v79 += v791;
                v348 = v797;
                v349 = &v797[2 * v795];
                if (v349 >= v793)
                {
                  v350 = -(v795 * v762);
                }

                else
                {
                  v350 = 0;
                }

                v351 = &v349[2 * v350];
                v352 = v56 + 16 * v350 + 16 * v795;
                if (v793)
                {
                  v56 = v352;
                  v348 = v351;
                }

                v797 = v348;
                if (v793)
                {
                  v78 = v351;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v799[0] = --v331;
              }

              while (v331);
              goto LABEL_942;
            case 12:
              v367 = v799[0];
              do
              {
                v368 = v20;
                do
                {
                  v369 = COERCE_FLOAT(bswap32(v79->u32[2]));
                  v370 = COERCE_FLOAT(bswap32(v79->u32[3]));
                  v371 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
                  v372 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
                  if (!v55)
                  {
                    v372 = 1.0;
                  }

                  v373 = v372 + v370;
                  *v374.i8 = vadd_f32(vrev32_s8(*v79->i8), vrev32_s8(*v78));
                  v375 = v369 + v371;
                  if (v373 > 1.0)
                  {
                    v373 = 1.0;
                  }

                  v374.i64[1] = __PAIR64__(LODWORD(v373), LODWORD(v375));
                  *v79 = vrev32q_s8(v374);
                  v376 = &v78[2 * v761];
                  if (v376 >= v56)
                  {
                    v377 = -v764;
                  }

                  else
                  {
                    v377 = 0;
                  }

                  v78 = &v376[2 * v377];
                  v79 += v761;
                  --v368;
                }

                while (v368);
                v79 += v791;
                v378 = v797;
                v379 = &v797[2 * v795];
                if (v379 >= v793)
                {
                  v380 = -(v795 * v762);
                }

                else
                {
                  v380 = 0;
                }

                v381 = &v379[2 * v380];
                v382 = v56 + 16 * v380 + 16 * v795;
                if (v793)
                {
                  v56 = v382;
                  v378 = v381;
                }

                v797 = v378;
                if (v793)
                {
                  v78 = v381;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v367;
              }

              while (v367);
              goto LABEL_941;
            case 13:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v786 = v20;
              v550 = v799[0];
              do
              {
                v773 = v550;
                v551 = v786;
                do
                {
                  v552 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v553 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v553;
                    if (v16 && (v552 = v553, v553 <= 0.0))
                    {
                      v557 = v78[1].u32[0];
                      v558 = bswap32(LODWORD(v12));
                      v560 = *v78;
                    }

                    else
                    {
                      v554 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v555 = *v78->i8;
                      LODWORD(v555) = v554.i32[1];
                      v750 = vrev32q_s8(*v78->i8);
                      *v556.i32 = PDAmultiplyPDA(*v554.i32, *&v555, v9, v10, v552, v12, *v750.i64, v14, *v750.i32, *&v750.i64[1], *&v12);
                      v557 = bswap32(LODWORD(v9));
                      v558 = bswap32(LODWORD(v10));
                      v556.i32[1] = v559;
                      v560 = vrev32_s8(v556);
                    }

                    *v79->i8 = v560;
                    v79->i32[2] = v557;
                    v79->i32[3] = v558;
                  }

                  v561 = &v78[2 * v761];
                  if (v561 >= v56)
                  {
                    v562 = -v764;
                  }

                  else
                  {
                    v562 = 0;
                  }

                  v78 = &v561[2 * v562];
                  v79 += v761;
                  --v551;
                }

                while (v551);
                v79 += v791;
                v563 = v797;
                v564 = &v797[2 * v795];
                v565 = -(v795 * v762);
                if (v564 < v793)
                {
                  v565 = 0;
                }

                v566 = &v564[2 * v565];
                v567 = v56 + 16 * v565 + 16 * v795;
                if (v793)
                {
                  v56 = v567;
                  v563 = v566;
                }

                v797 = v563;
                if (v793)
                {
                  v78 = v566;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v550 = v773 - 1;
              }

              while (v773 != 1);
              goto LABEL_888;
            case 14:
              v314 = v799[0];
              __asm { FMOV            V1.2S, #1.0 }

              do
              {
                v316 = v20;
                do
                {
                  v317 = 1.0;
                  v318 = 1.0;
                  if (!v55 || (v318 = COERCE_FLOAT(bswap32(v78[1].u32[1])), v318 > 0.0))
                  {
                    if (v16 && (v317 = COERCE_FLOAT(bswap32(v79->u32[3])), v317 <= 0.0))
                    {
                      v320 = v78[1].u32[0];
                      v323 = bswap32(LODWORD(v318));
                      *v79->i8 = *v78;
                    }

                    else
                    {
                      v319 = COERCE_FLOAT(bswap32(v79->u32[2]));
                      v320 = bswap32(COERCE_UNSIGNED_INT(v319 + (COERCE_FLOAT(bswap32(v78[1].u32[0])) * (1.0 - v319))));
                      *&v321 = (v318 + v317) - (v317 * v318);
                      v322 = vrev32_s8(*v79->i8);
                      *v79->i8 = vrev32_s8(vmla_f32(v322, vsub_f32(_D1, v322), vrev32_s8(*v78)));
                      v323 = bswap32(v321);
                    }

                    v79->i32[2] = v320;
                    v79->i32[3] = v323;
                  }

                  v324 = &v78[2 * v761];
                  if (v324 >= v56)
                  {
                    v325 = -v764;
                  }

                  else
                  {
                    v325 = 0;
                  }

                  v78 = &v324[2 * v325];
                  v79 += v761;
                  --v316;
                }

                while (v316);
                v79 += v791;
                v326 = v797;
                v327 = &v797[2 * v795];
                if (v327 >= v793)
                {
                  v328 = -(v795 * v762);
                }

                else
                {
                  v328 = 0;
                }

                v329 = &v327[2 * v328];
                v330 = v56 + 16 * v328 + 16 * v795;
                if (v793)
                {
                  v56 = v330;
                  v326 = v329;
                }

                v797 = v326;
                if (v793)
                {
                  v78 = v329;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v314;
              }

              while (v314);
              goto LABEL_941;
            case 15:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v782 = v20;
              v442 = v799[0];
              do
              {
                v769 = v442;
                v443 = v782;
                do
                {
                  v444 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v445 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v445;
                    if (v16 && (v444 = v445, v445 <= 0.0))
                    {
                      v449 = v78[1].u32[0];
                      v450 = bswap32(LODWORD(v12));
                      v452 = *v78;
                    }

                    else
                    {
                      v446 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v447 = *v78->i8;
                      LODWORD(v447) = v446.i32[1];
                      v746 = vrev32q_s8(*v78->i8);
                      *v448.i32 = PDAoverlayPDA(*v446.i32, *&v447, v9, v10, v444, v12, *v746.i64, v14, *v746.i32, *&v746.i64[1], *&v12);
                      v449 = bswap32(LODWORD(v9));
                      v450 = bswap32(LODWORD(v10));
                      v448.i32[1] = v451;
                      v452 = vrev32_s8(v448);
                    }

                    *v79->i8 = v452;
                    v79->i32[2] = v449;
                    v79->i32[3] = v450;
                  }

                  v453 = &v78[2 * v761];
                  if (v453 >= v56)
                  {
                    v454 = -v764;
                  }

                  else
                  {
                    v454 = 0;
                  }

                  v78 = &v453[2 * v454];
                  v79 += v761;
                  --v443;
                }

                while (v443);
                v79 += v791;
                v455 = v797;
                v456 = &v797[2 * v795];
                v457 = -(v795 * v762);
                if (v456 < v793)
                {
                  v457 = 0;
                }

                v458 = &v456[2 * v457];
                v459 = v56 + 16 * v457 + 16 * v795;
                if (v793)
                {
                  v56 = v459;
                  v455 = v458;
                }

                v797 = v455;
                if (v793)
                {
                  v78 = v458;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v442 = v769 - 1;
              }

              while (v769 != 1);
              goto LABEL_888;
            case 16:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v779 = v20;
              v296 = v799[0];
              do
              {
                v766 = v296;
                v297 = v779;
                do
                {
                  v298 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v299 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v299;
                    if (v16 && (v298 = v299, v299 <= 0.0))
                    {
                      v303 = v78[1].u32[0];
                      v304 = bswap32(LODWORD(v12));
                      v306 = *v78;
                    }

                    else
                    {
                      v300 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v301 = *v78->i8;
                      LODWORD(v301) = v300.i32[1];
                      v743 = vrev32q_s8(*v78->i8);
                      *v302.i32 = PDAdarkenPDA(*v300.i32, *&v301, v9, v10, v298, v12, *v743.i64, v14, *v743.i32, *&v743.i64[1], *&v12);
                      v303 = bswap32(LODWORD(v9));
                      v304 = bswap32(LODWORD(v10));
                      v302.i32[1] = v305;
                      v306 = vrev32_s8(v302);
                    }

                    *v79->i8 = v306;
                    v79->i32[2] = v303;
                    v79->i32[3] = v304;
                  }

                  v307 = &v78[2 * v761];
                  if (v307 >= v56)
                  {
                    v308 = -v764;
                  }

                  else
                  {
                    v308 = 0;
                  }

                  v78 = &v307[2 * v308];
                  v79 += v761;
                  --v297;
                }

                while (v297);
                v79 += v791;
                v309 = v797;
                v310 = &v797[2 * v795];
                v311 = -(v795 * v762);
                if (v310 < v793)
                {
                  v311 = 0;
                }

                v312 = &v310[2 * v311];
                v313 = v56 + 16 * v311 + 16 * v795;
                if (v793)
                {
                  v56 = v313;
                  v309 = v312;
                }

                v797 = v309;
                if (v793)
                {
                  v78 = v312;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v296 = v766 - 1;
              }

              while (v766 != 1);
              goto LABEL_888;
            case 17:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v783 = v20;
              v487 = v799[0];
              do
              {
                v770 = v487;
                v488 = v783;
                do
                {
                  v489 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v490 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v490;
                    if (v16 && (v489 = v490, v490 <= 0.0))
                    {
                      v494 = v78[1].u32[0];
                      v495 = bswap32(LODWORD(v12));
                      v497 = *v78;
                    }

                    else
                    {
                      v491 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v492 = *v78->i8;
                      LODWORD(v492) = v491.i32[1];
                      v747 = vrev32q_s8(*v78->i8);
                      *v493.i32 = PDAlightenPDA(*v491.i32, *&v492, v9, v10, v489, v12, *v747.i64, v14, *v747.i32, *&v747.i64[1], *&v12);
                      v494 = bswap32(LODWORD(v9));
                      v495 = bswap32(LODWORD(v10));
                      v493.i32[1] = v496;
                      v497 = vrev32_s8(v493);
                    }

                    *v79->i8 = v497;
                    v79->i32[2] = v494;
                    v79->i32[3] = v495;
                  }

                  v498 = &v78[2 * v761];
                  if (v498 >= v56)
                  {
                    v499 = -v764;
                  }

                  else
                  {
                    v499 = 0;
                  }

                  v78 = &v498[2 * v499];
                  v79 += v761;
                  --v488;
                }

                while (v488);
                v79 += v791;
                v500 = v797;
                v501 = &v797[2 * v795];
                v502 = -(v795 * v762);
                if (v501 < v793)
                {
                  v502 = 0;
                }

                v503 = &v501[2 * v502];
                v504 = v56 + 16 * v502 + 16 * v795;
                if (v793)
                {
                  v56 = v504;
                  v500 = v503;
                }

                v797 = v500;
                if (v793)
                {
                  v78 = v503;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v487 = v770 - 1;
              }

              while (v770 != 1);
              goto LABEL_888;
            case 18:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v787 = v20;
              v586 = v799[0];
              do
              {
                v774 = v586;
                v587 = v787;
                do
                {
                  v588 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v589 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v589;
                    if (v16 && (v588 = v589, v589 <= 0.0))
                    {
                      v593 = v78[1].u32[0];
                      v594 = bswap32(LODWORD(v12));
                      v596 = *v78;
                    }

                    else
                    {
                      v590 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v591 = *v78->i8;
                      LODWORD(v591) = v590.i32[1];
                      v751 = vrev32q_s8(*v78->i8);
                      *v592.i32 = PDAcolordodgePDA(*v590.i32, *&v591, v9, v10, v588, v12, *v751.i64, v14, *v751.i32, *&v751.i64[1], *&v12);
                      v593 = bswap32(LODWORD(v9));
                      v594 = bswap32(LODWORD(v10));
                      v592.i32[1] = v595;
                      v596 = vrev32_s8(v592);
                    }

                    *v79->i8 = v596;
                    v79->i32[2] = v593;
                    v79->i32[3] = v594;
                  }

                  v597 = &v78[2 * v761];
                  if (v597 >= v56)
                  {
                    v598 = -v764;
                  }

                  else
                  {
                    v598 = 0;
                  }

                  v78 = &v597[2 * v598];
                  v79 += v761;
                  --v587;
                }

                while (v587);
                v79 += v791;
                v599 = v797;
                v600 = &v797[2 * v795];
                v601 = -(v795 * v762);
                if (v600 < v793)
                {
                  v601 = 0;
                }

                v602 = &v600[2 * v601];
                v603 = v56 + 16 * v601 + 16 * v795;
                if (v793)
                {
                  v56 = v603;
                  v599 = v602;
                }

                v797 = v599;
                if (v793)
                {
                  v78 = v602;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v586 = v774 - 1;
              }

              while (v774 != 1);
              goto LABEL_888;
            case 19:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v788 = v20;
              v650 = v799[0];
              do
              {
                v775 = v650;
                v651 = v788;
                do
                {
                  v652 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v653 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v653;
                    if (v16 && (v652 = v653, v653 <= 0.0))
                    {
                      v657 = v78[1].u32[0];
                      v658 = bswap32(LODWORD(v12));
                      v660 = *v78;
                    }

                    else
                    {
                      v654 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v655 = *v78->i8;
                      LODWORD(v655) = v654.i32[1];
                      v752 = vrev32q_s8(*v78->i8);
                      *v656.i32 = PDAcolorburnPDA(*v654.i32, *&v655, v9, v10, v652, v12, *v752.i64, v14, *v752.i32, *&v752.i64[1], *&v12);
                      v657 = bswap32(LODWORD(v9));
                      v658 = bswap32(LODWORD(v10));
                      v656.i32[1] = v659;
                      v660 = vrev32_s8(v656);
                    }

                    *v79->i8 = v660;
                    v79->i32[2] = v657;
                    v79->i32[3] = v658;
                  }

                  v661 = &v78[2 * v761];
                  if (v661 >= v56)
                  {
                    v662 = -v764;
                  }

                  else
                  {
                    v662 = 0;
                  }

                  v78 = &v661[2 * v662];
                  v79 += v761;
                  --v651;
                }

                while (v651);
                v79 += v791;
                v663 = v797;
                v664 = &v797[2 * v795];
                v665 = -(v795 * v762);
                if (v664 < v793)
                {
                  v665 = 0;
                }

                v666 = &v664[2 * v665];
                v667 = v56 + 16 * v665 + 16 * v795;
                if (v793)
                {
                  v56 = v667;
                  v663 = v666;
                }

                v797 = v663;
                if (v793)
                {
                  v78 = v666;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v650 = v775 - 1;
              }

              while (v775 != 1);
              goto LABEL_888;
            case 20:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v784 = v20;
              v505 = v799[0];
              do
              {
                v771 = v505;
                v506 = v784;
                do
                {
                  v11.i32[0] = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v507 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v507;
                    if (v16 && (*v11.i32 = v507, v507 <= 0.0))
                    {
                      v510 = v78[1].u32[0];
                      v511 = bswap32(LODWORD(v12));
                      v513 = *v78;
                    }

                    else
                    {
                      v508 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v748 = vrev32q_s8(*v78->i8);
                      *v509.i32 = PDAsoftlightPDA(*v508.i32, *&v508.i32[1], v9, *&v10, *v11.i64, v12, *v748.i64, v14, v1, v2, v24, v3, v4, v20, v38, v39, v748.u32[0], v748.u32[1], v748.i64[1], *&v12);
                      v510 = bswap32(LODWORD(v9));
                      v511 = bswap32(LODWORD(v10));
                      v509.i32[1] = v512;
                      v513 = vrev32_s8(v509);
                    }

                    *v79->i8 = v513;
                    v79->i32[2] = v510;
                    v79->i32[3] = v511;
                  }

                  v514 = &v78[2 * v761];
                  if (v514 >= v56)
                  {
                    v515 = -v764;
                  }

                  else
                  {
                    v515 = 0;
                  }

                  v78 = &v514[2 * v515];
                  v79 += v761;
                  --v506;
                }

                while (v506);
                v79 += v791;
                v516 = v797;
                v517 = &v797[2 * v795];
                v518 = -(v795 * v762);
                if (v517 < v793)
                {
                  v518 = 0;
                }

                v519 = &v517[2 * v518];
                v520 = v56 + 16 * v518 + 16 * v795;
                if (v793)
                {
                  v56 = v520;
                  v516 = v519;
                }

                v797 = v516;
                if (v793)
                {
                  v78 = v519;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v505 = v771 - 1;
              }

              while (v771 != 1);
              goto LABEL_888;
            case 21:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v785 = v20;
              v532 = v799[0];
              do
              {
                v772 = v532;
                v533 = v785;
                do
                {
                  v534 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v535 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v535;
                    if (v16 && (v534 = v535, v535 <= 0.0))
                    {
                      v539 = v78[1].u32[0];
                      v540 = bswap32(LODWORD(v12));
                      v542 = *v78;
                    }

                    else
                    {
                      v536 = vrev32_s8(*v79->i8);
                      LODWORD(v9) = bswap32(v79->u32[2]);
                      v537 = *v78->i8;
                      LODWORD(v537) = v536.i32[1];
                      v749 = vrev32q_s8(*v78->i8);
                      *v538.i32 = PDAhardlightPDA(*v536.i32, *&v537, v9, v10, v534, v12, *v749.i64, v14, *v749.i32, *&v749.i64[1], *&v12);
                      v539 = bswap32(LODWORD(v9));
                      v540 = bswap32(LODWORD(v10));
                      v538.i32[1] = v541;
                      v542 = vrev32_s8(v538);
                    }

                    *v79->i8 = v542;
                    v79->i32[2] = v539;
                    v79->i32[3] = v540;
                  }

                  v543 = &v78[2 * v761];
                  if (v543 >= v56)
                  {
                    v544 = -v764;
                  }

                  else
                  {
                    v544 = 0;
                  }

                  v78 = &v543[2 * v544];
                  v79 += v761;
                  --v533;
                }

                while (v533);
                v79 += v791;
                v545 = v797;
                v546 = &v797[2 * v795];
                v547 = -(v795 * v762);
                if (v546 < v793)
                {
                  v547 = 0;
                }

                v548 = &v546[2 * v547];
                v549 = v56 + 16 * v547 + 16 * v795;
                if (v793)
                {
                  v56 = v549;
                  v545 = v548;
                }

                v797 = v545;
                if (v793)
                {
                  v78 = v548;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v532 = v772 - 1;
              }

              while (v772 != 1);
              goto LABEL_888;
            case 22:
              v625 = v799[0];
              do
              {
                v626 = v20;
                do
                {
                  v627 = 1.0;
                  v628 = 1.0;
                  if (!v55 || (v628 = COERCE_FLOAT(bswap32(v78[1].u32[1])), v628 > 0.0))
                  {
                    if (v16 && (v627 = COERCE_FLOAT(bswap32(v79->u32[3])), v627 <= 0.0))
                    {
                      v640 = v78[1].u32[0];
                      v641 = bswap32(LODWORD(v628));
                      v642 = *v78;
                    }

                    else
                    {
                      v629 = COERCE_FLOAT(bswap32(v79->u32[2]));
                      v630 = vrev32_s8(*v79->i8);
                      v631 = vrev32q_s8(*v78->i8);
                      v632 = vadd_f32(*v631.f32, v630);
                      v633 = vmul_n_f32(v630, v628);
                      v634 = vmul_n_f32(*v631.f32, v627);
                      v635 = vsub_f32(v632, v633);
                      v636 = vsub_f32(v633, v634);
                      v637 = vadd_f32(vsub_f32(v635, v634), vbsl_s8(vcltz_f32(v636), vneg_f32(v636), v636));
                      v631.f32[0] = vmuls_lane_f32(v627, v631, 2);
                      v638 = (v628 * v629) - v631.f32[0];
                      v639 = ((v631.f32[2] + v629) - (v628 * v629)) - v631.f32[0];
                      if (v638 < 0.0)
                      {
                        v638 = -v638;
                      }

                      v640 = bswap32(COERCE_UNSIGNED_INT(v639 + v638));
                      v641 = bswap32(COERCE_UNSIGNED_INT((v627 + v628) - (v627 * v628)));
                      v642 = vrev32_s8(v637);
                    }

                    *v79->i8 = v642;
                    v79->i32[2] = v640;
                    v79->i32[3] = v641;
                  }

                  v643 = &v78[2 * v761];
                  if (v643 >= v56)
                  {
                    v644 = -v764;
                  }

                  else
                  {
                    v644 = 0;
                  }

                  v78 = &v643[2 * v644];
                  v79 += v761;
                  --v626;
                }

                while (v626);
                v79 += v791;
                v645 = v797;
                v646 = &v797[2 * v795];
                if (v646 >= v793)
                {
                  v647 = -(v795 * v762);
                }

                else
                {
                  v647 = 0;
                }

                v648 = &v646[2 * v647];
                v649 = v56 + 16 * v647 + 16 * v795;
                if (v793)
                {
                  v56 = v649;
                  v645 = v648;
                }

                v797 = v645;
                if (v793)
                {
                  v78 = v648;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v625;
              }

              while (v625);
              goto LABEL_941;
            case 23:
              v668 = v799[0];
              do
              {
                v669 = v20;
                do
                {
                  v670 = 1.0;
                  v671 = 1.0;
                  if (!v55 || (v671 = COERCE_FLOAT(bswap32(v78[1].u32[1])), v671 > 0.0))
                  {
                    if (v16 && (v670 = COERCE_FLOAT(bswap32(v79->u32[3])), v670 <= 0.0))
                    {
                      v674 = v78[1].u32[0];
                      v678 = bswap32(LODWORD(v671));
                      *v79->i8 = *v78;
                    }

                    else
                    {
                      v672 = COERCE_FLOAT(bswap32(v79->u32[2]));
                      v673 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
                      v674 = bswap32(COERCE_UNSIGNED_INT((v672 + v673) + ((v672 * v673) * -2.0)));
                      *&v675 = (v671 + v670) - (v670 * v671);
                      v676 = vrev32_s8(*v79->i8);
                      v677 = vrev32_s8(*v78);
                      *v79->i8 = vrev32_s8(vmla_f32(vadd_f32(v676, v677), 0xC0000000C0000000, vmul_f32(v676, v677)));
                      v678 = bswap32(v675);
                    }

                    v79->i32[2] = v674;
                    v79->i32[3] = v678;
                  }

                  v679 = &v78[2 * v761];
                  if (v679 >= v56)
                  {
                    v680 = -v764;
                  }

                  else
                  {
                    v680 = 0;
                  }

                  v78 = &v679[2 * v680];
                  v79 += v761;
                  --v669;
                }

                while (v669);
                v79 += v791;
                v681 = v797;
                v682 = &v797[2 * v795];
                if (v682 >= v793)
                {
                  v683 = -(v795 * v762);
                }

                else
                {
                  v683 = 0;
                }

                v684 = &v682[2 * v683];
                v685 = v56 + 16 * v683 + 16 * v795;
                if (v793)
                {
                  v56 = v685;
                  v681 = v684;
                }

                v797 = v681;
                if (v793)
                {
                  v78 = v684;
                }

                else
                {
                  v78 += 2 * v795;
                }

                --v668;
              }

              while (v668);
              goto LABEL_941;
            case 24:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v781 = v20;
              v412 = v799[0];
              do
              {
                v768 = v412;
                v413 = v781;
                do
                {
                  v414 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v415 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v415;
                    if (v16 && (v414 = v415, v415 <= 0.0))
                    {
                      v419 = v78[1].u32[0];
                      v420 = bswap32(LODWORD(v12));
                      v422 = *v78;
                    }

                    else
                    {
                      v416 = vrev32_s8(*v79->i8);
                      v745 = vrev32q_s8(*v78->i8);
                      *v417.i32 = PDAhuePDA(*v416.i32, *&v416.i32[1], COERCE_FLOAT(bswap32(v79->u32[2])), v10, v414, v12, *v745.i64, v14, *v745.i32, *&v745.i32[1], *&v745.i32[2], *&v745.i32[3], *&v12);
                      v419 = bswap32(v418);
                      v420 = bswap32(LODWORD(v10));
                      v417.i32[1] = v421;
                      v422 = vrev32_s8(v417);
                    }

                    *v79->i8 = v422;
                    v79->i32[2] = v419;
                    v79->i32[3] = v420;
                  }

                  v423 = &v78[2 * v761];
                  if (v423 >= v56)
                  {
                    v424 = -v764;
                  }

                  else
                  {
                    v424 = 0;
                  }

                  v78 = &v423[2 * v424];
                  v79 += v761;
                  --v413;
                }

                while (v413);
                v79 += v791;
                v425 = v797;
                v426 = &v797[2 * v795];
                v427 = -(v795 * v762);
                if (v426 < v793)
                {
                  v427 = 0;
                }

                v428 = &v426[2 * v427];
                v429 = v56 + 16 * v427 + 16 * v795;
                if (v793)
                {
                  v56 = v429;
                  v425 = v428;
                }

                v797 = v425;
                if (v793)
                {
                  v78 = v428;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v412 = v768 - 1;
              }

              while (v768 != 1);
              goto LABEL_888;
            case 25:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v780 = v20;
              v394 = v799[0];
              do
              {
                v767 = v394;
                v395 = v780;
                do
                {
                  v396 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v397 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v397;
                    if (v16 && (v396 = v397, v397 <= 0.0))
                    {
                      v401 = v78[1].u32[0];
                      v402 = bswap32(LODWORD(v12));
                      v404 = *v78;
                    }

                    else
                    {
                      v398 = vrev32_s8(*v79->i8);
                      v744 = vrev32q_s8(*v78->i8);
                      *v399.i32 = PDAsaturationPDA(*v398.i32, *&v398.i32[1], COERCE_FLOAT(bswap32(v79->u32[2])), v10, v396, v12, *v744.i64, v14, *v744.i32, *&v744.i32[1], *&v744.i32[2], *&v744.i32[3], *&v12);
                      v401 = bswap32(v400);
                      v402 = bswap32(LODWORD(v10));
                      v399.i32[1] = v403;
                      v404 = vrev32_s8(v399);
                    }

                    *v79->i8 = v404;
                    v79->i32[2] = v401;
                    v79->i32[3] = v402;
                  }

                  v405 = &v78[2 * v761];
                  if (v405 >= v56)
                  {
                    v406 = -v764;
                  }

                  else
                  {
                    v406 = 0;
                  }

                  v78 = &v405[2 * v406];
                  v79 += v761;
                  --v395;
                }

                while (v395);
                v79 += v791;
                v407 = v797;
                v408 = &v797[2 * v795];
                v409 = -(v795 * v762);
                if (v408 < v793)
                {
                  v409 = 0;
                }

                v410 = &v408[2 * v409];
                v411 = v56 + 16 * v409 + 16 * v795;
                if (v793)
                {
                  v56 = v411;
                  v407 = v410;
                }

                v797 = v407;
                if (v793)
                {
                  v78 = v410;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v394 = v767 - 1;
              }

              while (v767 != 1);
              goto LABEL_888;
            case 26:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v789 = v20;
              v686 = v799[0];
              do
              {
                v776 = v686;
                v687 = v789;
                do
                {
                  LODWORD(v12) = 1.0;
                  v688 = 1.0;
                  if (!v55 || (v688 = COERCE_FLOAT(bswap32(v78[1].u32[1])), v688 > 0.0))
                  {
                    v689 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v13 = v689;
                    if (v16 && (*&v12 = v689, v689 <= 0.0))
                    {
                      v693 = v78[1].u32[0];
                      v694 = bswap32(LODWORD(v688));
                      v696 = *v78;
                    }

                    else
                    {
                      v690 = vrev32q_s8(*v78->i8);
                      LODWORD(v10) = v690.i32[3];
                      v753 = COERCE_DOUBLE(vrev32_s8(*v79->i8));
                      *v691.i32 = PDAluminosityPDA(*v690.i32, *&v690.i32[1], *&v690.i32[2], v10, v688, v12, v13, v753, *&v753, *(&v753 + 1), COERCE_FLOAT(bswap32(v79->u32[2])), *&v13, *&v12);
                      v693 = bswap32(v692);
                      v694 = bswap32(LODWORD(v10));
                      v691.i32[1] = v695;
                      v696 = vrev32_s8(v691);
                    }

                    *v79->i8 = v696;
                    v79->i32[2] = v693;
                    v79->i32[3] = v694;
                  }

                  v697 = &v78[2 * v761];
                  if (v697 >= v56)
                  {
                    v698 = -v764;
                  }

                  else
                  {
                    v698 = 0;
                  }

                  v78 = &v697[2 * v698];
                  v79 += v761;
                  --v687;
                }

                while (v687);
                v79 += v791;
                v699 = v797;
                v700 = &v797[2 * v795];
                v701 = -(v795 * v762);
                if (v700 < v793)
                {
                  v701 = 0;
                }

                v702 = &v700[2 * v701];
                v703 = v56 + 16 * v701 + 16 * v795;
                if (v793)
                {
                  v56 = v703;
                  v699 = v702;
                }

                v797 = v699;
                if (v793)
                {
                  v78 = v702;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v686 = v776 - 1;
              }

              while (v776 != 1);
              goto LABEL_888;
            case 27:
              v758 = v37;
              v759 = v35;
              v760 = v36;
              v778 = v20;
              v278 = v799[0];
              do
              {
                v765 = v278;
                v279 = v778;
                do
                {
                  v280 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v55 || (LODWORD(v12) = bswap32(v78[1].u32[1]), *&v12 > 0.0))
                  {
                    v281 = COERCE_FLOAT(bswap32(v79->u32[3]));
                    *&v10 = v281;
                    if (v16 && (v280 = v281, v281 <= 0.0))
                    {
                      v285 = v78[1].u32[0];
                      v286 = bswap32(LODWORD(v12));
                      v288 = *v78;
                    }

                    else
                    {
                      v282 = vrev32_s8(*v79->i8);
                      v742 = vrev32q_s8(*v78->i8);
                      *v283.i32 = PDAluminosityPDA(*v282.i32, *&v282.i32[1], COERCE_FLOAT(bswap32(v79->u32[2])), v10, v280, v12, *v742.i64, v14, *v742.i32, *&v742.i32[1], *&v742.i32[2], *&v742.i32[3], *&v12);
                      v285 = bswap32(v284);
                      v286 = bswap32(LODWORD(v10));
                      v283.i32[1] = v287;
                      v288 = vrev32_s8(v283);
                    }

                    *v79->i8 = v288;
                    v79->i32[2] = v285;
                    v79->i32[3] = v286;
                  }

                  v289 = &v78[2 * v761];
                  if (v289 >= v56)
                  {
                    v290 = -v764;
                  }

                  else
                  {
                    v290 = 0;
                  }

                  v78 = &v289[2 * v290];
                  v79 += v761;
                  --v279;
                }

                while (v279);
                v79 += v791;
                v291 = v797;
                v292 = &v797[2 * v795];
                v293 = -(v795 * v762);
                if (v292 < v793)
                {
                  v293 = 0;
                }

                v294 = &v292[2 * v293];
                v295 = v56 + 16 * v293 + 16 * v795;
                if (v793)
                {
                  v56 = v295;
                  v291 = v294;
                }

                v797 = v291;
                if (v793)
                {
                  v78 = v294;
                }

                else
                {
                  v78 += 2 * v795;
                }

                v278 = v765 - 1;
              }

              while (v765 != 1);
LABEL_888:
              v799[0] = 0;
              LODWORD(v17) = v757;
              v37 = v758;
              v19 = v754;
              v35 = v759;
              v36 = v760;
              goto LABEL_942;
            default:
              goto LABEL_942;
          }

          break;
        }

LABEL_715:
        v569 = v20;
        while (1)
        {
          v570 = COERCE_FLOAT(bswap32(v79->u32[3]));
          v571 = 1.0 - v570;
          if ((1.0 - v570) >= 1.0)
          {
            break;
          }

          if (v571 > 0.0)
          {
            v572 = COERCE_FLOAT(bswap32(v79->u32[2]));
            v573 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
            v574 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
            if (!v55)
            {
              v574 = 1.0;
            }

            v575 = bswap32(COERCE_UNSIGNED_INT(v572 + (v573 * v571)));
            v576 = bswap32(COERCE_UNSIGNED_INT(v570 + (v574 * v571)));
            v577 = vrev32_s8(vmla_n_f32(vrev32_s8(*v79->i8), vrev32_s8(*v78), v571));
LABEL_724:
            *v79->i8 = v577;
            v79->i32[2] = v575;
            v79->i32[3] = v576;
          }

          v579 = &v78[2 * v761];
          if (v579 >= v56)
          {
            v580 = -v764;
          }

          else
          {
            v580 = 0;
          }

          v78 = &v579[2 * v580];
          v79 += v761;
          if (!--v569)
          {
            v79 += v791;
            v581 = v797;
            v582 = &v797[2 * v795];
            if (v582 >= v793)
            {
              v583 = -(v795 * v762);
            }

            else
            {
              v583 = 0;
            }

            v584 = &v582[2 * v583];
            v585 = v56 + 16 * v583 + 16 * v795;
            if (v793)
            {
              v56 = v585;
              v581 = v584;
            }

            v797 = v581;
            if (v793)
            {
              v78 = v584;
            }

            else
            {
              v78 += 2 * v795;
            }

            if (!--v568)
            {
LABEL_941:
              v799[0] = 0;
              goto LABEL_942;
            }

            goto LABEL_715;
          }
        }

        v575 = v78[1].u32[0];
        v578 = bswap32(v78[1].u32[1]);
        if (!v55)
        {
          v578 = 1065353216;
        }

        v576 = bswap32(v578);
        v577 = *v78;
        goto LABEL_724;
      }

      v791 = v36 - v20;
      if (v35)
      {
        v763 = 0;
        v76 = v40 % v764;
        v795 = *(v2 + 76) >> 4;
        v77 = v35 + 16 * v42 * (v41 % v762);
        v78 = (v77 + 16 * v76);
        v56 = v77 + 16 * v764;
        v761 = 1;
        v797 = v78;
        v79 = (*(v2 + 40) + 16 * v36 * *(v2 + 16) + 16 * *(v2 + 12));
        v755 = v41 % v762;
        v756 = v76;
        goto LABEL_316;
      }

      v755 = *(v2 + 60);
      v756 = *(v2 + 56);
      v56 = 0;
      v761 = 1;
      v82 = v20;
    }

    v763 = 0;
    v793 = 0;
    v797 = 0;
    v795 = v42 - v82;
    v78 = v35;
    v79 = v37;
    goto LABEL_316;
  }

  v25 = *(v2 + 128);
  if ((v25 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      RGBAF_mark_constmask(v2, v17, v24, v3, v4, v20, v25, v6, v7, v8, v9, v10, *v11.i64, v12, v13, v14);
    }

    else
    {
      RGBAF_mark_pixelmask(v2, v17, v7, v8, v9, v10, *v11.i64, v12, v13, v14);
    }
  }

  else
  {
    v50 = *(v2 + 112);
    v51 = *(v2 + 116);
    v52 = (v50 + 15) & 0xFFFFFFF0;
    v53 = v52 * v51;
    if (v53 <= 4096)
    {
      v34 = v809;
    }

    else
    {
      v54 = malloc_type_malloc(v53, 0x100004077774924uLL);
      if (!v54)
      {
        return 1;
      }

      v34 = v54;
      v24 = *(v19 + 136);
      LODWORD(v25) = *(v19 + 128);
    }

    CGSConvertBitsToMask(v24, *(v19 + 124), v34, v52, v50, v51, v25);
    v70 = *(v19 + 112);
    v805 = *(v19 + 96);
    v806 = v70;
    v71 = *(v19 + 144);
    v807 = *(v19 + 128);
    v808 = v71;
    v72 = *(v19 + 48);
    v801 = *(v19 + 32);
    v802 = v72;
    v73 = *(v19 + 80);
    v803 = *(v19 + 64);
    v804 = v73;
    v74 = *v19;
    v75 = *(v19 + 16);
    *v799 = *v19;
    v800 = v75;
    HIDWORD(v806) = (v50 + 15) & 0xFFFFFFF0;
    *(&v807 + 1) = v34;
    if (BYTE1(v799[0]) << 8 == 1024)
    {
      RGBAF_mark_constmask(v799, v17, v58, v59, v60, v61, v62, v63, *&v74, *&v75, v64, v65, v66, v67, v68, v69);
    }

    else
    {
      RGBAF_mark_pixelmask(v799, v17, *&v74, *&v75, v64, v65, v66, v67, v68, v69);
    }

    if (v34 != v809)
    {
      goto LABEL_312;
    }
  }

  return 1;
}

void RGBAF_mark_constmask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v16 = *(a1 + 136);
  if (v16)
  {
    v18 = *(a1 + 4);
    v17 = *(a1 + 8);
    v19 = *(a1 + 48);
    v20 = **(a1 + 88);
    v21 = vrev32q_s8(v20);
    v22 = *(a1 + 28) >> 4;
    v23 = *(a1 + 40) + 16 * v22 * *(a1 + 16) + 16 * *(a1 + 12);
    v24 = *(a1 + 124);
    v25 = v16 + *(a1 + 108) * v24 + *(a1 + 104);
    v26 = v24 - v18;
    v27 = v22 - v18;
    v272 = v21;
    switch(a2)
    {
      case 0:
        do
        {
          v28 = v18;
          do
          {
            v29 = *v25;
            if (*v25)
            {
              if (v29 == 255)
              {
                *v23 = 0;
                *(v23 + 8) = 0;
              }

              else
              {
                *v23 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v23), (v29 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v25;
            v23 += 16;
            --v28;
          }

          while (v28);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 1:
        v144 = -1;
        v145 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v18 += v145;
          v144 = -1 << (8 * v145);
          v146 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 16 * v146;
        }

        v147 = (v18 + v25) & 3;
        if (((v18 + v25) & 3) != 0)
        {
          v148 = 4 - v147;
          v145 += v148;
          v149 = 0xFFFFFFFF >> (8 * v148);
          if (v18 >= 4)
          {
            v147 = 0xFFFFFFFF >> (8 * v148);
          }

          else
          {
            v147 = 0;
          }

          if (v18 >= 4)
          {
            v149 = -1;
          }

          v144 &= v149;
        }

        v150 = v26 - v145;
        v151 = v27 - v145;
        do
        {
          v152 = *v25 & v144;
          v153 = v18 >> 2;
          v154 = v147;
          if (!v152)
          {
            goto LABEL_179;
          }

LABEL_177:
          if (v152 == -1)
          {
            *v23 = v20;
            *(v23 + 16) = v20;
            *(v23 + 32) = v20;
LABEL_197:
            *(v23 + 48) = v20;
            goto LABEL_179;
          }

          while (1)
          {
            if (v152)
            {
              v156 = v20;
              if (v152 != 255)
              {
                v156 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, v152 * 0.0039216), vrev32q_s8(*v23), 1.0 - (v152 * 0.0039216)));
              }

              *v23 = v156;
            }

            if (BYTE1(v152))
            {
              v157 = v20;
              if (BYTE1(v152) != 255)
              {
                v157 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, BYTE1(v152) * 0.0039216), vrev32q_s8(*(v23 + 16)), 1.0 - (BYTE1(v152) * 0.0039216)));
              }

              *(v23 + 16) = v157;
            }

            if (BYTE2(v152))
            {
              v158 = v20;
              if (BYTE2(v152) != 255)
              {
                v158 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, BYTE2(v152) * 0.0039216), vrev32q_s8(*(v23 + 32)), 1.0 - (BYTE2(v152) * 0.0039216)));
              }

              *(v23 + 32) = v158;
            }

            v159 = HIBYTE(v152);
            if (v159 == 255)
            {
              goto LABEL_197;
            }

            if (v159)
            {
              *(v23 + 48) = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, v159 * 0.0039216), vrev32q_s8(*(v23 + 48)), 1.0 - (v159 * 0.0039216)));
            }

LABEL_179:
            while (1)
            {
              v155 = v153;
              v23 += 64;
              --v153;
              v25 += 4;
              if (v155 < 2)
              {
                break;
              }

              v152 = *v25;
              if (*v25)
              {
                goto LABEL_177;
              }
            }

            if (!v154)
            {
              break;
            }

            v154 = 0;
            v152 = *v25 & v147;
          }

          v25 += v150;
          v23 += 16 * v151;
          --v17;
        }

        while (v17);
        return;
      case 2:
        v106 = -1;
        v107 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v18 += v107;
          v106 = -1 << (8 * v107);
          v108 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 16 * v108;
        }

        v109 = (v18 + v25) & 3;
        if (((v18 + v25) & 3) != 0)
        {
          v110 = 4 - v109;
          v107 += v110;
          v111 = 0xFFFFFFFF >> (8 * v110);
          if (v18 >= 4)
          {
            v109 = 0xFFFFFFFF >> (8 * v110);
          }

          else
          {
            v109 = 0;
          }

          if (v18 >= 4)
          {
            v111 = -1;
          }

          v106 &= v111;
        }

        v112 = v26 - v107;
        *v20.i32 = 1.0 - v21.f32[3];
        v113 = vdupq_lane_s32(*v20.i8, 0);
        v114 = v27 - v107;
        while (1)
        {
          v115 = *v25 & v106;
          v116 = v18 >> 2;
          v117 = v109;
          if (!v115)
          {
            goto LABEL_120;
          }

LABEL_118:
          if (v115 == -1)
          {
            break;
          }

          while (1)
          {
            if (v115)
            {
              v122 = vmulq_n_f32(v21, v115 * 0.0039216);
              *v23 = vrev32q_s8(vmlaq_n_f32(v122, vrev32q_s8(*v23), 1.0 - v122.f32[3]));
            }

            if ((v115 & 0xFF00) != 0)
            {
              v123 = vmulq_n_f32(v21, BYTE1(v115) * 0.0039216);
              *(v23 + 16) = vrev32q_s8(vmlaq_n_f32(v123, vrev32q_s8(*(v23 + 16)), 1.0 - v123.f32[3]));
            }

            if ((v115 & 0xFF0000) != 0)
            {
              v124 = vmulq_n_f32(v21, BYTE2(v115) * 0.0039216);
              *(v23 + 32) = vrev32q_s8(vmlaq_n_f32(v124, vrev32q_s8(*(v23 + 32)), 1.0 - v124.f32[3]));
            }

            v125 = HIBYTE(v115);
            if (v125)
            {
              v126 = vmulq_n_f32(v21, v125 * 0.0039216);
              v120 = vmlaq_n_f32(v126, vrev32q_s8(*(v23 + 48)), 1.0 - v126.f32[3]);
              goto LABEL_133;
            }

LABEL_120:
            while (1)
            {
              v121 = v116;
              v23 += 64;
              --v116;
              v25 += 4;
              if (v121 < 2)
              {
                break;
              }

              v115 = *v25;
              if (*v25)
              {
                goto LABEL_118;
              }
            }

            if (!v117)
            {
              break;
            }

            v117 = 0;
            v115 = *v25 & v109;
          }

          v25 += v112;
          v23 += 16 * v114;
          if (!--v17)
          {
            return;
          }
        }

        v118 = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*(v23 + 16))));
        *v23 = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*v23)));
        *(v23 + 16) = v118;
        v119 = *(v23 + 48);
        *(v23 + 32) = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*(v23 + 32))));
        v120 = vmlaq_f32(v21, v113, vrev32q_s8(v119));
LABEL_133:
        *(v23 + 48) = bswap32(v120.u32[0]);
        *(v23 + 52) = vrev32_s8(vext_s8(*v120.i8, *&vextq_s8(v120, v120, 8uLL), 4uLL));
        *(v23 + 60) = bswap32(v120.u32[3]);
        goto LABEL_120;
      case 3:
        do
        {
          v137 = v18;
          do
          {
            v138 = *v25;
            if (*v25)
            {
              if (v138 == 255)
              {
                v139 = vmulq_n_f32(v21, COERCE_FLOAT(bswap32(*(v23 + 12))));
              }

              else
              {
                v140 = vrev32q_s8(*v23);
                v139 = vmlaq_n_f32(vmulq_n_f32(v21, vmuls_lane_f32(v138 * 0.0039216, v140, 3)), v140, 1.0 - (v138 * 0.0039216));
              }

              *v23 = vrev32q_s8(v139);
            }

            ++v25;
            v23 += 16;
            --v137;
          }

          while (v137);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 4:
        do
        {
          v69 = v18;
          do
          {
            v70 = *v25;
            if (*v25)
            {
              if (v70 == 255)
              {
                v71 = vmulq_n_f32(v21, 1.0 - COERCE_FLOAT(bswap32(*(v23 + 12))));
              }

              else
              {
                v72 = vrev32q_s8(*v23);
                v71 = vmlaq_n_f32(vmulq_n_f32(v21, (v70 * 0.0039216) * (1.0 - v72.f32[3])), v72, 1.0 - (v70 * 0.0039216));
              }

              *v23 = vrev32q_s8(v71);
            }

            ++v25;
            v23 += 16;
            --v69;
          }

          while (v69);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 5:
        do
        {
          v179 = v18;
          do
          {
            if (*v25)
            {
              v180 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v181 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v181, 1.0 - v180.f32[3]), v180, v181, 3));
            }

            ++v25;
            v23 += 16;
            --v179;
          }

          while (v179);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 6:
        while (1)
        {
          v202 = v18;
          do
          {
            v203 = *v25;
            if (!*v25)
            {
              goto LABEL_263;
            }

            v204 = COERCE_FLOAT(bswap32(*(v23 + 12)));
            v205 = 1.0 - v204;
            if ((1.0 - v204) >= 1.0)
            {
              v210 = v203 * 0.0039216;
              v207 = bswap32(COERCE_UNSIGNED_INT(v210 * v21.f32[2]));
              v208 = bswap32(COERCE_UNSIGNED_INT(v210 * v21.f32[3]));
              v209 = vrev32_s8(vmul_n_f32(*v21.f32, v210));
            }

            else
            {
              if (v205 <= 0.0)
              {
                goto LABEL_263;
              }

              v206 = v203 * 0.0039216;
              v207 = bswap32(COERCE_UNSIGNED_INT(COERCE_FLOAT(bswap32(*(v23 + 8))) + ((v206 * v21.f32[2]) * v205)));
              v208 = bswap32(COERCE_UNSIGNED_INT(v204 + ((v206 * v21.f32[3]) * v205)));
              v209 = vrev32_s8(vmla_n_f32(vrev32_s8(*v23), vmul_n_f32(*v21.f32, v206), v205));
            }

            *v23 = v209;
            *(v23 + 8) = v207;
            *(v23 + 12) = v208;
LABEL_263:
            ++v25;
            v23 += 16;
            --v202;
          }

          while (v202);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 7:
        do
        {
          v141 = v18;
          do
          {
            v142 = *v25;
            if (*v25)
            {
              if (v142 == 255)
              {
                v143 = vmulq_laneq_f32(vrev32q_s8(*v23), v21, 3);
              }

              else
              {
                v143 = vmulq_n_f32(vrev32q_s8(*v23), ((v142 * 0.0039216) * v21.f32[3]) + (1.0 - (v142 * 0.0039216)));
              }

              *v23 = vrev32q_s8(v143);
            }

            ++v25;
            v23 += 16;
            --v141;
          }

          while (v141);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 8:
        do
        {
          v224 = v18;
          do
          {
            v225 = *v25;
            if (*v25)
            {
              if (v225 == 255)
              {
                v226 = vmulq_n_f32(vrev32q_s8(*v23), 1.0 - v21.f32[3]);
              }

              else
              {
                v226 = vmulq_n_f32(vrev32q_s8(*v23), ((v225 * -0.0039216) * v21.f32[3]) + 1.0);
              }

              *v23 = vrev32q_s8(v226);
            }

            ++v25;
            v23 += 16;
            --v224;
          }

          while (v224);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 9:
        do
        {
          v79 = v18;
          do
          {
            if (*v25)
            {
              v80 = *v25 * 0.0039216;
              v81 = 1.0 - v80;
              v82 = vmulq_n_f32(v21, v80);
              v83 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v83, v81 + v82.f32[3]), v82, 1.0 - v83.f32[3]));
            }

            ++v25;
            v23 += 16;
            --v79;
          }

          while (v79);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 10:
        do
        {
          v221 = v18;
          do
          {
            if (*v25)
            {
              v222 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v223 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v223, 1.0 - v222.f32[3]), v222, 1.0 - v223.f32[3]));
            }

            ++v25;
            v23 += 16;
            --v221;
          }

          while (v221);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 11:
        v62 = vextq_s8(v21, v21, 8uLL).u64[0];
        do
        {
          v63 = v18;
          do
          {
            if (*v25)
            {
              v64 = *v25 * 0.0039216;
              v65 = vmul_n_f32(v62, v64);
              v66 = COERCE_FLOAT(bswap32(*(v23 + 8)));
              LODWORD(a15) = bswap32(*(v23 + 12));
              if (!v19)
              {
                *&a15 = 1.0;
              }

              v67 = (*&v65.i32[1] - *v65.i32) + (*&a15 - v66);
              if ((*&v65.i32[1] + *&a15) <= 1.0)
              {
                *&a16 = *&v65.i32[1] + *&a15;
              }

              else
              {
                *&a16 = 1.0;
              }

              a15 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a15, 0), vrev32_s8(*v23)));
              *v68.i8 = vsub_f32(vdup_lane_s32(*&a16, 0), vadd_f32(vsub_f32(vdup_lane_s32(v65, 1), vmul_n_f32(*v21.f32, v64)), *&a15));
              *&v68.i32[2] = *&a16 - v67;
              v68.i32[3] = LODWORD(a16);
              *v23 = vrev32q_s8(v68);
            }

            ++v25;
            v23 += 16;
            --v63;
          }

          while (v63);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 12:
        do
        {
          v73 = v18;
          do
          {
            if (*v25)
            {
              v74 = *v25 * 0.0039216;
              v75 = v74 * v21.f32[2];
              v76 = (v74 * v21.f32[3]) + COERCE_FLOAT(bswap32(*(v23 + 12)));
              *v77.i8 = vadd_f32(vmul_n_f32(*v21.f32, v74), vrev32_s8(*v23));
              v78 = v75 + COERCE_FLOAT(bswap32(*(v23 + 8)));
              if (v76 > 1.0)
              {
                v76 = 1.0;
              }

              v77.i64[1] = __PAIR64__(LODWORD(v76), LODWORD(v78));
              *v23 = vrev32q_s8(v77);
            }

            ++v25;
            v23 += 16;
            --v73;
          }

          while (v73);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 13:
        while (1)
        {
          v192 = v18;
          do
          {
            if (*v25)
            {
              v193 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v193.i32[3] > 0.0)
              {
                v194 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v194;
                if (v19)
                {
                  v195 = v194;
                  if (v194 <= 0.0)
                  {
                    v196 = bswap32(v193.u32[2]);
                    v197 = bswap32(v193.u32[3]);
                    v198 = vrev32_s8(*v193.i8);
LABEL_252:
                    *v23 = v198;
                    *(v23 + 8) = v196;
                    *(v23 + 12) = v197;
                    goto LABEL_253;
                  }
                }

                else
                {
                  v195 = 1.0;
                }

                v199 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v199.i32[1];
                *&v200 = vextq_s8(v193, v193, 4uLL).u64[0];
                *v201.i32 = PDAmultiplyPDA(*v199.i32, a10, a11, a12, v195, *v193.i64, v200, a16, *v193.i32, COERCE_DOUBLE(__PAIR64__(v193.u32[3], HIDWORD(v200))), *&v193.i32[3]);
                v21 = v272;
                v196 = bswap32(LODWORD(a11));
                v197 = bswap32(LODWORD(a12));
                v201.i32[1] = LODWORD(a10);
                v198 = vrev32_s8(v201);
                goto LABEL_252;
              }
            }

LABEL_253:
            ++v25;
            v23 += 16;
            --v192;
          }

          while (v192);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 14:
        __asm { FMOV            V1.2S, #1.0 }

        while (1)
        {
          v56 = v18;
          do
          {
            if (*v25)
            {
              v57 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v57.f32[3] > 0.0)
              {
                if (v19)
                {
                  v58 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                  if (v58 <= 0.0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v58 = 1.0;
                }

                LODWORD(v59) = bswap32(*(v23 + 8));
                *v60.f32 = vrev32_s8(*v23);
                *v61.f32 = vsub_f32(_D1, *v60.f32);
                v61.f32[2] = 1.0 - v59;
                v61.f32[3] = -v58;
                v60.i64[1] = __PAIR64__(v57.f32[3] + v58, LODWORD(v59));
                v57 = vmlaq_f32(v60, v57, v61);
LABEL_44:
                *v23 = vrev32q_s8(v57);
              }
            }

            ++v25;
            v23 += 16;
            --v56;
          }

          while (v56);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 15:
        while (1)
        {
          v127 = v18;
          do
          {
            if (*v25)
            {
              v128 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v128.i32[3] > 0.0)
              {
                v129 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v129;
                if (v19)
                {
                  v130 = v129;
                  if (v129 <= 0.0)
                  {
                    v131 = bswap32(v128.u32[2]);
                    v132 = bswap32(v128.u32[3]);
                    v133 = vrev32_s8(*v128.i8);
LABEL_144:
                    *v23 = v133;
                    *(v23 + 8) = v131;
                    *(v23 + 12) = v132;
                    goto LABEL_145;
                  }
                }

                else
                {
                  v130 = 1.0;
                }

                v134 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v134.i32[1];
                *&v135 = vextq_s8(v128, v128, 4uLL).u64[0];
                *v136.i32 = PDAoverlayPDA(*v134.i32, a10, a11, a12, v130, *v128.i64, v135, a16, *v128.i32, COERCE_DOUBLE(__PAIR64__(v128.u32[3], HIDWORD(v135))), *&v128.i32[3]);
                v21 = v272;
                v131 = bswap32(LODWORD(a11));
                v132 = bswap32(LODWORD(a12));
                v136.i32[1] = LODWORD(a10);
                v133 = vrev32_s8(v136);
                goto LABEL_144;
              }
            }

LABEL_145:
            ++v25;
            v23 += 16;
            --v127;
          }

          while (v127);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 16:
        while (1)
        {
          v41 = v18;
          do
          {
            if (*v25)
            {
              v42 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v42.i32[3] > 0.0)
              {
                v43 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v43;
                if (v19)
                {
                  v44 = v43;
                  if (v43 <= 0.0)
                  {
                    v45 = bswap32(v42.u32[2]);
                    v46 = bswap32(v42.u32[3]);
                    v47 = vrev32_s8(*v42.i8);
LABEL_31:
                    *v23 = v47;
                    *(v23 + 8) = v45;
                    *(v23 + 12) = v46;
                    goto LABEL_32;
                  }
                }

                else
                {
                  v44 = 1.0;
                }

                v48 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v48.i32[1];
                *&v49 = vextq_s8(v42, v42, 4uLL).u64[0];
                *v50.i32 = PDAdarkenPDA(*v48.i32, a10, a11, a12, v44, *v42.i64, v49, a16, *v42.i32, COERCE_DOUBLE(__PAIR64__(v42.u32[3], HIDWORD(v49))), *&v42.i32[3]);
                v21 = v272;
                v45 = bswap32(LODWORD(a11));
                v46 = bswap32(LODWORD(a12));
                v50.i32[1] = LODWORD(a10);
                v47 = vrev32_s8(v50);
                goto LABEL_31;
              }
            }

LABEL_32:
            ++v25;
            v23 += 16;
            --v41;
          }

          while (v41);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 17:
        while (1)
        {
          v160 = v18;
          do
          {
            if (*v25)
            {
              v161 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v161.i32[3] > 0.0)
              {
                v162 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v162;
                if (v19)
                {
                  v163 = v162;
                  if (v162 <= 0.0)
                  {
                    v164 = bswap32(v161.u32[2]);
                    v165 = bswap32(v161.u32[3]);
                    v166 = vrev32_s8(*v161.i8);
LABEL_210:
                    *v23 = v166;
                    *(v23 + 8) = v164;
                    *(v23 + 12) = v165;
                    goto LABEL_211;
                  }
                }

                else
                {
                  v163 = 1.0;
                }

                v167 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v167.i32[1];
                *&v168 = vextq_s8(v161, v161, 4uLL).u64[0];
                *v169.i32 = PDAlightenPDA(*v167.i32, a10, a11, a12, v163, *v161.i64, v168, a16, *v161.i32, COERCE_DOUBLE(__PAIR64__(v161.u32[3], HIDWORD(v168))), *&v161.i32[3]);
                v21 = v272;
                v164 = bswap32(LODWORD(a11));
                v165 = bswap32(LODWORD(a12));
                v169.i32[1] = LODWORD(a10);
                v166 = vrev32_s8(v169);
                goto LABEL_210;
              }
            }

LABEL_211:
            ++v25;
            v23 += 16;
            --v160;
          }

          while (v160);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 18:
        while (1)
        {
          v211 = v18;
          do
          {
            if (*v25)
            {
              v212 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v212.i32[3] > 0.0)
              {
                v213 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v213;
                if (v19)
                {
                  v214 = v213;
                  if (v213 <= 0.0)
                  {
                    v215 = bswap32(v212.u32[2]);
                    v216 = bswap32(v212.u32[3]);
                    v217 = vrev32_s8(*v212.i8);
LABEL_274:
                    *v23 = v217;
                    *(v23 + 8) = v215;
                    *(v23 + 12) = v216;
                    goto LABEL_275;
                  }
                }

                else
                {
                  v214 = 1.0;
                }

                v218 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v218.i32[1];
                *&v219 = vextq_s8(v212, v212, 4uLL).u64[0];
                *v220.i32 = PDAcolordodgePDA(*v218.i32, a10, a11, a12, v214, *v212.i64, v219, a16, *v212.i32, COERCE_DOUBLE(__PAIR64__(v212.u32[3], HIDWORD(v219))), *&v212.i32[3]);
                v21 = v272;
                v215 = bswap32(LODWORD(a11));
                v216 = bswap32(LODWORD(a12));
                v220.i32[1] = LODWORD(a10);
                v217 = vrev32_s8(v220);
                goto LABEL_274;
              }
            }

LABEL_275:
            ++v25;
            v23 += 16;
            --v211;
          }

          while (v211);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 19:
        while (1)
        {
          v242 = v18;
          do
          {
            if (*v25)
            {
              v243 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v243.i32[3] > 0.0)
              {
                v244 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v244;
                if (v19)
                {
                  v245 = v244;
                  if (v244 <= 0.0)
                  {
                    v246 = bswap32(v243.u32[2]);
                    v247 = bswap32(v243.u32[3]);
                    v248 = vrev32_s8(*v243.i8);
LABEL_315:
                    *v23 = v248;
                    *(v23 + 8) = v246;
                    *(v23 + 12) = v247;
                    goto LABEL_316;
                  }
                }

                else
                {
                  v245 = 1.0;
                }

                v249 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v249.i32[1];
                *&v250 = vextq_s8(v243, v243, 4uLL).u64[0];
                *v251.i32 = PDAcolorburnPDA(*v249.i32, a10, a11, a12, v245, *v243.i64, v250, a16, *v243.i32, COERCE_DOUBLE(__PAIR64__(v243.u32[3], HIDWORD(v250))), *&v243.i32[3]);
                v21 = v272;
                v246 = bswap32(LODWORD(a11));
                v247 = bswap32(LODWORD(a12));
                v251.i32[1] = LODWORD(a10);
                v248 = vrev32_s8(v251);
                goto LABEL_315;
              }
            }

LABEL_316:
            ++v25;
            v23 += 16;
            --v242;
          }

          while (v242);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 20:
        while (1)
        {
          v170 = v18;
          do
          {
            if (*v25)
            {
              v171 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v171.i32[3] > 0.0)
              {
                v172 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v172;
                if (v19)
                {
                  *&a13 = v172;
                  if (v172 <= 0.0)
                  {
                    v173 = bswap32(v171.u32[2]);
                    v174 = bswap32(v171.u32[3]);
                    v175 = vrev32_s8(*v171.i8);
LABEL_222:
                    *v23 = v175;
                    *(v23 + 8) = v173;
                    *(v23 + 12) = v174;
                    goto LABEL_223;
                  }
                }

                else
                {
                  LODWORD(a13) = 1.0;
                }

                v176 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                DWORD2(v271) = v171.i32[3];
                *&v271 = vextq_s8(v171, v171, 4uLL).u64[0];
                *v177.i32 = PDAsoftlightPDA(*v176.i32, *&v176.i32[1], a11, *&a12, a13, *v171.i64, *&v271, a16, a1, a2, a3, a4, a5, a6, a7, a8, v171.u32[0], v271, *(&v271 + 4), *&v171.i32[3]);
                v21 = v272;
                v173 = bswap32(LODWORD(a11));
                v174 = bswap32(LODWORD(a12));
                v177.i32[1] = v178;
                v175 = vrev32_s8(v177);
                goto LABEL_222;
              }
            }

LABEL_223:
            ++v25;
            v23 += 16;
            --v170;
          }

          while (v170);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 21:
        while (1)
        {
          v182 = v18;
          do
          {
            if (*v25)
            {
              v183 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v183.i32[3] > 0.0)
              {
                v184 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v184;
                if (v19)
                {
                  v185 = v184;
                  if (v184 <= 0.0)
                  {
                    v186 = bswap32(v183.u32[2]);
                    v187 = bswap32(v183.u32[3]);
                    v188 = vrev32_s8(*v183.i8);
LABEL_240:
                    *v23 = v188;
                    *(v23 + 8) = v186;
                    *(v23 + 12) = v187;
                    goto LABEL_241;
                  }
                }

                else
                {
                  v185 = 1.0;
                }

                v189 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v189.i32[1];
                *&v190 = vextq_s8(v183, v183, 4uLL).u64[0];
                *v191.i32 = PDAhardlightPDA(*v189.i32, a10, a11, a12, v185, *v183.i64, v190, a16, *v183.i32, COERCE_DOUBLE(__PAIR64__(v183.u32[3], HIDWORD(v190))), *&v183.i32[3]);
                v21 = v272;
                v186 = bswap32(LODWORD(a11));
                v187 = bswap32(LODWORD(a12));
                v191.i32[1] = LODWORD(a10);
                v188 = vrev32_s8(v191);
                goto LABEL_240;
              }
            }

LABEL_241:
            ++v25;
            v23 += 16;
            --v182;
          }

          while (v182);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 22:
        while (1)
        {
          v227 = v18;
          do
          {
            if (*v25)
            {
              v228 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v228.f32[3] > 0.0)
              {
                if (v19)
                {
                  v229 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                  if (v229 <= 0.0)
                  {
                    v230 = bswap32(v228.u32[2]);
                    v231 = bswap32(v228.u32[3]);
                    v232 = vrev32_s8(*v228.f32);
LABEL_303:
                    *v23 = v232;
                    *(v23 + 8) = v230;
                    *(v23 + 12) = v231;
                    goto LABEL_304;
                  }
                }

                else
                {
                  v229 = 1.0;
                }

                v233 = COERCE_FLOAT(bswap32(*(v23 + 8)));
                v234 = vrev32_s8(*v23);
                v235 = vadd_f32(*v228.f32, v234);
                v236 = vmul_laneq_f32(v234, v228, 3);
                v237 = vmul_n_f32(*v228.f32, v229);
                v238 = vsub_f32(v235, v236);
                v239 = vsub_f32(v236, v237);
                v240 = vadd_f32(vsub_f32(v238, v237), vbsl_s8(vcltz_f32(v239), vneg_f32(v239), v239));
                v228.f32[0] = vmuls_lane_f32(v229, v228, 2);
                v241 = (v228.f32[3] * v233) - v228.f32[0];
                v228.f32[0] = ((v228.f32[2] + v233) - (v228.f32[3] * v233)) - v228.f32[0];
                if (v241 < 0.0)
                {
                  v241 = -v241;
                }

                v230 = bswap32(COERCE_UNSIGNED_INT(v228.f32[0] + v241));
                v231 = bswap32(COERCE_UNSIGNED_INT((v229 + v228.f32[3]) - (v229 * v228.f32[3])));
                v232 = vrev32_s8(v240);
                goto LABEL_303;
              }
            }

LABEL_304:
            ++v25;
            v23 += 16;
            --v227;
          }

          while (v227);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 23:
        while (1)
        {
          v252 = v18;
          do
          {
            if (*v25)
            {
              v253 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v253.f32[3] > 0.0)
              {
                if (v19)
                {
                  LODWORD(v254) = bswap32(*(v23 + 12));
                  if (v254 <= 0.0)
                  {
                    goto LABEL_327;
                  }
                }

                else
                {
                  v254 = 1.0;
                }

                LODWORD(v255) = bswap32(*(v23 + 8));
                *v256.f32 = vrev32_s8(*v23);
                *v257.f32 = vmul_f32(*v253.f32, vneg_f32(*v256.f32));
                *&v258 = -v254;
                v256.i64[1] = __PAIR64__(LODWORD(v254), LODWORD(v255));
                v259.i64[0] = 0x4000000040000000;
                v259.i32[2] = 0x40000000;
                v259.i32[3] = v253.i32[3];
                v257.i64[1] = __PAIR64__(v258, COERCE_UNSIGNED_INT(vmuls_lane_f32(-v255, v253, 2)));
                v253 = vmlaq_f32(vaddq_f32(v253, v256), v259, v257);
LABEL_327:
                *v23 = vrev32q_s8(v253);
              }
            }

            ++v25;
            v23 += 16;
            --v252;
          }

          while (v252);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 24:
        while (1)
        {
          v95 = v18;
          do
          {
            if (*v25)
            {
              v96 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v96.i32[3] > 0.0)
              {
                v97 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v97;
                if (v19)
                {
                  v98 = v97;
                  if (v97 <= 0.0)
                  {
                    v99 = bswap32(v96.u32[2]);
                    v100 = bswap32(v96.u32[3]);
                    v101 = vrev32_s8(*v96.i8);
LABEL_103:
                    *v23 = v101;
                    *(v23 + 8) = v99;
                    *(v23 + 12) = v100;
                    goto LABEL_104;
                  }
                }

                else
                {
                  v98 = 1.0;
                }

                v102 = vrev32_s8(*v23);
                *&v270 = vextq_s8(v96, v96, 4uLL).u64[0];
                *v103.i32 = PDAhuePDA(*v102.i32, *&v102.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), a12, v98, *v96.i64, v270, a16, *v96.i32, *&v270, *(&v270 + 1), *&v96.i32[3], *&v96.i32[3]);
                v21 = v272;
                v99 = bswap32(v104);
                v100 = bswap32(LODWORD(a12));
                v103.i32[1] = v105;
                v101 = vrev32_s8(v103);
                goto LABEL_103;
              }
            }

LABEL_104:
            ++v25;
            v23 += 16;
            --v95;
          }

          while (v95);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 25:
        while (1)
        {
          v84 = v18;
          do
          {
            if (*v25)
            {
              v85 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v85.i32[3] > 0.0)
              {
                v86 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *&a12 = v86;
                if (v19)
                {
                  v87 = v86;
                  if (v86 <= 0.0)
                  {
                    v88 = bswap32(v85.u32[2]);
                    v89 = bswap32(v85.u32[3]);
                    v90 = vrev32_s8(*v85.i8);
LABEL_91:
                    *v23 = v90;
                    *(v23 + 8) = v88;
                    *(v23 + 12) = v89;
                    goto LABEL_92;
                  }
                }

                else
                {
                  v87 = 1.0;
                }

                v91 = vrev32_s8(*v23);
                *&v269 = vextq_s8(v85, v85, 4uLL).u64[0];
                *v92.i32 = PDAsaturationPDA(*v91.i32, *&v91.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), a12, v87, *v85.i64, v269, a16, *v85.i32, *&v269, *(&v269 + 1), *&v85.i32[3], *&v85.i32[3]);
                v21 = v272;
                v88 = bswap32(v93);
                v89 = bswap32(LODWORD(a12));
                v92.i32[1] = v94;
                v90 = vrev32_s8(v92);
                goto LABEL_91;
              }
            }

LABEL_92:
            ++v25;
            v23 += 16;
            --v84;
          }

          while (v84);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 26:
        while (1)
        {
          v260 = v18;
          do
          {
            if (*v25)
            {
              v261 = vmulq_n_f32(v21, *v25 * 0.0039216);
              LODWORD(a12) = v261.i32[3];
              if (v261.f32[3] > 0.0)
              {
                v262 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                if (v19)
                {
                  *&a14 = v262;
                  if (v262 <= 0.0)
                  {
                    v263 = bswap32(v261.u32[2]);
                    v264 = bswap32(v261.u32[3]);
LABEL_339:
                    *v23 = vrev32_s8(*v261.f32);
                    *(v23 + 8) = v263;
                    *(v23 + 12) = v264;
                    goto LABEL_340;
                  }
                }

                else
                {
                  LODWORD(a14) = 1.0;
                }

                v267 = COERCE_DOUBLE(vrev32_s8(*v23));
                v261.f32[0] = PDAluminosityPDA(v261.f32[0], v261.f32[1], v261.f32[2], a12, v261.f32[3], a14, v267, a16, *&v267, *(&v267 + 1), COERCE_FLOAT(bswap32(*(v23 + 8))), v262, *&a14);
                v21 = v272;
                v263 = bswap32(v265);
                v264 = bswap32(LODWORD(a12));
                v261.i32[1] = v266;
                goto LABEL_339;
              }
            }

LABEL_340:
            ++v25;
            v23 += 16;
            --v260;
          }

          while (v260);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 27:
        break;
      default:
        return;
    }

LABEL_11:
    v30 = v18;
    while (1)
    {
      if (!*v25)
      {
        goto LABEL_20;
      }

      v31 = vmulq_n_f32(v21, *v25 * 0.0039216);
      if (*&v31.i32[3] <= 0.0)
      {
        goto LABEL_20;
      }

      v32 = COERCE_FLOAT(bswap32(*(v23 + 12)));
      *&a12 = v32;
      if (!v19)
      {
        break;
      }

      v33 = v32;
      if (v32 > 0.0)
      {
        goto LABEL_18;
      }

      v34 = bswap32(v31.u32[2]);
      v35 = bswap32(v31.u32[3]);
      v36 = vrev32_s8(*v31.i8);
LABEL_19:
      *v23 = v36;
      *(v23 + 8) = v34;
      *(v23 + 12) = v35;
LABEL_20:
      ++v25;
      v23 += 16;
      if (!--v30)
      {
        v25 += v26;
        v23 += 16 * v27;
        if (!--v17)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v33 = 1.0;
LABEL_18:
    v37 = vrev32_s8(*v23);
    *&v268 = vextq_s8(v31, v31, 4uLL).u64[0];
    *v38.i32 = PDAluminosityPDA(*v37.i32, *&v37.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), a12, v33, *v31.i64, v268, a16, *v31.i32, *&v268, *(&v268 + 1), *&v31.i32[3], *&v31.i32[3]);
    v21 = v272;
    v34 = bswap32(v39);
    v35 = bswap32(LODWORD(a12));
    v38.i32[1] = v40;
    v36 = vrev32_s8(v38);
    goto LABEL_19;
  }
}

void RGBAF_mark_pixelmask(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = *(a1 + 136);
  if (!v10)
  {
    return;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v13 = v11;
  v14 = *(a1 + 48);
  v16 = *(a1 + 88);
  v15 = *(a1 + 96);
  v17 = *(a1 + 28) >> 4;
  v18 = (*(a1 + 40) + 16 * v17 * *(a1 + 16) + 16 * *(a1 + 12));
  v19 = *(a1 + 124);
  v20 = (v10 + *(a1 + 108) * v19 + *(a1 + 104));
  v21 = *(a1 + 56);
  v22 = *(a1 + 60);
  v23 = *(a1 + 76);
  if (*(a1 + 1) << 8 == 256)
  {
    v24 = v23 >> 4;
    v25 = (v16 + 16 * (v23 >> 4) * v22 + 16 * v21);
    if (v23 >> 4 != v17)
    {
      v29 = 1;
LABEL_14:
      v44 = 0;
      v13 = v29 * v11;
      v32 = v15 != 0;
      v33 = v19 - v13;
      v34 = v17 - v13;
      v43 = v29;
      v42 = -1;
      v31 = v24;
      goto LABEL_15;
    }

    v26 = v18 - v25;
    if (v26 >= 1)
    {
      if (v26 <= v11)
      {
        v45 = v11 - 1;
        v18 += v45;
        v25 += v45;
        v20 += v45;
        v29 = -1;
        goto LABEL_13;
      }

      v27 = v12 - 1;
      v28 = &v25[v17 * v27];
      if (v18 <= &v28[v11 - 1])
      {
        v18 += v17 * v27;
        v24 = -v17;
        v20 += v19 * v27;
        v19 = -v19;
        v29 = 1;
        v25 = v28;
        v17 = -v17;
        goto LABEL_14;
      }
    }

    v29 = 1;
LABEL_13:
    v24 = *(a1 + 28) >> 4;
    goto LABEL_14;
  }

  LODWORD(v24) = *(a1 + 64);
  v30 = *(a1 + 68);
  v31 = v23 >> 4;
  v32 = v15 != 0;
  v33 = v19 - v11;
  v34 = v17 - v11;
  if (v16)
  {
    v35 = 0;
    v36 = v24;
    v37 = v30;
    v38 = v22 % v30;
    v39 = v16 + 16 * v31 * v30;
    v40 = v16 + 16 * v31 * v38;
    v41 = v40 + 16 * (v21 % v24);
    v42 = v40 + 16 * v24;
    v43 = 1;
    v25 = v41;
    goto LABEL_16;
  }

  v25 = 0;
  v42 = 0;
  v43 = 1;
  v44 = v30;
LABEL_15:
  v39 = 0;
  v41 = 0;
  v31 -= v13;
  v36 = v24;
  v37 = v44;
  v35 = 1;
LABEL_16:
  v574 = v33;
  v575 = v11;
  v572 = v31;
  v573 = v34;
  v571 = v39;
  v570 = v35;
  switch(a2)
  {
    case 0:
      do
      {
        v46 = v11;
        do
        {
          v47 = *v20;
          if (*v20)
          {
            if (v47 == 255)
            {
              v18->i64[0] = 0;
              v18->i64[1] = 0;
            }

            else
            {
              *v18 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v18), (v47 * -0.0039216) + 1.0));
            }
          }

          v20 += v43;
          v18 += v43;
          --v46;
        }

        while (v46);
        v20 += v33;
        v18 += v34;
        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 1:
      v285 = -v36;
      v286 = -(v31 * v37);
      if (v14 == 0 || v32)
      {
        do
        {
          v287 = v11;
          do
          {
            v288 = *v20;
            if (*v20)
            {
              if (v288 == 255)
              {
                v289 = *v25;
              }

              else
              {
                v289 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v18), 1.0 - (v288 * 0.0039216)), vrev32q_s8(*v25), v288 * 0.0039216));
              }

              *v18 = v289;
            }

            v20 += v43;
            v290 = &v25[v43];
            if (v290 >= v42)
            {
              v291 = v285;
            }

            else
            {
              v291 = 0;
            }

            v25 = &v290[v291];
            v18 += v43;
            --v287;
          }

          while (v287);
          v20 += v33;
          v18 += v34;
          v292 = v41 + 16 * v31;
          if (v292 >= v39)
          {
            v293 = v286;
          }

          else
          {
            v293 = 0;
          }

          v294 = (v292 + 16 * v293);
          v295 = v42 + 16 * v293 + 16 * v31;
          if (v35)
          {
            v25 += v31;
          }

          else
          {
            v42 = v295;
            v41 = v294;
            v25 = v294;
          }

          LODWORD(v12) = v12 - 1;
        }

        while (v12);
      }

      else
      {
        do
        {
          v535 = v11;
          do
          {
            v536 = *v20;
            if (*v20)
            {
              if (v536 == 255)
              {
                v537 = v25->i32[2];
                v18->i64[0] = v25->i64[0];
                v18->i32[2] = v537;
                v18->i32[3] = 32831;
              }

              else
              {
                v538 = v536 * 0.0039216;
                *v539.f32 = vmul_n_f32(vrev32_s8(*v25->i8), v538);
                v539.f32[2] = v538 * COERCE_FLOAT(bswap32(v25->u32[2]));
                v539.f32[3] = v538;
                *v18 = vrev32q_s8(vmlaq_n_f32(v539, vrev32q_s8(*v18), 1.0 - v538));
              }
            }

            v20 += v43;
            v540 = &v25[v43];
            if (v540 >= v42)
            {
              v541 = v285;
            }

            else
            {
              v541 = 0;
            }

            v25 = &v540[v541];
            v18 += v43;
            --v535;
          }

          while (v535);
          v20 += v33;
          v18 += v34;
          v542 = v41 + 16 * v31;
          if (v542 >= v39)
          {
            v543 = v286;
          }

          else
          {
            v543 = 0;
          }

          v544 = (v542 + 16 * v543);
          v545 = v42 + 16 * v543 + 16 * v31;
          if (v35)
          {
            v25 += v31;
          }

          else
          {
            v42 = v545;
            v41 = v544;
            v25 = v544;
          }

          LODWORD(v12) = v12 - 1;
        }

        while (v12);
      }

      return;
    case 2:
      v217 = -v36;
      v218 = -(v31 * v37);
      while (1)
      {
        v219 = v11;
        do
        {
          v220 = *v20;
          if (!*v20)
          {
            goto LABEL_238;
          }

          if (v220 != 255)
          {
            v226 = v220 * 0.0039216;
            v223 = v226 * COERCE_FLOAT(bswap32(v25->u32[3]));
            if (v223 <= 0.0)
            {
              goto LABEL_238;
            }

            v225 = v226 * COERCE_FLOAT(bswap32(v25->u32[2]));
            *v224.f32 = vmul_n_f32(vrev32_s8(*v25->i8), v226);
            goto LABEL_236;
          }

          v221 = v25->u32[3];
          v222 = COERCE_FLOAT(bswap32(v221));
          v223 = v222;
          if (v222 < 1.0)
          {
            if (v222 <= 0.0)
            {
              goto LABEL_238;
            }

            *v224.f32 = vrev32_s8(*v25->i8);
            LODWORD(v225) = bswap32(v25->u32[2]);
LABEL_236:
            v224.i64[1] = __PAIR64__(LODWORD(v223), LODWORD(v225));
            *v18 = vrev32q_s8(vmlaq_n_f32(v224, vrev32q_s8(*v18), 1.0 - v223));
            goto LABEL_238;
          }

          v18->i64[0] = v25->i64[0];
          v18->i32[2] = v25->i32[2];
          v18->i32[3] = v221;
LABEL_238:
          v20 += v43;
          v227 = &v25[v43];
          if (v227 >= v42)
          {
            v228 = v217;
          }

          else
          {
            v228 = 0;
          }

          v25 = &v227[v228];
          v18 += v43;
          --v219;
        }

        while (v219);
        v20 += v33;
        v18 += v34;
        v229 = v41 + 16 * v31;
        if (v229 >= v39)
        {
          v230 = v218;
        }

        else
        {
          v230 = 0;
        }

        v231 = (v229 + 16 * v230);
        v232 = v42 + 16 * v230 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v232;
          v41 = v231;
          v25 = v231;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 3:
      v254 = -v36;
      v255 = -(v31 * v37);
      do
      {
        v256 = v11;
        do
        {
          v257 = *v20;
          if (*v20)
          {
            if (v257 == 255)
            {
              v258 = bswap32(v25->u32[2]);
              *v259.f32 = vrev32_s8(*v25->i8);
              LODWORD(v260) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v260 = 1.0;
              }

              v259.i64[1] = __PAIR64__(LODWORD(v260), v258);
              v261 = vmulq_f32(v259, vdupq_n_s32(bswap32(v18->u32[3])));
            }

            else
            {
              v262 = v257 * 0.0039216;
              v263 = bswap32(v25->u32[2]);
              *v264.f32 = vrev32_s8(*v25->i8);
              LODWORD(v265) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v265 = 1.0;
              }

              v266 = vrev32q_s8(*v18);
              v264.i64[1] = __PAIR64__(LODWORD(v265), v263);
              v261 = vmlaq_n_f32(vmulq_n_f32(v264, vmuls_lane_f32(v262, v266, 3)), v266, 1.0 - v262);
            }

            *v18 = vrev32q_s8(v261);
          }

          v20 += v43;
          v267 = &v25[v43];
          if (v267 >= v42)
          {
            v268 = v254;
          }

          else
          {
            v268 = 0;
          }

          v25 = &v267[v268];
          v18 += v43;
          --v256;
        }

        while (v256);
        v20 += v33;
        v18 += v34;
        v269 = v41 + 16 * v31;
        if (v269 >= v39)
        {
          v270 = v255;
        }

        else
        {
          v270 = 0;
        }

        v271 = (v269 + 16 * v270);
        v272 = v42 + 16 * v270 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v272;
          v41 = v271;
          v25 = v271;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 4:
      v128 = -v36;
      v129 = -(v31 * v37);
      do
      {
        v130 = v11;
        do
        {
          v131 = *v20;
          if (*v20)
          {
            if (v131 == 255)
            {
              *v132.f32 = vrev32_s8(*v25->i8);
              v133 = bswap32(v25->u32[2]);
              LODWORD(v134) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v134 = 1.0;
              }

              v132.i64[1] = __PAIR64__(LODWORD(v134), v133);
              v135 = vmulq_n_f32(v132, 1.0 - COERCE_FLOAT(bswap32(v18->u32[3])));
            }

            else
            {
              v136 = v131 * 0.0039216;
              v137 = bswap32(v25->u32[2]);
              *v138.f32 = vrev32_s8(*v25->i8);
              LODWORD(v139) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v139 = 1.0;
              }

              v140 = vrev32q_s8(*v18);
              v138.i64[1] = __PAIR64__(LODWORD(v139), v137);
              v135 = vmlaq_n_f32(vmulq_n_f32(v138, v136 * (1.0 - v140.f32[3])), v140, 1.0 - v136);
            }

            *v18 = vrev32q_s8(v135);
          }

          v20 += v43;
          v141 = &v25[v43];
          if (v141 >= v42)
          {
            v142 = v128;
          }

          else
          {
            v142 = 0;
          }

          v25 = &v141[v142];
          v18 += v43;
          --v130;
        }

        while (v130);
        v20 += v33;
        v18 += v34;
        v143 = v41 + 16 * v31;
        if (v143 >= v39)
        {
          v144 = v129;
        }

        else
        {
          v144 = 0;
        }

        v145 = (v143 + 16 * v144);
        v146 = v42 + 16 * v144 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v146;
          v41 = v145;
          v25 = v145;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 5:
      v335 = -v36;
      v336 = -(v31 * v37);
      do
      {
        v337 = v11;
        do
        {
          if (*v20)
          {
            v338 = vmulq_n_f32(vrev32q_s8(*v25), *v20 * 0.0039216);
            v339 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v339, 1.0 - v338.f32[3]), v338, v339, 3));
          }

          v20 += v43;
          v340 = &v25[v43];
          if (v340 >= v42)
          {
            v341 = v335;
          }

          else
          {
            v341 = 0;
          }

          v25 = &v340[v341];
          v18 += v43;
          --v337;
        }

        while (v337);
        v20 += v33;
        v18 += v34;
        v342 = v41 + 16 * v31;
        if (v342 >= v39)
        {
          v343 = v336;
        }

        else
        {
          v343 = 0;
        }

        v344 = (v342 + 16 * v343);
        v345 = v42 + 16 * v343 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v345;
          v41 = v344;
          v25 = v344;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 6:
      v388 = -v36;
      v389 = -(v31 * v37);
      while (1)
      {
        v390 = v11;
        do
        {
          v391 = *v20;
          if (!*v20)
          {
            goto LABEL_459;
          }

          v392 = COERCE_FLOAT(bswap32(v18->u32[3]));
          v393 = 1.0 - v392;
          if ((1.0 - v392) >= 1.0)
          {
            v401 = COERCE_FLOAT(bswap32(v25->u32[2]));
            v402 = COERCE_FLOAT(bswap32(v25->u32[3]));
            if (!v32)
            {
              v402 = 1.0;
            }

            v403 = v391 * 0.0039216;
            v398 = bswap32(COERCE_UNSIGNED_INT(v403 * v401));
            v399 = bswap32(COERCE_UNSIGNED_INT(v403 * v402));
            v400 = vmul_n_f32(vrev32_s8(*v25->i8), v403);
          }

          else
          {
            if (v393 <= 0.0)
            {
              goto LABEL_459;
            }

            v394 = COERCE_FLOAT(bswap32(v18->u32[2]));
            v395 = COERCE_FLOAT(bswap32(v25->u32[2]));
            v396 = COERCE_FLOAT(bswap32(v25->u32[3]));
            if (!v32)
            {
              v396 = 1.0;
            }

            v397 = (v391 * 0.0039216) * v393;
            v398 = bswap32(COERCE_UNSIGNED_INT(v394 + (v395 * v397)));
            v399 = bswap32(COERCE_UNSIGNED_INT(v392 + (v396 * v397)));
            v400 = vmla_n_f32(vrev32_s8(*v18->i8), vrev32_s8(*v25->i8), v397);
          }

          *v18->i8 = vrev32_s8(v400);
          v18->i32[2] = v398;
          v18->i32[3] = v399;
LABEL_459:
          v20 += v43;
          v404 = &v25[v43];
          if (v404 >= v42)
          {
            v405 = v388;
          }

          else
          {
            v405 = 0;
          }

          v25 = &v404[v405];
          v18 += v43;
          --v390;
        }

        while (v390);
        v20 += v33;
        v18 += v34;
        v406 = v41 + 16 * v31;
        if (v406 >= v39)
        {
          v407 = v389;
        }

        else
        {
          v407 = 0;
        }

        v408 = (v406 + 16 * v407);
        v409 = v42 + 16 * v407 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v409;
          v41 = v408;
          v25 = v408;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 7:
      v273 = -v36;
      v274 = -(v31 * v37);
      do
      {
        v275 = v11;
        do
        {
          v276 = *v20;
          if (*v20)
          {
            if (v276 == 255)
            {
              v277 = vmulq_f32(vdupq_n_s32(bswap32(v25->u32[3])), vrev32q_s8(*v18));
            }

            else
            {
              v278 = vrev32q_s8(*v18);
              v277 = vmlaq_n_f32(vmulq_n_f32(v278, 1.0 - (v276 * 0.0039216)), v278, (v276 * 0.0039216) * COERCE_FLOAT(bswap32(v25->u32[3])));
            }

            *v18 = vrev32q_s8(v277);
          }

          v20 += v43;
          v279 = &v25[v43];
          if (v279 >= v42)
          {
            v280 = v273;
          }

          else
          {
            v280 = 0;
          }

          v25 = &v279[v280];
          v18 += v43;
          --v275;
        }

        while (v275);
        v20 += v33;
        v18 += v34;
        v281 = v41 + 16 * v31;
        if (v281 >= v39)
        {
          v282 = v274;
        }

        else
        {
          v282 = 0;
        }

        v283 = (v281 + 16 * v282);
        v284 = v42 + 16 * v282 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v284;
          v41 = v283;
          v25 = v283;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 8:
      v442 = -v36;
      v443 = -(v31 * v37);
      do
      {
        v444 = v11;
        do
        {
          v445 = *v20;
          if (*v20)
          {
            v446 = vrev32q_s8(*v18);
            if (v445 == 255)
            {
              v447 = COERCE_FLOAT(bswap32(v25->u32[3]));
            }

            else
            {
              v447 = (v445 * 0.0039216) * COERCE_FLOAT(bswap32(v25->u32[3]));
            }

            *v18 = vrev32q_s8(vmulq_n_f32(v446, 1.0 - v447));
          }

          v20 += v43;
          v448 = &v25[v43];
          if (v448 >= v42)
          {
            v449 = v442;
          }

          else
          {
            v449 = 0;
          }

          v25 = &v448[v449];
          v18 += v43;
          --v444;
        }

        while (v444);
        v20 += v33;
        v18 += v34;
        v450 = v41 + 16 * v31;
        if (v450 >= v39)
        {
          v451 = v443;
        }

        else
        {
          v451 = 0;
        }

        v452 = (v450 + 16 * v451);
        v453 = v42 + 16 * v451 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v453;
          v41 = v452;
          v25 = v452;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 9:
      v164 = -v36;
      v165 = -(v31 * v37);
      do
      {
        v166 = v11;
        do
        {
          if (*v20)
          {
            v167 = *v20 * 0.0039216;
            v168 = 1.0 - v167;
            v169 = vmulq_n_f32(vrev32q_s8(*v25), v167);
            v170 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v170, v168 + v169.f32[3]), v169, 1.0 - v170.f32[3]));
          }

          v20 += v43;
          v171 = &v25[v43];
          if (v171 >= v42)
          {
            v172 = v164;
          }

          else
          {
            v172 = 0;
          }

          v25 = &v171[v172];
          v18 += v43;
          --v166;
        }

        while (v166);
        v20 += v33;
        v18 += v34;
        v173 = v41 + 16 * v31;
        if (v173 >= v39)
        {
          v174 = v165;
        }

        else
        {
          v174 = 0;
        }

        v175 = (v173 + 16 * v174);
        v176 = v42 + 16 * v174 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v176;
          v41 = v175;
          v25 = v175;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 10:
      v431 = -v36;
      v432 = -(v31 * v37);
      do
      {
        v433 = v11;
        do
        {
          if (*v20)
          {
            v434 = vmulq_n_f32(vrev32q_s8(*v25), *v20 * 0.0039216);
            v435 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v435, 1.0 - v434.f32[3]), v434, 1.0 - v435.f32[3]));
          }

          v20 += v43;
          v436 = &v25[v43];
          if (v436 >= v42)
          {
            v437 = v431;
          }

          else
          {
            v437 = 0;
          }

          v25 = &v436[v437];
          v18 += v43;
          --v433;
        }

        while (v433);
        v20 += v33;
        v18 += v34;
        v438 = v41 + 16 * v31;
        if (v438 >= v39)
        {
          v439 = v432;
        }

        else
        {
          v439 = 0;
        }

        v440 = (v438 + 16 * v439);
        v441 = v42 + 16 * v439 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v441;
          v41 = v440;
          v25 = v440;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 11:
      v112 = -v36;
      v113 = -(v31 * v37);
      do
      {
        v114 = v11;
        do
        {
          if (*v20)
          {
            v115 = *v20 * 0.0039216;
            v116 = COERCE_FLOAT(bswap32(v25->u32[3]));
            v117 = v115 * COERCE_FLOAT(bswap32(v25->u32[2]));
            v118 = COERCE_FLOAT(bswap32(v18->u32[2]));
            LODWORD(a9) = bswap32(v18->u32[3]);
            if (!v14)
            {
              *&a9 = 1.0;
            }

            if (!v32)
            {
              v116 = 1.0;
            }

            *&a7 = v115 * v116;
            v119 = (*&a7 - v117) + (*&a9 - v118);
            if ((*&a7 + *&a9) <= 1.0)
            {
              *&a8 = *&a7 + *&a9;
            }

            else
            {
              *&a8 = 1.0;
            }

            a9 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a9, 0), vrev32_s8(*v18->i8)));
            v120 = vadd_f32(vsub_f32(vdup_lane_s32(*&a7, 0), vmul_n_f32(vrev32_s8(*v25->i8), v115)), *&a9);
            a7 = COERCE_DOUBLE(vdup_lane_s32(*&a8, 0));
            *v121.i8 = vsub_f32(*&a7, v120);
            v121.i64[1] = __PAIR64__(LODWORD(a8), *&a8 - v119);
            *v18 = vrev32q_s8(v121);
          }

          v20 += v43;
          v122 = &v25[v43];
          if (v122 >= v42)
          {
            v123 = v112;
          }

          else
          {
            v123 = 0;
          }

          v25 = &v122[v123];
          v18 += v43;
          --v114;
        }

        while (v114);
        v20 += v33;
        v18 += v34;
        v124 = v41 + 16 * v31;
        if (v124 >= v39)
        {
          v125 = v113;
        }

        else
        {
          v125 = 0;
        }

        v126 = (v124 + 16 * v125);
        v127 = v42 + 16 * v125 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v127;
          v41 = v126;
          v25 = v126;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 12:
      v147 = -v36;
      v148 = -(v31 * v37);
      do
      {
        v149 = v11;
        do
        {
          if (*v20)
          {
            v150 = *v20 * 0.0039216;
            v151 = COERCE_FLOAT(bswap32(v25->u32[3]));
            v152 = v150 * COERCE_FLOAT(bswap32(v25->u32[2]));
            v153 = COERCE_FLOAT(bswap32(v18->u32[2]));
            v154 = COERCE_FLOAT(bswap32(v18->u32[3]));
            if (!v32)
            {
              v151 = 1.0;
            }

            v155 = (v150 * v151) + v154;
            *v156.i8 = vadd_f32(vmul_n_f32(vrev32_s8(*v25->i8), v150), vrev32_s8(*v18->i8));
            v157 = v152 + v153;
            if (v155 > 1.0)
            {
              v155 = 1.0;
            }

            v156.i64[1] = __PAIR64__(LODWORD(v155), LODWORD(v157));
            *v18 = vrev32q_s8(v156);
          }

          v20 += v43;
          v158 = &v25[v43];
          if (v158 >= v42)
          {
            v159 = v147;
          }

          else
          {
            v159 = 0;
          }

          v25 = &v158[v159];
          v18 += v43;
          --v149;
        }

        while (v149);
        v20 += v33;
        v18 += v34;
        v160 = v41 + 16 * v31;
        if (v160 >= v39)
        {
          v161 = v148;
        }

        else
        {
          v161 = 0;
        }

        v162 = (v160 + 16 * v161);
        v163 = v42 + 16 * v161 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v163;
          v41 = v162;
          v25 = v162;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 13:
      v367 = -v36;
      v566 = -(v31 * v37);
      while (1)
      {
        v584 = v41;
        v596 = v12;
        v368 = v11;
        do
        {
          v369 = *v20;
          if (*v20)
          {
            v370 = vrev32q_s8(*v25);
            v371 = vmulq_n_f32(v370, v369 * 0.0039216);
            LODWORD(a10) = v371.i32[3];
            v372 = v32 ? *&v371.i32[3] : v369 * 0.0039216;
            if (v372 > 0.0)
            {
              v373 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v373;
              if (v14)
              {
                v374 = v373;
                if (v373 <= 0.0)
                {
                  v375 = bswap32(v371.u32[2]);
                  v376 = bswap32(LODWORD(v372));
                  v377 = vrev32_s8(*v371.i8);
LABEL_435:
                  *v18->i8 = v377;
                  v18->i32[2] = v375;
                  v18->i32[3] = v376;
                  goto LABEL_436;
                }
              }

              else
              {
                v374 = 1.0;
              }

              v378 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v370.i32[0] = v378.i32[1];
              v555 = v372;
              *&v379 = vextq_s8(v371, v371, 4uLL).u64[0];
              *v380.i32 = PDAmultiplyPDA(*v378.i32, *v370.i64, a5, a6, v374, *v371.i64, v379, a10, *v371.i32, COERCE_DOUBLE(__PAIR64__(v371.u32[3], HIDWORD(v379))), v555);
              v375 = bswap32(LODWORD(a5));
              v376 = bswap32(LODWORD(a6));
              v380.i32[1] = v381;
              v377 = vrev32_s8(v380);
              goto LABEL_435;
            }
          }

LABEL_436:
          v20 += v43;
          v382 = &v25[v43];
          if (v382 >= v42)
          {
            v383 = v367;
          }

          else
          {
            v383 = 0;
          }

          v25 = &v382[v383];
          v18 += v43;
          --v368;
        }

        while (v368);
        v20 += v574;
        v18 += v573;
        v41 = v584;
        v384 = v584 + 16 * v572;
        v385 = v566;
        if (v384 < v571)
        {
          v385 = 0;
        }

        v386 = (v384 + 16 * v385);
        v387 = v42 + 16 * v385 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v387;
          v41 = v386;
          v25 = v386;
        }

        LODWORD(v12) = v596 - 1;
        LODWORD(v11) = v575;
        if (v596 == 1)
        {
          return;
        }
      }

    case 14:
      v89 = -v36;
      v90 = -(v31 * v37);
      __asm { FMOV            V2.2S, #1.0 }

      while (1)
      {
        v96 = v11;
        do
        {
          if (*v20)
          {
            v97 = *v20 * 0.0039216;
            v98 = bswap32(v25->u32[2]);
            LODWORD(v99) = bswap32(v25->u32[3]);
            if (!v32)
            {
              v99 = 1.0;
            }

            v100 = vmul_n_f32(__PAIR64__(LODWORD(v99), v98), v97);
            if (v100.f32[1] > 0.0)
            {
              *v101.i8 = vmul_n_f32(vrev32_s8(*v25->i8), v97);
              if (v14)
              {
                v102 = COERCE_FLOAT(bswap32(v18->u32[3]));
                if (v102 <= 0.0)
                {
                  v101.u64[1] = v100;
                  *v18 = vrev32q_s8(v101);
                  goto LABEL_85;
                }
              }

              else
              {
                v102 = 1.0;
              }

              v103.i32[0] = bswap32(v18->u32[2]);
              v104.f32[0] = 1.0 - v103.f32[0];
              v105 = vrev32_s8(*v18->i8);
              v104.f32[1] = -v102;
              v103.f32[1] = v100.f32[1] + v102;
              *v18->i8 = vrev32_s8(vmla_f32(v105, vsub_f32(_D2, v105), *v101.i8));
              v18->u64[1] = vrev32_s8(vmla_f32(v103, v104, v100));
            }
          }

LABEL_85:
          v20 += v43;
          v106 = &v25[v43];
          if (v106 >= v42)
          {
            v107 = v89;
          }

          else
          {
            v107 = 0;
          }

          v25 = &v106[v107];
          v18 += v43;
          --v96;
        }

        while (v96);
        v20 += v33;
        v18 += v34;
        v108 = v41 + 16 * v31;
        if (v108 >= v39)
        {
          v109 = v90;
        }

        else
        {
          v109 = 0;
        }

        v110 = (v108 + 16 * v109);
        v111 = v42 + 16 * v109 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v111;
          v41 = v110;
          v25 = v110;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 15:
      v233 = -v36;
      v562 = -(v31 * v37);
      while (1)
      {
        v580 = v41;
        v592 = v12;
        v234 = v11;
        do
        {
          v235 = *v20;
          if (*v20)
          {
            v236 = vrev32q_s8(*v25);
            v237 = vmulq_n_f32(v236, v235 * 0.0039216);
            LODWORD(a10) = v237.i32[3];
            v238 = v32 ? *&v237.i32[3] : v235 * 0.0039216;
            if (v238 > 0.0)
            {
              v239 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v239;
              if (v14)
              {
                v240 = v239;
                if (v239 <= 0.0)
                {
                  v241 = bswap32(v237.u32[2]);
                  v242 = bswap32(LODWORD(v238));
                  v243 = vrev32_s8(*v237.i8);
LABEL_262:
                  *v18->i8 = v243;
                  v18->i32[2] = v241;
                  v18->i32[3] = v242;
                  goto LABEL_263;
                }
              }

              else
              {
                v240 = 1.0;
              }

              v244 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v236.i32[0] = v244.i32[1];
              v552 = v238;
              *&v245 = vextq_s8(v237, v237, 4uLL).u64[0];
              *v246.i32 = PDAoverlayPDA(*v244.i32, *v236.i64, a5, a6, v240, *v237.i64, v245, a10, *v237.i32, COERCE_DOUBLE(__PAIR64__(v237.u32[3], HIDWORD(v245))), v552);
              v241 = bswap32(LODWORD(a5));
              v242 = bswap32(LODWORD(a6));
              v246.i32[1] = v247;
              v243 = vrev32_s8(v246);
              goto LABEL_262;
            }
          }

LABEL_263:
          v20 += v43;
          v248 = &v25[v43];
          if (v248 >= v42)
          {
            v249 = v233;
          }

          else
          {
            v249 = 0;
          }

          v25 = &v248[v249];
          v18 += v43;
          --v234;
        }

        while (v234);
        v20 += v574;
        v18 += v573;
        v41 = v580;
        v250 = v580 + 16 * v572;
        v251 = v562;
        if (v250 < v571)
        {
          v251 = 0;
        }

        v252 = (v250 + 16 * v251);
        v253 = v42 + 16 * v251 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v253;
          v41 = v252;
          v25 = v252;
        }

        LODWORD(v12) = v592 - 1;
        LODWORD(v11) = v575;
        if (v592 == 1)
        {
          return;
        }
      }

    case 16:
      v68 = -v36;
      v559 = -(v31 * v37);
      while (1)
      {
        v577 = v41;
        v589 = v12;
        v69 = v11;
        do
        {
          v70 = *v20;
          if (*v20)
          {
            v71 = vrev32q_s8(*v25);
            v72 = vmulq_n_f32(v71, v70 * 0.0039216);
            LODWORD(a10) = v72.i32[3];
            v73 = v32 ? *&v72.i32[3] : v70 * 0.0039216;
            if (v73 > 0.0)
            {
              v74 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v74;
              if (v14)
              {
                v75 = v74;
                if (v74 <= 0.0)
                {
                  v76 = bswap32(v72.u32[2]);
                  v77 = bswap32(LODWORD(v73));
                  v78 = vrev32_s8(*v72.i8);
LABEL_62:
                  *v18->i8 = v78;
                  v18->i32[2] = v76;
                  v18->i32[3] = v77;
                  goto LABEL_63;
                }
              }

              else
              {
                v75 = 1.0;
              }

              v79 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v71.i32[0] = v79.i32[1];
              v551 = v73;
              *&v80 = vextq_s8(v72, v72, 4uLL).u64[0];
              *v81.i32 = PDAdarkenPDA(*v79.i32, *v71.i64, a5, a6, v75, *v72.i64, v80, a10, *v72.i32, COERCE_DOUBLE(__PAIR64__(v72.u32[3], HIDWORD(v80))), v551);
              v76 = bswap32(LODWORD(a5));
              v77 = bswap32(LODWORD(a6));
              v81.i32[1] = v82;
              v78 = vrev32_s8(v81);
              goto LABEL_62;
            }
          }

LABEL_63:
          v20 += v43;
          v83 = &v25[v43];
          if (v83 >= v42)
          {
            v84 = v68;
          }

          else
          {
            v84 = 0;
          }

          v25 = &v83[v84];
          v18 += v43;
          --v69;
        }

        while (v69);
        v20 += v574;
        v18 += v573;
        v41 = v577;
        v85 = v577 + 16 * v572;
        v86 = v559;
        if (v85 < v571)
        {
          v86 = 0;
        }

        v87 = (v85 + 16 * v86);
        v88 = v42 + 16 * v86 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v88;
          v41 = v87;
          v25 = v87;
        }

        LODWORD(v12) = v589 - 1;
        LODWORD(v11) = v575;
        if (v589 == 1)
        {
          return;
        }
      }

    case 17:
      v296 = -v36;
      v563 = -(v31 * v37);
      while (1)
      {
        v581 = v41;
        v593 = v12;
        v297 = v11;
        do
        {
          v298 = *v20;
          if (*v20)
          {
            v299 = vrev32q_s8(*v25);
            v300 = vmulq_n_f32(v299, v298 * 0.0039216);
            LODWORD(a10) = v300.i32[3];
            v301 = v32 ? *&v300.i32[3] : v298 * 0.0039216;
            if (v301 > 0.0)
            {
              v302 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v302;
              if (v14)
              {
                v303 = v302;
                if (v302 <= 0.0)
                {
                  v304 = bswap32(v300.u32[2]);
                  v305 = bswap32(LODWORD(v301));
                  v306 = vrev32_s8(*v300.i8);
LABEL_347:
                  *v18->i8 = v306;
                  v18->i32[2] = v304;
                  v18->i32[3] = v305;
                  goto LABEL_348;
                }
              }

              else
              {
                v303 = 1.0;
              }

              v307 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v299.i32[0] = v307.i32[1];
              v553 = v301;
              *&v308 = vextq_s8(v300, v300, 4uLL).u64[0];
              *v309.i32 = PDAlightenPDA(*v307.i32, *v299.i64, a5, a6, v303, *v300.i64, v308, a10, *v300.i32, COERCE_DOUBLE(__PAIR64__(v300.u32[3], HIDWORD(v308))), v553);
              v304 = bswap32(LODWORD(a5));
              v305 = bswap32(LODWORD(a6));
              v309.i32[1] = v310;
              v306 = vrev32_s8(v309);
              goto LABEL_347;
            }
          }

LABEL_348:
          v20 += v43;
          v311 = &v25[v43];
          if (v311 >= v42)
          {
            v312 = v296;
          }

          else
          {
            v312 = 0;
          }

          v25 = &v311[v312];
          v18 += v43;
          --v297;
        }

        while (v297);
        v20 += v574;
        v18 += v573;
        v41 = v581;
        v313 = v581 + 16 * v572;
        v314 = v563;
        if (v313 < v571)
        {
          v314 = 0;
        }

        v315 = (v313 + 16 * v314);
        v316 = v42 + 16 * v314 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v316;
          v41 = v315;
          v25 = v315;
        }

        LODWORD(v12) = v593 - 1;
        LODWORD(v11) = v575;
        if (v593 == 1)
        {
          return;
        }
      }

    case 18:
      v410 = -v36;
      v567 = -(v31 * v37);
      while (1)
      {
        v585 = v41;
        v597 = v12;
        v411 = v11;
        do
        {
          v412 = *v20;
          if (*v20)
          {
            v413 = vrev32q_s8(*v25);
            v414 = vmulq_n_f32(v413, v412 * 0.0039216);
            LODWORD(a10) = v414.i32[3];
            v415 = v32 ? *&v414.i32[3] : v412 * 0.0039216;
            if (v415 > 0.0)
            {
              v416 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v416;
              if (v14)
              {
                v417 = v416;
                if (v416 <= 0.0)
                {
                  v418 = bswap32(v414.u32[2]);
                  v419 = bswap32(LODWORD(v415));
                  v420 = vrev32_s8(*v414.i8);
LABEL_483:
                  *v18->i8 = v420;
                  v18->i32[2] = v418;
                  v18->i32[3] = v419;
                  goto LABEL_484;
                }
              }

              else
              {
                v417 = 1.0;
              }

              v421 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v413.i32[0] = v421.i32[1];
              v556 = v415;
              *&v422 = vextq_s8(v414, v414, 4uLL).u64[0];
              *v423.i32 = PDAcolordodgePDA(*v421.i32, *v413.i64, a5, a6, v417, *v414.i64, v422, a10, *v414.i32, COERCE_DOUBLE(__PAIR64__(v414.u32[3], HIDWORD(v422))), v556);
              v418 = bswap32(LODWORD(a5));
              v419 = bswap32(LODWORD(a6));
              v423.i32[1] = v424;
              v420 = vrev32_s8(v423);
              goto LABEL_483;
            }
          }

LABEL_484:
          v20 += v43;
          v425 = &v25[v43];
          if (v425 >= v42)
          {
            v426 = v410;
          }

          else
          {
            v426 = 0;
          }

          v25 = &v425[v426];
          v18 += v43;
          --v411;
        }

        while (v411);
        v20 += v574;
        v18 += v573;
        v41 = v585;
        v427 = v585 + 16 * v572;
        v428 = v567;
        if (v427 < v571)
        {
          v428 = 0;
        }

        v429 = (v427 + 16 * v428);
        v430 = v42 + 16 * v428 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v430;
          v41 = v429;
          v25 = v429;
        }

        LODWORD(v12) = v597 - 1;
        LODWORD(v11) = v575;
        if (v597 == 1)
        {
          return;
        }
      }

    case 19:
      v478 = -v36;
      v568 = -(v31 * v37);
      while (1)
      {
        v586 = v41;
        v598 = v12;
        v479 = v11;
        do
        {
          v480 = *v20;
          if (*v20)
          {
            v481 = vrev32q_s8(*v25);
            v482 = vmulq_n_f32(v481, v480 * 0.0039216);
            LODWORD(a10) = v482.i32[3];
            v483 = v32 ? *&v482.i32[3] : v480 * 0.0039216;
            if (v483 > 0.0)
            {
              v484 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v484;
              if (v14)
              {
                v485 = v484;
                if (v484 <= 0.0)
                {
                  v486 = bswap32(v482.u32[2]);
                  v487 = bswap32(LODWORD(v483));
                  v488 = vrev32_s8(*v482.i8);
LABEL_568:
                  *v18->i8 = v488;
                  v18->i32[2] = v486;
                  v18->i32[3] = v487;
                  goto LABEL_569;
                }
              }

              else
              {
                v485 = 1.0;
              }

              v489 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v481.i32[0] = v489.i32[1];
              v557 = v483;
              *&v490 = vextq_s8(v482, v482, 4uLL).u64[0];
              *v491.i32 = PDAcolorburnPDA(*v489.i32, *v481.i64, a5, a6, v485, *v482.i64, v490, a10, *v482.i32, COERCE_DOUBLE(__PAIR64__(v482.u32[3], HIDWORD(v490))), v557);
              v486 = bswap32(LODWORD(a5));
              v487 = bswap32(LODWORD(a6));
              v491.i32[1] = v492;
              v488 = vrev32_s8(v491);
              goto LABEL_568;
            }
          }

LABEL_569:
          v20 += v43;
          v493 = &v25[v43];
          if (v493 >= v42)
          {
            v494 = v478;
          }

          else
          {
            v494 = 0;
          }

          v25 = &v493[v494];
          v18 += v43;
          --v479;
        }

        while (v479);
        v20 += v574;
        v18 += v573;
        v41 = v586;
        v495 = v586 + 16 * v572;
        v496 = v568;
        if (v495 < v571)
        {
          v496 = 0;
        }

        v497 = (v495 + 16 * v496);
        v498 = v42 + 16 * v496 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v498;
          v41 = v497;
          v25 = v497;
        }

        LODWORD(v12) = v598 - 1;
        LODWORD(v11) = v575;
        if (v598 == 1)
        {
          return;
        }
      }

    case 20:
      v317 = -v36;
      v564 = -(v31 * v37);
      while (1)
      {
        v582 = v41;
        v594 = v12;
        v318 = v11;
        do
        {
          v319 = *v20;
          if (*v20)
          {
            v320 = vmulq_n_f32(vrev32q_s8(*v25), v319 * 0.0039216);
            LODWORD(a10) = v320.i32[3];
            v321 = v32 ? *&v320.i32[3] : v319 * 0.0039216;
            if (v321 > 0.0)
            {
              v322 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v322;
              if (v14)
              {
                *&a7 = v322;
                if (v322 <= 0.0)
                {
                  v323 = bswap32(v320.u32[2]);
                  v324 = bswap32(LODWORD(v321));
                  v325 = vrev32_s8(*v320.i8);
LABEL_371:
                  *v18->i8 = v325;
                  v18->i32[2] = v323;
                  v18->i32[3] = v324;
                  goto LABEL_372;
                }
              }

              else
              {
                LODWORD(a7) = 1.0;
              }

              v326 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              DWORD2(v550) = v320.i32[3];
              *&v550 = vextq_s8(v320, v320, 4uLL).u64[0];
              *v327.i32 = PDAsoftlightPDA(*v326.i32, *&v326.i32[1], a5, *&a6, a7, *v320.i64, *&v550, a10, v33, a2, v34, v11, v12, v31, v35, v41, v320.u32[0], v550, *(&v550 + 4), v321);
              v323 = bswap32(LODWORD(a5));
              v324 = bswap32(LODWORD(a6));
              v327.i32[1] = v328;
              v325 = vrev32_s8(v327);
              goto LABEL_371;
            }
          }

LABEL_372:
          v20 += v43;
          v329 = &v25[v43];
          if (v329 >= v42)
          {
            v330 = v317;
          }

          else
          {
            v330 = 0;
          }

          v25 = &v329[v330];
          v18 += v43;
          --v318;
        }

        while (v318);
        v20 += v574;
        v18 += v573;
        v41 = v582;
        v331 = v582 + 16 * v572;
        v332 = v564;
        if (v331 < v571)
        {
          v332 = 0;
        }

        v333 = (v331 + 16 * v332);
        v334 = v42 + 16 * v332 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v334;
          v41 = v333;
          v25 = v333;
        }

        v12 = (v594 - 1);
        v11 = v575;
        if (v594 == 1)
        {
          return;
        }
      }

    case 21:
      v346 = -v36;
      v565 = -(v31 * v37);
      while (1)
      {
        v583 = v41;
        v595 = v12;
        v347 = v11;
        do
        {
          v348 = *v20;
          if (*v20)
          {
            v349 = vrev32q_s8(*v25);
            v350 = vmulq_n_f32(v349, v348 * 0.0039216);
            LODWORD(a10) = v350.i32[3];
            v351 = v32 ? *&v350.i32[3] : v348 * 0.0039216;
            if (v351 > 0.0)
            {
              v352 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v352;
              if (v14)
              {
                v353 = v352;
                if (v352 <= 0.0)
                {
                  v354 = bswap32(v350.u32[2]);
                  v355 = bswap32(LODWORD(v351));
                  v356 = vrev32_s8(*v350.i8);
LABEL_411:
                  *v18->i8 = v356;
                  v18->i32[2] = v354;
                  v18->i32[3] = v355;
                  goto LABEL_412;
                }
              }

              else
              {
                v353 = 1.0;
              }

              v357 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v349.i32[0] = v357.i32[1];
              v554 = v351;
              *&v358 = vextq_s8(v350, v350, 4uLL).u64[0];
              *v359.i32 = PDAhardlightPDA(*v357.i32, *v349.i64, a5, a6, v353, *v350.i64, v358, a10, *v350.i32, COERCE_DOUBLE(__PAIR64__(v350.u32[3], HIDWORD(v358))), v554);
              v354 = bswap32(LODWORD(a5));
              v355 = bswap32(LODWORD(a6));
              v359.i32[1] = v360;
              v356 = vrev32_s8(v359);
              goto LABEL_411;
            }
          }

LABEL_412:
          v20 += v43;
          v361 = &v25[v43];
          if (v361 >= v42)
          {
            v362 = v346;
          }

          else
          {
            v362 = 0;
          }

          v25 = &v361[v362];
          v18 += v43;
          --v347;
        }

        while (v347);
        v20 += v574;
        v18 += v573;
        v41 = v583;
        v363 = v583 + 16 * v572;
        v364 = v565;
        if (v363 < v571)
        {
          v364 = 0;
        }

        v365 = (v363 + 16 * v364);
        v366 = v42 + 16 * v364 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v366;
          v41 = v365;
          v25 = v365;
        }

        LODWORD(v12) = v595 - 1;
        LODWORD(v11) = v575;
        if (v595 == 1)
        {
          return;
        }
      }

    case 22:
      v454 = -v36;
      v455 = -(v31 * v37);
      while (1)
      {
        v456 = v11;
        do
        {
          if (*v20)
          {
            v457 = *v20 * 0.0039216;
            v458 = vmulq_n_f32(vrev32q_s8(*v25), v457);
            if (v32)
            {
              v457 = v458.f32[3];
            }

            if (v457 > 0.0)
            {
              if (v14)
              {
                v459 = COERCE_FLOAT(bswap32(v18->u32[3]));
                if (v459 <= 0.0)
                {
                  v460 = bswap32(v458.u32[2]);
                  v461 = bswap32(LODWORD(v457));
                  v462 = vrev32_s8(*v458.f32);
LABEL_543:
                  *v18->i8 = v462;
                  v18->i32[2] = v460;
                  v18->i32[3] = v461;
                  goto LABEL_544;
                }
              }

              else
              {
                v459 = 1.0;
              }

              v463 = COERCE_FLOAT(bswap32(v18->u32[2]));
              v464 = vrev32_s8(*v18->i8);
              v465 = vadd_f32(*v458.f32, v464);
              v466 = vmul_n_f32(v464, v457);
              v467 = vmul_n_f32(*v458.f32, v459);
              v468 = vsub_f32(v465, v466);
              v469 = vsub_f32(v466, v467);
              v470 = vadd_f32(vsub_f32(v468, v467), vbsl_s8(vcltz_f32(v469), vneg_f32(v469), v469));
              v458.f32[0] = vmuls_lane_f32(v459, v458, 2);
              v471 = (v457 * v463) - v458.f32[0];
              v458.f32[0] = ((v458.f32[2] + v463) - (v457 * v463)) - v458.f32[0];
              if (v471 < 0.0)
              {
                v471 = -v471;
              }

              v460 = bswap32(COERCE_UNSIGNED_INT(v458.f32[0] + v471));
              v461 = bswap32(COERCE_UNSIGNED_INT((v459 + v457) - (v459 * v457)));
              v462 = vrev32_s8(v470);
              goto LABEL_543;
            }
          }

LABEL_544:
          v20 += v43;
          v472 = &v25[v43];
          if (v472 >= v42)
          {
            v473 = v454;
          }

          else
          {
            v473 = 0;
          }

          v25 = &v472[v473];
          v18 += v43;
          --v456;
        }

        while (v456);
        v20 += v33;
        v18 += v34;
        v474 = v41 + 16 * v31;
        if (v474 >= v39)
        {
          v475 = v455;
        }

        else
        {
          v475 = 0;
        }

        v476 = (v474 + 16 * v475);
        v477 = v42 + 16 * v475 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v477;
          v41 = v476;
          v25 = v476;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 23:
      v499 = -v36;
      v500 = -(v31 * v37);
      while (1)
      {
        v501 = v11;
        do
        {
          if (*v20)
          {
            v502 = *v20 * 0.0039216;
            v503 = bswap32(v25->u32[2]);
            LODWORD(v504) = bswap32(v25->u32[3]);
            if (!v32)
            {
              v504 = 1.0;
            }

            v505 = vmul_n_f32(__PAIR64__(LODWORD(v504), v503), v502);
            if (v505.f32[1] > 0.0)
            {
              *v506.i8 = vmul_n_f32(vrev32_s8(*v25->i8), v502);
              if (v14)
              {
                LODWORD(v507) = bswap32(v18->u32[3]);
                if (v507 <= 0.0)
                {
                  v506.u64[1] = v505;
                  *v18 = vrev32q_s8(v506);
                  goto LABEL_591;
                }
              }

              else
              {
                v507 = 1.0;
              }

              LODWORD(v508) = bswap32(v18->u32[2]);
              v509 = -v507;
              v510 = vrev32_s8(*v18->i8);
              v511 = vadd_f32(v505, __PAIR64__(LODWORD(v507), LODWORD(v508)));
              v512.i32[0] = 0x40000000;
              v512.f32[1] = v509;
              v505.f32[0] = -v508 * v505.f32[0];
              *v18->i8 = vrev32_s8(vmla_f32(vadd_f32(*v506.i8, v510), 0xC0000000C0000000, vmul_f32(*v506.i8, v510)));
              v18->u64[1] = vrev32_s8(vmla_f32(v511, v505, v512));
            }
          }

LABEL_591:
          v20 += v43;
          v513 = &v25[v43];
          if (v513 >= v42)
          {
            v514 = v499;
          }

          else
          {
            v514 = 0;
          }

          v25 = &v513[v514];
          v18 += v43;
          --v501;
        }

        while (v501);
        v20 += v33;
        v18 += v34;
        v515 = v41 + 16 * v31;
        if (v515 >= v39)
        {
          v516 = v500;
        }

        else
        {
          v516 = 0;
        }

        v517 = (v515 + 16 * v516);
        v518 = v42 + 16 * v516 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v518;
          v41 = v517;
          v25 = v517;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 24:
      v197 = -v36;
      v561 = -(v31 * v37);
      while (1)
      {
        v579 = v41;
        v591 = v12;
        v198 = v11;
        do
        {
          v199 = *v20;
          if (*v20)
          {
            v200 = vmulq_n_f32(vrev32q_s8(*v25), v199 * 0.0039216);
            LODWORD(a10) = v200.i32[3];
            v201 = v32 ? *&v200.i32[3] : v199 * 0.0039216;
            if (v201 > 0.0)
            {
              v202 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v202;
              if (v14)
              {
                v203 = v202;
                if (v202 <= 0.0)
                {
                  v204 = bswap32(v200.u32[2]);
                  v205 = bswap32(LODWORD(v201));
                  v206 = vrev32_s8(*v200.i8);
LABEL_215:
                  *v18->i8 = v206;
                  v18->i32[2] = v204;
                  v18->i32[3] = v205;
                  goto LABEL_216;
                }
              }

              else
              {
                v203 = 1.0;
              }

              v207 = vrev32_s8(*v18->i8);
              *&v549 = vextq_s8(v200, v200, 4uLL).u64[0];
              *v208.i32 = PDAhuePDA(*v207.i32, *&v207.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), a6, v203, *v200.i64, v549, a10, *v200.i32, *&v549, *(&v549 + 1), *&v200.i32[3], v201);
              v204 = bswap32(v209);
              v205 = bswap32(LODWORD(a6));
              v208.i32[1] = v210;
              v206 = vrev32_s8(v208);
              goto LABEL_215;
            }
          }

LABEL_216:
          v20 += v43;
          v211 = &v25[v43];
          if (v211 >= v42)
          {
            v212 = v197;
          }

          else
          {
            v212 = 0;
          }

          v25 = &v211[v212];
          v18 += v43;
          --v198;
        }

        while (v198);
        v20 += v574;
        v18 += v573;
        v41 = v579;
        v213 = v579 + 16 * v572;
        v214 = v561;
        if (v213 < v571)
        {
          v214 = 0;
        }

        v215 = (v213 + 16 * v214);
        v216 = v42 + 16 * v214 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v216;
          v41 = v215;
          v25 = v215;
        }

        LODWORD(v12) = v591 - 1;
        LODWORD(v11) = v575;
        if (v591 == 1)
        {
          return;
        }
      }

    case 25:
      v177 = -v36;
      v560 = -(v31 * v37);
      while (1)
      {
        v578 = v41;
        v590 = v12;
        v178 = v11;
        do
        {
          v179 = *v20;
          if (*v20)
          {
            v180 = vmulq_n_f32(vrev32q_s8(*v25), v179 * 0.0039216);
            LODWORD(a10) = v180.i32[3];
            v181 = v32 ? *&v180.i32[3] : v179 * 0.0039216;
            if (v181 > 0.0)
            {
              v182 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a6 = v182;
              if (v14)
              {
                v183 = v182;
                if (v182 <= 0.0)
                {
                  v184 = bswap32(v180.u32[2]);
                  v185 = bswap32(LODWORD(v181));
                  v186 = vrev32_s8(*v180.i8);
LABEL_191:
                  *v18->i8 = v186;
                  v18->i32[2] = v184;
                  v18->i32[3] = v185;
                  goto LABEL_192;
                }
              }

              else
              {
                v183 = 1.0;
              }

              v187 = vrev32_s8(*v18->i8);
              *&v548 = vextq_s8(v180, v180, 4uLL).u64[0];
              *v188.i32 = PDAsaturationPDA(*v187.i32, *&v187.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), a6, v183, *v180.i64, v548, a10, *v180.i32, *&v548, *(&v548 + 1), *&v180.i32[3], v181);
              v184 = bswap32(v189);
              v185 = bswap32(LODWORD(a6));
              v188.i32[1] = v190;
              v186 = vrev32_s8(v188);
              goto LABEL_191;
            }
          }

LABEL_192:
          v20 += v43;
          v191 = &v25[v43];
          if (v191 >= v42)
          {
            v192 = v177;
          }

          else
          {
            v192 = 0;
          }

          v25 = &v191[v192];
          v18 += v43;
          --v178;
        }

        while (v178);
        v20 += v574;
        v18 += v573;
        v41 = v578;
        v193 = v578 + 16 * v572;
        v194 = v560;
        if (v193 < v571)
        {
          v194 = 0;
        }

        v195 = (v193 + 16 * v194);
        v196 = v42 + 16 * v194 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v196;
          v41 = v195;
          v25 = v195;
        }

        LODWORD(v12) = v590 - 1;
        LODWORD(v11) = v575;
        if (v590 == 1)
        {
          return;
        }
      }

    case 26:
      v519 = -v36;
      v569 = -(v31 * v37);
      while (1)
      {
        v587 = v41;
        v599 = v12;
        v520 = v11;
        do
        {
          v521 = *v20;
          if (*v20)
          {
            v522 = vmulq_n_f32(vrev32q_s8(*v25), v521 * 0.0039216);
            LODWORD(a6) = v522.i32[3];
            v523 = v32 ? v522.f32[3] : v521 * 0.0039216;
            if (v523 > 0.0)
            {
              v524 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a8 = v524;
              if (v14)
              {
                *&a9 = v524;
                if (v524 <= 0.0)
                {
                  v525 = bswap32(v522.u32[2]);
                  v526 = bswap32(LODWORD(v523));
LABEL_615:
                  *v18->i8 = vrev32_s8(*v522.f32);
                  v18->i32[2] = v525;
                  v18->i32[3] = v526;
                  goto LABEL_616;
                }
              }

              else
              {
                LODWORD(a9) = 1.0;
              }

              v546 = COERCE_DOUBLE(vrev32_s8(*v18->i8));
              v522.f32[0] = PDAluminosityPDA(v522.f32[0], v522.f32[1], v522.f32[2], a6, v523, a8, a9, v546, *&v546, *(&v546 + 1), COERCE_FLOAT(bswap32(v18->u32[2])), *&a8, *&a9);
              v525 = bswap32(v527);
              v526 = bswap32(LODWORD(a6));
              v522.i32[1] = v528;
              goto LABEL_615;
            }
          }

LABEL_616:
          v20 += v43;
          v529 = &v25[v43];
          if (v529 >= v42)
          {
            v530 = v519;
          }

          else
          {
            v530 = 0;
          }

          v25 = &v529[v530];
          v18 += v43;
          --v520;
        }

        while (v520);
        v20 += v574;
        v18 += v573;
        v41 = v587;
        v531 = v587 + 16 * v572;
        v532 = v569;
        if (v531 < v571)
        {
          v532 = 0;
        }

        v533 = (v531 + 16 * v532);
        v534 = v42 + 16 * v532 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v534;
          v41 = v533;
          v25 = v533;
        }

        LODWORD(v12) = v599 - 1;
        LODWORD(v11) = v575;
        if (v599 == 1)
        {
          return;
        }
      }

    case 27:
      v48 = -v36;
      v558 = -(v31 * v37);
      break;
    default:
      return;
  }

  do
  {
    v576 = v41;
    v588 = v12;
    v49 = v11;
    do
    {
      v50 = *v20;
      if (*v20)
      {
        v51 = vmulq_n_f32(vrev32q_s8(*v25), v50 * 0.0039216);
        LODWORD(a10) = v51.i32[3];
        v52 = v32 ? *&v51.i32[3] : v50 * 0.0039216;
        if (v52 > 0.0)
        {
          v53 = COERCE_FLOAT(bswap32(v18->u32[3]));
          *&a6 = v53;
          if (v14)
          {
            v54 = v53;
            if (v53 <= 0.0)
            {
              v55 = bswap32(v51.u32[2]);
              v56 = bswap32(LODWORD(v52));
              v57 = vrev32_s8(*v51.i8);
LABEL_38:
              *v18->i8 = v57;
              v18->i32[2] = v55;
              v18->i32[3] = v56;
              goto LABEL_39;
            }
          }

          else
          {
            v54 = 1.0;
          }

          v58 = vrev32_s8(*v18->i8);
          *&v547 = vextq_s8(v51, v51, 4uLL).u64[0];
          *v59.i32 = PDAluminosityPDA(*v58.i32, *&v58.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), a6, v54, *v51.i64, v547, a10, *v51.i32, *&v547, *(&v547 + 1), *&v51.i32[3], v52);
          v55 = bswap32(v60);
          v56 = bswap32(LODWORD(a6));
          v59.i32[1] = v61;
          v57 = vrev32_s8(v59);
          goto LABEL_38;
        }
      }

LABEL_39:
      v20 += v43;
      v62 = &v25[v43];
      if (v62 >= v42)
      {
        v63 = v48;
      }

      else
      {
        v63 = 0;
      }

      v25 = &v62[v63];
      v18 += v43;
      --v49;
    }

    while (v49);
    v20 += v574;
    v18 += v573;
    v41 = v576;
    v64 = v576 + 16 * v572;
    v65 = v558;
    if (v64 < v571)
    {
      v65 = 0;
    }

    v66 = (v64 + 16 * v65);
    v67 = v42 + 16 * v65 + 16 * v572;
    if (v570)
    {
      v25 += v572;
    }

    else
    {
      v42 = v67;
      v41 = v66;
      v25 = v66;
    }

    LODWORD(v12) = v588 - 1;
    LODWORD(v11) = v575;
  }

  while (v588 != 1);
}