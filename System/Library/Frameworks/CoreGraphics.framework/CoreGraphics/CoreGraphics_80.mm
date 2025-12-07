_DWORD *rgba64_DMplusDAM(_DWORD *result, unint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a2 * a3 + a4 * a6;
  v7 = WORD1(a2) * a3 + WORD1(a4) * a6;
  v8 = WORD2(a2) * a3 + WORD2(a4) * a6;
  v9 = HIWORD(a2) * a3 + a6 * a5;
  if (v6 >= 0xFFFE8000)
  {
    v6 = 4294868992;
  }

  if (v7 >= 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  if (v8 >= 0xFFFE8000)
  {
    v8 = 4294868992;
  }

  if (v9 >= 0xFFFE8000)
  {
    v9 = 4294868992;
  }

  *result = (((v7 + 0x8000) >> 16) + v7 + 0x8000) & 0xFFFF0000 | ((((v6 + 0x8000) >> 16) + v6 + 0x8000) >> 16);
  result[1] = (((v9 + 0x8000) >> 16) + v9 + 0x8000) & 0xFFFF0000 | ((((v8 + 0x8000) >> 16) + v8 + 0x8000) >> 16);
  return result;
}

_DWORD *rgba64_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15253(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD70;
    a2[6] = 0;
    *(a2 + 6) = v8;
    *(a2 + 2) = 1;
    if (v8 <= 0xFFFEFFFFFFFFFFFFLL)
    {
      v9 = a2 + 12;
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

unint64_t PIXELCONSTANT_15253(float *a1, int a2, float *a3, float a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5;
  if (v5 >= a4)
  {
    v6 = a4;
    if (v4 > a4)
    {
      v6 = *a1;
    }
  }

  v7 = a1[3];
  v8 = v6 * a1[2];
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (*a3 >= v4)
    {
      v4 = *a3;
    }

    if (*a3 > v5)
    {
      v4 = a1[1];
    }

    v10 = (v7 + (v4 * v8));
    v11 = v10;
    LOWORD(v12) = v10;
  }

  else
  {
    if (v9 == 4)
    {
      v19 = a3[4];
      v20 = *a3;
      v21 = a3[1];
      v22 = a3[2];
      if (v19 < v4)
      {
        v23 = *a1;
      }

      else
      {
        v23 = a3[4];
      }

      if (v19 <= v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = a1[1];
      }

      if (v20 < v4)
      {
        v25 = *a1;
      }

      else
      {
        v25 = *a3;
      }

      if (v20 <= v5)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1[1];
      }

      if (v21 < v4)
      {
        v27 = *a1;
      }

      else
      {
        v27 = a3[1];
      }

      if (v21 <= v5)
      {
        v28 = v27;
      }

      else
      {
        v28 = a1[1];
      }

      if (v22 < v4)
      {
        v29 = *a1;
      }

      else
      {
        v29 = a3[2];
      }

      if (v22 <= v5)
      {
        v30 = v29;
      }

      else
      {
        v30 = a1[1];
      }

      v31 = (v5 - v26) - v24;
      v32 = (v5 - v28) - v24;
      v33 = (v5 - v30) - v24;
      v34 = v7 + (v31 * v8);
      if (v31 < v4)
      {
        v34 = *a1;
      }

      v35 = v7 + (v32 * v8);
      if (v32 < v4)
      {
        v35 = *a1;
      }

      if (v33 >= v4)
      {
        v4 = v7 + (v33 * v8);
      }

      v10 = v34;
      v11 = v35;
      goto LABEL_58;
    }

    LOWORD(v10) = 0;
    v11 = 0;
    LOWORD(v12) = 0;
    if (v9 == 3)
    {
      v13 = a3[1];
      v14 = a3[2];
      if (*a3 < v4)
      {
        v15 = *a1;
      }

      else
      {
        v15 = *a3;
      }

      if (*a3 <= v5)
      {
        v16 = v15;
      }

      else
      {
        v16 = a1[1];
      }

      if (v13 < v4)
      {
        v17 = *a1;
      }

      else
      {
        v17 = a3[1];
      }

      if (v13 <= v5)
      {
        v18 = v17;
      }

      else
      {
        v18 = a1[1];
      }

      if (v14 >= v4)
      {
        v4 = a3[2];
      }

      if (v14 > v5)
      {
        v4 = a1[1];
      }

      v10 = (v7 + (v16 * v8));
      v11 = (v7 + (v18 * v8));
      v4 = v7 + (v4 * v8);
LABEL_58:
      v12 = v4;
    }
  }

  return ((v7 + v8) << 48) | (v12 << 32) | (v11 << 16) | v10;
}

uint64_t RGBA64_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
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
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = rgba64_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = rgba64_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = rgba64_shade_axial_RGB;
    }

    else
    {
      v12 = rgba64_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 3, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 3, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x8C254358uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  RGBA64_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void RGBA64_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v496 = a3;
  v507 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v491 = v3;
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a2 + 184);
  v506.i64[0] = *(a1 + 136);
  v8 = *(a2 + 104);
  v502 = *(a2 + 96);
  v503 = v8;
  v504 = v5;
  v10 = *(a1 + 24);
  v9 = *(a1 + 28);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = *(a1 + 12);
  v501 = *(a1 + 8);
  v495 = a1;
  v498 = a2;
  v14 = *(a2 + 16);
  v15 = (v14 + 10) * v4;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
    v17 = v18;
    v20 = v18;
    v21 = v498;
    v22 = v495;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = &v486 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
    v21 = v498;
    v22 = v495;
  }

  v488 = v20;
  v497 = ((v7 * 65535.0) + 0.5);
  v487 = v6 + (v10 - 1) * v9 + 8 * v12;
  v23 = v9 >> 3;
  v24 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v24 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v26 = 8 * v4;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 + v26;
  v21[18] = v24;
  v21[19] = v25 + v26;
  v21[20] = v25;
  v28 = (v6 + 8 * v23 * v11 + 8 * v13);
  v29 = v491;
  v486 = v9 >> 3;
  v494 = v23 - v491;
  v30 = *(v22 + 104);
  v31 = *(v22 + 108);
  v32 = *(v22 + 2);
  if (v32 == 6 || v32 == 1)
  {
    v33 = v502;
    v34 = v503;
    if (!v506.i64[0])
    {
      goto LABEL_484;
    }

    v35 = 0;
    v36 = 0;
    v37 = *(v495 + 124);
    v38 = (v506.i64[0] + v37 * v31 + v30);
    v29 = v491;
    v493 = v37 - v491;
    v39 = v496;
    v40 = v498;
  }

  else
  {
    v34 = v503;
    if (v506.i64[0])
    {
      shape_enum_clip_alloc(v18, v19, v506.i64[0], 1, 1, 1, v30, v31, v3, v501);
      v40 = v498;
      if (!v41)
      {
        goto LABEL_484;
      }

      v42 = 0;
      v43 = ((v14 * v4 + 15) & 0xFFFFFFF0);
      if (!v14)
      {
        v43 = 8 * v4;
      }

      v493 = -v491;
      v38 = (v27 + v43 + 16);
      v39 = v496;
      v33 = v502;
      v35 = v41;
      while (1)
      {
LABEL_487:
        while (1)
        {
          v484 = *(v38 - 4);
          v485 = v484 - v42;
          if (v484 <= v42)
          {
            break;
          }

          v501 -= v485;
          if (v501 < 1)
          {
LABEL_483:
            free(v35);
            goto LABEL_484;
          }

          v33 += *(v40 + 128) * v485;
          v34 += *(v40 + 136) * v485;
          v28 += 4 * v486 * v485;
          v42 = v484;
        }

        if (v42 < *(v38 - 3) + v484)
        {
          break;
        }

        if (!shape_enum_clip_scan(v35, v38 - 4))
        {
          goto LABEL_483;
        }
      }

      v29 = v491;
      v36 = v42;
    }

    else
    {
      v38 = 0;
      v35 = 0;
      v493 = 0;
      v36 = 0;
      v39 = v496;
      v40 = v498;
      v33 = v502;
    }
  }

  v44 = v35;
  v45 = v497 ^ 0xFFFF;
  v46 = vdup_n_s32(v497 ^ 0xFFFFu);
  v490 = (v3 - 1);
  v489 = -v29;
  v492 = v487 - 8;
  v505 = xmmword_18439CB80;
  v506 = xmmword_18439CB70;
  v47 = vdup_n_s32(0x101u);
  v48 = v44;
  while (2)
  {
    v499 = v36;
    v500 = v48;
    v49 = *v40;
    v502 = v33;
    v503 = v34;
    v49(v40, v33, v34, v3);
    v50 = *(v40 + 160);
    v51 = *(v40 + 144);
    v52 = *(v40 + 8);
    if (v52 == *(v40 + 12))
    {
      if (v497 != 0xFFFF)
      {
        v53 = v3;
        v54 = *(v40 + 144);
        do
        {
          if (*v54)
          {
            v55 = *v50 * v45 + 0x8000;
            v56 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v50), v505));
            v57.i32[1] = v56.i32[1];
            v57.i32[0] = v56.u16[0];
            v58 = vmla_s32(0x800000008000, v57, v46);
            v59 = vand_s8(vsub_s32(v56, vshr_n_u32(vsra_n_u32(v58, v58, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v60.i64[0] = v59.u32[0];
            v60.i64[1] = v59.u32[1];
            v61 = vshlq_u64(v60, v506);
            *v50 = vorrq_s8(v61, vdupq_laneq_s64(v61, 1)).u64[0] | ((WORD1(*v50) - ((WORD1(*v50) * v45 + 0x8000 + ((WORD1(*v50) * v45 + 0x8000) >> 16)) >> 16)) << 16) | (*v50 - ((v55 + HIWORD(v55)) >> 16));
          }

          ++v54;
          v50 += 8;
          --v53;
        }

        while (v53);
        v50 += 8 * v489;
        v51 += v490 + v489 + 1;
      }
    }

    else
    {
      v62 = *(v40 + 152);
      v63 = HIWORD(v52) & 0x3F;
      if (v63 == 16)
      {
        if (v497 == 0xFFFF)
        {
          v106 = 0;
          do
          {
            if (v51[v106])
            {
              *(v50 + 8 * v106) = *(v62 + 8 * v106);
            }

            ++v106;
          }

          while (v3 != v106);
        }

        else
        {
          v79 = 0;
          do
          {
            if (v51[v79])
            {
              v80 = *(v62 + 8 * v79);
              v81 = vmovn_s64(vshlq_u64(vdupq_n_s64(v80), v505));
              v82.i32[1] = v81.i32[1];
              v82.i32[0] = v81.u16[0];
              v83 = vmla_s32(0x800000008000, v82, v46);
              v84 = vand_s8(vsub_s32(v81, vshr_n_u32(vsra_n_u32(v83, v83, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
              v85.i64[0] = v84.u32[0];
              v85.i64[1] = v84.u32[1];
              v86 = vshlq_u64(v85, v506);
              *(v50 + 8 * v79) = vorrq_s8(v86, vdupq_laneq_s64(v86, 1)).u64[0] | ((WORD1(v80) - ((WORD1(v80) * v45 + 0x8000 + ((WORD1(v80) * v45 + 0x8000) >> 16)) >> 16)) << 16) | (v80 - ((v80 * v45 + 0x8000 + ((v80 * v45 + 0x8000) >> 16)) >> 16));
            }

            ++v79;
          }

          while (v3 != v79);
        }
      }

      else if (v63 == 32)
      {
        if (v497 == 0xFFFF)
        {
          v95 = 0;
          v96 = (v62 + 8);
          do
          {
            if (v51[v95])
            {
              v97 = v96[1];
              if (v97 <= 0.0)
              {
                v102 = 0;
              }

              else
              {
                v98 = *(v96 - 2);
                LODWORD(v99) = ((v97 * 65535.0) + 0.5);
                if (v97 <= 1.0)
                {
                  v99 = v99;
                }

                else
                {
                  v99 = 0xFFFFLL;
                }

                LOWORD(v100) = v99;
                if (v97 > 1.0)
                {
                  v97 = 1.0;
                }

                LOWORD(v101) = v99;
                if (v98 <= v97)
                {
                  if (v98 >= 0.0)
                  {
                    v101 = ((v98 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v101) = 0;
                  }
                }

                v103 = *(v96 - 1);
                v104 = v99;
                if (v103 <= v97)
                {
                  if (v103 >= 0.0)
                  {
                    v104 = ((v103 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v104 = 0;
                  }
                }

                v105 = *v96;
                if (*v96 <= v97)
                {
                  if (v105 >= 0.0)
                  {
                    v100 = ((v105 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v100) = 0;
                  }
                }

                v102 = (v99 << 48) | (v100 << 32) | (v104 << 16) | v101;
              }

              *(v50 + 8 * v95) = v102;
            }

            v96 += 4;
            ++v95;
          }

          while (v3 != v95);
        }

        else
        {
          v64 = 0;
          v65 = (v62 + 8);
          do
          {
            if (v51[v64])
            {
              v66 = v65[1];
              if (v66 <= 0.0)
              {
                v71 = 0;
              }

              else
              {
                v67 = *(v65 - 2);
                v68 = ((v66 * 65535.0) + 0.5);
                if (v66 > 1.0)
                {
                  v68 = 0xFFFF;
                }

                v69 = v68;
                if (v66 > 1.0)
                {
                  v66 = 1.0;
                }

                v70 = v68;
                if (v67 <= v66)
                {
                  if (v67 >= 0.0)
                  {
                    v70 = ((v67 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v70 = 0;
                  }
                }

                v72 = *(v65 - 1);
                v73 = v68;
                if (v72 <= v66)
                {
                  if (v72 >= 0.0)
                  {
                    v73 = ((v72 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v73 = 0;
                  }
                }

                v74 = *v65;
                if (*v65 <= v66)
                {
                  if (v74 >= 0.0)
                  {
                    v69 = ((v74 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v69 = 0;
                  }
                }

                v75 = v70 * v45;
                v76 = v73 * v45;
                v77 = v69 * v45;
                v78 = v68 * v45;
                if ((v70 * v45) >= 0xFFFE8000)
                {
                  v75 = -98304;
                }

                if (v76 >= 0xFFFE8000)
                {
                  v76 = -98304;
                }

                if (v77 >= 0xFFFE8000)
                {
                  v77 = -98304;
                }

                if (v78 >= 0xFFFE8000)
                {
                  v78 = -98304;
                }

                v71 = ((v68 - ((v78 + 0x8000 + ((v78 + 0x8000) >> 16)) >> 16)) << 48) | ((v69 - ((v77 + 0x8000 + ((v77 + 0x8000) >> 16)) >> 16)) << 32) | ((v73 - ((v76 + 0x8000 + ((v76 + 0x8000) >> 16)) >> 16)) << 16) | (v70 - ((v75 + 0x8000 + ((v75 + 0x8000) >> 16)) >> 16));
              }

              *(v50 + 8 * v64) = v71;
            }

            v65 += 4;
            ++v64;
          }

          while (v3 != v64);
        }
      }

      else if (v497 == 0xFFFF)
      {
        v107 = 0;
        do
        {
          if (v51[v107])
          {
            v108 = *(v62 + 4 * v107);
            v109 = *(v62 + 4 * v107);
            *(v50 + 8 * v107) = ((v109 | (v109 << 8)) << 48) | ((BYTE1(v108) | (BYTE1(v108) << 8)) << 32) | v108 & 0xFF0000 | (BYTE2(v108) << 24) | (v108 >> 24) | (v108 >> 24 << 8);
          }

          ++v107;
        }

        while (v3 != v107);
      }

      else
      {
        v87 = 0;
        do
        {
          if (v51[v87])
          {
            v88 = *(v62 + 4 * v87);
            v89.i32[0] = v88 >> 8;
            v89.i32[1] = v88;
            v90 = vmul_s32(vand_s8(v89, 0xFF000000FFLL), v47);
            v91 = vmla_s32(0x800000008000, v90, v46);
            v92 = vand_s8(vsub_s32(v90, vshr_n_u32(vsra_n_u32(v91, v91, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v93.i64[0] = v92.u32[0];
            v93.i64[1] = v92.u32[1];
            v94 = vshlq_u64(v93, v506);
            *(v50 + 8 * v87) = vorrq_s8(v94, vdupq_laneq_s64(v94, 1)).u64[0] | (((BYTE2(v88) | (BYTE2(v88) << 8)) - (((BYTE2(v88) | (BYTE2(v88) << 8)) * v45 + 0x8000 + (((BYTE2(v88) | (BYTE2(v88) << 8)) * v45 + 0x8000) >> 16)) >> 16)) << 16) | ((HIBYTE(v88) | (HIBYTE(v88) << 8)) - (((HIBYTE(v88) | (HIBYTE(v88) << 8)) * v45 + 0x8000 + (((HIBYTE(v88) | (HIBYTE(v88) << 8)) * v45 + 0x8000) >> 16)) >> 16));
          }

          ++v87;
        }

        while (v3 != v87);
      }
    }

    switch(v39)
    {
      case 0:
        v110 = v3;
        v111 = v38;
        v112 = v502;
        v113 = v503;
        do
        {
          v114 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v114 = ((*v111 * v114 + ((*v111 * v114) >> 8) + 1) >> 8);
            }

            if (v114)
            {
              if (v114 == 255)
              {
                *v28 = 0;
              }

              else
              {
                v115 = bswap32(v28[1] | (*v28 << 16));
                v116.i32[0] = v115;
                v116.i32[1] = vshr_n_u32(vdup_n_s32(v115), 0x10uLL).i32[1];
                v116.i64[1] = __PAIR64__(bswap32(v28[3]) >> 16, bswap32(v28[2]) >> 16);
                v117.i64[0] = 0x800000008000;
                v117.i64[1] = 0x800000008000;
                v118 = vmlaq_s32(v117, v116, vdupq_n_s32(v114 | (v114 << 8)));
                v116.i32[0] = v115;
                *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v116, vshrq_n_u32(vsraq_n_u32(v118, v118, 0x10uLL), 0x10uLL))));
              }
            }
          }

          ++v51;
          v111 += v38 != 0;
          v28 += 4;
          --v110;
        }

        while (v110);
        v38 = &v111[v493];
        v28 += 4 * v494;
        goto LABEL_452;
      case 1:
        v283 = *v51;
        if (v38)
        {
          v284 = v51 + 1;
          v285 = v3;
          do
          {
            if (v283)
            {
              v286 = *v38 * v283 + ((*v38 * v283) >> 8) + 1;
              v287 = v492;
              if (v492 >= v28)
              {
                v287 = v28;
              }

              if (v287 >= *(v495 + 40))
              {
                v288 = v287;
              }

              else
              {
                v288 = *(v495 + 40);
              }

              if (BYTE1(v286))
              {
                if (BYTE1(v286) == 255)
                {
                  v289 = HIDWORD(*v50);
                  v290 = HIWORD(*v50);
                  v291 = bswap32(*v50);
                  *v288 = HIWORD(v291);
                  v288[1] = v291;
                  v288[2] = bswap32(v289) >> 16;
                  v288[3] = __rev16(v290);
                }

                else
                {
                  RGBA64_DMplusDM(v288, *v50, (257 * (v286 >> 8)), ((bswap32(v288[2]) >> 16) << 32) | ((bswap32(v288[3]) >> 16) << 48) | bswap32(v288[1]) & 0xFFFF0000 | (bswap32(*v288) >> 16), ~(257 * (v286 >> 8)));
                }
              }
            }

            else
            {
              v288 = v28;
            }

            v292 = *v284++;
            v283 = v292;
            v50 += 8;
            ++v38;
            v28 = v288 + 4;
            --v285;
          }

          while (v285);
          v38 += v493;
          v113 = v503;
        }

        else
        {
          v477 = v51 + 1;
          v478 = v3;
          v113 = v503;
          do
          {
            v479 = v492;
            if (v492 >= v28)
            {
              v479 = v28;
            }

            if (v479 >= *(v495 + 40))
            {
              v288 = v479;
            }

            else
            {
              v288 = *(v495 + 40);
            }

            if (v283)
            {
              if (v283 == 255)
              {
                v480 = HIDWORD(*v50);
                v481 = HIWORD(*v50);
                v482 = bswap32(*v50);
                *v288 = HIWORD(v482);
                v288[1] = v482;
                v288[2] = bswap32(v480) >> 16;
                v288[3] = __rev16(v481);
              }

              else
              {
                RGBA64_DMplusDM(v288, *v50, v283 | (v283 << 8), ((bswap32(v288[2]) >> 16) << 32) | ((bswap32(v288[3]) >> 16) << 48) | bswap32(v288[1]) & 0xFFFF0000 | (bswap32(*v288) >> 16), (v283 | (v283 << 8)) ^ 0xFFFF);
              }
            }

            v483 = *v477++;
            v283 = v483;
            v50 += 8;
            v28 = v288 + 4;
            --v478;
          }

          while (v478);
          v38 = 0;
        }

        v28 = &v288[4 * v494 + 4];
        v40 = v498;
        v112 = v502;
        goto LABEL_452;
      case 2:
        v239 = *v51;
        if (v38)
        {
          v240 = v51 + 1;
          v241 = v3;
          while (1)
          {
            v242 = v28;
            if (!v239)
            {
              goto LABEL_237;
            }

            v243 = *v38 * v239 + ((*v38 * v239) >> 8) + 1;
            if (!BYTE1(v243))
            {
              goto LABEL_237;
            }

            if (BYTE1(v243) == 255)
            {
              v244 = *v50;
              v245 = HIWORD(*v50);
              if (v245)
              {
                if (v245 != 0xFFFF)
                {
                  v250 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                  v251 = v245 ^ 0xFFFF;
                  goto LABEL_236;
                }

                v246 = bswap32(v244);
                *v28 = HIWORD(v246);
                v28[1] = v246;
                v28[2] = bswap32(HIDWORD(v244)) >> 16;
                v28[3] = -1;
              }
            }

            else
            {
              v248 = HIWORD(*v50);
              v249 = (257 * (v243 >> 8)) ^ 0xFFFF;
              if (v248 != (v249 * v248 + 0x8000 + ((v249 * v248 + 0x8000) >> 16)) >> 16)
              {
                v247 = *v50;
                v244 = ((v248 - ((v249 * v248 + 0x8000 + ((v249 * v248 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v247) - ((WORD2(v247) * v249 + 0x8000 + ((WORD2(v247) * v249 + 0x8000) >> 16)) >> 16)) << 32) | (v247 - ((v247 * v249 + 0x8000 + ((v247 * v249 + 0x8000) >> 16)) >> 16)) | ((WORD1(v247) - ((WORD1(v247) * v249 + 0x8000 + ((WORD1(v247) * v249 + 0x8000) >> 16)) >> 16)) << 16);
                v250 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                v251 = ~(v248 - ((v249 * v248 + 0x8000 + ((v249 * v248 + 0x8000) >> 16)) >> 16));
LABEL_236:
                RGBA64_DplusDM(v28, v244, v250, v251);
              }
            }

LABEL_237:
            v252 = *v240++;
            v239 = v252;
            v50 += 8;
            ++v38;
            v28 += 4;
            if (!--v241)
            {
              v38 += v493;
LABEL_467:
              v28 = &v242[4 * v494 + 4];
              v40 = v498;
              goto LABEL_468;
            }
          }
        }

        v466 = v51 + 1;
        v467 = v3;
        while (1)
        {
          if (v239)
          {
            if (v239 == 255)
            {
              v468 = *v50;
              v469 = HIWORD(*v50);
              if (v469)
              {
                if (v469 != 0xFFFF)
                {
                  v474 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                  v475 = v469 ^ 0xFFFF;
                  goto LABEL_464;
                }

                v470 = bswap32(v468);
                *v28 = HIWORD(v470);
                v28[1] = v470;
                v28[2] = bswap32(HIDWORD(v468)) >> 16;
                v28[3] = -1;
              }
            }

            else
            {
              v472 = HIWORD(*v50);
              v473 = (257 * v239) ^ 0xFFFF;
              if (v472 != (v473 * v472 + 0x8000 + ((v473 * v472 + 0x8000) >> 16)) >> 16)
              {
                v471 = *v50;
                v468 = ((v472 - ((v473 * v472 + 0x8000 + ((v473 * v472 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v471) - ((WORD2(v471) * v473 + 0x8000 + ((WORD2(v471) * v473 + 0x8000) >> 16)) >> 16)) << 32) | (v471 - ((v471 * v473 + 0x8000 + ((v471 * v473 + 0x8000) >> 16)) >> 16)) | ((WORD1(v471) - ((WORD1(v471) * v473 + 0x8000 + ((WORD1(v471) * v473 + 0x8000) >> 16)) >> 16)) << 16);
                v474 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                v475 = ~(v472 - ((v473 * v472 + 0x8000 + ((v473 * v472 + 0x8000) >> 16)) >> 16));
LABEL_464:
                RGBA64_DplusDM(v28, v468, v474, v475);
              }
            }
          }

          v476 = *v466++;
          v239 = v476;
          v50 += 8;
          v28 += 4;
          if (!--v467)
          {
            v38 = 0;
            v242 = v28 - 4;
            goto LABEL_467;
          }
        }

      case 3:
        v268 = v3;
        v120 = v38;
        do
        {
          v269 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v269 = ((*v120 * v269 + ((*v120 * v269) >> 8) + 1) >> 8);
            }

            if (v269)
            {
              if (v269 == 255)
              {
                v270.i32[0] = *v50;
                v270.i32[1] = vshr_n_u32(vdup_n_s32(*v50), 0x10uLL).i32[1];
                v270.i32[2] = WORD2(*v50);
                v270.i32[3] = HIWORD(*v50);
                v271.i64[0] = 0x800000008000;
                v271.i64[1] = 0x800000008000;
                v272 = vmlaq_s32(v271, v270, vmovl_u16(vdup_n_s16(bswap32(~v28[3]) >> 16)));
                v270.i32[0] = *v50;
                v270.i32[2] = HIDWORD(*v50);
                *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v270, vshrq_n_u32(vsraq_n_u32(v272, v272, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v273 = bswap32(v28[3]) >> 16;
                RGBA64_DMplusDM(v28, *v50, (v273 * (v269 | (v269 << 8)) + 0x8000 + ((v273 * (v269 | (v269 << 8)) + 0x8000) >> 16)) >> 16, (v273 << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), (v269 | (v269 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          --v268;
        }

        while (v268);
        goto LABEL_450;
      case 4:
        v181 = v3;
        v120 = v38;
        do
        {
          v182 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v182 = ((*v120 * v182 + ((*v120 * v182) >> 8) + 1) >> 8);
            }

            if (v182)
            {
              if (v182 == 255)
              {
                v183.i32[0] = *v50;
                v183.i32[1] = vshr_n_u32(vdup_n_s32(*v50), 0x10uLL).i32[1];
                v183.i32[2] = WORD2(*v50);
                v183.i32[3] = HIWORD(*v50);
                v184.i64[0] = 0x800000008000;
                v184.i64[1] = 0x800000008000;
                v185 = vmlaq_s32(v184, v183, vmovl_u16(vdup_n_s16(bswap32(v28[3]) >> 16)));
                v183.i32[0] = *v50;
                v183.i32[2] = HIDWORD(*v50);
                *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v183, vshrq_n_u32(vsraq_n_u32(v185, v185, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v186 = bswap32(v28[3]) >> 16;
                RGBA64_DMplusDM(v28, *v50, ((v186 ^ 0xFFFF) * (v182 | (v182 << 8)) + 0x8000 + (((v186 ^ 0xFFFF) * (v182 | (v182 << 8)) + 0x8000) >> 16)) >> 16, (v186 << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), (v182 | (v182 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          --v181;
        }

        while (v181);
        goto LABEL_450;
      case 5:
        v323 = v3;
        v120 = v38;
        while (1)
        {
          v324 = *v51;
          if (*v51)
          {
            if (!v38)
            {
              goto LABEL_321;
            }

            v325 = *v120 * v324 + ((*v120 * v324) >> 8) + 1;
            if (v325 >= 0x100)
            {
              break;
            }
          }

LABEL_322:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v323)
          {
            goto LABEL_450;
          }
        }

        v324 = v325 >> 8;
LABEL_321:
        v326 = WORD1(*v50);
        v327 = (v324 | (v324 << 8)) ^ 0xFFFF;
        v328 = *v50 * v327 + 0x8000;
        v329 = WORD2(*v50) * v327 + 0x8000;
        v330 = v326 * v327 + 0x8000 + ((v326 * v327 + 0x8000) >> 16);
        v331 = HIWORD(*v50) - ((v327 * HIWORD(*v50) + 0x8000 + ((v327 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        v332 = bswap32(v28[3]) >> 16;
        RGBA64_DMplusDM(v28, (v331 << 48) | ((HIDWORD(*v50) - ((v329 + HIWORD(v329)) >> 16)) << 32) | (*v50 - ((v328 + HIWORD(v328)) >> 16)) | ((v326 - HIWORD(v330)) << 16), v332, ((bswap32(v28[2]) >> 16) << 32) | (v332 << 48) | (__PAIR64__(bswap32(v28[1]) >> 16, bswap32(*v28)) >> 16), ~v331);
        goto LABEL_322;
      case 6:
        v363 = v3;
        v364 = v38;
        do
        {
          v365 = *v51;
          if (!*v51)
          {
            goto LABEL_361;
          }

          if (v38)
          {
            v366 = *v364 * v365 + ((*v364 * v365) >> 8) + 1;
            if (v366 < 0x100)
            {
              goto LABEL_361;
            }

            v365 = v366 >> 8;
          }

          v367 = bswap32(v28[3]);
          if (HIWORD(v367) != 0xFFFF)
          {
            if (~HIWORD(v367) == 0xFFFF)
            {
              v368.i32[0] = *v50;
              v368.i32[1] = vshr_n_u32(vdup_n_s32(*v50), 0x10uLL).i32[1];
              v368.i32[2] = WORD2(*v50);
              v368.i32[3] = HIWORD(*v50);
              v369.i64[0] = 0x800000008000;
              v369.i64[1] = 0x800000008000;
              v370 = vmlaq_s32(v369, v368, vdupq_n_s32((v365 | (v365 << 8)) ^ 0xFFFFu));
              v368.i32[0] = *v50;
              v368.i32[2] = HIDWORD(*v50);
              *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v368, vshrq_n_u32(vsraq_n_u32(v370, v370, 0x10uLL), 0x10uLL))));
            }

            else
            {
              RGBA64_DplusDM(v28, (HIWORD(v367) << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), *v50, (257 * v365 * ~HIWORD(v367) + 0x8000 + ((257 * v365 * ~HIWORD(v367) + 0x8000) >> 16)) >> 16);
            }
          }

LABEL_361:
          ++v51;
          v50 += 8;
          v364 += v38 != 0;
          v28 += 4;
          --v363;
        }

        while (v363);
        v38 = &v364[v493];
        v28 += 4 * v494;
LABEL_451:
        v40 = v498;
        v112 = v502;
        v113 = v503;
LABEL_452:
        if (--v501)
        {
          v48 = 0;
          v36 = v499 + 1;
          v33 = *(v40 + 128) + v112;
          v34 = *(v40 + 136) + v113;
          if (v500)
          {
            v42 = v499 + 1;
            v35 = v500;
            goto LABEL_487;
          }

          continue;
        }

        v35 = v500;
        if (v500)
        {
          goto LABEL_483;
        }

LABEL_484:
        if (v488)
        {
          free(v488);
        }

        return;
      case 7:
        v274 = v3;
        v120 = v38;
        do
        {
          v275 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v275 = ((*v120 * v275 + ((*v120 * v275) >> 8) + 1) >> 8);
            }

            if (v275)
            {
              if (v275 == 255)
              {
                v276 = bswap32(v28[1] | (*v28 << 16));
                v277.i32[0] = v276;
                v277.i32[1] = vshr_n_u32(vdup_n_s32(v276), 0x10uLL).i32[1];
                v277.i64[1] = __PAIR64__(bswap32(v28[3]) >> 16, bswap32(v28[2]) >> 16);
                v278.i64[0] = 0x800000008000;
                v278.i64[1] = 0x800000008000;
                v279 = vmlaq_s32(v278, v277, vdupq_n_s32(*(v50 + 6) ^ 0xFFFFu));
                v277.i32[0] = v276;
                *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v277, vshrq_n_u32(vsraq_n_u32(v279, v279, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v280 = v275 | (v275 << 8);
                v281 = *(v50 + 6) * v280 + 0x8000;
                v282 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                RGBA64_DMplusDM(v28, v282, (v281 + HIWORD(v281)) >> 16, v282, v280 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          --v274;
        }

        while (v274);
        goto LABEL_450;
      case 8:
        v397 = v3;
        v120 = v38;
        do
        {
          v398 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v398 = ((*v120 * v398 + ((*v120 * v398) >> 8) + 1) >> 8);
            }

            if (v398)
            {
              if (v398 == 255)
              {
                v399 = bswap32(v28[1] | (*v28 << 16));
                v400.i32[0] = v399;
                v400.i32[1] = vshr_n_u32(vdup_n_s32(v399), 0x10uLL).i32[1];
                v400.i64[1] = __PAIR64__(bswap32(v28[3]) >> 16, bswap32(v28[2]) >> 16);
                v401.i64[0] = 0x800000008000;
                v401.i64[1] = 0x800000008000;
                v402 = vmlaq_s32(v401, v400, vdupq_n_s32(*(v50 + 6)));
                v400.i32[0] = v399;
                *v28 = vrev16_s8(vmovn_s32(vsubq_s32(v400, vshrq_n_u32(vsraq_n_u32(v402, v402, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v403 = v398 | (v398 << 8);
                v404 = (*(v50 + 6) ^ 0xFFFF) * v403 + 0x8000;
                v405 = ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
                RGBA64_DMplusDM(v28, v405, (v404 + HIWORD(v404)) >> 16, v405, v403 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          --v397;
        }

        while (v397);
        goto LABEL_450;
      case 9:
        v198 = v3;
        v120 = v38;
        while (1)
        {
          v199 = *v51;
          if (*v51)
          {
            if (!v38)
            {
              goto LABEL_194;
            }

            v200 = *v120 * v199 + ((*v120 * v199) >> 8) + 1;
            if (v200 >= 0x100)
            {
              break;
            }
          }

LABEL_195:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v198)
          {
            goto LABEL_450;
          }
        }

        v199 = v200 >> 8;
LABEL_194:
        v201 = ~(v199 | (v199 << 8));
        v202 = v201;
        v203 = *v50 * v201 + 0x8000;
        v204 = WORD2(*v50) * v201 + 0x8000;
        v205 = *v50 - ((v203 + HIWORD(v203)) >> 16);
        LOWORD(v203) = WORD1(*v50) - ((WORD1(*v50) * v202 + 0x8000 + ((WORD1(*v50) * v202 + 0x8000) >> 16)) >> 16);
        v206 = HIWORD(*v50) - ((HIWORD(*v50) * v202 + 0x8000 + ((HIWORD(*v50) * v202 + 0x8000) >> 16)) >> 16);
        v207 = v205 | (v203 << 16);
        v208 = bswap32(v28[3]) >> 16;
        RGBA64_DMplusDM(v28, (v206 << 48) | ((HIDWORD(*v50) - ((v204 + HIWORD(v204)) >> 16)) << 32) | v207, v208 ^ 0xFFFF, (v208 << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), (v206 + v201));
        goto LABEL_195;
      case 10:
        v386 = v3;
        v120 = v38;
        while (1)
        {
          v387 = *v51;
          if (*v51)
          {
            if (!v38)
            {
              goto LABEL_382;
            }

            v388 = *v120 * v387 + ((*v120 * v387) >> 8) + 1;
            if (v388 >= 0x100)
            {
              break;
            }
          }

LABEL_383:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v386)
          {
            goto LABEL_450;
          }
        }

        v387 = v388 >> 8;
LABEL_382:
        v389 = WORD1(*v50);
        v390 = (v387 | (v387 << 8)) ^ 0xFFFF;
        v391 = *v50 * v390 + 0x8000;
        v392 = v389 * v390 + 0x8000;
        v393 = WORD2(*v50) * v390 + 0x8000;
        v394 = HIWORD(*v50) - ((v390 * HIWORD(*v50) + 0x8000 + ((v390 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        v395 = (*v50 - ((v391 + HIWORD(v391)) >> 16)) | ((v389 - ((v392 + HIWORD(v392)) >> 16)) << 16);
        v396 = bswap32(v28[3]) >> 16;
        RGBA64_DMplusDM(v28, (v394 << 48) | ((HIDWORD(*v50) - ((v393 + HIWORD(v393)) >> 16)) << 32) | v395, v396 ^ 0xFFFF, (v396 << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), ~v394);
        goto LABEL_383;
      case 11:
        v165 = v3;
        v120 = v38;
        while (1)
        {
          v166 = *v51;
          if (*v51)
          {
            if (!v38)
            {
              goto LABEL_165;
            }

            v167 = *v120 * v166 + ((*v120 * v166) >> 8) + 1;
            if (v167 >= 0x100)
            {
              break;
            }
          }

LABEL_169:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v165)
          {
            goto LABEL_450;
          }
        }

        v166 = v167 >> 8;
LABEL_165:
        v168 = WORD1(*v50);
        v169 = (v166 | (v166 << 8)) ^ 0xFFFF;
        v170 = *v50 * v169 + 0x8000;
        v171 = WORD2(*v50) * v169 + 0x8000;
        v172 = v168 * v169 + 0x8000 + ((v168 * v169 + 0x8000) >> 16);
        v173 = *v50 - ((v170 + HIWORD(v170)) >> 16);
        v174 = HIWORD(*v50) - ((v169 * HIWORD(*v50) + 0x8000 + ((v169 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        v175 = (v174 << 48) | ((HIDWORD(*v50) - ((v171 + HIWORD(v171)) >> 16)) << 32);
        v176 = v173 | ((v168 - HIWORD(v172)) << 16);
        v177 = bswap32(v28[3]) >> 16;
        v178 = (bswap32(v28[2]) >> 16) << 32;
        v179 = bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
        if (v504)
        {
          v180 = v177;
        }

        else
        {
          v180 = -1;
        }

        RGBA64_DAplusdDA(v28, v178 | (v177 << 48) | v179, v180, v175 | v176, v174);
        goto LABEL_169;
      case 12:
        v187 = v3;
        v120 = v38;
        while (1)
        {
          v188 = *v51;
          if (*v51)
          {
            if (!v38)
            {
              goto LABEL_186;
            }

            v189 = *v120 * v188 + ((*v120 * v188) >> 8) + 1;
            if (v189 >= 0x100)
            {
              break;
            }
          }

LABEL_187:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v187)
          {
            goto LABEL_450;
          }
        }

        v188 = v189 >> 8;
LABEL_186:
        v190 = (v188 | (v188 << 8)) ^ 0xFFFF;
        v191 = *v50 * v190 + 0x8000;
        v192 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v50), v505));
        v193.i32[1] = v192.i32[1];
        v193.i32[0] = v192.u16[0];
        v194 = vmla_s32(0x800000008000, vdup_n_s32(v190), v193);
        v195 = vand_s8(vsub_s32(v192, vshr_n_u32(vsra_n_u32(v194, v194, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v196.i64[0] = v195.u32[0];
        v196.i64[1] = v195.u32[1];
        v197 = vshlq_u64(v196, v506);
        RGBA64_DpluslD(v28, ((bswap32(v28[2]) >> 16) << 32) | ((bswap32(v28[3]) >> 16) << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), vorrq_s8(v197, vdupq_laneq_s64(v197, 1)).u64[0] | ((WORD1(*v50) - ((WORD1(*v50) * v190 + 0x8000 + ((WORD1(*v50) * v190 + 0x8000) >> 16)) >> 16)) << 16) | (*v50 - ((v191 + HIWORD(v191)) >> 16)));
        goto LABEL_187;
      case 13:
        v348 = v3;
        v120 = v38;
        while (1)
        {
          v349 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v350 = *v120 * v349 + ((*v120 * v349) >> 8) + 1;
              if (v350 < 0x100)
              {
                goto LABEL_350;
              }

              v349 = v350 >> 8;
            }

            v351 = *v50;
            v352 = HIWORD(*v50);
            v353 = (v349 | (v349 << 8)) ^ 0xFFFF;
            v354 = v352 - ((v353 * v352 + 0x8000 + ((v353 * v352 + 0x8000) >> 16)) >> 16);
            if (v352 != (v353 * v352 + 0x8000 + ((v353 * v352 + 0x8000) >> 16)) >> 16)
            {
              v355 = WORD2(v351) * v353 + 0x8000 + ((WORD2(v351) * v353 + 0x8000) >> 16);
              v356 = *v50 - ((*v50 * v353 + 0x8000 + ((*v50 * v353 + 0x8000) >> 16)) >> 16);
              v357 = WORD1(v351) - ((WORD1(v351) * v353 + 0x8000 + ((WORD1(v351) * v353 + 0x8000) >> 16)) >> 16);
              v358 = HIDWORD(v351) - HIWORD(v355);
              v359 = __rev16(v28[3]);
              if (v504)
              {
                v360 = v359;
                if (!v28[3])
                {
                  *v28 = bswap32(v356) >> 16;
                  v28[1] = bswap32(v357) >> 16;
                  v28[2] = bswap32(v358) >> 16;
LABEL_349:
                  v28[3] = bswap32(v354) >> 16;
                  goto LABEL_350;
                }
              }

              else
              {
                v360 = 0xFFFF;
              }

              v361 = PDAmultiplyPDA_15236(((bswap32(v28[2]) >> 16) << 32) | (v359 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v360, v356 | (v357 << 16) | (v354 << 48) | (v358 << 32), v354);
              v354 = HIWORD(v361);
              v362 = bswap32(v361);
              *v28 = HIWORD(v362);
              v28[1] = v362;
              v28[2] = bswap32(HIDWORD(v361)) >> 16;
              goto LABEL_349;
            }
          }

LABEL_350:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v348)
          {
            goto LABEL_450;
          }
        }

      case 14:
        v150 = v3;
        v120 = v38;
        while (1)
        {
          v151 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v152 = *v120 * v151 + ((*v120 * v151) >> 8) + 1;
              if (v152 < 0x100)
              {
                goto LABEL_158;
              }

              v151 = v152 >> 8;
            }

            v153 = *v50;
            v154 = HIWORD(*v50);
            v155 = (v151 | (v151 << 8)) ^ 0xFFFF;
            v156 = v154 - ((v155 * v154 + 0x8000 + ((v155 * v154 + 0x8000) >> 16)) >> 16);
            if (v154 != (v155 * v154 + 0x8000 + ((v155 * v154 + 0x8000) >> 16)) >> 16)
            {
              v157 = WORD2(v153) * v155 + 0x8000 + ((WORD2(v153) * v155 + 0x8000) >> 16);
              v158 = *v50 - ((*v50 * v155 + 0x8000 + ((*v50 * v155 + 0x8000) >> 16)) >> 16);
              v159 = WORD1(v153) - ((WORD1(v153) * v155 + 0x8000 + ((WORD1(v153) * v155 + 0x8000) >> 16)) >> 16);
              v160 = HIDWORD(v153) - HIWORD(v157);
              v161 = __rev16(v28[3]);
              if (v504)
              {
                v162 = v161;
                if (!v28[3])
                {
                  *v28 = bswap32(v158) >> 16;
                  v28[1] = bswap32(v159) >> 16;
                  v28[2] = bswap32(v160) >> 16;
LABEL_157:
                  v28[3] = bswap32(v156) >> 16;
                  goto LABEL_158;
                }
              }

              else
              {
                v162 = 0xFFFF;
              }

              v163 = PDAscreenPDA_15237(((bswap32(v28[2]) >> 16) << 32) | (v161 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v162, v158 | (v159 << 16) | (v156 << 48) | (v160 << 32), v156);
              v156 = HIWORD(v163);
              v164 = bswap32(v163);
              *v28 = HIWORD(v164);
              v28[1] = v164;
              v28[2] = bswap32(HIDWORD(v163)) >> 16;
              goto LABEL_157;
            }
          }

LABEL_158:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v150)
          {
            goto LABEL_450;
          }
        }

      case 15:
        v253 = v3;
        v120 = v38;
        while (1)
        {
          v254 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v255 = *v120 * v254 + ((*v120 * v254) >> 8) + 1;
              if (v255 < 0x100)
              {
                goto LABEL_251;
              }

              v254 = v255 >> 8;
            }

            v256 = *v50;
            v257 = HIWORD(*v50);
            v258 = (v254 | (v254 << 8)) ^ 0xFFFF;
            v259 = v257 - ((v258 * v257 + 0x8000 + ((v258 * v257 + 0x8000) >> 16)) >> 16);
            if (v257 != (v258 * v257 + 0x8000 + ((v258 * v257 + 0x8000) >> 16)) >> 16)
            {
              v260 = WORD2(v256) * v258 + 0x8000 + ((WORD2(v256) * v258 + 0x8000) >> 16);
              v261 = *v50 - ((*v50 * v258 + 0x8000 + ((*v50 * v258 + 0x8000) >> 16)) >> 16);
              v262 = WORD1(v256) - ((WORD1(v256) * v258 + 0x8000 + ((WORD1(v256) * v258 + 0x8000) >> 16)) >> 16);
              v263 = HIDWORD(v256) - HIWORD(v260);
              v264 = __rev16(v28[3]);
              if (v504)
              {
                v265 = v264;
                if (!v28[3])
                {
                  *v28 = bswap32(v261) >> 16;
                  v28[1] = bswap32(v262) >> 16;
                  v28[2] = bswap32(v263) >> 16;
LABEL_250:
                  v28[3] = bswap32(v259) >> 16;
                  goto LABEL_251;
                }
              }

              else
              {
                v265 = 0xFFFF;
              }

              v266 = PDAoverlayPDA_15238(((bswap32(v28[2]) >> 16) << 32) | (v264 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v265, v261 | (v262 << 16) | (v259 << 48) | (v263 << 32), v259);
              v259 = HIWORD(v266);
              v267 = bswap32(v266);
              *v28 = HIWORD(v267);
              v28[1] = v267;
              v28[2] = bswap32(HIDWORD(v266)) >> 16;
              goto LABEL_250;
            }
          }

LABEL_251:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v253)
          {
            goto LABEL_450;
          }
        }

      case 16:
        v135 = v3;
        v120 = v38;
        while (1)
        {
          v136 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v137 = *v120 * v136 + ((*v120 * v136) >> 8) + 1;
              if (v137 < 0x100)
              {
                goto LABEL_144;
              }

              v136 = v137 >> 8;
            }

            v138 = *v50;
            v139 = HIWORD(*v50);
            v140 = (v136 | (v136 << 8)) ^ 0xFFFF;
            v141 = v139 - ((v140 * v139 + 0x8000 + ((v140 * v139 + 0x8000) >> 16)) >> 16);
            if (v139 != (v140 * v139 + 0x8000 + ((v140 * v139 + 0x8000) >> 16)) >> 16)
            {
              v142 = WORD2(v138) * v140 + 0x8000 + ((WORD2(v138) * v140 + 0x8000) >> 16);
              v143 = *v50 - ((*v50 * v140 + 0x8000 + ((*v50 * v140 + 0x8000) >> 16)) >> 16);
              v144 = WORD1(v138) - ((WORD1(v138) * v140 + 0x8000 + ((WORD1(v138) * v140 + 0x8000) >> 16)) >> 16);
              v145 = HIDWORD(v138) - HIWORD(v142);
              v146 = __rev16(v28[3]);
              if (v504)
              {
                v147 = v146;
                if (!v28[3])
                {
                  *v28 = bswap32(v143) >> 16;
                  v28[1] = bswap32(v144) >> 16;
                  v28[2] = bswap32(v145) >> 16;
LABEL_143:
                  v28[3] = bswap32(v141) >> 16;
                  goto LABEL_144;
                }
              }

              else
              {
                v147 = 0xFFFF;
              }

              v148 = PDAdarkenPDA_15240(((bswap32(v28[2]) >> 16) << 32) | (v146 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v147, v143 | (v144 << 16) | (v141 << 48) | (v145 << 32), v141);
              v141 = HIWORD(v148);
              v149 = bswap32(v148);
              *v28 = HIWORD(v149);
              v28[1] = v149;
              v28[2] = bswap32(HIDWORD(v148)) >> 16;
              goto LABEL_143;
            }
          }

LABEL_144:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v135)
          {
            goto LABEL_450;
          }
        }

      case 17:
        v293 = v3;
        v120 = v38;
        while (1)
        {
          v294 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v295 = *v120 * v294 + ((*v120 * v294) >> 8) + 1;
              if (v295 < 0x100)
              {
                goto LABEL_300;
              }

              v294 = v295 >> 8;
            }

            v296 = *v50;
            v297 = HIWORD(*v50);
            v298 = (v294 | (v294 << 8)) ^ 0xFFFF;
            v299 = v297 - ((v298 * v297 + 0x8000 + ((v298 * v297 + 0x8000) >> 16)) >> 16);
            if (v297 != (v298 * v297 + 0x8000 + ((v298 * v297 + 0x8000) >> 16)) >> 16)
            {
              v300 = WORD2(v296) * v298 + 0x8000 + ((WORD2(v296) * v298 + 0x8000) >> 16);
              v301 = *v50 - ((*v50 * v298 + 0x8000 + ((*v50 * v298 + 0x8000) >> 16)) >> 16);
              v302 = WORD1(v296) - ((WORD1(v296) * v298 + 0x8000 + ((WORD1(v296) * v298 + 0x8000) >> 16)) >> 16);
              v303 = HIDWORD(v296) - HIWORD(v300);
              v304 = __rev16(v28[3]);
              if (v504)
              {
                v305 = v304;
                if (!v28[3])
                {
                  *v28 = bswap32(v301) >> 16;
                  v28[1] = bswap32(v302) >> 16;
                  v28[2] = bswap32(v303) >> 16;
LABEL_299:
                  v28[3] = bswap32(v299) >> 16;
                  goto LABEL_300;
                }
              }

              else
              {
                v305 = 0xFFFF;
              }

              v306 = PDAlightenPDA_15239(((bswap32(v28[2]) >> 16) << 32) | (v304 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v305, v301 | (v302 << 16) | (v299 << 48) | (v303 << 32), v299);
              v299 = HIWORD(v306);
              v307 = bswap32(v306);
              *v28 = HIWORD(v307);
              v28[1] = v307;
              v28[2] = bswap32(HIDWORD(v306)) >> 16;
              goto LABEL_299;
            }
          }

LABEL_300:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v293)
          {
            goto LABEL_450;
          }
        }

      case 18:
        v371 = v3;
        v120 = v38;
        while (1)
        {
          v372 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v373 = *v120 * v372 + ((*v120 * v372) >> 8) + 1;
              if (v373 < 0x100)
              {
                goto LABEL_375;
              }

              v372 = v373 >> 8;
            }

            v374 = *v50;
            v375 = HIWORD(*v50);
            v376 = (v372 | (v372 << 8)) ^ 0xFFFF;
            v377 = v375 - ((v376 * v375 + 0x8000 + ((v376 * v375 + 0x8000) >> 16)) >> 16);
            if (v375 != (v376 * v375 + 0x8000 + ((v376 * v375 + 0x8000) >> 16)) >> 16)
            {
              v378 = WORD2(v374) * v376 + 0x8000 + ((WORD2(v374) * v376 + 0x8000) >> 16);
              v379 = *v50 - ((*v50 * v376 + 0x8000 + ((*v50 * v376 + 0x8000) >> 16)) >> 16);
              v380 = WORD1(v374) - ((WORD1(v374) * v376 + 0x8000 + ((WORD1(v374) * v376 + 0x8000) >> 16)) >> 16);
              v381 = HIDWORD(v374) - HIWORD(v378);
              v382 = __rev16(v28[3]);
              if (v504)
              {
                v383 = v382;
                if (!v28[3])
                {
                  *v28 = bswap32(v379) >> 16;
                  v28[1] = bswap32(v380) >> 16;
                  v28[2] = bswap32(v381) >> 16;
LABEL_374:
                  v28[3] = bswap32(v377) >> 16;
                  goto LABEL_375;
                }
              }

              else
              {
                v383 = 0xFFFF;
              }

              v384 = PDAcolordodgePDA_15241(((bswap32(v28[2]) >> 16) << 32) | (v382 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v383, v379 | (v380 << 16) | (v377 << 48) | (v381 << 32), v377);
              v377 = HIWORD(v384);
              v385 = bswap32(v384);
              *v28 = HIWORD(v385);
              v28[1] = v385;
              v28[2] = bswap32(HIDWORD(v384)) >> 16;
              goto LABEL_374;
            }
          }

LABEL_375:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v371)
          {
            goto LABEL_450;
          }
        }

      case 19:
        v421 = v3;
        v120 = v38;
        while (1)
        {
          v422 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v423 = *v120 * v422 + ((*v120 * v422) >> 8) + 1;
              if (v423 < 0x100)
              {
                goto LABEL_421;
              }

              v422 = v423 >> 8;
            }

            v424 = *v50;
            v425 = HIWORD(*v50);
            v426 = (v422 | (v422 << 8)) ^ 0xFFFF;
            v427 = v425 - ((v426 * v425 + 0x8000 + ((v426 * v425 + 0x8000) >> 16)) >> 16);
            if (v425 != (v426 * v425 + 0x8000 + ((v426 * v425 + 0x8000) >> 16)) >> 16)
            {
              v428 = WORD2(v424) * v426 + 0x8000 + ((WORD2(v424) * v426 + 0x8000) >> 16);
              v429 = *v50 - ((*v50 * v426 + 0x8000 + ((*v50 * v426 + 0x8000) >> 16)) >> 16);
              v430 = WORD1(v424) - ((WORD1(v424) * v426 + 0x8000 + ((WORD1(v424) * v426 + 0x8000) >> 16)) >> 16);
              v431 = HIDWORD(v424) - HIWORD(v428);
              v432 = __rev16(v28[3]);
              if (v504)
              {
                v433 = v432;
                if (!v28[3])
                {
                  *v28 = bswap32(v429) >> 16;
                  v28[1] = bswap32(v430) >> 16;
                  v28[2] = bswap32(v431) >> 16;
LABEL_420:
                  v28[3] = bswap32(v427) >> 16;
                  goto LABEL_421;
                }
              }

              else
              {
                v433 = 0xFFFF;
              }

              v434 = PDAcolorburnPDA_15242(((bswap32(v28[2]) >> 16) << 32) | (v432 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v433, v429 | (v430 << 16) | (v427 << 48) | (v431 << 32), v427);
              v427 = HIWORD(v434);
              v435 = bswap32(v434);
              *v28 = HIWORD(v435);
              v28[1] = v435;
              v28[2] = bswap32(HIDWORD(v434)) >> 16;
              goto LABEL_420;
            }
          }

LABEL_421:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v421)
          {
            goto LABEL_450;
          }
        }

      case 20:
        v308 = v3;
        v120 = v38;
        while (1)
        {
          v309 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v310 = *v120 * v309 + ((*v120 * v309) >> 8) + 1;
              if (v310 < 0x100)
              {
                goto LABEL_314;
              }

              v309 = v310 >> 8;
            }

            v311 = *v50;
            v312 = HIWORD(*v50);
            v313 = (v309 | (v309 << 8)) ^ 0xFFFF;
            v314 = v312 - ((v313 * v312 + 0x8000 + ((v313 * v312 + 0x8000) >> 16)) >> 16);
            if (v312 != (v313 * v312 + 0x8000 + ((v313 * v312 + 0x8000) >> 16)) >> 16)
            {
              v315 = WORD2(v311) * v313 + 0x8000 + ((WORD2(v311) * v313 + 0x8000) >> 16);
              v316 = *v50 - ((*v50 * v313 + 0x8000 + ((*v50 * v313 + 0x8000) >> 16)) >> 16);
              v317 = WORD1(v311) - ((WORD1(v311) * v313 + 0x8000 + ((WORD1(v311) * v313 + 0x8000) >> 16)) >> 16);
              v318 = HIDWORD(v311) - HIWORD(v315);
              v319 = __rev16(v28[3]);
              if (v504)
              {
                v320 = v319;
                if (!v28[3])
                {
                  *v28 = bswap32(v316) >> 16;
                  v28[1] = bswap32(v317) >> 16;
                  v28[2] = bswap32(v318) >> 16;
LABEL_313:
                  v28[3] = bswap32(v314) >> 16;
                  goto LABEL_314;
                }
              }

              else
              {
                v320 = 0xFFFF;
              }

              v321 = PDAsoftlightPDA_15244(((bswap32(v28[2]) >> 16) << 32) | (v319 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v320, v316 | (v317 << 16) | (v314 << 48) | (v318 << 32), v314);
              v314 = HIWORD(v321);
              v322 = bswap32(v321);
              *v28 = HIWORD(v322);
              v28[1] = v322;
              v28[2] = bswap32(HIDWORD(v321)) >> 16;
              goto LABEL_313;
            }
          }

LABEL_314:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v308)
          {
            goto LABEL_450;
          }
        }

      case 21:
        v333 = v3;
        v120 = v38;
        while (1)
        {
          v334 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v335 = *v120 * v334 + ((*v120 * v334) >> 8) + 1;
              if (v335 < 0x100)
              {
                goto LABEL_336;
              }

              v334 = v335 >> 8;
            }

            v336 = *v50;
            v337 = HIWORD(*v50);
            v338 = (v334 | (v334 << 8)) ^ 0xFFFF;
            v339 = v337 - ((v338 * v337 + 0x8000 + ((v338 * v337 + 0x8000) >> 16)) >> 16);
            if (v337 != (v338 * v337 + 0x8000 + ((v338 * v337 + 0x8000) >> 16)) >> 16)
            {
              v340 = WORD2(v336) * v338 + 0x8000 + ((WORD2(v336) * v338 + 0x8000) >> 16);
              v341 = *v50 - ((*v50 * v338 + 0x8000 + ((*v50 * v338 + 0x8000) >> 16)) >> 16);
              v342 = WORD1(v336) - ((WORD1(v336) * v338 + 0x8000 + ((WORD1(v336) * v338 + 0x8000) >> 16)) >> 16);
              v343 = HIDWORD(v336) - HIWORD(v340);
              v344 = __rev16(v28[3]);
              if (v504)
              {
                v345 = v344;
                if (!v28[3])
                {
                  *v28 = bswap32(v341) >> 16;
                  v28[1] = bswap32(v342) >> 16;
                  v28[2] = bswap32(v343) >> 16;
LABEL_335:
                  v28[3] = bswap32(v339) >> 16;
                  goto LABEL_336;
                }
              }

              else
              {
                v345 = 0xFFFF;
              }

              v346 = PDAhardlightPDA_15243(((bswap32(v28[2]) >> 16) << 32) | (v344 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v345, v341 | (v342 << 16) | (v339 << 48) | (v343 << 32), v339);
              v339 = HIWORD(v346);
              v347 = bswap32(v346);
              *v28 = HIWORD(v347);
              v28[1] = v347;
              v28[2] = bswap32(HIDWORD(v346)) >> 16;
              goto LABEL_335;
            }
          }

LABEL_336:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v333)
          {
            goto LABEL_450;
          }
        }

      case 22:
        v406 = v3;
        v120 = v38;
        while (1)
        {
          v407 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v408 = *v120 * v407 + ((*v120 * v407) >> 8) + 1;
              if (v408 < 0x100)
              {
                goto LABEL_407;
              }

              v407 = v408 >> 8;
            }

            v409 = *v50;
            v410 = HIWORD(*v50);
            v411 = (v407 | (v407 << 8)) ^ 0xFFFF;
            v412 = v410 - ((v411 * v410 + 0x8000 + ((v411 * v410 + 0x8000) >> 16)) >> 16);
            if (v410 != (v411 * v410 + 0x8000 + ((v411 * v410 + 0x8000) >> 16)) >> 16)
            {
              v413 = WORD2(v409) * v411 + 0x8000 + ((WORD2(v409) * v411 + 0x8000) >> 16);
              v414 = *v50 - ((*v50 * v411 + 0x8000 + ((*v50 * v411 + 0x8000) >> 16)) >> 16);
              v415 = WORD1(v409) - ((WORD1(v409) * v411 + 0x8000 + ((WORD1(v409) * v411 + 0x8000) >> 16)) >> 16);
              v416 = HIDWORD(v409) - HIWORD(v413);
              v417 = __rev16(v28[3]);
              if (v504)
              {
                v418 = v417;
                if (!v28[3])
                {
                  *v28 = bswap32(v414) >> 16;
                  v28[1] = bswap32(v415) >> 16;
                  v28[2] = bswap32(v416) >> 16;
LABEL_406:
                  v28[3] = bswap32(v412) >> 16;
                  goto LABEL_407;
                }
              }

              else
              {
                v418 = 0xFFFF;
              }

              v419 = PDAdifferencePDA_15245(((bswap32(v28[2]) >> 16) << 32) | (v417 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v418, v414 | (v415 << 16) | (v412 << 48) | (v416 << 32), v412);
              v412 = HIWORD(v419);
              v420 = bswap32(v419);
              *v28 = HIWORD(v420);
              v28[1] = v420;
              v28[2] = bswap32(HIDWORD(v419)) >> 16;
              goto LABEL_406;
            }
          }

LABEL_407:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v406)
          {
            goto LABEL_450;
          }
        }

      case 23:
        v436 = v3;
        v120 = v38;
        while (1)
        {
          v437 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v438 = *v120 * v437 + ((*v120 * v437) >> 8) + 1;
              if (v438 < 0x100)
              {
                goto LABEL_435;
              }

              v437 = v438 >> 8;
            }

            v439 = *v50;
            v440 = HIWORD(*v50);
            v441 = (v437 | (v437 << 8)) ^ 0xFFFF;
            v442 = v440 - ((v441 * v440 + 0x8000 + ((v441 * v440 + 0x8000) >> 16)) >> 16);
            if (v440 != (v441 * v440 + 0x8000 + ((v441 * v440 + 0x8000) >> 16)) >> 16)
            {
              v443 = WORD2(v439) * v441 + 0x8000 + ((WORD2(v439) * v441 + 0x8000) >> 16);
              v444 = *v50 - ((*v50 * v441 + 0x8000 + ((*v50 * v441 + 0x8000) >> 16)) >> 16);
              v445 = WORD1(v439) - ((WORD1(v439) * v441 + 0x8000 + ((WORD1(v439) * v441 + 0x8000) >> 16)) >> 16);
              v446 = HIDWORD(v439) - HIWORD(v443);
              v447 = __rev16(v28[3]);
              if (v504)
              {
                v448 = v447;
                if (!v28[3])
                {
                  *v28 = bswap32(v444) >> 16;
                  v28[1] = bswap32(v445) >> 16;
                  v28[2] = bswap32(v446) >> 16;
LABEL_434:
                  v28[3] = bswap32(v442) >> 16;
                  goto LABEL_435;
                }
              }

              else
              {
                v448 = 0xFFFF;
              }

              v449 = PDAexclusionPDA_15246(((bswap32(v28[2]) >> 16) << 32) | (v447 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v448, v444 | (v445 << 16) | (v442 << 48) | (v446 << 32), v442);
              v442 = HIWORD(v449);
              v450 = bswap32(v449);
              *v28 = HIWORD(v450);
              v28[1] = v450;
              v28[2] = bswap32(HIDWORD(v449)) >> 16;
              goto LABEL_434;
            }
          }

LABEL_435:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v436)
          {
            goto LABEL_450;
          }
        }

      case 24:
        v224 = v3;
        v120 = v38;
        while (1)
        {
          v225 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v226 = *v120 * v225 + ((*v120 * v225) >> 8) + 1;
              if (v226 < 0x100)
              {
                goto LABEL_223;
              }

              v225 = v226 >> 8;
            }

            v227 = *v50;
            v228 = HIWORD(*v50);
            v229 = (v225 | (v225 << 8)) ^ 0xFFFF;
            v230 = v228 - ((v229 * v228 + 0x8000 + ((v229 * v228 + 0x8000) >> 16)) >> 16);
            if (v228 != (v229 * v228 + 0x8000 + ((v229 * v228 + 0x8000) >> 16)) >> 16)
            {
              v231 = WORD2(v227) * v229 + 0x8000 + ((WORD2(v227) * v229 + 0x8000) >> 16);
              v232 = *v50 - ((*v50 * v229 + 0x8000 + ((*v50 * v229 + 0x8000) >> 16)) >> 16);
              v233 = WORD1(v227) - ((WORD1(v227) * v229 + 0x8000 + ((WORD1(v227) * v229 + 0x8000) >> 16)) >> 16);
              v234 = HIDWORD(v227) - HIWORD(v231);
              v235 = __rev16(v28[3]);
              if (v504)
              {
                v236 = v235;
                if (!v28[3])
                {
                  *v28 = bswap32(v232) >> 16;
                  v28[1] = bswap32(v233) >> 16;
                  v28[2] = bswap32(v234) >> 16;
LABEL_222:
                  v28[3] = bswap32(v230) >> 16;
                  goto LABEL_223;
                }
              }

              else
              {
                v236 = 0xFFFF;
              }

              v237 = PDAhuePDA_15247(((bswap32(v28[2]) >> 16) << 32) | (v235 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v236, v232 | (v233 << 16) | (v230 << 48) | (v234 << 32), v230);
              v230 = HIWORD(v237);
              v238 = bswap32(v237);
              *v28 = HIWORD(v238);
              v28[1] = v238;
              v28[2] = bswap32(HIDWORD(v237)) >> 16;
              goto LABEL_222;
            }
          }

LABEL_223:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v224)
          {
            goto LABEL_450;
          }
        }

      case 25:
        v209 = v3;
        v120 = v38;
        while (1)
        {
          v210 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v211 = *v120 * v210 + ((*v120 * v210) >> 8) + 1;
              if (v211 < 0x100)
              {
                goto LABEL_209;
              }

              v210 = v211 >> 8;
            }

            v212 = *v50;
            v213 = HIWORD(*v50);
            v214 = (v210 | (v210 << 8)) ^ 0xFFFF;
            v215 = v213 - ((v214 * v213 + 0x8000 + ((v214 * v213 + 0x8000) >> 16)) >> 16);
            if (v213 != (v214 * v213 + 0x8000 + ((v214 * v213 + 0x8000) >> 16)) >> 16)
            {
              v216 = WORD2(v212) * v214 + 0x8000 + ((WORD2(v212) * v214 + 0x8000) >> 16);
              v217 = *v50 - ((*v50 * v214 + 0x8000 + ((*v50 * v214 + 0x8000) >> 16)) >> 16);
              v218 = WORD1(v212) - ((WORD1(v212) * v214 + 0x8000 + ((WORD1(v212) * v214 + 0x8000) >> 16)) >> 16);
              v219 = HIDWORD(v212) - HIWORD(v216);
              v220 = __rev16(v28[3]);
              if (v504)
              {
                v221 = v220;
                if (!v28[3])
                {
                  *v28 = bswap32(v217) >> 16;
                  v28[1] = bswap32(v218) >> 16;
                  v28[2] = bswap32(v219) >> 16;
LABEL_208:
                  v28[3] = bswap32(v215) >> 16;
                  goto LABEL_209;
                }
              }

              else
              {
                v221 = 0xFFFF;
              }

              v222 = PDAsaturationPDA_15248(((bswap32(v28[2]) >> 16) << 32) | (v220 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v221, v217 | (v218 << 16) | (v215 << 48) | (v219 << 32), v215);
              v215 = HIWORD(v222);
              v223 = bswap32(v222);
              *v28 = HIWORD(v223);
              v28[1] = v223;
              v28[2] = bswap32(HIDWORD(v222)) >> 16;
              goto LABEL_208;
            }
          }

LABEL_209:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v209)
          {
            goto LABEL_450;
          }
        }

      case 26:
        v451 = v3;
        v120 = v38;
        while (1)
        {
          v452 = *v51;
          if (*v51)
          {
            if (v38)
            {
              v453 = *v120 * v452 + ((*v120 * v452) >> 8) + 1;
              if (v453 < 0x100)
              {
                goto LABEL_449;
              }

              v452 = v453 >> 8;
            }

            v454 = *v50;
            v455 = HIWORD(*v50);
            v456 = (v452 | (v452 << 8)) ^ 0xFFFF;
            v457 = v455 - ((v456 * v455 + 0x8000 + ((v456 * v455 + 0x8000) >> 16)) >> 16);
            if (v455 != (v456 * v455 + 0x8000 + ((v456 * v455 + 0x8000) >> 16)) >> 16)
            {
              v458 = WORD2(v454) * v456 + 0x8000 + ((WORD2(v454) * v456 + 0x8000) >> 16);
              v459 = *v50 - ((*v50 * v456 + 0x8000 + ((*v50 * v456 + 0x8000) >> 16)) >> 16);
              v460 = WORD1(v454) - ((WORD1(v454) * v456 + 0x8000 + ((WORD1(v454) * v456 + 0x8000) >> 16)) >> 16);
              v461 = HIDWORD(v454) - HIWORD(v458);
              v462 = __rev16(v28[3]);
              if (v504)
              {
                v463 = v462;
                if (!v28[3])
                {
                  *v28 = bswap32(v459) >> 16;
                  v28[1] = bswap32(v460) >> 16;
                  v28[2] = bswap32(v461) >> 16;
LABEL_448:
                  v28[3] = bswap32(v457) >> 16;
                  goto LABEL_449;
                }
              }

              else
              {
                v463 = 0xFFFF;
              }

              v464 = PDAluminosityPDA_15249(v459 | (v460 << 16) | (v457 << 48) | (v461 << 32), v457, ((bswap32(v28[2]) >> 16) << 32) | (v462 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v463);
              v457 = HIWORD(v464);
              v465 = bswap32(v464);
              *v28 = HIWORD(v465);
              v28[1] = v465;
              v28[2] = bswap32(HIDWORD(v464)) >> 16;
              goto LABEL_448;
            }
          }

LABEL_449:
          ++v51;
          v50 += 8;
          v120 += v38 != 0;
          v28 += 4;
          if (!--v451)
          {
            goto LABEL_450;
          }
        }

      case 27:
        v119 = v3;
        v120 = v38;
        break;
      default:
LABEL_468:
        v112 = v502;
        v113 = v503;
        goto LABEL_452;
    }

    break;
  }

  while (1)
  {
    v121 = *v51;
    if (*v51)
    {
      if (v38)
      {
        v122 = *v120 * v121 + ((*v120 * v121) >> 8) + 1;
        if (v122 < 0x100)
        {
          goto LABEL_130;
        }

        v121 = v122 >> 8;
      }

      v123 = *v50;
      v124 = HIWORD(*v50);
      v125 = (v121 | (v121 << 8)) ^ 0xFFFF;
      v126 = v124 - ((v125 * v124 + 0x8000 + ((v125 * v124 + 0x8000) >> 16)) >> 16);
      if (v124 != (v125 * v124 + 0x8000 + ((v125 * v124 + 0x8000) >> 16)) >> 16)
      {
        v127 = WORD2(v123) * v125 + 0x8000 + ((WORD2(v123) * v125 + 0x8000) >> 16);
        v128 = *v50 - ((*v50 * v125 + 0x8000 + ((*v50 * v125 + 0x8000) >> 16)) >> 16);
        v129 = WORD1(v123) - ((WORD1(v123) * v125 + 0x8000 + ((WORD1(v123) * v125 + 0x8000) >> 16)) >> 16);
        v130 = HIDWORD(v123) - HIWORD(v127);
        v131 = __rev16(v28[3]);
        if (v504)
        {
          v132 = v131;
          if (!v28[3])
          {
            *v28 = bswap32(v128) >> 16;
            v28[1] = bswap32(v129) >> 16;
            v28[2] = bswap32(v130) >> 16;
LABEL_129:
            v28[3] = bswap32(v126) >> 16;
            goto LABEL_130;
          }
        }

        else
        {
          v132 = 0xFFFF;
        }

        v133 = PDAluminosityPDA_15249(((bswap32(v28[2]) >> 16) << 32) | (v131 << 48) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16), v132, v128 | (v129 << 16) | (v126 << 48) | (v130 << 32), v126);
        v126 = HIWORD(v133);
        v134 = bswap32(v133);
        *v28 = HIWORD(v134);
        v28[1] = v134;
        v28[2] = bswap32(HIDWORD(v133)) >> 16;
        goto LABEL_129;
      }
    }

LABEL_130:
    ++v51;
    v50 += 8;
    v120 += v38 != 0;
    v28 += 4;
    if (!--v119)
    {
LABEL_450:
      v38 = &v120[v493];
      v28 += 4 * v494;
      v39 = v496;
      goto LABEL_451;
    }
  }
}

_WORD *RGBA64_DMplusDM(_WORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = a2 * a3 + a4 * a5;
  v6 = WORD1(a2) * a3 + WORD1(a4) * a5;
  v7 = WORD2(a2) * a3 + WORD2(a4) * a5;
  v8 = HIWORD(a2) * a3 + HIWORD(a4) * a5;
  if (v5 >= 0xFFFE8000)
  {
    v5 = 4294868992;
  }

  if (v6 >= 0xFFFE8000)
  {
    v6 = 4294868992;
  }

  if (v7 >= 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  if (v8 >= 0xFFFE8000)
  {
    v8 = 4294868992;
  }

  *result = bswap32(((v5 + 0x8000) >> 16) + v5 + 0x8000);
  result[1] = bswap32(((v6 + 0x8000) >> 16) + v6 + 0x8000);
  result[2] = bswap32(((v7 + 0x8000) >> 16) + v7 + 0x8000);
  result[3] = bswap32(((v8 + 0x8000) >> 16) + v8 + 0x8000);
  return result;
}

_WORD *RGBA64_DplusDM(_WORD *result, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = HIWORD(a3) * a4 + 0x8000;
  *result = bswap32(a2 + ((((a3 * a4 + 0x8000) >> 16) + a3 * a4 + 0x8000) >> 16)) >> 16;
  result[1] = bswap32(((((WORD1(a3) * a4 + 0x8000) >> 16) + WORD1(a3) * a4 + 0x8000) >> 16) + WORD1(a2)) >> 16;
  result[2] = bswap32(HIDWORD(a2) + ((((WORD2(a3) * a4 + 0x8000) >> 16) + WORD2(a3) * a4 + 0x8000) >> 16)) >> 16;
  result[3] = bswap32(HIWORD(a2) + (((v4 >> 16) + v4) >> 16)) >> 16;
  return result;
}

_WORD *RGBA64_DAplusdDA(_WORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = vshlq_u64(vdupq_n_s64(a2), xmmword_18439CD80);
  v6 = vshlq_u64(vdupq_n_s64(a4), xmmword_18439CD80);
  v7 = a3 - a2;
  if (a3 < a2)
  {
    v7 = 0;
  }

  v8 = a5 - a4;
  if (a5 < a4)
  {
    v8 = 0;
  }

  v9 = v8 + v7;
  v10 = a5 + a3;
  if (v9 >= 0xFFFF)
  {
    v11 = 0xFFFF;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 - v11;
  v13.i64[0] = 0xFFFFLL;
  v13.i64[1] = 0xFFFFLL;
  v14 = vaddq_s64(vqsubq_u64(vdupq_n_s64(a5), vandq_s8(v6, v13)), vqsubq_u64(vdupq_n_s64(a3), vandq_s8(v5, v13)));
  v15 = v14.i32[2];
  if (v14.i64[1] >= 0xFFFFuLL)
  {
    v15 = 0xFFFF;
  }

  v16 = vdup_n_s32(v10);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcgtq_u64(vandq_s8(v17, v13), v14);
  v19 = v14.i32[0];
  if (v14.i64[0] >= 0xFFFFuLL)
  {
    v19 = 0xFFFF;
  }

  v20 = v10 - v15;
  v21 = vmovn_s64(v18);
  v22 = v10 - v19;
  if (v9 >= v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v12;
  }

  *result = bswap32(v23) >> 16;
  if ((v21.i8[4] & 1) == 0)
  {
    v20 = 0;
  }

  result[1] = bswap32(v20) >> 16;
  if (v21.i8[0])
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  result[2] = bswap32(v24) >> 16;
  result[3] = bswap32(v10) >> 16;
  return result;
}

_WORD *RGBA64_DpluslD(_WORD *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    LODWORD(v3) = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    LODWORD(v4) = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    LODWORD(v5) = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    LODWORD(v6) = 0xFFFF;
  }

  *result = bswap32(v3) >> 16;
  result[1] = bswap32(v4) >> 16;
  result[2] = bswap32(v5) >> 16;
  result[3] = bswap32(v6) >> 16;
  return result;
}

uint64_t RGBA64_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
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
  v24 = 0u;
  memset(v41, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v24, v41) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a3;
  *(&v24 + 1) = __PAIR64__(*v6, *a3);
  if (v10 == 269497224)
  {
    if (!v35 && (~DWORD1(v25) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v25) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      RGBA64_mark(a1);
      return 1;
    }

    *&v24 = rgba64_sample_RGBA64;
    goto LABEL_45;
  }

  v11 = SAMPLEINDEX(v10);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > 0xB)
  {
    if (v11 <= 0x13)
    {
      if ((v11 - 14) >= 4)
      {
        if (v11 == 13 || v11 == 12)
        {
          v13 = *(a2 + 12);
          if (!v13)
          {
            v12 = 0;
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (v11 > 6)
  {
    switch(v11)
    {
      case 7:
        v12 = 0;
        LODWORD(v13) = 32;
        break;
      case 9:
        v12 = 0;
        LODWORD(v13) = 40;
        break;
      case 8:
        v12 = 0;
        LODWORD(v13) = 8;
        goto LABEL_36;
      default:
        goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v11 == 2)
  {
    if (!*(a2 + 12))
    {
      v12 = 0;
      LODWORD(v13) = 16;
      goto LABEL_36;
    }

LABEL_35:
    LODWORD(v13) = 255;
    v12 = 1;
    goto LABEL_36;
  }

  if (v11 != 5)
  {
    if (v11 != 6)
    {
      goto LABEL_35;
    }

LABEL_25:
    v12 = 0;
    LODWORD(v13) = 0;
    goto LABEL_36;
  }

  v12 = 0;
  LODWORD(v13) = 24;
LABEL_36:
  *&v24 = *&RGB16_image_sample[2 * v11 + 2];
  if (!v24)
  {
    if ((HIWORD(*a3) & 0x3Fu) <= 8)
    {
      *&v24 = *&RGB8_image_sample[2 * v11 + 2];
      if (v24)
      {
        v14 = 134755224;
        v15 = 4;
LABEL_43:
        LODWORD(v25) = v15;
        goto LABEL_44;
      }
    }

    *&v24 = *&RGBF_image_sample[2 * v11 + 2];
    if (v24)
    {
      v14 = 538981289;
      v15 = 16;
      goto LABEL_43;
    }

    return 0xFFFFFFFFLL;
  }

  v14 = 269497256;
LABEL_44:
  DWORD2(v24) = v14;
  if ((v12 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v25) & 7) != 3 || a2[2] != 5 && a2[2])
  {
    goto LABEL_45;
  }

  if (v11 <= 0xB)
  {
    HIDWORD(v17) = v13;
    LODWORD(v17) = v13;
    v16 = v17 >> 3;
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_RGB24;
        goto LABEL_86;
      }

      if (v16 == 4)
      {
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_rgb32;
        goto LABEL_86;
      }

      if (v16 != 5)
      {
        goto LABEL_45;
      }

      *(&v24 + 2) = *a3;
      v19 = RGBA64_image_mark_rgb32;
    }

    else
    {
      if (!v16)
      {
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_RGB32;
        goto LABEL_86;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          *(&v24 + 2) = *a3;
          v18 = RGBA64_image_mark_W8;
LABEL_86:
          v20 = v18;
          v21 = a2;
          v22 = v8;
          v23 = 0;
          goto LABEL_87;
        }

        goto LABEL_45;
      }

      *(&v24 + 2) = *a3;
      v19 = RGBA64_image_mark_RGB32;
    }

    v20 = v19;
    v21 = a2;
    v22 = v8;
    v23 = 8;
LABEL_87:
    rgba64_image_mark_image(v21, &v24, v22, v23, v20);
    return 1;
  }

  if (v11 <= 0x13)
  {
    if (v11 <= 14)
    {
      if (v11 == 12)
      {
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_W16;
      }

      else
      {
        *(&v24 + 2) = *a3;
        if (v11 == 13)
        {
          v18 = RGBA64_image_mark_w16;
        }

        else
        {
          v18 = RGBA64_image_mark_RGB48;
        }
      }

      goto LABEL_86;
    }

    switch(v11)
    {
      case 15:
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_rgb48;
        goto LABEL_86;
      case 16:
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_RGBA64;
        goto LABEL_86;
      case 17:
        *(&v24 + 2) = *a3;
        v18 = RGBA64_image_mark_rgba64;
        goto LABEL_86;
    }
  }

LABEL_45:
  RGBA64_image_mark(a2, &v24, v8);
  return 1;
}

uint64_t RGBA64_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v694 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  if (*(v2 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v6 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v4;
  v8 = *(v4 + 96);
  v9 = *(v4 + 48);
  v10 = *(*(v5 + 7) + 16 * *v4 + 8 * (v8 == 0) + 4 * (v9 == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v4 + 4);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v4 + 8);
  if (v14 < 1)
  {
    return 0;
  }

  v15 = *(v4 + 136);
  if ((v7 & 0xFF0000) != 0x50000 && v15)
  {
    v16 = *(v4 + 128);
    if ((v16 | 8) == 8)
    {
      if ((*v4 & 0xFF00) == 0x400)
      {
        RGBA64_mark_constmask(v4, v10);
      }

      else if ((v6 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
      {
        rgba16_template_image_mask_method(*v5, v4, v10);
      }

      else
      {
        RGBA64_mark_pixelmask(v4, v10);
      }
    }

    else
    {
      v32 = *(v4 + 112);
      v33 = *(v4 + 116);
      v34 = (v32 + 15) & 0xFFFFFFF0;
      v35 = v34 * v33;
      if (v35 <= 4096)
      {
        v37 = v693;
      }

      else
      {
        v36 = malloc_type_malloc(v35, 0x97CEE3C3uLL);
        if (!v36)
        {
          return 1;
        }

        v37 = v36;
        v15 = *(v4 + 136);
        v16 = *(v4 + 128);
      }

      CGSConvertBitsToMask(v15, *(v4 + 124), v37, v34, v32, v33, v16);
      v41 = *(v4 + 112);
      v689 = *(v4 + 96);
      v690 = v41;
      v42 = *(v4 + 144);
      v691 = *(v4 + 128);
      v692 = v42;
      v43 = *(v4 + 48);
      v685 = *(v4 + 32);
      v686 = v43;
      v44 = *(v4 + 80);
      v687 = *(v4 + 64);
      v688 = v44;
      v45 = *(v4 + 16);
      *v683 = *v4;
      v684 = v45;
      HIDWORD(v690) = (v32 + 15) & 0xFFFFFFF0;
      *(&v691 + 1) = v37;
      if (BYTE1(v683[0]) << 8 == 1024)
      {
        RGBA64_mark_constmask(v683, v10);
      }

      else
      {
        RGBA64_mark_pixelmask(v683, v10);
      }

      if (v37 != v693)
      {
        v46 = v37;
        goto LABEL_978;
      }
    }

    return 1;
  }

  v649 = v4;
  v660 = *(*(v5 + 7) + 16 * *v4 + 8 * (v8 == 0) + 4 * (v9 == 0));
  v681 = *(v4 + 48);
  if (BYTE1(v7) == 1)
  {
    if ((v6 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
    {
      rgba16_template_image_mark_method(*v5, v4, v10);
      return 1;
    }

LABEL_24:
    v693[0] = *(v4 + 4);
    v683[0] = v14;
    v25 = *(v4 + 88);
    v26 = *(v4 + 28) >> 3;
    v27 = *(v4 + 40) + 8 * v26 * *(v4 + 16) + 8 * *(v4 + 12);
    v28 = *(v4 + 76) >> 3;
    v647 = *(v4 + 60);
    v648 = *(v4 + 56);
    if ((v7 & 0xFF00) != 0x100)
    {
      LODWORD(v663) = *(v4 + 64);
      v650 = *(v4 + 68);
      v676 = v25 + 8 * v28 * v650;
      v678 = *(v4 + 76) >> 3;
      v38 = v8 != 0;
      if (v15)
      {
        v39 = v12;
        v31 = 1;
        v680 = *(v4 + 88);
        v40 = v680;
LABEL_55:
        shape_enum_clip_alloc(v1, v2, v15, v31, v26, 1, *(v4 + 104), *(v4 + 108), v39, v14);
        v53 = v52;
        if (!v52)
        {
          return 1;
        }

        while (2)
        {
          if (!shape_enum_clip_next(v53, &v682 + 1, &v682, v693, v683))
          {
            v46 = v53;
            goto LABEL_978;
          }

          v662 = v53;
          if (v676)
          {
            v49 = (v27 + 8 * v26 * v682 + 8 * SHIDWORD(v682));
            v54 = v25 + 8 * v678 * ((v682 + *(v4 + 60)) % v650);
            v48 = (v54 + 8 * ((HIDWORD(v682) + *(v4 + 56)) % v663));
            v40 = v54 + 8 * v663;
            v680 = v48;
            v673 = v693[0];
            v55 = v693[0];
            v647 = (v682 + *(v4 + 60)) % v650;
            v648 = (HIDWORD(v682) + *(v4 + 56)) % v663;
          }

          else
          {
            v673 = v693[0];
            v55 = v693[0] * v31;
            v49 = (v27 + 8 * v26 * v682 + 8 * HIDWORD(v682) * v31);
            v48 = (v25 + 8 * v682 * v663 + 8 * HIDWORD(v682) * v31);
            v678 = v663 - v693[0] * v31;
          }

          v671 = v26 - v55;
LABEL_64:
          switch(v10)
          {
            case 0:
              v56 = &v49[-4 * v673 + 4];
              v57 = v671 + v673;
              if (v31 < 0)
              {
                v57 = v671 - v673;
              }

              else
              {
                v56 = v49;
              }

              v58 = (v56 + 8 * ((v57 * (v683[0] - 1)) & (v57 >> 63)));
              if (v57 < 0)
              {
                v57 = -v57;
              }

              CGBlt_fillBytes(8 * v673, v683[0], 0, v58, 8 * v57);
              goto LABEL_668;
            case 1:
              v254 = *(v4 + 1);
              if (v254 == 2)
              {
                if (v673 < 4 || (8 * v663) > 0x40 || (v3.i32[0] = 8 * v663, v456 = vcnt_s8(v3), v456.i16[0] = vaddlv_u8(v456), v456.i32[0] > 1u))
                {
LABEL_675:
                  v457 = v683[0];
                  if (v681 == 0 || v38)
                  {
                    do
                    {
                      v458 = v673;
                      do
                      {
                        *v49 = *v48;
                        v459 = &v48[4 * v31];
                        if (v459 >= v40)
                        {
                          v460 = -v663;
                        }

                        else
                        {
                          v460 = 0;
                        }

                        v48 = &v459[4 * v460];
                        v49 += 4 * v31;
                        --v458;
                      }

                      while (v458);
                      v49 += 4 * v671;
                      v461 = v680;
                      v462 = &v680[4 * v678];
                      if (v462 >= v676)
                      {
                        v463 = -(v678 * v650);
                      }

                      else
                      {
                        v463 = 0;
                      }

                      v464 = &v462[4 * v463];
                      v465 = v40 + 8 * v463 + 8 * v678;
                      if (v676)
                      {
                        v40 = v465;
                        v461 = v464;
                      }

                      v680 = v461;
                      if (v676)
                      {
                        v48 = v464;
                      }

                      else
                      {
                        v48 += 4 * v678;
                      }

                      --v457;
                    }

                    while (v457);
                  }

                  else
                  {
                    do
                    {
                      v466 = v673;
                      do
                      {
                        v467 = v48[2];
                        *v49 = *v48;
                        v49[2] = v467;
                        v49[3] = -1;
                        v468 = &v48[4 * v31];
                        if (v468 >= v40)
                        {
                          v469 = -v663;
                        }

                        else
                        {
                          v469 = 0;
                        }

                        v48 = &v468[4 * v469];
                        v49 += 4 * v31;
                        --v466;
                      }

                      while (v466);
                      v49 += 4 * v671;
                      v470 = v680;
                      v471 = &v680[4 * v678];
                      if (v471 >= v676)
                      {
                        v472 = -(v678 * v650);
                      }

                      else
                      {
                        v472 = 0;
                      }

                      v473 = &v471[4 * v472];
                      v474 = v40 + 8 * v472 + 8 * v678;
                      if (v676)
                      {
                        v40 = v474;
                        v470 = v473;
                      }

                      v680 = v470;
                      if (v676)
                      {
                        v48 = v473;
                      }

                      else
                      {
                        v48 += 4 * v678;
                      }

                      --v457;
                    }

                    while (v457);
                  }

                  goto LABEL_721;
                }

                CGSFillDRAM64(v49, 8 * (v673 + v671), 8 * v673, v683[0], v25, 8 * v678, 8 * v663, v650, 8 * v648, v647);
              }

              else
              {
                if (v254 != 1)
                {
                  goto LABEL_675;
                }

                if (v681 != 0 && !v38)
                {
                  v475 = v683[0];
                  do
                  {
                    v476 = v673;
                    do
                    {
                      v477 = v48[2];
                      *v49 = *v48;
                      v49[2] = v477;
                      v49[3] = -1;
                      v478 = &v48[4 * v31];
                      if (v478 >= v40)
                      {
                        v479 = -v663;
                      }

                      else
                      {
                        v479 = 0;
                      }

                      v48 = &v478[4 * v479];
                      v49 += 4 * v31;
                      --v476;
                    }

                    while (v476);
                    v49 += 4 * v671;
                    v480 = v680;
                    v481 = &v680[4 * v678];
                    if (v481 >= v676)
                    {
                      v482 = -(v678 * v650);
                    }

                    else
                    {
                      v482 = 0;
                    }

                    v483 = &v481[4 * v482];
                    v484 = v40 + 8 * v482 + 8 * v678;
                    if (v676)
                    {
                      v40 = v484;
                      v480 = v483;
                    }

                    v680 = v480;
                    if (v676)
                    {
                      v48 = v483;
                    }

                    else
                    {
                      v48 += 4 * v678;
                    }

                    --v475;
                  }

                  while (v475);
                  goto LABEL_721;
                }

                if ((v31 & 0x80000000) != 0)
                {
                  v255 = v678 - v673;
                  v485 = 8 * v673 - 8;
                  v48 = (v48 - v485);
                  v256 = v671 - v673;
                  v49 = (v49 - v485);
                }

                else
                {
                  v255 = v678 + v673;
                  v256 = v671 + v673;
                }

                v486 = v683[0] - 1;
                v487 = &v48[4 * ((v255 * v486) & (v255 >> 63))];
                if (v255 >= 0)
                {
                  v488 = v255;
                }

                else
                {
                  v488 = -v255;
                }

                if (v256 >= 0)
                {
                  LODWORD(v489) = v256;
                }

                else
                {
                  v489 = -v256;
                }

                v678 = v488;
                CGBlt_copyBytes(8 * v673, v683[0], v487, &v49[4 * ((v256 * v486) & (v256 >> 63))], 8 * v488, 8 * v489);
              }

LABEL_668:
              v53 = v662;
              if (!v662)
              {
                return 1;
              }

              v682 = 0;
              continue;
            case 2:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v199 = v683[0];
              do
              {
                v668 = v199;
                v200 = v673;
                do
                {
                  v201 = bswap32(v48[3]) >> 16;
                  if (v201)
                  {
                    if (v201 == 0xFFFF)
                    {
                      *v49 = *v48;
                    }

                    else
                    {
                      RGBA64_DplusDM(v49, (v201 << 48) | ((bswap32(v48[2]) >> 16) << 32) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v201 ^ 0xFFFF);
                    }
                  }

                  v202 = &v48[4 * v31];
                  if (v202 >= v40)
                  {
                    v203 = -v663;
                  }

                  else
                  {
                    v203 = 0;
                  }

                  v48 = &v202[4 * v203];
                  v49 += 4 * v31;
                  --v200;
                }

                while (v200);
                v49 += 4 * v671;
                v204 = v680;
                v205 = &v680[4 * v678];
                v206 = -(v678 * v650);
                if (v205 < v676)
                {
                  v206 = 0;
                }

                v207 = &v205[4 * v206];
                v208 = v40 + 8 * v206 + 8 * v678;
                if (v676)
                {
                  v40 = v208;
                  v204 = v207;
                }

                v680 = v204;
                if (v676)
                {
                  v48 = v207;
                }

                else
                {
                  v48 += 4 * v678;
                }

                v199 = v668 - 1;
              }

              while (v668 != 1);
              goto LABEL_547;
            case 3:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v224 = v683[0];
              do
              {
                v669 = v224;
                v225 = v673;
                do
                {
                  v226 = bswap32(v49[3]) >> 16;
                  if (v226 == 0xFFFF)
                  {
                    v227 = v48[2];
                    v228 = bswap32(v48[3]) >> 16;
                    if (!v38)
                    {
                      v228 = -1;
                    }

                    *v49 = *v48;
                    v49[2] = v227;
                    v49[3] = bswap32(v228) >> 16;
                  }

                  else if (v226)
                  {
                    v229 = bswap32(v48[3]) >> 16;
                    v230 = ((bswap32(v48[2]) >> 16) << 32) | (v229 << 48);
                    v231 = bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
                    if (v38)
                    {
                      v232 = v229;
                    }

                    else
                    {
                      v232 = -1;
                    }

                    RGBA64_DAM(v49, v230 | v231, v232, v226);
                  }

                  else
                  {
                    *v49 = 0;
                  }

                  v233 = &v48[4 * v31];
                  if (v233 >= v40)
                  {
                    v234 = -v663;
                  }

                  else
                  {
                    v234 = 0;
                  }

                  v48 = &v233[4 * v234];
                  v49 += 4 * v31;
                  --v225;
                }

                while (v225);
                v49 += 4 * v671;
                v235 = v680;
                v236 = &v680[4 * v678];
                v237 = -(v678 * v650);
                if (v236 < v676)
                {
                  v237 = 0;
                }

                v238 = &v236[4 * v237];
                v239 = v40 + 8 * v237 + 8 * v678;
                if (v676)
                {
                  v40 = v239;
                  v235 = v238;
                }

                v680 = v235;
                if (v676)
                {
                  v48 = v238;
                }

                else
                {
                  v48 += 4 * v678;
                }

                v224 = v669 - 1;
              }

              while (v669 != 1);
              goto LABEL_547;
            case 4:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v121 = v683[0];
              do
              {
                v667 = v121;
                v122 = v673;
                do
                {
                  v123 = bswap32(~v49[3]) >> 16;
                  if (v123 == 0xFFFF)
                  {
                    v124 = v48[2];
                    v125 = bswap32(v48[3]) >> 16;
                    if (!v38)
                    {
                      v125 = -1;
                    }

                    *v49 = *v48;
                    v49[2] = v124;
                    v49[3] = bswap32(v125) >> 16;
                  }

                  else if (v123)
                  {
                    v126 = bswap32(v48[3]) >> 16;
                    v127 = ((bswap32(v48[2]) >> 16) << 32) | (v126 << 48);
                    v128 = bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
                    if (v38)
                    {
                      v129 = v126;
                    }

                    else
                    {
                      v129 = -1;
                    }

                    RGBA64_DAM(v49, v127 | v128, v129, v123);
                  }

                  else
                  {
                    *v49 = 0;
                  }

                  v130 = &v48[4 * v31];
                  if (v130 >= v40)
                  {
                    v131 = -v663;
                  }

                  else
                  {
                    v131 = 0;
                  }

                  v48 = &v130[4 * v131];
                  v49 += 4 * v31;
                  --v122;
                }

                while (v122);
                v49 += 4 * v671;
                v132 = v680;
                v133 = &v680[4 * v678];
                v134 = -(v678 * v650);
                if (v133 < v676)
                {
                  v134 = 0;
                }

                v135 = &v133[4 * v134];
                v136 = v40 + 8 * v134 + 8 * v678;
                if (v676)
                {
                  v40 = v136;
                  v132 = v135;
                }

                v680 = v132;
                if (v676)
                {
                  v48 = v135;
                }

                else
                {
                  v48 += 4 * v678;
                }

                v121 = v667 - 1;
              }

              while (v667 != 1);
              goto LABEL_547;
            case 5:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v287 = v31;
              v288 = v31;
              v289 = v683[0];
              v290 = 8 * v287;
              do
              {
                v291 = v673;
                do
                {
                  v292 = bswap32(v48[3]) >> 16;
                  v293 = bswap32(v49[3]) >> 16;
                  RGBA64_DMplusDM(v49, ((bswap32(v48[2]) >> 16) << 32) | (v292 << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v293, (v293 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v292 ^ 0xFFFF);
                  v294 = &v48[4 * v288];
                  if (v294 >= v40)
                  {
                    v295 = -v663;
                  }

                  else
                  {
                    v295 = 0;
                  }

                  v48 = &v294[4 * v295];
                  v49 = (v49 + v290);
                  --v291;
                }

                while (v291);
                v296 = -(v678 * v650);
                v49 += 4 * v671;
                v297 = v680;
                v298 = &v680[4 * v678];
                if (v298 < v676)
                {
                  v296 = 0;
                }

                v299 = &v298[4 * v296];
                v300 = v40 + 8 * v296 + 8 * v678;
                if (v676)
                {
                  v40 = v300;
                  v297 = v299;
                }

                v680 = v297;
                if (v676)
                {
                  v48 = v299;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v289;
              }

              while (v289);
              goto LABEL_547;
            case 6:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v331 = v31;
              v332 = v683[0];
              v333 = 8 * v31;
              do
              {
                v670 = v332;
                v334 = v673;
                do
                {
                  v335 = bswap32(v49[3]);
                  if (HIWORD(v335) != 0xFFFF)
                  {
                    if (~HIWORD(v335) == 0xFFFF)
                    {
                      v336 = v48[2];
                      v337 = bswap32(v48[3]) >> 16;
                      if (!v38)
                      {
                        v337 = -1;
                      }

                      *v49 = *v48;
                      v49[2] = v336;
                      v49[3] = bswap32(v337) >> 16;
                    }

                    else
                    {
                      v338 = HIWORD(v335);
                      v339 = ~HIWORD(v335);
                      v340 = (v338 << 48) | ((bswap32(v49[2]) >> 16) << 32);
                      v341 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                      v342 = bswap32(v48[3]) >> 16;
                      v343 = ((bswap32(v48[2]) >> 16) << 32) | (v342 << 48);
                      v344 = bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
                      if (v38)
                      {
                        v345 = v342;
                      }

                      else
                      {
                        v345 = -1;
                      }

                      RGBA64_DplusDAM(v49, v340 | v341, v343 | v344, v345, v339);
                    }
                  }

                  v346 = &v48[4 * v331];
                  if (v346 >= v40)
                  {
                    v347 = -v663;
                  }

                  else
                  {
                    v347 = 0;
                  }

                  v48 = &v346[4 * v347];
                  v49 = (v49 + v333);
                  --v334;
                }

                while (v334);
                v49 += 4 * v671;
                v348 = v680;
                v349 = &v680[4 * v678];
                v350 = -(v678 * v650);
                if (v349 < v676)
                {
                  v350 = 0;
                }

                v351 = &v349[4 * v350];
                v352 = v40 + 8 * v350 + 8 * v678;
                if (v676)
                {
                  v40 = v352;
                  v348 = v351;
                }

                v680 = v348;
                if (v676)
                {
                  v48 = v351;
                }

                else
                {
                  v48 += 4 * v678;
                }

                v332 = v670 - 1;
              }

              while (v670 != 1);
              goto LABEL_547;
            case 7:
              v240 = v683[0];
              do
              {
                v241 = v673;
                do
                {
                  v242 = bswap32(v48[3]) >> 16;
                  if (v242 != 0xFFFF)
                  {
                    if (v242)
                    {
                      v243 = bswap32(v49[1] | (*v49 << 16));
                      v244.i32[0] = v243;
                      v244.i32[1] = vshr_n_u32(vdup_n_s32(v243), 0x10uLL).i32[1];
                      v244.i64[1] = __PAIR64__(bswap32(v49[3]) >> 16, bswap32(v49[2]) >> 16);
                      v245.i64[0] = 0x800000008000;
                      v245.i64[1] = 0x800000008000;
                      v246 = vmlaq_s32(v245, v244, vmovl_u16(vdup_n_s16(~v242)));
                      v244.i32[0] = v243;
                      *v49 = vrev16_s8(vmovn_s32(vsubq_s32(v244, vshrq_n_u32(vsraq_n_u32(v246, v246, 0x10uLL), 0x10uLL))));
                    }

                    else
                    {
                      *v49 = 0;
                    }
                  }

                  v247 = &v48[4 * v31];
                  if (v247 >= v40)
                  {
                    v248 = -v663;
                  }

                  else
                  {
                    v248 = 0;
                  }

                  v48 = &v247[4 * v248];
                  v49 += 4 * v31;
                  --v241;
                }

                while (v241);
                v49 += 4 * v671;
                v249 = v680;
                v250 = &v680[4 * v678];
                if (v250 >= v676)
                {
                  v251 = -(v678 * v650);
                }

                else
                {
                  v251 = 0;
                }

                v252 = &v250[4 * v251];
                v253 = v40 + 8 * v251 + 8 * v678;
                if (v676)
                {
                  v40 = v253;
                  v249 = v252;
                }

                v680 = v249;
                if (v676)
                {
                  v48 = v252;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v240;
              }

              while (v240);
              goto LABEL_721;
            case 8:
              v382 = v683[0];
              do
              {
                v383 = v673;
                do
                {
                  v384 = bswap32(~v48[3]) >> 16;
                  if (v384 != 0xFFFF)
                  {
                    if (v384)
                    {
                      v385 = bswap32(v49[1] | (*v49 << 16));
                      v386.i32[0] = v385;
                      v386.i32[1] = vshr_n_u32(vdup_n_s32(v385), 0x10uLL).i32[1];
                      v386.i64[1] = __PAIR64__(bswap32(v49[3]) >> 16, bswap32(v49[2]) >> 16);
                      v387.i64[0] = 0x800000008000;
                      v387.i64[1] = 0x800000008000;
                      v388 = vmlaq_s32(v387, v386, vmovl_u16(vdup_n_s16(~v384)));
                      v386.i32[0] = v385;
                      *v49 = vrev16_s8(vmovn_s32(vsubq_s32(v386, vshrq_n_u32(vsraq_n_u32(v388, v388, 0x10uLL), 0x10uLL))));
                    }

                    else
                    {
                      *v49 = 0;
                    }
                  }

                  v389 = &v48[4 * v31];
                  if (v389 >= v40)
                  {
                    v390 = -v663;
                  }

                  else
                  {
                    v390 = 0;
                  }

                  v48 = &v389[4 * v390];
                  v49 += 4 * v31;
                  --v383;
                }

                while (v383);
                v49 += 4 * v671;
                v391 = v680;
                v392 = &v680[4 * v678];
                if (v392 >= v676)
                {
                  v393 = -(v678 * v650);
                }

                else
                {
                  v393 = 0;
                }

                v394 = &v392[4 * v393];
                v395 = v40 + 8 * v393 + 8 * v678;
                if (v676)
                {
                  v40 = v395;
                  v391 = v394;
                }

                v680 = v391;
                if (v676)
                {
                  v48 = v394;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v382;
              }

              while (v382);
LABEL_721:
              v683[0] = 0;
              goto LABEL_668;
            case 9:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v155 = v31;
              v156 = v31;
              v157 = v683[0];
              v158 = 8 * v155;
              do
              {
                v159 = v673;
                do
                {
                  v160 = bswap32(v48[3]) >> 16;
                  v161 = bswap32(v49[3]) >> 16;
                  RGBA64_DMplusDM(v49, ((bswap32(v48[2]) >> 16) << 32) | (v160 << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v161 ^ 0xFFFF, (v161 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v160);
                  v162 = &v48[4 * v156];
                  if (v162 >= v40)
                  {
                    v163 = -v663;
                  }

                  else
                  {
                    v163 = 0;
                  }

                  v48 = &v162[4 * v163];
                  v49 = (v49 + v158);
                  --v159;
                }

                while (v159);
                v164 = -(v678 * v650);
                v49 += 4 * v671;
                v165 = v680;
                v166 = &v680[4 * v678];
                if (v166 < v676)
                {
                  v164 = 0;
                }

                v167 = &v166[4 * v164];
                v168 = v40 + 8 * v164 + 8 * v678;
                if (v676)
                {
                  v40 = v168;
                  v165 = v167;
                }

                v680 = v165;
                if (v676)
                {
                  v48 = v167;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v157;
              }

              while (v157);
              goto LABEL_547;
            case 10:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v368 = v31;
              v369 = v31;
              v370 = v683[0];
              v371 = 8 * v368;
              do
              {
                v372 = v673;
                do
                {
                  v373 = bswap32(v48[3]) >> 16;
                  v374 = bswap32(v49[3]) >> 16;
                  RGBA64_DMplusDM(v49, ((bswap32(v48[2]) >> 16) << 32) | (v373 << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v374 ^ 0xFFFF, (v374 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v373 ^ 0xFFFF);
                  v375 = &v48[4 * v369];
                  if (v375 >= v40)
                  {
                    v376 = -v663;
                  }

                  else
                  {
                    v376 = 0;
                  }

                  v48 = &v375[4 * v376];
                  v49 = (v49 + v371);
                  --v372;
                }

                while (v372);
                v377 = -(v678 * v650);
                v49 += 4 * v671;
                v378 = v680;
                v379 = &v680[4 * v678];
                if (v379 < v676)
                {
                  v377 = 0;
                }

                v380 = &v379[4 * v377];
                v381 = v40 + 8 * v377 + 8 * v678;
                if (v676)
                {
                  v40 = v381;
                  v378 = v380;
                }

                v680 = v378;
                if (v676)
                {
                  v48 = v380;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v370;
              }

              while (v370);
              goto LABEL_547;
            case 11:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v104 = v683[0];
              do
              {
                v666 = v104;
                v105 = v673;
                do
                {
                  v106 = bswap32(v49[3]) >> 16;
                  v107 = ((bswap32(v49[2]) >> 16) << 32) | (v106 << 48);
                  v108 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                  if (v681)
                  {
                    v109 = v106;
                  }

                  else
                  {
                    v109 = -1;
                  }

                  v110 = bswap32(v48[3]) >> 16;
                  v111 = ((bswap32(v48[2]) >> 16) << 32) | (v110 << 48);
                  v112 = bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
                  if (v38)
                  {
                    v113 = v110;
                  }

                  else
                  {
                    v113 = -1;
                  }

                  RGBA64_DAplusdDA(v49, v107 | v108, v109, v111 | v112, v113);
                  v114 = &v48[4 * v31];
                  if (v114 >= v40)
                  {
                    v115 = -v663;
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v48 = &v114[4 * v115];
                  v49 += 4 * v31;
                  --v105;
                }

                while (v105);
                v49 += 4 * v671;
                v116 = v680;
                v117 = &v680[4 * v678];
                v118 = -(v678 * v650);
                if (v117 < v676)
                {
                  v118 = 0;
                }

                v119 = &v117[4 * v118];
                v120 = v40 + 8 * v118 + 8 * v678;
                if (v676)
                {
                  v40 = v120;
                  v116 = v119;
                }

                v680 = v116;
                if (v676)
                {
                  v48 = v119;
                }

                else
                {
                  v48 += 4 * v678;
                }

                v104 = v666 - 1;
              }

              while (v666 != 1);
              goto LABEL_547;
            case 12:
              v654 = v25;
              v657 = v26;
              v659 = v27;
              v652 = v31;
              v137 = v31;
              v138 = v31;
              v139 = v683[0];
              v140 = 8 * v137;
              do
              {
                v141 = v673;
                do
                {
                  v142 = ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48);
                  v143 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                  v144 = bswap32(v48[3]) >> 16;
                  v145 = ((bswap32(v48[2]) >> 16) << 32) | (v144 << 48);
                  v146 = bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
                  if (v38)
                  {
                    v147 = v144;
                  }

                  else
                  {
                    v147 = -1;
                  }

                  RGBA64_DpluslDA(v49, v142 | v143, v145 | v146, v147);
                  v148 = &v48[4 * v138];
                  if (v148 >= v40)
                  {
                    v149 = -v663;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  v48 = &v148[4 * v149];
                  v49 = (v49 + v140);
                  --v141;
                }

                while (v141);
                v150 = -(v678 * v650);
                v49 += 4 * v671;
                v151 = v680;
                v152 = &v680[4 * v678];
                if (v152 < v676)
                {
                  v150 = 0;
                }

                v153 = &v152[4 * v150];
                v154 = v40 + 8 * v150 + 8 * v678;
                if (v676)
                {
                  v40 = v154;
                  v151 = v153;
                }

                v680 = v151;
                if (v676)
                {
                  v48 = v153;
                }

                else
                {
                  v48 += 4 * v678;
                }

                --v139;
              }

              while (v139);
LABEL_547:
              v683[0] = 0;
              v4 = v649;
              v27 = v659;
              v10 = v660;
              v25 = v654;
              v26 = v657;
              v31 = v652;
              goto LABEL_668;
            case 13:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v316 = v683[0];
              while (1)
              {
                v317 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_471;
                    }

                    LODWORD(v318) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v318) = 0xFFFF;
                  }

                  v319 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v320 = 0xFFFF;
LABEL_469:
                    v322 = PDAmultiplyPDA_15236((v319 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v320, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v318);
                    v318 = HIWORD(v322);
                    v323 = bswap32(v322);
                    *v49 = HIWORD(v323);
                    v49[1] = v323;
                    v49[2] = bswap32(HIDWORD(v322)) >> 16;
                    goto LABEL_470;
                  }

                  v320 = v319;
                  if (v49[3])
                  {
                    goto LABEL_469;
                  }

                  v321 = v48[2];
                  *v49 = *v48;
                  v49[2] = v321;
LABEL_470:
                  v49[3] = __rev16(v318);
LABEL_471:
                  v324 = &v48[4 * v31];
                  if (v324 >= v40)
                  {
                    v325 = -v663;
                  }

                  else
                  {
                    v325 = 0;
                  }

                  v48 = &v324[4 * v325];
                  v49 += 4 * v31;
                  --v317;
                }

                while (v317);
                v326 = -(v678 * v650);
                v49 += 4 * v671;
                v327 = v680;
                v328 = &v680[4 * v678];
                if (v328 < v676)
                {
                  v326 = 0;
                }

                v329 = &v328[4 * v326];
                v330 = v40 + 8 * v326 + 8 * v678;
                if (v676)
                {
                  v40 = v330;
                  v327 = v329;
                }

                v680 = v327;
                if (v676)
                {
                  v48 = v329;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v316)
                {
                  goto LABEL_667;
                }
              }

            case 14:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v89 = v683[0];
              while (1)
              {
                v90 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_133;
                    }

                    LODWORD(v91) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v91) = 0xFFFF;
                  }

                  v92 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v93 = 0xFFFF;
LABEL_131:
                    v95 = PDAscreenPDA_15237((v92 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v93, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v91);
                    v91 = HIWORD(v95);
                    v96 = bswap32(v95);
                    *v49 = HIWORD(v96);
                    v49[1] = v96;
                    v49[2] = bswap32(HIDWORD(v95)) >> 16;
                    goto LABEL_132;
                  }

                  v93 = v92;
                  if (v49[3])
                  {
                    goto LABEL_131;
                  }

                  v94 = v48[2];
                  *v49 = *v48;
                  v49[2] = v94;
LABEL_132:
                  v49[3] = __rev16(v91);
LABEL_133:
                  v97 = &v48[4 * v31];
                  if (v97 >= v40)
                  {
                    v98 = -v663;
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v48 = &v97[4 * v98];
                  v49 += 4 * v31;
                  --v90;
                }

                while (v90);
                v99 = -(v678 * v650);
                v49 += 4 * v671;
                v100 = v680;
                v101 = &v680[4 * v678];
                if (v101 < v676)
                {
                  v99 = 0;
                }

                v102 = &v101[4 * v99];
                v103 = v40 + 8 * v99 + 8 * v678;
                if (v676)
                {
                  v40 = v103;
                  v100 = v102;
                }

                v680 = v100;
                if (v676)
                {
                  v48 = v102;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v89)
                {
                  goto LABEL_667;
                }
              }

            case 15:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v209 = v683[0];
              while (1)
              {
                v210 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_306;
                    }

                    LODWORD(v211) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v211) = 0xFFFF;
                  }

                  v212 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v213 = 0xFFFF;
LABEL_304:
                    v215 = PDAoverlayPDA_15238((v212 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v213, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v211);
                    v211 = HIWORD(v215);
                    v216 = bswap32(v215);
                    *v49 = HIWORD(v216);
                    v49[1] = v216;
                    v49[2] = bswap32(HIDWORD(v215)) >> 16;
                    goto LABEL_305;
                  }

                  v213 = v212;
                  if (v49[3])
                  {
                    goto LABEL_304;
                  }

                  v214 = v48[2];
                  *v49 = *v48;
                  v49[2] = v214;
LABEL_305:
                  v49[3] = __rev16(v211);
LABEL_306:
                  v217 = &v48[4 * v31];
                  if (v217 >= v40)
                  {
                    v218 = -v663;
                  }

                  else
                  {
                    v218 = 0;
                  }

                  v48 = &v217[4 * v218];
                  v49 += 4 * v31;
                  --v210;
                }

                while (v210);
                v219 = -(v678 * v650);
                v49 += 4 * v671;
                v220 = v680;
                v221 = &v680[4 * v678];
                if (v221 < v676)
                {
                  v219 = 0;
                }

                v222 = &v221[4 * v219];
                v223 = v40 + 8 * v219 + 8 * v678;
                if (v676)
                {
                  v40 = v223;
                  v220 = v222;
                }

                v680 = v220;
                if (v676)
                {
                  v48 = v222;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v209)
                {
                  goto LABEL_667;
                }
              }

            case 16:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v74 = v683[0];
              while (1)
              {
                v75 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_108;
                    }

                    LODWORD(v76) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v76) = 0xFFFF;
                  }

                  v77 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v78 = 0xFFFF;
LABEL_106:
                    v80 = PDAdarkenPDA_15240((v77 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v78, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v76);
                    v76 = HIWORD(v80);
                    v81 = bswap32(v80);
                    *v49 = HIWORD(v81);
                    v49[1] = v81;
                    v49[2] = bswap32(HIDWORD(v80)) >> 16;
                    goto LABEL_107;
                  }

                  v78 = v77;
                  if (v49[3])
                  {
                    goto LABEL_106;
                  }

                  v79 = v48[2];
                  *v49 = *v48;
                  v49[2] = v79;
LABEL_107:
                  v49[3] = __rev16(v76);
LABEL_108:
                  v82 = &v48[4 * v31];
                  if (v82 >= v40)
                  {
                    v83 = -v663;
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v48 = &v82[4 * v83];
                  v49 += 4 * v31;
                  --v75;
                }

                while (v75);
                v84 = -(v678 * v650);
                v49 += 4 * v671;
                v85 = v680;
                v86 = &v680[4 * v678];
                if (v86 < v676)
                {
                  v84 = 0;
                }

                v87 = &v86[4 * v84];
                v88 = v40 + 8 * v84 + 8 * v678;
                if (v676)
                {
                  v40 = v88;
                  v85 = v87;
                }

                v680 = v85;
                if (v676)
                {
                  v48 = v87;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v74)
                {
                  goto LABEL_667;
                }
              }

            case 17:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v257 = v683[0];
              while (1)
              {
                v258 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_381;
                    }

                    LODWORD(v259) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v259) = 0xFFFF;
                  }

                  v260 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v261 = 0xFFFF;
LABEL_379:
                    v263 = PDAlightenPDA_15239((v260 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v261, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v259);
                    v259 = HIWORD(v263);
                    v264 = bswap32(v263);
                    *v49 = HIWORD(v264);
                    v49[1] = v264;
                    v49[2] = bswap32(HIDWORD(v263)) >> 16;
                    goto LABEL_380;
                  }

                  v261 = v260;
                  if (v49[3])
                  {
                    goto LABEL_379;
                  }

                  v262 = v48[2];
                  *v49 = *v48;
                  v49[2] = v262;
LABEL_380:
                  v49[3] = __rev16(v259);
LABEL_381:
                  v265 = &v48[4 * v31];
                  if (v265 >= v40)
                  {
                    v266 = -v663;
                  }

                  else
                  {
                    v266 = 0;
                  }

                  v48 = &v265[4 * v266];
                  v49 += 4 * v31;
                  --v258;
                }

                while (v258);
                v267 = -(v678 * v650);
                v49 += 4 * v671;
                v268 = v680;
                v269 = &v680[4 * v678];
                if (v269 < v676)
                {
                  v267 = 0;
                }

                v270 = &v269[4 * v267];
                v271 = v40 + 8 * v267 + 8 * v678;
                if (v676)
                {
                  v40 = v271;
                  v268 = v270;
                }

                v680 = v268;
                if (v676)
                {
                  v48 = v270;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v257)
                {
                  goto LABEL_667;
                }
              }

            case 18:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v353 = v683[0];
              while (1)
              {
                v354 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_520;
                    }

                    LODWORD(v355) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v355) = 0xFFFF;
                  }

                  v356 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v357 = 0xFFFF;
LABEL_518:
                    v359 = PDAcolordodgePDA_15241((v356 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v357, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v355);
                    v355 = HIWORD(v359);
                    v360 = bswap32(v359);
                    *v49 = HIWORD(v360);
                    v49[1] = v360;
                    v49[2] = bswap32(HIDWORD(v359)) >> 16;
                    goto LABEL_519;
                  }

                  v357 = v356;
                  if (v49[3])
                  {
                    goto LABEL_518;
                  }

                  v358 = v48[2];
                  *v49 = *v48;
                  v49[2] = v358;
LABEL_519:
                  v49[3] = __rev16(v355);
LABEL_520:
                  v361 = &v48[4 * v31];
                  if (v361 >= v40)
                  {
                    v362 = -v663;
                  }

                  else
                  {
                    v362 = 0;
                  }

                  v48 = &v361[4 * v362];
                  v49 += 4 * v31;
                  --v354;
                }

                while (v354);
                v363 = -(v678 * v650);
                v49 += 4 * v671;
                v364 = v680;
                v365 = &v680[4 * v678];
                if (v365 < v676)
                {
                  v363 = 0;
                }

                v366 = &v365[4 * v363];
                v367 = v40 + 8 * v363 + 8 * v678;
                if (v676)
                {
                  v40 = v367;
                  v364 = v366;
                }

                v680 = v364;
                if (v676)
                {
                  v48 = v366;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v353)
                {
                  goto LABEL_667;
                }
              }

            case 19:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v411 = v683[0];
              while (1)
              {
                v412 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_605;
                    }

                    LODWORD(v413) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v413) = 0xFFFF;
                  }

                  v414 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v415 = 0xFFFF;
LABEL_603:
                    v417 = PDAcolorburnPDA_15242((v414 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v415, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v413);
                    v413 = HIWORD(v417);
                    v418 = bswap32(v417);
                    *v49 = HIWORD(v418);
                    v49[1] = v418;
                    v49[2] = bswap32(HIDWORD(v417)) >> 16;
                    goto LABEL_604;
                  }

                  v415 = v414;
                  if (v49[3])
                  {
                    goto LABEL_603;
                  }

                  v416 = v48[2];
                  *v49 = *v48;
                  v49[2] = v416;
LABEL_604:
                  v49[3] = __rev16(v413);
LABEL_605:
                  v419 = &v48[4 * v31];
                  if (v419 >= v40)
                  {
                    v420 = -v663;
                  }

                  else
                  {
                    v420 = 0;
                  }

                  v48 = &v419[4 * v420];
                  v49 += 4 * v31;
                  --v412;
                }

                while (v412);
                v421 = -(v678 * v650);
                v49 += 4 * v671;
                v422 = v680;
                v423 = &v680[4 * v678];
                if (v423 < v676)
                {
                  v421 = 0;
                }

                v424 = &v423[4 * v421];
                v425 = v40 + 8 * v421 + 8 * v678;
                if (v676)
                {
                  v40 = v425;
                  v422 = v424;
                }

                v680 = v422;
                if (v676)
                {
                  v48 = v424;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v411)
                {
                  goto LABEL_667;
                }
              }

            case 20:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v272 = v683[0];
              while (1)
              {
                v273 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_406;
                    }

                    LODWORD(v274) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v274) = 0xFFFF;
                  }

                  v275 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v276 = 0xFFFF;
LABEL_404:
                    v278 = PDAsoftlightPDA_15244((v275 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v276, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v274);
                    v274 = HIWORD(v278);
                    v279 = bswap32(v278);
                    *v49 = HIWORD(v279);
                    v49[1] = v279;
                    v49[2] = bswap32(HIDWORD(v278)) >> 16;
                    goto LABEL_405;
                  }

                  v276 = v275;
                  if (v49[3])
                  {
                    goto LABEL_404;
                  }

                  v277 = v48[2];
                  *v49 = *v48;
                  v49[2] = v277;
LABEL_405:
                  v49[3] = __rev16(v274);
LABEL_406:
                  v280 = &v48[4 * v31];
                  if (v280 >= v40)
                  {
                    v281 = -v663;
                  }

                  else
                  {
                    v281 = 0;
                  }

                  v48 = &v280[4 * v281];
                  v49 += 4 * v31;
                  --v273;
                }

                while (v273);
                v282 = -(v678 * v650);
                v49 += 4 * v671;
                v283 = v680;
                v284 = &v680[4 * v678];
                if (v284 < v676)
                {
                  v282 = 0;
                }

                v285 = &v284[4 * v282];
                v286 = v40 + 8 * v282 + 8 * v678;
                if (v676)
                {
                  v40 = v286;
                  v283 = v285;
                }

                v680 = v283;
                if (v676)
                {
                  v48 = v285;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v272)
                {
                  goto LABEL_667;
                }
              }

            case 21:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v301 = v683[0];
              while (1)
              {
                v302 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_446;
                    }

                    LODWORD(v303) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v303) = 0xFFFF;
                  }

                  v304 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v305 = 0xFFFF;
LABEL_444:
                    v307 = PDAhardlightPDA_15243((v304 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v305, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v303);
                    v303 = HIWORD(v307);
                    v308 = bswap32(v307);
                    *v49 = HIWORD(v308);
                    v49[1] = v308;
                    v49[2] = bswap32(HIDWORD(v307)) >> 16;
                    goto LABEL_445;
                  }

                  v305 = v304;
                  if (v49[3])
                  {
                    goto LABEL_444;
                  }

                  v306 = v48[2];
                  *v49 = *v48;
                  v49[2] = v306;
LABEL_445:
                  v49[3] = __rev16(v303);
LABEL_446:
                  v309 = &v48[4 * v31];
                  if (v309 >= v40)
                  {
                    v310 = -v663;
                  }

                  else
                  {
                    v310 = 0;
                  }

                  v48 = &v309[4 * v310];
                  v49 += 4 * v31;
                  --v302;
                }

                while (v302);
                v311 = -(v678 * v650);
                v49 += 4 * v671;
                v312 = v680;
                v313 = &v680[4 * v678];
                if (v313 < v676)
                {
                  v311 = 0;
                }

                v314 = &v313[4 * v311];
                v315 = v40 + 8 * v311 + 8 * v678;
                if (v676)
                {
                  v40 = v315;
                  v312 = v314;
                }

                v680 = v312;
                if (v676)
                {
                  v48 = v314;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v301)
                {
                  goto LABEL_667;
                }
              }

            case 22:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v396 = v683[0];
              while (1)
              {
                v397 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_580;
                    }

                    LODWORD(v398) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v398) = 0xFFFF;
                  }

                  v399 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v400 = 0xFFFF;
LABEL_578:
                    v402 = PDAdifferencePDA_15245((v399 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v400, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v398);
                    v398 = HIWORD(v402);
                    v403 = bswap32(v402);
                    *v49 = HIWORD(v403);
                    v49[1] = v403;
                    v49[2] = bswap32(HIDWORD(v402)) >> 16;
                    goto LABEL_579;
                  }

                  v400 = v399;
                  if (v49[3])
                  {
                    goto LABEL_578;
                  }

                  v401 = v48[2];
                  *v49 = *v48;
                  v49[2] = v401;
LABEL_579:
                  v49[3] = __rev16(v398);
LABEL_580:
                  v404 = &v48[4 * v31];
                  if (v404 >= v40)
                  {
                    v405 = -v663;
                  }

                  else
                  {
                    v405 = 0;
                  }

                  v48 = &v404[4 * v405];
                  v49 += 4 * v31;
                  --v397;
                }

                while (v397);
                v406 = -(v678 * v650);
                v49 += 4 * v671;
                v407 = v680;
                v408 = &v680[4 * v678];
                if (v408 < v676)
                {
                  v406 = 0;
                }

                v409 = &v408[4 * v406];
                v410 = v40 + 8 * v406 + 8 * v678;
                if (v676)
                {
                  v40 = v410;
                  v407 = v409;
                }

                v680 = v407;
                if (v676)
                {
                  v48 = v409;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v396)
                {
                  goto LABEL_667;
                }
              }

            case 23:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v426 = v683[0];
              while (1)
              {
                v427 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_630;
                    }

                    LODWORD(v428) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v428) = 0xFFFF;
                  }

                  v429 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v430 = 0xFFFF;
LABEL_628:
                    v432 = PDAexclusionPDA_15246((v429 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v430, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v428);
                    v428 = HIWORD(v432);
                    v433 = bswap32(v432);
                    *v49 = HIWORD(v433);
                    v49[1] = v433;
                    v49[2] = bswap32(HIDWORD(v432)) >> 16;
                    goto LABEL_629;
                  }

                  v430 = v429;
                  if (v49[3])
                  {
                    goto LABEL_628;
                  }

                  v431 = v48[2];
                  *v49 = *v48;
                  v49[2] = v431;
LABEL_629:
                  v49[3] = __rev16(v428);
LABEL_630:
                  v434 = &v48[4 * v31];
                  if (v434 >= v40)
                  {
                    v435 = -v663;
                  }

                  else
                  {
                    v435 = 0;
                  }

                  v48 = &v434[4 * v435];
                  v49 += 4 * v31;
                  --v427;
                }

                while (v427);
                v436 = -(v678 * v650);
                v49 += 4 * v671;
                v437 = v680;
                v438 = &v680[4 * v678];
                if (v438 < v676)
                {
                  v436 = 0;
                }

                v439 = &v438[4 * v436];
                v440 = v40 + 8 * v436 + 8 * v678;
                if (v676)
                {
                  v40 = v440;
                  v437 = v439;
                }

                v680 = v437;
                if (v676)
                {
                  v48 = v439;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v426)
                {
                  goto LABEL_667;
                }
              }

            case 24:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v184 = v683[0];
              while (1)
              {
                v185 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_262;
                    }

                    LODWORD(v186) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v186) = 0xFFFF;
                  }

                  v187 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v188 = 0xFFFF;
LABEL_260:
                    v190 = PDAhuePDA_15247((v187 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v188, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v186);
                    v186 = HIWORD(v190);
                    v191 = bswap32(v190);
                    *v49 = HIWORD(v191);
                    v49[1] = v191;
                    v49[2] = bswap32(HIDWORD(v190)) >> 16;
                    goto LABEL_261;
                  }

                  v188 = v187;
                  if (v49[3])
                  {
                    goto LABEL_260;
                  }

                  v189 = v48[2];
                  *v49 = *v48;
                  v49[2] = v189;
LABEL_261:
                  v49[3] = __rev16(v186);
LABEL_262:
                  v192 = &v48[4 * v31];
                  if (v192 >= v40)
                  {
                    v193 = -v663;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  v48 = &v192[4 * v193];
                  v49 += 4 * v31;
                  --v185;
                }

                while (v185);
                v194 = -(v678 * v650);
                v49 += 4 * v671;
                v195 = v680;
                v196 = &v680[4 * v678];
                if (v196 < v676)
                {
                  v194 = 0;
                }

                v197 = &v196[4 * v194];
                v198 = v40 + 8 * v194 + 8 * v678;
                if (v676)
                {
                  v40 = v198;
                  v195 = v197;
                }

                v680 = v195;
                if (v676)
                {
                  v48 = v197;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v184)
                {
                  goto LABEL_667;
                }
              }

            case 25:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v169 = v683[0];
              while (1)
              {
                v170 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_237;
                    }

                    LODWORD(v171) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v171) = 0xFFFF;
                  }

                  v172 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v173 = 0xFFFF;
