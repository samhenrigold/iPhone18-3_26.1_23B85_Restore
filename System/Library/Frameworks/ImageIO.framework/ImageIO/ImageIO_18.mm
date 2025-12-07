uint64_t forward_DCT(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v10 = 0;
    v11 = *(*(result + 552) + 8 * *(a2 + 4) + 88);
    v12 = *(a2 + 88);
    v13 = a3 + 8 * a5;
    v14 = a7;
    memset(v23, 0, sizeof(v23));
    do
    {
      result = v11(v23, v13, a6);
      for (i = 0; i != 64; ++i)
      {
        v16 = *(v12 + 4 * i);
        v17 = *(v23 + i);
        v18 = v16 >> 1;
        if (v17 < 0)
        {
          v21 = v18 - v17;
          if (v21 >= v16)
          {
            v22 = v21 / v16;
          }

          else
          {
            v22 = 0;
          }

          v20 = -v22;
        }

        else
        {
          v19 = v17 + v18;
          if (v19 >= v16)
          {
            v20 = v19 / v16;
          }

          else
          {
            LOWORD(v20) = 0;
          }
        }

        *(a4 + 2 * i) = v20;
      }

      ++v10;
      a6 = (*(a2 + 36) + a6);
      a4 += 128;
    }

    while (v10 != v14);
  }

  return result;
}

uint64_t forward_DCT_float(uint64_t result, uint64_t a2, uint64_t a3, int16x8_t *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v10 = 0;
    v11 = *(*(result + 552) + 8 * *(a2 + 4) + 168);
    v12 = a3 + 8 * a5;
    memset(v19, 0, sizeof(v19));
    v13 = a7;
    v14 = *(a2 + 88);
    v18 = vdupq_n_s32(0x46800100u);
    do
    {
      result = v11(v19, v12, a6);
      v15.i64[0] = 0xC000C000C000C000;
      v15.i64[1] = 0xC000C000C000C000;
      v16 = 0;
      v17 = a4;
      do
      {
        *v17++ = vaddq_s16(vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(vmulq_f32(v19[v16], *(v14 + v16 * 16)), v18)), vcvtq_s32_f32(vaddq_f32(vmulq_f32(v19[v16 + 1], *(v14 + v16 * 16 + 16)), v18))), v15);
        v16 += 2;
      }

      while (v16 != 16);
      ++v10;
      a6 = (*(a2 + 36) + a6);
      a4 += 8;
    }

    while (v10 != v13);
  }

  return result;
}

uint64_t _cg_jinit_1pass_quantizer(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 656) = v2;
  *v2 = start_pass_1_quant;
  v2[2] = finish_pass_1_quant;
  v2[3] = new_color_map_1_quant;
  v2[14] = 0;
  v2[10] = 0;
  if (*(a1 + 144) >= 5)
  {
    v3 = *a1;
    *(v3 + 10) = 57;
    *(v3 + 12) = 4;
    (**a1)(a1);
  }

  v4 = *(a1 + 120);
  if (v4 >= 257)
  {
    v5 = *a1;
    *(v5 + 10) = 59;
    *(v5 + 12) = 256;
    (**a1)(a1);
    v4 = *(a1 + 120);
  }

  v6 = *(a1 + 656);
  v7 = *(a1 + 144);
  v8 = v4;
  v9 = 1;
  do
  {
    v10 = v9++;
    v11 = v9;
    if (v7 >= 2)
    {
      v12 = v7 - 1;
      v11 = v9;
      do
      {
        v11 *= v9;
        --v12;
      }

      while (v12);
    }
  }

  while (v11 <= v4);
  if (v10 <= 1)
  {
    v13 = *a1;
    *(v13 + 10) = 58;
    *(v13 + 12) = v11;
    (**a1)(a1);
  }

  v14 = v6 + 60;
  if (v7 < 1)
  {
    v28 = 1;
  }

  else
  {
    v15 = vdupq_n_s64(v7 - 1);
    v16 = (v7 + 3) & 0xFFFFFFFC;
    v17 = vdupq_n_s32(v10);
    v18 = xmmword_186205EB0;
    v19 = xmmword_186205EC0;
    v20 = (v6 + 72);
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = v21;
      v24 = vcgeq_u64(v15, v19);
      v25 = vmovn_s64(v24);
      if (vuzp1_s16(v25, *v15.i8).u8[0])
      {
        *(v20 - 3) = v10;
      }

      if (vuzp1_s16(v25, *&v15).i8[2])
      {
        *(v20 - 2) = v10;
      }

      v26 = vcgeq_u64(v15, v18);
      if (vuzp1_s16(*&v15, vmovn_s64(*&v26)).i32[1])
      {
        *(v20 - 1) = v10;
        *v20 = v10;
      }

      v21 = vmulq_s32(v21, v17);
      v18 = vaddq_s64(v18, v22);
      v19 = vaddq_s64(v19, v22);
      v20 += 4;
      v16 -= 4;
    }

    while (v16);
    v27 = vbslq_s8(vuzp1q_s32(v24, v26), v21, v23);
    *v27.i8 = vmul_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v28 = (v27.i32[0] * v27.i32[1]);
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = v29;
      if (*(a1 + 64) == 2)
      {
        v31 = select_ncolors_RGB_order[v29];
      }

      v32 = *(v14 + 4 * v31);
      v33 = v32 + 1;
      v34 = v28 / v32 * (v32 + 1);
      if (v34 <= v8)
      {
        v30 = 0;
        *(v14 + 4 * v31) = v33;
        ++v29;
        v28 = v34;
        if (v29 != v7)
        {
          continue;
        }
      }

      v29 = 0;
      v35 = v30;
      v30 = 1;
      if (v35)
      {
        break;
      }
    }
  }

  v36 = *a1;
  if (*(a1 + 144) == 3)
  {
    *(v36 + 12) = v28;
    *(v36 + 13) = *(v6 + 60);
    *(v36 + 14) = *(v6 + 64);
    *(v36 + 15) = *(v6 + 68);
    v37 = 96;
    v38 = v36;
  }

  else
  {
    *(v36 + 12) = v28;
    v38 = *a1;
    v37 = 97;
  }

  *(v36 + 10) = v37;
  (v38[1])(a1, 1);
  v39 = (*(*(a1 + 8) + 16))(a1, 1, v28, *(a1 + 144));
  v40 = *(a1 + 144);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = v28;
    do
    {
      v43 = *(v14 + 4 * v41);
      v44 = v42 / v43;
      if (v43 >= 1)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          if (v45 * v44 < v28)
          {
            v47 = v46;
            do
            {
              if (v44 >= 1)
              {
                v48 = v47;
                v49 = (v42 / v43);
                do
                {
                  *(*(v39 + 8 * v41) + v48++) = (((v43 - 1) >> 1) - v45 + (v45 << 8)) / (v43 - 1);
                  --v49;
                }

                while (v49);
              }

              v47 += v42;
            }

            while (v47 < v28);
          }

          ++v45;
          v46 += v44;
        }

        while (v45 != v43);
        v40 = *(a1 + 144);
      }

      ++v41;
      v42 /= v43;
    }

    while (v41 < v40);
  }

  *(v6 + 32) = v39;
  *(v6 + 40) = v28;
  result = create_colorindex(a1);
  if (*(a1 + 112) == 2)
  {

    return alloc_fs_workspace(a1);
  }

  return result;
}

void start_pass_1_quant(uint64_t *a1)
{
  v2 = a1[82];
  a1[20] = *(v2 + 32);
  *(a1 + 39) = *(v2 + 40);
  v3 = *(a1 + 28);
  if (v3 == 2)
  {
    v19 = *(v2 + 112);
    v18 = v2 + 112;
    *(v18 - 104) = quantize_fs_dither;
    *(v18 + 32) = 0;
    if (!v19)
    {
      alloc_fs_workspace(a1);
    }

    if (*(a1 + 36) >= 1)
    {
      v20 = 0;
      v21 = 2 * (*(a1 + 34) + 2);
      do
      {
        bzero(*(v18 + 8 * v20++), v21);
      }

      while (v20 < *(a1 + 36));
    }
  }

  else if (v3 == 1)
  {
    v5 = quantize_ord_dither;
    if (*(a1 + 36) == 3)
    {
      v5 = quantize3_ord_dither;
    }

    *(v2 + 8) = v5;
    *(v2 + 76) = 0;
    if (!*(v2 + 56))
    {
      create_colorindex(a1);
    }

    if (!*(v2 + 80))
    {
      v6 = *(a1 + 36);
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = a1[82];
        v9 = v8 + 60;
        v10 = v8 + 80;
        do
        {
          v11 = *(v9 + 4 * v7);
          if (!v7)
          {
            goto LABEL_19;
          }

          v12 = 0;
          while (v11 != *(v9 + 4 * v12))
          {
            if (v7 == ++v12)
            {
              goto LABEL_19;
            }
          }

          v13 = *(v9 + 8 * v12 + 20);
          if (!v13)
          {
LABEL_19:
            v13 = (*a1[1])(a1, 1, 1024);
            v14 = 0;
            v15 = &base_dither_matrix;
            v16 = v13;
            do
            {
              for (i = 0; i != 16; ++i)
              {
                *(v16 + 4 * i) = 255 * (255 - 2 * v15[i]) / ((v11 << 9) - 512);
              }

              ++v14;
              v16 += 64;
              v15 += 16;
            }

            while (v14 != 16);
            v6 = *(a1 + 36);
          }

          *(v10 + 8 * v7++) = v13;
        }

        while (v7 < v6);
      }
    }
  }

  else if (v3)
  {
    v22 = *a1;
    *(v22 + 40) = 49;
    v23 = *v22;

    v23();
  }

  else
  {
    if (*(a1 + 36) == 3)
    {
      v4 = color_quantize3;
    }

    else
    {
      v4 = color_quantize;
    }

    *(v2 + 8) = v4;
  }
}

uint64_t new_color_map_1_quant(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 40) = 47;
  return (*v1)(a1);
}

uint64_t create_colorindex(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = *(a1 + 112);
  if (v3 == 1)
  {
    v4 = 766;
  }

  else
  {
    v4 = 256;
  }

  *(v2 + 56) = v3 == 1;
  result = (*(*(a1 + 8) + 16))(a1, 1, v4, *(a1 + 144));
  *(v2 + 48) = result;
  if (*(a1 + 144) >= 1)
  {
    v6 = 0;
    v7 = *(v2 + 40);
    do
    {
      v8 = *(v2 + 60 + 4 * v6);
      v9 = *(v2 + 48);
      if (v3 == 1)
      {
        *(v9 + 8 * v6) += 255;
        v9 = *(v2 + 48);
      }

      v10 = 0;
      v11 = 0;
      v12 = *(v9 + 8 * v6);
      v13 = 2 * v8 - 2;
      result = (v8 + 254) / v13;
      v14 = v8 + 764;
      v7 /= v8;
      do
      {
        if (v10 > result)
        {
          v15 = v14 + 510 * v11;
          do
          {
            result = v15 / v13;
            ++v11;
            v15 += 510;
          }

          while (v10 > result);
        }

        v12[v10++] = v11 * v7;
      }

      while (v10 != 256);
      if (v3 == 1)
      {
        v16 = 0;
        v17 = v12 - 1;
        v18 = *v12;
        do
        {
          *v17-- = v18;
          v12[v16++ + 256] = v12[255];
        }

        while (v16 != 255);
      }

      ++v6;
    }

    while (v6 < *(a1 + 144));
  }

  return result;
}

uint64_t alloc_fs_workspace(uint64_t result)
{
  if (*(result + 144) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 2 * (*(result + 136) + 2);
    v4 = *(result + 656) + 112;
    do
    {
      result = (*(*(v1 + 8) + 8))(v1, 1, v3);
      *(v4 + 8 * v2++) = result;
    }

    while (v2 < *(v1 + 144));
  }

  return result;
}

uint64_t color_quantize3(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(*(result + 656) + 48);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = *(result + 136);
    do
    {
      if (v9)
      {
        v10 = *(a3 + 8 * v4);
        v11 = *(a2 + 8 * v4);
        v12 = v9;
        do
        {
          result = *(v7 + v11[1]);
          *v10++ = result + *(v6 + *v11) + *(v8 + v11[2]);
          v11 += 3;
          --v12;
        }

        while (v12);
      }

      ++v4;
    }

    while (v4 != a4);
  }

  return result;
}

uint64_t color_quantize(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(*(result + 656) + 48);
    v6 = *(result + 136);
    v7 = *(result + 144);
    v8 = a4;
    do
    {
      if (v6)
      {
        v9 = *(a3 + 8 * v4);
        v10 = *(a2 + 8 * v4);
        v11 = v6;
        do
        {
          if (v7 < 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            result = v7;
            v13 = v5;
            v14 = v10;
            do
            {
              v16 = *v13++;
              v15 = v16;
              LODWORD(v16) = *v14++;
              v12 += *(v15 + v16);
              --result;
            }

            while (result);
            v10 += (v7 - 1) + 1;
          }

          *v9++ = v12;
          --v11;
        }

        while (v11);
      }

      ++v4;
    }

    while (v4 != v8);
  }

  return result;
}

uint64_t quantize3_ord_dither(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(result + 656);
    v6 = *(v5 + 48);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(result + 136);
    v11 = a4;
    v12 = *(v5 + 76);
    do
    {
      if (v10)
      {
        v13 = 0;
        v14 = *(v5 + 80) + (v12 << 6);
        result = *(v5 + 88) + (v12 << 6);
        v15 = *(v5 + 96) + (v12 << 6);
        v16 = *(a3 + 8 * v4);
        v17 = *(a2 + 8 * v4);
        v18 = v10;
        do
        {
          *v16++ = *(v8 + *(result + 4 * v13) + v17[1]) + *(v7 + *(v14 + 4 * v13) + *v17) + *(v9 + *(v15 + 4 * v13) + v17[2]);
          v13 = (v13 + 1) & 0xF;
          v17 += 3;
          --v18;
        }

        while (v18);
      }

      v12 = (v12 + 1) & 0xF;
      *(v5 + 76) = v12;
      ++v4;
    }

    while (v4 != v11);
  }

  return result;
}

void quantize_ord_dither(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    v9 = *(a1 + 656);
    v10 = *(a1 + 144);
    v11 = a4;
    do
    {
      bzero(*(a3 + 8 * v6), v7);
      v12 = *(v9 + 76);
      if (v10 >= 1)
      {
        v13 = 0;
        do
        {
          if (v7)
          {
            v14 = 0;
            v15 = *(*(v9 + 48) + 8 * v13);
            v16 = *(v9 + 80 + 8 * v13) + (v12 << 6);
            v17 = *(a3 + 8 * v6);
            v18 = *(a2 + 8 * v6);
            v19 = v7;
            do
            {
              *v17++ += *(v15 + *(v16 + 4 * v14) + *(v18 + v13));
              v14 = (v14 + 1) & 0xF;
              v18 += v8;
              --v19;
            }

            while (v19);
          }

          ++v13;
        }

        while (v13 != v8);
      }

      *(v9 + 76) = (v12 + 1) & 0xF;
      ++v6;
    }

    while (v6 != v11);
  }
}

void quantize_fs_dither(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 144);
    v8 = *(a1 + 136);
    v9 = *(a1 + 440);
    v10 = *(a1 + 656);
    v11 = (v8 - 1);
    v12 = (v11 * v7);
    v13 = v10 + 112;
    v31 = a4;
    while (1)
    {
      v14 = v11;
      v15 = v12;
      bzero(*(a3 + 8 * v6), v8);
      v12 = v15;
      v11 = v14;
      if (v7 >= 1)
      {
        break;
      }

LABEL_13:
      *(v10 + 144) = *(v10 + 144) == 0;
      if (++v6 == v31)
      {
        return;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = (*(a2 + 8 * v6) + v16);
      v18 = *(a3 + 8 * v6);
      if (*(v10 + 144))
      {
        v17 += v15;
        v18 += v14;
        v19 = (*(v13 + 8 * v16) + 2 * (v8 + 1));
        v20 = -1;
        v21 = -v7;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = *(v13 + 8 * v16);
        v20 = 1;
        v21 = v7;
        if (v8)
        {
LABEL_7:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = *(*(v10 + 48) + 8 * v16);
          v26 = *(*(v10 + 32) + 8 * v16);
          v27 = v8;
          do
          {
            v28 = *(v9 + *v17 + ((v22 + v19[v20] + 8) >> 4));
            v29 = *(v25 + v28);
            *v18 += v29;
            LODWORD(v29) = v28 - *(v26 + v29);
            v30 = 3 * v29 + v24;
            v24 = 5 * v29 + v23;
            v22 = 7 * v29;
            v17 += v21;
            *v19 = v30;
            v18 += v20;
            v19 += v20;
            v23 = v29;
            --v27;
          }

          while (v27);
          goto LABEL_12;
        }
      }

      v24 = 0;
LABEL_12:
      *v19 = v24;
      if (++v16 == v7)
      {
        goto LABEL_13;
      }
    }
  }
}

double xdr::Texture<unsigned short,float,int>::sampleRead(unsigned __int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = (a3 + a4);
  if ((v4 & 0x80000000) == 0 && a1[6] > v4)
  {
LABEL_7:
    (*(*a1 + 16))(a1, v4);
    return result;
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5 == 1)
    {
      v4 &= ~(v4 >> 31);
      if ((a1[6] - 1) < v4)
      {
        LOWORD(v4) = a1[6] - 1;
      }
    }

    goto LABEL_7;
  }

  return 0.0;
}

double _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(__int16 *a1, uint64_t a2, float32x2_t a3, int32x2_t a4)
{
  *v4.i8 = vadd_s32(vcvt_s32_f32(a3), a4);
  v5 = vcltz_s16(vuzp1_s16(*v4.i8, *v4.i8));
  if ((vmaxv_u16(v5) & 0x8000) == 0)
  {
    v6.i32[0] = a1[6];
    v6.i32[1] = a1[7];
    v7 = vcge_s32(vshr_n_s32(vshl_n_s32(*v4.i8, 0x10uLL), 0x10uLL), v6);
    v5 = vuzp1_s16(v7, v7);
    if ((vmaxv_u16(v5) & 0x8000) == 0)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a2 + 4);
  if (v8)
  {
    if (v8 == 1)
    {
      v5.i16[0] = a1[6];
      v5.i16[2] = a1[7];
      v9 = vmax_s16(vuzp1_s16(*v4.i8, *v4.i8).u32[0], 0).u32[0];
      v4 = vmovl_u16(vmin_s16(v9, vuzp1_s16(vadd_s32(v5, 0xFFFF0000FFFFLL), v9).u32[0]));
    }

LABEL_6:
    HIWORD(v11) = v4.i16[2];
    LOWORD(v11) = v4.i16[0];
    (*(*a1 + 16))(a1, v11);
    return result;
  }

  return 0.0;
}

double _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(int16x4_t *a1, uint64_t a2, float32x4_t a3, int32x4_t a4)
{
  v4 = vcvtq_s32_f32(a3);
  v4.n128_u64[0] = vadd_s16(vmovn_s32(v4), vmovn_s32(a4));
  v5 = vcltz_s16(v4.n128_u64[0]);
  v5.i16[3] = v5.i16[2];
  if ((vmaxv_u16(v5) & 0x8000) == 0)
  {
    v6 = vcge_s16(v4.n128_u64[0], a1[2]);
    v6.i16[3] = v6.i16[2];
    if ((vmaxv_u16(v6) & 0x8000) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    if (v7 == 1)
    {
      v4.n128_u16[3] = 0;
      v8 = vmax_s16(v4.n128_u64[0], 0);
      v8.i16[3] = 0;
      v9 = vadd_s16(a1[2], -1);
      v9.i16[3] = 0;
      v4.n128_u64[0] = vmin_s16(v8, v9);
    }

LABEL_6:
    (*(*a1 + 16))(v4);
    return result;
  }

  return 0.0;
}

double xdr::Texture<unsigned short,float,int>::sample(unsigned __int16 *a1, _DWORD *a2, int a3, float a4, float a5)
{
  if (!*a2)
  {
    LOWORD(a5) = a1[6];
    a4 = LODWORD(a5) * a4;
  }

  if (a2[2] == 1)
  {
    v8 = a4 + -0.5;
    v12 = ceilf(a4 + -0.5) - (a4 + -0.5);
    v14 = 1.0 - v12;
    *v9.i64 = xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3, a4 + -0.5);
    v13 = vmlaq_n_f32(0, v9, v12);
    *v10.i64 = xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3 + 1, v8);
    *&result = vmlaq_n_f32(v13, v10, v14).u64[0];
  }

  else
  {

    return xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3, a4);
  }

  return result;
}

double _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE6sampleERKNS_7SamplerES2_S3_(uint64_t a1, _DWORD *a2, float32x2_t a3, int32x2_t a4)
{
  if (!*a2)
  {
    v7.i32[0] = *(a1 + 12);
    v7.i32[1] = *(a1 + 14);
    a3 = vmul_f32(vadd_f32(vorr_s8(v7, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), a3);
  }

  if (a2[2] == 1)
  {
    v8 = vadd_f32(vrndm_f32(vadd_f32(a3, 0xBF000000BF000000)), 0x3F0000003F000000);
    v9 = vsub_f32(a3, v8);
    __asm { FMOV            V0.2S, #1.0 }

    v20 = vsub_f32(_D0, v9);
    v21 = v9;
    *v15.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, a4);
    v22 = vmlaq_n_f32(0, v15, vmuls_lane_f32(v20.f32[0], v20, 1));
    *v16.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 0x100000000));
    v23 = vmlaq_n_f32(v22, v16, vmuls_lane_f32(v20.f32[0], v21, 1));
    *v17.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 1));
    v24 = vmlaq_n_f32(v23, v17, vmuls_lane_f32(v21.f32[0], v20, 1));
    *v18.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 0x100000001));
    *&result = vmlaq_n_f32(v24, v18, vmuls_lane_f32(v21.f32[0], v21, 1)).u64[0];
  }

  else
  {

    return _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, a3, a4);
  }

  return result;
}

double _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE6sampleERKNS_7SamplerES2_S3_(uint64_t a1, _DWORD *a2, float32x4_t a3, int32x4_t a4)
{
  if (!*a2)
  {
    a3 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*(a1 + 16)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), a3);
  }

  if (a2[2] == 1)
  {
    v6.i64[0] = 0xBF000000BF000000;
    v6.i64[1] = 0xBF000000BF000000;
    v7 = vaddq_f32(a3, v6);
    v7.i32[3] = 0;
    v8 = vrndmq_f32(v7);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v29 = vaddq_f32(v8, v7);
    v30 = vsubq_f32(a3, v29);
    __asm { FMOV            V0.4S, #1.0 }

    v27 = vsubq_f32(_Q0, v30);
    v14 = vmuls_lane_f32(v27.f32[0], *v27.f32, 1);
    *v15.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, a4);
    v31 = vmlaq_n_f32(0, v15, vmuls_lane_f32(v14, v27, 2));
    *v16.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_186205EC0));
    v32 = vmlaq_n_f32(v31, v16, vmuls_lane_f32(v14, v30, 2));
    v17 = vmuls_lane_f32(v27.f32[0], *v30.f32, 1);
    *v18.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079A0));
    v33 = vmlaq_n_f32(v32, v18, vmuls_lane_f32(v17, v27, 2));
    *v19.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_186205910));
    v34 = vmlaq_n_f32(v33, v19, vmuls_lane_f32(v17, v30, 2));
    v20 = vmuls_lane_f32(v30.f32[0], *v27.f32, 1);
    *v21.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079B0));
    v35 = vmlaq_n_f32(v34, v21, vmuls_lane_f32(v20, v27, 2));
    *v22.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079C0));
    v36 = vmlaq_n_f32(v35, v22, vmuls_lane_f32(v20, v30, 2));
    v23 = vmuls_lane_f32(v30.f32[0], *v30.f32, 1);
    *v24.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079D0));
    v37 = vmlaq_n_f32(v36, v24, vmuls_lane_f32(v23, v27, 2));
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    *v25.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, v24));
    *&result = vmlaq_n_f32(v37, v25, vmuls_lane_f32(v23, v30, 2)).u64[0];
  }

  else
  {

    return _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, a3, a4);
  }

  return result;
}

uint64_t IIOCallCreatePixelBufferAttributesForHDRType(int a1, void *a2, void *a3, void *a4)
{
  kdebug_trace();
  v8 = IIOCreatePixelBufferAttributesForHDRType(a1, a2, a3, a4);
  kdebug_trace();
  return v8;
}

uint64_t IIOCallConvertHDRGainMap(__IOSurface *a1, __IOSurface *a2, __IOSurface *a3, __IOSurface *a4, CGImageMetadata **a5, void *a6)
{
  kdebug_trace();
  v12 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v12)
  {
    v18 = 4294967246;
    goto LABEL_15;
  }

  v13 = v12;
  if (a2)
  {
    a2 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  }

  v14 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3);
  if (v14)
  {
    v15 = v14;
    v16 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a4);
    if (v16)
    {
      v17 = v16;
      v18 = IIOConvertHDRGainMap(v13, a2, v15, v16, a5, a6);
      CFRelease(v17);
    }

    else
    {
      v18 = 4294967246;
    }

    CFRelease(v15);
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = 4294967246;
  if (a2)
  {
LABEL_12:
    CFRelease(a2);
  }

LABEL_13:
  CFRelease(v13);
  if (!v18)
  {
    v18 = IIOSurfaceCopyAlphaValuesFromSource(a1, a3);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallConvertHDRGainMap inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a3, "IIOCallConvertHDRGainMap outputSurface:");
  }

LABEL_15:
  kdebug_trace();
  return v18;
}

uint64_t IIOCallCreateFlexGTCInfo(__IOSurface *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (!a3 || !a4)
  {
    return 4294967246;
  }

  v8 = a2 ? gFunc_CVPixelBufferRetain(a2) : IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  v9 = v8;
  if (!v8)
  {
    return 4294967246;
  }

  FlexGTCInfo = CGImageCreateFlexGTCInfo(v8, a3, a4, a5);
  gFunc_CVPixelBufferRelease(v9, v11);
  return FlexGTCInfo;
}

uint64_t IIOCallComputeHDRStats(__IOSurface *a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  kdebug_trace();
  if (a4)
  {
    v11 = a2 ? gFunc_CVPixelBufferRetain(a2) : IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
    v12 = v11;
    if (v11)
    {
      if (a3)
      {
        v14 = CGImageComputeHDRImageStatistics(v11, a3, a4, a5);
LABEL_17:
        *&v10 = gFunc_CVPixelBufferRelease(v12, v13).n128_u64[0];
        goto LABEL_18;
      }

      v21 = 0;
      HDRPixelBufferStatistics = CGImageGetHDRPixelBufferStatistics(v11, &v21);
      v16 = v21;
      if (HDRPixelBufferStatistics)
      {
        v17 = 1;
      }

      else
      {
        v17 = v21 == 0;
      }

      if (v17)
      {
        v20 = 0;
        v14 = CGImageComputeHDRImageStatistics(v12, 0, &v20, a5);
        if (v14)
        {
          goto LABEL_17;
        }

        IIOHDRPixelBufferSetAttachmentsFromStatistics(v12, v20);
        v16 = v20;
      }

      else
      {
        v14 = 0;
      }

      *a4 = v16;
      goto LABEL_17;
    }
  }

  v14 = 4294967246;
LABEL_18:
  v18 = *a4;
  [objc_msgSend(v18 objectForKeyedSubscript:{@"kCGContentHeadroom", v10), "floatValue"}];
  [objc_msgSend(v18 objectForKeyedSubscript:{@"kCGContentBrightness", "floatValue"}];
  kdebug_trace();
  return v14;
}

uint64_t IIOCallConvertHDRData(__IOSurface *a1, __IOSurface *a2, void *a3)
{
  kdebug_trace();
  v6 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (!v8)
  {
    CFRelease(v7);
LABEL_8:
    v10 = 4294967246;
    goto LABEL_9;
  }

  v9 = v8;
  if (*gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020)
  {
    gFunc_CVBufferSetAttachment(v8, *gIIO_kCVImageBufferYCbCrMatrixKey, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020, 1);
  }

  v10 = IIOConvertHDRData(v7, v9, a3);
  CFRelease(v9);
  CFRelease(v7);
  if (!v10)
  {
    v10 = IIOSurfaceCopyAlphaValuesFromSource(a1, a2);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallConvertHDRData inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a2, "IIOCallConvertHDRData outputSurface:");
  }

LABEL_9:
  kdebug_trace();
  return v10;
}

vImage_Error IIOCallApplyHDRGainmap(__IOSurface *a1, uint64_t a2, __IOSurface *a3, void *a4)
{
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v8;
  if (!a2 || (v10 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3)) == 0)
  {
    CFRelease(v9);
    return 4294967246;
  }

  v11 = v10;
  v12 = IIOApplyHDRGainMap(v9, a2, v10, a4);
  CFRelease(v11);
  CFRelease(v9);
  if (!v12)
  {
    v13 = IIOSurfaceCopyAlphaValuesFromSource(a1, a3);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallApplyHDRGainmap inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a3, "IIOCallApplyHDRGainmap outputSurface:");
    return v13;
  }

  return v12;
}

vImage_Error IIOCallCreateHDRGainmap(__IOSurface *a1, __IOSurface *a2, __IOSurface *a3, void *a4)
{
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v8;
  v10 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (!v10)
  {
    CFRelease(v9);
    return 4294967246;
  }

  v11 = v10;
  v12 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3);
  if (v12)
  {
    v13 = v12;
    v14 = IIOCreateHDRGainMap(v9, v11, v12, a4);
    CFRelease(v13);
  }

  else
  {
    v14 = 4294967246;
  }

  CFRelease(v11);
  CFRelease(v9);
  if (v14)
  {
    return v14;
  }

  v16 = IIOSurfaceCopyAlphaValuesFromSource(a1, a2);
  IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallCreateHDRGainmap inputSurface:");
  IIO_IOSurfaceLogAlphaInfo(a2, "IIOCallCreateHDRGainmap outputSurface:");
  return v16;
}

int *kd_block_encoder::encode(kd_block_encoder *this, kdu_block *a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = MEMORY[0x1EEE9AC00](this, a2, a3, a5, a6, a7, a8);
  v256 = v11;
  v12 = v8;
  v312[91] = *MEMORY[0x1E69E9840];
  v13 = -1.0;
  v14 = v10 > 0.0 && v9 >= 2;
  if (v14 && *(v8 + 32))
  {
    v13 = exp((v9 + -65536.0) * 0.00270760617) * 4294967300.0;
  }

  bzero(v312, 0x2D8uLL);
  v310 = 0u;
  v311 = 0u;
  v309 = 0u;
  memset(v308, 0, sizeof(v308));
  v307 = 0u;
  memset(v306, 0, sizeof(v306));
  v15 = 5824;
  bzero(v304, 0x16C0uLL);
  v16 = &v305;
  do
  {
    *(v16 - 5) = 0;
    *(v16 - 3) = 0;
    *(v16 - 2) = 0;
    *v16 = 0;
    v16[1] = 0;
    *(v16 + 16) = 0;
    v16 += 8;
    v15 -= 64;
  }

  while (v15);
  v18 = *v12;
  v17 = *(v12 + 4);
  v19 = *v12 + 3;
  if (*(v12 + 112) < ((v19 & 0xFFFFFFFC) * v17))
  {
    kd_block_encoder::encode();
  }

  v20 = v19 >> 2;
  v288 = *(v12 + 4);
  v21 = v17 + 3;
  v22 = ((v19 >> 2) + 2) * (v17 + 3);
  if (*(v12 + 116) <= v22)
  {
    if (v22 <= 1599)
    {
      v22 = 1599;
    }

    kdu_block::set_max_contexts(v12, v22 + 1);
  }

  v23 = *(v12 + 104);
  v24 = *(v12 + 48);
  v25 = 3 * (31 - *(v12 + 44)) - 2;
  v26 = v24 <= v25;
  v244 = v24;
  if (v24 >= v25)
  {
    v27 = 3 * (31 - *(v12 + 44)) - 2;
  }

  else
  {
    v27 = *(v12 + 48);
  }

  v28 = v27 & ~(v27 >> 31);
  if (!v26 || v27 < 0)
  {
    *(v12 + 48) = v28;
  }

  v29 = (v23 + 4 * v21);
  v254 = *(v12 + 96);
  if (*(v12 + 88) < v28)
  {
    kdu_block::set_max_passes(v12, v28 + 10, 0);
  }

  v289 = v21;
  v253 = (v29 + 4);
  if (*(v12 + 136))
  {
    *(v12 + 152) = clock();
    v30 = *(v12 + 136);
  }

  else
  {
    v30 = 1;
  }

  v252 = v30;
  v251 = 4 * v21 * v20 + 4;
  v250 = v18 & 3;
  v31 = v288;
  v284 = -3 - v288;
  v299 = 3 * v288;
  v246 = 4 * v21 + 4 * (v20 - 1) * v21 + v23 + 8;
  v275 = v288;
  v276 = 4 * v21;
  v248 = v275 * 4 + v276 + v23 + 12;
  v273 = -12 - v275 * 4;
  v274 = v299;
  v32 = vdup_n_s32(0x49200000u);
  v33 = 2 * v288;
  v300 = v308;
  v247 = v20 + 1;
  v283 = -4 - v288;
  v272 = -2 - v288;
  v270 = v288 + 4;
  v271 = -4 - v288;
  v269 = v288 + 2;
  v268 = 2 * v288;
  v255 = v12;
  v257 = v20;
  v245 = (v23 + v276);
  v297 = v288;
  v249 = vdupq_n_s64(v288 - 1);
  do
  {
    bzero(v29, v251);
    if (v250 > 1)
    {
      if (v250 == 3)
      {
        v36 = 0x40000000;
        v34 = (v288 + 3) & 0xFFFFFFFC;
        v35 = v249;
      }

      else
      {
        v35 = v249;
        v36 = 1207959552;
        v34 = (v288 + 3) & 0xFFFFFFFC;
      }

LABEL_34:
      if (v31 >= 1)
      {
        v37 = 0;
        v38 = v246;
        do
        {
          v39 = vdupq_n_s64(v37);
          v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_186205EC0)));
          if (vuzp1_s16(v40, *v39.i8).u8[0])
          {
            *(v38 - 1) = v36;
          }

          if (vuzp1_s16(v40, *&v39).i8[2])
          {
            *v38 = v36;
          }

          v41 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_186205EB0)));
          if (vuzp1_s16(v41, v41).i32[1])
          {
            v38[1] = v36;
            v38[2] = v36;
          }

          v37 += 4;
          v38 += 4;
        }

        while (v34 != v37);
      }

      goto LABEL_43;
    }

    v34 = (v288 + 3) & 0xFFFFFFFC;
    v35 = v249;
    if (v250)
    {
      v36 = 1224736768;
      goto LABEL_34;
    }

LABEL_43:
    if (v20 >= 1)
    {
      v42 = v247;
      v43 = v248;
      do
      {
        v43->i32[0] = 1226833920;
        v43[-1] = v32;
        v43 = (v43 + v276);
        --v42;
      }

      while (v42 > 1);
    }

    v44 = *(v12 + 44);
    v45 = v10 * 0.0000152587891 * 0.0000152587891;
    if (v44 >= 1)
    {
      v46 = v44 + 1;
      v45 = v10 * 0.0000152587891 * 0.0000152587891;
      do
      {
        v45 = v45 * 0.25;
        --v46;
      }

      while (v46 > 1);
    }

    LODWORD(v47) = *(v12 + 48);
    if (v47 < 1)
    {
      LODWORD(v202) = 0;
      goto LABEL_364;
    }

    v277 = 0;
    v48 = 0;
    v49 = 0;
    v292 = *(v12 + 28);
    v50 = *(v12 + 92);
    v263 = *(v12 + 72);
    v51 = 30 - v44;
    v52 = 2;
    v265 = 1;
    v266 = 0;
    v261 = -1;
    v262 = 0;
    while (2)
    {
      if (v52 == 3)
      {
        v45 = v45 * 0.25;
        v54 = 0;
      }

      else
      {
        v54 = v52;
      }

      v264 = v54;
      v267 = v50;
      v260 = v48;
      if (v50 - v49 <= 4095)
      {
        if (v50 < v49)
        {
          kd_block_encoder::encode();
        }

        v55 = *(v12 + 72);
        kdu_block::set_max_bytes(v12, *(v12 + 92) + 0x2000, 1);
        v56 = *(v12 + 72);
        if (v277)
        {
          v57 = v304;
          v58 = v277;
          do
          {
            mq_encoder::augment_buffer(v57, v55, v56);
            v57 += 64;
            --v58;
          }

          while (v58);
        }

        v267 += 0x2000;
        v263 = &v56[v263 - v55];
        v33 = 2 * v288;
      }

      v59 = &v304[64 * v277];
      v60 = v262;
      if (v266)
      {
        mq_encoder::continues(&v304[64 * v277], &(&v295)[8 * v277]);
      }

      else
      {
        v62 = *(v12 + 48);
        v63 = *(v12 + 28);
        if (v63)
        {
          if (v264 == 2)
          {
            v64 = 1;
          }

          else
          {
            v64 = 2;
          }

          v65 = v277;
          if (v277 > 9)
          {
            v60 = v264 != 2;
          }

          else
          {
            v64 = 10 - v277;
          }
        }

        else
        {
          v64 = *(v12 + 48);
          v65 = v277;
        }

        if ((v63 & 4) != 0)
        {
          v66 = 1;
        }

        else
        {
          v66 = v64;
        }

        if (v66 + v65 <= v62)
        {
          v67 = v66;
        }

        else
        {
          v67 = v62 - v65;
        }

        v266 = v67;
        mq_encoder::start(&v304[64 * v277], v263, !v60);
      }

      v53 = v52 == 3;
      v68 = v256;
      if (v256)
      {
        v68 = 31 - (v51 - v53) == *(v12 + 40);
      }

      if (!v277 || (*(v12 + 28) & 2) != 0)
      {
        v69 = 0;
        v70 = mq_encoder::p_bar_table[0];
        do
        {
          v71 = &v306[v69];
          *v71 = v70;
          v71[1] = &mq_encoder::transition_table;
          v69 += 2;
        }

        while (v69 != 36);
        LODWORD(v306[0]) = unk_1EA8D9498;
        v306[1] = &unk_1EA8E19A8;
        LODWORD(v307) = dword_1EA8D9494;
        *(&v307 + 1) = &unk_1EA8E1968;
      }

      v262 = v60;
      v259 = v51 - v53;
      if (v52 == 3 && !v60)
      {
        if (v51 >= 32)
        {
          kd_block_encoder::encode();
        }

        v116 = !v68;
        v108 = &significance_distortion_lut;
        if (!v116)
        {
          v108 = &significance_distortion_lut_lossless;
        }

        v301 = v108;
        if (v20 < 1)
        {
          goto LABEL_310;
        }

        v109 = v20;
        v302 = 0;
        v110 = 32 - v51;
        v111 = *(&significance_luts + *(v12 + 32));
        v113 = v253;
        v112 = v254;
        while (1)
        {
          LODWORD(v298) = v109;
          if (v288 >= 1)
          {
            break;
          }

LABEL_189:
          v113 += 3;
          v112 += v299;
          v109 = v298 - 1;
          if (v298 <= 1)
          {
            goto LABEL_311;
          }
        }

        v114 = v288;
        while (1)
        {
          v115 = *v113;
          if (!*v113)
          {
            if (!v113[3])
            {
              do
              {
                v114 -= 3;
                v112 += 3;
                v118 = v113[6];
                v113 += 3;
              }

              while (!v118);
            }

            goto LABEL_187;
          }

          v116 = (v115 & 0x1EF) != 0 && (v115 & 0x200010) == 0;
          if (v116)
          {
            v117 = *v112 << v110;
            mq_encoder::mq_encode(v59, v117 & 0x80000000, &v306[2 * *(v111 + (v115 & 0x1EF))]);
            if ((v117 & 0x80000000) != 0)
            {
              v119 = sign_lut[(*(v113 - 1) >> 2) & 4 | (v115 >> 1) & 0x41 | v113[1] & 0x10 | (((*(v113 - 1) >> 2) & 0x80004 | (v115 >> 1) & 0x820041 | v113[1] & 0x200010) >> 16)];
              v302 += v301[(v117 >> 26) & 0x1F];
              v120 = *v112;
              mq_encoder::mq_encode(v59, *v112 & 0x80000000 ^ (v119 << 31), &v300[(8 * v119) & 0x7F0]);
              *(v113 - 1) |= 0x20u;
              v113[1] |= 8u;
              if (v120 < 0)
              {
                v115 |= 0x300010u;
                if ((v292 & 8) == 0)
                {
                  v113[v283] |= 0x20000u;
                  v113[v284] |= 0x80010000;
                  goto LABEL_163;
                }
              }

              else
              {
                v115 |= 0x100010u;
                if ((v292 & 8) == 0)
                {
                  v113[v283] |= 0x20000u;
                  v113[v284] |= 0x10000u;
LABEL_163:
                  v113[-2 - v288] |= 0x8000u;
                }
              }
            }

            else
            {
              v115 |= 0x100000u;
            }
          }

          if ((v115 & 0xF78) != 0 && (v115 & 0x1000080) == 0)
          {
            v122 = v297;
            v123 = v112[v297] << v110;
            mq_encoder::mq_encode(v59, v123 & 0x80000000, &v306[2 * *(v111 + ((v115 >> 3) & 0x1EFLL))]);
            if ((v123 & 0x80000000) != 0)
            {
              v302 += v301[(v123 >> 26) & 0x1F];
              v124 = sign_lut[(*(v113 - 1) >> 5) & 4 | (v115 >> 4) & 0x41 | (v113[1] >> 3) & 0x10 | (((*(v113 - 1) >> 5) & 0x80004 | (v115 >> 4) & 0x820041 | (v113[1] >> 3) & 0x200010) >> 16)];
              v125 = v112[v122] & 0x80000000;
              mq_encoder::mq_encode(v59, v125 ^ (v124 << 31), &v300[(8 * v124) & 0x7F0]);
              *(v113 - 1) |= 0x100u;
              v113[1] |= 0x40u;
              v115 |= (v125 >> 7) | 0x800080;
            }

            else
            {
              v115 |= 0x800000u;
            }
          }

          if ((v115 & 0x7BC0) != 0 && (v115 & 0x8000400) == 0)
          {
            v126 = v112[v33] << v110;
            mq_encoder::mq_encode(v59, v126 & 0x80000000, &v306[2 * *(v111 + ((v115 >> 6) & 0x1EFLL))]);
            if ((v126 & 0x80000000) != 0)
            {
              v302 += v301[(v126 >> 26) & 0x1F];
              v127 = sign_lut[(*(v113 - 1) >> 8) & 4 | (v115 >> 7) & 0x41 | (v113[1] >> 6) & 0x10 | (((*(v113 - 1) >> 8) & 0x80004 | (v115 >> 7) & 0x820041 | (v113[1] >> 6) & 0x200010) >> 16)];
              v128 = v112[v33] & 0x80000000;
              mq_encoder::mq_encode(v59, v128 ^ (v127 << 31), &v300[(8 * v127) & 0x7F0]);
              *(v113 - 1) |= 0x800u;
              v113[1] |= 0x200u;
              v115 |= (v128 >> 4) | 0x4000400;
            }

            else
            {
              v115 |= 0x4000000u;
            }
          }

          if ((v115 & 0x3DE00) != 0 && (v115 & 0x40002000) == 0)
          {
            v129 = v299;
            v130 = v112[v299] << v110;
            mq_encoder::mq_encode(v59, v130 & 0x80000000, &v306[2 * *(v111 + ((v115 >> 9) & 0x1EFLL))]);
            if ((v130 & 0x80000000) != 0)
            {
              v302 += v301[(v130 >> 26) & 0x1F];
              v131 = sign_lut[(v115 >> 10) & 0x41 | (*(v113 - 1) >> 11) & 4 | (v113[1] >> 9) & 0x10 | (((v115 >> 10) & 0x20041 | (v115 >> 31 << 23) | (*(v113 - 1) >> 11) & 0x80004 | (v113[1] >> 9) & 0x200010) >> 16)];
              v132 = v112[v129];
              mq_encoder::mq_encode(v59, v132 & 0x80000000 ^ (v131 << 31), &v300[(8 * v131) & 0x7F0]);
              v113[v288 + 2] |= 4u;
              v113[v288 + 4] |= 1u;
              *(v113 - 1) |= 0x4000u;
              v113[1] |= 0x1000u;
              v133 = v113[v289];
              if (v132 < 0)
              {
                v113[v289] = v133 | 0x40002;
                v134 = 1610620928;
              }

              else
              {
                v113[v289] = v133 | 2;
                v134 = 536879104;
              }

              v115 |= v134;
            }

            else
            {
              v115 |= 0x20000000u;
            }

            v33 = 2 * v288;
          }

          *v113 = v115;
LABEL_187:
          ++v112;
          ++v113;
          v107 = __OFSUB__(v114--, 1);
          if ((v114 < 0) ^ v107 | (v114 == 0))
          {
            goto LABEL_189;
          }
        }
      }

      if (v52 == 3)
      {
        if (v51 >= 32)
        {
          kd_block_encoder::encode();
        }

        v116 = !v68;
        v135 = &significance_distortion_lut;
        if (!v116)
        {
          v135 = &significance_distortion_lut_lossless;
        }

        v294 = v135;
        if (v20 >= 1)
        {
          v302 = 0;
          LODWORD(v301) = 32 - v51;
          v137 = v253;
          v136 = v254;
          v138 = v20;
          do
          {
            if (v288 >= 1)
            {
              v139 = v59;
              v279 = v138;
              v140 = 0;
              v141 = &v136[v274];
              v142 = &v136[v275];
              v291 = v136;
              v143 = &v136[v268];
              v144 = v288 + 1;
              v145 = v302;
              v295 = &v136[v268];
              v296 = &v136[v274];
              v298 = &v136[v275];
              do
              {
                v146 = v137[v140];
                if (v146)
                {
                  if ((v146 & 0x1EF) != 0 && (v146 & 0x200010) == 0)
                  {
                    v148 = v291[v140] << v301;
                    mq_encoder::raw_encode(v139, v148 >> 31);
                    if ((v148 & 0x80000000) != 0)
                    {
                      v149 = v294[(v148 >> 26) & 0x1F];
                      v150 = v291[v140];
                      mq_encoder::raw_encode(v139, v150 >> 31);
                      if ((v292 & 8) == 0)
                      {
                        v137[v271 + v140] |= 0x20000u;
                        *(v137 + v273 + v140 * 4) |= v150 & 0x80000000 | 0x10000;
                        v137[v272 + v140] |= 0x8000u;
                      }

                      v145 += v149;
                      v151 = &v137[v140];
                      *(v151 - 1) = v137[v140 - 1] | 0x20;
                      v151[1] = v137[v140 + 1] | 8;
                      v146 |= (v150 >> 31 << 21) | 0x100010;
                    }

                    else
                    {
                      v146 |= 0x100000u;
                    }

                    v143 = v295;
                    v141 = v296;
                    v142 = v298;
                  }

                  if ((v146 & 0xF78) != 0 && (v146 & 0x1000080) == 0)
                  {
                    v153 = v142[v140] << v301;
                    mq_encoder::raw_encode(v139, v153 >> 31);
                    if ((v153 & 0x80000000) != 0)
                    {
                      v145 += v294[(v153 >> 26) & 0x1F];
                      v154 = v142[v140] >> 31;
                      mq_encoder::raw_encode(v139, v154);
                      v155 = &v137[v140];
                      *(v155 - 1) = v137[v140 - 1] | 0x100;
                      v155[1] = v137[v140 + 1] | 0x40;
                      LODWORD(v155) = v146 | (v154 << 24);
                      v141 = v296;
                      v146 = v155 | 0x800080;
                    }

                    else
                    {
                      v146 |= 0x800000u;
                    }

                    v143 = v295;
                  }

                  if ((v146 & 0x7BC0) != 0 && (v146 & 0x8000400) == 0)
                  {
                    v157 = v143[v140] << v301;
                    mq_encoder::raw_encode(v139, v157 >> 31);
                    if ((v157 & 0x80000000) != 0)
                    {
                      v145 += v294[(v157 >> 26) & 0x1F];
                      v158 = v143[v140] >> 31;
                      mq_encoder::raw_encode(v139, v158);
                      v159 = &v137[v140];
                      *(v159 - 1) = v137[v140 - 1] | 0x800;
                      v159[1] = v137[v140 + 1] | 0x200;
                      LODWORD(v159) = v146 | (v158 << 27);
                      v141 = v296;
                      v146 = v159 | 0x4000400;
                    }

                    else
                    {
                      v146 |= 0x4000000u;
                    }

                    v142 = v298;
                  }

                  if ((v146 & 0x3DE00) != 0 && (v146 & 0x40002000) == 0)
                  {
                    v160 = v141[v140] << v301;
                    mq_encoder::raw_encode(v139, v160 >> 31);
                    if ((v160 & 0x80000000) != 0)
                    {
                      v145 += v294[(v160 >> 26) & 0x1F];
                      v161 = v141[v140] >> 31;
                      mq_encoder::raw_encode(v139, v161);
                      v137[v269 + v140] |= 4u;
                      v137[v276 / 4 + v140] |= (v161 << 18) | 2;
                      v137[v270 + v140] |= 1u;
                      v162 = &v137[v140];
                      *(v162 - 1) = v137[v140 - 1] | 0x4000;
                      v162[1] = v137[v140 + 1] | 0x1000;
                      LODWORD(v162) = v146 | (v161 << 30);
                      v141 = v296;
                      v146 = v162 | 0x20002000;
                    }

                    else
                    {
                      v146 |= 0x20000000u;
                    }

                    v142 = v298;
                  }

                  v137[v140] = v146;
                }

                ++v140;
                --v144;
              }

              while (v144 > 1);
              v302 = v145;
              v136 = &v291[v140];
              v137 = (v137 + v140 * 4);
              v138 = v279;
              v59 = v139;
            }

            v137 += 3;
            v136 += v299;
            v107 = __OFSUB__(v138--, 1);
          }

          while (!((v138 < 0) ^ v107 | (v138 == 0)));
          goto LABEL_311;
        }

        goto LABEL_310;
      }

      v72 = v52 != 1 || v60;
      v73 = 31 - v51;
      if (!v72)
      {
        if (v68)
        {
          v163 = &refinement_distortion_lut_lossless;
        }

        else
        {
          v163 = &refinement_distortion_lut;
        }

        if (v20 < 1)
        {
          goto LABEL_310;
        }

        v302 = 0;
        v164 = (-1 << (v51 + 2)) & 0x7FFFFFFF;
        v165 = v20;
        v166 = v253;
        v167 = v254;
        while (v288 < 1)
        {
LABEL_282:
          v166 += 3;
          v167 += v299;
          v107 = __OFSUB__(v165--, 1);
          if ((v165 < 0) ^ v107 | (v165 == 0))
          {
            goto LABEL_311;
          }
        }

        v168 = v288;
        while (2)
        {
          v169 = *v166;
          if ((*v166 & 0x12480000) == 0)
          {
            if (!v166[2])
            {
              do
              {
                v168 -= 2;
                v167 += 2;
                v170 = v166[4];
                v166 += 2;
              }

              while (!v170);
            }

            goto LABEL_280;
          }

          if ((v169 & 0x80000) != 0)
          {
            v171 = *v167;
            v172 = &v309;
            if ((v169 & 0x1EF) != 0)
            {
              v172 = &v310;
            }

            if ((v171 & v164) != 0)
            {
              v173 = &v311;
            }

            else
            {
              v173 = v172;
            }

            v174 = v171 << v73;
            v302 += v163[v174 >> 26];
            mq_encoder::mq_encode(v59, v174 & 0x80000000, v173);
            if ((v169 & 0x400000) != 0)
            {
              goto LABEL_262;
            }

LABEL_250:
            if ((v169 & 0x2000000) == 0)
            {
              goto LABEL_251;
            }

LABEL_268:
            v179 = v167[v33];
            v180 = &v309;
            if ((v169 & 0x7BC0) != 0)
            {
              v180 = &v310;
            }

            if ((v179 & v164) != 0)
            {
              v181 = &v311;
            }

            else
            {
              v181 = v180;
            }

            v182 = v179 << v73;
            v302 += v163[v182 >> 26];
            mq_encoder::mq_encode(v59, v182 & 0x80000000, v181);
            if ((v169 & 0x10000000) == 0)
            {
LABEL_280:
              ++v167;
              ++v166;
              v107 = __OFSUB__(v168--, 1);
              if ((v168 < 0) ^ v107 | (v168 == 0))
              {
                goto LABEL_282;
              }

              continue;
            }
          }

          else
          {
            if ((v169 & 0x400000) == 0)
            {
              goto LABEL_250;
            }

LABEL_262:
            v175 = v167[v297];
            v176 = &v309;
            if ((v169 & 0xF78) != 0)
            {
              v176 = &v310;
            }

            if ((v175 & v164) != 0)
            {
              v177 = &v311;
            }

            else
            {
              v177 = v176;
            }

            v178 = v175 << v73;
            v302 += v163[v178 >> 26];
            mq_encoder::mq_encode(v59, v178 & 0x80000000, v177);
            if ((v169 & 0x2000000) != 0)
            {
              goto LABEL_268;
            }

LABEL_251:
            if ((v169 & 0x10000000) == 0)
            {
              goto LABEL_280;
            }
          }

          break;
        }

        v183 = v167[v299];
        v184 = &v309;
        if ((v169 & 0x3DE00) != 0)
        {
          v184 = &v310;
        }

        if ((v183 & v164) != 0)
        {
          v185 = &v311;
        }

        else
        {
          v185 = v184;
        }

        v186 = v183 << v73;
        v302 += v163[v186 >> 26];
        mq_encoder::mq_encode(v59, v186 & 0x80000000, v185);
        goto LABEL_280;
      }

      if (v52 == 1)
      {
        if (v68)
        {
          v187 = &refinement_distortion_lut_lossless;
        }

        else
        {
          v187 = &refinement_distortion_lut;
        }

        if (v20 >= 1)
        {
          v302 = 0;
          v188 = v253;
          v189 = v254;
          v190 = v20;
          while (v288 < 1)
          {
LABEL_307:
            v188 += 3;
            v189 += v299;
            v107 = __OFSUB__(v190--, 1);
            if ((v190 < 0) ^ v107 | (v190 == 0))
            {
              goto LABEL_311;
            }
          }

          v191 = v288;
          while (1)
          {
            v192 = *v188;
            if ((*v188 & 0x12480000) == 0)
            {
              if (!v188[2])
              {
                do
                {
                  v191 -= 2;
                  v189 += 2;
                  v193 = v188[4];
                  v188 += 2;
                }

                while (!v193);
              }

              goto LABEL_305;
            }

            if ((v192 & 0x80000) != 0)
            {
              v194 = *v189 << v73;
              v302 += v187[v194 >> 26];
              mq_encoder::raw_encode(v59, v194 >> 31);
              if ((v192 & 0x400000) == 0)
              {
LABEL_295:
                if ((v192 & 0x2000000) == 0)
                {
                  goto LABEL_296;
                }

                goto LABEL_303;
              }
            }

            else if ((v192 & 0x400000) == 0)
            {
              goto LABEL_295;
            }

            v195 = v189[v297] << v73;
            v302 += v187[v195 >> 26];
            mq_encoder::raw_encode(v59, v195 >> 31);
            if ((v192 & 0x2000000) == 0)
            {
LABEL_296:
              if ((v192 & 0x10000000) == 0)
              {
                goto LABEL_305;
              }

LABEL_304:
              v197 = v189[v299] << v73;
              v302 += v187[v197 >> 26];
              mq_encoder::raw_encode(v59, v197 >> 31);
              goto LABEL_305;
            }

LABEL_303:
            v196 = v189[v33] << v73;
            v302 += v187[v196 >> 26];
            mq_encoder::raw_encode(v59, v196 >> 31);
            if ((v192 & 0x10000000) != 0)
            {
              goto LABEL_304;
            }

LABEL_305:
            ++v189;
            ++v188;
            v107 = __OFSUB__(v191--, 1);
            if ((v191 < 0) ^ v107 | (v191 == 0))
            {
              goto LABEL_307;
            }
          }
        }

LABEL_310:
        v302 = 0;
        goto LABEL_311;
      }

      if (v51 >= 31)
      {
        kd_block_encoder::encode();
      }

      v116 = !v68;
      v74 = &significance_distortion_lut;
      if (!v116)
      {
        v74 = &significance_distortion_lut_lossless;
      }

      v287 = v74;
      if (v20 < 1)
      {
        goto LABEL_310;
      }

      v302 = 0;
      v301 = *(&significance_luts + *(v12 + 32));
      v76 = v253;
      v75 = v254;
      v77 = v74;
      while (2)
      {
        if (v288 < 1)
        {
          goto LABEL_137;
        }

        v258 = v20;
        v78 = 0;
        v281 = &v76[v272];
        v280 = v76 + v273;
        v278 = &v76[v271];
        v298 = &v75[v275];
        v286 = &v76[v276 / 4];
        v285 = &v76[v270];
        v282 = &v76[v269];
        v295 = v75;
        v296 = &v75[v274];
        v79 = &v75[v268];
        v80 = v288 + 1;
        v293 = &v75[v268];
        v290 = v76;
        do
        {
          v81 = v76[v78];
          if (v81)
          {
            if ((v81 & 0x300010) != 0)
            {
              goto LABEL_113;
            }

            v82 = v295;
            v83 = v295[v78] << v73;
            mq_encoder::mq_encode(v59, v83 & 0x80000000, &v306[2 * *(v301 + (v81 & 0x1EF))]);
            if ((v83 & 0x80000000) == 0)
            {
              v76 = v290;
              v79 = v293;
              goto LABEL_113;
            }

            v85 = v82[v78];
            v76 = v290;
            v79 = v293;
          }

          else
          {
            v84 = v295;
            if (((v295[v78] << v73) & 0x80000000) == 0)
            {
              if (((v298[v78] << v73) & 0x80000000) == 0)
              {
                if (((v79[v78] << v73) & 0x80000000) == 0)
                {
                  if (((v296[v78] << v73) & 0x80000000) == 0)
                  {
                    mq_encoder::mq_encode(v59, 0, &v307);
                    goto LABEL_135;
                  }

                  v102 = v296;
                  mq_encoder::mq_encode(v59, 0x80000000, &v307);
                  mq_encoder::mq_encode_run(v59, 3);
                  v81 = v76[v78];
                  v101 = v102[v78];
                  v100 = v101 << v73;
                  goto LABEL_127;
                }

                mq_encoder::mq_encode(v59, 0x80000000, &v307);
                mq_encoder::mq_encode_run(v59, 2);
                v81 = v76[v78];
                v95 = v79[v78];
                v94 = v95 << v73;
                goto LABEL_121;
              }

              mq_encoder::mq_encode(v59, 0x80000000, &v307);
              mq_encoder::mq_encode_run(v59, 1);
              v81 = v76[v78];
              v89 = v298[v78];
              v90 = v89 << v73;
              goto LABEL_116;
            }

            mq_encoder::mq_encode(v59, 0x80000000, &v307);
            mq_encoder::mq_encode_run(v59, 0);
            v81 = v76[v78];
            v85 = v84[v78];
            v83 = v85 << v73;
          }

          v302 += v77[(v83 >> 26) & 0x1F];
          v86 = &v76[v78];
          v87 = sign_lut[(v76[v78 - 1] >> 2) & 4 | (v81 >> 1) & 0x41 | v76[v78 + 1] & 0x10 | (((v76[v78 - 1] >> 2) & 0x80004 | (v81 >> 1) & 0x820041 | v76[v78 + 1] & 0x200010) >> 16)];
          mq_encoder::mq_encode(v59, v85 & 0x80000000 ^ (v87 << 31), &v300[(8 * v87) & 0x7F0]);
          *(v86 - 1) |= 0x20u;
          v86[1] |= 8u;
          if ((v85 & 0x80000000) == 0)
          {
            v81 |= 0x10u;
            if ((v292 & 8) != 0)
            {
              v77 = v287;
              goto LABEL_113;
            }

            v88 = 0x10000;
            v77 = v287;
LABEL_111:
            v278[v78] |= 0x20000u;
            *(v280 + v78 * 4) |= v88;
            v281[v78] |= 0x8000u;
            goto LABEL_113;
          }

          v81 |= 0x200010u;
          v88 = -2147418112;
          v77 = v287;
          if ((v292 & 8) == 0)
          {
            goto LABEL_111;
          }

LABEL_113:
          if ((v81 & 0x1800080) == 0)
          {
            v90 = v298[v78] << v73;
            mq_encoder::mq_encode(v59, v90 & 0x80000000, &v306[2 * *(v301 + ((v81 >> 3) & 0x1EFLL))]);
            if ((v90 & 0x80000000) != 0)
            {
              v89 = v298[v78];
LABEL_116:
              v302 += v77[(v90 >> 26) & 0x1F];
              v91 = &v76[v78];
              v92 = sign_lut[(v76[v78 - 1] >> 5) & 4 | (v81 >> 4) & 0x41 | (v76[v78 + 1] >> 3) & 0x10 | (((v76[v78 - 1] >> 5) & 0x80004 | (v81 >> 4) & 0x820041 | (v76[v78 + 1] >> 3) & 0x200010) >> 16)];
              v93 = v89 & 0x80000000;
              mq_encoder::mq_encode(v59, v89 & 0x80000000 ^ (v92 << 31), &v300[(8 * v92) & 0x7F0]);
              *(v91 - 1) |= 0x100u;
              v91[1] |= 0x40u;
              v81 |= (v93 >> 7) | 0x80;
            }
          }

          if ((v81 & 0xC000400) == 0)
          {
            v94 = v79[v78] << v73;
            mq_encoder::mq_encode(v59, v94 & 0x80000000, &v306[2 * *(v301 + ((v81 >> 6) & 0x1EFLL))]);
            if ((v94 & 0x80000000) != 0)
            {
              v95 = v79[v78];
LABEL_121:
              v302 += v77[(v94 >> 26) & 0x1F];
              v96 = &v76[v78];
              v97 = sign_lut[(v76[v78 - 1] >> 8) & 4 | (v81 >> 7) & 0x41 | (v76[v78 + 1] >> 6) & 0x10 | (((v76[v78 - 1] >> 8) & 0x80004 | (v81 >> 7) & 0x820041 | (v76[v78 + 1] >> 6) & 0x200010) >> 16)];
              v98 = v95 & 0x80000000;
              mq_encoder::mq_encode(v59, v95 & 0x80000000 ^ (v97 << 31), &v300[(8 * v97) & 0x7F0]);
              *(v96 - 1) |= 0x800u;
              v96[1] |= 0x200u;
              v81 |= (v98 >> 4) | 0x400;
            }
          }

          if ((v81 & 0x60002000) == 0)
          {
            v99 = v296;
            v100 = v296[v78] << v73;
            mq_encoder::mq_encode(v59, v100 & 0x80000000, &v306[2 * *(v301 + ((v81 >> 9) & 0x1EFLL))]);
            if ((v100 & 0x80000000) == 0)
            {
              v79 = v293;
              goto LABEL_134;
            }

            v101 = v99[v78];
            v79 = v293;
LABEL_127:
            v302 += v77[(v100 >> 26) & 0x1F];
            v103 = &v76[v78];
            v104 = sign_lut[(v81 >> 10) & 0x41 | (v76[v78 - 1] >> 11) & 4 | (v76[v78 + 1] >> 9) & 0x10 | (((v81 >> 10) & 0x20041 | (v81 >> 31 << 23) | (v76[v78 - 1] >> 11) & 0x80004 | (v76[v78 + 1] >> 9) & 0x200010) >> 16)];
            mq_encoder::mq_encode(v59, v101 & 0x80000000 ^ (v104 << 31), &v300[(8 * v104) & 0x7F0]);
            v282[v78] |= 4u;
            v285[v78] |= 1u;
            *(v103 - 1) |= 0x4000u;
            v103[1] |= 0x1000u;
            if (v101 >= 0)
            {
              v105 = 2;
            }

            else
            {
              v105 = 262146;
            }

            if (v101 >= 0)
            {
              v106 = 0x2000;
            }

            else
            {
              v106 = 1073750016;
            }

            v286[v78] |= v105;
            v81 |= v106;
          }

LABEL_134:
          v76[v78] = (v81 << 15) & 0x12480000 | v81 & 0xDB6FFFFF;
LABEL_135:
          ++v78;
          --v80;
        }

        while (v80 > 1);
        v75 = &v295[v78];
        v76 = (v76 + v78 * 4);
        v20 = v258;
LABEL_137:
        v76 += 3;
        v75 += v299;
        v107 = __OFSUB__(v20--, 1);
        if (!((v20 < 0) ^ v107 | (v20 == 0)))
        {
          continue;
        }

        break;
      }

LABEL_311:
      *&v312[v277] = v45 * v302;
      v12 = v255;
      if ((*(v255 + 28) & 0x20) != 0 && v264 == 2)
      {
        mq_encoder::mq_encode_run(v59, 2);
        mq_encoder::mq_encode_run(v59, 2);
      }

      v198 = v266 - 1;
      bytes_used = mq_encoder::get_bytes_used(v59, v61);
      v20 = v257;
      if (v266 == 1)
      {
        v200 = mq_encoder::terminate(v59, (v292 & 0x10) == 0);
        v49 = 0;
        v267 += v263 - v200;
        v263 = v200;
      }

      else
      {
        v49 = bytes_used;
      }

      v303 = 0;
      v201 = v260;
      if (v277 >= v260)
      {
        v203 = &v304[64 * v260];
        v204 = 4 * v260;
        v202 = v260;
        do
        {
          v205 = v201;
          *(*(v255 + 56) + v204) = mq_encoder::get_incremental_length(v203, &v303);
          if (v303)
          {
            if (v205 != v202)
            {
              kd_block_encoder::encode();
            }

            v202 = (v202 + 1);
          }

          v201 = v205 + 1;
          v203 = (v203 + 64);
          v204 += 4;
        }

        while (v265 != v205 + 1);
      }

      else
      {
        v202 = v260;
      }

      v33 = 2 * v288;
      if (v13 > 0.0)
      {
        v206 = 0;
        v207 = 0.0;
        v208 = 3;
        v209 = 0.0;
        v210 = 0.0;
        v211 = v277;
        v212 = 0.0;
        while (1)
        {
          if (v211 <= 6)
          {
            v213 = 6;
          }

          else
          {
            v213 = v211;
          }

          v214 = v213 - 7;
          if (v211 > v214)
          {
            v215 = 0;
            v216 = 0.0;
            v217 = 0.0;
            do
            {
              v216 = v216 + *(*(v255 + 56) + 4 * (v211 + v215));
              v217 = v217 + *&v312[v211 + v215];
              if (!v215 || v209 * v216 > v207 * v217)
              {
                v209 = v217;
                v207 = v216;
              }

              --v215;
            }

            while (v211 + v215 > v214);
          }

          v218 = v13 * v207;
          if ((v277 - v211) >= 3)
          {
            v219 = v208;
            do
            {
              v218 = v218 * 3.0;
              v219 -= 3;
            }

            while (v219 > 5);
          }

          if (v209 > v218)
          {
            break;
          }

          if (v209 > 0.0 && v207 > 0.0 && (v206 < 1 || v210 * v209 > v212 * v207))
          {
            ++v206;
            v212 = v209;
            v210 = v207;
          }

          v107 = __OFSUB__(v211--, 1);
          if (v211 < 0 == v107)
          {
            ++v208;
            if (v206 < 3)
            {
              continue;
            }
          }

          if (v206 < 2)
          {
            break;
          }

          if (v277 - v211 < 3)
          {
            break;
          }

          v220 = v277 + 1;
          *(v255 + 48) = v277 + 1;
          if (v266 < 2)
          {
            break;
          }

          mq_encoder::terminate(v59, (v292 & 0x10) == 0);
          if (v277 >= v202)
          {
            v221 = &v304[64 * v202];
            v222 = 4 * v202;
            v223 = v202 + v261;
            do
            {
              v303 = 0;
              *(*(v255 + 56) + v222) = mq_encoder::get_incremental_length(v221, &v303);
              if (!v303)
              {
                kd_block_encoder::encode();
              }

              v221 = (v221 + 64);
              v222 += 4;
              v14 = __CFADD__(v223++, 1);
            }

            while (!v14);
            v202 = v265;
            v33 = 2 * v288;
          }

          goto LABEL_358;
        }
      }

      v220 = v277 + 1;
      if (v266 != 1)
      {
        if (v220 >= *(v255 + 48))
        {
          kd_block_encoder::encode();
        }

LABEL_361:
        v52 = v264 + 1;
        ++v265;
        v266 = v198;
        --v261;
        v277 = v220;
        v48 = v202;
        v51 = v259;
        v50 = v267;
        continue;
      }

      break;
    }