LABEL_235:
                    v175 = PDAsaturationPDA_15248((v172 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v173, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v171);
                    v171 = HIWORD(v175);
                    v176 = bswap32(v175);
                    *v49 = HIWORD(v176);
                    v49[1] = v176;
                    v49[2] = bswap32(HIDWORD(v175)) >> 16;
                    goto LABEL_236;
                  }

                  v173 = v172;
                  if (v49[3])
                  {
                    goto LABEL_235;
                  }

                  v174 = v48[2];
                  *v49 = *v48;
                  v49[2] = v174;
LABEL_236:
                  v49[3] = __rev16(v171);
LABEL_237:
                  v177 = &v48[4 * v31];
                  if (v177 >= v40)
                  {
                    v178 = -v663;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v48 = &v177[4 * v178];
                  v49 += 4 * v31;
                  --v170;
                }

                while (v170);
                v179 = -(v678 * v650);
                v49 += 4 * v671;
                v180 = v680;
                v181 = &v680[4 * v678];
                if (v181 < v676)
                {
                  v179 = 0;
                }

                v182 = &v181[4 * v179];
                v183 = v40 + 8 * v179 + 8 * v678;
                if (v676)
                {
                  v40 = v183;
                  v180 = v182;
                }

                v680 = v180;
                if (v676)
                {
                  v48 = v182;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v169)
                {
                  goto LABEL_667;
                }
              }

            case 26:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v441 = v683[0];
              while (1)
              {
                v442 = v673;
                do
                {
                  if (v38)
                  {
                    if (!v48[3])
                    {
                      goto LABEL_655;
                    }

                    LODWORD(v443) = __rev16(v48[3]);
                  }

                  else
                  {
                    LODWORD(v443) = 0xFFFF;
                  }

                  v444 = __rev16(v49[3]);
                  if (!v681)
                  {
                    v445 = 0xFFFF;
LABEL_653:
                    v447 = PDAluminosityPDA_15249(((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v443, (v444 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v445);
                    v443 = HIWORD(v447);
                    v448 = bswap32(v447);
                    *v49 = HIWORD(v448);
                    v49[1] = v448;
                    v49[2] = bswap32(HIDWORD(v447)) >> 16;
                    goto LABEL_654;
                  }

                  v445 = v444;
                  if (v49[3])
                  {
                    goto LABEL_653;
                  }

                  v446 = v48[2];
                  *v49 = *v48;
                  v49[2] = v446;
LABEL_654:
                  v49[3] = __rev16(v443);
LABEL_655:
                  v449 = &v48[4 * v31];
                  if (v449 >= v40)
                  {
                    v450 = -v663;
                  }

                  else
                  {
                    v450 = 0;
                  }

                  v48 = &v449[4 * v450];
                  v49 += 4 * v31;
                  --v442;
                }

                while (v442);
                v451 = -(v678 * v650);
                v49 += 4 * v671;
                v452 = v680;
                v453 = &v680[4 * v678];
                if (v453 < v676)
                {
                  v451 = 0;
                }

                v454 = &v453[4 * v451];
                v455 = v40 + 8 * v451 + 8 * v678;
                if (v676)
                {
                  v40 = v455;
                  v452 = v454;
                }

                v680 = v452;
                if (v676)
                {
                  v48 = v454;
                }

                else
                {
                  v48 += 4 * v678;
                }

                if (!--v441)
                {
                  goto LABEL_667;
                }
              }

            case 27:
              v653 = v25;
              v656 = v26;
              v658 = v27;
              v651 = v31;
              v59 = v683[0];
              break;
            default:
              goto LABEL_668;
          }

          break;
        }

LABEL_72:
        v60 = v673;
        while (v38)
        {
          if (v48[3])
          {
            LODWORD(v61) = __rev16(v48[3]);
            goto LABEL_77;
          }

LABEL_83:
          v67 = &v48[4 * v31];
          if (v67 >= v40)
          {
            v68 = -v663;
          }

          else
          {
            v68 = 0;
          }

          v48 = &v67[4 * v68];
          v49 += 4 * v31;
          if (!--v60)
          {
            v69 = -(v678 * v650);
            v49 += 4 * v671;
            v70 = v680;
            v71 = &v680[4 * v678];
            if (v71 < v676)
            {
              v69 = 0;
            }

            v72 = &v71[4 * v69];
            v73 = v40 + 8 * v69 + 8 * v678;
            if (v676)
            {
              v40 = v73;
              v70 = v72;
            }

            v680 = v70;
            if (v676)
            {
              v48 = v72;
            }

            else
            {
              v48 += 4 * v678;
            }

            if (!--v59)
            {
LABEL_667:
              v683[0] = 0;
              v27 = v658;
              v10 = v660;
              v25 = v653;
              v26 = v656;
              v31 = v651;
              v4 = v649;
              goto LABEL_668;
            }

            goto LABEL_72;
          }
        }

        LODWORD(v61) = 0xFFFF;
LABEL_77:
        v62 = __rev16(v49[3]);
        if (v681)
        {
          v63 = v62;
          if (!v49[3])
          {
            v64 = v48[2];
            *v49 = *v48;
            v49[2] = v64;
LABEL_82:
            v49[3] = __rev16(v61);
            goto LABEL_83;
          }
        }

        else
        {
          v63 = 0xFFFF;
        }

        v65 = PDAluminosityPDA_15249((v62 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v63, ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16), v61);
        v61 = HIWORD(v65);
        v66 = bswap32(v65);
        *v49 = HIWORD(v66);
        v49[1] = v66;
        v49[2] = bswap32(HIDWORD(v65)) >> 16;
        goto LABEL_82;
      }

      v671 = v26 - v12;
      v673 = v12;
      if (v25)
      {
        v662 = 0;
        v47 = v25 + 8 * v28 * (v647 % v650);
        v48 = (v47 + 8 * (v648 % v663));
        v40 = v47 + 8 * v663;
        v31 = 1;
        v680 = v48;
        v49 = (*(v4 + 40) + 8 * v26 * *(v4 + 16) + 8 * *(v4 + 12));
        v647 %= v650;
        v648 %= v663;
        goto LABEL_64;
      }

      v50 = v12;
      v40 = 0;
      v31 = 1;
      v51 = *(v4 + 76) >> 3;