LABEL_358:
    if (v220 != v202)
    {
      kd_block_encoder::encode();
    }

    mq_encoder::finish(v59);
    v47 = *(v255 + 48);
    if (v220 < v47)
    {
      v198 = 0;
      goto LABEL_361;
    }

    v29 = v245;
LABEL_364:
    if (v202 != v47)
    {
      kd_block_encoder::encode();
    }

    if (v10 > 0.0 && v202 >= 1)
    {
      v224 = 0;
      v226 = *(v12 + 56);
      v225 = *(v12 + 64);
      do
      {
        v227 = v224 - 9;
        if (v224 < 9)
        {
          v227 = 0;
        }

        if (v224 >= v227)
        {
          v229 = -1.0;
          v230 = 0.0;
          v231 = v224;
          v232 = 0.0;
          while (1)
          {
            v230 = v230 + *&v312[v231];
            if (v230 <= 0.0)
            {
              break;
            }

            v232 = v232 + *(v226 + 4 * v231);
            if (v232 > 0.0 && (v229 < 0.0 || v229 * v232 > v230))
            {
              v229 = v230 / v232;
            }

            v26 = v231-- <= v227;
            if (v26)
            {
              if (v229 <= 0.0)
              {
                break;
              }

              v233 = v229 * 2.32830644e-10;
              if (v233 > 1.0)
              {
                v233 = 1.0;
              }

              v234 = log(v233) * 369.32993 + 65536.0;
              if (v234 <= 65535.0)
              {
                if (v234 >= 2.0)
                {
                  v228 = v234;
                }

                else
                {
                  LOWORD(v228) = 2;
                }
              }

              else
              {
                LOWORD(v228) = -1;
              }

              goto LABEL_372;
            }
          }
        }

        LOWORD(v228) = 0;
LABEL_372:
        *(v225 + 2 * v224++) = v228;
      }

      while (v224 != v202);
      v235 = 0;
      v236 = v202 - 1;
      v237 = (v225 + 2);
      v20 = v257;
      do
      {
        v238 = v235 + 1;
        if (v235 + 1 < v202)
        {
          v239 = v237;
          v240 = v236;
          while (1)
          {
            v241 = *v239++;
            if (v241 >= *(v225 + 2 * v235))
            {
              break;
            }

            if (!--v240)
            {
              goto LABEL_396;
            }
          }

          *(v225 + 2 * v235) = 0;
        }

LABEL_396:
        --v236;
        ++v237;
        ++v235;
      }

      while (v238 != v202);
      if (v202 == v244 && v256)
      {
        v242 = v225 + 2 * v244;
        if (!*(v242 - 2))
        {
          *(v242 - 2) = 1;
        }
      }
    }

    v26 = v252-- <= 1;
    v31 = v288;
  }

  while (!v26);
  return kdu_block::finish_timing(v12);
}

uint64_t mq_encoder::augment_buffer(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    if (!a3 || !a2 || (*(this + 33) & 1) != 0)
    {
      mq_encoder::augment_buffer();
    }

    v4 = *(this + 24) + a3 - a2;
    *(this + 16) = v3 + a3 - a2;
    *(this + 24) = v4;
  }

  return this;
}

__n128 mq_encoder::continues(mq_encoder *this, mq_encoder *a2)
{
  if ((*(this + 35) & 1) != 0 || *(this + 2))
  {
    mq_encoder::continues();
  }

  if ((*(a2 + 35) & 1) == 0)
  {
    mq_encoder::continues();
  }

  if (*(a2 + 33) == 1)
  {
    mq_encoder::continues();
  }

  result = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *(this + 41) = *(a2 + 41);
  *(this + 1) = v3;
  *(this + 2) = v4;
  *this = result;
  *(this + 5) = a2;
  *(a2 + 6) = this;
  *(a2 + 35) = 0;
  return result;
}

uint64_t mq_encoder::get_bytes_used(mq_encoder *this, uint64_t a2)
{
  if ((*(this + 33) & 1) != 0 || (v2 = *(this + 2)) == 0)
  {
    mq_encoder::get_bytes_used();
  }

  return (*(this + 6) - v2);
}

uint64_t mq_encoder::get_incremental_length(mq_encoder *this, BOOL *a2)
{
  v4 = *(this + 36);
  if ((v4 & 1) == 0)
  {
    v5 = this;
    do
    {
      v6 = v5;
      v5 = *(v5 + 6);
    }

    while (v5);
    v7 = v6;
    do
    {
      if (*(v7 + 36))
      {
        break;
      }

      if ((*(v7 + 35) & 1) == 0)
      {
        v8 = *(v6 + 3);
        if (&v8[-*(v7 + 24)] >= 5)
        {
          mq_encoder::find_truncation_point(v7, v8);
        }
      }

      v7 = *(v7 + 40);
    }

    while (v7);
    v4 = *(this + 36);
  }

  *a2 = v4;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 24);
  }

  else
  {
    v10 = (this + 16);
  }

  return (*(this + 6) - *v10);
}

uint64_t mq_encoder::finish(uint64_t this)
{
  if ((*(this + 35) & 1) != 0 || *(this + 48))
  {
    mq_encoder::finish();
  }

  do
  {
    if (*(this + 35) == 1)
    {
      mq_encoder::finish();
    }

    v1 = *(this + 40);
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    this = v1;
  }

  while (v1);
  return this;
}

int *kdu_block::finish_timing(int *this)
{
  if (this[34])
  {
    v1 = this;
    this = clock();
    v2 = *(v1 + 18);
    *(v1 + 20) += this - *(v1 + 19);
    *(v1 + 18) = v2 + *v1 * v1[1];
  }

  return this;
}

void kd_block_encoder::~kd_block_encoder(kd_block_encoder *this)
{
  *this = &unk_1EF4D32F0;
}

{
  *this = &unk_1EF4D32F0;
  JUMPOUT(0x186602850);
}

int *kd_block_decoder::decode(kd_block_decoder *this, kdu_block *a2)
{
  v193 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = ((*a2 + 3) & 0xFFFFFFFC) * v4;
  v6 = v4 + 3;
  v145 = (*a2 + 3) >> 2;
  v7 = (v145 + 2) * (v4 + 3);
  if (*(a2 + 28) < v5)
  {
    if (v5 <= 4096)
    {
      v8 = 4096;
    }

    else
    {
      v8 = ((*a2 + 3) & 0xFFFFFFFC) * v4;
    }

    kdu_block::set_max_samples(a2, v8);
  }

  if (*(a2 + 29) <= v7)
  {
    if (v7 <= 1599)
    {
      v9 = 1599;
    }

    else
    {
      v9 = (v145 + 2) * (v4 + 3);
    }

    kdu_block::set_max_contexts(a2, v9 + 1);
  }

  v178 = v4;
  v150 = a2;
  if (*(a2 + 34))
  {
    *(a2 + 19) = clock();
    v10 = *(a2 + 34);
  }

  else
  {
    v10 = 1;
  }

  v134 = v10;
  memset(v185, 0, sizeof(v185));
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  v175 = v6;
  v132 = 4 * v6 * v145 + 4;
  v133 = 4 * v5;
  v131 = v3 & 3;
  memset(v189, 0, sizeof(v189));
  v188 = 0u;
  v169 = -3 - v4;
  v179 = 3 * v4;
  v141 = (v4 + 3) & 0xFFFFFFFC;
  memset(v187, 0, sizeof(v187));
  v130 = 4 * (v145 - 1) * v6 + 4 * v6 + 8;
  v146 = vdupq_n_s64(v4 - 1);
  v160 = 4 * v4;
  v161 = v6;
  v158 = -12 - v160;
  v159 = 4 * v179;
  v11 = vdup_n_s32(0x49200000u);
  v167 = -2 - v4;
  v168 = -4 - v4;
  v157 = -2 - v4;
  v173 = v4 + 4;
  v174 = v4 + 2;
  v155 = v4 + 4;
  v156 = -4 - v4;
  v154 = v4 + 2;
  v153 = v4 + 1;
  v177 = 2 * v4;
  v152 = 8 * v4;
  v181 = v4;
  while (1)
  {
LABEL_15:
    v139 = *(v150 + 12);
    bzero(v139, v133);
    v12 = *(v150 + 13);
    v13 = (v12 + 4 * v175);
    bzero(v13, v132);
    if (v131 > 1)
    {
      v14 = v131 == 3 ? 0x40000000 : 1207959552;
    }

    else
    {
      if (!v131)
      {
        goto LABEL_30;
      }

      v14 = 1224736768;
    }

    if (v4 >= 1)
    {
      v15 = 0;
      v16 = (v12 + v130);
      do
      {
        v17 = vdupq_n_s64(v15);
        v18 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v17, xmmword_186205EC0)));
        if (vuzp1_s16(v18, *v17.i8).u8[0])
        {
          *(v16 - 1) = v14;
        }

        if (vuzp1_s16(v18, *&v17).i8[2])
        {
          *v16 = v14;
        }

        v19 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v17, xmmword_186205EB0)));
        if (vuzp1_s16(v19, v19).i32[1])
        {
          v16[1] = v14;
          v16[2] = v14;
        }

        v15 += 4;
        v16 += 4;
      }

      while (v141 != v15);
    }

LABEL_30:
    if (v145 >= 1)
    {
      v20 = (v12 + v160 + v161 * 4 + 12);
      v21 = v145 + 1;
      do
      {
        v20->i32[0] = 1226833920;
        v20[-1] = v11;
        v20 = (v20 + v161 * 4);
        --v21;
      }

      while (v21 > 1);
    }

    v22 = *(v150 + 11);
    v23 = *(v150 + 10) - v22;
    if (v23 < 1)
    {
      return kdu_block::finish_timing(v150);
    }

    v24 = 30 - v22;
    LODWORD(v25) = 3 * (30 - v22) - 2;
    v26 = *(v150 + 12);
    v25 = v25 >= v26 ? v26 : v25;
    v143 = v25;
    v176 = *(v150 + 7);
    if ((v176 & 0x10) != 0)
    {
      v27 = (*(v150 + 37) & 1) != 0 ? 1 : *(v150 + 36);
      v136 = v27;
    }

    else
    {
      v136 = 0;
    }

    if (v143 < 1)
    {
      break;
    }

    v148 = 0;
    v28 = 0;
    v147 = 0;
    v140 = 0;
    LODWORD(v151) = 0;
    v137 = 0;
    v138 = (v13 + 4);
    v135 = 3 * v23 - 2;
    v142 = *(v150 + 9);
    v29 = 2;
    while (1)
    {
      v162 = v28;
      v30 = v24 - 1;
      v31 = v29 == 3 ? v24 - 1 : v24;
      v180 = v31;
      v32 = v29 == 3 ? 0 : v29;
      v149 = v32;
      if (v151)
      {
        if (v28)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v33 = *(v150 + 7);
        if (v33)
        {
          if (v149 == 2)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          v36 = v28;
          if (v28 <= 9)
          {
            v35 = 10 - v28;
          }

          v37 = v147;
          if (v28 > 9)
          {
            v37 = v149 != 2;
          }

          v147 = v37;
          v34 = v135;
        }

        else
        {
          v34 = v135;
          v35 = v135;
          v36 = v28;
        }

        if ((v33 & 4) != 0)
        {
          LODWORD(v38) = 1;
        }

        else
        {
          LODWORD(v38) = v35;
        }

        v39 = v38 + v36 > v143;
        if (v38 + v36 <= v143)
        {
          v38 = v38;
        }

        else
        {
          v38 = (v143 - v36);
        }

        if (v143 >= v34)
        {
          v39 = 0;
        }

        v140 = v39;
        v151 = v38;
        if (v38 < 1)
        {
          v41 = 0;
        }

        else
        {
          v40 = 0;
          v41 = 0;
          do
          {
            v41 += *(*(v150 + 7) + v148 + 4 * v40++);
          }

          while (v40 < v151);
        }

        mq_decoder::start(v185, v142, v41, !v147);
        v142 += v41;
        v137 = v162;
        LODWORD(v4) = v181;
        if (v162)
        {
LABEL_78:
          if ((*(v150 + 28) & 2) == 0)
          {
            goto LABEL_82;
          }
        }
      }

      v42 = 0;
      v43 = mq_decoder::p_bar_table[0] << 8;
      do
      {
        v44 = &v187[v42];
        *v44 = v43;
        *(v44 + 1) = &mq_decoder::transition_table;
        ++v42;
      }

      while (v42 != 18);
      LODWORD(v187[0]) = unk_1EA8D9554 << 8;
      *(&v187[0] + 1) = &unk_1EA8E0948;
      LODWORD(v188) = dword_1EA8D9550 << 8;
      *(&v188 + 1) = &unk_1EA8E0908;
LABEL_82:
      if (v29 == 3 && !v147)
      {
        v64 = *(v150 + 8);
        v182[0] = 0;
        if (v145 >= 1)
        {
          v65 = *(&significance_luts + v64);
          v66 = (1 << v30) + (1 << v30 >> 1);
          v67 = v138;
          v68 = v139;
          v69 = v145;
          do
          {
            v172 = v69;
            if (v4 >= 1)
            {
              v70 = v4;
              do
              {
                v71 = *v67;
                if (*v67)
                {
                  if ((v71 & 0x1EF) != 0 && (v71 & 0x200010) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + (v71 & 0x1EF))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 1) & 0x820041;
                      v73 = v67[1] & 0x200010 | (*(v67 - 1) >> 2) & 0x80004 | v182[0];
                      v182[0] = v73 | HIWORD(v73);
                      v74 = sign_lut[(v73 | BYTE2(v73))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v74) & 0x7F0));
                      v182[0] ^= v74 & 1;
                      if ((v176 & 8) == 0)
                      {
                        v67[v168] |= 0x20000u;
                        v67[v169] |= (v182[0] << 31) | 0x10000;
                        v67[v167] |= 0x8000u;
                      }

                      *(v67 - 1) |= 0x20u;
                      v67[1] |= 8u;
                      v71 |= (v182[0] << 21) | 0x100010;
                      *v68 = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x100000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0xF78) != 0 && (v71 & 0x1000080) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 3) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 4) & 0x820041;
                      v77 = (*(v67 - 1) >> 5) & 0x80004 | v182[0] | (v67[1] >> 3) & 0x200010;
                      v182[0] = v77 | HIWORD(v77);
                      v78 = sign_lut[(v77 | BYTE2(v77))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v78) & 0x7F0));
                      v182[0] ^= v78 & 1;
                      *(v67 - 1) |= 0x100u;
                      v67[1] |= 0x40u;
                      v71 |= (v182[0] << 24) | 0x800080;
                      v68[v178] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x800000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0x7BC0) != 0 && (v71 & 0x8000400) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 6) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 7) & 0x820041;
                      v79 = (*(v67 - 1) >> 8) & 0x80004 | v182[0] | (v67[1] >> 6) & 0x200010;
                      v182[0] = v79 | HIWORD(v79);
                      v80 = sign_lut[(v79 | BYTE2(v79))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v80) & 0x7F0));
                      v182[0] ^= v80 & 1;
                      *(v67 - 1) |= 0x800u;
                      v67[1] |= 0x200u;
                      v71 |= (v182[0] << 27) | 0x4000400;
                      v68[v177] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x4000000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0x3DE00) != 0 && (v71 & 0x40002000) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 9) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 10) & 0x20041 | (v71 >> 31 << 23);
                      v81 = (*(v67 - 1) >> 11) & 0x80004 | (v67[1] >> 9) & 0x200010 | v182[0];
                      v182[0] = v81 | HIWORD(v81);
                      v82 = sign_lut[(v81 | BYTE2(v81))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v82) & 0x7F0));
                      v182[0] ^= v82 & 1;
                      v67[v174] |= 4u;
                      v67[v175] |= (v182[0] << 18) | 2;
                      v67[v173] |= 1u;
                      *(v67 - 1) |= 0x4000u;
                      v67[1] |= 0x1000u;
                      v71 |= (v182[0] << 30) | 0x20002000;
                      v68[v179] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x20000000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  *v67 = v71;
                }

                else if (!v67[3])
                {
                  do
                  {
                    v70 -= 3;
                    v68 += 3;
                    v75 = v67[6];
                    v67 += 3;
                  }

                  while (!v75);
                }

                ++v68;
                ++v67;
                v63 = __OFSUB__(v70--, 1);
              }

              while (!((v70 < 0) ^ v63 | (v70 == 0)));
            }

            v67 += 3;
            v68 += v179;
            v69 = v172 - 1;
          }

          while (v172 > 1);
        }

        goto LABEL_267;
      }

      if (v29 == 3)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v83 = (1 << v30) + (1 << v30 >> 1);
          v84 = v138;
          v85 = v139;
          v86 = v145;
          do
          {
            if (v4 >= 1)
            {
              v165 = v86;
              v87 = 0;
              v88 = v153;
              do
              {
                v89 = v84[v87];
                if (v89)
                {
                  if ((v89 & 0x1EF) != 0 && (v89 & 0x200010) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      if ((v176 & 8) == 0)
                      {
                        v84[v156 + v87] |= 0x20000u;
                        *(v84 + v158 + v87 * 4) |= (v182[0] << 31) | 0x10000;
                        v84[v157 + v87] |= 0x8000u;
                      }

                      v91 = &v84[v87];
                      *(v91 - 1) = v84[v87 - 1] | 0x20;
                      v91[1] = v84[v87 + 1] | 8;
                      v89 |= (v182[0] << 21) | 0x100010;
                      *&v85[v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x100000u;
                    }
                  }

                  if ((v89 & 0xF78) != 0 && (v89 & 0x1000080) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v93 = &v84[v87];
                      *(v93 - 1) = v84[v87 - 1] | 0x100;
                      v93[1] = v84[v87 + 1] | 0x40;
                      v89 |= (v182[0] << 24) | 0x800080;
                      *&v85[v160 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x800000u;
                    }
                  }

                  if ((v89 & 0x7BC0) != 0 && (v89 & 0x8000400) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v95 = &v84[v87];
                      *(v95 - 1) = v84[v87 - 1] | 0x800;
                      v95[1] = v84[v87 + 1] | 0x200;
                      v89 |= (v182[0] << 27) | 0x4000400;
                      *&v85[v152 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x4000000u;
                    }
                  }

                  if ((v89 & 0x3DE00) != 0 && (v89 & 0x40002000) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v84[v154 + v87] |= 4u;
                      v84[v161 + v87] |= (v182[0] << 18) | 2;
                      v84[v155 + v87] |= 1u;
                      v96 = &v84[v87];
                      *(v96 - 1) = v84[v87 - 1] | 0x4000;
                      v96[1] = v84[v87 + 1] | 0x1000;
                      v89 |= (v182[0] << 30) | 0x20002000;
                      *&v85[v159 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x20000000u;
                    }
                  }

                  v84[v87] = v89;
                }

                ++v87;
                --v88;
              }

              while (v88 > 1);
              v85 += v87 * 4;
              v84 = (v84 + v87 * 4);
              LODWORD(v4) = v181;
              v86 = v165;
            }

            v84 += 3;
            v85 += 4 * v179;
            v63 = __OFSUB__(v86--, 1);
          }

          while (!((v86 < 0) ^ v63 | (v86 == 0)));
        }

        goto LABEL_267;
      }

      if (v29 == 1 && !v147)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v97 = 1 << v24 >> 1;
          v98 = v138;
          v99 = v139;
          v100 = v145;
          do
          {
            if (v4 >= 1)
            {
              v101 = v4;
              do
              {
                v102 = *v98;
                if ((*v98 & 0x12480000) != 0)
                {
                  if ((v102 & 0x80000) != 0)
                  {
                    v103 = *v99;
                    v104 = (*v99 & 0x7FFFFFFFu) >> v180;
                    v182[0] = v104;
                    v105 = &v190;
                    if ((v102 & 0x1EF) != 0)
                    {
                      v105 = &v191;
                    }

                    if (v104 >= 4)
                    {
                      v106 = &v192;
                    }

                    else
                    {
                      v106 = v105;
                    }

                    mq_decoder::mq_decode(v185, v182, v106);
                    *v99 = ((1 - v182[0]) << v180) ^ v103 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x400000) != 0)
                  {
                    v107 = v99[v178];
                    v182[0] = (v107 & 0x7FFFFFFFu) >> v180;
                    v108 = &v190;
                    if ((v102 & 0xF78) != 0)
                    {
                      v108 = &v191;
                    }

                    if ((v107 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v109 = &v192;
                    }

                    else
                    {
                      v109 = v108;
                    }

                    mq_decoder::mq_decode(v185, v182, v109);
                    v99[v178] = ((1 - v182[0]) << v180) ^ v107 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x2000000) != 0)
                  {
                    v110 = v99[v177];
                    v182[0] = (v110 & 0x7FFFFFFFu) >> v180;
                    v111 = &v190;
                    if ((v102 & 0x7BC0) != 0)
                    {
                      v111 = &v191;
                    }

                    if ((v110 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v112 = &v192;
                    }

                    else
                    {
                      v112 = v111;
                    }

                    mq_decoder::mq_decode(v185, v182, v112);
                    v99[v177] = ((1 - v182[0]) << v180) ^ v110 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x10000000) != 0)
                  {
                    v113 = v99[v179];
                    v182[0] = (v113 & 0x7FFFFFFFu) >> v180;
                    v114 = &v190;
                    if ((v102 & 0x3DE00) != 0)
                    {
                      v114 = &v191;
                    }

                    if ((v113 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v115 = &v192;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    mq_decoder::mq_decode(v185, v182, v115);
                    v99[v179] = ((1 - v182[0]) << v180) ^ v113 | v97;
                    LODWORD(v4) = v181;
                  }
                }

                else if (!v98[2])
                {
                  do
                  {
                    v101 -= 2;
                    v99 += 2;
                    v116 = v98[4];
                    v98 += 2;
                  }

                  while (!v116);
                }

                ++v99;
                ++v98;
                v63 = __OFSUB__(v101--, 1);
              }

              while (!((v101 < 0) ^ v63 | (v101 == 0)));
            }

            v98 += 3;
            v99 += v179;
            v63 = __OFSUB__(v100--, 1);
          }

          while (!((v100 < 0) ^ v63 | (v100 == 0)));
        }

        goto LABEL_267;
      }

      if (v29 == 1)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v117 = 1 << v24 >> 1;
          v118 = v138;
          v119 = v139;
          v120 = v145;
          do
          {
            if (v4 >= 1)
            {
              v121 = v4;
              do
              {
                v122 = *v118;
                if ((*v118 & 0x12480000) != 0)
                {
                  if ((v122 & 0x80000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ *v119 | v117;
                    *v119 = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x400000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v178] | v117;
                    v119[v178] = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x2000000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v177] | v117;
                    v119[v177] = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x10000000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v179] | v117;
                    v119[v179] = v182[0];
                    LODWORD(v4) = v181;
                  }
                }

                else if (!v118[2])
                {
                  do
                  {
                    v121 -= 2;
                    v119 += 2;
                    v123 = v118[4];
                    v118 += 2;
                  }

                  while (!v123);
                }

                ++v119;
                ++v118;
                v63 = __OFSUB__(v121--, 1);
              }

              while (!((v121 < 0) ^ v63 | (v121 == 0)));
            }

            v118 += 3;
            v119 += v179;
            v63 = __OFSUB__(v120--, 1);
          }

          while (!((v120 < 0) ^ v63 | (v120 == 0)));
        }

LABEL_267:
        v46 = v162;
        goto LABEL_268;
      }

      v45 = *(v150 + 8);
      *v182 = v188;
      v186 = 0;
      v46 = v162;
      if (v145 < 1)
      {
        goto LABEL_120;
      }

      v47 = *(&significance_luts + v45);
      v171 = (1 << v24) + (1 << v24 >> 1);
      v49 = v138;
      v48 = v139;
      v50 = v145;
      while (2)
      {
        if (v4 < 1)
        {
          goto LABEL_118;
        }

        v144 = v50;
        v51 = 0;
        v170 = &v48[v159];
        v166 = v48;
        v163 = &v48[v160];
        v164 = &v48[v152];
        v52 = v153;
        do
        {
          v53 = v49[v51];
          if (v53)
          {
            goto LABEL_91;
          }

          mq_decoder::mq_decode(v185, &v186, v182);
          LODWORD(v4) = v181;
          if (!v186)
          {
            goto LABEL_116;
          }

          mq_decoder::mq_decode_run(v185, &v186);
          v53 = v49[v51];
          if (v186 <= 1)
          {
            LODWORD(v4) = v181;
            if (v186)
            {
              if (v186 != 1)
              {
LABEL_91:
                if ((v53 & 0x300010) != 0)
                {
                  goto LABEL_102;
                }

                mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + (v53 & 0x1EF))]);
                LODWORD(v4) = v181;
                if (!v186)
                {
                  goto LABEL_102;
                }

                goto LABEL_99;
              }

LABEL_104:
              v186 = (v53 >> 4) & 0x820041;
              v57 = (v49[v51 - 1] >> 5) & 0x80004 | v186 | (v49[v51 + 1] >> 3) & 0x200010;
              v186 = v57 | HIWORD(v57);
              v58 = sign_lut[(v57 | BYTE2(v57))];
              mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v58) & 0x7F0));
              v186 ^= v58 & 1;
              v49[v51 - 1] |= 0x100u;
              v49[v51 + 1] |= 0x40u;
              v53 |= (v186 << 24) | 0x80;
              *&v163[v51 * 4] = v171 + (v186 << 31);
              LODWORD(v4) = v181;
            }

            else
            {
LABEL_99:
              v186 = (v53 >> 1) & 0x820041;
              v54 = &v49[v51];
              v55 = v49[v51 + 1] & 0x200010 | (v49[v51 - 1] >> 2) & 0x80004 | v186;
              v186 = v55 | HIWORD(v55);
              v56 = sign_lut[(v55 | BYTE2(v55))];
              mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v56) & 0x7F0));
              v186 ^= v56 & 1;
              if ((v176 & 8) == 0)
              {
                v49[v156 + v51] |= 0x20000u;
                *(v49 + v158 + v51 * 4) |= (v186 << 31) | 0x10000;
                v49[v157 + v51] |= 0x8000u;
              }

              *(v54 - 1) |= 0x20u;
              v54[1] |= 8u;
              v53 |= (v186 << 21) | 0x10;
              *&v166[v51 * 4] = v171 + (v186 << 31);
              LODWORD(v4) = v181;
LABEL_102:
              if ((v53 & 0x1800080) == 0)
              {
                mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 3) & 0x1EFLL))]);
                LODWORD(v4) = v181;
                if (v186)
                {
                  goto LABEL_104;
                }
              }
            }

            if ((v53 & 0xC000400) == 0)
            {
              mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 6) & 0x1EFLL))]);
              LODWORD(v4) = v181;
              if (v186)
              {
LABEL_111:
                v186 = (v53 >> 7) & 0x820041;
                v59 = (v49[v51 - 1] >> 8) & 0x80004 | v186 | (v49[v51 + 1] >> 6) & 0x200010;
                v186 = v59 | HIWORD(v59);
                v60 = sign_lut[(v59 | BYTE2(v59))];
                mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v60) & 0x7F0));
                v186 ^= v60 & 1;
                v49[v51 - 1] |= 0x800u;
                v49[v51 + 1] |= 0x200u;
                v53 |= (v186 << 27) | 0x400;
                *&v164[v51 * 4] = v171 + (v186 << 31);
                LODWORD(v4) = v181;
              }
            }

            if ((v53 & 0x60002000) != 0)
            {
              goto LABEL_115;
            }

            mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 9) & 0x1EFLL))]);
            LODWORD(v4) = v181;
            if (!v186)
            {
              goto LABEL_115;
            }

            goto LABEL_114;
          }

          LODWORD(v4) = v181;
          if (v186 == 2)
          {
            goto LABEL_111;
          }

          if (v186 != 3)
          {
            goto LABEL_91;
          }

LABEL_114:
          v186 = (v53 >> 10) & 0x20041 | (v53 >> 31 << 23);
          v61 = (v49[v51 - 1] >> 11) & 0x80004 | (v49[v51 + 1] >> 9) & 0x200010 | v186;
          v186 = v61 | HIWORD(v61);
          v62 = sign_lut[(v61 | BYTE2(v61))];
          mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v62) & 0x7F0));
          v186 ^= v62 & 1;
          v49[v154 + v51] |= 4u;
          v49[v161 + v51] |= (v186 << 18) | 2;
          v49[v155 + v51] |= 1u;
          v49[v51 - 1] |= 0x4000u;
          v49[v51 + 1] |= 0x1000u;
          v53 |= (v186 << 30) | 0x2000;
          *&v170[v51 * 4] = v171 + (v186 << 31);
          LODWORD(v4) = v181;
LABEL_115:
          v49[v51] = (v53 << 15) & 0x12480000 | v53 & 0xDB6FFFFF;
LABEL_116:
          ++v51;
          --v52;
        }

        while (v52 > 1);
        v48 = &v166[v51 * 4];
        v49 = (v49 + v51 * 4);
        v46 = v162;
        v50 = v144;
LABEL_118:
        v49 += 3;
        v48 += 4 * v179;
        v63 = __OFSUB__(v50--, 1);
        if (!((v50 < 0) ^ v63 | (v50 == 0)))
        {
          continue;
        }

        break;
      }

LABEL_120:
      v188 = *v182;
LABEL_268:
      if ((*(v150 + 28) & 0x20) != 0 && v149 == 2)
      {
        break;
      }

LABEL_274:
      LODWORD(v151) = v151 - 1;
      if (!v151)
      {
        v125 = mq_decoder::finish(v185, v136 & ~v140 & 1);
        LODWORD(v4) = v181;
        v46 = v162;
        if ((v125 & 1) == 0)
        {
          *(v150 + 12) = v137;
          if ((*(v150 + 28) & 0x20) != 0 && v162 - v149 > v137)
          {
            *(v150 + 12) = v162 - v149;
          }

          goto LABEL_290;
        }
      }

      v28 = v46 + 1;
      v29 = v149 + 1;
      v148 += 4;
      v24 = v180;
      if (v28 == v143)
      {
        goto LABEL_277;
      }
    }

    v182[0] = 0;
    mq_decoder::mq_decode_run(v185, v182);
    v124 = v182[0];
    mq_decoder::mq_decode_run(v185, v182);
    if (v182[0] + 4 * v124 == 10 || (*(v150 + 37) & 1) == 0 && (*(v150 + 36) & 1) == 0)
    {
      LODWORD(v4) = v181;
      v46 = v162;
      goto LABEL_274;
    }

    v127 = v162 - 2;
    if (v162 < 2)
    {
      v127 = 0;
    }

    v128 = v137;
    if (v137 <= v127)
    {
      v128 = v127;
    }

    if (v136)
    {
      v127 = v128;
    }

    *(v150 + 12) = v127;
    mq_decoder::finish(v185, 0);
    LODWORD(v4) = v181;
LABEL_290:
    if (*(v150 + 37) == 1)
    {
      v184 = 0;
      *v182 = 0u;
      v183 = 0u;
      kdu_error::kdu_error(v182, "Kakadu Core Error:\n");
      (*(*v182 + 16))(v182, "Encountered incorrectly terminated codeword segment, or invalid SEGMARK symbol in code-block bit-stream.  You may like to use the resilient mode to recover from and conceal such errors.");
      kdu_error::~kdu_error(v182);
    }

    if ((*(v150 + 120) & 1) == 0)
    {
      *(v150 + 120) = 1;
      v184 = 0;
      *v182 = 0u;
      v183 = 0u;
      kdu_warning::kdu_warning(v182, "Kakadu Core Warning:\n");
      (*(*v182 + 16))(v182, "One or more corrupted block bit-streams detected.\n");
      kdu_warning::~kdu_warning(v182);
      LODWORD(v4) = v181;
    }
  }

LABEL_277:
  if (v134-- > 1)
  {
    goto LABEL_15;
  }

  return kdu_block::finish_timing(v150);
}

void kd_block_decoder::~kd_block_decoder(kd_block_decoder *this)
{
  *this = &unk_1EF4D3368;
}

{
  *this = &unk_1EF4D3368;
  JUMPOUT(0x186602850);
}

int32x4_t *kd_decoder::init(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, int a5, kdu_thread_entity *a6, char *a7, float a8)
{
  v37 = a2;
  v8 = (a1 + 88);
  if (*(a1 + 88) || *(a1 + 120))
  {
    kd_decoder::init();
  }

  if (a6)
  {
    *(a1 + 120) = kdu_thread_entity::add_queue(a6, a1 + 8, a7, "block decoder");
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = kdu_subband::get_K_max(&v37);
  K_max_prime = kdu_subband::get_K_max_prime(&v37);
  *(a1 + 34) = K_max_prime;
  if (*(a1 + 32) > K_max_prime)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(a1 + 36) = kdu_subband::get_reversible(&v37);
  *(a1 + 37) = 0;
  *(a1 + 40) = kdu_subband::get_delta(&v37) * a8;
  v36 = 0uLL;
  kdu_subband::get_dims(&v37, &v36);
  v34 = 0;
  v35 = 0;
  kdu_subband::get_block_size(&v37, &v35, &v34);
  result = kdu_subband::get_valid_blocks(&v37, (a1 + 44));
  v17 = v36.i32[2];
  *(a1 + 60) = v36.i64[1];
  v18 = v35.i16[0];
  v19 = vuzp1_s16(v34, v35);
  *(a1 + 70) = vrev32_s16(v19);
  *(a1 + 39) = 1;
  if (!a6)
  {
    *(a1 + 78) = v19.i16[2];
    v24 = (a1 + 78);
    *(a1 + 68) = 0;
    LOWORD(v21) = v17;
    if (v17 > v18)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  result = kdu_thread_entity::get_num_threads(a6);
  v20 = *(a1 + 76);
  v21 = *(a1 + 60);
  if (result > 1)
  {
    v22 = *(a1 + 76);
    if (v21 < v20)
    {
      v22 = v21;
    }

    v23 = (v22 * *(a1 + 64) + (v22 * *(a1 + 64) < 0 ? 0x1FFFuLL : 0)) >> 13;
    if (*(a1 + 56) <= v23)
    {
      kd_decoder::init();
    }

    if (v23 <= 1)
    {
      LODWORD(v23) = 1;
    }

    if (v23 >= 32)
    {
      LOBYTE(v23) = 32;
    }

    *(a1 + 39) = v23;
  }

  *(a1 + 78) = v20;
  v24 = (a1 + 78);
  *(a1 + 68) = 0;
  if (v21 <= v20)
  {
LABEL_23:
    *v24 = v21;
    goto LABEL_24;
  }

  result = kdu_thread_entity::get_num_threads(a6);
  if (result >= 2)
  {
    v25 = 8u / *(a1 + 39) + 1;
    result = kdu_subband::get_band_idx(&v37);
    if (result <= v25)
    {
      v26 = *(a1 + 60) - *(a1 + 72);
      if (v26 >= *(a1 + 76))
      {
        LOWORD(v26) = *(a1 + 76);
      }

      *(a1 + 78) += v26;
      v33 = kdu_node::access_resolution(&v37);
      result = kdu_resolution::get_dwt_level(&v33);
      *(a1 + 68) = 64 - result;
    }
  }

LABEL_24:
  v27 = 0;
  *(a1 + 38) = 0;
  *(a1 + 80) = 0;
  v28 = *(a1 + 64);
  if (v34.i32[1] < v28)
  {
    if (a4)
    {
      v29 = 7;
    }

    else
    {
      v29 = 3;
    }

    v27 = v29 & -v34.i32[1];
    *(a1 + 38) = v27;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (v36.i32[3] >= 1 && *(v36.i64 + 4) > 0)
  {
    *v8 = a3;
    if (*a3)
    {
      v30 = v28 + v27 + 3;
      if (a4)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      *(a3 + 4) += (((v30 << v31) + 15) & 0xFFFFFFF0) * *(a1 + 78);
      operator new[]();
    }

    kdu_sample_allocator::pre_alloc();
  }

  *(a1 + 60) = 0;
  return result;
}

void kd_decoder::~kd_decoder(kd_decoder *this)
{
  *this = &unk_1EF4D3390;
  *(this + 1) = &unk_1EF4D33C8;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x20C8093837F09);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x20C8093837F09);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 1) = &unk_1EF4D3478;
  *this = &unk_1EF4D3448;
}

{
  kd_decoder::~kd_decoder(this);

  JUMPOUT(0x186602850);
}

void non-virtual thunk tokd_decoder::~kd_decoder(kd_decoder *this)
{
  kd_decoder::~kd_decoder((this - 8));
}

{
  kd_decoder::~kd_decoder((this - 8));

  JUMPOUT(0x186602850);
}

uint64_t kd_decoder::start(uint64_t result, kdu_thread_entity *this)
{
  v2 = result;
  if ((*(result + 37) & 1) == 0 && *(result + 64) && *(result + 60))
  {
    if (this)
    {
      result = kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    v4 = *(v2 + 78);
    if (*(v2 + 96))
    {
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *(v2 + 38);
        do
        {
          result = kdu_sample_allocator::alloc16(*(v2 + 88), 0, *(v2 + 64) + v6 + 3);
          v6 = *(v2 + 38);
          *(*(v2 + 96) + 8 * v5++) = result + 2 * *(v2 + 38);
        }

        while (v5 < *(v2 + 78));
      }
    }

    else if (v4 >= 1)
    {
      v7 = 0;
      v8 = *(v2 + 38);
      do
      {
        result = kdu_sample_allocator::alloc32(*(v2 + 88), 0, *(v2 + 64) + v8 + 3);
        v8 = *(v2 + 38);
        *(*(v2 + 104) + 8 * v7++) = result + 4 * *(v2 + 38);
      }

      while (v7 < *(v2 + 78));
    }

    *(v2 + 37) = 1;
    if (this)
    {
      kdu_thread_entity::release_lock(this, 3);
      v9 = *(v2 + 120);
      v10 = *(v2 + 39);

      return kdu_thread_entity::add_jobs(this, v9, v10, 0);
    }
  }

  else
  {
    *(result + 37) = 1;
  }

  return result;
}

unsigned __int16 *kd_decoder::pull(unsigned __int16 *result, uint64_t a2, kdu_thread_entity *this)
{
  v5 = result;
  if (!this && *(result + 15))
  {
    kd_decoder::pull();
  }

  if (*a2 > *(result + 28))
  {
    if ((*(result + 37) & 1) == 0)
    {
      result = (*(*result + 16))(result, this);
    }

    if (*(v5 + 15) >= 1)
    {
      v6 = v5[40];
      if (v6 == v5[41])
      {
        v5[40] = 0;
        v7 = *(v5 + 15);
        if (v7)
        {
          if (v5[34])
          {
            v8 = v5[38];
            if (v5[39] <= v8)
            {
              kd_decoder::pull();
            }

            if (*(v5 + 21))
            {
              if (v6 <= v8)
              {
                v5[40] = v8;
              }
            }

            else
            {
              kdu_thread_entity::add_jobs(this, v7, *(v5 + 39), v5[34]);
              v7 = *(v5 + 15);
            }
          }

          kdu_thread_entity::process_jobs(this, v7, 0, 1);
        }

        else
        {
          if (*(v5 + 39) != 1)
          {
            kd_decoder::pull();
          }

          (*(*v5 + 32))(v5, this, *(v5 + 21));
        }

        v9 = *(v5 + 21);
        if (v9)
        {
          v10 = *(v5 + 15);
          v11 = v5[40];
          v12 = v10 < v5[38];
          v13 = v11 + v10;
          if (!v12)
          {
            v13 = v11 + v5[38];
          }
        }

        else
        {
          v13 = v5[36];
        }

        v5[41] = v13;
        if (v5[39] < v13)
        {
          kd_decoder::pull();
        }

        *(v5 + 21) = v9 + 1;
      }

      v14 = *(v5 + 16);
      v15 = *(v5 + 28);
      if (*a2 != v15 + v14)
      {
        kd_decoder::pull();
      }

      v16 = *(v5 + 13);
      v17 = *(a2 + 8);
      if (v16)
      {
        if ((*(a2 + 6) & 2) != 0)
        {
          v17 = 0;
        }

        v18 = (v17 + 4 * v15);
        v19 = *(v16 + 8 * v5[40]);
        v20 = 4 * v14;
      }

      else
      {
        if ((*(a2 + 6) & 2) != 0)
        {
          v21 = *(a2 + 8);
        }

        else
        {
          v21 = 0;
        }

        v18 = (v21 + 2 * v15);
        v19 = *(*(v5 + 12) + 8 * v5[40]);
        v20 = 2 * v14;
      }

      result = memcpy(v18, v19, v20);
      v22 = *(v5 + 15);
      v23 = v22 - 1;
      *(v5 + 15) = v22 - 1;
      v24 = v5[40] + 1;
      v5[40] = v24;
      v25 = *(v5 + 15);
      if (v25 && v24 >= v5[41] && v22 >= 2)
      {
        v26 = v5[34];
        if (!v5[34])
        {
          goto LABEL_40;
        }

        v27 = v5[38];
        if (v5[39] <= v27)
        {
          kd_decoder::pull();
        }

        if (v23 <= v27)
        {
          v29 = this;
          v28 = 0;
          v26 = 0;
        }

        else
        {
LABEL_40:
          v28 = *(v5 + 39);
          v29 = this;
        }

        return kdu_thread_entity::add_jobs(v29, v25, v28, v26);
      }
    }
  }

  return result;
}