LABEL_58:
      v662 = 0;
      v680 = 0;
      v676 = 0;
      v678 = v51 - v50;
      v48 = v25;
      v49 = v27;
      goto LABEL_64;
    }

    v25 += 8 * v28 * *(v4 + 60) + 8 * *(v4 + 56);
    if (v28 == v26)
    {
      v29 = (v27 - v25) >> 3;
      if (v29 < 1)
      {
        goto LABEL_29;
      }

      if (v29 > v12)
      {
        v30 = v26 * (v14 - 1);
        if (v27 <= v25 + 8 * v30 + 8 * v12 - 8)
        {
          v27 += 8 * v30;
          v26 = -v26;
          v31 = 1;
          v25 += 8 * v30;
          goto LABEL_52;
        }

LABEL_29:
        v31 = 1;
LABEL_52:
        v663 = v26;
        goto LABEL_53;
      }

      v27 += 8 * v13;
      v31 = 0xFFFFFFFFLL;
      v663 = *(v4 + 28) >> 3;
      v25 += 8 * v13;
    }

    else
    {
      v31 = 1;
      v663 = *(v4 + 76) >> 3;
    }

LABEL_53:
    v38 = v8 != 0;
    if (v15)
    {
      v39 = v12;
      v650 = 0;
      v676 = 0;
      v40 = -1;
      v678 = v663;
      v680 = 0;
      goto LABEL_55;
    }

    v650 = 0;
    v50 = v31 * v12;
    v671 = v26 - v50;
    v673 = v12;
    v40 = -1;
    v51 = v663;
    goto LABEL_58;
  }

  if (BYTE1(v7) != 4)
  {
    goto LABEL_24;
  }

  v693[0] = *(v4 + 4);
  v683[0] = v14;
  v17 = *(v4 + 88);
  v679 = *v17;
  v677 = v17[1];
  v675 = v17[2];
  v18 = v17[3];
  v19 = __rev16(v18);
  v20 = (__rev16(v675) << 32) | (v19 << 48);
  v21 = (__PAIR64__(__rev16(v677), bswap32(v679)) >> 16);
  v22 = ~(bswap32(v18) >> 16);
  v655 = *(v4 + 28);
  v665 = v655 >> 3;
  v23 = (*(v4 + 40) + 8 * (v655 >> 3) * *(v4 + 16) + 8 * *(v4 + 12));
  v661 = v23;
  if (v15)
  {
    shape_enum_clip_alloc(v1, v2, v15, 1, 1, 1, *(v4 + 104), *(v4 + 108), v12, v14);
    v12 = v24;
    if (v24)
    {
      goto LABEL_975;
    }

    return 1;
  }

  v664 = 0;
  while (2)
  {
    v672 = v665 - v12;
    v674 = v12;
    switch(v10)
    {
      case 0:
        v490 = v683[0];
        v491 = 8 * v12;
        goto LABEL_981;
      case 1:
        v569 = *(v4 + 88);
        if (v569)
        {
          CGSFillDRAM64(v23, v655 & 0xFFFFFFF8, 8 * v12, v683[0], v569, 8, 8, 1, 0, 0);
        }

        else
        {
          v491 = 8 * v12;
          v490 = v683[0];
LABEL_981:
          CGBlt_fillBytes(v491, v490, 0, v23, v655 & 0xFFFFFFF8);
        }

        goto LABEL_973;
      case 2:
        v542 = v683[0];
        do
        {
          if (v12 < 4)
          {
            v546 = v12;
          }

          else
          {
            v543 = (v12 >> 2) + 1;
            do
            {
              RGBA64_DplusDM(v23, v20 | v21, ((bswap32(v23[2]) >> 16) << 32) | ((bswap32(v23[3]) >> 16) << 48) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v22);
              RGBA64_DplusDM(v23 + 4, v20 | v21, ((bswap32(v23[6]) >> 16) << 32) | ((bswap32(v23[7]) >> 16) << 48) | bswap32(v23[5]) & 0xFFFF0000 | (bswap32(v23[4]) >> 16), v22);
              RGBA64_DplusDM(v23 + 8, v20 | v21, ((bswap32(v23[10]) >> 16) << 32) | ((bswap32(v23[11]) >> 16) << 48) | bswap32(v23[9]) & 0xFFFF0000 | (bswap32(v23[8]) >> 16), v22);
              v545 = v23[12];
              v544 = v23 + 12;
              RGBA64_DplusDM(v544, v20 | v21, ((bswap32(v544[2]) >> 16) << 32) | ((bswap32(v544[3]) >> 16) << 48) | bswap32(v544[1]) & 0xFFFF0000 | (bswap32(v545) >> 16), v22);
              v23 = v544 + 4;
              --v543;
            }

            while (v543 > 1);
            v546 = v12 & 3;
          }

          if (v546 >= 1)
          {
            v547 = v546 + 1;
            do
            {
              RGBA64_DplusDM(v23, v20 | v21, ((bswap32(v23[2]) >> 16) << 32) | ((bswap32(v23[3]) >> 16) << 48) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v22);
              v23 += 4;
              --v547;
            }

            while (v547 > 1);
          }

          v23 += 4 * v672;
          --v542;
          v10 = v660;
        }

        while (v542);
        v683[0] = 0;
        v4 = v649;
        goto LABEL_973;
      case 3:
        v555.i32[0] = v21;
        v555.i32[1] = vshr_n_u32(vdup_n_s32(v21), 0x10uLL).i32[1];
        v555.i32[2] = WORD2(v20);
        v555.i32[3] = v19;
        v556 = v555;
        v556.i32[0] = v21;
        v556.i32[2] = HIDWORD(v20);
        v557 = v683[0];
        do
        {
          v558 = v12;
          do
          {
            v559 = bswap32(v23[3]) >> 16;
            if (v559 == 0xFFFF)
            {
              *v23 = v679;
              v23[1] = v677;
              v23[2] = v675;
              v23[3] = v18;
            }

            else if (v559)
            {
              v560.i64[0] = 0x800000008000;
              v560.i64[1] = 0x800000008000;
              v561 = vmlaq_s32(v560, v555, vmovl_u16(vdup_n_s16(~v559)));
              *v23 = vrev16_s8(vmovn_s32(vsubq_s32(v556, vshrq_n_u32(vsraq_n_u32(v561, v561, 0x10uLL), 0x10uLL))));
            }

            else
            {
              *v23 = 0;
            }

            v23 += 4;
            --v558;
          }

          while (v558);
          v23 += 4 * v672;
          --v557;
        }

        while (v557);
        goto LABEL_927;
      case 4:
        v518.i32[0] = v21;
        v518.i32[1] = vshr_n_u32(vdup_n_s32(v21), 0x10uLL).i32[1];
        v518.i32[2] = WORD2(v20);
        v518.i32[3] = v19;
        v519 = v518;
        v519.i32[0] = v21;
        v519.i32[2] = HIDWORD(v20);
        v520 = v683[0];
        do
        {
          v521 = v12;
          do
          {
            v522 = bswap32(~v23[3]) >> 16;
            if (v522 == 0xFFFF)
            {
              *v23 = v679;
              v23[1] = v677;
              v23[2] = v675;
              v23[3] = v18;
            }

            else if (v522)
            {
              v523.i64[0] = 0x800000008000;
              v523.i64[1] = 0x800000008000;
              v524 = vmlaq_s32(v523, v518, vmovl_u16(vdup_n_s16(~v522)));
              *v23 = vrev16_s8(vmovn_s32(vsubq_s32(v519, vshrq_n_u32(vsraq_n_u32(v524, v524, 0x10uLL), 0x10uLL))));
            }

            else
            {
              *v23 = 0;
            }

            v23 += 4;
            --v521;
          }

          while (v521);
          v23 += 4 * v672;
          --v520;
        }

        while (v520);
        goto LABEL_927;
      case 5:
        v584 = v683[0];
        do
        {
          do
          {
            v585 = bswap32(v23[3]) >> 16;
            RGBA64_DMplusDM(v23, v20 | v21, v585, (v585 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v22);
            v23 += 4;
            LODWORD(v12) = v12 - 1;
          }

          while (v12);
          LODWORD(v12) = v674;
          v23 += 4 * v672;
          --v584;
        }

        while (v584);
        goto LABEL_922;
      case 6:
        v600 = v683[0];
        do
        {
          v601 = v12;
          do
          {
            v602 = bswap32(v23[3]);
            if (HIWORD(v602) != 0xFFFF)
            {
              if (~HIWORD(v602) == 0xFFFF)
              {
                *v23 = v679;
                v23[1] = v677;
                v23[2] = v675;
                v23[3] = v18;
              }

              else
              {
                RGBA64_DplusDM(v23, (HIWORD(v602) << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v20 | v21, ~HIWORD(v602));
              }
            }

            v23 += 4;
            --v601;
          }

          while (v601);
          v23 += 4 * v672;
          --v600;
        }

        while (v600);
        v683[0] = 0;
        v4 = v649;
        v10 = v660;
        v9 = v681;
        goto LABEL_973;
      case 7:
        v562 = vdupq_n_s32(v22);
        v563 = v683[0];
        do
        {
          v564 = v12;
          do
          {
            v565 = bswap32(v23[1] | (*v23 << 16));
            v566.i32[0] = v565;
            v566.i32[1] = vshr_n_u32(vdup_n_s32(v565), 0x10uLL).i32[1];
            v566.i64[1] = __PAIR64__(bswap32(v23[3]) >> 16, bswap32(v23[2]) >> 16);
            v567.i64[0] = 0x800000008000;
            v567.i64[1] = 0x800000008000;
            v568 = vmlaq_s32(v567, v566, v562);
            v566.i32[0] = v565;
            *v23 = vrev16_s8(vmovn_s32(vsubq_s32(v566, vshrq_n_u32(vsraq_n_u32(v568, v568, 0x10uLL), 0x10uLL))));
            v23 += 4;
            --v564;
          }

          while (v564);
          v23 += 4 * v672;
          --v563;
        }

        while (v563);
        goto LABEL_927;
      case 8:
        v612 = vdupq_n_s32(v19);
        v613 = v683[0];
        do
        {
          v614 = v12;
          do
          {
            v615 = bswap32(v23[1] | (*v23 << 16));
            v616.i32[0] = v615;
            v616.i32[1] = vshr_n_u32(vdup_n_s32(v615), 0x10uLL).i32[1];
            v616.i64[1] = __PAIR64__(bswap32(v23[3]) >> 16, bswap32(v23[2]) >> 16);
            v617.i64[0] = 0x800000008000;
            v617.i64[1] = 0x800000008000;
            v618 = vmlaq_s32(v617, v616, v612);
            v616.i32[0] = v615;
            *v23 = vrev16_s8(vmovn_s32(vsubq_s32(v616, vshrq_n_u32(vsraq_n_u32(v618, v618, 0x10uLL), 0x10uLL))));
            v23 += 4;
            --v614;
          }

          while (v614);
          v23 += 4 * v672;
          --v613;
        }

        while (v613);
LABEL_927:
        v683[0] = 0;
        goto LABEL_973;
      case 9:
        v526 = v683[0];
        do
        {
          do
          {
            v527 = bswap32(v23[3]) >> 16;
            RGBA64_DMplusDM(v23, v20 | v21, v527 ^ 0xFFFF, (v527 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v19);
            v23 += 4;
            LODWORD(v12) = v12 - 1;
          }

          while (v12);
          LODWORD(v12) = v674;
          v23 += 4 * v672;
          --v526;
        }

        while (v526);
        goto LABEL_922;
      case 10:
        v610 = v683[0];
        do
        {
          do
          {
            v611 = bswap32(v23[3]) >> 16;
            RGBA64_DMplusDM(v23, v20 | v21, v611 ^ 0xFFFF, (v611 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v22);
            v23 += 4;
            LODWORD(v12) = v12 - 1;
          }

          while (v12);
          LODWORD(v12) = v674;
          v23 += 4 * v672;
          --v610;
        }

        while (v610);
        goto LABEL_922;
      case 11:
        v513 = v683[0];
        while (1)
        {
          v514 = bswap32(v23[3]) >> 16;
          v515 = ((bswap32(v23[2]) >> 16) << 32) | (v514 << 48);
          v516 = bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16);
          if (v9)
          {
            v517 = v514;
          }

          else
          {
            v517 = -1;
          }

          RGBA64_DAplusdDA(v23, v515 | v516, v517, v20 | v21, v19);
          v23 += 4;
          LODWORD(v12) = v12 - 1;
          if (!v12)
          {
            LODWORD(v12) = v674;
            v23 += 4 * v672;
            if (!--v513)
            {
              break;
            }
          }
        }

        goto LABEL_922;
      case 12:
        v525 = v683[0];
        do
        {
          do
          {
            RGBA64_DpluslD(v23, ((bswap32(v23[2]) >> 16) << 32) | ((bswap32(v23[3]) >> 16) << 48) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v20 | v21);
            v23 += 4;
            LODWORD(v12) = v12 - 1;
          }

          while (v12);
          LODWORD(v12) = v674;
          v23 += 4 * v672;
          --v525;
        }

        while (v525);
LABEL_922:
        v683[0] = 0;
        goto LABEL_972;
      case 13:
        if (!v18)
        {
          goto LABEL_973;
        }

        v593 = v683[0];
        while (1)
        {
          v594 = v12;
          do
          {
            v595 = __rev16(v23[3]);
            if (v9)
            {
              v596 = v595;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v597 = v18;
                v23[2] = v675;
                goto LABEL_896;
              }
            }

            else
            {
              v596 = 0xFFFF;
            }

            v598 = PDAmultiplyPDA_15236((v595 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v596, v20 | v21, v19);
            v599 = bswap32(v598);
            *v23 = HIWORD(v599);
            v23[1] = v599;
            v23[2] = bswap32(HIDWORD(v598)) >> 16;
            v597 = __rev16(HIWORD(v598));
LABEL_896:
            v23[3] = v597;
            v23 += 4;
            --v594;
          }

          while (v594);
          v23 += 4 * v672;
          if (!--v593)
          {
            goto LABEL_971;
          }
        }

      case 14:
        if (!v18)
        {
          goto LABEL_973;
        }

        v506 = v683[0];
        while (1)
        {
          v507 = v12;
          do
          {
            v508 = __rev16(v23[3]);
            if (v9)
            {
              v509 = v508;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v510 = v18;
                v23[2] = v675;
                goto LABEL_762;
              }
            }

            else
            {
              v509 = 0xFFFF;
            }

            v511 = PDAscreenPDA_15237((v508 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v509, v20 | v21, v19);
            v512 = bswap32(v511);
            *v23 = HIWORD(v512);
            v23[1] = v512;
            v23[2] = bswap32(HIDWORD(v511)) >> 16;
            v510 = __rev16(HIWORD(v511));
LABEL_762:
            v23[3] = v510;
            v23 += 4;
            --v507;
          }

          while (v507);
          v23 += 4 * v672;
          if (!--v506)
          {
            goto LABEL_971;
          }
        }

      case 15:
        if (!v18)
        {
          goto LABEL_973;
        }

        v548 = v683[0];
        while (1)
        {
          v549 = v12;
          do
          {
            v550 = __rev16(v23[3]);
            if (v9)
            {
              v551 = v550;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v552 = v18;
                v23[2] = v675;
                goto LABEL_831;
              }
            }

            else
            {
              v551 = 0xFFFF;
            }

            v553 = PDAoverlayPDA_15238((v550 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v551, v20 | v21, v19);
            v554 = bswap32(v553);
            *v23 = HIWORD(v554);
            v23[1] = v554;
            v23[2] = bswap32(HIDWORD(v553)) >> 16;
            v552 = __rev16(HIWORD(v553));
LABEL_831:
            v23[3] = v552;
            v23 += 4;
            --v549;
          }

          while (v549);
          v23 += 4 * v672;
          if (!--v548)
          {
            goto LABEL_971;
          }
        }

      case 16:
        if (!v18)
        {
          goto LABEL_973;
        }

        v499 = v683[0];
        while (1)
        {
          v500 = v12;
          do
          {
            v501 = __rev16(v23[3]);
            if (v9)
            {
              v502 = v501;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v503 = v18;
                v23[2] = v675;
                goto LABEL_751;
              }
            }

            else
            {
              v502 = 0xFFFF;
            }

            v504 = PDAdarkenPDA_15240((v501 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v502, v20 | v21, v19);
            v505 = bswap32(v504);
            *v23 = HIWORD(v505);
            v23[1] = v505;
            v23[2] = bswap32(HIDWORD(v504)) >> 16;
            v503 = __rev16(HIWORD(v504));
LABEL_751:
            v23[3] = v503;
            v23 += 4;
            --v500;
          }

          while (v500);
          v23 += 4 * v672;
          if (!--v499)
          {
            goto LABEL_971;
          }
        }

      case 17:
        if (!v18)
        {
          goto LABEL_973;
        }

        v570 = v683[0];
        while (1)
        {
          v571 = v12;
          do
          {
            v572 = __rev16(v23[3]);
            if (v9)
            {
              v573 = v572;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v574 = v18;
                v23[2] = v675;
                goto LABEL_859;
              }
            }

            else
            {
              v573 = 0xFFFF;
            }

            v575 = PDAlightenPDA_15239((v572 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v573, v20 | v21, v19);
            v576 = bswap32(v575);
            *v23 = HIWORD(v576);
            v23[1] = v576;
            v23[2] = bswap32(HIDWORD(v575)) >> 16;
            v574 = __rev16(HIWORD(v575));
LABEL_859:
            v23[3] = v574;
            v23 += 4;
            --v571;
          }

          while (v571);
          v23 += 4 * v672;
          if (!--v570)
          {
            goto LABEL_971;
          }
        }

      case 18:
        if (!v18)
        {
          goto LABEL_973;
        }

        v603 = v683[0];
        while (1)
        {
          v604 = v12;
          do
          {
            v605 = __rev16(v23[3]);
            if (v9)
            {
              v606 = v605;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v607 = v18;
                v23[2] = v675;
                goto LABEL_916;
              }
            }

            else
            {
              v606 = 0xFFFF;
            }

            v608 = PDAcolordodgePDA_15241((v605 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v606, v20 | v21, v19);
            v609 = bswap32(v608);
            *v23 = HIWORD(v609);
            v23[1] = v609;
            v23[2] = bswap32(HIDWORD(v608)) >> 16;
            v607 = __rev16(HIWORD(v608));
LABEL_916:
            v23[3] = v607;
            v23 += 4;
            --v604;
          }

          while (v604);
          v23 += 4 * v672;
          if (!--v603)
          {
            goto LABEL_971;
          }
        }

      case 19:
        if (!v18)
        {
          goto LABEL_973;
        }

        v626 = v683[0];
        while (1)
        {
          v627 = v12;
          do
          {
            v628 = __rev16(v23[3]);
            if (v9)
            {
              v629 = v628;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v630 = v18;
                v23[2] = v675;
                goto LABEL_947;
              }
            }

            else
            {
              v629 = 0xFFFF;
            }

            v631 = PDAcolorburnPDA_15242((v628 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v629, v20 | v21, v19);
            v632 = bswap32(v631);
            *v23 = HIWORD(v632);
            v23[1] = v632;
            v23[2] = bswap32(HIDWORD(v631)) >> 16;
            v630 = __rev16(HIWORD(v631));
LABEL_947:
            v23[3] = v630;
            v23 += 4;
            --v627;
          }

          while (v627);
          v23 += 4 * v672;
          if (!--v626)
          {
            goto LABEL_971;
          }
        }

      case 20:
        if (!v18)
        {
          goto LABEL_973;
        }

        v577 = v683[0];
        while (1)
        {
          v578 = v12;
          do
          {
            v579 = __rev16(v23[3]);
            if (v9)
            {
              v580 = v579;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v581 = v18;
                v23[2] = v675;
                goto LABEL_870;
              }
            }

            else
            {
              v580 = 0xFFFF;
            }

            v582 = PDAsoftlightPDA_15244((v579 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v580, v20 | v21, v19);
            v583 = bswap32(v582);
            *v23 = HIWORD(v583);
            v23[1] = v583;
            v23[2] = bswap32(HIDWORD(v582)) >> 16;
            v581 = __rev16(HIWORD(v582));
LABEL_870:
            v23[3] = v581;
            v23 += 4;
            --v578;
          }

          while (v578);
          v23 += 4 * v672;
          if (!--v577)
          {
            goto LABEL_971;
          }
        }

      case 21:
        if (!v18)
        {
          goto LABEL_973;
        }

        v586 = v683[0];
        while (1)
        {
          v587 = v12;
          do
          {
            v588 = __rev16(v23[3]);
            if (v9)
            {
              v589 = v588;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v590 = v18;
                v23[2] = v675;
                goto LABEL_885;
              }
            }

            else
            {
              v589 = 0xFFFF;
            }

            v591 = PDAhardlightPDA_15243((v588 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v589, v20 | v21, v19);
            v592 = bswap32(v591);
            *v23 = HIWORD(v592);
            v23[1] = v592;
            v23[2] = bswap32(HIDWORD(v591)) >> 16;
            v590 = __rev16(HIWORD(v591));
LABEL_885:
            v23[3] = v590;
            v23 += 4;
            --v587;
          }

          while (v587);
          v23 += 4 * v672;
          if (!--v586)
          {
            goto LABEL_971;
          }
        }

      case 22:
        if (!v18)
        {
          goto LABEL_973;
        }

        v619 = v683[0];
        while (1)
        {
          v620 = v12;
          do
          {
            v621 = __rev16(v23[3]);
            if (v9)
            {
              v622 = v621;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v623 = v18;
                v23[2] = v675;
                goto LABEL_936;
              }
            }

            else
            {
              v622 = 0xFFFF;
            }

            v624 = PDAdifferencePDA_15245((v621 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v622, v20 | v21, v19);
            v625 = bswap32(v624);
            *v23 = HIWORD(v625);
            v23[1] = v625;
            v23[2] = bswap32(HIDWORD(v624)) >> 16;
            v623 = __rev16(HIWORD(v624));
LABEL_936:
            v23[3] = v623;
            v23 += 4;
            --v620;
          }

          while (v620);
          v23 += 4 * v672;
          if (!--v619)
          {
            goto LABEL_971;
          }
        }

      case 23:
        if (!v18)
        {
          goto LABEL_973;
        }

        v633 = v683[0];
        while (1)
        {
          v634 = v12;
          do
          {
            v635 = __rev16(v23[3]);
            if (v9)
            {
              v636 = v635;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v637 = v18;
                v23[2] = v675;
                goto LABEL_958;
              }
            }

            else
            {
              v636 = 0xFFFF;
            }

            v638 = PDAexclusionPDA_15246((v635 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v636, v20 | v21, v19);
            v639 = bswap32(v638);
            *v23 = HIWORD(v639);
            v23[1] = v639;
            v23[2] = bswap32(HIDWORD(v638)) >> 16;
            v637 = __rev16(HIWORD(v638));
LABEL_958:
            v23[3] = v637;
            v23 += 4;
            --v634;
          }

          while (v634);
          v23 += 4 * v672;
          if (!--v633)
          {
            goto LABEL_971;
          }
        }

      case 24:
        if (!v18)
        {
          goto LABEL_973;
        }

        v535 = v683[0];
        while (1)
        {
          v536 = v12;
          do
          {
            v537 = __rev16(v23[3]);
            if (v9)
            {
              v538 = v537;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v539 = v18;
                v23[2] = v675;
                goto LABEL_809;
              }
            }

            else
            {
              v538 = 0xFFFF;
            }

            v540 = PDAhuePDA_15247((v537 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v538, v20 | v21, v19);
            v541 = bswap32(v540);
            *v23 = HIWORD(v541);
            v23[1] = v541;
            v23[2] = bswap32(HIDWORD(v540)) >> 16;
            v539 = __rev16(HIWORD(v540));
LABEL_809:
            v23[3] = v539;
            v23 += 4;
            --v536;
          }

          while (v536);
          v23 += 4 * v672;
          if (!--v535)
          {
            goto LABEL_971;
          }
        }

      case 25:
        if (!v18)
        {
          goto LABEL_973;
        }

        v528 = v683[0];
        while (1)
        {
          v529 = v12;
          do
          {
            v530 = __rev16(v23[3]);
            if (v9)
            {
              v531 = v530;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v532 = v18;
                v23[2] = v675;
                goto LABEL_798;
              }
            }

            else
            {
              v531 = 0xFFFF;
            }

            v533 = PDAsaturationPDA_15248((v530 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v531, v20 | v21, v19);
            v534 = bswap32(v533);
            *v23 = HIWORD(v534);
            v23[1] = v534;
            v23[2] = bswap32(HIDWORD(v533)) >> 16;
            v532 = __rev16(HIWORD(v533));
LABEL_798:
            v23[3] = v532;
            v23 += 4;
            --v529;
          }

          while (v529);
          v23 += 4 * v672;
          if (!--v528)
          {
            goto LABEL_971;
          }
        }

      case 26:
        if (!v18)
        {
          goto LABEL_973;
        }

        v640 = v683[0];
        do
        {
          v641 = v12;
          do
          {
            v642 = __rev16(v23[3]);
            if (v9)
            {
              v643 = v642;
              if (!v23[3])
              {
                *v23 = v679;
                v23[1] = v677;
                v644 = v18;
                v23[2] = v675;
                goto LABEL_969;
              }
            }

            else
            {
              v643 = 0xFFFF;
            }

            v645 = PDAluminosityPDA_15249(v20 | v21, v19, (v642 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v643);
            v646 = bswap32(v645);
            *v23 = HIWORD(v646);
            v23[1] = v646;
            v23[2] = bswap32(HIDWORD(v645)) >> 16;
            v644 = __rev16(HIWORD(v645));
LABEL_969:
            v23[3] = v644;
            v23 += 4;
            --v641;
          }

          while (v641);
          v23 += 4 * v672;
          --v640;
        }

        while (v640);
LABEL_971:
        v683[0] = 0;
        v4 = v649;
LABEL_972:
        v10 = v660;
LABEL_973:
        v23 = v661;
        v12 = v664;
        if (!v664)
        {
          return 1;
        }

        v682 = 0;
LABEL_975:
        if (shape_enum_clip_next(v12, &v682 + 1, &v682, v693, v683))
        {
          v664 = v12;
          v23 += 4 * v665 * v682 + 4 * SHIDWORD(v682);
          LODWORD(v12) = v693[0];
          continue;
        }

        v46 = v12;
LABEL_978:
        free(v46);
        return 1;
      case 27:
        if (!v18)
        {
          goto LABEL_973;
        }

        v492 = v683[0];
        break;
      default:
        goto LABEL_973;
    }

    break;
  }

LABEL_734:
  v493 = v12;
  while (1)
  {
    v494 = __rev16(v23[3]);
    if (!v9)
    {
      break;
    }

    v495 = v494;
    if (v23[3])
    {
      goto LABEL_739;
    }

    *v23 = v679;
    v23[1] = v677;
    v496 = v18;
    v23[2] = v675;
LABEL_740:
    v23[3] = v496;
    v23 += 4;
    if (!--v493)
    {
      v23 += 4 * v672;
      if (!--v492)
      {
        goto LABEL_971;
      }

      goto LABEL_734;
    }
  }

  v495 = 0xFFFF;
LABEL_739:
  v497 = PDAluminosityPDA_15249((v494 << 48) | ((bswap32(v23[2]) >> 16) << 32) | bswap32(v23[1]) & 0xFFFF0000 | (bswap32(*v23) >> 16), v495, v20 | v21, v19);
  v498 = bswap32(v497);
  *v23 = HIWORD(v498);
  v23[1] = v498;
  v23[2] = bswap32(HIDWORD(v497)) >> 16;
  v496 = __rev16(HIWORD(v497));
  goto LABEL_740;
}

_WORD *RGBA64_image_mark_rgba64(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v108 = *a2;
  v7 = *(result + 4);
  if (*(result + 5))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v107 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v104 = *(a2 + 9);
  v13 = *(a2 + 5) + v104 * a4;
  v14 = &v7[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v117 = result;
  v114 = *(a2 + 4);
  v105 = v12;
  v106 = v11;
  if (*(result + 22))
  {
    v15 = a3;
    v101 = ~(-1 << v12);
    v102 = *(a2 + 13);
    v103 = *(a2 + 11);
    v99 = -v11;
    v100 = v12 - 4;
    v16 = v14 - 8;
    v17 = v8 << 48;
    v18 = v6 ^ 0xFFFFu;
    v97 = v10 + 16 * v15 + 8;
    v98 = a5;
    v19 = BLEND16_21891;
    v112 = v8 << 48;
    while (1)
    {
      if (((v102 - v13) | (v13 - v103)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v13 & v101) >> v100) & 0xF;
        v21 = (v20 - 7) >= 9 ? v99 : v11;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(v117 + 4) + (v13 >> v12) * v11;
      v111 = a6;
      v110 = v13;
      if (v108 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v24 = v97;
        v25 = v98;
        while (1)
        {
          v26 = *(v24 - 1);
          v27 = *v24;
          v28 = v23 + v26;
          if (v16 >= v23 + v26)
          {
            v29 = (v23 + v26);
          }

          else
          {
            v29 = v16;
          }

          if (v29 < v7)
          {
            v29 = v7;
          }

          v30 = *v29;
          v31 = *v24 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v40 = (v28 + v21);
            if (v16 < v28 + v21)
            {
              v40 = v16;
            }

            if (v40 < v7)
            {
              v40 = v7;
            }

            v34 = *v40;
            v31 = v22;
            goto LABEL_42;
          }

LABEL_43:
          v41 = v30 | v17;
          if (v6 != 0xFFFF)
          {
            v42 = HIWORD(v41);
            result = (v42 * v18 + 0x8000 + ((v42 * v18 + 0x8000) >> 16));
            v41 = ((WORD2(v30) - ((WORD2(v30) * v18 + 0x8000 + ((WORD2(v30) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((v42 - (result >> 16)) << 48) | ((WORD1(v30) - ((WORD1(v30) * v18 + 0x8000 + ((WORD1(v30) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v30 - ((v30 * v18 + 0x8000 + ((v30 * v18 + 0x8000) >> 16)) >> 16));
          }

          v24 += 2;
          v43 = HIDWORD(v41);
          v44 = HIWORD(v41);
          v45 = bswap32(v41);
          *v9 = HIWORD(v45);
          v9[1] = v45;
          v9[2] = bswap32(v43) >> 16;
          v9[3] = __rev16(v44);
          v9 += 4;
          if (!--v25)
          {
            goto LABEL_84;
          }
        }

        v32 = v27 >> 4;
        v33 = (v28 + (v27 >> 4));
        if (v16 < v33)
        {
          v33 = v16;
        }

        if (v33 < v7)
        {
          v33 = v7;
        }

        v34 = *v33;
        if (v22)
        {
          v35 = (v28 + v21);
          if (v16 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v16;
          }

          if (v36 < v7)
          {
            v36 = v7;
          }

          v37 = *v36;
          v38 = &v35[v32];
          if (v16 < v38)
          {
            v38 = v16;
          }

          if (v38 < v7)
          {
            v38 = v7;
          }

          v39 = v19[v22];
          v30 = v30 - ((v39 & v30) >> v22) + ((v39 & v37) >> v22);
          v34 = v34 - ((v39 & v34) >> v22) + ((v39 & *v38) >> v22);
        }

LABEL_42:
        v30 = v30 - ((v19[v31] & v30) >> v31) + ((v19[v31] & v34) >> v31);
        goto LABEL_43;
      }

LABEL_84:
      v11 = v106;
      v9 += 4 * v107;
      LOBYTE(v12) = v105;
      v13 = v110 + v104;
      a6 = v111 - 1;
      if (v111 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_84;
    }

    v115 = v22;
    v46 = v97;
    v47 = v98;
    while (1)
    {
      v48 = *(v46 - 1);
      v49 = *v46;
      v50 = v23 + v48;
      if (v16 >= v23 + v48)
      {
        v51 = (v23 + v48);
      }

      else
      {
        v51 = v16;
      }

      if (v51 < v7)
      {
        v51 = v7;
      }

      v52 = *v51;
      v53 = *v46 & 0xF;
      if ((v49 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v62 = (v50 + v21);
        if (v16 < v50 + v21)
        {
          v62 = v16;
        }

        if (v62 < v7)
        {
          v62 = v7;
        }

        v56 = *v62;
        v53 = v115;
        goto LABEL_76;
      }

LABEL_77:
      v63 = v52 | v17;
      if (v6 != 0xFFFF)
      {
        v63 = ((WORD2(v52) - ((WORD2(v52) * v18 + 0x8000 + ((WORD2(v52) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v63) - ((HIWORD(v63) * v18 + 0x8000 + ((HIWORD(v63) * v18 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v52) - ((WORD1(v52) * v18 + 0x8000 + ((WORD1(v52) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v52 - ((v52 * v18 + 0x8000 + ((v52 * v18 + 0x8000) >> 16)) >> 16));
      }

      v64 = HIWORD(v63);
      if (HIWORD(v63))
      {
        if (v64 == 0xFFFF)
        {
          v65 = bswap32(v63);
          *v9 = HIWORD(v65);
          v9[1] = v65;
          v9[2] = bswap32(HIDWORD(v63)) >> 16;
          v9[3] = -1;
        }

        else
        {
          v66 = v18;
          v67 = v19;
          v68 = v16;
          v69 = v23;
          v70 = v7;
          v71 = v21;
          v72 = v22;
          result = RGBA64_DplusDM(v9, v63, ((bswap32(v9[2]) >> 16) << 32) | ((bswap32(v9[3]) >> 16) << 48) | bswap32(v9[1]) & 0xFFFF0000 | (bswap32(*v9) >> 16), v64 ^ 0xFFFF);
          v22 = v72;
          v21 = v71;
          v7 = v70;
          v23 = v69;
          v16 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v112;
          v6 = v114;
        }
      }

      v46 += 2;
      v9 += 4;
      if (!--v47)
      {
        goto LABEL_84;
      }
    }

    v54 = v49 >> 4;
    v55 = (v50 + (v49 >> 4));
    if (v16 < v55)
    {
      v55 = v16;
    }

    if (v55 < v7)
    {
      v55 = v7;
    }

    v56 = *v55;
    if (v22)
    {
      v57 = (v50 + v21);
      if (v16 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v16;
      }

      if (v58 < v7)
      {
        v58 = v7;
      }

      v59 = *v58;
      v60 = &v57[v54];
      if (v16 < v60)
      {
        v60 = v16;
      }

      if (v60 < v7)
      {
        v60 = v7;
      }

      v61 = v19[v115];
      v52 = v52 - ((v61 & v52) >> v115) + ((v61 & v59) >> v115);
      v56 = v56 - ((v61 & v56) >> v115) + ((v61 & *v60) >> v115);
    }

LABEL_76:
    v52 = v52 - ((v19[v53] & v52) >> v53) + ((v19[v53] & v56) >> v53);
    goto LABEL_77;
  }

  v116 = (v10 + 16 * a3);
  v73 = v14 - 8;
  v74 = v8 << 48;
  v75 = v6 ^ 0xFFFF;
  v113 = a5;
  do
  {
    v76 = *(v117 + 4);
    v77 = &v76[(v13 >> v12) * v11];
    v78 = a6;
    if (v108 == 1)
    {
      if (a5 >= 1)
      {
        v79 = v116;
        v80 = v113;
        do
        {
          v81 = *v79;
          v79 += 2;
          v82 = &v77[v81];
          if (v73 < &v77[v81])
          {
            v82 = v73;
          }

          if (v82 < v76)
          {
            v82 = v76;
          }

          v83 = *v82;
          v84 = v83 | v74;
          if (v6 != 0xFFFF)
          {
            v85 = HIWORD(v84);
            result = (v85 * v75 + 0x8000 + ((v85 * v75 + 0x8000) >> 16));
            v84 = ((WORD2(v83) - ((WORD2(v83) * v75 + 0x8000 + ((WORD2(v83) * v75 + 0x8000) >> 16)) >> 16)) << 32) | ((v85 - (result >> 16)) << 48) | ((WORD1(v83) - ((WORD1(v83) * v75 + 0x8000 + ((WORD1(v83) * v75 + 0x8000) >> 16)) >> 16)) << 16) | (v83 - ((v83 * v75 + 0x8000 + ((v83 * v75 + 0x8000) >> 16)) >> 16));
          }

          v86 = HIDWORD(v84);
          v87 = HIWORD(v84);
          v88 = bswap32(v84);
          *v9 = HIWORD(v88);
          v9[1] = v88;
          v9[2] = bswap32(v86) >> 16;
          v9[3] = __rev16(v87);
          v9 += 4;
          --v80;
        }

        while (v80);
      }
    }

    else
    {
      v89 = v116;
      v90 = v113;
      if (a5 >= 1)
      {
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v77[v91];
          if (v73 < &v77[v91])
          {
            v92 = v73;
          }

          if (v92 < *(v117 + 4))
          {
            v92 = *(v117 + 4);
          }

          v93 = *v92;
          v94 = v93 | v74;
          if (v6 != 0xFFFF)
          {
            v94 = ((WORD2(v93) - ((WORD2(v93) * v75 + 0x8000 + ((WORD2(v93) * v75 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v94) - ((HIWORD(v94) * v75 + 0x8000 + ((HIWORD(v94) * v75 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v93) - ((WORD1(v93) * v75 + 0x8000 + ((WORD1(v93) * v75 + 0x8000) >> 16)) >> 16)) << 16) | (v93 - ((v93 * v75 + 0x8000 + ((v93 * v75 + 0x8000) >> 16)) >> 16));
          }

          v95 = HIWORD(v94);
          if (HIWORD(v94))
          {
            if (v95 == 0xFFFF)
            {
              v96 = bswap32(v94);
              *v9 = HIWORD(v96);
              v9[1] = v96;
              v9[2] = bswap32(HIDWORD(v94)) >> 16;
              v9[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v9, v94, ((bswap32(v9[2]) >> 16) << 32) | ((bswap32(v9[3]) >> 16) << 48) | bswap32(v9[1]) & 0xFFFF0000 | (bswap32(*v9) >> 16), v95 ^ 0xFFFF);
              v6 = v114;
            }
          }

          v9 += 4;
          --v90;
        }

        while (v90);
      }
    }

    v11 = v106;
    v9 += 4 * v107;
    LOBYTE(v12) = v105;
    v13 += v104;
    a6 = v78 - 1;
  }

  while (v78 != 1);
  return result;
}

_WORD *RGBA64_image_mark_RGBA64(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 4);
  v133 = *a2;
  v8 = *(result + 4);
  if (*(result + 5))
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xFFFFLL;
  }

  v10 = *(a2 + 2);
  v132 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v129 = *(a2 + 9);
  v14 = *(a2 + 5) + v129 * a4;
  v15 = v8 + (*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3);
  v141 = result;
  v140 = *(a2 + 4);
  v130 = v13;
  v131 = v12;
  if (*(result + 22))
  {
    v16 = a3;
    v126 = ~(-1 << v13);
    v127 = *(a2 + 13);
    v128 = *(a2 + 11);
    v125 = v13 - 4;
    v17 = (v15 - 8);
    v18 = v9 << 48;
    v19 = v7 ^ 0xFFFFu;
    v123 = a5;
    v124 = -v12;
    v122 = v11 + 16 * v16 + 8;
    v137 = *(result + 4);
    v138 = (v15 - 8);
    while (1)
    {
      if (((v127 - v14) | (v14 - v128)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v14 & v126) >> v125) & 0xF;
        v21 = (v20 - 7) >= 9 ? v124 : v12;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(v141 + 4) + (v14 >> v13) * v12;
      v24 = 0x8000;
      v136 = a6;
      v135 = v14;
      if (v133 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v122;
        v26 = v123;
        while (1)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v23 + v27;
          if (v17 >= v23 + v27)
          {
            v30 = (v23 + v27);
          }

          else
          {
            v30 = v17;
          }

          if (v30 < v8)
          {
            v30 = v8;
          }

          v31 = ((bswap32(v30[3]) >> 16) << 48) | ((bswap32(v30[2]) >> 16) << 32) | bswap32(v30[1]) & 0xFFFF0000 | (bswap32(*v30) >> 16);
          v32 = *v25 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v29 + v21);
            if (v17 < v29 + v21)
            {
              v44 = v17;
            }

            if (v44 < v8)
            {
              v44 = v8;
            }

            v45 = BLEND16_21891[v22];
            v42 = v31 - ((v45 & v31) >> v22);
            v43 = ((((bswap32(v44[3]) >> 16) << 48) | ((bswap32(v44[2]) >> 16) << 32) | bswap32(v44[1]) & 0xFFFF0000 | (bswap32(*v44) >> 16)) & v45) >> v22;
            goto LABEL_43;
          }

LABEL_44:
          v46 = v31 | v18;
          if (v7 != 0xFFFF)
          {
            v47 = HIWORD(v46);
            result = (v47 * v19 + 0x8000 + ((v47 * v19 + 0x8000) >> 16));
            v46 = ((WORD2(v31) - ((WORD2(v31) * v19 + 0x8000 + ((WORD2(v31) * v19 + 0x8000) >> 16)) >> 16)) << 32) | ((v47 - (result >> 16)) << 48) | ((WORD1(v31) - ((WORD1(v31) * v19 + 0x8000 + ((WORD1(v31) * v19 + 0x8000) >> 16)) >> 16)) << 16) | (v31 - ((v31 * v19 + 0x8000 + ((v31 * v19 + 0x8000) >> 16)) >> 16));
          }

          v25 += 2;
          v48 = HIDWORD(v46);
          v49 = HIWORD(v46);
          v50 = bswap32(v46);
          *v10 = HIWORD(v50);
          v10[1] = v50;
          v10[2] = bswap32(v48) >> 16;
          v10[3] = __rev16(v49);
          v10 += 4;
          if (!--v26)
          {
            goto LABEL_86;
          }
        }

        v33 = v28 >> 4;
        v34 = (v29 + (v28 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v8)
        {
          v34 = v8;
        }

        result = bswap32(v34[1]);
        v35 = ((bswap32(v34[3]) >> 16) << 48) | ((bswap32(v34[2]) >> 16) << 32) | result & 0xFFFF0000 | (bswap32(*v34) >> 16);
        if (v22)
        {
          v36 = (v29 + v21);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v8)
          {
            v37 = v8;
          }

          v38 = ((bswap32(v37[3]) >> 16) << 48) | ((bswap32(v37[2]) >> 16) << 32) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16);
          v39 = (v36 + v33);
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v8)
          {
            v39 = v8;
          }

          result = bswap32(v39[1]);
          v40 = BLEND16_21891[v22];
          v31 = v31 - ((v40 & v31) >> v22) + ((v38 & v40) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + (((((bswap32(v39[3]) >> 16) << 48) | ((bswap32(v39[2]) >> 16) << 32) | result & 0xFFFF0000 | (bswap32(*v39) >> 16)) & v40) >> v22);
        }

        v41 = BLEND16_21891[v32];
        v42 = v31 - ((v41 & v31) >> v32);
        v43 = (v41 & v35) >> v32;
LABEL_43:
        v31 = v42 + v43;
        goto LABEL_44;
      }

LABEL_86:
      v12 = v131;
      v10 += 4 * v132;
      LOBYTE(v13) = v130;
      v14 = v135 + v129;
      a6 = v136 - 1;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_86;
    }

    v52 = v122;
    v51 = v123;
    while (1)
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v55 = v23 + v53;
      if (v17 >= v23 + v53)
      {
        v56 = (v23 + v53);
      }

      else
      {
        v56 = v17;
      }

      if (v56 < v8)
      {
        v56 = v8;
      }

      v57 = ((bswap32(v56[3]) >> 16) << 48) | ((bswap32(v56[2]) >> 16) << 32) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = *v52 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v70 = (v55 + v21);
        if (v17 < v55 + v21)
        {
          v70 = v17;
        }

        if (v70 < v8)
        {
          v70 = v8;
        }

        v71 = BLEND16_21891[v22];
        v68 = v57 - ((v71 & v57) >> v22);
        v69 = ((((bswap32(v70[3]) >> 16) << 48) | ((bswap32(v70[2]) >> 16) << 32) | bswap32(v70[1]) & 0xFFFF0000 | (bswap32(*v70) >> 16)) & v71) >> v22;
        goto LABEL_78;
      }

LABEL_79:
      v72 = v57 | v18;
      if (v7 != 0xFFFF)
      {
        v72 = ((WORD2(v57) - ((v24 + WORD2(v57) * v19 + ((v24 + WORD2(v57) * v19) >> 16)) >> 16)) << 32) | ((HIWORD(v72) - ((v24 + HIWORD(v72) * v19 + ((v24 + HIWORD(v72) * v19) >> 16)) >> 16)) << 48) | ((WORD1(v57) - ((v24 + WORD1(v57) * v19 + ((v24 + WORD1(v57) * v19) >> 16)) >> 16)) << 16) | (v57 - ((v24 + v57 * v19 + ((v24 + v57 * v19) >> 16)) >> 16));
      }

      v73 = HIWORD(v72);
      if (HIWORD(v72))
      {
        if (v73 == 0xFFFF)
        {
          v74 = bswap32(v72);
          *v10 = HIWORD(v74);
          v10[1] = v74;
          v10[2] = bswap32(HIDWORD(v72)) >> 16;
          v10[3] = -1;
        }

        else
        {
          v75 = v23;
          v76 = v18;
          v77 = v24;
          v78 = v21;
          v79 = v19;
          result = RGBA64_DplusDM(v10, v72, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v73 ^ 0xFFFF);
          v19 = v79;
          v21 = v78;
          v24 = v77;
          v18 = v76;
          v23 = v75;
          v8 = v137;
          v17 = v138;
          v7 = v140;
        }
      }

      v52 += 2;
      v10 += 4;
      if (!--v51)
      {
        goto LABEL_86;
      }
    }

    v59 = v54 >> 4;
    v60 = (v55 + (v54 >> 4));
    if (v17 < v60)
    {
      v60 = v17;
    }

    if (v60 < v8)
    {
      v60 = v8;
    }

    v61 = ((bswap32(v60[3]) >> 16) << 48) | ((bswap32(v60[2]) >> 16) << 32) | bswap32(v60[1]) & 0xFFFF0000 | (bswap32(*v60) >> 16);
    if (v22)
    {
      v62 = (v55 + v21);
      if (v17 >= v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v17;
      }

      if (v63 < v8)
      {
        v63 = v8;
      }

      v64 = ((bswap32(v63[3]) >> 16) << 48) | ((bswap32(v63[2]) >> 16) << 32) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16);
      v65 = (v62 + v59);
      if (v17 < v65)
      {
        v65 = v17;
      }

      if (v65 < v8)
      {
        v65 = v8;
      }

      v66 = BLEND16_21891[v22];
      v57 = v57 - ((v66 & v57) >> v22) + ((v64 & v66) >> v22);
      v61 = v61 - ((v66 & v61) >> v22) + (((((bswap32(v65[3]) >> 16) << 48) | ((bswap32(v65[2]) >> 16) << 32) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & v66) >> v22);
    }

    v67 = BLEND16_21891[v58];
    v68 = v57 - ((v67 & v57) >> v58);
    v69 = (v67 & v61) >> v58;
LABEL_78:
    v57 = v68 + v69;
    goto LABEL_79;
  }

  v139 = (v11 + 16 * a3);
  v80 = (v15 - 8);
  v81 = v9 << 48;
  v82 = v7 ^ 0xFFFF;
  v83 = vdup_n_s32(v7 ^ 0xFFFFu);
  v84 = xmmword_18439CC00;
  v85 = a5;
  do
  {
    v86 = v14;
    v87 = *(v141 + 4);
    v88 = v87 + (v14 >> v13) * v12;
    if (v133 == 1)
    {
      if (a5 >= 1)
      {
        v89 = v139;
        v90 = v85;
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v88[v91];
          if (v80 < &v88[v91])
          {
            v92 = v80;
          }

          if (v92 >= v87)
          {
            v93 = v92;
          }

          else
          {
            v93 = v87;
          }

          v94 = bswap32(v93[3]) >> 16;
          v95 = bswap32(*v93) >> 16;
          v96 = bswap32(v93[1]) >> 16;
          v97 = bswap32(v93[2]) >> 16;
          v98 = (v96 << 16) | (v94 << 48) | (v97 << 32) | v81 | v95;
          if (v7 != 0xFFFF)
          {
            v99.i32[0] = HIWORD(v98);
            v99.i32[1] = v97;
            v100 = vmla_s32(0x800000008000, v99, v83);
            v101 = vand_s8(vsub_s32(v99, vshr_n_u32(vsra_n_u32(v100, v100, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v102.i64[0] = v101.u32[0];
            v102.i64[1] = v101.u32[1];
            v103 = vshlq_u64(v102, v84);
            v98 = vorrq_s8(v103, vdupq_laneq_s64(v103, 1)).u64[0] | ((v96 - ((v96 * v82 + 0x8000 + ((v96 * v82 + 0x8000) >> 16)) >> 16)) << 16) | (v95 - ((v95 * v82 + 0x8000 + ((v95 * v82 + 0x8000) >> 16)) >> 16));
          }

          v104 = bswap32(v98);
          *v10 = HIWORD(v104);
          v10[1] = v104;
          v10[2] = bswap32(HIDWORD(v98)) >> 16;
          v10[3] = __rev16(HIWORD(v98));
          v10 += 4;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
      v105 = v139;
      v106 = v85;
      if (a5 >= 1)
      {
        do
        {
          v107 = *v105;
          v105 += 2;
          v108 = &v88[v107];
          v109 = *(v141 + 4);
          if (v80 < &v88[v107])
          {
            v108 = v80;
          }

          if (v108 >= v109)
          {
            v109 = v108;
          }

          v110 = bswap32(v109[3]) >> 16;
          v111 = bswap32(*v109) >> 16;
          v112 = bswap32(v109[1]) >> 16;
          v113 = bswap32(v109[2]) >> 16;
          v114 = (v112 << 16) | (v110 << 48) | (v113 << 32) | v81 | v111;
          if (v7 != 0xFFFF)
          {
            v115.i32[0] = HIWORD(v114);
            v115.i32[1] = v113;
            v116 = vmla_s32(0x800000008000, v115, v83);
            v117 = vand_s8(vsub_s32(v115, vshr_n_u32(vsra_n_u32(v116, v116, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v118.i64[0] = v117.u32[0];
            v118.i64[1] = v117.u32[1];
            v119 = vshlq_u64(v118, v84);
            v114 = vorrq_s8(v119, vdupq_laneq_s64(v119, 1)).u64[0] | ((v112 - ((v112 * v82 + 0x8000 + ((v112 * v82 + 0x8000) >> 16)) >> 16)) << 16) | (v111 - ((v111 * v82 + 0x8000 + ((v111 * v82 + 0x8000) >> 16)) >> 16));
          }

          v120 = HIWORD(v114);
          if (HIWORD(v114))
          {
            if (v120 == 0xFFFF)
            {
              v121 = bswap32(v114);
              *v10 = HIWORD(v121);
              v10[1] = v121;
              v10[2] = bswap32(HIDWORD(v114)) >> 16;
              v10[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v10, v114, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v120 ^ 0xFFFF);
              v84 = xmmword_18439CC00;
              v7 = v140;
            }
          }

          v10 += 4;
          --v106;
        }

        while (v106);
      }
    }

    v12 = v131;
    v10 += 4 * v132;
    LOBYTE(v13) = v130;
    v14 = v86 + v129;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t RGBA64_image_mark_rgb48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v116 = *a2;
  v7 = *(a2 + 2);
  v115 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v112 = *(a2 + 9);
  v11 = *(a2 + 5) + v112 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v127 = result;
  v14 = 0x8000;
  v124 = v6;
  v113 = v10;
  v114 = v9;
  if (*(result + 176))
  {
    v111 = *(a2 + 11);
    v110 = *(a2 + 13);
    v109 = ~(-1 << v10);
    v108 = v10 - 4;
    v15 = (v13 - 6);
    v16 = v6 ^ 0xFFFFu;
    result = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v106 = a5;
    v107 = -v9;
    v105 = v8 + 16 * a3 + 8;
    v17 = BLEND16_21891;
    v121 = (v13 - 6);
    v122 = v12;
    while (1)
    {
      if (((v110 - v11) | (v11 - v111)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v11 & v109) >> v108) & 0xF;
        v19 = (v18 - 7) >= 9 ? v107 : v9;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(v127 + 32) + (v11 >> v10) * v9;
      v119 = a6;
      v118 = v11;
      if (v116 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v105;
        v23 = v106;
        while (1)
        {
          v24 = *(v22 - 1);
          v25 = *v22;
          v26 = v21 + v24;
          if (v15 >= v21 + v24)
          {
            v27 = (v21 + v24);
          }

          else
          {
            v27 = v15;
          }

          if (v27 < v12)
          {
            v27 = v12;
          }

          v28 = *v27 | (*(v27 + 1) << 16);
          v29 = *v22 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v41 = (v26 + v19);
            if (v15 < v26 + v19)
            {
              v41 = v15;
            }

            if (v41 < v12)
            {
              v41 = v12;
            }

            v42 = v17[v20];
            v39 = v28 - ((v42 & v28) >> v20);
            v40 = ((*v41 | (*(v41 + 1) << 16)) & v42) >> v20;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v43 = v28 | 0xFFFF000000000000;
          }

          else
          {
            v43 = ((WORD1(v28) - ((v14 + WORD1(v28) * v16 + ((v14 + WORD1(v28) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v28) - ((v14 + WORD2(v28) * v16 + ((v14 + WORD2(v28) * v16) >> 16)) >> 16)) << 32) | (v28 - ((v14 + v28 * v16 + ((v14 + v28 * v16) >> 16)) >> 16)) | result;
          }

          v22 += 2;
          v44 = HIDWORD(v43);
          v45 = HIWORD(v43);
          v46 = bswap32(v43);
          *v7 = HIWORD(v46);
          v7[1] = v46;
          v7[2] = bswap32(v44) >> 16;
          v7[3] = __rev16(v45);
          v7 += 4;
          if (!--v23)
          {
            goto LABEL_85;
          }
        }

        v30 = v25 >> 4;
        v31 = (v26 + (v25 >> 4));
        if (v15 < v31)
        {
          v31 = v15;
        }

        if (v31 < v12)
        {
          v31 = v12;
        }

        v32 = *v31 | (*(v31 + 1) << 16);
        if (v20)
        {
          v33 = (v26 + v19);
          if (v15 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v15;
          }

          if (v34 < v12)
          {
            v34 = v12;
          }

          v35 = *v34 | (*(v34 + 1) << 16);
          v36 = (v33 + v30);
          if (v15 < v36)
          {
            v36 = v15;
          }

          if (v36 < v12)
          {
            v36 = v12;
          }

          v37 = v17[v20];
          v28 = v28 - ((v37 & v28) >> v20) + ((v35 & v37) >> v20);
          v32 = v32 - ((v37 & v32) >> v20) + (((*v36 | (*(v36 + 1) << 16)) & v37) >> v20);
        }

        v38 = v17[v29];
        v39 = v28 - ((v38 & v28) >> v29);
        v40 = (v38 & v32) >> v29;
LABEL_40:
        v28 = v39 + v40;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v114;
      v7 += 4 * v115;
      LOBYTE(v10) = v113;
      v11 = v118 + v112;
      a6 = v119 - 1;
      if (v119 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v125 = v20;
    v47 = v105;
    v48 = v106;
    while (1)
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      v51 = v21 + v49;
      if (v15 >= v21 + v49)
      {
        v52 = (v21 + v49);
      }

      else
      {
        v52 = v15;
      }

      if (v52 < v12)
      {
        v52 = v12;
      }

      v53 = *v52 | (*(v52 + 1) << 16);
      v54 = *v47 & 0xF;
      if ((v50 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v66 = (v51 + v19);
        if (v15 < v51 + v19)
        {
          v66 = v15;
        }

        if (v66 < v12)
        {
          v66 = v12;
        }

        v67 = v17[v125];
        v64 = v53 - ((v67 & v53) >> v125);
        v65 = ((*v66 | (*(v66 + 1) << 16)) & v67) >> v125;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v68 = v53 | 0xFFFF000000000000;
      }

      else
      {
        v68 = ((WORD1(v53) - ((v14 + WORD1(v53) * v16 + ((v14 + WORD1(v53) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v53) - ((v14 + WORD2(v53) * v16 + ((v14 + WORD2(v53) * v16) >> 16)) >> 16)) << 32) | (v53 - ((v14 + v53 * v16 + ((v14 + v53 * v16) >> 16)) >> 16)) | result;
      }

      v69 = HIWORD(v68);
      if (HIWORD(v68))
      {
        if (v69 == 0xFFFF)
        {
          v70 = bswap32(v68);
          *v7 = HIWORD(v70);
          v7[1] = v70;
          v7[2] = bswap32(HIDWORD(v68)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v71 = v17;
          v72 = result;
          v73 = v20;
          v74 = v14;
          v75 = v16;
          RGBA64_DplusDM(v7, v68, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v69 ^ 0xFFFF);
          v16 = v75;
          v14 = v74;
          v20 = v73;
          v17 = v71;
          result = v72;
          v15 = v121;
          v12 = v122;
          v6 = v124;
        }
      }

      v47 += 2;
      v7 += 4;
      if (!--v48)
      {
        goto LABEL_85;
      }
    }

    v55 = v50 >> 4;
    v56 = (v51 + (v50 >> 4));
    if (v15 < v56)
    {
      v56 = v15;
    }

    if (v56 < v12)
    {
      v56 = v12;
    }

    v57 = *v56 | (*(v56 + 1) << 16);
    if (v20)
    {
      v58 = (v51 + v19);
      if (v15 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v15;
      }

      if (v59 < v12)
      {
        v59 = v12;
      }

      v60 = *v59 | (*(v59 + 1) << 16);
      v61 = (v58 + v55);
      if (v15 < v61)
      {
        v61 = v15;
      }

      if (v61 < v12)
      {
        v61 = v12;
      }

      v62 = v17[v125];
      v53 = v53 - ((v62 & v53) >> v125) + ((v60 & v62) >> v125);
      v57 = v57 - ((v62 & v57) >> v125) + (((*v61 | (*(v61 + 1) << 16)) & v62) >> v125);
    }

    v63 = v17[v54];
    v64 = v53 - ((v63 & v53) >> v54);
    v65 = (v63 & v57) >> v54;
LABEL_76:
    v53 = v64 + v65;
    goto LABEL_77;
  }

  v126 = (v8 + 16 * a3);
  v76 = v13 - 6;
  v77 = v6 ^ 0xFFFF;
  v78 = (~(0xFFFF * v77 + 0x8000 + ((0xFFFF * v77 + 0x8000) >> 16)) >> 16) << 48;
  v123 = a5;
  do
  {
    v79 = *(v127 + 32);
    v80 = &v79[(v11 >> v10) * v9];
    v120 = a6;
    if (v116 == 1)
    {
      if (a5 >= 1)
      {
        v81 = v126;
        v82 = v123;
        do
        {
          v83 = *v81;
          v81 += 2;
          v84 = &v80[v83];
          if (v76 < &v80[v83])
          {
            v84 = v76;
          }

          if (v84 < v79)
          {
            v84 = v79;
          }

          v85 = *v84;
          v86 = *(v84 + 1);
          v87 = *(v84 + 2);
          v88 = v85 | (v86 << 16) | (v87 << 32) | 0xFFFF000000000000;
          v89 = ((v86 - ((v86 * v77 + 0x8000 + ((v86 * v77 + 0x8000) >> 16)) >> 16)) << 16) | ((v87 - ((v87 * v77 + 0x8000 + ((v87 * v77 + 0x8000) >> 16)) >> 16)) << 32) | (v85 - ((v85 * v77 + 0x8000 + ((v85 * v77 + 0x8000) >> 16)) >> 16)) | v78;
          if (v6 == 0xFFFF)
          {
            v89 = v88;
          }

          v90 = HIDWORD(v89);
          v91 = HIWORD(v89);
          v92 = bswap32(v89);
          *v7 = HIWORD(v92);
          v7[1] = v92;
          v7[2] = bswap32(v90) >> 16;
          v7[3] = __rev16(v91);
          v7 += 4;
          --v82;
        }

        while (v82);
      }
    }

    else
    {
      v93 = v126;
      v94 = v123;
      if (a5 >= 1)
      {
        do
        {
          v95 = *v93;
          v93 += 2;
          v96 = &v80[v95];
          if (v76 < &v80[v95])
          {
            v96 = v76;
          }

          if (v96 < *(v127 + 32))
          {
            v96 = *(v127 + 32);
          }

          v97 = *v96;
          v98 = *(v96 + 1);
          v99 = *(v96 + 2);
          v100 = v97 | (v98 << 16) | (v99 << 32) | 0xFFFF000000000000;
          v101 = ((v98 - ((v98 * v77 + 0x8000 + ((v98 * v77 + 0x8000) >> 16)) >> 16)) << 16) | ((v99 - ((v99 * v77 + 0x8000 + ((v99 * v77 + 0x8000) >> 16)) >> 16)) << 32) | (v97 - ((v97 * v77 + 0x8000 + ((v97 * v77 + 0x8000) >> 16)) >> 16)) | v78;
          if (v6 == 0xFFFF)
          {
            v102 = v100;
          }

          else
          {
            v102 = v101;
          }

          v103 = HIWORD(v102);
          if (HIWORD(v102))
          {
            if (v103 == 0xFFFF)
            {
              v104 = bswap32(v102);
              *v7 = HIWORD(v104);
              v7[1] = v104;
              v7[2] = bswap32(HIDWORD(v102)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v102, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v103 ^ 0xFFFF);
              v6 = v124;
            }
          }

          v7 += 4;
          --v94;
        }

        while (v94);
      }
    }

    v9 = v114;
    v7 += 4 * v115;
    LOBYTE(v10) = v113;
    v11 += v112;
    a6 = v120 - 1;
  }

  while (v120 != 1);
  return result;
}

unint64_t RGBA64_image_mark_RGB48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v117 = *a2;
  v7 = *(a2 + 2);
  v116 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v113 = *(a2 + 9);
  v11 = *(a2 + 5) + v113 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v127 = result;
  v118 = a5;
  v124 = v6;
  v114 = v10;
  v115 = v9;
  if (*(result + 176))
  {
    v14 = a3;
    v112 = *(a2 + 11);
    v111 = *(a2 + 13);
    v110 = ~(-1 << v10);
    v109 = v10 - 4;
    v15 = (v13 - 6);
    v16 = v6 ^ 0xFFFFu;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v107 = a5;
    v108 = -v9;
    v106 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    while (1)
    {
      if (((v111 - v11) | (v11 - v112)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v110) >> v109) & 0xF;
        v20 = (v19 - 7) >= 9 ? v108 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v120 = a6;
      v22 = *(v127 + 32) + (v11 >> v10) * v9;
      v119 = v11;
      if (v117 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v106;
        v24 = v107;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = bswap32(v28[1]) & 0xFFFF0000 | ((bswap32(v28[2]) >> 16) << 32) | (bswap32(*v28) >> 16);
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = ((bswap32(v42[1]) & 0xFFFF0000 | ((bswap32(v42[2]) >> 16) << 32) | (bswap32(*v42) >> 16)) & v43) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v44 = v29 | 0xFFFF000000000000;
          }

          else
          {
            v44 = ((WORD1(v29) - ((WORD1(v29) * v16 + 0x8000 + ((WORD1(v29) * v16 + 0x8000) >> 16)) >> 16)) << 16) | ((WORD2(v29) - ((WORD2(v29) * v16 + 0x8000 + ((WORD2(v29) * v16 + 0x8000) >> 16)) >> 16)) << 32) | (v29 - ((v29 * v16 + 0x8000 + ((v29 * v16 + 0x8000) >> 16)) >> 16)) | v17;
          }

          v23 += 2;
          v45 = HIDWORD(v44);
          v46 = HIWORD(v44);
          v47 = bswap32(v44);
          *v7 = HIWORD(v47);
          v7[1] = v47;
          v7[2] = bswap32(v45) >> 16;
          v7[3] = __rev16(v46);
          v7 += 4;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = bswap32(v32[1]) & 0xFFFF0000 | ((bswap32(v32[2]) >> 16) << 32) | (bswap32(*v32) >> 16);
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          result = bswap32(v35[1]) & 0xFFFF0000;
          v36 = result | ((bswap32(v35[2]) >> 16) << 32) | (bswap32(*v35) >> 16);
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v36 & v38) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + (((bswap32(v37[1]) & 0xFFFF0000 | ((bswap32(v37[2]) >> 16) << 32) | (bswap32(*v37) >> 16)) & v38) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        v29 = v40 + v41;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v115;
      v7 += 4 * v116;
      LOBYTE(v10) = v114;
      v11 = v119 + v113;
      a6 = v120 - 1;
      a5 = v118;
      if (v120 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v125 = v21;
    v48 = v106;
    v49 = v107;
    v122 = v21;
    while (1)
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      v52 = v22 + v50;
      if (v15 >= v22 + v50)
      {
        v53 = (v22 + v50);
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v12)
      {
        v53 = v12;
      }

      v54 = bswap32(v53[1]) & 0xFFFF0000 | ((bswap32(v53[2]) >> 16) << 32) | (bswap32(*v53) >> 16);
      v55 = *v48 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v67 = (v52 + v20);
        if (v15 < v52 + v20)
        {
          v67 = v15;
        }

        if (v67 < v12)
        {
          v67 = v12;
        }

        v68 = v18[v125];
        v65 = v54 - ((v68 & v54) >> v125);
        v66 = ((bswap32(v67[1]) & 0xFFFF0000 | ((bswap32(v67[2]) >> 16) << 32) | (bswap32(*v67) >> 16)) & v68) >> v125;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v69 = v54 | 0xFFFF000000000000;
      }

      else
      {
        v69 = ((WORD1(v54) - ((WORD1(v54) * v16 + 0x8000 + ((WORD1(v54) * v16 + 0x8000) >> 16)) >> 16)) << 16) | ((WORD2(v54) - ((WORD2(v54) * v16 + 0x8000 + ((WORD2(v54) * v16 + 0x8000) >> 16)) >> 16)) << 32) | (v54 - ((v54 * v16 + 0x8000 + ((v54 * v16 + 0x8000) >> 16)) >> 16)) | v17;
      }

      v70 = HIWORD(v69);
      if (HIWORD(v69))
      {
        if (v70 == 0xFFFF)
        {
          v71 = bswap32(v69);
          *v7 = HIWORD(v71);
          v7[1] = v71;
          v7[2] = bswap32(HIDWORD(v69)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v72 = v16;
          v73 = v20;
          v74 = v17;
          v75 = v18;
          v76 = v22;
          result = RGBA64_DplusDM(v7, v69, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v70 ^ 0xFFFF);
          v22 = v76;
          v18 = v75;
          v17 = v74;
          v20 = v73;
          v16 = v72;
          v21 = v122;
          v6 = v124;
        }
      }

      v48 += 2;
      v7 += 4;
      if (!--v49)
      {
        goto LABEL_85;
      }
    }

    v56 = v51 >> 4;
    v57 = (v52 + (v51 >> 4));
    if (v15 < v57)
    {
      v57 = v15;
    }

    if (v57 < v12)
    {
      v57 = v12;
    }

    v58 = bswap32(v57[1]) & 0xFFFF0000 | ((bswap32(v57[2]) >> 16) << 32) | (bswap32(*v57) >> 16);
    if (v21)
    {
      v59 = (v52 + v20);
      if (v15 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = bswap32(v60[1]) & 0xFFFF0000 | ((bswap32(v60[2]) >> 16) << 32) | (bswap32(*v60) >> 16);
      v62 = (v59 + v56);
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v12)
      {
        v62 = v12;
      }

      v63 = v18[v125];
      v54 = v54 - ((v63 & v54) >> v125) + ((v61 & v63) >> v125);
      v58 = v58 - ((v63 & v58) >> v125) + (((bswap32(v62[1]) & 0xFFFF0000 | ((bswap32(v62[2]) >> 16) << 32) | (bswap32(*v62) >> 16)) & v63) >> v125);
    }

    v64 = v18[v55];
    v65 = v54 - ((v64 & v54) >> v55);
    v66 = (v64 & v58) >> v55;
LABEL_76:
    v54 = v65 + v66;
    goto LABEL_77;
  }

  v126 = (v8 + 16 * a3);
  v77 = v13 - 6;
  v78 = v6 ^ 0xFFFF;
  v79 = (~(0xFFFF * v78 + 0x8000 + ((0xFFFF * v78 + 0x8000) >> 16)) >> 16) << 48;
  v123 = a5;
  do
  {
    v80 = *(v127 + 32);
    v81 = &v80[(v11 >> v10) * v9];
    v121 = a6;
    if (v117 == 1)
    {
      if (a5 >= 1)
      {
        v82 = v126;
        v83 = v123;
        do
        {
          v84 = *v82;
          v82 += 2;
          v85 = &v81[v84];
          if (v77 < &v81[v84])
          {
            v85 = v77;
          }

          if (v85 < v80)
          {
            v85 = v80;
          }

          v86 = bswap32(*v85) >> 16;
          v87 = bswap32(*(v85 + 1)) >> 16;
          v88 = bswap32(*(v85 + 2)) >> 16;
          v89 = v86 | (v88 << 32) | (v87 << 16) | 0xFFFF000000000000;
          v90 = ((v87 - ((v87 * v78 + 0x8000 + ((v87 * v78 + 0x8000) >> 16)) >> 16)) << 16) | ((v88 - ((v88 * v78 + 0x8000 + ((v88 * v78 + 0x8000) >> 16)) >> 16)) << 32) | (v86 - ((v86 * v78 + 0x8000 + ((v86 * v78 + 0x8000) >> 16)) >> 16)) | v79;
          if (v6 == 0xFFFF)
          {
            v90 = v89;
          }

          v91 = HIDWORD(v90);
          v92 = HIWORD(v90);
          v93 = bswap32(v90);
          *v7 = HIWORD(v93);
          v7[1] = v93;
          v7[2] = bswap32(v91) >> 16;
          v7[3] = __rev16(v92);
          v7 += 4;
          --v83;
        }

        while (v83);
      }
    }

    else
    {
      v94 = v126;
      v95 = v123;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = &v81[v96];
          if (v77 < &v81[v96])
          {
            v97 = v77;
          }

          if (v97 < *(v127 + 32))
          {
            v97 = *(v127 + 32);
          }

          v98 = bswap32(*v97) >> 16;
          v99 = bswap32(*(v97 + 1)) >> 16;
          v100 = bswap32(*(v97 + 2)) >> 16;
          v101 = v98 | (v100 << 32) | (v99 << 16) | 0xFFFF000000000000;
          v102 = ((v99 - ((v99 * v78 + 0x8000 + ((v99 * v78 + 0x8000) >> 16)) >> 16)) << 16) | ((v100 - ((v100 * v78 + 0x8000 + ((v100 * v78 + 0x8000) >> 16)) >> 16)) << 32) | (v98 - ((v98 * v78 + 0x8000 + ((v98 * v78 + 0x8000) >> 16)) >> 16)) | v79;
          if (v6 == 0xFFFF)
          {
            v103 = v101;
          }

          else
          {
            v103 = v102;
          }

          v104 = HIWORD(v103);
          if (HIWORD(v103))
          {
            if (v104 == 0xFFFF)
            {
              v105 = bswap32(v103);
              *v7 = HIWORD(v105);
              v7[1] = v105;
              v7[2] = bswap32(HIDWORD(v103)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v103, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v104 ^ 0xFFFF);
              v6 = v124;
            }
          }

          v7 += 4;
          --v95;
        }

        while (v95);
      }
    }

    v9 = v115;
    v7 += 4 * v116;
    LOBYTE(v10) = v114;
    v11 += v113;
    a6 = v121 - 1;
    a5 = v118;
  }

  while (v121 != 1);
  return result;
}

_WORD *RGBA64_image_mark_w16(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v124 = *a2;
  v7 = *(a2 + 2);
  v123 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v120 = *(a2 + 9);
  v11 = *(a2 + 5) + v120 * a4;
  v12 = *(result + 4);
  v13 = v12 + (*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3);
  v135 = result;
  v121 = v10;
  v122 = v9;
  if (*(result + 22))
  {
    v14 = a3;
    v119 = *(a2 + 11);
    v118 = *(a2 + 13);
    v117 = ~(-1 << v10);
    v116 = v10 - 4;
    v15 = (v13 - 4);
    v16 = v6 ^ 0xFFFF;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v114 = a5;
    v115 = -v9;
    v113 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    while (1)
    {
      if (((v118 - v11) | (v11 - v119)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v117) >> v116) & 0xF;
        v20 = (v19 - 7) >= 9 ? v115 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = *(v135 + 4) + (v11 >> v10) * v9;
      v128 = a6;
      v126 = v11;
      if (v124 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v113;
        v24 = v114;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = *v28;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = (v43 & *v42) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          v23 += 2;
          v44 = (0x100010001 * v29) | 0xFFFF000000000000;
          v45 = (v29 | 0xFFFF0000) * v16;
          if (v45 >= 0xFFFE8000)
          {
            v45 = -98304;
          }

          v46 = (v29 - ((v45 + 0x8000 + ((v45 + 0x8000) >> 16)) >> 16));
          v47 = (v46 << 16) | (v46 << 32) | v17 | v46;
          if (v6 == 0xFFFF)
          {
            v47 = v44;
          }

          v48 = HIDWORD(v47);
          v49 = HIWORD(v47);
          v50 = bswap32(v47);
          *v7 = HIWORD(v50);
          v7[1] = v50;
          v7[2] = bswap32(v48) >> 16;
          v7[3] = __rev16(v49);
          v7 += 4;
          if (!--v24)
          {
            goto LABEL_88;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = *v32;
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = *v35;
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          LODWORD(v29) = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          LODWORD(v33) = v33 - ((v38 & v33) >> v21) + ((v38 & *v37) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        LOWORD(v29) = v40 + v41;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v122;
      v7 += 4 * v123;
      LOBYTE(v10) = v121;
      v11 = v126 + v120;
      a6 = v128 - 1;
      if (v128 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v133 = v21;
    v51 = v113;
    v52 = v114;
    v131 = v20;
    v130 = v21;
    while (1)
    {
      v53 = *(v51 - 1);
      v54 = *v51;
      v55 = v22 + v53;
      if (v15 >= v22 + v53)
      {
        v56 = (v22 + v53);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v12)
      {
        v56 = v12;
      }

      v57 = *v56;
      v58 = *v51 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v70 = (v55 + v20);
        if (v15 < v55 + v20)
        {
          v70 = v15;
        }

        if (v70 < v12)
        {
          v70 = v12;
        }

        v71 = v18[v133];
        v68 = v57 - ((v71 & v57) >> v133);
        v69 = (v71 & *v70) >> v133;
        goto LABEL_77;
      }

LABEL_78:
      v72 = (0x100010001 * v57) | 0xFFFF000000000000;
      v73 = (v57 | 0xFFFF0000) * v16;
      if (v73 >= 0xFFFE8000)
      {
        v73 = -98304;
      }

      v74 = (v57 - ((v73 + 0x8000 + ((v73 + 0x8000) >> 16)) >> 16));
      v75 = (v74 << 16) | (v74 << 32) | v17 | v74;
      if (v6 == 0xFFFF)
      {
        v76 = v72;
      }

      else
      {
        v76 = v75;
      }

      v77 = HIWORD(v76);
      if (HIWORD(v76))
      {
        if (v77 == 0xFFFF)
        {
          v78 = bswap32(v76);
          *v7 = HIWORD(v78);
          v7[1] = v78;
          v7[2] = bswap32(HIDWORD(v76)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v79 = v6;
          v80 = v17;
          v81 = v22;
          v82 = v18;
          result = RGBA64_DplusDM(v7, v76, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v77 ^ 0xFFFF);
          v18 = v82;
          v22 = v81;
          v17 = v80;
          v6 = v79;
          v21 = v130;
          v20 = v131;
        }
      }

      v51 += 2;
      v7 += 4;
      if (!--v52)
      {
        goto LABEL_88;
      }
    }

    v59 = v54 >> 4;
    v60 = (v55 + (v54 >> 4));
    if (v15 < v60)
    {
      v60 = v15;
    }

    if (v60 < v12)
    {
      v60 = v12;
    }

    v61 = *v60;
    if (v21)
    {
      v62 = (v55 + v20);
      if (v15 >= v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v15;
      }

      if (v63 < v12)
      {
        v63 = v12;
      }

      v64 = *v63;
      v65 = (v62 + v59);
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v12)
      {
        v65 = v12;
      }

      v66 = v18[v133];
      LODWORD(v57) = v57 - ((v66 & v57) >> v133) + ((v66 & v64) >> v133);
      LODWORD(v61) = v61 - ((v66 & v61) >> v133) + ((v66 & *v65) >> v133);
    }

    v67 = v18[v58];
    v68 = v57 - ((v67 & v57) >> v58);
    v69 = (v67 & v61) >> v58;
LABEL_77:
    LOWORD(v57) = v68 + v69;
    goto LABEL_78;
  }

  v83 = v13 - 4;
  v84 = v6 ^ 0xFFFF;
  v85 = (~(0xFFFF * v84 + 0x8000 + ((0xFFFF * v84 + 0x8000) >> 16)) >> 16) << 48;
  v132 = a5;
  v134 = (v8 + 16 * a3);
  do
  {
    v86 = *(v135 + 4);
    v87 = &v86[(v11 >> v10) * v9];
    v129 = a6;
    v127 = v11;
    if (v124 == 1)
    {
      if (a5 >= 1)
      {
        v89 = v132;
        v88 = v134;
        do
        {
          v90 = *v88;
          v88 += 2;
          v91 = &v87[v90];
          if (v83 < &v87[v90])
          {
            v91 = v83;
          }

          if (v91 < v86)
          {
            v91 = v86;
          }

          v92 = *v91;
          v93 = (v92 | 0xFFFF0000) * v84;
          if (v93 >= 0xFFFE8000)
          {
            v93 = -98304;
          }

          v94 = 0x100010001 * v92;
          v95 = (v92 - ((v93 + 0x8000 + ((v93 + 0x8000) >> 16)) >> 16));
          v96 = v94 | 0xFFFF000000000000;
          v97 = (v95 << 16) | (v95 << 32) | v85 | v95;
          if (v6 == 0xFFFF)
          {
            v97 = v96;
          }

          v98 = HIDWORD(v97);
          v99 = HIWORD(v97);
          v100 = bswap32(v97);
          v7[1] = v100;
          *v7 = HIWORD(v100);
          v7[2] = bswap32(v98) >> 16;
          v7[3] = __rev16(v99);
          v7 += 4;
          --v89;
        }

        while (v89);
      }
    }

    else
    {
      v102 = v132;
      v101 = v134;
      if (a5 >= 1)
      {
        do
        {
          v103 = *v101;
          v101 += 2;
          v104 = &v87[v103];
          if (v83 < &v87[v103])
          {
            v104 = v83;
          }

          if (v104 < *(v135 + 4))
          {
            v104 = *(v135 + 4);
          }

          v105 = *v104;
          v106 = (0x100010001 * v105) | 0xFFFF000000000000;
          v107 = (v105 | 0xFFFF0000) * v84;
          if (v107 >= 0xFFFE8000)
          {
            v107 = -98304;
          }

          v108 = (v105 - ((v107 + 0x8000 + ((v107 + 0x8000) >> 16)) >> 16));
          v109 = (v108 << 16) | (v108 << 32) | v85 | v108;
          if (v6 == 0xFFFF)
          {
            v110 = v106;
          }

          else
          {
            v110 = v109;
          }

          v111 = HIWORD(v110);
          if (HIWORD(v110))
          {
            if (v111 == 0xFFFF)
            {
              v112 = bswap32(v110);
              *v7 = HIWORD(v112);
              v7[1] = v112;
              v7[2] = bswap32(HIDWORD(v110)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v110, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v111 ^ 0xFFFF);
            }
          }

          v7 += 4;
          --v102;
        }

        while (v102);
      }
    }

    v9 = v122;
    v7 += 4 * v123;
    LOBYTE(v10) = v121;
    v11 = v127 + v120;
    a6 = v129 - 1;
  }

  while (v129 != 1);
  return result;
}