void kd_decoder::do_job(kd_block *this, kdu_thread_entity *a2, int a3)
{
  v3 = a2;
  v5 = *(this + 39);
  v7 = *(this + 12);
  v6 = *(this + 13);
  v8 = a3 / v5;
  if ((a3 / v5))
  {
    v9 = *(this + 38);
    v10 = &v6[v9];
    if (!v6)
    {
      v10 = 0;
    }

    v11 = &v7[v9];
    if (!v7)
    {
      v11 = 0;
    }

    if (*(this + 39) > *(this + 38))
    {
      v7 = v11;
      v6 = v10;
    }
  }

  if (v8 >= *(this + 13))
  {
    kd_decoder::do_job();
  }

  v12 = *(this + 14);
  v13 = *(this + 12);
  v98 = v6;
  v96 = v7;
  if (v5 < 2)
  {
    if (v12 < 1)
    {
      return;
    }
  }

  else
  {
    v14 = a3 % v5 * v12;
    v15 = v14 / v5;
    v16 = (v12 + v14) / v5;
    v12 = v16 - v15;
    if (v16 <= v15)
    {
      kd_decoder::do_job();
    }

    if (v15 >= 1)
    {
      v13 = (v15 + v13);
      v17 = *(this + 35) + (v15 - 1) * *(this + 37);
      goto LABEL_15;
    }
  }

  v17 = 0;
LABEL_15:
  v97 = (v8 + *(this + 11));
  do
  {
    v18 = kdu_subband::open_block(this + 3, v97 | (v13 << 32), 0, v3);
    if (!v18 || ((v19 = v18, (*(**(this + 2) + 16))(*(this + 2), v18), !*(v19 + 24)) ? (v20 = *(v19 + 20)) : (v20 = *(v19 + 16)), !*(v19 + 24) ? (v21 = *(v19 + 16)) : (v21 = *(v19 + 20)), v20 + v17 > *(this + 16)))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    v99 = v20 + v17;
    v100 = v12;
    if (*(v19 + 48))
    {
      if (*(this + 17) > *(this + 16))
      {
        kd_decoder::adjust_roi_background(this, v19);
      }

      v22 = *(v19 + 4);
      v23 = *(v19 + 96) + 4 * *(v19 + 8) * v22 + 4 * *(v19 + 12);
      if (*(v19 + 25))
      {
        v24 = v21 - 1;
      }

      else
      {
        v24 = 0;
      }

      if (*(v19 + 25))
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if (*(v19 + 26))
      {
        v26 = v20 - 1;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 + v17;
      if (*(v19 + 26))
      {
        v28 = -1;
      }

      else
      {
        v28 = 1;
      }

      if (v98)
      {
        v29 = &v98[v24];
        if (*(this + 36))
        {
          v30 = *(this + 16);
          if (v30 >= 32)
          {
            v103 = 0;
            v101 = 0u;
            v102 = 0u;
            kdu_error::kdu_error(&v101, "Kakadu Core Error:\n");
            (*(v101 + 16))(&v101, "Insufficient implementation precision available for true reversible processing!");
            kdu_error::~kdu_error(&v101);
          }

          v31 = 31 - v30;
          if (*(v19 + 24))
          {
            v3 = a2;
            if (v21)
            {
              v32 = v27;
              v33 = 4 * v22;
              do
              {
                if (v20)
                {
                  v34 = 0;
                  v35 = (*v29 + 4 * v32);
                  v36 = v20;
                  do
                  {
                    v37 = *(v23 + v34);
                    if (v37 < 0)
                    {
                      v38 = -((v37 & 0x7FFFFFFFu) >> v31);
                    }

                    else
                    {
                      v38 = v37 >> v31;
                    }

                    *v35 = v38;
                    v35 += v28;
                    v34 += v33;
                    --v36;
                  }

                  while (v36);
                }

                v29 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else
          {
            v3 = a2;
            if (v21)
            {
              v71 = v27;
              v72 = 4 * v22;
              do
              {
                if (v20)
                {
                  v73 = 0;
                  v74 = (*v29 + 4 * v71);
                  do
                  {
                    v75 = *(v23 + 4 * v73);
                    if (v75 < 0)
                    {
                      v76 = -((v75 & 0x7FFFFFFFu) >> v31);
                    }

                    else
                    {
                      v76 = v75 >> v31;
                    }

                    *v74 = v76;
                    v74 += v28;
                    ++v73;
                  }

                  while (v20 != v73);
                }

                v29 += v25;
                v23 += v72;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }
        }

        else
        {
          v51 = *(this + 10);
          v52 = *(this + 16);
          if (v52 > 31)
          {
            v53 = v51 * (1 << (v52 - 31));
          }

          else
          {
            v53 = v51 / (0x80000000 >> v52);
          }

          if (*(v19 + 24))
          {
            if (v21)
            {
              v60 = v27;
              v61 = 4 * v22;
              do
              {
                if (v20)
                {
                  v62 = 0;
                  v63 = (*v29 + 4 * v60);
                  v64 = v20;
                  do
                  {
                    v65 = *(v23 + v62);
                    if (v65 < 0)
                    {
                      v65 = -(v65 & 0x7FFFFFFF);
                    }

                    *v63 = v53 * v65;
                    v63 += v28;
                    v62 += v61;
                    --v64;
                  }

                  while (v64);
                }

                v29 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else if (v21)
          {
            v66 = v27;
            v67 = 4 * v22;
            do
            {
              if (v20)
              {
                v68 = 0;
                v69 = (*v29 + 4 * v66);
                do
                {
                  v70 = *(v23 + 4 * v68);
                  if (v70 < 0)
                  {
                    v70 = -(v70 & 0x7FFFFFFF);
                  }

                  *v69 = v53 * v70;
                  v69 += v28;
                  ++v68;
                }

                while (v20 != v68);
              }

              v29 += v25;
              v23 += v67;
              LODWORD(v21) = v21 - 1;
            }

            while (v21);
          }
        }
      }

      else
      {
        v42 = &v96[v24];
        if (*(this + 36))
        {
          v43 = *(this + 16);
          if (v43 >= 32)
          {
            v103 = 0;
            v101 = 0u;
            v102 = 0u;
            kdu_error::kdu_error(&v101, "Kakadu Core Error:\n");
            (*(v101 + 16))(&v101, "Need 32 bits for 16-bit dequantized values");
            kdu_error::~kdu_error(&v101);
          }

          v44 = 31 - v43;
          if (*(v19 + 24))
          {
            v3 = a2;
            if (v21)
            {
              v45 = v27;
              v46 = 4 * v22;
              do
              {
                if (v20)
                {
                  v47 = 0;
                  v48 = (*v42 + 2 * v45);
                  v49 = v20;
                  do
                  {
                    v50 = *(v23 + v47);
                    if (v50 < 0)
                    {
                      v50 = -((v50 & 0x7FFFFFFFu) >> v44);
                    }

                    else
                    {
                      LOWORD(v50) = v50 >> v44;
                    }

                    *v48 = v50;
                    v48 += v28;
                    v47 += v46;
                    --v49;
                  }

                  while (v49);
                }

                v42 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else
          {
            v3 = a2;
            if (v21)
            {
              v89 = v27;
              v90 = 4 * v22;
              do
              {
                if (v20)
                {
                  v91 = 0;
                  v92 = (*v42 + 2 * v89);
                  do
                  {
                    v93 = *(v23 + 4 * v91);
                    if (v93 < 0)
                    {
                      v93 = -((v93 & 0x7FFFFFFFu) >> v44);
                    }

                    else
                    {
                      LOWORD(v93) = v93 >> v44;
                    }

                    *v92 = v93;
                    v92 += v28;
                    ++v91;
                  }

                  while (v20 != v91);
                }

                v42 += v25;
                v23 += v90;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }
        }

        else
        {
          v57 = *(this + 10) * 8192.0;
          v58 = *(this + 16);
          if (v58 > 31)
          {
            v59 = v57 * (1 << (v58 - 31));
          }

          else
          {
            v59 = v57 / (0x80000000 >> v58);
          }

          v77 = ((v59 * 4295000000.0) + 0.5);
          if (*(v19 + 24))
          {
            if (v21)
            {
              v78 = v27;
              v79 = 4 * v22;
              do
              {
                if (v20)
                {
                  v80 = 0;
                  v81 = (*v42 + 2 * v78);
                  v82 = v20;
                  do
                  {
                    v83 = *(v23 + v80);
                    if (v83 < 0)
                    {
                      v83 = -(v83 & 0x7FFFFFFF);
                    }

                    *v81 = (((v83 + 0x8000) >> 16) * v77 + 0x8000) >> 16;
                    v81 += v28;
                    v80 += v79;
                    --v82;
                  }

                  while (v82);
                }

                v42 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else if (v21)
          {
            v84 = v27;
            v85 = 4 * v22;
            do
            {
              if (v20)
              {
                v86 = 0;
                v87 = (*v42 + 2 * v84);
                do
                {
                  v88 = *(v23 + 4 * v86);
                  if (v88 < 0)
                  {
                    v88 = -(v88 & 0x7FFFFFFF);
                  }

                  *v87 = (((v88 + 0x8000) >> 16) * v77 + 0x8000) >> 16;
                  v87 += v28;
                  ++v86;
                }

                while (v20 != v86);
              }

              v42 += v25;
              v23 += v85;
              LODWORD(v21) = v21 - 1;
            }

            while (v21);
          }
        }
      }
    }

    else if (v98)
    {
      if (v21 >= 1)
      {
        if (v20 >= 4)
        {
          v39 = 4;
        }

        else
        {
          v39 = v20;
        }

        v40 = 16 * ((v20 - v39 + 3) >> 2);
        v41 = v98;
        do
        {
          if (v20 >= 1)
          {
            bzero((*v41 + 4 * v17), v40 + 16);
          }

          ++v41;
          --v21;
        }

        while (v21);
      }
    }

    else if (v21 >= 1)
    {
      if (v20 >= 4)
      {
        v54 = 4;
      }

      else
      {
        v54 = v20;
      }

      v55 = 8 * ((v20 - v54 + 3) >> 2);
      v56 = v96;
      do
      {
        if (v20 >= 1)
        {
          bzero((*v56 + 2 * v17), v55 + 8);
        }

        ++v56;
        --v21;
      }

      while (v21);
    }

    kdu_subband::close_block((this + 24), v19, v3);
    v13 = (v13 + 1);
    v17 = v99;
    v12 = v100 - 1;
  }

  while (v100 > 1);
}

uint64_t kd_decoder::adjust_roi_background(uint64_t this, kdu_block *a2)
{
  v2 = 4 * *(a2 + 1) * ((*a2 + 3) >> 2);
  if (v2)
  {
    v3 = *(this + 32);
    v4 = *(this + 34) - v3;
    v5 = (-1 << ~v3) & 0x7FFFFFFF;
    v6 = *(a2 + 12);
    v7 = vdupq_n_s32(v5);
    do
    {
      v8 = *v6;
      v9 = vmovn_s32(vbicq_s8(vceqzq_s32(vandq_s8(v7, *v6)), vceqzq_s32(*v6)));
      if (v9.i8[0])
      {
        v6->i32[0] = (v8.i32[0] << v4) | v8.i32[0] & 0x80000000;
      }

      if (v9.i8[2])
      {
        v6->i32[1] = (v8.i32[1] << v4) | v8.i32[1] & 0x80000000;
      }

      if (v9.i8[4])
      {
        v6->i32[2] = (v8.i32[2] << v4) | v8.i32[2] & 0x80000000;
      }

      if (v9.i8[6])
      {
        v6->i32[3] = (v8.i32[3] << v4) | v8.i32[3] & 0x80000000;
      }

      ++v6;
      v2 -= 4;
    }

    while (v2);
  }

  return this;
}

void kd_decoder::kd_decoder(kd_decoder *this)
{
  *this = &unk_1EF4D3390;
  *(this + 1) = &unk_1EF4D33C8;
  kdu_block_decoder::kdu_block_decoder((this + 16));
}

void sub_185F8BFBC(_Unwind_Exception *a1)
{
  *v1 = &unk_1EF4D3448;
  v1[1] = &unk_1EF4D3478;
  _Unwind_Resume(a1);
}

float *kd_analysis::init(uint64_t a1, int32x4_t *a2, kdu_sample_allocator *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v164[4] = *MEMORY[0x1E69E9840];
  v162 = a2;
  v161 = kdu_node::access_resolution(&v162);
  if (a5)
  {
    if (kdu_resolution::propagate_roi(&v161))
    {
      kdu_roi_level::create((a1 + 144));
    }

    (*(*a5 + 16))(a5);
  }

  reversible = kdu_resolution::get_reversible(&v161);
  *(a1 + 48) = 0u;
  v13 = (a1 + 48);
  *(a1 + 40) = reversible;
  *(a1 + 41) = a4;
  *(a1 + 42) = 0;
  *(a1 + 104) = 0;
  *(a1 + 98) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  kernel_id = kdu_node::get_kernel_id(&v162);
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v160 = 0uLL;
  result = kdu_node::get_dims(&v162, &v160);
  v16 = v160.i32[0];
  v17 = v160.i32[1];
  v18 = v160.i32[2];
  v19 = v160.i32[3];
  v20 = v160.i32[3] + v160.i32[1];
  v21 = v160.i32[3] + v160.i32[1] - 1;
  v22 = v160.i32[0] + v160.i32[2] - 1;
  *(a1 + 112) = v160.i32[0];
  *(a1 + 116) = v22;
  *(a1 + 124) = v17;
  *(a1 + 128) = v21;
  v24 = v19 < 1 || v18 < 1;
  *(a1 + 142) = v24;
  *(a1 + 140) = v22 == v16;
  *(a1 + 141) = v21 == v17;
  if (!v24)
  {
    v148 = v19;
    v149 = v20;
    v150 = v17;
    v25 = kdu_node::access_child(&v162, 0);
    v164[0] = v25;
    v26 = kdu_node::access_child(&v162, 1u);
    v164[1] = v26;
    v27 = kdu_node::access_child(&v162, 2u);
    v164[2] = v27;
    v164[3] = kdu_node::access_child(&v162, 3u);
    if (!v25)
    {
      kd_analysis::init();
    }

    *(a1 + 43) = v27 != 0;
    *(a1 + 44) = v26 != 0;
    v158 = 1065353216;
    v159 = 1065353216;
    v156 = 1065353216;
    v157 = 1065353216;
    if (v27)
    {
      v163[0] = 0;
      v154[0] = 0;
      *v155 = 0;
      kernel_info = kdu_node::get_kernel_info(&v162, (a1 + 48), &v159, &v158, (a1 + 96), (a1 + 98), v163, v154, &v155[1], v155, 1);
      if (v154[0] <= v155[0])
      {
        v29 = v155[0];
      }

      else
      {
        v29 = v154[0];
      }

      if (v163[0] >= v155[1])
      {
        v30 = v155[1];
      }

      else
      {
        v30 = v163[0];
      }

      LODWORD(v31) = *(a1 + 48);
      if (v31 > 4)
      {
        operator new[]();
      }

      v32 = a1 + 576;
      *(a1 + 80) = v32;
      if (v31 < 1)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = *(a1 + 40);
        v37 = (kernel_info + 8);
        v31 = v31;
        do
        {
          *(v32 + 4) = *(v37 - 1);
          v38 = *(v37 - 2);
          *(v32 + 1) = v38;
          *(v32 + 2) = *v37;
          *(v32 + 6) = v37[1];
          if (v35 <= v38)
          {
            v35 = v38;
          }

          *(v32 + 30) = kernel_id;
          *(v32 + 29) = v36;
          v34 += v38;
          v32 += 32;
          v37 += 4;
          --v31;
        }

        while (v31);
        if (v35 > 4)
        {
          operator new[]();
        }
      }

      v33 = v29 - v30;
      *(a1 + 56) = a1 + 272 + 8 * v35;
      *(a1 + 64) = a1 + 272;
      if (*(a1 + 44))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v33 = 0;
      if (v26)
      {
        kernel_info = 0;
        v34 = 0;
LABEL_34:
        v163[0] = 0;
        v154[0] = 0;
        *v155 = 0;
        v39 = kdu_node::get_kernel_info(&v162, (a1 + 52), &v157, &v156, (a1 + 97), (a1 + 99), v163, v154, &v155[1], v155, 0);
        if (v39 == kernel_info)
        {
          v41 = *(a1 + 80);
        }

        else
        {
          v40 = *v13;
          if (v40 + *(a1 + 52) > 4)
          {
            operator new[]();
          }

          v41 = a1 + 32 * v40 + 576;
        }

        *(a1 + 88) = v41;
        if (v41 != *(a1 + 80))
        {
          v42 = *(a1 + 52);
          if (v42 >= 1)
          {
            v43 = *(a1 + 40);
            v44 = (v39 + 8);
            do
            {
              *(v41 + 4) = *(v44 - 1);
              v45 = *(v44 - 2);
              *(v41 + 1) = v45;
              *(v41 + 2) = *v44;
              *(v41 + 6) = v44[1];
              *(v41 + 30) = kernel_id;
              *(v41 + 29) = v43;
              v34 += v45;
              v41 += 32;
              v44 += 4;
              --v42;
            }

            while (v42);
          }
        }

        *(a1 + 132) = ((v149 + 1) >> 1) - ((v150 + 1) >> 1);
        *(a1 + 136) = (v149 >> 1) - (v150 >> 1);
LABEL_46:
        if (v34 >= 9)
        {
          operator new[]();
        }

        v46 = (a1 + 208);
        v47 = (a1 + 240);
        if (*(a1 + 43) == 1)
        {
          kernel_coefficients = kdu_node::get_kernel_coefficients(&v162, 1);
          v49 = *v13;
          if (*v13 >= 1)
          {
            v50 = 0;
            v51 = *(a1 + 80);
            v52 = *(a1 + 40);
            do
            {
              v53 = v51 + 32 * v50;
              *v53 = v50;
              *(v53 + 8) = v46;
              *(v53 + 16) = v47;
              *(v53 + 28) = 0;
              v54 = *(v53 + 1);
              if (*(v53 + 1))
              {
                v55 = *(v53 + 1);
                v56 = kernel_coefficients;
                v57 = v46;
                v58 = 0.4;
                do
                {
                  v59 = *v56;
                  *v57 = *v56;
                  if (v59 <= v58)
                  {
                    if (v59 < -v58)
                    {
                      v58 = -v59;
                    }
                  }

                  else
                  {
                    v58 = v59;
                  }

                  ++v57;
                  ++v56;
                  --v55;
                }

                while (v55);
                if (v52)
                {
LABEL_66:
                  v60 = *(v53 + 2);
                  if (v54)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_73;
                }

                v60 = 16;
                *(v53 + 2) = 16;
                if (v58 >= 0.499)
                {
                  v60 = 16;
                  do
                  {
                    --v60;
                    v58 = v58 * 0.5;
                  }

                  while (v58 >= 0.499);
                  *(v53 + 2) = v60;
                  if (v60 < 0x10u)
                  {
                    *(v53 + 6) = 1 << (v60 - 1);
                    if (v54)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_73;
                  }
                }
              }

              else
              {
                if (v52)
                {
                  goto LABEL_66;
                }

                v60 = 16;
                *(v53 + 2) = 16;
              }

              *(v53 + 6) = 0x7FFF;
              if (v54)
              {
LABEL_70:
                v61 = (1 << v60);
                v62 = v54;
                v63 = v46;
                v64 = v47;
                do
                {
                  v65 = *v63++;
                  *v64++ = vcvtmd_s64_f64((v65 * v61) + 0.5);
                  --v62;
                }

                while (v62);
                v49 = *v13;
              }

LABEL_73:
              v46 += v54;
              v47 += v54;
              kernel_coefficients += 4 * v54;
              *(v53 + 3) = 0;
              *(v53 + 24) = 0;
              ++v50;
            }

            while (v50 < v49);
          }
        }

        if (*(a1 + 44) == 1)
        {
          v66 = kdu_node::get_kernel_coefficients(&v162, 0);
          if (*(a1 + 52) >= 1)
          {
            v67 = 0;
            v68 = 0;
            v70 = *(a1 + 80);
            v69 = *(a1 + 88);
            while (1)
            {
              v71 = v69 + 32 * v67;
              if (v69 == v70)
              {
                LODWORD(v72) = *(v71 + 1);
                if (*(v71 + 1))
                {
                  v79 = *(v71 + 8);
                  v80 = *(v71 + 1);
                  v81 = v66;
                  do
                  {
                    if (*v79 != *v81)
                    {
                      kd_analysis::init();
                    }

                    ++v81;
                    ++v79;
                    --v80;
                  }

                  while (v80);
                }

                goto LABEL_105;
              }

              *v71 = v67;
              *(v71 + 24) = 0;
              *(v71 + 8) = v46;
              *(v71 + 16) = v47;
              *(v71 + 28) = 0;
              v72 = *(v71 + 1);
              if (*(v71 + 1))
              {
                v73 = *(v71 + 1);
                v74 = v66;
                v75 = v46;
                v76 = 0.4;
                do
                {
                  v77 = *v74;
                  *v75 = *v74;
                  if (v77 <= v76)
                  {
                    if (v77 < -v76)
                    {
                      v76 = -v77;
                    }
                  }

                  else
                  {
                    v76 = v77;
                  }

                  ++v75;
                  ++v74;
                  --v73;
                }

                while (v73);
                if (*(a1 + 40))
                {
LABEL_98:
                  v78 = *(v71 + 2);
                  if (v72)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_104;
                }

                v78 = 16;
                *(v71 + 2) = 16;
                if (v76 >= 0.499)
                {
                  v78 = 16;
                  do
                  {
                    --v78;
                    v76 = v76 * 0.5;
                  }

                  while (v76 >= 0.499);
                  *(v71 + 2) = v78;
                  if (v78 < 0x10u)
                  {
                    *(v71 + 6) = 1 << (v78 - 1);
                    if (v72)
                    {
                      goto LABEL_102;
                    }

                    goto LABEL_104;
                  }
                }
              }

              else
              {
                if (*(a1 + 40))
                {
                  goto LABEL_98;
                }

                v78 = 16;
                *(v71 + 2) = 16;
              }

              *(v71 + 6) = 0x7FFF;
              if (v72)
              {
LABEL_102:
                v82 = (1 << v78);
                v83 = v72;
                v84 = v46;
                v85 = v47;
                do
                {
                  v86 = *v84++;
                  *v85++ = vcvtmd_s64_f64((v86 * v82) + 0.5);
                  --v83;
                }

                while (v83);
              }

LABEL_104:
              v46 += v72;
              v47 += v72;
LABEL_105:
              v87 = *(v71 + 4);
              if (v67)
              {
                v88 = -1;
              }

              else
              {
                v88 = 1;
              }

              v89 = (*(a1 + 124) << 31 >> 31) & v88;
              if (v67)
              {
                v90 = 1;
              }

              else
              {
                v90 = -1;
              }

              v91 = v89 - v87;
              if (*(a1 + 128))
              {
                v90 = 0;
              }

              v92 = v72 + v87 + v90 - 1;
              if (v91 > v92)
              {
                v92 = v91;
              }

              if (v92 >= 256)
              {
                kd_analysis::init();
              }

              v93 = v92 & ~(v92 >> 31);
              if (v93 > v68)
              {
                v68 = v93;
              }

              v66 += 4 * v72;
              *(v71 + 3) = v93;
              if (++v67 >= *(a1 + 52))
              {
                goto LABEL_121;
              }
            }
          }
        }

        LOBYTE(v68) = 0;
LABEL_121:
        if (*v13 <= 0)
        {
          v97 = *(a1 + 132);
          if (v97 <= *(a1 + 136))
          {
            LOBYTE(v97) = *(a1 + 136);
          }

          v95 = v97 + v68;
        }

        else
        {
          if ((*(a1 + 140) & 1) == 0)
          {
            if (*v13 > 4)
            {
              operator new[]();
            }

            *(a1 + 104) = a1 + 752;
          }

          v94 = *(a1 + 132);
          if (v94 <= *(a1 + 136))
          {
            LOBYTE(v94) = *(a1 + 136);
          }

          v95 = v94 + v68;
          if ((*(a1 + 140) & 1) == 0)
          {
            result = kd_analysis::simulate_vertical_lifting(a1, v33);
            LODWORD(v96) = result;
            if (result >= 7)
            {
              operator new[]();
            }

            *(a1 + 72) = 0;
            if (!result)
            {
LABEL_140:
              *(a1 + 120) = *(a1 + 112);
              LODWORD(v101) = *(a1 + 48);
              if (*(a1 + 104))
              {
                if ((v101 & 0x80000000) != 0)
                {
LABEL_155:
                  *v163 = vdupq_lane_s32(*&a8, 0);
                  *(a1 + 100) = 0;
                  if ((*(a1 + 40) & 1) == 0)
                  {
                    v154[0] = 0;
                    bibo_gains = kdu_node::get_bibo_gains(&v162, v154, 1u);
                    if (v154[0] != *v13)
                    {
                      kd_analysis::init();
                    }

                    v118 = bibo_gains;
                    result = kdu_node::get_bibo_gains(&v162, v154, 0);
                    v120 = v154[0];
                    if (v154[0] != *(a1 + 52))
                    {
                      kd_analysis::init();
                    }

                    v121 = *v13;
                    v122 = *&a8;
                    v119.val[0] = vdup_lane_s32(*&a8, 0);
                    if (v121 < 1 || (*(a1 + 140) & 1) != 0)
                    {
                      v123 = *&a8;
                    }

                    else
                    {
                      v119.val[0] = vdiv_f32(v119.val[0], __PAIR64__(v158, v159));
                      v124 = v119.val[0];
                      v125 = v163;
                      vst2_f32(v125, v119);
                      v126 = (v118 + 4);
                      v127 = *result * *&a8;
                      v128 = 28;
                      v129 = v121;
                      v123 = *&a8;
                      v130 = v127;
                      do
                      {
                        v131 = v130;
                        v130 = v127 * *v126;
                        if (v130 > v123)
                        {
                          v123 = v127 * *v126;
                        }

                        if (a4)
                        {
                          v132 = v131 + v131;
                          if (*(*(a1 + 80) + v128) == 1 && v132 > v123)
                          {
                            v123 = v132;
                          }
                        }

                        v128 += 32;
                        ++v126;
                        --v129;
                      }

                      while (v129);
                      v122 = *&a8;
                    }

                    if (v120 >= 1 && (*(a1 + 141) & 1) == 0)
                    {
                      *v163 = vdivq_f32(vzip1q_s32(v119, v119), vdupq_lane_s64(__SPAIR64__(v156, v157), 0));
                      v134 = *(v118 + 4 * v121);
                      if (v121 >= 1 && *(v118 + 4 * v121 - 4) > v134)
                      {
                        v134 = *(v118 + 4 * v121 - 4);
                      }

                      v135 = v134 * v122;
                      v136 = result + 1;
                      v137 = 28;
                      v138 = v135;
                      do
                      {
                        v139 = v138;
                        v138 = v135 * *v136;
                        if (v138 > v123)
                        {
                          v123 = v135 * *v136;
                        }

                        if (a4)
                        {
                          v140 = v139 + v139;
                          if (*(*(a1 + 88) + v137) == 1 && v140 > v123)
                          {
                            v123 = v140;
                          }
                        }

                        v137 += 32;
                        ++v136;
                        --v120;
                      }

                      while (v120);
                    }

                    if (v123 > 7.6)
                    {
                      v142 = *(a1 + 100);
                      v143 = *v163;
                      v144.i64[0] = 0x3F0000003F000000;
                      v144.i64[1] = 0x3F0000003F000000;
                      do
                      {
                        v143 = vmulq_f32(v143, v144);
                        ++v142;
                        v123 = v123 * 0.5;
                      }

                      while (v123 > 7.6);
                      *v163 = v143;
                      *(a1 + 100) = v142;
                    }
                  }

                  v145 = 0;
                  for (i = 0; i != 4; ++i)
                  {
                    if (v164[i])
                    {
                      if (kdu_node::access_child(&v164[v145], 0))
                      {
                        kdu_analysis::kdu_analysis(v154, v164[i], a3, a4, 0, a6, a7, *&v163[i]);
                      }

                      v147 = kdu_node::access_subband(&v164[v145]);
                      result = kdu_encoder::kdu_encoder(v154, v147, a3, a4, 0, a6, a7, *&v163[i]);
                      *(a1 + 8 + 8 * i) = *v154;
                    }

                    ++v145;
                  }

                  return result;
                }

                v102 = 0;
                v103 = -1;
                v104 = -48;
                do
                {
                  v105 = *(a1 + 116);
                  v106 = v105;
                  if (v103 >= 1)
                  {
                    v106 = v105 - ((v105 ^ v103) & 1) + 2 * (*(*(a1 + 80) + v102 - 28) + *(*(a1 + 80) + v102 - 31)) - 2;
                  }

                  result = kd_vlift_queue::init(*(a1 + 104) + v104, *(a1 + 112), v105, v103++, *(a1 + 98), v106);
                  v101 = *(a1 + 48);
                  v104 += 48;
                  v102 += 32;
                }

                while (v103 < v101);
              }

              if (v101 >= 1)
              {
                v107 = v101;
                v108 = (v101 + 3) & 0xFFFFFFFC;
                v109 = vdupq_n_s64(v107 - 1);
                v110 = *(a1 + 112) | 1;
                v111 = ((__PAIR64__(*(a1 + 112), *(a1 + 112) & 1) - 1) >> 32) + 1;
                v112 = xmmword_186205EB0;
                v113 = xmmword_186205EC0;
                v114 = (*(a1 + 80) + 88);
                v115 = vdupq_n_s64(4uLL);
                do
                {
                  v116 = vmovn_s64(vcgeq_u64(v109, v113));
                  if (vuzp1_s16(v116, *v109.i8).u8[0])
                  {
                    *(v114 - 16) = v110;
                  }

                  if (vuzp1_s16(v116, *&v109).i8[2])
                  {
                    *(v114 - 8) = v111;
                  }

                  if (vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, *&v112))).i32[1])
                  {
                    *v114 = v110;
                    v114[8] = v111;
                  }

                  v112 = vaddq_s64(v112, v115);
                  v113 = vaddq_s64(v113, v115);
                  v114 += 32;
                  v108 -= 4;
                }

                while (v108);
              }

              goto LABEL_155;
            }

LABEL_136:
            v98 = 0;
            v96 = v96;
            do
            {
              v99 = *(a1 + 176);
              v100 = (v99 + v98 + 32);
              if (!v99)
              {
                v100 = (a1 + 368 + v98);
                v99 = a1 + 336;
              }

              *v100 = *(a1 + 72);
              *(a1 + 72) = v99 + v98;
              result = kd_vlift_line::pre_create((v99 + v98), a3, *(a1 + 132), *(a1 + 136), *(a1 + 40), a4, v68, v95, *(a1 + 44));
              v98 += 40;
              --v96;
            }

            while (v96);
            goto LABEL_140;
          }
        }

        *(a1 + 72) = 0;
        LODWORD(v96) = 1;
        goto LABEL_136;
      }

      v34 = 0;
    }

    *(a1 + 132) = v148;
    goto LABEL_46;
  }

  return result;
}

void kdu_analysis::kdu_analysis(kd_analysis **a1, uint64_t a2, kdu_sample_allocator *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v8 = a2;
  *a1 = 0;
  operator new();
}

uint64_t kd_analysis::simulate_vertical_lifting(kd_analysis *this, int a2)
{
  v39 = 0;
  v3 = *(this + 28);
  v4 = *(this + 29);
  if (v4 - (v3 + a2) - 2 <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 - (v3 + a2) - 2) & 0x7FFFFFFE;
  }

  v6 = v4 - v5;
  *(this + 30) = v3;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = -1;
    v9 = -48;
    do
    {
      v10 = v6;
      if (v8 >= 1)
      {
        v10 = v6 - ((v4 ^ v8) & 1) + 2 * (*(*(this + 10) + v7 - 28) + *(*(this + 10) + v7 - 31)) - 2;
      }

      kd_vlift_queue::init(*(this + 13) + v9, *(this + 30), v6, v8++, *(this + 98), v10);
      v11 = *(this + 12);
      v9 += 48;
      v7 += 32;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = (v11 + 3) & 0xFFFFFFFC;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = *(this + 28) | 1;
      v15 = ((__PAIR64__(*(this + 28), *(this + 28) & 1) - 1) >> 32) + 1;
      v16 = xmmword_186205EB0;
      v17 = xmmword_186205EC0;
      v18 = (*(this + 10) + 88);
      v19 = vdupq_n_s64(4uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s16(v20, *v13.i8).u8[0])
        {
          *(v18 - 16) = v14;
        }

        if (vuzp1_s16(v20, *&v13).i8[2])
        {
          *(v18 - 8) = v15;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))).i32[1])
        {
          *v18 = v14;
          v18[8] = v15;
        }

        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v18 += 32;
        v12 -= 4;
      }

      while (v12);
    }
  }

  v21 = *(this + 30);
  if (v21 > v6)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (v39 >= result)
    {
      LODWORD(result) = v39 + 1;
    }

    v38 = result;
    ++v39;
    kd_vlift_queue::simulate_push_line(*(this + 13) + 48 * -(v21 & 1), v21, &v39);
    v23 = (*(this + 30) & 1) == 0;
    do
    {
      if (v23 < 0)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
      do
      {
        v28 = v27 + 1;
        v29 = *(this + 12);
        if (v27 + 1 >= v29)
        {
          break;
        }

        v30 = *(this + 10);
        v31 = v30 + v24;
        v32 = *(v30 + v24 + 24);
        v33 = (v32 ^ 1u) + 2 * *(v30 + v24 + 4);
        if (v32 <= v6)
        {
          v34 = *(this + 13);
          *(v34 + v25 - 12) = v32;
          if (*(v34 + v25 - 24) > v32 || *(v34 + v25 - 20) < v32 || !kd_vlift_queue::simulate_access_source((v34 + v25), v33, *(v30 + v24 + 1), &v39))
          {
            goto LABEL_38;
          }

          kd_vlift_queue::simulate_access_update((*(this + 13) + v25 - 48), *(v31 + 24), &v39);
          v35 = v39;
          v36 = v38;
          if (v39 >= v38)
          {
            v36 = v39 + 1;
          }

          v38 = v36;
          ++v39;
          if (v28 == *(this + 12) - 1)
          {
            v39 = v35;
            kd_vlift_queue::simulate_access_update((*(this + 13) + v25), v33, &v39);
          }

          else
          {
            kd_vlift_queue::simulate_push_line(*(this + 13) + v25 + 48, *(v31 + 24), &v39);
            v23 = v27 + 3;
          }
        }

        else if (v28 != v29 - 1 || (kd_vlift_queue::simulate_access_update((*(this + 13) + v25), v33, &v39) & 1) == 0)
        {
          goto LABEL_38;
        }

        *(v31 + 24) += 2;
        v26 = 1;
LABEL_38:
        ++v27;
        v25 += 48;
        v24 += 32;
      }

      while (v27 < v23);
    }

    while ((v26 & 1) != 0);
    v37 = *(this + 30);
    v21 = (v37 + 1);
    *(this + 30) = v21;
    result = v38;
  }

  while (v37 < v6);
  return result;
}

uint64_t kd_vlift_line::pre_create(kd_vlift_line *this, kdu_sample_allocator *a2, int a3, int a4, char a5, uint64_t a6, unsigned __int8 a7, char a8, BOOL a9)
{
  result = kdu_line_buf::pre_create(this, a2, a3, a5, a6, a7, a8 - a3);
  if (a9)
  {

    return kdu_line_buf::pre_create((this + 16), a2, a4, a5, a6, a7, a8 - a4);
  }

  return result;
}

uint64_t kd_vlift_queue::init(uint64_t this, int a2, int a3, int a4, unsigned __int8 a5, int a6)
{
  *(this + 45) = a4;
  *this = a2;
  *(this + 4) = a3;
  *(this + 32) = a2 - 1000;
  *(this + 36) = a2 - 1000;
  *(this + 24) = a2 - 1000;
  *(this + 44) = a5;
  if (((a6 >= a3) & a5) != 0)
  {
    v6 = 2 * a3 - a6;
  }

  else
  {
    v6 = a3 - 1;
  }

  *(this + 40) = v6;
  if (a4 < 0)
  {
    *(this + 40) = a3 + 2;
    *(this + 32) = a3 + 2;
  }

  *(this + 28) = a2 - 1002;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void kd_analysis::~kd_analysis(kd_roi_level **this)
{
  *this = &unk_1EF4D34A0;
  for (i = 1; i != 5; ++i)
  {
    v3 = this[i];
    if (v3)
    {
      (*(*v3 + 8))(v3);
      this[i] = 0;
    }
  }

  if (this[18])
  {
    kdu_roi_level::destroy(this + 18);
  }

  v4 = this[19];
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = this[20];
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = this[21];
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x80C80B8603338);
  }

  v7 = this[22];
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1020C803C8EFFD9);
  }

  v8 = this[23];
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1090C805C18EE7CLL);
  }

  v9 = this[24];
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1090C805C18EE7CLL);
  }

  v10 = this[25];
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1020C806F595497);
  }

  *this = &unk_1EF4D34F0;
}

{
  kd_analysis::~kd_analysis(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_vlift_queue::simulate_push_line(uint64_t this, uint64_t a2, int *a3)
{
  if ((*(this + 45) ^ a2))
  {
    kd_vlift_queue::simulate_push_line();
  }

  if (*(this + 32) <= a2 || *(this + 36) <= a2)
  {
    if (*(this + 28) < *(this + 24))
    {
      *(this + 24) = a2;
    }

    *(this + 28) = a2;
  }

  else
  {
    --*a3;
  }

  return this;
}

uint64_t kd_vlift_queue::simulate_access_update(kd_vlift_queue *this, uint64_t a2, int *a3)
{
  if (((*(this + 45) ^ a2) & 1) != 0 || *(this + 9) > a2)
  {
    kd_vlift_queue::simulate_access_update();
  }

  *(this + 9) = a2;
  v3 = *(this + 6);
  if (v3 > a2 || *(this + 7) < a2)
  {
    return 0;
  }

  *(this + 9) = a2 + 2;
  do
  {
    if (v3 >= *(this + 8))
    {
      break;
    }

    if (*(this + 7) < v3)
    {
      break;
    }

    if (v3 >= *(this + 10))
    {
      break;
    }

    *(this + 6) = v3 + 2;
    --*a3;
    v3 = *(this + 6);
  }

  while (v3 < *(this + 9));
  return 1;
}

uint64_t kd_vlift_queue::simulate_access_source(kd_vlift_queue *this, uint64_t a2, int a3, int *a4)
{
  if (((*(this + 45) ^ a2) & 1) != 0 || *(this + 8) > a2)
  {
    kd_vlift_queue::simulate_access_source();
  }

  *(this + 8) = a2;
  if (a3 <= 0)
  {
    v8 = *(this + 6);
LABEL_20:
    *(this + 8) = a2 + 2;
    while (v8 < *(this + 9) && v8 < *(this + 8) && *(this + 7) >= v8 && v8 < *(this + 10))
    {
      *(this + 6) = v8 + 2;
      --*a4;
      v8 = *(this + 6);
    }

    return 1;
  }

  v4 = a3 - 1;
  v5 = a2 + 2 * (a3 - 1);
  v6 = *this;
  v7 = *(this + 1);
  v8 = *(this + 6);
  while (2)
  {
    v9 = v5;
    while (v9 < v6)
    {
      v10 = *(this + 44);
      v11 = ((v6 ^ v9) & 1) + v6;
      v9 = 2 * *this - v9;
LABEL_10:
      if (v10 != 1)
      {
        v9 = v11;
      }
    }

    if (v9 > v7)
    {
      v10 = *(this + 44);
      v11 = v7 - ((v7 ^ v9) & 1);
      v9 = 2 * v7 - v9;
      goto LABEL_10;
    }

    if (v9 >= v8 && v9 <= *(this + 7))
    {
      v5 -= 2;
      if (v4-- <= 0)
      {
        goto LABEL_20;
      }

      continue;
    }

    return 0;
  }
}

uint64_t kd_analysis::push(uint64_t result, int *a2, kdu_thread_entity *this)
{
  v3 = *(result + 120);
  if (v3 > *(result + 116))
  {
    kd_analysis::push();
  }

  v5 = result;
  if (*(result + 40) != (*(a2 + 6) & 1))
  {
    kd_analysis::push();
  }

  if (*(result + 142) == 1)
  {
    *(result + 120) = v3 + 1;
    return result;
  }

  v6 = this;
  if ((*(result + 42) & 1) == 0)
  {
    if (this)
    {
      result = kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    for (i = *(v5 + 72); i; i = *(i + 32))
    {
      kdu_line_buf::create(i);
      result = kdu_line_buf::create(i + 16);
    }

    *(v5 + 42) = 1;
    if (v6)
    {
      result = kdu_thread_entity::release_lock(v6, 3);
    }
  }

  v8 = *(v5 + 72);
  if (!v8)
  {
    kd_analysis::push();
  }

  if (*(v5 + 43) == 1)
  {
    v9 = *(v5 + 120) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (*(v5 + 48) < 1 || (*(v5 + 140) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    *(v5 + 72) = *(v8 + 32);
    *(v8 + 32) = 0;
    v11 = *(v5 + 104);
    result = kd_vlift_queue::push_line(v11 + 48 * -v9, *(v5 + 120), v8, (v5 + 72));
    v10 = v11 == 0;
  }

  v12 = *(v5 + 132);
  ++*(v5 + 120);
  v13 = *a2;
  if (*a2 != *(v5 + 136) + v12)
  {
    kd_analysis::push();
  }

  v14 = v13 + 1;
  v15 = (v13 + 1) >> 1;
  v16 = *(a2 + 1);
  if (*(v5 + 44))
  {
    v17 = v8 + 16 * (*(v5 + 124) & 1);
    if (*(v5 + 41))
    {
      v18 = 0;
      if ((*(a2 + 6) & 2) == 0)
      {
        v16 = 0;
      }

      if ((*(v17 + 6) & 2) != 0)
      {
        v18 = *(v17 + 8);
      }

      v19 = v8 + 16 * !(*(v5 + 124) & 1);
      if ((*(v19 + 6) & 2) != 0)
      {
        v20 = *(v19 + 8);
      }

      else
      {
        v20 = 0;
      }

      v30 = *(v5 + 100);
      if (v30)
      {
        if (v14 >= 2)
        {
          v31 = 0x8000 << v30 >> 16;
          do
          {
            *v18++ = (v31 + *v16) >> *(v5 + 100);
            *v20++ = (v31 + *(v16++ + 1)) >> *(v5 + 100);
            --v15;
          }

          while (v15);
        }
      }

      else if (v14 >= 2)
      {
        do
        {
          *v18++ = *v16;
          *v20++ = *(v16++ + 1);
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      v24 = 0;
      if ((*(a2 + 6) & 2) != 0)
      {
        v16 = 0;
      }

      if ((*(v17 + 6) & 2) == 0)
      {
        v24 = *(v17 + 8);
      }

      v25 = v8 + 16 * !(*(v5 + 124) & 1);
      if ((*(v25 + 6) & 2) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v25 + 8);
      }

      v32 = *(v5 + 100);
      if (v32)
      {
        if (v14 >= 2)
        {
          v33 = 1.0 / (1 << v32);
          do
          {
            *v24++ = v33 * *v16;
            *v26++ = v33 * v16[1];
            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }

      else if (v14 >= 2)
      {
        do
        {
          *v24++ = *v16;
          *v26++ = v16[1];
          v16 += 2;
          --v15;
        }

        while (v15);
      }
    }
  }

  else if (*(v5 + 41))
  {
    v21 = 0;
    if ((*(a2 + 6) & 2) == 0)
    {
      v16 = 0;
    }

    if ((*(v8 + 6) & 2) != 0)
    {
      v21 = *(v8 + 8);
    }

    v22 = *(v5 + 100);
    if (v22)
    {
      if (v14 >= 2)
      {
        v23 = 0x8000 << v22 >> 16;
        do
        {
          *v21 = (v23 + *v16) >> *(v5 + 100);
          v21[1] = (v23 + *(v16++ + 1)) >> *(v5 + 100);
          v21 += 2;
          --v15;
        }

        while (v15);
      }
    }

    else if (v14 >= 2)
    {
      do
      {
        *v21 = *v16;
        v21[1] = *(v16++ + 1);
        v21 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v27 = 0;
    if ((*(a2 + 6) & 2) != 0)
    {
      v16 = 0;
    }

    if ((*(v8 + 6) & 2) == 0)
    {
      v27 = *(v8 + 8);
    }

    v28 = *(v5 + 100);
    if (v28)
    {
      if (v14 >= 2)
      {
        v29 = 1.0 / (1 << v28);
        do
        {
          *v27 = v29 * *v16;
          v27[1] = v29 * v16[1];
          v16 += 2;
          v27 += 2;
          --v15;
        }

        while (v15);
      }
    }

    else if (v14 >= 2)
    {
      do
      {
        *v27 = *v16;
        v27[1] = v16[1];
        v16 += 2;
        v27 += 2;
        --v15;
      }

      while (v15);
    }
  }

  if (*(v5 + 140) == 1 && *(v5 + 40) == 1 && v9 != 0)
  {
    if ((*(v5 + 43) & 1) == 0)
    {
      kd_analysis::push();
    }

    if (*(v5 + 41))
    {
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = v36;
        v38 = v8 + 16 * v35;
        if ((*(v38 + 6) & 2) != 0)
        {
          v39 = *(v38 + 8);
        }

        else
        {
          v39 = 0;
        }

        for (j = *v38; j; --j)
        {
          *v39++ *= 2;
        }

        v36 = 0;
        v35 = 1;
      }

      while ((v37 & 1) != 0);
    }

    else
    {
      v41 = 0;
      v42 = 1;
      do
      {
        v43 = v42;
        v44 = v8 + 16 * v41;
        if ((*(v44 + 6) & 2) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = *(v44 + 8);
        }

        for (k = *v44; k; --k)
        {
          *v45++ *= 2;
        }

        v42 = 0;
        v41 = 1;
      }

      while ((v43 & 1) != 0);
    }
  }

  if (!v10)
  {
    if (*(v5 + 48) < 1 || *(v5 + 140) == 1)
    {
      kd_analysis::push();
    }

    v82 = (v5 + 72);
    v47 = v9 ^ 1;
    v79 = v6;
    while (1)
    {
      if (v47 < 0)
      {
        return result;
      }

      v48 = 0;
      v81 = 0;
      do
      {
        v49 = *(v5 + 48);
        if (v48 >= v49)
        {
          break;
        }

        v50 = *(v5 + 80) + 32 * v48;
        v51 = *(v50 + 24);
        v52 = (v51 ^ 1) + 2 * *(v50 + 4);
        if (v51 <= *(v5 + 116))
        {
          v53 = *(v5 + 104);
          v54 = (v53 + 48 * (v48 - 1));
          v54[9] = v51;
          if (v54[6] > v51)
          {
            continue;
          }

          if (v54[7] < v51)
          {
            continue;
          }

          v80 = v47;
          result = kd_vlift_queue::access_source((v53 + 48 * v48), v52, *(v50 + 1), *(v5 + 56), v82);
          if (!result)
          {
            continue;
          }

          v55 = kd_vlift_queue::access_update(*(v5 + 104) + 48 * (v48 - 1), *(v50 + 24), v82);
          v56 = *(v5 + 72);
          if (!v56)
          {
            kd_analysis::push();
          }

          if (*(v50 + 1))
          {
            v57 = v55;
            v58 = 0;
            v59 = 1;
            do
            {
              v60 = v59;
              v61 = *(v5 + 132 + 4 * v58);
              if (v61)
              {
                v62 = *(v5 + 64);
                v63 = *(v50 + 1);
                v64 = v57 + 16 * v58;
                v65 = v56 + 16 * v58;
                if (*(v5 + 41) == 1)
                {
                  if (*(v50 + 1))
                  {
                    v66 = 0;
                    v67 = 8 * v63;
                    do
                    {
                      v68 = *(*(v5 + 56) + v66) + 16 * v58;
                      if ((*(v68 + 6) & 2) != 0)
                      {
                        v69 = *(v68 + 8);
                      }

                      else
                      {
                        v69 = 0;
                      }

                      v62[v66 / 8] = v69;
                      v66 += 8;
                    }

                    while (v67 != v66);
                  }

                  if ((*(v64 + 6) & 2) != 0)
                  {
                    v70 = *(v64 + 8);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if ((*(v65 + 6) & 2) != 0)
                  {
                    v76 = *(v65 + 8);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  perform_analysis_lifting_step(v50, v62, v70, v76, v61, 0);
                }

                else
                {
                  if (*(v50 + 1))
                  {
                    v71 = 0;
                    v72 = 8 * v63;
                    do
                    {
                      v73 = *(*(v5 + 56) + v71) + 16 * v58;
                      if ((*(v73 + 6) & 2) != 0)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        v74 = *(v73 + 8);
                      }

                      v62[v71 / 8] = v74;
                      v71 += 8;
                    }

                    while (v72 != v71);
                  }

                  if ((*(v64 + 6) & 2) != 0)
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = *(v64 + 8);
                  }

                  if ((*(v65 + 6) & 2) != 0)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v77 = *(v65 + 8);
                  }

                  perform_analysis_lifting_step(v50, v62, v75, v77, v61, 0);
                }
              }

              v59 = 0;
              v58 = 1;
            }

            while ((v60 & 1) != 0);
          }

          if (v48 == *(v5 + 48) - 1)
          {
            v6 = v79;
            kd_analysis::horizontal_analysis(v5, v56, !(v48 & 1), v79);
            result = kd_vlift_queue::access_update(*(v5 + 104) + 48 * v48, v52, v82);
            if (result)
            {
              result = kd_analysis::horizontal_analysis(v5, result, v48 & 1, v79);
            }

            v47 = v80;
          }

          else
          {
            *(v5 + 72) = *(v56 + 32);
            *(v56 + 32) = 0;
            result = kd_vlift_queue::push_line(*(v5 + 104) + 48 * v48 + 48, *(v50 + 24), v56, v82);
            v47 = v48 + 2;
            v6 = v79;
          }
        }

        else
        {
          if (v48 != v49 - 1)
          {
            continue;
          }

          result = kd_vlift_queue::access_update(*(v5 + 104) + 48 * v48, v52, v82);
          if (!result)
          {
            continue;
          }

          result = kd_analysis::horizontal_analysis(v5, result, v48 & 1, v6);
        }

        *(v50 + 24) += 2;
        v81 = 1;
      }

      while (v48++ < v47);
      if ((v81 & 1) == 0)
      {
        return result;
      }
    }
  }

  return kd_analysis::horizontal_analysis(v5, v8, v9, v6);
}

uint64_t kd_vlift_queue::push_line(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if ((*(result + 45) ^ a2))
  {
    kd_vlift_queue::push_line();
  }

  if (*(result + 32) <= a2 || *(result + 36) <= a2)
  {
    *(a3 + 32) = 0;
    v5 = *(result + 16);
    if (v5)
    {
      if (*(result + 28) + 2 != a2)
      {
        kd_vlift_queue::push_line();
      }

      *(v5 + 32) = a3;
      *(result + 16) = a3;
    }

    else
    {
      *(result + 8) = a3;
      *(result + 16) = a3;
      *(result + 24) = a2;
    }

    *(result + 28) = a2;
  }

  else
  {
    *(a3 + 32) = *a4;
    for (*a4 = a3; ; *a4 = v4)
    {
      v4 = *(result + 8);
      *(result + 16) = v4;
      if (!v4)
      {
        break;
      }

      *(result + 8) = *(v4 + 32);
      *(v4 + 32) = *a4;
    }
  }

  return result;
}

uint64_t kd_analysis::horizontal_analysis(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result + 132;
  if (*(result + 132) != *a2 || *(result + 136) != *(a2 + 16))
  {
    kd_analysis::horizontal_analysis();
  }

  if (*(result + 141) == 1 && *(result + 52) >= 1 && *(result + 40) == 1 && (*(result + 124) & 1) != 0)
  {
    if ((*(result + 44) & 1) == 0)
    {
      kd_analysis::horizontal_analysis();
    }

    if (*(result + 41))
    {
      **(a2 + 24) *= 2;
    }

    else
    {
      **(a2 + 24) *= 2;
    }
  }

  v7 = *(result + 52);
  if (v7 && (*(result + 141) & 1) == 0)
  {
    if (v7 < 1)
    {
LABEL_114:
      v81 = 0;
      v82 = result + 8;
      v83 = 2 * a3;
      v84 = 1;
      do
      {
        v85 = v84;
        result = (*(**(v82 + 8 * (v81 | v83)) + 16))(*(v82 + 8 * (v81 | v83)), a2 + 16 * v81, a4);
        v84 = 0;
        v81 = 1;
      }

      while ((v85 & 1) != 0);
      return result;
    }

    v13 = 0;
    while (1)
    {
      v14 = *(result + 88) + 32 * v13;
      if (*(v14 + 1))
      {
        v15 = (v13 & 1) == 0;
        v16 = *(v4 + 4 * v15);
        v17 = v13 & 1;
        v18 = a2 + 16 * v17;
        if (*(result + 41) == 1)
        {
          if ((*(v18 + 6) & 2) != 0)
          {
            v19 = *(v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          v21 = a2 + 16 * v15;
          if ((*(v21 + 6) & 2) != 0)
          {
            v22 = *(v21 + 8);
          }

          else
          {
            v22 = 0;
          }

          v25 = *(v4 + 4 * v17);
          v26 = &v19[v25];
          if (*(result + 99))
          {
            if (*(v14 + 3))
            {
              v27 = v26 - 1;
              v28 = v25;
              v29 = -1;
              v30 = 1;
              do
              {
                v19[v29] = v19[v30 - ((*(result + 124) ^ v13) & 1)];
                v19[v28] = v27[v29 + ((*(result + 128) ^ v13) & 1)];
                --v29;
                ++v28;
                v31 = v30++ >= *(v14 + 3);
              }

              while (!v31);
            }
          }

          else if (*(v14 + 3))
          {
            v38 = 0;
            v39 = v19 - 1;
            do
            {
              *v39-- = *v19;
              v26[v38++] = *(v26 - 1);
            }

            while (v38 < *(v14 + 3));
          }

          v40 = (*(result + 124) << 31 >> 31) & (1 - 2 * v15);
          v41 = *(v14 + 4);
          v42 = *(v14 + 1);
          v43 = *(v14 + 16);
          if (v42 == 2 && (v44 = *v43, *v43 == v43[1]))
          {
            v45 = *(v14 + 2);
            v46 = *(v14 + 6);
            if (v44 == 1)
            {
              if (v16 >= 1)
              {
                v77 = &v19[v41 + 1 + v40];
                do
                {
                  *v22++ += (*(v77 - 1) + v46 + *v77) >> v45;
                  ++v77;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v44 == -1)
            {
              if (v16 >= 1)
              {
                v47 = &v19[v41 + 1 + v40];
                do
                {
                  *v22++ += (v46 - (*(v47 - 1) + *v47)) >> v45;
                  ++v47;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v16 >= 1)
            {
              v78 = &v19[v41 + 1 + v40];
              do
              {
                *v22++ += (v46 + (*v78 + *(v78 - 1)) * v44) >> v45;
                ++v78;
                --v16;
              }

              while (v16);
            }
          }

          else if (v16 >= 1)
          {
            v48 = 0;
            v49 = &v19[v40 + v41];
            v50 = *(v14 + 2);
            v51 = *(v14 + 6);
            do
            {
              v52 = v51;
              if (v42)
              {
                v53 = 0;
                v52 = v51;
                do
                {
                  v52 += v43[v53] * *(v49 + 2 * v53);
                  ++v53;
                }

                while (v42 != v53);
              }

              v22[v48++] += v52 >> v50;
              v49 += 2;
            }

            while (v48 != v16);
          }
        }

        else
        {
          if ((*(v18 + 6) & 2) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v18 + 8);
          }

          v23 = a2 + 16 * v15;
          if ((*(v23 + 6) & 2) != 0)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v23 + 8);
          }

          v32 = *(v4 + 4 * v17);
          v33 = &v20[v32];
          if (*(result + 99))
          {
            if (*(v14 + 3))
            {
              v34 = v33 - 1;
              v35 = v32;
              v36 = -1;
              v37 = 1;
              do
              {
                v20[v36] = v20[v37 - ((*(result + 124) ^ v13) & 1)];
                v20[v35] = v34[v36 + ((*(result + 128) ^ v13) & 1)];
                --v36;
                ++v35;
                v31 = v37++ >= *(v14 + 3);
              }

              while (!v31);
            }
          }

          else if (*(v14 + 3))
          {
            v54 = 0;
            v55 = v20 - 1;
            do
            {
              *v55-- = *v20;
              v33[v54++] = *(v33 - 1);
            }

            while (v54 < *(v14 + 3));
          }

          v56 = (*(result + 124) << 31 >> 31) & (1 - 2 * v15);
          v57 = *(v14 + 4);
          v58 = &v20[v56 + v57];
          v59 = *(v14 + 1);
          if (v59 != 2)
          {
            if (*(result + 40))
            {
              goto LABEL_77;
            }

LABEL_85:
            if (v16 >= 1)
            {
              v72 = 0;
              v73 = *(v14 + 8);
              do
              {
                if (v59)
                {
                  v74 = 0;
                  v75 = 0.0;
                  do
                  {
                    v75 = v75 + (*(v73 + v74) * *(v58 + v74));
                    v74 += 4;
                  }

                  while (4 * v59 != v74);
                }

                else
                {
                  v75 = 0.0;
                }

                v24[v72] = v75 + v24[v72];
                ++v72;
                v58 += 4;
              }

              while (v72 != v16);
            }

            goto LABEL_113;
          }

          v60 = *(v14 + 8);
          v61 = *v60;
          if (*v60 != v60[1])
          {
            if (*(result + 40))
            {
LABEL_77:
              if (v16 >= 1)
              {
                v66 = 0;
                v67 = *(v14 + 2);
                v68 = *(v14 + 6);
                v69 = *(v14 + 16);
                do
                {
                  v70 = v68;
                  if (v59)
                  {
                    v71 = 0;
                    v70 = v68;
                    do
                    {
                      v70 += *(v58 + v71) * *(v69 + v71);
                      v71 += 4;
                    }

                    while (4 * v59 != v71);
                  }

                  LODWORD(v24[v66++]) += v70 >> v67;
                  v58 += 4;
                }

                while (v66 != v16);
              }

              goto LABEL_113;
            }

            goto LABEL_85;
          }

          if (*(result + 40))
          {
            v62 = *(v14 + 2);
            v63 = *(v14 + 6);
            v64 = **(v14 + 16);
            if (v64 == 1)
            {
              if (v16 >= 1)
              {
                v79 = &v20[v57 + 1 + v56];
                do
                {
                  *v24++ += (*(v79 - 1) + v63 + *v79) >> v62;
                  ++v79;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v64 == -1)
            {
              if (v16 >= 1)
              {
                v65 = &v20[v57 + 1 + v56];
                do
                {
                  *v24++ += (v63 - (*(v65 - 1) + *v65)) >> v62;
                  ++v65;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v16 >= 1)
            {
              v80 = &v20[v57 + 1 + v56];
              do
              {
                *v24++ += (v63 + (*v80 + *(v80 - 1)) * v64) >> v62;
                ++v80;
                --v16;
              }

              while (v16);
            }
          }

          else if (v16 >= 1)
          {
            v76 = &v20[v57 + 1 + v56];
            do
            {
              *v24 = *v24 + (v61 * (*(v76 - 1) + *v76));
              ++v24;
              ++v76;
              --v16;
            }

            while (v16);
          }
        }
      }

LABEL_113:
      if (++v13 >= *(result + 52))
      {
        goto LABEL_114;
      }
    }
  }

  v8 = 0;
  v9 = result + 8;
  v10 = 2 * a3;
  v11 = 1;
  do
  {
    v12 = v11;
    if (*(v4 + 4 * v8) >= 1)
    {
      result = (*(**(v9 + 8 * (v8 | v10)) + 16))(*(v9 + 8 * (v8 | v10)), a2 + 16 * v8, a4);
    }

    v11 = 0;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
  return result;
}

uint64_t kd_vlift_queue::access_update(uint64_t a1, int a2, void *a3)
{
  if (((*(a1 + 45) ^ a2) & 1) != 0 || *(a1 + 36) > a2)
  {
    kd_vlift_queue::access_update();
  }

  *(a1 + 36) = a2;
  v3 = *(a1 + 24);
  if (v3 > a2 || *(a1 + 28) < a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = v6;
  if (v3 < a2)
  {
    v4 = *(a1 + 8);
    v7 = a2;
    do
    {
      v7 -= 2;
      v4 = *(v4 + 32);
    }

    while (v7 > v3);
  }

  if (!v4)
  {
    kd_vlift_queue::access_update();
  }

  v8 = a2 + 2;
  *(a1 + 36) = a2 + 2;
  if (*(a1 + 32) < a2 + 2)
  {
    v8 = *(a1 + 32);
  }

  while (v3 < v8 && v6 && v3 < *(a1 + 40))
  {
    v3 += 2;
    *(a1 + 24) = v3;
    v9 = *(v6 + 32);
    *(v6 + 32) = *a3;
    *a3 = v6;
    *(a1 + 8) = v9;
    if (!v9)
    {
      *(a1 + 16) = 0;
    }

    v6 = v9;
  }

  return v4;
}

uint64_t kd_vlift_queue::access_source(int *a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (((*(a1 + 45) ^ a2) & 1) != 0 || a1[8] > a2)
  {
    kd_vlift_queue::access_source();
  }

  a1[8] = a2;
  v5 = a3 - 1;
  v6 = a2 + 2 * (a3 - 1);
  v7 = a1[7];
  if (v6 > v7 && v6 <= a1[1])
  {
    return 0;
  }

  if (a3 <= 0)
  {
    v11 = a1[6];
LABEL_24:
    v19 = a2 + 2;
    a1[8] = a2 + 2;
    if (a1[9] < a2 + 2)
    {
      v19 = a1[9];
    }

    if (v11 < v19)
    {
      v20 = *(a1 + 1);
      do
      {
        if (!v20 || v11 >= a1[10])
        {
          break;
        }

        v11 += 2;
        a1[6] = v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = *a5;
        *a5 = v20;
        *(a1 + 1) = v21;
        if (!v21)
        {
          *(a1 + 2) = 0;
        }

        v20 = v21;
      }

      while (v11 < v19);
    }

    return 1;
  }

  v8 = (a4 + 8 * v5);
  v9 = *a1;
  v10 = 2 * *a1;
  v11 = a1[6];
  while (2)
  {
    v12 = a1[1];
    v13 = v6;
    while (v13 < v9)
    {
      v14 = *(a1 + 44);
      v15 = ((v9 ^ v13) & 1) + v9;
      v13 = v10 - v13;
LABEL_12:
      if (v14 != 1)
      {
        v13 = v15;
      }
    }

    if (v13 > v12)
    {
      v14 = *(a1 + 44);
      v15 = v12 - ((v12 ^ v13) & 1);
      v13 = 2 * v12 - v13;
      goto LABEL_12;
    }

    v16 = 0;
    if (v13 <= v7 && v13 >= v11)
    {
      for (i = *(a1 + 1); ; i = *(i + 32))
      {
        *v8 = i;
        if (v13 <= v11)
        {
          break;
        }

        v13 -= 2;
      }

      v6 -= 2;
      --v8;
      if (v5-- <= 0)
      {
        goto LABEL_24;
      }

      continue;
    }

    return v16;
  }
}

uint64_t perform_analysis_lifting_step(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  if (a5 >= 1)
  {
    v6 = a6 - 16;
    if (a6 < 0x10)
    {
      v6 = 0;
    }

    v7 = v6 + 7;
    v8 = v7 & 0xFFFFFFF8;
    v9 = 16 * (v7 >> 3) + 16;
    v10 = a3 + v9;
    v11 = a6 - v8 - 8;
    v12 = a4 + v9;
    if (a6 >= 9)
    {
      LODWORD(v13) = v11;
    }

    else
    {
      LODWORD(v13) = a6;
    }

    if (a6 >= 9)
    {
      v14 = v10;
    }

    else
    {
      v12 = a4;
      v14 = a3;
    }

    v15 = v13 + a5;
    v16 = *(result + 1);
    if (v16 == 2 && (v17 = *(result + 16), v18 = *v17, *v17 == v17[1]))
    {
      v19 = *(result + 2);
      v20 = 1 << v19 >> 1;
      v21 = *a2;
      v22 = a2[1];
      v13 = v13;
      if (v18 == 1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 + *(v21 + 2 * v13) + *(v22 + 2 * v13)) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else if (v18 == -1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 - (*(v21 + 2 * v13) + *(v22 + 2 * v13))) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 + (*(v22 + 2 * v13) + *(v21 + 2 * v13)) * v18) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }
    }

    else
    {
      v23 = *(result + 2);
      v24 = *(result + 6);
      v25 = v13;
      v26 = v15;
      do
      {
        v27 = v24;
        if (v16)
        {
          v28 = *(result + 16);
          v29 = v16;
          v30 = a2;
          v27 = v24;
          do
          {
            v32 = *v28++;
            v31 = v32;
            v33 = *v30++;
            v27 += v31 * *(v33 + 2 * v25);
            --v29;
          }

          while (v29);
        }

        *(v12 + 2 * v25) = *(v14 + 2 * v25) + (v27 >> v23);
        ++v25;
      }

      while (v25 < v26);
    }
  }

  return result;
}

{
  if (a5 < 1)
  {
    return result;
  }

  v6 = a6 - 8;
  if (a6 < 8)
  {
    v6 = 0;
  }

  v7 = v6 + 3;
  v8 = v7 & 0xFFFFFFFC;
  v9 = 16 * (v7 >> 2) + 16;
  v10 = a3 + v9;
  v11 = a6 - v8 - 4;
  v12 = a4 + v9;
  if (a6 >= 5)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    LODWORD(v13) = a6;
  }

  if (a6 >= 5)
  {
    v14 = v10;
  }

  else
  {
    v12 = a4;
    v14 = a3;
  }

  v15 = v13 + a5;
  v16 = *(result + 1);
  if (v16 == 2)
  {
    v17 = *(result + 8);
    v18 = *v17;
    if (*v17 == v17[1])
    {
      v19 = *a2;
      v20 = a2[1];
      if (*(result + 29))
      {
        v21 = *(result + 2);
        v22 = *(result + 6);
        v23 = **(result + 16);
        v13 = v13;
        if (v23 == 1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = ((*(v19 + 4 * v13) + v22 + result) >> v21) + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }

        else if (v23 == -1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = ((v22 - (*(v19 + 4 * v13) + result)) >> v21) + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }

        else
        {
          do
          {
            result = ((v22 + (*(v20 + 4 * v13) + *(v19 + 4 * v13)) * v23) >> v21);
            *(v12 + 4 * v13) = result + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }
      }

      else
      {
        v40 = v13;
        do
        {
          *(v12 + 4 * v40) = *(v14 + 4 * v40) + (v18 * (*(v19 + 4 * v40) + *(v20 + 4 * v40)));
          ++v40;
        }

        while (v40 < v15);
      }

      return result;
    }

    if (*(result + 29))
    {
      goto LABEL_25;
    }

LABEL_31:
    v35 = 0;
    v36 = v13;
    do
    {
      v37 = a2[v35];
      v38 = *(*(result + 8) + 4 * v35);
      v39 = v36;
      do
      {
        *(v12 + 4 * v39) = *(v14 + 4 * v39) + (v38 * *(v37 + 4 * v39));
        ++v39;
      }

      while (v39 < v15);
      ++v35;
      v14 = v12;
    }

    while (v35 < *(result + 1));
    return result;
  }

  if ((*(result + 29) & 1) == 0)
  {
    if (!*(result + 1))
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_25:
  v24 = *(result + 2);
  v25 = *(result + 6);
  v26 = v13;
  v27 = v15;
  do
  {
    v28 = v25;
    if (v16)
    {
      v29 = *(result + 16);
      v30 = v16;
      v31 = a2;
      v28 = v25;
      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v31++;
        v28 += *(v34 + 4 * v26) * v32;
        --v30;
      }

      while (v30);
    }

    *(v12 + 4 * v26) = *(v14 + 4 * v26) + (v28 >> v24);
    ++v26;
  }

  while (v26 < v27);
  return result;
}

void kd_analysis::kd_analysis(kd_analysis *this)
{
  v1 = 0;
  *this = &unk_1EF4D34A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 18) = 0;
  for (i = 336; i != 576; i += 40)
  {
    v3 = v1;
    v4 = 32;
    do
    {
      v5 = this + v3;
      *(v5 + 84) = 0;
      *(v5 + 171) = 0;
      *(v5 + 43) = 0;
      v3 += 16;
      v4 -= 16;
    }

    while (v4);
    v1 += 40;
  }

  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void kdu_synthesis::kdu_synthesis(kd_synthesis **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = a2;
  *a1 = 0;
  operator new();
}

float *kd_synthesis::init(uint64_t a1, int32x4_t *a2, kdu_sample_allocator *a3, _BOOL4 a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v210 = *MEMORY[0x1E69E9840];
  v206 = a2;
  v205 = kdu_node::access_resolution(&v206);
  reversible = kdu_resolution::get_reversible(&v205);
  *(a1 + 48) = 0;
  *(a1 + 40) = reversible;
  *(a1 + 206) = a4;
  *(a1 + 41) = 0;
  *(a1 + 104) = 0;
  *(a1 + 44) = 0;
  v189 = (a1 + 48);
  v190 = (a1 + 44);
  *(a1 + 98) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  kernel_id = kdu_node::get_kernel_id(&v206);
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  v204 = 0uLL;
  result = kdu_node::get_dims(&v206, &v204);
  v14 = v204.i32[0];
  v13 = v204.i32[1];
  v15 = v204.i32[2];
  v16 = v204.i32[0] + v204.i32[2] - 1;
  v17 = v204.i32[1] - a5;
  v18 = v204.i32[3] - 1;
  v20 = v204.i32[3] < 1;
  v19 = v204.i32[3] - 1 + v204.i32[1];
  *(a1 + 112) = v204.i32[0];
  *(a1 + 120) = v16;
  *(a1 + 184) = v13;
  *(a1 + 188) = v19;
  *(a1 + 200) = v17;
  *(a1 + 148) = v17;
  v20 = v20 || v15 < 1;
  v21 = v20;
  *(a1 + 209) = v21;
  *(a1 + 207) = v16 == v14;
  *(a1 + 208) = v18 == 0;
  if (v21)
  {
    return result;
  }

  v208 = 0u;
  v209 = 0u;
  *&v208 = kdu_node::access_child(&v206, 0);
  *(&v208 + 1) = kdu_node::access_child(&v206, 1u);
  *&v209 = kdu_node::access_child(&v206, 2u);
  *(&v209 + 1) = kdu_node::access_child(&v206, 3u);
  if (!v208)
  {
    kd_synthesis::init();
  }

  v203 = 0uLL;
  kdu_node::get_dims(&v208, &v203);
  v22 = *(&v208 + 1);
  v23 = v209;
  *(a1 + 42) = v209 != 0;
  *(a1 + 43) = v22 != 0;
  v201 = 1065353216;
  v202 = 1065353216;
  v199 = 1065353216;
  v200 = 1065353216;
  *(a1 + 207) = 0;
  if (v23)
  {
    v196[0] = 0;
    *v198 = 0;
    v197 = 0;
    kernel_info = kdu_node::get_kernel_info(&v206, v190, &v202, &v201, (a1 + 96), (a1 + 98), v196, &v198[1], v198, &v197, 1);
    if (v198[1] <= v197)
    {
      v25 = v197;
    }

    else
    {
      v25 = v198[1];
    }

    if (v196[0] >= v198[0])
    {
      v26 = v198[0];
    }

    else
    {
      v26 = v196[0];
    }

    LODWORD(v27) = *(a1 + 44);
    if (v27 > 4)
    {
      operator new[]();
    }

    v28 = a1 + 640;
    *(a1 + 80) = v28;
    if (v27 < 1)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = *(a1 + 40);
      v33 = (kernel_info + 8);
      v27 = v27;
      do
      {
        *(v28 + 4) = *(v33 - 1);
        v34 = *(v33 - 2);
        *(v28 + 1) = v34;
        *(v28 + 2) = *v33;
        *(v28 + 6) = v33[1];
        if (v31 <= v34)
        {
          v31 = v34;
        }

        *(v28 + 30) = kernel_id;
        *(v28 + 29) = v32;
        v30 += v34;
        v28 += 32;
        v33 += 4;
        --v27;
      }

      while (v27);
      if (v31 > 4)
      {
        operator new[]();
      }
    }

    *(a1 + 56) = a1 + 336 + 8 * v31;
    *(a1 + 64) = a1 + 336;
    v207 = 0uLL;
    kdu_node::get_dims(&v209, &v207);
    v35 = v203.i32[2];
    v36 = 2 * v203.i32[0];
    v37 = 2 * (v203.i32[2] + v203.i32[0]) - 2;
    v38 = v207.i32[0];
    v39 = v207.i32[2];
    v40 = (2 * v207.i32[0]) | 1;
    *(a1 + 124) = 2 * v203.i32[0];
    *(a1 + 128) = v40;
    v41 = 2 * (v39 + v38) - 1;
    *(a1 + 140) = v37;
    *(a1 + 144) = v41;
    if (v39 <= 0)
    {
      *(a1 + 207) = 1;
      if (v36 != v37)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -1;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      v40 = v36 | 1;
      *(a1 + 128) = v36 | 1;
      v41 = v36 - 1;
      *(a1 + 144) = v36 - 1;
    }

    if (v35 <= 0)
    {
      *(a1 + 207) = 1;
      if (v40 != v41)
      {
        kd_synthesis::init();
      }

      *(a1 + 124) = v41 + 1;
      *(a1 + 140) = v41 - 1;
    }

    v29 = v25 - v26;
    v42 = *(a1 + 43);
    *(a1 + 208) = 0;
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_68:
    v74 = *(a1 + 184);
    v75 = *(a1 + 188);
    *(a1 + 152) = v74;
    *(a1 + 156) = v75;
    *(a1 + 170) = a5;
    v76 = v75 - v74 + 1;
    *(a1 + 172) = v76;
    *(a1 + 171) = 0;
    *(a1 + 176) = 0;
    *(a1 + 204) = (v74 - *(a1 + 148));
    *(a1 + 192) = v76;
    goto LABEL_69;
  }

  v29 = 0;
  *(a1 + 124) = *(a1 + 112);
  *(a1 + 140) = *(a1 + 120);
  *(a1 + 208) = 0;
  if (!v22)
  {
    v30 = 0;
    goto LABEL_68;
  }

  kernel_info = 0;
  v30 = 0;
LABEL_36:
  v196[0] = 0;
  *v198 = 0;
  v197 = 0;
  v43 = kdu_node::get_kernel_info(&v206, (a1 + 48), &v200, &v199, (a1 + 97), (a1 + 99), v196, &v198[1], v198, &v197, 0);
  if (v43 == kernel_info)
  {
    v45 = *(a1 + 80);
  }

  else
  {
    v44 = *v190;
    if (v44 + *v189 > 4)
    {
      operator new[]();
    }

    v45 = a1 + 32 * v44 + 640;
  }

  *(a1 + 88) = v45;
  if (v45 != *(a1 + 80))
  {
    v46 = *v189;
    if (v46 >= 1)
    {
      v47 = *(a1 + 40);
      v48 = (v43 + 8);
      do
      {
        *(v45 + 4) = *(v48 - 1);
        v49 = *(v48 - 2);
        *(v45 + 1) = v49;
        *(v45 + 2) = *v48;
        *(v45 + 6) = v48[1];
        *(v45 + 30) = kernel_id;
        *(v45 + 29) = v47;
        v30 += v49;
        v45 += 32;
        v48 += 4;
        --v46;
      }

      while (v46);
    }
  }

  v207 = 0uLL;
  kdu_node::get_dims(&v208 + 1, &v207);
  v50 = v203.i32[1];
  v51 = v203.i32[3];
  v52 = 2 * v203.i32[1];
  v53 = 2 * (v203.i32[3] + v203.i32[1]) - 2;
  v54 = v207.i32[1];
  v55 = v207.i32[3];
  if (v207.i64[1] <= 0)
  {
    *(a1 + 208) = 1;
    v57 = v52;
    v56 = v52;
    if (v52 != v53)
    {
      kd_synthesis::init();
    }
  }

  else
  {
    v56 = 2 * v207.i32[1];
    v57 = 2 * (v207.i32[3] + v207.i32[1]);
  }

  v58 = v56 | 1;
  v59 = v57 - 1;
  if (v51 <= 0)
  {
    *(a1 + 208) = 1;
    if (v58 != v59)
    {
      kd_synthesis::init();
    }

    v52 = v56 + 2;
    v53 = v56;
  }

  if (v52 >= v58)
  {
    v60 = v56 | 1;
  }

  else
  {
    v60 = v52;
  }

  if (v53 > v59)
  {
    v59 = v53;
  }

  *(a1 + 152) = v60;
  *(a1 + 156) = v59;
  v61 = *(a1 + 148);
  if (v60 < v61)
  {
    if (a4)
    {
      v62 = -8;
    }

    else
    {
      v62 = -4;
    }

    do
    {
      v61 += v62;
    }

    while (v60 < v61);
    *(a1 + 148) = v61;
  }

  v63 = ((v60 + 1) >> 1) - ((v61 + 1) >> 1);
  *(a1 + 168) = ((v60 + 1) >> 1) - ((v61 + 1) >> 1);
  v64 = (v60 >> 1) - (v61 >> 1);
  *(a1 + 169) = (v60 >> 1) - (v61 >> 1);
  v65 = (v59 >> 1) - ((v60 + 1) >> 1) + 1;
  v66 = ((v59 - 1) >> 1) - (v60 >> 1) + 1;
  *(a1 + 160) = v65;
  *(a1 + 164) = v66;
  v67 = v50 - ((v61 + 1) >> 1);
  *(a1 + 170) = v50 - ((v61 + 1) >> 1);
  v68 = v54 - (v61 >> 1);
  *(a1 + 171) = v68;
  *(a1 + 172) = v51;
  *(a1 + 176) = v55;
  v69 = (v50 - ((v61 + 1) >> 1)) - v63;
  if (v69 < 0 || (v70 = v65 + v63 - (v51 + v67), v70 > 0xFF) || v68 - v64 < 0 || (v71 = v66 + v64 - (v55 + v68), v71 >= 0x100))
  {
    kd_synthesis::init();
  }

  *(a1 + 180) = v69;
  *(a1 + 182) = v70;
  *(a1 + 181) = v68 - v64;
  *(a1 + 183) = v71;
  v72 = *(a1 + 184);
  v73 = *(a1 + 188);
  *(a1 + 205) = (v72 >> 1) - (v61 >> 1);
  *(a1 + 204) = ((v72 + 1) >> 1) - ((v61 + 1) >> 1);
  *(a1 + 192) = (v73 >> 1) - ((v72 + 1) >> 1) + 1;
  *(a1 + 196) = ((v73 - 1) >> 1) - (v72 >> 1) + 1;
LABEL_69:
  if (v30 >= 9)
  {
    operator new[]();
  }

  v77 = (a1 + 272);
  v78 = (a1 + 304);
  if (*(a1 + 42) == 1)
  {
    kernel_coefficients = kdu_node::get_kernel_coefficients(&v206, 1);
    v80 = (a1 + 44);
    v81 = *v190;
    if (*v190 >= 1)
    {
      v82 = 0;
      v83 = *(a1 + 80);
      v84 = *(a1 + 40);
      do
      {
        v85 = v83 + 32 * v82;
        *v85 = v82;
        *(v85 + 8) = v77;
        *(v85 + 16) = v78;
        *(v85 + 28) = 0;
        v86 = *(v85 + 1);
        if (*(v85 + 1))
        {
          v87 = *(v85 + 1);
          v88 = kernel_coefficients;
          v89 = v77;
          v90 = 0.4;
          do
          {
            v91 = *v88;
            *v89 = *v88;
            if (v91 <= v90)
            {
              if (v91 < -v90)
              {
                v90 = -v91;
              }
            }

            else
            {
              v90 = v91;
            }

            ++v89;
            ++v88;
            --v87;
          }

          while (v87);
          if (v84)
          {
LABEL_89:
            v92 = *(v85 + 2);
            if (v86)
            {
              goto LABEL_93;
            }

            goto LABEL_96;
          }

          v92 = 16;
          *(v85 + 2) = 16;
          if (v90 >= 0.499)
          {
            v92 = 16;
            do
            {
              --v92;
              v90 = v90 * 0.5;
            }

            while (v90 >= 0.499);
            *(v85 + 2) = v92;
            if (v92 < 0x10u)
            {
              *(v85 + 6) = 1 << (v92 - 1);
              if (v86)
              {
                goto LABEL_93;
              }

              goto LABEL_96;
            }
          }
        }

        else
        {
          if (v84)
          {
            goto LABEL_89;
          }

          v92 = 16;
          *(v85 + 2) = 16;
        }

        *(v85 + 6) = 0x7FFF;
        if (v86)
        {
LABEL_93:
          v93 = (1 << v92);
          v94 = v86;
          v95 = v77;
          v96 = v78;
          do
          {
            v97 = *v95++;
            *v96++ = vcvtmd_s64_f64((v97 * v93) + 0.5);
            --v94;
          }

          while (v94);
          v81 = *v190;
        }

LABEL_96:
        v77 += v86;
        v78 += v86;
        kernel_coefficients += 4 * v86;
        *(v85 + 3) = 0;
        *(v85 + 24) = 0;
        ++v82;
      }

      while (v82 < v81);
    }
  }

  else
  {
    v80 = (a1 + 44);
  }

  if (*(a1 + 43) == 1)
  {
    v98 = kdu_node::get_kernel_coefficients(&v206, 0);
    if (*v189 >= 1)
    {
      v99 = 0;
      v100 = 0;
      v102 = *(a1 + 80);
      v101 = *(a1 + 88);
      v80 = (a1 + 44);
      while (1)
      {
        v103 = v101 + 32 * v99;
        if (v101 == v102)
        {
          LODWORD(v104) = *(v103 + 1);
          if (*(v103 + 1))
          {
            v111 = *(v103 + 8);
            v112 = *(v103 + 1);
            v113 = v98;
            do
            {
              if (*v111 != *v113)
              {
                kd_synthesis::init();
              }

              ++v113;
              ++v111;
              --v112;
            }

            while (v112);
          }

          goto LABEL_130;
        }

        *v103 = v99;
        *(v103 + 24) = 0;
        *(v103 + 8) = v77;
        *(v103 + 16) = v78;
        *(v103 + 28) = 0;
        v104 = *(v103 + 1);
        if (*(v103 + 1))
        {
          v105 = *(v103 + 1);
          v106 = v98;
          v107 = v77;
          v108 = 0.4;
          do
          {
            v109 = *v106;
            *v107 = *v106;
            if (v109 <= v108)
            {
              if (v109 < -v108)
              {
                v108 = -v109;
              }
            }

            else
            {
              v108 = v109;
            }

            ++v107;
            ++v106;
            --v105;
          }

          while (v105);
          if (*(a1 + 40))
          {
LABEL_123:
            v110 = *(v103 + 2);
            if (v104)
            {
              goto LABEL_127;
            }

            goto LABEL_129;
          }

          v110 = 16;
          *(v103 + 2) = 16;
          if (v108 >= 0.499)
          {
            v110 = 16;
            do
            {
              --v110;
              v108 = v108 * 0.5;
            }

            while (v108 >= 0.499);
            *(v103 + 2) = v110;
            if (v110 < 0x10u)
            {
              *(v103 + 6) = 1 << (v110 - 1);
              if (v104)
              {
                goto LABEL_127;
              }

              goto LABEL_129;
            }
          }
        }

        else
        {
          if (*(a1 + 40))
          {
            goto LABEL_123;
          }

          v110 = 16;
          *(v103 + 2) = 16;
        }

        *(v103 + 6) = 0x7FFF;
        if (v104)
        {
LABEL_127:
          v114 = (1 << v110);
          v115 = v104;
          v116 = v77;
          v117 = v78;
          do
          {
            v118 = *v116++;
            *v117++ = vcvtmd_s64_f64((v118 * v114) + 0.5);
            --v115;
          }

          while (v115);
        }

LABEL_129:
        v77 += v104;
        v78 += v104;
LABEL_130:
        v119 = *(v103 + 4);
        if (v99)
        {
          v120 = -1;
        }

        else
        {
          v120 = 1;
        }

        v121 = (*(a1 + 152) << 31 >> 31) & v120;
        if (v99)
        {
          v122 = 1;
        }

        else
        {
          v122 = -1;
        }

        v123 = v121 - v119;
        if (*(a1 + 156))
        {
          v122 = 0;
        }

        v124 = v104 + v119 + v122 - 1;
        if (v123 > v124)
        {
          v124 = v123;
        }

        if (v124 >= 256)
        {
          kd_synthesis::init();
        }

        v125 = v124 & ~(v124 >> 31);
        if (v125 > v100)
        {
          v100 = v125;
        }

        v98 += 4 * v104;
        *(v103 + 3) = v125;
        if (++v99 >= *v189)
        {
          goto LABEL_147;
        }
      }
    }

    v100 = 0;
    v80 = (a1 + 44);
  }

  else
  {
    v100 = 0;
  }

LABEL_147:
  if (*v80 >= 1 && (*(a1 + 207) & 1) == 0)
  {
    if (*v80 > 4)
    {
      operator new[]();
    }

    *(a1 + 104) = a1 + 816;
  }

  v126 = *(a1 + 172) + *(a1 + 170);
  v191 = a1 + 170;
  if (*(a1 + 43) == 1)
  {
    v127 = *(a1 + 168);
    v128 = *(a1 + 169);
    if (v127 >= v128)
    {
      v129 = *(a1 + 169);
    }

    else
    {
      v129 = *(a1 + 168);
    }

    v130 = (v100 - v129) & ~((v100 - v129) >> 31);
    v131 = *(a1 + 160) + v127;
    v132 = *(a1 + 164) + v128;
    if (v131 <= v132)
    {
      LOBYTE(v131) = v132;
    }

    v133 = v131 + v100;
  }

  else
  {
    LOBYTE(v130) = 0;
    v133 = *(a1 + 172) + *(a1 + 170);
  }

  v134 = *(a1 + 171);
  v135 = *(a1 + 176);
  if (*v80 < 1 || (*(a1 + 207) & 1) != 0)
  {
    *(a1 + 72) = 0;
    LODWORD(v136) = 1;
LABEL_166:
    v137 = 0;
    v136 = v136;
    do
    {
      v138 = *(a1 + 240);
      v139 = (v138 + v137 + 32);
      if (!v138)
      {
        v139 = (a1 + 432 + v137);
        v138 = a1 + 400;
      }

      *v139 = *(a1 + 72);
      *(a1 + 72) = v138 + v137;
      result = kd_vlift_line::pre_create((v138 + v137), a3, v126, v135 + v134, *(a1 + 40), a4, v130, v133, *(a1 + 43));
      v137 += 40;
      --v136;
    }

    while (v136);
    goto LABEL_170;
  }

  result = kd_synthesis::simulate_vertical_lifting(a1, v29);
  LODWORD(v136) = result;
  if (result >= 7)
  {
    operator new[]();
  }

  *(a1 + 72) = 0;
  if (result)
  {
    goto LABEL_166;
  }

LABEL_170:
  v141 = a1 + 124;
  v140 = *(a1 + 124);
  *(a1 + 116) = *(a1 + 112);
  v142 = *(a1 + 128);
  *(a1 + 132) = v140;
  *(a1 + 136) = v142;
  LODWORD(v143) = *(a1 + 44);
  if (!*(a1 + 104))
  {
LABEL_188:
    if (v143 >= 1)
    {
      v153 = 0;
      v154 = (*(a1 + 80) + 24);
      do
      {
        *v154 = *(v141 + 4 * ((v153 & 1) == 0));
        v154 += 8;
        ++v153;
      }

      while (v143 != v153);
    }

    goto LABEL_191;
  }

  if (v140 >= v142)
  {
    v144 = v142;
  }

  else
  {
    v144 = v140;
  }

  if (*(a1 + 140) <= *(a1 + 144))
  {
    v145 = *(a1 + 144);
  }

  else
  {
    v145 = *(a1 + 140);
  }

  if ((v143 & 0x80000000) == 0)
  {
    v146 = 0;
    v147 = -1;
    v148 = -48;
    do
    {
      if (*(v141 + 4 * (v147 & 1)) <= v144 + 1)
      {
        v149 = v144;
      }

      else
      {
        v149 = *(v141 + 4 * (v147 & 1));
      }

      v150 = *(a1 + 140 + 4 * (v147 & 1));
      if (v150 >= v145 - 1)
      {
        v151 = v145;
      }

      else
      {
        v151 = *(a1 + 140 + 4 * (v147 & 1));
      }

      v152 = v151;
      if (v147 >= 1)
      {
        v152 = v150 + 2 * (*(*(a1 + 80) + v146 - 28) + *(*(a1 + 80) + v146 - 31)) - 2;
      }

      result = kd_vlift_queue::init(*(a1 + 104) + v148, v149, v151, v147++, *(a1 + 98), v152);
      v143 = *(a1 + 44);
      v148 += 48;
      v146 += 32;
    }

    while (v147 < v143);
    goto LABEL_188;
  }

LABEL_191:
  v207 = vdupq_lane_s32(*&a8, 0);
  *(a1 + 100) = 0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v196[0] = 0;
    bibo_gains = kdu_node::get_bibo_gains(&v206, v196, 1u);
    if (v196[0] != *v190)
    {
      kd_synthesis::init();
    }

    v156 = bibo_gains;
    result = kdu_node::get_bibo_gains(&v206, v196, 0);
    v158 = v196[0];
    if (v196[0] != *v189)
    {
      kd_synthesis::init();
    }

    v159 = *v190;
    v160 = *&a8;
    v157.val[0] = vdup_lane_s32(*&a8, 0);
    if (v159 >= 1)
    {
      if (*(a1 + 207))
      {
        v160 = *&a8;
      }

      else
      {
        v157.val[0] = vdiv_f32(v157.val[0], __PAIR64__(v201, v202));
        v161 = v157.val[0];
        v162 = &v207;
        vst2_f32(v162->f32, v157);
        v163 = (v156 + 4);
        v164 = *result * *&a8;
        v165 = 28;
        v166 = v159;
        v167 = v164;
        v160 = *&a8;
        do
        {
          v168 = v167;
          v167 = v164 * *v163;
          if (v167 > v160)
          {
            v160 = v164 * *v163;
          }

          if (a4)
          {
            v169 = v168 + v168;
            if (*(*(a1 + 80) + v165) == 1 && v169 > v160)
            {
              v160 = v169;
            }
          }

          v165 += 32;
          ++v163;
          --v166;
        }

        while (v166);
      }
    }

    if (v158 >= 1 && (*(a1 + 208) & 1) == 0)
    {
      v207 = vdivq_f32(vzip1q_s32(v157, v157), vdupq_lane_s64(__SPAIR64__(v199, v200), 0));
      v171 = *(v156 + 4 * v159);
      if (v159 >= 1 && *(v156 + 4 * v159 - 4) > v171)
      {
        v171 = *(v156 + 4 * v159 - 4);
      }

      v172 = v171 * *&a8;
      v173 = result + 1;
      v174 = 28;
      v175 = v172;
      do
      {
        v176 = v175;
        v175 = v172 * *v173;
        if (v175 > v160)
        {
          v160 = v172 * *v173;
        }

        if (a4)
        {
          v177 = v176 + v176;
          if (*(*(a1 + 88) + v174) == 1 && v177 > v160)
          {
            v160 = v177;
          }
        }

        v174 += 32;
        ++v173;
        --v158;
      }

      while (v158);
    }

    if (v160 > 7.6)
    {
      v179 = *(a1 + 100);
      v180 = v207;
      v181.i64[0] = 0x3F0000003F000000;
      v181.i64[1] = 0x3F0000003F000000;
      do
      {
        v180 = vmulq_f32(v180, v181);
        ++v179;
        v160 = v160 * 0.5;
      }

      while (v160 > 7.6);
      v207 = v180;
      *(a1 + 100) = v179;
    }
  }

  v182 = 0;
  v183 = 0;
  v184 = a1 + 8;
  do
  {
    if (*(&v208 + v183))
    {
      v185 = *(v191 + (v183 & 1));
      if (kdu_node::access_child((&v208 + v182), 0))
      {
        kdu_synthesis::kdu_synthesis(v196, *(&v208 + v183), a3, a4, v185, a6, a7, v207.f32[v183]);
      }

      v186 = kdu_node::access_subband((&v208 + v182));
      result = kdu_decoder::kdu_decoder(v196, v186, a3, a4, v185, a6, a7, v207.f32[v183]);
      *(v184 + 8 * v183) = *v196;
    }

    ++v183;
    v182 += 8;
  }

  while (v183 != 4);
  return result;
}

uint64_t kd_synthesis::simulate_vertical_lifting(kd_synthesis *this, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(this + 30);
  v4 = *(this + 35);
  v5 = *(this + 36);
  v48 = 0;
  v49 = v4;
  v50 = v5;
  v6 = *(this + 28);
  v7 = v3 - (v6 + a2) - 2;
  if (v7 >= 1)
  {
    v8 = v7 & 0x7FFFFFFE;
    v3 -= v8;
    v4 -= v8;
    v5 -= v8;
    v49 = v4;
    v50 = v5;
  }

  v10 = this + 124;
  v9 = *(this + 31);
  *(this + 33) = v9;
  v11 = this + 132;
  *(this + 29) = v6;
  v12 = *(this + 32);
  *(this + 34) = v12;
  if (v9 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v4 <= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v4;
  }

  v47 = v3;
  if ((*(this + 11) & 0x80000000) == 0)
  {
    v15 = 0;
    v16 = -1;
    v17 = -48;
    do
    {
      if (*&v10[4 * (v16 & 1)] <= v13 + 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = *&v10[4 * (v16 & 1)];
      }

      v19 = *(&v49 + (v16 & 1));
      if (v19 >= v14 - 1)
      {
        v20 = v14;
      }

      else
      {
        v20 = *(&v49 + (v16 & 1));
      }

      v21 = v20;
      if (v16 >= 1)
      {
        v21 = v19 + 2 * (*(*(this + 10) + v15 - 28) + *(*(this + 10) + v15 - 31)) - 2;
      }

      kd_vlift_queue::init(*(this + 13) + v17, v18, v20, v16++, *(this + 98), v21);
      v22 = *(this + 11);
      v17 += 48;
      v15 += 32;
    }

    while (v16 < v22);
    v3 = v47;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = (*(this + 10) + 24);
      do
      {
        *v24 = *&v10[4 * ((v23 & 1) == 0)];
        v24 += 8;
        ++v23;
      }

      while (v22 != v23);
    }
  }

  if (*(this + 29) <= v3)
  {
    v25 = 0;
    for (i = -1; ; i = v28)
    {
      while (2)
      {
        while ((i & 0x80000000) != 0)
        {
LABEL_51:
          i = !(*(this + 29) & 1);
          if (kd_vlift_queue::simulate_access_update((*(this + 13) + 48 * -(*(this + 29) & 1)), *(this + 29), &v48))
          {
            v46 = *(this + 29);
            *(this + 29) = v46 + 1;
            i = -1;
            if (v46 >= v47)
            {
              return v25;
            }
          }
        }

        v28 = i + 1;
        v29 = 48 * i;
        v30 = 32 * i;
        while (1)
        {
          v31 = v28 - 1;
          v32 = ((v28 - 1) & 1) == 0;
          v33 = *(this + 11);
          if (v28 - 1 == v33)
          {
            v34 = *&v11[4 * (((v28 - 1) & 1) == 0)];
            if (v34 <= *(&v49 + (((v28 - 1) & 1) == 0)))
            {
              v35 = v48++;
              if (v35 >= v25)
              {
                v25 = (v35 + 1);
              }

              else
              {
                v25 = v25;
              }

              kd_vlift_queue::simulate_push_line(*(this + 13) + v29 - 48, v34, &v48);
              *&v11[4 * v32] += 2;
            }

            goto LABEL_50;
          }

          v36 = *(this + 10);
          v37 = v36 + v30;
          v38 = *(v36 + v30 + 24);
          if (v38 <= *(&v49 + (((v28 - 1) & 1) == 0)))
          {
            break;
          }

LABEL_50:
          v29 -= 48;
          v30 -= 32;
          --v28;
          if (v31 <= 0)
          {
            goto LABEL_51;
          }
        }

        v39 = *(v37 + 4);
        v40 = v33 - 1;
        v41 = *(this + 13);
        if (v31 < v40)
        {
          *(v41 + v29 + 84) = v38;
          if (*(v41 + v29 + 72) > v38 || *(v41 + v29 + 76) < v38)
          {
            i = v28 + 1;
            continue;
          }
        }

        break;
      }

      if (kd_vlift_queue::simulate_access_source((v41 + v29), (v38 ^ 1u) + 2 * v39, *(v36 + v30 + 1), &v48))
      {
        if (v31 == *(this + 11) - 1)
        {
          v42 = v48;
          v43 = ++v48;
          v44 = *(v37 + 24);
          if (v44 != *&v11[4 * v32])
          {
            kd_synthesis::simulate_vertical_lifting();
          }

          if (v42 >= v25)
          {
            v25 = v43;
          }

          else
          {
            v25 = v25;
          }

          *&v11[4 * v32] = v44 + 2;
        }

        else
        {
          kd_vlift_queue::simulate_access_update((*(this + 13) + v29 + 48), *(v37 + 24), &v48);
          v45 = v48++;
          if (v45 >= v25)
          {
            v25 = (v45 + 1);
          }

          else
          {
            v25 = v25;
          }
        }

        kd_vlift_queue::simulate_push_line(*(this + 13) + v29 - 48, *(v37 + 24), &v48);
        *(v37 + 24) += 2;
        goto LABEL_50;
      }
    }
  }

  return 0;
}

void kd_synthesis::~kd_synthesis(kd_synthesis *this)
{
  *this = &unk_1EF4D3518;
  for (i = 8; i != 40; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + i) = 0;
    }
  }

  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 28);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 29);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x80C80B8603338);
  }

  v7 = *(this + 30);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1020C803C8EFFD9);
  }

  v8 = *(this + 31);
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1090C805C18EE7CLL);
  }

  v9 = *(this + 32);
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1090C805C18EE7CLL);
  }

  v10 = *(this + 33);
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1020C806F595497);
  }

  *this = &unk_1EF4D3448;
}

{
  kd_synthesis::~kd_synthesis(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_synthesis::start(uint64_t a1, kdu_thread_entity *this)
{
  if ((*(a1 + 41) & 1) == 0)
  {
    if (this)
    {
      kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    for (i = *(a1 + 72); i; i = *(i + 32))
    {
      kdu_line_buf::create(i);
      kdu_line_buf::create(i + 16);
    }

    *(a1 + 41) = 1;
    if (this)
    {
      kdu_thread_entity::release_lock(this, 3);
    }
  }

  v5 = 0;
  v6 = a1 + 8;
  do
  {
    result = *(v6 + v5);
    if (result)
    {
      result = (*(*result + 16))(result, this);
    }

    v5 += 8;
  }

  while (v5 != 32);
  return result;
}

uint64_t kd_synthesis::pull(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 209))
  {
    return result;
  }

  v4 = result;
  if ((*(result + 41) & 1) == 0)
  {
    result = (*(*result + 16))(result, a3);
  }

  v5 = *(v4 + 116);
  if (v5 > *(v4 + 120))
  {
    kd_synthesis::pull();
  }

  v95 = a2;
  v6 = *(v4 + 42);
  if (!*(v4 + 44) || (*(v4 + 207) & 1) != 0)
  {
    v7 = v6 & v5;
    v8 = *(v4 + 72);
    result = kd_synthesis::horizontal_synthesis(v4, v8, v6 & v5, a3);
    if (*(v4 + 207) == 1 && v7 && (*(v4 + 40) & 1) != 0)
    {
      v9 = v4 + 204;
      v10 = v4 + 192;
      v11 = 0;
      v12 = 1;
      if (*(v4 + 206))
      {
        do
        {
          v13 = v12;
          v14 = v8 + 16 * v11;
          if ((*(v14 + 6) & 2) != 0)
          {
            v15 = *(v14 + 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = *(v10 + 4 * v11);
          if (v16)
          {
            v17 = (v15 + 2 * *(v9 + v11));
            do
            {
              *v17 = *v17 >> 1;
              ++v17;
              --v16;
            }

            while (v16);
          }

          v12 = 0;
          v11 = 1;
        }

        while ((v13 & 1) != 0);
      }

      else
      {
        do
        {
          v18 = v12;
          v19 = v8 + 16 * v11;
          if ((*(v19 + 6) & 2) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v19 + 8);
          }

          v21 = *(v10 + 4 * v11);
          if (v21)
          {
            v22 = (v20 + 4 * *(v9 + v11));
            do
            {
              *v22++ >>= 1;
              --v21;
            }

            while (v21);
          }

          v12 = 0;
          v11 = 1;
        }

        while ((v18 & 1) != 0);
      }
    }

    goto LABEL_27;
  }

  v38 = v4 + 140;
  v39 = v4 + 132;
  v40 = v4 + 204;
  LODWORD(v41) = -1;
  do
  {
    if ((v41 & 0x80000000) != 0)
    {
LABEL_97:
      LODWORD(v41) = !(*(v4 + 116) & 1);
      result = kd_vlift_queue::access_update(*(v4 + 104) + 48 * -(*(v4 + 116) & 1), *(v4 + 116), (v4 + 72));
      v8 = result;
      continue;
    }

    v41 = v41;
    while (1)
    {
      v42 = *(v4 + 44);
      if (v41 == v42)
      {
        if (*(v39 + 4 * ((v41 & 1) == 0)) <= *(v38 + 4 * ((v41 & 1) == 0)))
        {
          v43 = *(v4 + 72);
          if (!v43)
          {
            exception = __cxa_allocate_exception(4uLL);
            v94 = -1;
LABEL_145:
            *exception = v94;
            __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
          }

          *(v4 + 72) = *(v43 + 32);
          *(v43 + 32) = 0;
          kd_synthesis::horizontal_synthesis(v4, v43, (v41 & 1) == 0, a3);
          result = kd_vlift_queue::push_line(*(v4 + 104) + 48 * v41 - 48, *(v39 + 4 * ((v41 & 1) == 0)), v43, (v4 + 72));
          *(v39 + 4 * ((v41 & 1) == 0)) += 2;
        }

        goto LABEL_95;
      }

      v44 = *(v4 + 80) + 32 * v41;
      v45 = *(v44 + 24);
      if (v45 > *(v38 + 4 * ((v41 & 1) == 0)))
      {
        goto LABEL_95;
      }

      v46 = *(v44 + 4);
      v47 = v42 - 1;
      v48 = *(v4 + 104);
      if (v41 < v47)
      {
        v49 = (v48 + 48 * v41);
        v49[21] = v45;
        if (v49[18] > v45 || v49[19] < v45)
        {
          v8 = 0;
          LODWORD(v41) = v41 + 2;
          goto LABEL_98;
        }
      }

      result = kd_vlift_queue::access_source((v48 + 48 * v41), (v45 ^ 1u) + 2 * v46, *(v44 + 1), *(v4 + 56), (v4 + 72));
      if ((result & 1) == 0)
      {
        break;
      }

      if (v41 == *(v4 + 44) - 1)
      {
        v50 = *(v4 + 72);
        if (!v50)
        {
          goto LABEL_143;
        }

        if (*(v44 + 24) != *(v39 + 4 * ((v41 & 1) == 0)))
        {
          kd_synthesis::pull();
        }

        kd_synthesis::horizontal_synthesis(v4, *(v4 + 72), (v41 & 1) == 0, a3);
        *(v39 + 4 * ((v41 & 1) == 0)) += 2;
      }

      else
      {
        v50 = kd_vlift_queue::access_update(*(v4 + 104) + 48 * v41 + 48, *(v44 + 24), (v4 + 72));
      }

      v51 = *(v4 + 72);
      if (!v51)
      {
LABEL_143:
        exception = __cxa_allocate_exception(4uLL);
        v94 = -50;
        goto LABEL_145;
      }

      *(v4 + 72) = *(v51 + 32);
      *(v51 + 32) = 0;
      result = kd_vlift_queue::push_line(*(v4 + 104) + 48 * v41 - 48, *(v44 + 24), v51, (v4 + 72));
      if (*(v44 + 1))
      {
        v52 = 0;
        v53 = 1;
        do
        {
          v54 = v53;
          v55 = *(v4 + 192 + 4 * v52);
          if (v55)
          {
            v56 = *(v4 + 64);
            v57 = *(v44 + 1);
            v58 = v50 + 16 * v52;
            v59 = v51 + 16 * v52;
            if (*(v4 + 206) == 1)
            {
              if (*(v44 + 1))
              {
                v60 = 0;
                v61 = 8 * v57;
                do
                {
                  v62 = *(*(v4 + 56) + v60) + 16 * v52;
                  if ((*(v62 + 6) & 2) != 0)
                  {
                    v63 = *(v62 + 8);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v56[v60 / 8] = v63;
                  v60 += 8;
                }

                while (v61 != v60);
              }

              if ((*(v58 + 6) & 2) != 0)
              {
                v64 = *(v58 + 8);
              }

              else
              {
                v64 = 0;
              }

              if ((*(v59 + 6) & 2) != 0)
              {
                v70 = *(v59 + 8);
              }

              else
              {
                v70 = 0;
              }

              result = perform_synthesis_lifting_step(v44, v56, v64, v70, v55, *(v40 + v52));
            }

            else
            {
              if (*(v44 + 1))
              {
                v65 = 0;
                v66 = 8 * v57;
                do
                {
                  v67 = *(*(v4 + 56) + v65) + 16 * v52;
                  if ((*(v67 + 6) & 2) != 0)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = *(v67 + 8);
                  }

                  v56[v65 / 8] = v68;
                  v65 += 8;
                }

                while (v66 != v65);
              }

              if ((*(v58 + 6) & 2) != 0)
              {
                v69 = 0;
              }

              else
              {
                v69 = *(v58 + 8);
              }

              if ((*(v59 + 6) & 2) != 0)
              {
                v71 = 0;
              }

              else
              {
                v71 = *(v59 + 8);
              }

              result = perform_synthesis_lifting_step(v44, v56, v69, v71, v55, *(v40 + v52));
            }
          }

          v53 = 0;
          v52 = 1;
        }

        while ((v54 & 1) != 0);
      }

      *(v44 + 24) += 2;
LABEL_95:
      if (v41-- <= 0)
      {
        goto LABEL_97;
      }
    }

    v8 = 0;
    LODWORD(v41) = v41 + 1;
LABEL_98:
    ;
  }

  while (!v8);
LABEL_27:
  ++*(v4 + 116);
  v23 = *(v4 + 200);
  v24 = *(v4 + 188) - v23;
  v25 = (v24 + 2) >> 1;
  v26 = v23 - *(v4 + 148);
  if (*(v4 + 43))
  {
    v27 = v23 & 1;
    v28 = v26 >> 1;
    v29 = *(v95 + 8);
    v30 = v8 + 16 * v27;
    if (*(v4 + 206))
    {
      v31 = 0;
      if ((*(v95 + 6) & 2) == 0)
      {
        v29 = 0;
      }

      if ((*(v30 + 6) & 2) != 0)
      {
        v31 = *(v30 + 8);
      }

      v32 = v28;
      v33 = (v31 + 2 * v28);
      v34 = v8 + 16 * (v27 ^ 1);
      if ((*(v34 + 6) & 2) != 0)
      {
        v35 = *(v34 + 8);
      }

      else
      {
        v35 = 0;
      }

      v81 = (v35 + 2 * v32);
      if (*(v4 + 100))
      {
        if (v24 <= 0xFFFFFFFD)
        {
          do
          {
            v82 = *v33++;
            *v29 = v82 << *(v4 + 100);
            v83 = *v81++;
            *(v29 + 2) = v83 << *(v4 + 100);
            v29 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          v89 = *v33++;
          *v29 = v89;
          v90 = *v81++;
          *(v29 + 2) = v90;
          v29 += 4;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v73 = 0;
      if ((*(v95 + 6) & 2) != 0)
      {
        v29 = 0;
      }

      if ((*(v30 + 6) & 2) == 0)
      {
        v73 = *(v30 + 8);
      }

      v74 = v28;
      v75 = (v73 + 4 * v28);
      v76 = v8 + 16 * (v27 ^ 1);
      if ((*(v76 + 6) & 2) != 0)
      {
        v77 = 0;
      }

      else
      {
        v77 = *(v76 + 8);
      }

      v84 = (v77 + 4 * v74);
      v85 = *(v4 + 100);
      if (v85)
      {
        if (v24 <= 0xFFFFFFFD)
        {
          v86 = (1 << v85);
          do
          {
            v87 = *v75++;
            *v29 = v87 * v86;
            v88 = *v84++;
            *(v29 + 4) = v88 * v86;
            v29 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          v91 = *v75++;
          *v29 = v91;
          v92 = *v84++;
          *(v29 + 4) = v92;
          v29 += 8;
          --v25;
        }

        while (v25);
      }
    }
  }

  else
  {
    if (v26 >= 2)
    {
      kd_synthesis::pull();
    }

    v36 = *(v95 + 8);
    if (*(v4 + 206))
    {
      v37 = 0;
      if ((*(v95 + 6) & 2) == 0)
      {
        v36 = 0;
      }

      if ((*(v8 + 6) & 2) != 0)
      {
        v37 = *(v8 + 8);
      }

      if (*(v4 + 100))
      {
        if (v24 <= 0xFFFFFFFD)
        {
          do
          {
            *v36 = *v37 << *(v4 + 100);
            *(v36 + 2) = v37[1] << *(v4 + 100);
            v37 += 2;
            v36 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          *v36 = *v37;
          *(v36 + 2) = v37[1];
          v37 += 2;
          v36 += 4;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v78 = 0;
      if ((*(v95 + 6) & 2) != 0)
      {
        v36 = 0;
      }

      if ((*(v8 + 6) & 2) == 0)
      {
        v78 = *(v8 + 8);
      }

      v79 = *(v4 + 100);
      if (v79)
      {
        if (v24 <= 0xFFFFFFFD)
        {
          v80 = (1 << v79);
          do
          {
            *v36 = *v78 * v80;
            *(v36 + 4) = v78[1] * v80;
            v78 += 2;
            v36 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          *v36 = *v78;
          *(v36 + 4) = v78[1];
          v78 += 2;
          v36 += 8;
          --v25;
        }

        while (v25);
      }
    }
  }

  return result;
}