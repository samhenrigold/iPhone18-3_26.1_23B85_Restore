uint64_t GRAYA8_sample_W8_inner(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 2;
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v4 + v14 + (v13 * v6);
  v16 = (v5 + v14 + (v13 * v7));
  v17 = (v15 - 1);
  v87 = *(result + 188);
  v86 = (v15 - 4);
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_39;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v27 = v87 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v91 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_39;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v27 = v87 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v89)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v89 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v87;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 2;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v88;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_39;
  }

  if (v36 < v34)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v87;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_39;
  }

  v37 = v28 >> 32;
  v38 = v4 + SHIDWORD(v28) * v6;
  v39 = v38 + (v32 >> 32);
  v40 = *(result + 32);
  if (v17 >= v39)
  {
    v41 = (v38 + (v32 >> 32));
  }

  else
  {
    v41 = v17;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v37 * v7 + (v32 >> 32);
    v43 = *(result + 40);
    if (v16 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v16;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = *v43;
  }

  else
  {
    v42 = 0;
    v45 = 255;
  }

  v46 = *v41;
  if (v8)
  {
    v47 = *(v8 + (v33 | v26));
LABEL_67:
    v56 = v47 & 0xF;
    v57 = HIBYTE(v47) & 3;
    if (v56 == 1)
    {
      v79 = (v39 + SBYTE1(v47) * v6);
      if (v86 < v79)
      {
        v79 = v86;
      }

      if (v79 < v40)
      {
        v79 = v40;
      }

      v76 = *v79;
      v77 = 255;
      if (v5)
      {
        v80 = (v42 + SBYTE1(v47) * v7);
        if (v16 < v80)
        {
          v80 = v16;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v77 = *v80;
      }
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = (v39 + SBYTE2(v47));
          if (v17 < v58)
          {
            v58 = v17;
          }

          if (v58 < v40)
          {
            v58 = v40;
          }

          v85 = *v58;
          v59 = v39 + SBYTE1(v47) * v6;
          if (v17 >= v59)
          {
            v60 = (v39 + SBYTE1(v47) * v6);
          }

          else
          {
            v60 = v17;
          }

          if (v60 < v40)
          {
            v60 = v40;
          }

          v84 = *v60;
          v61 = (v59 + SBYTE2(v47));
          if (v17 < v61)
          {
            v61 = v17;
          }

          if (v61 < v40)
          {
            v61 = v40;
          }

          v62 = 255;
          v63 = 255;
          v64 = 255;
          if (v5)
          {
            v65 = (v42 + SBYTE2(v47));
            v66 = *(result + 40);
            if (v16 < v65)
            {
              v65 = v16;
            }

            if (v65 < v66)
            {
              v65 = *(result + 40);
            }

            v64 = *v65;
            v67 = v42 + SBYTE1(v47) * v7;
            if (v16 >= v67)
            {
              v68 = (v42 + SBYTE1(v47) * v7);
            }

            else
            {
              v68 = v16;
            }

            if (v68 < v66)
            {
              v68 = *(result + 40);
            }

            v63 = *v68;
            v69 = (v67 + SBYTE2(v47));
            if (v16 < v69)
            {
              v69 = v16;
            }

            if (v69 < v66)
            {
              v69 = *(result + 40);
            }

            v62 = *v69;
          }

          v83 = v62;
          v70 = (v47 >> 28) & 3;
          v71 = interpolate_graya[2 * v57 + 1];
          v72 = v57 + 1;
          v73 = interpolate_graya[2 * v70 + 1];
          LOBYTE(v70) = v70 + 1;
          v46 = v46 - ((v71 & v46) >> v72) + ((v71 & v84) >> v72) - (((v46 - ((v71 & v46) >> v72) + ((v71 & v84) >> v72)) & v73) >> v70) + (((v85 - ((v71 & v85) >> v72) + ((v71 & *v61) >> v72)) & v73) >> v70);
          v74 = v45 - ((v71 & v45) >> v72) + ((v63 & v71) >> v72);
          v45 = v74 + (((v64 - ((v64 & v71) >> v72) + ((v83 & v71) >> v72)) & v73) >> v70) - ((v74 & v73) >> v70);
        }

        goto LABEL_44;
      }

      v75 = (v39 + SBYTE2(v47));
      if (v17 < v75)
      {
        v75 = v17;
      }

      if (v75 < v40)
      {
        v75 = v40;
      }

      v76 = *v75;
      v77 = 255;
      if (v5)
      {
        v78 = (v42 + SBYTE2(v47));
        if (v16 < v78)
        {
          v78 = v16;
        }

        if (v78 < *(result + 40))
        {
          v78 = *(result + 40);
        }

        v77 = *v78;
      }

      v57 = (v47 >> 28) & 3;
    }

    v81 = interpolate_graya[2 * v57 + 1];
    v82 = v57 + 1;
    v46 = v46 - ((v81 & v46) >> v82) + ((v81 & v76) >> v82);
    v45 = v45 - ((v81 & v45) >> v82) + ((v77 & v81) >> v82);
  }

LABEL_44:
  *(v11 + 2) = v46;
  v11 += 2;
  *(v11 + 1) = v45;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v88 - a2;
    a3 += v9;
    v50 = v90 - a3;
    while (((v50 | v49 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v51 = v4 + SHIDWORD(a3) * v6;
      v39 = v51 + (a2 >> 32);
      v40 = *(result + 32);
      if (v17 >= v39)
      {
        v52 = (v51 + (a2 >> 32));
      }

      else
      {
        v52 = v17;
      }

      if (v52 < v40)
      {
        v52 = *(result + 32);
      }

      if (v5)
      {
        v42 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v53 = *(result + 40);
        if (v16 >= v42)
        {
          v54 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v54 = v16;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v45 = *v53;
      }

      else
      {
        v45 = 255;
      }

      v46 = *v52;
      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          a4 += ~v48;
          v27 = -1;
          goto LABEL_67;
        }
      }

      *(v11 + 2) = v46;
      v11 += 2;
      v55 = v12 + v48++;
      a2 += v10;
      *(v11 + 1) = v45;
      *(v55 + 2) = -1;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

void GRAYA8_shade_custom_Gray(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 280);
  *a7.i8 = vadd_f32(*(a1 + 296), vmla_n_f32(vmul_n_f32(*(a1 + 288), *(*(a1 + 272) + 4) * a3), v8, *(*(a1 + 272) + 4) * a2));
  v32 = *(a1 + 304);
  v9 = *(a1 + 336);
  v10 = *(a1 + 348);
  v11 = *(a1 + 344);
  v12 = *(a1 + 356);
  v14 = *(a1 + 144);
  v13 = *(a1 + 152);
  v15 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v16 = *(a1 + 392);
  }

  else
  {
    v16 = *(a1 + 272);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 48);
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = *(a1 + 40);
  }

  else
  {
    v20 = *(a1 + 272);
  }

  v21 = 3 * *(a1 + 48);
  do
  {
    v22 = vzip1q_s32(a7, a7);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v32, v22))), vmovn_s32(vcgtq_f32(v22, v32)))) & 1) == 0)
    {
      v26 = (v12 * (*&a7.i32[1] - v10));
      v27 = (v11 * (*a7.i32 - v9));
      v28 = v17 + 4 * v21 * v26;
      v29 = v27;
      v30 = v20 + 4 * v19 * v26;
      if (!v18)
      {
        v29 = 0;
      }

      v23 = *(v30 + 4 * v29);
      v24 = *(v28 + 4 * v27);
      v33 = a7;
      if (v18)
      {
        v24 = v23 * v24;
      }

      v25 = v13;
      goto LABEL_19;
    }

    if (v15)
    {
      v23 = *v16;
      v24 = *v16 * *v15;
      v25 = v13;
      v33 = a7;
LABEL_19:
      SHADE(v25, v24, v23);
      a7 = v33;
      v31 = -1;
      goto LABEL_21;
    }

    v31 = 0;
LABEL_21:
    *a7.i8 = vadd_f32(v8, *a7.i8);
    v13 += 2;
    *v14++ = v31;
    --a4;
  }

  while (a4);
}

void GRAYA8_shade_conic_Gray(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
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
    v18 = vcvtms_s32_f32(v17);
    v19 = ceilf(v17);
    v20 = vcvtms_s32_f32(v9 + v17);
    v21 = v17 - floorf(v17);
    if (v17 < 0.0)
    {
      v18 = v20;
    }

    v22 = ceilf(v17 - v9);
    if (v17 <= v9)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23;
    v25 = v18;
    if (!*&v14)
    {
      v25 = 0;
    }

    v26 = *(*&v15 + 4 * v25);
    v27 = *(*&v13 + 4 * v18);
    v28 = v24;
    if (!*&v14)
    {
      v28 = 0;
    }

    v29 = *(*&v15 + 4 * v28);
    v30 = *(*&v13 + 4 * v24);
    v31 = v26 * v27;
    if (v14)
    {
      v30 = v29 * v30;
    }

    else
    {
      v31 = v27;
    }

    SHADE(v11, v31 + (v21 * (v30 - v31)), v26 + (v21 * (v29 - v26)));
    a6.n128_u64[1] = v32.n128_u64[1];
    a6.n128_u64[0] = vadd_f32(v7, v32.n128_u64[0]);
    v11 += 2;
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

uint64_t GRAYA8_sample_RGB24(uint64_t result, uint64_t a2, int64_t a3, int a4, double a5, double a6, int32x2_t a7, uint32x2_t a8, double a9, uint32x2_t a10, int32x2_t a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 72);
  v85 = *(result + 80);
  v86 = *(result + 64);
  v87 = *(result + 88);
  v15 = *(result + 112);
  v16 = *(result + 120);
  v84 = *(result + 188);
  v17 = *(result + 152) - 2;
  v18 = *(result + 144) - 1;
  v19 = v11 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v12) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v14)
    {
      if (a3 <= v87)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v87;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_34;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v84;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v14 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v84;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v86)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v86 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v84;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v15;
    a3 += v16;
    v17 += 2;
    *++v18 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v85)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v85;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_34;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v84;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_34;
  }

  v39 = v11 + SHIDWORD(v30) * v12;
  v40 = 3 * (v34 >> 32);
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v19 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v19;
  }

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  a7.i8[0] = *v43;
  a7.i8[4] = v43[1];
  v44 = v43[2];
  if (!v13)
  {
    goto LABEL_36;
  }

  v45 = *(v13 + (v35 | v28));
LABEL_51:
  v53 = v45 & 0xF;
  v54 = HIBYTE(v45) & 3;
  switch(v53)
  {
    case 1:
      v81 = (v41 + SBYTE1(v45) * v12);
      if (v19 < v81)
      {
        v81 = v19;
      }

      if (v81 < v42)
      {
        v81 = v42;
      }

      v82 = interpolate_rgba[4 * interpolate_rgba[4 * v54 + 3] + 3];
      v75 = (v82 & v81[2]) >> (interpolate_rgba[4 * v54 + 3] + 1);
      a8.i8[0] = *v81;
      a8.i8[4] = v81[1];
      v83 = vdup_n_s32(v82);
      a11 = vneg_s32(vdup_n_s32(interpolate_rgba[4 * v54 + 3] + 1));
      a10 = vshl_u32(vand_s8(v83, vand_s8(a7, 0xFF000000FFLL)), a11);
      v80 = vsub_s32(a7, a10);
      v79 = vand_s8(v83, 0xFF000000FFLL);
      goto LABEL_81;
    case 2:
      v76 = (v41 + 3 * SBYTE2(v45));
      if (v19 < v76)
      {
        v76 = v19;
      }

      if (v76 < v42)
      {
        v76 = v42;
      }

      v77 = (v45 >> 28) & 3;
      v78 = interpolate_rgba[4 * v77++ + 3];
      v75 = (v78 & v76[2]) >> v77;
      a8.i8[0] = *v76;
      a8.i8[4] = v76[1];
      v79 = vand_s8(vdup_n_s32(v78), 0xFF000000FFLL);
      a11 = vneg_s32(vdup_n_s32(v77));
      a10 = vshl_u32(vand_s8(v79, a7), a11);
      v80 = vsub_s32(a7, a10);
LABEL_81:
      a8 = vshl_u32(vand_s8(v79, a8), a11);
      a7 = vadd_s32(v80, a8);
      LOBYTE(v74) = a7.i8[0];
      goto LABEL_82;
    case 3:
      v55 = 3 * SBYTE2(v45);
      v56 = (v41 + v55);
      if (v19 < v41 + v55)
      {
        v56 = v19;
      }

      if (v56 >= v42)
      {
        v57 = v56;
      }

      else
      {
        v57 = v42;
      }

      v58 = v41 + SBYTE1(v45) * v12;
      if (v19 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v19;
      }

      if (v59 >= v42)
      {
        v60 = v59;
      }

      else
      {
        v60 = v42;
      }

      v61 = (v58 + v55);
      if (v19 < v61)
      {
        v61 = v19;
      }

      if (v61 >= v42)
      {
        v62 = v61;
      }

      else
      {
        v62 = v42;
      }

      v63 = (v45 >> 28) & 3;
      v64 = interpolate_rgba[4 * v54 + 3];
      v65 = interpolate_rgba[4 * v63 + 3];
      v66 = v54 + 1;
      a8.i8[0] = *v62;
      a8.i8[4] = v62[1];
      v67 = v63 + 1;
      v68 = vdup_n_s32(v64);
      a10.i8[0] = *v57;
      a10.i8[4] = v57[1];
      a11.i8[0] = *v60;
      a11.i8[4] = v60[1];
      v69 = vneg_s32(vdup_n_s32(v66));
      v70 = vadd_s32(vsub_s32(a7, vshl_u32(vand_s8(v68, a7), v69)), vshl_u32(vand_s8(v68, a11), v69));
      v71 = vadd_s32(vsub_s32(a10, vshl_u32(vand_s8(v68, a10), v69)), vshl_u32(vand_s8(v68, a8), v69));
      v72 = vand_s8(vdup_n_s32(v65), 0xFF000000FFLL);
      a11 = vneg_s32(vdup_n_s32(v63 + 1));
      a10 = vshl_u32(vand_s8(v70, v72), a11);
      a8 = vshl_u32(vand_s8(v71, v72), a11);
      a7 = vadd_s32(vsub_s32(v70, a10), a8);
      v73 = v44 - ((v64 & v44) >> v66) + ((v64 & v60[2]) >> v66);
      v74 = v73 - ((v73 & v65) >> v67);
      v75 = ((v57[2] - ((v64 & v57[2]) >> v66) + ((v64 & v62[2]) >> v66)) & v65) >> v67;
LABEL_82:
      LOBYTE(v44) = v74 + v75;
      break;
  }

LABEL_36:
  a7 = vmul_s32(vand_s8(a7, 0xFF000000FFLL), 0x500000002);
  *(v17 + 2) = ((a7.i32[0] + v44 + a7.i32[1]) >> 3) | 0xFF00;
  *(v18 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v46 = 0;
    a2 += v15;
    v47 = v85 - a2;
    a3 += v16;
    v48 = v87 - a3;
    v49 = -2;
    while (((v48 | v47 | (a3 - v14) | (a2 - v86)) & 0x8000000000000000) == 0)
    {
      v50 = v11 + SHIDWORD(a3) * v12;
      v51 = 3 * (a2 >> 32);
      v41 = v50 + v51;
      v42 = *(result + 32);
      if (v19 >= v50 + v51)
      {
        v52 = (v50 + v51);
      }

      else
      {
        v52 = v19;
      }

      if (v52 < v42)
      {
        v52 = *(result + 32);
      }

      a7.i8[0] = *v52;
      a7.i8[4] = v52[1];
      v44 = v52[2];
      if (v13)
      {
        v45 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v45 & 0xF) != 0)
        {
          v18 += v46 + 1;
          v17 -= v49;
          a4 += ~v46;
          v29 = -1;
          goto LABEL_51;
        }
      }

      *(v17 + 2 * v46 + 4) = ((v44 + 2 * a7.u8[0] + 5 * a7.u8[4]) >> 3) | 0xFF00;
      *(v18 + v46++ + 2) = -1;
      v49 -= 2;
      a2 += v15;
      v47 -= v15;
      a3 += v16;
      v48 -= v16;
      if (a4 - 1 == v46)
      {
        return result;
      }
    }

    v18 += v46 + 1;
    v17 -= v49;
    a4 += ~v46;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t GRAYA8_sample_CMYK32_inner(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = (*(result + 8) >> 4) & 3;
  if (v4 >= 2)
  {
    _CGHandleAssert("GRAYA8_sample_CMYK32_inner", 9662, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "reverse == NO_REVERSE || reverse == PIXEL_REVERSE", "reverse = %d", v4);
  }

  v6 = v4 == 0;
  v7 = 3;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  v9 = 1;
  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9 = 2;
  }

  v11 = *(result + 40);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v136 = *(result + 80);
  v138 = *(result + 88);
  v14 = *(result + 112);
  v15 = *(result + 120);
  v134 = *(result + 188);
  v140 = *(result + 152) - 2;
  v139 = *(result + 144) - 1;
  v16 = *(result + 260) - 1;
  v17 = *(result + 256);
  v142 = *(result + 32);
  v141 = *(result + 28);
  v18 = (v11 + v17 + (v16 * v141));
  v19 = v142 + (4 * v17) + (v16 * v12) - 4;
  v137 = *(result + 72);
  v135 = *(result + 64);
  while (1)
  {
    if (a3 >= v137)
    {
      if (a3 <= v138)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v23 = a4;
        v32 = v135;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v138;
        v27 = v26 - a3 + (v25 >> 1);
        v23 = a4;
        if (v27 < 1)
        {
          goto LABEL_49;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v32 = v135;
        v30 = v134 | v28;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v137 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      if (v22 < 1)
      {
        goto LABEL_49;
      }

      if (v22 >= v20)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v22) >> 32;
      }

      v32 = v135;
      v30 = v134 | v24;
      v31 = v21 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v32)
    {
      if (a2 <= v136)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v136;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_49;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v134;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v32 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_49;
      }

      if (v35 < v33)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v134;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_49:
    v50 = v23 - 1;
    a2 += v14;
    a3 += v15;
    *++v139 = 0;
    v140 += 2;
LABEL_50:
    a4 = v50;
    if (!v50)
    {
      return result;
    }
  }

  v41 = v31 >> 32;
  v42 = v36 >> 32;
  v43 = v142 + SHIDWORD(v31) * v12 + 4 * (v36 >> 32);
  v44 = *(result + 32);
  if (v19 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v19;
  }

  if (v45 < v44)
  {
    v45 = *(result + 32);
  }

  if (v11)
  {
    v46 = v11 + v41 * v141 + v42;
    v47 = *(result + 40);
    if (v18 >= v46)
    {
      v48 = (v11 + v41 * v141 + v42);
    }

    else
    {
      v48 = v18;
    }

    if (v48 >= v47)
    {
      v47 = v48;
    }

    v49 = *v47;
  }

  else
  {
    v46 = 0;
    v49 = 255;
  }

  v51.i16[0] = *(v45 + v7);
  v51.i16[1] = *(v45 + v9);
  v51.i16[2] = *(v45 + v10);
  v51.i16[3] = *(v45 + v8);
  if (!v13)
  {
    goto LABEL_55;
  }

  v52 = *(v13 + (v37 | v29));
LABEL_77:
  v68 = v52 & 0xF;
  v69 = (v52 >> 28) & 3;
  if (v68 == 1)
  {
    v112 = v43 + SBYTE1(v52) * v12;
    if (v19 < v112)
    {
      v112 = v19;
    }

    if (v112 < v44)
    {
      v112 = v44;
    }

    v113 = *(v112 + v10);
    v114 = *(v112 + v9);
    v115 = *(v112 + v8);
    v116 = 255;
    if (v11)
    {
      v117 = (v46 + SBYTE1(v52) * v141);
      if (v18 < v117)
      {
        v117 = v18;
      }

      if (v117 < *(result + 40))
      {
        v117 = *(result + 40);
      }

      v116 = *v117;
    }

    v118 = interpolate_cmyka8[(v69 | (4 * v69)) + 4];
    v119 = v69 + 1;
    v120 = vdup_n_s16(v118);
    v121 = vdupq_n_s32(v119);
    v122.i16[0] = v113;
    v122.i16[1] = v114;
    v122.i16[2] = v113;
    v122.i16[3] = v115;
    v51 = vadd_s16(vsub_s16(v51, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v120, v51)), vnegq_s32(v121)))), vshl_u16(vand_s8(v120, v122), vneg_s16(vmovn_s32(v121))));
    v49 = v49 - ((v118 & v49) >> v119) + ((v116 & v118) >> v119);
LABEL_55:
    v53 = v136;
    goto LABEL_56;
  }

  if (v68 != 2)
  {
    if (v68 == 3)
    {
      v70 = v23;
      v71 = HIWORD(v52) << 56;
      v72 = v43 + (v71 >> 54);
      if (v19 < v72)
      {
        v72 = v19;
      }

      if (v72 < v44)
      {
        v72 = v44;
      }

      v73 = *(v72 + v7);
      v74 = *(v72 + v9);
      v123 = *(v72 + v10);
      v124 = *(v72 + v8);
      v75 = v43 + SBYTE1(v52) * v12;
      if (v19 >= v75)
      {
        v76 = v43 + SBYTE1(v52) * v12;
      }

      else
      {
        v76 = v19;
      }

      if (v76 < v44)
      {
        v76 = v44;
      }

      v125 = *(v76 + v7);
      v126 = *(v76 + v9);
      v127 = *(v76 + v10);
      v128 = *(v76 + v8);
      v77 = v75 + (v71 >> 54);
      if (v19 < v77)
      {
        v77 = v19;
      }

      if (v77 < v44)
      {
        v77 = v44;
      }

      v129 = *(v77 + v7);
      v130 = *(v77 + v9);
      v131 = *(v77 + v10);
      v133 = *(v77 + v8);
      v78 = 255;
      v79 = 255;
      v80 = 255;
      if (v11)
      {
        v81 = (v46 + SBYTE2(v52));
        v82 = *(result + 40);
        if (v18 < v81)
        {
          v81 = v18;
        }

        if (v81 < v82)
        {
          v81 = *(result + 40);
        }

        v80 = *v81;
        v83 = v46 + SBYTE1(v52) * v141;
        if (v18 >= v83)
        {
          v84 = (v46 + SBYTE1(v52) * v141);
        }

        else
        {
          v84 = v18;
        }

        if (v84 < v82)
        {
          v84 = *(result + 40);
        }

        v79 = *v84;
        v85 = (v83 + SBYTE2(v52));
        if (v18 < v85)
        {
          v85 = v18;
        }

        if (v85 >= v82)
        {
          v82 = v85;
        }

        v78 = *v82;
      }

      v86 = HIBYTE(v52) & 3;
      v87 = interpolate_cmyka8[(v86 | (4 * v86)) + 4];
      v88 = interpolate_cmyka8[(v69 | (4 * v69)) + 4];
      v89 = v86 + 1;
      v90 = vdup_n_s16(v87);
      v91 = v69 + 1;
      v92.i16[0] = v73;
      v92.i16[1] = v74;
      v92.i16[2] = v123;
      v92.i16[3] = v124;
      v93 = vdupq_n_s32(v86 + 1);
      v94 = vnegq_s32(v93);
      v95.i16[0] = v125;
      v95.i16[1] = v126;
      v95.i16[2] = v127;
      v95.i16[3] = v128;
      v96 = vadd_s16(vsub_s16(v51, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v90, v51)), v94))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v90, v95)), v94)));
      v95.i16[0] = v129;
      v95.i16[1] = v130;
      v95.i16[2] = v131;
      v95.i16[3] = v133;
      v97 = vadd_s16(vsub_s16(v92, vshl_u16(vand_s8(v90, v92), vneg_s16(vmovn_s32(v93)))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v90, v95)), v94)));
      v98 = vdup_n_s16(v88);
      v99 = vnegq_s32(vdupq_n_s32(v91));
      v51 = vadd_s16(vsub_s16(v96, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v96, v98)), v99))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v97, v98)), v99)));
      LODWORD(v86) = v49 - ((v87 & v49) >> (v86 + 1)) + ((v79 & v87) >> (v86 + 1));
      v49 = v86 + (((v80 - ((v80 & v87) >> v89) + ((v78 & v87) >> v89)) & v88) >> v91) - ((v86 & v88) >> v91);
      v23 = v70;
    }

    goto LABEL_55;
  }

  v100 = v43 + ((HIWORD(v52) << 56) >> 54);
  if (v19 < v100)
  {
    v100 = v19;
  }

  if (v100 < v44)
  {
    v100 = v44;
  }

  v101 = *(v100 + v7);
  v102 = *(v100 + v9);
  v103 = *(v100 + v10);
  v104 = *(v100 + v8);
  v105 = 255;
  v53 = v136;
  if (v11)
  {
    v106 = (v46 + SBYTE2(v52));
    if (v18 < v106)
    {
      v106 = v18;
    }

    if (v106 < *(result + 40))
    {
      v106 = *(result + 40);
    }

    v105 = *v106;
  }

  v107 = interpolate_cmyka8[(v69 | (4 * v69)) + 4];
  v108 = v69 + 1;
  v109 = vdup_n_s16(v107);
  v110 = vneg_s16(vdup_n_s16(v108));
  v111.i16[0] = v101;
  v111.i16[1] = v102;
  v111.i16[2] = v103;
  v111.i16[3] = v104;
  v51 = vadd_s16(vsub_s16(v51, vshl_u16(vand_s8(v109, v51), v110)), vshl_u16(vand_s8(v109, v111), v110));
  v49 = v49 - ((v107 & v49) >> v108) + ((v105 & v107) >> v108);
LABEL_56:
  v54 = 0;
  v55 = 0;
  v56 = v30 >> 22;
  v132 = v23;
  v57 = v23 - 1;
  a3 += v15;
  v58 = v138 - a3;
  a2 += v14;
  v59 = v53 - a2;
  while (1)
  {
    v60 = v51.u8[6];
    v61 = v51.u8[4];
    v62 = vmovl_u16(v51);
    v63 = v49 - (v61 + v60);
    *v62.i8 = vmax_s32(vsub_s32(vdup_n_s32(v49), vadd_s32(vdup_lane_s32(vand_s8(*&vextq_s8(v62, v62, 8uLL), 0xFF000000FFLL), 1), vand_s8(*v62.i8, 0xFF000000FFLL))), 0);
    v64 = vshl_u32(*v62.i8, 0x200000001);
    *(v140 + 2 + 2 * v55) = (((v63 & ~(v63 >> 31)) + v64.i16[0] + v62.i16[2] + v64.i16[2]) >> 3) + (v49 << 8);
    *(v139 + 1 + v55) = v56;
    if (v57 == v55)
    {
      return result;
    }

    if (((v58 | v59 | (a3 - v137) | (a2 - v135)) & 0x8000000000000000) != 0)
    {
      v139 += v55 + 1;
      v140 = v140 - v54 + 2;
      v50 = ~v55 + v132;
      goto LABEL_50;
    }

    v43 = v142 + SHIDWORD(a3) * v12 + 4 * (a2 >> 32);
    v44 = *(result + 32);
    if (v19 >= v43)
    {
      v65 = v142 + SHIDWORD(a3) * v12 + 4 * (a2 >> 32);
    }

    else
    {
      v65 = v19;
    }

    if (v65 < v44)
    {
      v65 = *(result + 32);
    }

    if (v11)
    {
      v46 = v11 + SHIDWORD(a3) * v141 + (a2 >> 32);
      v66 = *(result + 40);
      if (v18 >= v46)
      {
        v67 = v11 + SHIDWORD(a3) * v141 + (a2 >> 32);
      }

      else
      {
        v67 = v18;
      }

      if (v67 >= v66)
      {
        v66 = v67;
      }

      v49 = *v66;
    }

    else
    {
      v49 = 255;
    }

    v51.i16[0] = *(v65 + v7);
    v51.i16[1] = *(v65 + v9);
    v51.i16[2] = *(v65 + v10);
    v51.i16[3] = *(v65 + v8);
    if (v13)
    {
      v52 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v52 & 0xF) != 0)
      {
        v139 += v55 + 1;
        v140 = v140 - v54 + 2;
        v23 = ~v55 + v132;
        v30 = -1;
        goto LABEL_77;
      }
    }

    ++v55;
    v54 -= 2;
    a3 += v15;
    v58 -= v15;
    a2 += v14;
    v59 -= v14;
    LOBYTE(v56) = -1;
  }
}

void CoonsMeshFree(void **a1)
{
  free(a1[1]);
  free(a1[3]);
  free(a1[5]);

  free(a1);
}

__n128 AllocateCoonsMeshTriangle(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == -1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 40);
    if (v4 == v5)
    {
      v6 = malloc_type_realloc(v6, 48 * (v4 + 50), 0x1000040EED21634uLL);
      *(a1 + 40) = v6;
      if (!v6)
      {
        return result;
      }

      v4 = *(a1 + 48);
      *(a1 + 52) += 50;
    }

    *(a1 + 48) = v4 + 1;
    v3 = &v6[48 * v4];
  }

  else
  {
    v3 = (*(a1 + 40) + 48 * v2);
    *(a1 + 64) = v3[2].n128_u32[1];
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v3 = result;
  v3[1] = result;
  v3[2].n128_u64[0] = -1;
  v3[2].n128_u64[1] = 1;
  return result;
}

void *AllocateCoonsMeshEdge(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (v2 == -1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 36);
    result = *(a1 + 24);
    if (v4 == v5)
    {
      result = malloc_type_realloc(result, 20 * (v4 + 50), 0x1000040A86A77D5uLL);
      *(a1 + 24) = result;
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 32);
      *(a1 + 36) += 50;
    }

    *(a1 + 32) = v4 + 1;
    result = (result + 20 * v4);
  }

  else
  {
    result = (*(a1 + 24) + 20 * v2);
    *(a1 + 68) = *(result + 4);
  }

  *result = -1;
  result[1] = -1;
  *(result + 4) = -1;
  return result;
}

BOOL TriangleGreater(uint64_t a1, int *a2, int *a3)
{
  v3 = a1 + 72 * *a2;
  v4 = a1 + 72 * a2[1];
  v5 = a1 + 72 * a2[2];
  v6 = (*(v3 + 24) + *(v4 + 24) + *(v5 + 24)) * 0.333330005;
  v7 = a1 + 72 * *a3;
  v8 = a1 + 72 * a3[1];
  v9 = a1 + 72 * a3[2];
  v10 = (*(v7 + 24) + *(v8 + 24) + *(v9 + 24)) * 0.333330005;
  if (v10 < v6)
  {
    return 1;
  }

  if (v10 <= v6)
  {
    return (*(v7 + 16) + *(v8 + 16) + *(v9 + 16)) * 0.333330005 < (*(v3 + 16) + *(v4 + 16) + *(v5 + 16)) * 0.333330005;
  }

  return 0;
}

char *CGBacktraceCreate(uint64_t a1)
{
  v13[128] = *MEMORY[0x1E69E9840];
  bzero(v13, 0x400uLL);
  memset(&v11, 0, sizeof(v11));
  v2 = backtrace(v13, 128);
  if (a1)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = malloc_type_calloc(0x81uLL, v4, 0xA07044AEuLL);
  if (v5)
  {
    v6 = v4 >= 3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 3;
    v8 = 2;
    do
    {
      if (dladdr(v13[v8], &v11))
      {
        snprintf(__str, 0x80uLL, "%1.*s<%s+%ld>");
      }

      else
      {
        snprintf(__str, 0x80uLL, "%1.*s%8lx");
      }

      strcat(v5, __str);
      if (v4 - 2 > v8)
      {
        *&v5[strlen(v5)] = 10;
      }

      v8 = v7;
    }

    while (v4 > v7++);
  }

  return v5;
}

void CGTextClippingRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    while (1)
    {
      v2 = a1[1];
      if (!v2)
      {
        break;
      }

      a1[1] = *v2;
      v3 = v2[1];
      if (v3)
      {
        CFRelease(v3);
      }

      free(v2);
    }

    free(a1);
  }
}

uint64_t CGTextClippingEqualToTextClipping(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 != a2 && a1 && a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    v5 = v4 != 0;
    v6 = v3 != 0;
    if (v4 && v3)
    {
      while (1)
      {
        v7 = v4[1];
        if (v7)
        {
          v8 = *(v7 + 24);
          if (!v8)
          {
            atomic_compare_exchange_strong_explicit((v7 + 24), &v8, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
            v8 = *(v7 + 24);
          }
        }

        else
        {
          v8 = 0;
        }

        v9 = v3[1];
        if (v9)
        {
          v10 = *(v9 + 24);
          if (!v10)
          {
            atomic_compare_exchange_strong_explicit((v9 + 24), &v10, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
            v10 = *(v9 + 24);
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 != v10 || *(v4 + 2) == *(v3 + 2) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 3), *(v3 + 3)), vceqq_f64(*(v4 + 5), *(v3 + 5))))) & 1) != 0 && *(v4 + 7) == *(v3 + 7))
        {
          break;
        }

        v11 = v4[8];
        if (v11 != v3[8])
        {
          break;
        }

        if (v11)
        {
          v12 = (v3 + 11);
          v13 = (v4 + 11);
          while (*v13 == *v12)
          {
            if (*(v13 - 2) != *(v12 - 2) || *(v13 - 1) != *(v12 - 1))
            {
              break;
            }

            v12 += 3;
            v13 += 3;
            if (!--v11)
            {
              goto LABEL_28;
            }
          }

          break;
        }

LABEL_28:
        v3 = *v3;
        v4 = *v4;
        v5 = v4 != 0;
        v6 = v3 != 0;
        if (!v4 || !v3)
        {
          goto LABEL_30;
        }
      }

      v2 = 0;
    }

    else
    {
LABEL_30:
      v2 = !v5 && !v6;
    }
  }

  return v2 & 1;
}

void *CGTextClippingCreateCopyByApplyingTransform(uint64_t a1, float64x2_t *a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  *v4 = 1;
  v4[1] = 0;
  v4[2] = 0;
  if (!a2)
  {
    a2 = &CGAffineTransformIdentity;
  }

  for (i = *(a1 + 8); i; i = *i)
  {
    *&v15.tx = 0uLL;
    v6 = *a2;
    *&v15.c = a2[1];
    v7 = vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[3]), v6, i[2]);
    v8 = vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[5]), v6, i[4]);
    v9 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[7]), v6, i[6]), 0);
    *&v15.a = v7;
    *&v15.c = v8;
    *&v15.tx = v9;
    v10 = add_glyph_clip(v4, *(i + 1), &v15, *(i + 8));
    if (v10)
    {
      v11 = *(i + 8);
      if (v11)
      {
        v12 = (v10 + 11);
        v13 = i + 11;
        do
        {
          LOWORD(v12->f64[0]) = *v13;
          v12[-1] = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(a2[1], *(v13 - 1)), *a2, *(v13 - 2)));
          v12 = (v12 + 24);
          v13 += 3;
          --v11;
        }

        while (v11);
      }
    }
  }

  return v4;
}

void *add_glyph_clip(uint64_t a1, const void *a2, const CGAffineTransform *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 24 * a4 + 72, 0x10200409514FCE9uLL);
  if (v8)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v8[1] = a2;
    v9 = &CGAffineTransformIdentity;
    if (a3)
    {
      v9 = a3;
    }

    v10 = *&v9->a;
    v11 = *&v9->tx;
    *(v8 + 2) = *&v9->c;
    *(v8 + 3) = v11;
    *(v8 + 1) = v10;
    v8[8] = a4;
    v12 = (a1 + 8);
    if (*(a1 + 8))
    {
      v12 = *(a1 + 16);
    }

    *v12 = v8;
    *(a1 + 16) = v8;
  }

  return v8;
}

double CGTextClippingAppendGlyphs(uint64_t a1, const void *a2, const CGAffineTransform *a3, __int16 *a4, __int128 *a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      v6 = a4;
      if (a4)
      {
        v7 = a5;
        if (a5)
        {
          v8 = a6;
          v9 = add_glyph_clip(a1, a2, a3, a6);
          if (v9)
          {
            v11 = v9 + 11;
            do
            {
              v12 = *v6++;
              *v11 = v12;
              v13 = *v7++;
              result = *&v13;
              *(v11 - 1) = v13;
              v11 += 12;
              --v8;
            }

            while (v8);
          }
        }
      }
    }
  }

  return result;
}

CGPath *CGTextClippingCreatePath(uint64_t a1)
{
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      memset(&m, 0, sizeof(m));
      do
      {
        font_info = get_font_info(v3[1]);
        if (font_info)
        {
          v5 = font_info[2];
        }

        else
        {
          v5 = 0.0;
        }

        if (v3[8])
        {
          v6 = 0;
          v7 = *(v3 + 2);
          v8 = *(v3 + 1);
          v9 = vmulq_f64(v7, 0);
          v10 = vaddq_f64(*(v3 + 3), vmlaq_f64(v9, 0, v8));
          v11 = 1.0 / v5;
          v12 = vmlaq_f64(vmulq_n_f64(v7, v11), 0, v8);
          v13 = vmlaq_n_f64(v9, v8, v11);
          v20 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v12, 1), xmmword_18439C630, v12.f64[0]);
          v21 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v13, 1), xmmword_18439C630, v13.f64[0]);
          v19 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v10, 1), xmmword_18439C630, v10.f64[0]);
          v14 = (v3 + 11);
          do
          {
            v15 = v3[1];
            if (v15)
            {
              v16 = (*(*(v15 + 16) + 408))(*(v15 + 112), 0, LOWORD(v14->f64[0]));
            }

            else
            {
              v16 = 0;
            }

            v17 = vaddq_f64(v14[-1], v19);
            *&m.a = v21;
            *&m.c = v20;
            *&m.tx = v17;
            CGPathAddPath(Mutable, &m, v16);
            if (v16)
            {
              CFRelease(v16);
            }

            ++v6;
            v14 = (v14 + 24);
          }

          while (v6 < v3[8]);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }

  return Mutable;
}

size_t data_get_bytes_at_position(uint64_t a1, void *__dst, uint64_t a3, size_t a4)
{
  if (a3 < 0)
  {
    _CGHandleAssert("data_get_bytes_at_position", 64, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "offset >= 0", "offset %lld", a3);
  }

  v4 = a4;
  if ((a4 + a3) >= 1)
  {
    v5 = *(a1 + 8);
    if (v5 > a3)
    {
      if (a4 + a3 > v5)
      {
        v4 = v5 - a3;
      }

      memcpy(__dst, (*(a1 + 16) + a3), v4);
    }
  }

  return v4;
}

CGDataProviderRef CGDataProviderCreateWithDataNoCopy(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  check_clients_buffer("CGDataProviderCreateWithDataNoCopy", a2, a3);
  v7 = malloc_type_malloc(0x20uLL, 0x10C0040176BE1E5uLL);
  *v7 = 0;
  v7[1] = a3;
  v7[2] = a2;
  v7[3] = a4;
  v12.version = 0;
  memset(&v12.retain, 0, 40);
  v12.info = v7;
  v12.deallocate = no_copy_deallocator_deallocate;
  v12.preferredSize = 0;
  v8 = CFAllocatorCreate(0, &v12);
  v9 = CFDataCreateWithBytesNoCopy(0, a2, a3, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v9)
  {
    return 0;
  }

  v10 = CGDataProviderCreateWithCFData(v9);
  CFRelease(v9);
  return v10;
}

size_t cf_get_bytes_at_position(const __CFData *a1, void *a2, uint64_t a3, size_t a4)
{
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (a3 < 0)
  {
    _CGHandleAssert("cf_get_bytes_at_position", 292, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "offset >= 0", "offset %lld", a3);
  }

  if ((a4 + a3) >= 1 && Length > a3)
  {
    if ((a4 + a3) > Length)
    {
      a4 = Length - a3;
    }

    memcpy(a2, &BytePtr[a3], a4);
  }

  return a4;
}

void no_copy_deallocator_deallocate(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v3(*a2, a1, a2[1]);
  }

  free(a2);
}

__CFData *CGDataProviderCopyPixelData(CFIndex *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = (a4 * a2 + 7) >> 3;
  v7 = v6 * a3;
  if (a5 != v6)
  {
    v14 = CGAccessSessionCreate(a1);
    if (v14)
    {
      v15 = a5 - v6;
      if (a5 <= v6)
      {
        _CGHandleAssert("CGDataProviderCopyPixelData", 782, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "bytes_per_row > pixel_bytes_per_row", "bpr %zu  pbpr %zu", a5, v6);
      }

      v16 = v14;
      Mutable = CFDataCreateMutable(0, 0);
      if (CGCFDataIncreaseLength(Mutable, v7))
      {
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        CGAccessSessionGetChunksAtPosition(v16, 0, v6, v15, a3, MutableBytePtr, 0);
        CFDataGetLength(Mutable);
        v18 = v16;
LABEL_9:
        CGAccessSessionRelease(v18);
        return Mutable;
      }

      CFRelease(Mutable);
      v19 = v16;
      goto LABEL_11;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v8 = CGDataProviderRetainBytePtr(a1);
  if (!v8)
  {
    v21 = CGAccessSessionCreate(a1);
    CGDataProviderReleaseBytePtr(a1);
    if (!v21)
    {
      return 0;
    }

    if (*v21)
    {
      v22 = *(*v21 + 32);
      v23 = v7 == 0;
      v24 = v22;
      if (v22 != -1)
      {
LABEL_20:
        if (v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = v7;
        }

        Mutable = CFDataCreateMutable(0, 0);
        if (CGCFDataIncreaseLength(Mutable, v25))
        {
          v26 = CFDataGetMutableBytePtr(Mutable);
          v27 = 0;
          v28 = 0;
          v29 = v7 - 1;
          while (1)
          {
            Bytes = CGAccessSessionGetBytes(v21, v26, v25);
            if (!Bytes)
            {
              break;
            }

            v31 = Bytes;
            v32 = v25 - Bytes;
            if (v25 <= Bytes)
            {
              if (Bytes == v22)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v37.location = CFDataGetLength(Mutable) - v32;
              v37.length = v32;
              CFDataDeleteBytes(Mutable, v37);
            }

            v33 = v25 == v31 && v28 <= v25;
            v34 = 2 * v25;
            if (!v33)
            {
              v34 = v31;
            }

            if (v34 >= 0x4000000)
            {
              v34 = 0x4000000;
            }

            if (v34 <= 0x4000)
            {
              v25 = 0x4000;
            }

            else
            {
              v25 = v34;
            }

            if ((CGCFDataIncreaseLength(Mutable, v25) & 1) == 0)
            {
              CGAccessSessionRelease(v21);
              CFRelease(Mutable);
              return 0;
            }

            v27 += v31;
            v35 = CFDataGetMutableBytePtr(Mutable);
            if (v35)
            {
              v26 = &v35[v27];
            }

            else
            {
              CFRelease(Mutable);
              Mutable = 0;
              v26 = 0;
            }

            v28 = v25;
            if (v29 < v27)
            {
              goto LABEL_51;
            }
          }

          if (CGAccessSessionHasError(v21) || !v27)
          {
            CFRelease(Mutable);
            Mutable = 0;
          }

          else
          {
            v38.location = CFDataGetLength(Mutable) - v25;
            v38.length = v25;
            CFDataDeleteBytes(Mutable, v38);
          }

LABEL_51:
          v18 = v21;
          goto LABEL_9;
        }

        CFRelease(Mutable);
        v19 = v21;
LABEL_11:
        CGAccessSessionRelease(v19);
        return 0;
      }
    }

    else
    {
      v23 = v7 == 0;
      v22 = -1;
    }

    v24 = 0x10000;
    goto LABEL_20;
  }

  v9 = v8;
  CGDataProviderRetainBytePtr(a1);
  context.version = 0;
  memset(&context.retain, 0, 40);
  context.info = a1;
  context.deallocate = provider_allocator_deallocate;
  context.preferredSize = 0;
  v10 = CFAllocatorCreate(0, &context);
  Mutable = CFDataCreateWithBytesNoCopy(0, v9, a1[4], v10);
  CGDataProviderReleaseBytePtr(a1);
  CFRelease(v10);
  return Mutable;
}

void CGGStateClipToPath(uint64_t *a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v6 = CFGetTypeID(cf), v6 == CGPathGetTypeID()))
    {
      if (a3 == 2)
      {
        v7 = CGClipStrokeCreateWithGState(a1);
        v8 = CGClipCreateWithStrokedPath(cf, v7);
        CGClipStrokeRelease(v7);
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v8 = CGClipCreateWithPath(cf, a3, HIBYTE(*(a1[15] + 4)) & 1, *(a1[18] + 8));
        if (!v8)
        {
          return;
        }
      }

      maybeCopyClipState(a1);
      CGClipStackAddClip(a1[14], v8);

      CGClipRelease(v8);
    }
  }
}

void CGGStateClipToTextClipping(uint64_t a1, uint64_t a2)
{
  CopyByApplyingTransform = CGTextClippingCreateCopyByApplyingTransform(a2, (a1 + 24));
  if (CopyByApplyingTransform)
  {
    v4 = CopyByApplyingTransform;
    v5 = CGClipCreateWithTextClipping(CopyByApplyingTransform);
    if (v5)
    {
      v6 = v5;
      maybeCopyClipState(a1);
      CGClipStackAddClip(*(a1 + 112), v6);
      CGClipRelease(v6);
    }

    CGTextClippingRelease(v4);
  }
}

double CGGStateGetClipBoundingBox(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return CGClipStackGetBounds(v2, a2);
  }

  else
  {
    return -8.98846567e307;
  }
}

uint64_t CGSConvertAlphaByteInterleved(int a1, int a2, int a3, int a4, unsigned __int8 *a5, _BYTE *a6, int a7, int a8, int a9, unsigned __int8 *a10, _BYTE *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    result = a4 + 1;
    if (a9 < 0)
    {
      v17 = a4 + 1;
    }

    else
    {
      v17 = 1;
    }

    if (a9 < 0)
    {
      v15 = a5 + 1;
    }

    else
    {
      result = a4;
    }
  }

  else
  {
    v14 = &a6[a4];
    v17 = a4 + 1;
    result = v17;
  }

  v19 = a7 - result * a2;
  v20 = a4;
  v21 = 1;
  v22 = a4 + 1;
  if (a14 >= 0)
  {
    v23 = a10;
  }

  else
  {
    v21 = v22;
    v20 = v22;
    v23 = a10 + 1;
  }

  if (a14 >= 1)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (a14 >= 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v20;
  }

  if (a14 >= 1)
  {
    v26 = &a11[a4];
  }

  else
  {
    v26 = a11;
  }

  if (a14 >= 1)
  {
    v27 = a10;
  }

  else
  {
    v27 = v23;
  }

  if (a4 != 3)
  {
    v36 = (a4 - 1);
    v55 = a4;
    v56 = v24;
    v52 = v19;
    v53 = a2;
    v50 = a12 - v25 * a2;
    v51 = a8 - v17 * a2;
    v57 = a4;
    v58 = result;
    v49 = a13 - v24 * a2;
    while (1)
    {
      v54 = a3;
      if (a2 >= 1)
      {
        break;
      }

LABEL_74:
      a3 = v54 - 1;
      v15 += v52;
      v14 += v51;
      v27 += v50;
      v26 += v49;
      a2 = v53;
      if (v54 <= 1)
      {
        return result;
      }
    }

    v37 = a2;
    while (1)
    {
      v38 = *v14;
      if (v38 == 255)
      {
        LOBYTE(v39) = v15[v36];
        if (a4 >= 2)
        {
          v40 = v36;
          do
          {
            v41 = v15[v40 - 1];
            v27[v40] = v39;
            LOBYTE(v39) = v41;
            v35 = v40-- <= 1;
          }

          while (!v35);
          goto LABEL_65;
        }
      }

      else
      {
        if (!*v14)
        {
          if (a4 >= 1)
          {
            bzero(v27, v55);
            v24 = v56;
            a4 = v57;
            result = v58;
          }

          goto LABEL_72;
        }

        v39 = v15[v36];
        if (a1)
        {
          if (a1 < 1)
          {
            v46 = inverted_8bit_alpha[v38];
            if (a4 > 1)
            {
              v47 = v36;
              do
              {
                v48 = v39 * v46;
                LOWORD(v39) = v15[v47 - 1];
                v27[v47] = HIBYTE(v48);
                v35 = v47-- <= 1;
              }

              while (!v35);
            }

            LOWORD(v44) = v39 * v46;
          }

          else
          {
            if (a4 >= 2)
            {
              v42 = v36;
              do
              {
                v43 = v39 * v38;
                v39 = v15[v42 - 1];
                v27[v42] = (v43 + (v43 >> 8) + 1) >> 8;
                v35 = v42-- <= 1;
              }

              while (!v35);
            }

            v44 = v39 * v38 + ((v39 * v38) >> 8) + 1;
          }

          *v27 = BYTE1(v44);
          goto LABEL_72;
        }

        if (a4 >= 2)
        {
          v45 = v36;
          do
          {
            v41 = v15[v45 - 1];
            v27[v45] = v39;
            LOBYTE(v39) = v41;
            v35 = v45-- <= 1;
          }

          while (!v35);
          goto LABEL_65;
        }
      }

      v41 = v39;
LABEL_65:
      *v27 = v41;
LABEL_72:
      v14 += v17;
      v15 += result;
      *v26 = v38;
      v27 += v25;
      v26 += v24;
      v35 = v37-- <= 1;
      if (v35)
      {
        goto LABEL_74;
      }
    }
  }

  do
  {
    if (a2 >= 1)
    {
      v28 = a2 + 1;
      do
      {
        v29 = *v14;
        if (*v14)
        {
          if (v29 == 255 || !a1)
          {
            *v27 = *v15;
            LOBYTE(v32) = v15[2];
          }

          else
          {
            if (a1 < 1)
            {
              v33 = inverted_8bit_alpha[v29];
              v34 = v15[1] * v33;
              *v27 = (*v15 * v33) >> 8;
              v27[1] = HIBYTE(v34);
              v31 = v15[2] * v33;
            }

            else
            {
              v30 = v15[1] * v29 + ((v15[1] * v29) >> 8) + 1;
              *v27 = (*v15 * v29 + ((*v15 * v29) >> 8) + 1) >> 8;
              v27[1] = BYTE1(v30);
              v31 = v15[2] * v29 + ((v15[2] * v29) >> 8) + 1;
            }

            v32 = v31 >> 8;
          }
        }

        else
        {
          LOBYTE(v32) = 0;
          *v27 = 0;
        }

        v14 += v17;
        v27[2] = v32;
        v15 += result;
        *v26 = v29;
        v27 += v25;
        v26 += v24;
        --v28;
      }

      while (v28 > 1);
    }

    v15 += v19;
    v14 += a8 - v17 * a2;
    v27 += a12 - v25 * a2;
    v26 += a13 - v24 * a2;
    v35 = a3-- <= 1;
  }

  while (!v35);
  return result;
}

void CGSConvertAlphaByteMeshed(int a1, int a2, int a3, int a4, uint64_t *a5, int a6, _BYTE **a7, int a8, int a9)
{
  v11 = a2;
  v13 = (a4 + 1) * a2;
  v32 = a6 - v13;
  v31 = a8 - v13;
  if (a9 <= 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = a4;
  }

  if (v14 >= 1)
  {
    v15 = *a7;
  }

  else
  {
    v15 = *a7 + 1;
  }

  if (v14 >= 1)
  {
    v16 = *a5;
  }

  else
  {
    v16 = *a5 + 1;
  }

  v17 = (a4 - 1);
  v18 = a4 + 1;
  v34 = a4;
  do
  {
    if (v11 >= 1)
    {
      do
      {
        v19 = *(v16 + v14);
        if (v19 == 255)
        {
          LOBYTE(v20) = *(v16 + v17);
          if (a4 >= 2)
          {
            v21 = v17;
            do
            {
              v22 = *(v16 + v21 - 1);
              v15[v21] = v20;
              LOBYTE(v20) = v22;
              v23 = v21-- <= 1;
            }

            while (!v23);
            goto LABEL_34;
          }
        }

        else
        {
          if (!*(v16 + v14))
          {
            if (a4 >= 1)
            {
              bzero(v15, v34);
            }

            goto LABEL_41;
          }

          v20 = *(v16 + v17);
          if (a1)
          {
            if (a1 < 1)
            {
              v28 = inverted_8bit_alpha[v19];
              if (a4 > 1)
              {
                v29 = v17;
                do
                {
                  v30 = v20 * v28;
                  LOWORD(v20) = *(v16 + v29 - 1);
                  v15[v29] = HIBYTE(v30);
                  v23 = v29-- <= 1;
                }

                while (!v23);
              }

              LOWORD(v26) = v20 * v28;
            }

            else
            {
              if (a4 >= 2)
              {
                v24 = v17;
                do
                {
                  v25 = v20 * v19;
                  v20 = *(v16 + v24 - 1);
                  v15[v24] = (v25 + (v25 >> 8) + 1) >> 8;
                  v23 = v24-- <= 1;
                }

                while (!v23);
              }

              v26 = v20 * v19 + ((v20 * v19) >> 8) + 1;
            }

            *v15 = BYTE1(v26);
            goto LABEL_41;
          }

          if (a4 >= 2)
          {
            v27 = v17;
            do
            {
              v22 = *(v16 + v27 - 1);
              v15[v27] = v20;
              LOBYTE(v20) = v22;
              v23 = v27-- <= 1;
            }

            while (!v23);
            goto LABEL_34;
          }
        }

        v22 = v20;
LABEL_34:
        *v15 = v22;
LABEL_41:
        v16 += v18;
        v15[v14] = v19;
        v15 += v18;
        v23 = v11-- <= 1;
      }

      while (!v23);
    }

    v16 += v32;
    v15 += v31;
    v23 = a3-- <= 1;
    v11 = a2;
  }

  while (!v23);
}

uint64_t CGSConvertAlphaByteMeshedXXXX(uint64_t result, int a2, int a3, unsigned int *a4, int a5, unsigned int *a6, int a7, int a8)
{
  v8 = a5;
  v9 = a7;
  if (a8 <= 0)
  {
    do
    {
      v29 = a2;
      v30 = a6;
      v31 = a4;
      if (a2 >= 4)
      {
        v32 = 0;
        v29 = a2;
        do
        {
          v33 = v29;
          v34 = &a4[v32];
          v35 = a4[v32];
          v36 = a4[v32 + 1];
          if (result)
          {
            v37 = a4[v32 + 1];
            if ((a4[v32 + 1] & v35) != 0xFF)
            {
              if (a4[v32])
              {
                if (a4[v32] != 255)
                {
                  v38 = a4[v32];
                  if (result < 1)
                  {
                    v46 = inverted_8bit_alpha[v38];
                    v47 = v35 >> 8;
                    v42 = ((BYTE1(v35) * v46) | (((v35 >> 8) & 0xFF0000) * v46)) & 0xFF00FF00;
                    v41 = ((v47 & 0xFF00) * v46) & 0xFF0000 | v38;
                  }

                  else
                  {
                    v39 = ((v35 >> 8) & 0xFF00FF) * v38;
                    v40 = (v35 & 0xFF0000 | 0xFF) * v38;
                    v41 = (v39 + 65537 + ((v39 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v42 = ((v40 + 65537 + ((v40 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v35 = v42 | v41;
                }
              }

              else
              {
                v35 = 0;
              }

              if (a4[v32 + 1])
              {
                if (a4[v32 + 1] != 255)
                {
                  if (result < 1)
                  {
                    v52 = inverted_8bit_alpha[v37];
                    v53 = v36 >> 8;
                    v51 = ((BYTE1(v36) * v52) | (((v36 >> 8) & 0xFF0000) * v52)) & 0xFF00FF00;
                    v50 = ((v53 & 0xFF00) * v52) & 0xFF0000 | v37;
                  }

                  else
                  {
                    v48 = ((v36 >> 8) & 0xFF00FF) * v37;
                    v49 = (v36 & 0xFF0000 | 0xFF) * v37;
                    v50 = (v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v51 = ((v49 + 65537 + ((v49 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v36 = v51 | v50;
                }
              }

              else
              {
                v36 = 0;
              }
            }

            v54 = &a6[v32];
            *v54 = v35;
            v54[1] = v36;
            v44 = a4[v32 + 2];
            v45 = a4[v32 + 3];
            v55 = v45;
            if ((v45 & v44) != 0xFF)
            {
              if (a4[v32 + 2])
              {
                if (a4[v32 + 2] != 255)
                {
                  v56 = a4[v32 + 2];
                  if (result < 1)
                  {
                    v61 = inverted_8bit_alpha[v56];
                    v62 = v44 >> 8;
                    v60 = ((BYTE1(v44) * v61) | (((v44 >> 8) & 0xFF0000) * v61)) & 0xFF00FF00;
                    v59 = ((v62 & 0xFF00) * v61) & 0xFF0000 | v56;
                  }

                  else
                  {
                    v57 = ((v44 >> 8) & 0xFF00FF) * v56;
                    v58 = (v44 & 0xFF0000 | 0xFF) * v56;
                    v59 = (v57 + 65537 + ((v57 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v60 = ((v58 + 65537 + ((v58 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v44 = v60 | v59;
                }
              }

              else
              {
                v44 = 0;
              }

              if (v45)
              {
                if (v45 != 255)
                {
                  if (result < 1)
                  {
                    v65 = inverted_8bit_alpha[v45];
                    v66 = v45 >> 8;
                    v64 = ((BYTE1(v45) * v65) | (((v45 >> 8) & 0xFF0000) * v65)) & 0xFF00FF00;
                    v63 = ((v66 & 0xFF00) * v65) & 0xFF0000 | v55;
                  }

                  else
                  {
                    v63 = (((v45 >> 8) & 0xFF00FF) * v45 + 65537 + (((((v45 >> 8) & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v64 = (((v45 & 0xFF0000 | 0xFF) * v45 + 65537 + ((((v45 & 0xFF0000 | 0xFF) * v45) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v45 = v64 | v63;
                }
              }

              else
              {
                v45 = 0;
              }
            }
          }

          else
          {
            v43 = &a6[v32];
            *v43 = v35;
            v43[1] = v36;
            v44 = v34[2];
            v45 = v34[3];
          }

          v67 = &a6[v32];
          v67[2] = v44;
          v67[3] = v45;
          v29 = v33 - 4;
          v32 += 4;
        }

        while (v33 > 7);
        v31 = &a4[v32];
        v30 = &a6[v32];
      }

      if (v29 >= 1)
      {
        v68 = v29 + 1;
        do
        {
          v69 = *v31;
          if (result)
          {
            if (*v31)
            {
              if (*v31 != 255)
              {
                v70 = *v31;
                if (result < 1)
                {
                  v75 = inverted_8bit_alpha[v70];
                  v76 = v69 >> 8;
                  v74 = ((BYTE1(v69) * v75) | (((v69 >> 8) & 0xFF0000) * v75)) & 0xFF00FF00;
                  v73 = ((v76 & 0xFF00) * v75) & 0xFF0000 | v70;
                }

                else
                {
                  v71 = ((v69 >> 8) & 0xFF00FF) * v70;
                  v72 = (v69 & 0xFF0000 | 0xFF) * v70;
                  v73 = (v71 + 65537 + ((v71 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                  v74 = ((v72 + 65537 + ((v72 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                }

                v69 = v74 | v73;
              }
            }

            else
            {
              v69 = 0;
            }
          }

          *v30++ = v69;
          ++v31;
          --v68;
        }

        while (v68 > 1);
      }

      a4 = (a4 + v8);
      a6 = (a6 + v9);
      v28 = a3-- <= 1;
    }

    while (!v28);
  }

  else
  {
    do
    {
      v10 = a2;
      v11 = a6;
      v12 = a4;
      if (a2 >= 4)
      {
        v13 = 0;
        v10 = a2;
        do
        {
          v14 = v10;
          v15 = &a4[v13];
          v16 = a4[v13];
          v17 = a4[v13 + 1];
          if (result)
          {
            v18 = v16 >> 24;
            v19 = v17 >> 24;
            if ((HIBYTE(a4[v13 + 1]) & HIBYTE(a4[v13])) != 0xFF)
            {
              if (v18 != 255)
              {
                if (BYTE3(v16))
                {
                  if (result < 1)
                  {
                    LODWORD(v16) = (BYTE1(v16) * inverted_8bit_alpha[v18]) & 0xFF00 | v16 & 0xFF000000 | (((v16 >> 8) & 0xFF00) * inverted_8bit_alpha[v18]) & 0xFF0000 | ((v16 * inverted_8bit_alpha[v18]) >> 8);
                  }

                  else
                  {
                    LODWORD(v16) = ((BYTE1(v16) | 0xFF0000) * v18 + 65537 + ((((BYTE1(v16) | 0xFF0000) * v18) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v16 & 0xFF00FF) * v18 + 65537 + ((((v16 & 0xFF00FF) * v18) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v16) = 0;
                }
              }

              if (v19 != 255)
              {
                if (BYTE3(v17))
                {
                  if (result < 1)
                  {
                    LODWORD(v17) = (BYTE1(v17) * inverted_8bit_alpha[v19]) & 0xFF00 | v17 & 0xFF000000 | (((v17 >> 8) & 0xFF00) * inverted_8bit_alpha[v19]) & 0xFF0000 | ((v17 * inverted_8bit_alpha[v19]) >> 8);
                  }

                  else
                  {
                    LODWORD(v17) = ((BYTE1(v17) | 0xFF0000) * v19 + 65537 + ((((BYTE1(v17) | 0xFF0000) * v19) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v17 & 0xFF00FF) * v19 + 65537 + ((((v17 & 0xFF00FF) * v19) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v17) = 0;
                }
              }
            }

            v21 = &a6[v13];
            *v21 = v16;
            v21[1] = v17;
            v16 = a4[v13 + 2];
            v17 = a4[v13 + 3];
            v22 = v16 >> 24;
            v23 = v17 >> 24;
            if ((HIBYTE(a4[v13 + 3]) & HIBYTE(a4[v13 + 2])) != 0xFF)
            {
              if (v22 != 255)
              {
                if (BYTE3(v16))
                {
                  if (result < 1)
                  {
                    LODWORD(v16) = (BYTE1(v16) * inverted_8bit_alpha[v22]) & 0xFF00 | v16 & 0xFF000000 | (((v16 >> 8) & 0xFF00) * inverted_8bit_alpha[v22]) & 0xFF0000 | ((v16 * inverted_8bit_alpha[v22]) >> 8);
                  }

                  else
                  {
                    LODWORD(v16) = ((BYTE1(v16) | 0xFF0000) * v22 + 65537 + ((((BYTE1(v16) | 0xFF0000) * v22) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v16 & 0xFF00FF) * v22 + 65537 + ((((v16 & 0xFF00FF) * v22) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v16) = 0;
                }
              }

              if (v23 != 255)
              {
                if (BYTE3(v17))
                {
                  if (result < 1)
                  {
                    LODWORD(v17) = (BYTE1(v17) * inverted_8bit_alpha[v23]) & 0xFF00 | v17 & 0xFF000000 | (((v17 >> 8) & 0xFF00) * inverted_8bit_alpha[v23]) & 0xFF0000 | ((v17 * inverted_8bit_alpha[v23]) >> 8);
                  }

                  else
                  {
                    LODWORD(v17) = ((BYTE1(v17) | 0xFF0000) * v23 + 65537 + ((((BYTE1(v17) | 0xFF0000) * v23) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v17 & 0xFF00FF) * v23 + 65537 + ((((v17 & 0xFF00FF) * v23) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v17) = 0;
                }
              }
            }
          }

          else
          {
            v20 = &a6[v13];
            *v20 = v16;
            v20[1] = v17;
            LODWORD(v16) = v15[2];
            LODWORD(v17) = v15[3];
          }

          v24 = &a6[v13];
          v24[2] = v16;
          v24[3] = v17;
          v10 = v14 - 4;
          v13 += 4;
        }

        while (v14 > 7);
        v12 = &a4[v13];
        v11 = &a6[v13];
      }

      if (v10 >= 1)
      {
        v25 = v10 + 1;
        do
        {
          v26 = *v12;
          if (result)
          {
            v27 = v26 >> 24;
            if (HIBYTE(*v12) != 255)
            {
              if (BYTE3(v26))
              {
                if (result < 1)
                {
                  LODWORD(v26) = (BYTE1(v26) * inverted_8bit_alpha[v27]) & 0xFF00 | v26 & 0xFF000000 | (((v26 >> 8) & 0xFF00) * inverted_8bit_alpha[v27]) & 0xFF0000 | ((v26 * inverted_8bit_alpha[v27]) >> 8);
                }

                else
                {
                  LODWORD(v26) = ((BYTE1(v26) | 0xFF0000) * v27 + 65537 + ((((BYTE1(v26) | 0xFF0000) * v27) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v26 & 0xFF00FF) * v27 + 65537 + ((((v26 & 0xFF00FF) * v27) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                }
              }

              else
              {
                LODWORD(v26) = 0;
              }
            }
          }

          *v11++ = v26;
          ++v12;
          --v25;
        }

        while (v25 > 1);
      }

      a4 = (a4 + v8);
      a6 = (a6 + v9);
      v28 = a3-- <= 1;
    }

    while (!v28);
  }

  return result;
}

void CGSConvertAlphaWordInterleved(int a1, int a2, int a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6, int a7, int a8, int a9, unsigned __int16 *a10, _WORD *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    if (a9 < 0)
    {
      v17 = a4 + 1;
    }

    else
    {
      v17 = 1;
    }

    if (a9 < 0)
    {
      v18 = a4 + 1;
    }

    else
    {
      v18 = a4;
    }

    if (a9 < 0)
    {
      v15 = a5 + 1;
    }
  }

  else
  {
    v14 = &a6[a4];
    v17 = a4 + 1;
    v18 = v17;
  }

  v19 = 2 * a2;
  v20 = a7 - v19 * v18;
  v21 = a8 - v19 * v17;
  v22 = a4;
  v23 = 1;
  v24 = a10 + 1;
  v25 = a4 + 1;
  if (a14 >= 0)
  {
    v24 = a10;
  }

  else
  {
    v23 = v25;
    v22 = v25;
  }

  if (a14 >= 1)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  if (a14 < 1)
  {
    v27 = a11;
  }

  else
  {
    v22 = v25;
    v27 = &a11[a4];
  }

  if (a14 >= 1)
  {
    v28 = a10;
  }

  else
  {
    v28 = v24;
  }

  v29 = a12 - v19 * v22;
  v30 = a13 - v19 * v26;
  if (a4 != 3)
  {
    v39 = (a4 - 1);
    v64 = 2 * a4;
    v65 = v17;
    v40 = 2 * v22;
    v41 = 2 * v18;
    v59 = v20;
    v60 = a2;
    v57 = v29;
    v58 = v21;
    v56 = a13 - v19 * v26;
    v63 = a1;
    v62 = v41;
    while (1)
    {
      v61 = a3;
      if (a2 >= 1)
      {
        break;
      }

LABEL_74:
      a3 = v61 - 1;
      v15 = (v15 + v59);
      v14 = (v14 + v58);
      v28 = (v28 + v57);
      v27 = (v27 + v56);
      a2 = v60;
      if (v61 <= 1)
      {
        return;
      }
    }

    v42 = a2;
    while (1)
    {
      v43 = *v14;
      if (v43 == 0xFFFF)
      {
        LOWORD(v46) = v15[v39];
        if (a4 >= 2)
        {
          v47 = v39;
          do
          {
            v48 = v15[v47 - 1];
            v28[v47] = v46;
            LOWORD(v46) = v48;
            v38 = v47-- <= 1;
          }

          while (!v38);
          goto LABEL_65;
        }
      }

      else
      {
        if (!*v14)
        {
          if (a4 >= 1)
          {
            v44 = a4;
            v45 = v40;
            bzero(v28, v64);
            v41 = v62;
            v40 = v45;
            a4 = v44;
            v17 = v65;
            a1 = v63;
          }

          goto LABEL_72;
        }

        v46 = v15[v39];
        if (a1)
        {
          if (a1 < 1)
          {
            v53 = 0xFFFFFFFF / v43;
            if (a4 > 1)
            {
              v54 = v39;
              do
              {
                v55 = v46 * v53;
                v46 = v15[v54 - 1];
                v28[v54] = HIWORD(v55);
                v38 = v54-- <= 1;
              }

              while (!v38);
            }

            v51 = v46 * v53;
          }

          else
          {
            if (a4 >= 2)
            {
              v49 = v39;
              do
              {
                v50 = v46 * v43;
                v46 = v15[v49 - 1];
                v28[v49] = (v50 + HIWORD(v50) + 1) >> 16;
                v38 = v49-- <= 1;
              }

              while (!v38);
            }

            v51 = v46 * v43 + ((v46 * v43) >> 16) + 1;
          }

          *v28 = HIWORD(v51);
          goto LABEL_72;
        }

        if (a4 >= 2)
        {
          v52 = v39;
          do
          {
            v48 = v15[v52 - 1];
            v28[v52] = v46;
            LOWORD(v46) = v48;
            v38 = v52-- <= 1;
          }

          while (!v38);
          goto LABEL_65;
        }
      }

      v48 = v46;
LABEL_65:
      *v28 = v48;
LABEL_72:
      v14 += v17;
      v15 = (v15 + v41);
      *v27 = v43;
      v28 = (v28 + v40);
      v27 += v26;
      v38 = v42-- <= 1;
      if (v38)
      {
        goto LABEL_74;
      }
    }
  }

  v31 = 2 * v22;
  do
  {
    if (a2 >= 1)
    {
      v32 = a2 + 1;
      do
      {
        v33 = *v14;
        if (*v14)
        {
          if (v33 == 0xFFFF || !a1)
          {
            *v28 = *v15;
            LOWORD(v36) = v15[2];
          }

          else
          {
            if (a1 < 1)
            {
              v37 = 0xFFFFFFFF / v33 * v15[1];
              *v28 = (0xFFFFFFFF / v33 * *v15) >> 16;
              v28[1] = HIWORD(v37);
              v35 = 0xFFFFFFFF / v33 * v15[2];
            }

            else
            {
              v34 = v15[1] * v33 + ((v15[1] * v33) >> 16) + 1;
              *v28 = (*v15 * v33 + ((*v15 * v33) >> 16) + 1) >> 16;
              v28[1] = HIWORD(v34);
              v35 = v15[2] * v33 + ((v15[2] * v33) >> 16) + 1;
            }

            v36 = HIWORD(v35);
          }
        }

        else
        {
          LOWORD(v36) = 0;
          *v28 = 0;
        }

        --v32;
        v15 += v18;
        v28[2] = v36;
        *v27 = v33;
        v27 += v26;
        v14 += v17;
        v28 = (v28 + v31);
      }

      while (v32 > 1);
    }

    v15 = (v15 + v20);
    v14 = (v14 + v21);
    v28 = (v28 + v29);
    v27 = (v27 + v30);
    v38 = a3-- <= 1;
  }

  while (!v38);
}

void CGSConvertAlphaWordMeshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  v9 = a2;
  v11 = (a4 + 1) * a2;
  v12 = a6 - 2 * v11;
  if (a9 <= 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = a4;
  }

  v14 = a8 - 2 * v11;
  v15 = a5 + 2 * (v13 < 1);
  v16 = (a7 + 2 * (v13 < 1));
  v17 = v13;
  if (a4 != 3)
  {
    v32 = (a4 - 1);
    v49 = 2 * a4;
    v33 = 2 * (a4 + 1);
    v45 = v14;
    v46 = a6 - 2 * v11;
    while (1)
    {
      v48 = a3;
      if (v9 >= 1)
      {
        break;
      }

LABEL_55:
      v9 = a2;
      a3 = v48 - 1;
      v15 += v46;
      v16 = (v16 + v45);
      if (v48 <= 1)
      {
        return;
      }
    }

    while (1)
    {
      v34 = *(v15 + 2 * v17);
      if (v34 == 0xFFFF)
      {
        LOWORD(v35) = *(v15 + 2 * v32);
        if (a4 >= 2)
        {
          v36 = v32;
          do
          {
            v37 = *(v15 + 2 * v36 - 2);
            v16[v36] = v35;
            LOWORD(v35) = v37;
            v30 = v36-- <= 1;
          }

          while (!v30);
          goto LABEL_46;
        }
      }

      else
      {
        if (!*(v15 + 2 * v17))
        {
          if (a4 >= 1)
          {
            bzero(v16, v49);
          }

          goto LABEL_53;
        }

        v35 = *(v15 + 2 * v32);
        if (a1)
        {
          if (a1 < 1)
          {
            v42 = 0xFFFFFFFF / v34;
            if (a4 > 1)
            {
              v43 = v32;
              do
              {
                v44 = v35 * v42;
                v35 = *(v15 + 2 * v43 - 2);
                v16[v43] = HIWORD(v44);
                v30 = v43-- <= 1;
              }

              while (!v30);
            }

            v40 = v35 * v42;
          }

          else
          {
            if (a4 >= 2)
            {
              v38 = v32;
              do
              {
                v39 = v35 * v34;
                v35 = *(v15 + 2 * v38 - 2);
                v16[v38] = (v39 + HIWORD(v39) + 1) >> 16;
                v30 = v38-- <= 1;
              }

              while (!v30);
            }

            v40 = v35 * v34 + ((v35 * v34) >> 16) + 1;
          }

          *v16 = HIWORD(v40);
          goto LABEL_53;
        }

        if (a4 >= 2)
        {
          v41 = v32;
          do
          {
            v37 = *(v15 + 2 * v41 - 2);
            v16[v41] = v35;
            LOWORD(v35) = v37;
            v30 = v41-- <= 1;
          }

          while (!v30);
          goto LABEL_46;
        }
      }

      v37 = v35;
LABEL_46:
      *v16 = v37;
LABEL_53:
      v15 += v33;
      v16[v17] = v34;
      v16 = (v16 + v33);
      v30 = v9-- <= 1;
      if (v30)
      {
        goto LABEL_55;
      }
    }
  }

  v18 = v13;
  do
  {
    if (a2 >= 1)
    {
      v19 = 0;
      v20 = v15 + v18 * 2;
      v21 = a2 + 1;
      do
      {
        v22 = *(v20 + v19);
        if (*(v20 + v19))
        {
          if (v22 == 0xFFFF || !a1)
          {
            *&v16[v19 / 2] = *(v15 + v19);
            LOWORD(v27) = *(v15 + v19 + 4);
          }

          else
          {
            if (a1 < 1)
            {
              v28 = 0xFFFFFFFF / v22 * *(v15 + v19 + 2);
              v29 = &v16[v19 / 2];
              *v29 = (0xFFFFFFFF / v22 * *(v15 + v19)) >> 16;
              v29[1] = HIWORD(v28);
              v26 = 0xFFFFFFFF / v22 * *(v15 + v19 + 4);
            }

            else
            {
              v23 = *(v15 + v19 + 2) * v22;
              v24 = &v16[v19 / 2];
              *v24 = (*(v15 + v19) * v22 + ((*(v15 + v19) * v22) >> 16) + 1) >> 16;
              v24[1] = (v23 + HIWORD(v23) + 1) >> 16;
              v25 = *(v15 + v19 + 4) * v22;
              v26 = v25 + HIWORD(v25) + 1;
            }

            v27 = HIWORD(v26);
          }
        }

        else
        {
          LOWORD(v27) = 0;
          *&v16[v19 / 2] = 0;
        }

        v16[v19 / 2 + 2] = v27;
        v16[v18 + v19 / 2] = v22;
        --v21;
        v19 += 8;
      }

      while (v21 > 1);
      v15 += v19;
      v16 = (v16 + v19);
    }

    v15 += v12;
    v16 = (v16 + v14);
    v30 = a3-- <= 1;
  }

  while (!v30);
}

void CGSConvertAlphaFloatInterleved(int a1, int a2, int a3, int a4, uint64_t a5, float *a6, int a7, int a8, int a9, float *a10, float *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    if (a9 < 0)
    {
      v18 = a4 + 1;
    }

    else
    {
      v18 = 1;
    }

    if (a9 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = a4 + 1;
    }

    if (a9 < 0)
    {
      v15 = (a5 + 4);
    }
  }

  else
  {
    v14 = &a6[a4];
    v18 = a4 + 1;
    v19 = a4 + 1;
  }

  v20 = a7 - 4 * v19 * a2;
  v21 = a10 + 1;
  if (a14 < 0)
  {
    v22 = a4 + 1;
  }

  else
  {
    v22 = 1;
  }

  if (a14 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = a4 + 1;
  }

  if (a14 >= 0)
  {
    v21 = a10;
  }

  if (a14 < 1)
  {
    v24 = v23;
  }

  else
  {
    v22 = a4 + 1;
    v24 = a4 + 1;
  }

  if (a14 >= 1)
  {
    v25 = &a11[a4];
  }

  else
  {
    v25 = a11;
  }

  if (a14 >= 1)
  {
    v26 = a10;
  }

  else
  {
    v26 = v21;
  }

  v27 = a12 - 4 * v24 * a2;
  v28 = v18;
  if (a4 == 3)
  {
    v29 = 4 * v19;
    v30 = 4 * v24;
    while (a2 < 1)
    {
LABEL_42:
      v15 = (v15 + v20);
      v14 = (v14 + a8 - 4 * v18 * a2);
      v26 = (v26 + v27);
      v25 = (v25 + a13 - 4 * v22 * a2);
      v34 = a3-- <= 1;
      if (v34)
      {
        return;
      }
    }

    v31 = a2 + 1;
    while (1)
    {
      v32 = *v14;
      if (*v14 != 1.0)
      {
        if (v32 == 0.0)
        {
          *v26 = 0;
          v33 = 0.0;
          goto LABEL_36;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            *v26 = vmul_n_f32(*v15, 1.0 / v32);
            v33 = (1.0 / v32) * v15[1].f32[0];
          }

          else
          {
            *v26 = vmul_n_f32(*v15, v32);
            v33 = v32 * v15[1].f32[0];
          }

          goto LABEL_36;
        }
      }

      *v26 = *v15;
      v33 = v15[1].f32[0];
LABEL_36:
      --v31;
      v15 = (v15 + v29);
      v26[2] = v33;
      *v25 = v32;
      v14 += v18;
      v26 = (v26 + v30);
      v25 += v22;
      if (v31 <= 1)
      {
        goto LABEL_42;
      }
    }
  }

  v56 = (a4 - 1);
  v35 = v22;
  v57 = 4 * a4;
  v36 = 4 * v24;
  v37 = 4 * v19;
  v54 = a2;
  v52 = a8 - 4 * v18 * a2;
  v53 = a7 - 4 * v19 * a2;
  v50 = a13 - 4 * v22 * a2;
  v51 = v27;
  do
  {
    v55 = a3;
    if (a2 >= 1)
    {
      v38 = a2;
      do
      {
        v39 = *v14;
        if (*v14 == 0.0)
        {
          if (a4 >= 1)
          {
            v40 = v37;
            v58 = v38;
            bzero(v26, v57);
            v38 = v58;
            v37 = v40;
          }
        }

        else
        {
          v41 = v15->f32[v56];
          if (!a1 || v39 == 1.0)
          {
            if (a4 < 2)
            {
              v46 = v15->i32[v56];
            }

            else
            {
              v45 = v56;
              do
              {
                v46 = v15->i32[v45 - 1];
                v26[v45] = v41;
                v41 = *&v46;
                v34 = v45-- <= 1;
              }

              while (!v34);
            }

            *v26 = v46;
          }

          else
          {
            if (a1 < 1)
            {
              v47 = 1.0 / v39;
              if (a4 > 1)
              {
                v48 = v56;
                do
                {
                  v49 = v47 * v41;
                  v41 = v15->f32[v48 - 1];
                  v26[v48] = v49;
                  v34 = v48-- <= 1;
                }

                while (!v34);
              }

              v44 = v47 * v41;
            }

            else
            {
              if (a4 >= 2)
              {
                v42 = v56;
                do
                {
                  v43 = v39 * v41;
                  v41 = v15->f32[v42 - 1];
                  v26[v42] = v43;
                  v34 = v42-- <= 1;
                }

                while (!v34);
              }

              v44 = v39 * v41;
            }

            *v26 = v44;
          }
        }

        v14 += v28;
        v15 = (v15 + v37);
        *v25 = v39;
        v26 = (v26 + v36);
        v25 += v35;
        v34 = v38-- <= 1;
      }

      while (!v34);
    }

    a2 = v54;
    a3 = v55 - 1;
    v15 = (v15 + v53);
    v14 = (v14 + v52);
    v26 = (v26 + v51);
    v25 = (v25 + v50);
  }

  while (v55 > 1);
}

void CGSConvertAlphaFloatMeshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  v10 = a2;
  v12 = (a4 + 1) * a2;
  if (a9 <= 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = a4;
  }

  v14 = (a5 + 4 * (v13 < 1));
  v15 = (a7 + 4 * (v13 < 1));
  v16 = v13;
  if (a4 == 3)
  {
    while (a2 < 1)
    {
LABEL_17:
      v14 = (v14 + a6 - 4 * v12);
      v15 = (v15 + a8 - 4 * v12);
      v20 = a3-- <= 1;
      if (v20)
      {
        return;
      }
    }

    v17 = a2 + 1;
    while (1)
    {
      v18 = v14->f32[v16];
      if (v18 != 1.0)
      {
        if (v18 == 0.0)
        {
          *v15 = 0;
          v19 = 0.0;
          goto LABEL_11;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            *v15 = vmul_n_f32(*v14, 1.0 / v18);
            v19 = (1.0 / v18) * v14[1].f32[0];
          }

          else
          {
            *v15 = vmul_n_f32(*v14, v18);
            v19 = v18 * v14[1].f32[0];
          }

          goto LABEL_11;
        }
      }

      *v15 = *v14;
      v19 = v14[1].f32[0];
LABEL_11:
      v15[2] = v19;
      v14 += 2;
      v15[v16] = v18;
      v15 += 4;
      if (--v17 <= 1)
      {
        goto LABEL_17;
      }
    }
  }

  v37 = (a4 - 1);
  v22 = 4 * a4;
  v23 = 4 * (a4 + 1);
  v34 = a8 - 4 * v12;
  v35 = a6 - 4 * v12;
  do
  {
    if (v10 >= 1)
    {
      do
      {
        v24 = v14->f32[v16];
        if (v24 == 0.0)
        {
          if (a4 >= 1)
          {
            bzero(v15, v22);
          }
        }

        else
        {
          v25 = v14->f32[v37];
          if (!a1 || v24 == 1.0)
          {
            if (a4 < 2)
            {
              v30 = v14->i32[v37];
            }

            else
            {
              v29 = v37;
              do
              {
                v30 = v14->i32[v29 - 1];
                v15[v29] = v25;
                v25 = *&v30;
                v20 = v29-- <= 1;
              }

              while (!v20);
            }

            *v15 = v30;
          }

          else
          {
            if (a1 < 1)
            {
              v31 = 1.0 / v24;
              if (a4 > 1)
              {
                v32 = v37;
                do
                {
                  v33 = v31 * v25;
                  v25 = v14->f32[v32 - 1];
                  v15[v32] = v33;
                  v20 = v32-- <= 1;
                }

                while (!v20);
              }

              v28 = v31 * v25;
            }

            else
            {
              if (a4 >= 2)
              {
                v26 = v37;
                do
                {
                  v27 = v24 * v25;
                  v25 = v14->f32[v26 - 1];
                  v15[v26] = v27;
                  v20 = v26-- <= 1;
                }

                while (!v20);
              }

              v28 = v24 * v25;
            }

            *v15 = v28;
          }
        }

        v14 = (v14 + v23);
        v15[v16] = v24;
        v15 = (v15 + v23);
        v20 = v10-- <= 1;
      }

      while (!v20);
    }

    v14 = (v14 + v35);
    v15 = (v15 + v34);
    v20 = a3-- <= 1;
    v10 = a2;
  }

  while (!v20);
}

void convert_alpha_float16_interleved(int a1, int a2, int a3, int a4, short float *a5, short float *a6, int a7, int a8, float _S0, float _S1, int a11, char *a12, short float *a13, int a14, int a15, int a16)
{
  v16 = a6;
  v17 = a5;
  if (a11 < 1)
  {
    if (a11 < 0)
    {
      v20 = a4 + 1;
    }

    else
    {
      v20 = 1;
    }

    if (a11 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = a4 + 1;
    }

    if (a11 < 0)
    {
      v17 = a5 + 1;
    }
  }

  else
  {
    v16 = &a6[a4];
    v20 = a4 + 1;
    v21 = a4 + 1;
  }

  v22 = a7 - 2 * v21 * a2;
  v23 = a12 + 2;
  if (a16 < 0)
  {
    v24 = a4 + 1;
  }

  else
  {
    v24 = 1;
  }

  if (a16 >= 0)
  {
    v25 = a4;
  }

  else
  {
    v25 = a4 + 1;
  }

  if (a16 >= 0)
  {
    v23 = a12;
  }

  if (a16 < 1)
  {
    v26 = v25;
  }

  else
  {
    v24 = a4 + 1;
    v26 = a4 + 1;
  }

  if (a16 >= 1)
  {
    v27 = &a13[a4];
  }

  else
  {
    v27 = a13;
  }

  if (a16 >= 1)
  {
    v28 = a12;
  }

  else
  {
    v28 = v23;
  }

  v29 = a14 - 2 * v26 * a2;
  v30 = v20;
  if (a4 == 3)
  {
    v31 = 2 * v21;
    v32 = 2 * v26;
    while (a2 < 1)
    {
LABEL_43:
      v17 = (v17 + v22);
      v16 = (v16 + a8 - 2 * v20 * a2);
      v28 += v29;
      v27 = (v27 + a15 - 2 * v24 * a2);
      v51 = a3-- <= 1;
      if (v51)
      {
        return;
      }
    }

    v33 = a2 + 1;
    while (1)
    {
      _H2 = *v16;
      if (*v16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (_ZF)
        {
          *v28 = 0;
          LOWORD(_H3) = 0;
          goto LABEL_37;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            __asm { FCVT            S3, H2 }

            v42 = 1.0 / _S3;
            _H4 = *v17;
            __asm { FCVT            S4, H4 }

            _H5 = *(v17 + 1);
            __asm { FCVT            S5, H5 }

            _S4 = v42 * _S4;
            _S5 = v42 * _S5;
            __asm { FCVT            H4, S4 }

            *v28 = LOWORD(_S4);
            __asm { FCVT            H4, S5 }

            *(v28 + 1) = LOWORD(_S4);
            *&_S4 = v17[2];
            __asm { FCVT            S4, H4 }

            _S3 = v42 * _S4;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            v40 = v17[1];
            *v28 = _H2 * *v17;
            *(v28 + 1) = _H2 * v40;
            _H3 = _H2 * v17[2];
          }

          goto LABEL_37;
        }
      }

      *v28 = *v17;
      _H3 = v17[2];
LABEL_37:
      --v33;
      v17 = (v17 + v31);
      *(v28 + 2) = _H3;
      *v27 = _H2;
      v27 += v24;
      v16 += v20;
      v28 += v32;
      if (v33 <= 1)
      {
        goto LABEL_43;
      }
    }
  }

  v74 = (a4 - 1);
  v52 = v24;
  v73 = 2 * a4;
  v53 = 2 * v26;
  v54 = 2 * v21;
  v71 = a2;
  v69 = a8 - 2 * v20 * a2;
  v70 = a7 - 2 * v21 * a2;
  v67 = a15 - 2 * v24 * a2;
  v68 = v29;
  do
  {
    v72 = a3;
    if (a2 >= 1)
    {
      v55 = a2;
      do
      {
        __asm { FCMP            H10, #0 }

        if (_ZF)
        {
          if (a4 >= 1)
          {
            v57 = v54;
            v75 = v55;
            bzero(v28, v73);
            v55 = v75;
            v54 = v57;
          }
        }

        else
        {
          *&_S0 = v17[v74];
          if (!a1 || _H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
          {
            if (a4 < 2)
            {
              _S1 = _S0;
            }

            else
            {
              v62 = v74;
              do
              {
                *&_S1 = v17[v62 - 1];
                *&v28[2 * v62] = LOWORD(_S0);
                _S0 = _S1;
                v51 = v62-- <= 1;
              }

              while (!v51);
            }

            *v28 = LOWORD(_S1);
          }

          else
          {
            __asm
            {
              FCVT            S1, H10
              FCVT            S0, H0
            }

            if (a1 < 1)
            {
              _S1 = 1.0 / _S1;
              if (a4 > 1)
              {
                v63 = v74;
                do
                {
                  _S2 = _S1 * _S0;
                  _H0 = v17[v63 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v28[2 * v63] = LOWORD(_S2);
                  v51 = v63-- <= 1;
                }

                while (!v51);
              }

              _S0 = _S1 * _S0;
            }

            else
            {
              if (a4 >= 2)
              {
                v59 = v74;
                do
                {
                  _S2 = _S0 * _S1;
                  _H0 = v17[v59 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v28[2 * v59] = LOWORD(_S2);
                  v51 = v59-- <= 1;
                }

                while (!v51);
              }

              _S0 = _S0 * _S1;
            }

            __asm { FCVT            H0, S0 }

            *v28 = _H0;
          }
        }

        v16 += v30;
        v17 = (v17 + v54);
        *v27 = _H10;
        v28 += v53;
        v27 += v52;
        v51 = v55-- <= 1;
      }

      while (!v51);
    }

    a2 = v71;
    a3 = v72 - 1;
    v17 = (v17 + v70);
    v16 = (v16 + v69);
    v28 += v68;
    v27 = (v27 + v67);
  }

  while (v72 > 1);
}

void convert_alpha_float16_meshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, float _S0, float _S1, int a11)
{
  v12 = a2;
  v14 = a4 + 1;
  if (a11 <= 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = a4;
  }

  v16 = v14 * a2;
  v17 = (a5 + 2 * (v15 < 1));
  v18 = (a7 + 2 * (v15 < 1));
  if (a4 == 3)
  {
    while (a2 < 1)
    {
LABEL_18:
      v17 = (v17 + a6 - 2 * v14 * a2);
      v18 += a8 - 2 * v14 * a2;
      v37 = a3-- <= 1;
      if (v37)
      {
        return;
      }
    }

    v19 = a2 + 1;
    while (1)
    {
      _H2 = v17[v15];
      if (_H2 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (_ZF)
        {
          *v18 = 0;
          LOWORD(_H3) = 0;
          goto LABEL_12;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            __asm { FCVT            S3, H2 }

            v28 = 1.0 / _S3;
            _H4 = *v17;
            __asm { FCVT            S4, H4 }

            _H5 = *(v17 + 1);
            __asm { FCVT            S5, H5 }

            _S4 = v28 * _S4;
            _S5 = v28 * _S5;
            __asm { FCVT            H4, S4 }

            *v18 = LOWORD(_S4);
            __asm { FCVT            H4, S5 }

            *(v18 + 1) = LOWORD(_S4);
            *&_S4 = v17[2];
            __asm { FCVT            S4, H4 }

            _S3 = v28 * _S4;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            v26 = v17[1];
            *v18 = _H2 * *v17;
            *(v18 + 1) = _H2 * v26;
            _H3 = _H2 * v17[2];
          }

          goto LABEL_12;
        }
      }

      *v18 = *v17;
      _H3 = v17[2];
LABEL_12:
      *(v18 + 2) = _H3;
      v17 += 4;
      *&v18[2 * v15] = _H2;
      v18 += 8;
      if (--v19 <= 1)
      {
        goto LABEL_18;
      }
    }
  }

  v39 = (a4 - 1);
  v40 = 2 * a4;
  v41 = 2 * v14;
  v52 = a8 - 2 * v16;
  v53 = a6 - 2 * v16;
  do
  {
    if (v12 >= 1)
    {
      do
      {
        __asm { FCMP            H10, #0 }

        if (_ZF)
        {
          if (a4 >= 1)
          {
            bzero(v18, v40);
          }
        }

        else
        {
          *&_S0 = v17[v39];
          if (!a1 || _H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
          {
            if (a4 < 2)
            {
              _S1 = _S0;
            }

            else
            {
              v47 = v39;
              do
              {
                *&_S1 = v17[v47 - 1];
                *&v18[2 * v47] = LOWORD(_S0);
                _S0 = _S1;
                v37 = v47-- <= 1;
              }

              while (!v37);
            }

            *v18 = LOWORD(_S1);
          }

          else
          {
            __asm
            {
              FCVT            S1, H10
              FCVT            S0, H0
            }

            if (a1 < 1)
            {
              _S1 = 1.0 / _S1;
              if (a4 > 1)
              {
                v48 = v39;
                do
                {
                  _S2 = _S1 * _S0;
                  _H0 = v17[v48 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v18[2 * v48] = LOWORD(_S2);
                  v37 = v48-- <= 1;
                }

                while (!v37);
              }

              _S0 = _S1 * _S0;
            }

            else
            {
              if (a4 >= 2)
              {
                v44 = v39;
                do
                {
                  _S2 = _S0 * _S1;
                  _H0 = v17[v44 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v18[2 * v44] = LOWORD(_S2);
                  v37 = v44-- <= 1;
                }

                while (!v37);
              }

              _S0 = _S0 * _S1;
            }

            __asm { FCVT            H0, S0 }

            *v18 = _H0;
          }
        }

        v17 = (v17 + v41);
        *&v18[2 * v15] = _H10;
        v18 += v41;
        v37 = v12-- <= 1;
      }

      while (!v37);
    }

    v17 = (v17 + v53);
    v18 += v52;
    v37 = a3-- <= 1;
    v12 = a2;
  }

  while (!v37);
}

BOOL CGPDFCountElementsInCPChunk(void *a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [a1 anchoringTextLine] == 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [a1 count];
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    if (v5)
    {
      v36 = 0;
      v3 = 0;
      do
      {
        v37 = [a1 childAtIndex:v36];
        v3 += CGPDFCountElementsInCPChunk(v37, v38);
        v36 = (v36 + 1);
      }

      while (v6 != v36);
      return v3;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v3 = 0;
  v7 = 0;
  v40 = v5;
  v41 = a1;
  do
  {
    v42 = v7;
    v44 = [a1 childAtIndex:{v40, v41}];
    v8 = [v44 count];
    if (v8)
    {
      v9 = 0;
      v43 = v8;
      do
      {
        v45 = v9;
        v47 = [v44 childAtIndex:?];
        v10 = [v47 count];
        if (v10)
        {
          v11 = 0;
          v46 = v10;
          do
          {
            v48 = v11;
            v12 = [v47 childAtIndex:?];
            v13 = [v12 charSequence];
            v14 = [v12 wordCount];
            v15 = v14;
            if (v14)
            {
              v16 = 0;
              v49 = v12;
              do
              {
                v17 = [v12 wordAtIndex:v16];
                v18 = *(v17 + 4);
                if (v18)
                {
                  v19 = v17;
                  v20 = 0;
                  v21 = 0;
                  do
                  {
                    v22 = [v13 charAtIndex:(v20 + *v19)];
                    v52 = 0;
                    v23 = *(v22 + 72);
                    if (!v21 || !isCharacterOverlay(v21, v22))
                    {
                      if (v23 || (v25 = *(*(v22 + 160) + 64)) == 0)
                      {
                        v50 = 0;
                        if (decomposes(v23, &v51, &v50))
                        {
                          v24 = v50;
                        }

                        else
                        {
                          v24 = 1;
                        }
                      }

                      else
                      {
                        [v25 uniCharsFor:*(v22 + 74) count:&v52 toArray:v53 maxChars:256];
                        v24 = v52;
                        if (v52 <= 1)
                        {
                          v24 = 1;
                        }
                      }

                      v3 += v24;
                    }

                    ++v20;
                    v21 = v22;
                  }

                  while (v18 != v20);
                }

                ++v3;
                ++v16;
                v12 = v49;
              }

              while (v16 != v15);
            }

            v26 = [v12 inlineList];
            if (v26)
            {
              v27 = v26;
              do
              {
                v28 = *(v27 + 8);
                objc_opt_class();
                v30 = (objc_opt_isKindOfClass() & 1) != 0 || CGPDFCountElementsInCPChunk(v28, v29);
                v3 += v30 + 1;
                v27 = *(v27 + 16);
              }

              while (v27);
            }

            if ([objc_msgSend(v12 "parent")])
            {
              v31 = 0;
              if (v15)
              {
                for (i = 0; i != v15; ++i)
                {
                  v33 = [v12 spacesBeforeWordAtIndex:i];
                  if (i)
                  {
                    v34 = v33 == 0;
                  }

                  else
                  {
                    v34 = 1;
                  }

                  v35 = !v34;
                  v31 = v31 + v33 - v35;
                }
              }

              v3 += v31;
            }

            v11 = v48 + 1;
          }

          while (v48 + 1 != v46);
        }

        v9 = v45 + 1;
      }

      while (v45 + 1 != v43);
    }

    a1 = v41;
    v7 = v42 + 1;
  }

  while (v42 + 1 != v40);
  return v3;
}

char *CGPDFNodeMakeFromCPChunk(void *a1, uint64_t a2, uint64_t a3, CFDictionaryRef *a4, CFDictionaryRef *a5)
{
  v10 = CGPDFNodeTypeFromCPChunk(a1, a2);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a3)
  {
    v12 = [a1 count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      do
      {
        v15 = [a1 childAtIndex:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 anchoringTextLine];
        }

        v14 = (v14 + 1);
      }

      while (v13 != v14);
    }
  }

  if (a2)
  {
    v16 = *(a2 + 104);
  }

  else
  {
    v16 = 0;
  }

  if (v11 != 517 || v16)
  {
    v22 = [a1 conformsToProtocol:&unk_1EF257608];
    if (a4 && v22)
    {
      if (*a4)
      {
        Value = CFDictionaryGetValue(*a4, a1);
        if (Value)
        {
          return Value;
        }
      }

      else
      {
        *a4 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      }

      CGPDFNodeInitInPage(v11);
      Value = v29;
      CFDictionaryAddValue(*a4, a1, v29);
    }

    else
    {
      CGPDFNodeInitInPage(v11);
      Value = v23;
    }
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CGPDFNodeSizeFromCPChunk(a1, Mutable);
    context = [a1 clipBuffer];
    CFSetApplyFunction(Mutable, countClips, &context);
    CFRelease(Mutable);
    v18 = malloc_type_calloc(0x98uLL, 1uLL, 0x85D9E9A1uLL);
    *v18 = 517;
    v18[10] = 1;
    *(v18 + 1) = CPRangeNull;
    *(v18 + 4) = 0;
    *(v18 + 7) = 0;
    *(v18 + 11) = 0;
    *(v18 + 52) = 0;
    *(v18 + 2) = CGRectNull;
    *(v18 + 13) = a2;
    if (a2)
    {
      v18[10] = 2;
      *(a2 + 104) = v18;
      CGPDFNodeRelease(v18);
      v16 = *(a2 + 104);
      if (v16)
      {
        v19 = DWORD2(context);
        v20 = *(a2 + 104);
        while (*v20 != 517)
        {
          v20 = *(v20 + 8);
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        v24 = *(v20 + 112);
        if (v24)
        {
          v25 = 0;
          v26 = 8;
          do
          {
            v27 = *(*(v20 + 120) + v26);
            if (v27)
            {
              CFRelease(v27);
              v24 = *(v20 + 112);
            }

            ++v25;
            v26 += 32;
          }

          while (v25 < v24);
        }

        free(*(v20 + 120));
        if (v19)
        {
          v28 = malloc_type_calloc(v19, 0x20uLL, 0x1060040A9AB1A44uLL);
        }

        else
        {
          v28 = 0;
        }

        *(v20 + 120) = v28;
        *(v20 + 112) = 0;
      }
    }

    else
    {
      CGPDFNodeRelease(v18);
      v16 = 0;
    }

LABEL_37:
    Value = v16;
  }

  if (!Value)
  {
    return Value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 zoneBounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [a1 newBackgroundColor];
    if (*Value == 1538)
    {
      v39 = *(Value + 14);
      if (v39 != v38)
      {
        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          CFRetain(v38);
        }

        *(Value + 14) = v38;
      }
    }

    if (v38)
    {
      CFRelease(v38);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 cellBounds];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 tableBounds];
      }

      else
      {
        [a1 renderedBounds];
      }
    }

    v31 = v40;
    v33 = v41;
    v35 = v42;
    v37 = v43;
  }

  if ((Value[1] & 3) != 0)
  {
    *(Value + 8) = v31;
    *(Value + 9) = v33;
    *(Value + 10) = v35;
    *(Value + 11) = v37;
  }

  v44 = [a1 zOrder];
  if ((Value[1] & 3) != 0)
  {
    *(Value + 12) = v44;
  }

  if (v11 > 513)
  {
    switch(v11)
    {
      case 514:
        v56 = [a1 lineBreakAfter];
        v57 = Value;
        while (*v57 != 514)
        {
          v57 = *(v57 + 1);
          if (!v57)
          {
            goto LABEL_94;
          }
        }

        v57[104] = v56;
LABEL_94:
        [a1 rotationAngle];
        *(Value + 4) = v67;
        return Value;
      case 516:
        v65 = [a1 hasRotatedCharacters];
        v66 = Value;
        while (*v66 != 516)
        {
          v66 = *(v66 + 1);
          if (!v66)
          {
            return Value;
          }
        }

        v66[104] = v65;
        return Value;
      case 1537:
        *&context = 0;
        if ([a1 isPreformattedWithUnitWidth:&context])
        {
          v45 = Value;
          while (*v45 != 1537)
          {
            v45 = *(v45 + 1);
            if (!v45)
            {
              goto LABEL_105;
            }
          }

          *(v45 + 14) = context;
        }

LABEL_105:
        if (!a1)
        {
          return Value;
        }

        goto LABEL_127;
    }

LABEL_85:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_111;
  }

  if (v11 == 257)
  {
    v46 = [a1 imageData];
    if (!v46)
    {
      goto LABEL_111;
    }

    v47 = v46;
    v48 = *(v46 + 80);
    v49 = *(v46 + 96);
    v50 = *(v46 + 160);
    v51 = *(v46 + 168);
    v52 = *(v46 + 120);
    context = *(v46 + 104);
    v128 = v52;
    v129 = *(v46 + 136);
    if (*Value == 257)
    {
      *(Value + 15) = v48;
      if (v49)
      {
        CFRetain(v49);
      }

      *(Value + 16) = v49;
      v53 = v128;
      *(Value + 136) = context;
      *(Value + 152) = v53;
      *(Value + 168) = v129;
      *(Value + 23) = v50;
      if (v51)
      {
        CFRetain(v51);
      }

      *(Value + 24) = v51;
    }

    if (*(v47 + 176) == -1)
    {
      goto LABEL_111;
    }

    v54 = *([objc_msgSend(a1 "page")] + 2344);
    v55 = *(v47 + 176);
    goto LABEL_110;
  }

  if (v11 != 258)
  {
    if (v11 == 259)
    {
      CGPDFNodeSetCGPDFAnnotation(Value, [a1 cgAnnotation]);
      return Value;
    }

    goto LABEL_85;
  }

  v125 = [a1 pdfObjectID];
  v124 = [a1 windingRule];
  [a1 lineWidth];
  v59 = v58;
  [a1 miterLimit];
  v61 = v60;
  v123 = [a1 lineCap];
  v122 = [a1 lineJoin];
  v62 = [a1 fillColor];
  v63 = [a1 strokeColor];
  v126 = [a1 fillObject];
  v64 = [a1 strokeObject];
  if (a1)
  {
    objc_msgSend_paintTransform(a1);
  }

  else
  {
    v128 = 0u;
    v129 = 0u;
    context = 0u;
  }

  if (*Value == 258)
  {
    *(Value + 30) = v125;
    *(Value + 16) = 0;
    Value[136] = v124 == 1;
    *(Value + 18) = v59;
    *(Value + 19) = v61;
    *(Value + 40) = v123;
    *(Value + 41) = v122;
    if (v62)
    {
      CFRetain(v62);
    }

    *(Value + 21) = v62;
    if (v63)
    {
      CFRetain(v63);
    }

    *(Value + 22) = v63;
    if (v126 | v64)
    {
      v68 = malloc_type_malloc(0x40uLL, 0x1020040038FC326uLL);
      *(Value + 23) = v68;
      *v68 = v126;
      v68[1] = v64;
      v69 = v129;
      *(v68 + 2) = v128;
      *(v68 + 3) = v69;
      *(v68 + 1) = context;
    }

    else
    {
      *(Value + 23) = 0;
    }
  }

  if (([a1 mcid] & 0x8000000000000000) == 0)
  {
    v70 = *([objc_msgSend(a1 "page")] + 2344);
    v55 = [a1 mcid];
    v54 = v70;
LABEL_110:
    CGPDFTaggedContextAddNode(v54, v55, Value);
  }

LABEL_111:
  v71 = [a1 user];
  if (v71)
  {
    v72 = CGPDFNodeMakeFromCPChunk(v71, a2, 0, a4, a5);
    v73 = v72;
    if (Value[1])
    {
      *(Value + 14) = v72;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v73)
      {
        if (*v73 == 1538 && (Value[1] & 1) != 0)
        {
          v74 = *(v73 + 13);
          if (v74)
          {
            if (*v74 == 3)
            {
              v75 = *(v74 + 32);
              *(*(v74 + 40) + 8 * v75) = Value;
              *(v74 + 32) = v75 + 1;
            }
          }
        }
      }
    }
  }

  v76 = [a1 clipIndex];
  if (v76)
  {
    v77 = v76;
    v78 = [objc_msgSend(a1 "page")];
    v79 = CGPDFNodeClipMakeFromClipIndex(v78 + 2208, v77, *(v78 + 2112), v16, a5);
    if (v79)
    {
      if (Value[1])
      {
        *(Value + 13) = v79;
      }
    }
  }

LABEL_125:
  if (!a1 || v11 < 0x400)
  {
    return Value;
  }

LABEL_127:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CGPDFNodeMakeSubType(Value, 3);
    v80 = [a1 rowCount];
    v81 = [a1 rowY];
    if (v80)
    {
      v82 = v81;
      if (v81)
      {
        if (*Value == 1538)
        {
          v83 = *(Value + 13);
          if (v83)
          {
            if (*v83 == 3)
            {
              free(*(v83 + 8));
              v84 = malloc_type_malloc(8 * (v80 + 1), 0x100004000313F17uLL);
              *(v83 + 8) = v84;
              if (v84)
              {
                *(v83 + 4) = v80;
                memcpy(v84, v82, 8 * (v80 + 1));
              }

              else
              {
                *(v83 + 4) = 0;
              }
            }
          }
        }
      }
    }

    v111 = [a1 columnCount];
    v112 = [a1 columnX];
    if (v111)
    {
      v113 = v112;
      if (v112)
      {
        if (*Value == 1538)
        {
          v114 = *(Value + 13);
          if (v114)
          {
            if (*v114 == 3)
            {
              free(*(v114 + 24));
              v115 = malloc_type_malloc(8 * (v111 + 1), 0x100004000313F17uLL);
              *(v114 + 24) = v115;
              if (v115)
              {
                *(v114 + 16) = v111;
                memcpy(v115, v113, 8 * (v111 + 1));
              }

              else
              {
                *(v114 + 16) = 0;
              }
            }
          }
        }
      }
    }

    v116 = [a1 usedGraphicCount];
    if (*Value == 1538)
    {
      v117 = *(Value + 13);
      if (v117)
      {
        if (*v117 == 3)
        {
          v118 = v116;
          free(*(v117 + 40));
          *(v117 + 40) = malloc_type_calloc(v118, 8uLL, 0x2004093837F09uLL);
          *(v117 + 32) = 0;
        }
      }
    }

    v109 = [a1 backgroundColor];
    if (*Value == 1538)
    {
      v110 = *(Value + 13);
      if (v110)
      {
        if (*v110 == 3)
        {
          goto LABEL_180;
        }
      }
    }

    return Value;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return Value;
  }

  CGPDFNodeMakeSubType(Value, 2);
  v85 = [a1 rowSpan];
  if (*Value == 1538)
  {
    v87 = *(Value + 13);
    if (v87)
    {
      if (*v87 == 2)
      {
        *(v87 + 8) = v85;
        *(v87 + 16) = v86;
      }
    }
  }

  v88 = [a1 columnSpan];
  if (*Value == 1538)
  {
    v90 = *(Value + 13);
    if (v90)
    {
      if (*v90 == 2)
      {
        *(v90 + 24) = v88;
        *(v90 + 32) = v89;
      }
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v92 = sideMap[i];
    [a1 boundsOfBorder:i];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = [a1 colorOfBorder:i];
    if (*Value == 1538)
    {
      v102 = *(Value + 13);
      if (v102)
      {
        if (*v102 == 2)
        {
          v103 = v101;
          v104 = *(v102 + 40);
          if (!v104)
          {
            v105 = malloc_type_calloc(4uLL, 0x28uLL, 0x10200405CE47BF4uLL);
            if (!v105)
            {
              continue;
            }

            v104 = v105;
            for (j = 0; j != 160; j += 40)
            {
              *&v105[j] = CGRectNull;
            }
          }

          v107 = &v104[40 * v92];
          *v107 = v94;
          *(v107 + 1) = v96;
          *(v107 + 2) = v98;
          *(v107 + 3) = v100;
          v108 = *(v107 + 4);
          if (v108 != v103)
          {
            if (v108)
            {
              CFRelease(v108);
            }

            if (v103)
            {
              CFRetain(v103);
            }

            *(v107 + 4) = v103;
          }

          *(v102 + 40) = v104;
        }
      }
    }
  }

  v109 = [a1 backgroundColor];
  if (*Value != 1538)
  {
    return Value;
  }

  v110 = *(Value + 13);
  if (!v110 || *v110 != 2)
  {
    return Value;
  }

LABEL_180:
  v119 = v109;
  v120 = *(v110 + 48);
  if (v120 != v119)
  {
    if (v120)
    {
      CFRelease(v120);
    }

    if (v119)
    {
      CFRetain(v119);
    }

    *(v110 + 48) = v119;
  }

  return Value;
}

uint64_t CGPDFNodePopulateFromCPChunk(int *a1, void *a2, uint64_t a3, unsigned int *a4, CFDictionaryRef *a5, CFDictionaryRef *a6)
{
  v290 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v19 = [a2 count];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = [a2 childAtIndex:v21];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v23 anchoringTextLine])
        {
          result = CGPDFNodeMakeFromCPChunk(v23, a3, 0, a5, a6);
          if (!result)
          {
            return result;
          }

          v24 = result;
          CGPDFNodeAddChild(a1, result, v22);
          CGPDFNodeRelease(v24);
          result = CGPDFNodePopulateFromCPChunk(v24, v23, a3, a4, a5, a6);
          if (!result)
          {
            return result;
          }

          ++v22;
        }

        v21 = (v21 + 1);
      }

      while (v20 != v21);
    }

    return 1;
  }

  v8 = *a1;
  if ((*a1 & 0x100) == 0)
  {
    if (v8 != 516)
    {
      if (v8 == 513)
      {
        result = CGPDFNodePopulateFromCPGraphicObject(a1, a2, a3, a4);
        if (!result)
        {
          return result;
        }

        TextRange = CGPDFNodeGetTextRange(a1);
        v12 = v11;
        v13 = [a2 count];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = [a2 childAtIndex:v16];
            if (![v17 anchoringTextLine])
            {
              result = CGPDFNodeMakeFromCPChunk(v17, a3, 0, a5, a6);
              if (!result)
              {
                return result;
              }

              v18 = result;
              CGPDFNodeAddChild(a1, result, v15);
              CGPDFNodeRelease(v18);
              *(v18 + 16) = TextRange;
              *(v18 + 24) = v12;
              ++v15;
            }

            v16 = (v16 + 1);
          }

          while (v14 != v16);
        }

        return 1;
      }

      goto LABEL_13;
    }

    v25 = a3;
    if (a3)
    {
      v26 = [a2 count];
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v239 = v26;
      v30 = a5;
      while (1)
      {
        v241 = v28;
        v244 = v27;
        v245 = v29;
        v249 = [a2 childAtIndex:?];
        v248 = CGPDFNodeMakeFromCPChunk(v249, v25, 0, v30, a6);
        if (!v248)
        {
          break;
        }

        CGPDFNodeAddChild(a1, v248, v245);
        CGPDFNodeRelease(v248);
        v31 = [v249 count];
        if (v31)
        {
          v243 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 84;
          v246 = v31;
          do
          {
            v247 = v32;
            v35 = [v249 childAtIndex:v33];
            v36 = CGPDFNodeMakeFromCPChunk(v35, v25, 0, v30, a6);
            if (!v36)
            {
LABEL_266:
              if (!v247)
              {
                goto LABEL_269;
              }

              break;
            }

            v37 = v36;
            CGPDFNodeAddChild(v248, v36, v33);
            CGPDFNodeRelease(v37);
            v38 = [v35 listItem];
            v250 = v33;
            if (v38)
            {
              v39 = v38;
              if ([v38 paragraphCount])
              {
                if ([v39 paragraphAtIndex:0] == v35)
                {
                  v215 = [v39 list];
                  v216 = [v215 itemCount];
                  if (v216)
                  {
                    v217 = v216;
                    if ([v215 itemAtIndex:0] != v39)
                    {
                      if (!v243)
                      {
                        v243 = 0;
                        goto LABEL_34;
                      }

                      v218 = *v243;
                      v219 = [v39 paragraphCount];
                      if (v218)
                      {
LABEL_251:
                        if (*v218 == 1537)
                        {
                          if (v219)
                          {
                            if (*v37 == 1537)
                            {
                              v233 = *(v218 + 104);
                              if (v233)
                              {
                                if (*v233 == 1)
                                {
                                  v234 = *(v233 + 24);
                                  if (v234)
                                  {
                                    v235 = *(v233 + 20);
                                    if (v235)
                                    {
                                      v236 = *(v234 + 4 * (v235 - 1)) + v219;
                                    }

                                    else
                                    {
                                      *(v233 + 8) = v37;
                                      v236 = v219 - 1;
                                    }

                                    *(v233 + 20) = v235 + 1;
                                    *(v234 + 4 * v235) = v236;
                                    if (v218 != v37)
                                    {
                                      CGPDFNodeRemoveSubType(v37);
                                      *(v37 + 104) = v233;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      if ([v215 itemAtIndex:v217 - 1] == v39)
                      {
                        v237 = v243[1];
                        free(v243);
                        v243 = v237;
                      }

                      goto LABEL_34;
                    }

                    CGPDFNodeMakeSubType(v37, 1);
                    if (*v37 == 1537)
                    {
                      v220 = *(v37 + 104);
                      if (v220)
                      {
                        if (*v220 == 1)
                        {
                          free(*(v220 + 24));
                          *(v220 + 24) = malloc_type_calloc(v217, 4uLL, 0x100004052888210uLL);
                          *(v220 + 20) = 0;
                        }
                      }
                    }

                    v221 = [v215 type];
                    if (*v37 == 1537)
                    {
                      v222 = *(v37 + 104);
                      if (v222)
                      {
                        if (*v222 == 1)
                        {
                          v222[1] = listStyleFromOrdinalType[v221];
                        }
                      }
                    }

                    v223 = [v39 number];
                    if (*v37 == 1537)
                    {
                      v224 = *(v37 + 104);
                      if (v224)
                      {
                        if (*v224 == 1)
                        {
                          v224[4] = v223;
                        }
                      }
                    }

                    v225 = [v215 ordinalPrefixLength];
                    if (*v37 == 1537)
                    {
                      v226 = *(v37 + 104);
                      if (v226)
                      {
                        if (*v226 == 1)
                        {
                          v226[8] = v225;
                        }
                      }
                    }

                    v227 = [v215 ordinalSuffixLength];
                    if (*v37 == 1537)
                    {
                      v228 = *(v37 + 104);
                      if (v228)
                      {
                        if (*v228 == 1)
                        {
                          v228[9] = v227;
                        }
                      }
                    }

                    v229 = [v215 isMultilevel];
                    if (*v37 == 1537)
                    {
                      v230 = *(v37 + 104);
                      if (v230)
                      {
                        if (*v230 == 1)
                        {
                          *(v230 + 40) = v229;
                        }
                      }
                    }

                    v231 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
                    if (v231)
                    {
                      v232 = v231;
                      *v231 = v37;
                      v231[1] = v243;
                      v219 = [v39 paragraphCount];
                      v243 = v232;
                      v218 = v37;
                      goto LABEL_251;
                    }
                  }
                }
              }
            }

LABEL_34:
            v25 = a3;
            v40 = [v35 count];
            if (v40)
            {
              v41 = 0;
              v42 = 0;
              v251 = v40;
              v252 = v37;
              v253 = v35;
              do
              {
                v275 = v34;
                v43 = v30;
                v44 = [v35 childAtIndex:v42];
                v260 = *(v25 + 48);
                [v44 baseline];
                v269 = v45;
                v271 = [v44 charSequence];
                v266 = [objc_msgSend(v44 "page")];
                v46 = [v44 inlineList];
                v47 = v25;
                v48 = [v44 wordCount];
                v278 = [v44 inlineCount] + v48;
                v49 = CGPDFNodeMakeFromCPChunk(v44, v47, &v278, v43, a6);
                if (!v49)
                {
                  *(v27 + 16) |= 0x20u;
                  v25 = a3;
                  v30 = v43;
                  if (!v41)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_218;
                }

                v50 = v49;
                v254 = v42;
                CGPDFNodeAddChild(v37, v49, v42);
                v264 = v50;
                CGPDFNodeRelease(v50);
                v51 = [v44 parent];
                v277 = 0.0;
                v258 = [v51 isPreformattedWithUnitWidth:&v277];
                v263 = v44;
                if (!v278)
                {
                  v25 = a3;
                  v59 = v260;
                  goto LABEL_178;
                }

                v56 = 0;
                v57 = 0;
                v58 = v275 | 1;
                v262 = v48;
                v25 = a3;
                v59 = v260;
                do
                {
                  if (v46 && v57 >= *v46)
                  {
                    v268 = v57;
                    v80 = v46;
                    v81 = *(v46 + 1);
                    v283 = v264;
                    v284 = v25;
                    v285 = v27;
                    v286[0] = v58;
                    v286[1] = 0;
                    v287 = v269;
                    v288 = a5;
                    v289 = a6;
                    v82 = malloc_type_calloc(0x48uLL, 1uLL, 0x85D9E9A1uLL);
                    v83 = v56;
                    v84 = v82;
                    *v82 = 1;
                    *(v82 + 10) = 1;
                    *(v82 + 1) = CPRangeNull;
                    *(v82 + 4) = 0;
                    *(v82 + 7) = 0;
                    *(v82 + 44) = 0;
                    v82[52] = 0;
                    v85 = v83;
                    CGPDFNodeAddChild(v264, v82, v83);
                    CGPDFNodeRelease(v84);
                    v86 = *(v25 + 48);
                    v87 = CGPDFNodeMakeFromCPChunk(v81, v25, 0, a5, a6);
                    if (v87)
                    {
                      v88 = v87;
                      if (*v84 == 1)
                      {
                        v89 = *(v84 + 8);
                        if (v89)
                        {
                          *(v89 + 8) = 0;
                          v84[52] = 0;
                          CGPDFNodeRelease(v89);
                        }

                        else
                        {
                          v84[52] = 0;
                        }

                        *(v84 + 8) = v88;
                        v84[52] = 1;
                        ++*(v88 + 10);
                        *(v88 + 1) = v84;
                      }

                      CGPDFNodeRelease(v88);
                      v90 = v88;
                      v25 = a3;
                      v59 = v260;
                      if (!CGPDFNodePopulateFromCPChunk(v90, v81, a3, v286, a5, a6))
                      {
                        goto LABEL_173;
                      }

                      v92 = v284;
                      if (v284)
                      {
                        v93 = *(v284 + 48);
                      }

                      else
                      {
                        v93 = 0;
                      }

                      *(v84 + 2) = v86;
                      *(v84 + 3) = v93 - v86;
                      v94 = *(v92 + 24) + 24 * *(v92 + 32);
                      v27 = v94 - 24;
                      v285 = v94 - 24;
                      *(v94 - 8) |= 2u;
                      v95 = closestCharacter(v81, v91);
                      v96 = v95;
                      v97 = &CGRectZero;
                      if (v95)
                      {
                        v97 = v95;
                      }

                      height = v97->size.height;
                      [v81 renderedBounds];
                      v109 = v105;
                      v110 = v106;
                      v111 = v107;
                      v112 = v108;
                      if (v107 < 0.0 || v108 < 0.0)
                      {
                        v292 = CGRectStandardize(*&v105);
                        v113 = v292.origin.x + v292.size.width;
                        v292.origin.x = v109;
                        v292.origin.y = v110;
                        v292.size.width = v111;
                        v292.size.height = v112;
                        v293 = CGRectStandardize(v292);
                        y = v293.origin.y;
                        if (!v96)
                        {
                          v294.origin.x = v109;
                          v294.origin.y = v110;
                          v294.size.width = v111;
                          v294.size.height = v112;
                          v295 = CGRectStandardize(v294);
                          v110 = v295.origin.y;
                          goto LABEL_165;
                        }
                      }

                      else
                      {
                        v113 = v105 + v107;
                        y = v106;
                        if (!v96)
                        {
LABEL_165:
                          v185 = CGPDFCharacterCreate(32, 0, v113, y, 0.0, height, 0.0, 0.0, 0.0, 0.0, v99, v100, v101, v102, v103, v104, *&v110);
                          if (v96)
                          {
                            v186 = [*(*&v96[5].origin.x + 64) cgPDFFont];
                            v187 = CGPDFTextStyleCreate(v186, **&v96[5].origin.x, *(*&v96[5].origin.x + 96), *(*&v96[5].origin.x + 72), v96[5].origin.y * 0.0174532925, v96[2].size.height - v287);
                            CGPDFLayoutAppendTextElement(v92, v185, v187, 0x400u);
                            if (v187)
                            {
                              CGPDFTextStyleRelease(v187);
                            }
                          }

                          else
                          {
                            CGPDFLayoutAppendTextElement(v92, v185, 0, 0x400u);
                          }

                          v25 = a3;
                          if (v185)
                          {
                            v61 = (*v185)-- == 1;
                            if (v61)
                            {
                              free(v185);
                            }
                          }

                          goto LABEL_173;
                        }
                      }

                      v110 = v96[2].size.height;
                      goto LABEL_165;
                    }

                    v25 = a3;
                    v59 = v260;
LABEL_173:
                    v46 = *(v80 + 2);
                    v56 = v85;
                    v57 = v268;
                    goto LABEL_174;
                  }

                  if (v57 >= v262)
                  {
                    goto LABEL_174;
                  }

                  v267 = v57;
                  v265 = v56;
                  v261 = v46;
                  if (v258)
                  {
                    v60 = [v263 spacesBeforeWordAtIndex:v57];
                    v61 = !v57 || v60 == 0;
                    v62 = !v61;
                    v63 = v60 - v62;
                    if (v60 != v62)
                    {
                      v64 = [v263 wordAtIndex:v57];
                      v65 = v277;
                      v72 = [v271 charAtIndex:*v64];
                      v73 = *(v72 + 24);
                      v74 = *(v72 + 8);
                      v75 = *v72 - v63 * v65;
                      do
                      {
                        v76 = CGPDFCharacterCreate(32, 0, v75, v74, v65, v73, 0.0, 0.0, 0.0, 0.0, v66, v67, v68, v69, v70, v71, *(v72 + 88));
                        if (!v76)
                        {
                          break;
                        }

                        v77 = v76;
                        v78 = CGPDFTextStyleCreate([*(*(v72 + 160) + 64) cgPDFFont], **(v72 + 160), *(*(v72 + 160) + 96), *(*(v72 + 160) + 72), *(v72 + 168) * 0.0174532925, *(v72 + 88) - v269);
                        if (!v78)
                        {
                          v61 = (*v77)-- == 1;
                          if (v61)
                          {
                            free(v77);
                          }

                          break;
                        }

                        v79 = v78;
                        CGPDFLayoutAppendTextElement(a3, v77, v78, 0x400u);
                        v61 = (*v77)-- == 1;
                        if (v61)
                        {
                          free(v77);
                        }

                        --v63;
                        CGPDFTextStyleRelease(v79);
                        v75 = v65 + v75;
                      }

                      while (v63);
                    }
                  }

                  v272 = [v263 wordAtIndex:v57];
                  v115 = v272[1];
                  v116 = malloc_type_calloc(0x48uLL, 1uLL, 0x85D9E9A1uLL);
                  *v116 = 1;
                  *(v116 + 10) = 1;
                  *(v116 + 1) = CPRangeNull;
                  *(v116 + 4) = 0;
                  *(v116 + 7) = 0;
                  *(v116 + 44) = 0;
                  v116[52] = 0;
                  v56 = v265;
                  CGPDFNodeAddChild(v264, v116, v265);
                  CGPDFNodeRelease(v116);
                  v117 = a3;
                  v118 = *(a3 + 48);
                  v276 = v115;
                  if (!v115)
                  {
                    goto LABEL_156;
                  }

                  v256 = *(a3 + 48);
                  v257 = v116;
                  v119 = 0;
                  v120 = 0;
                  v121 = 0;
                  do
                  {
                    v122 = [v271 charAtIndex:(*v272 + v120)];
                    if (!v119 || !isCharacterOverlay(v119, v122))
                    {
                      v123 = *(v122 + 72);
                      v124 = *v122;
                      v125 = *(v122 + 8);
                      v126 = *(v122 + 16);
                      v127 = *(v122 + 24);
                      v128 = *(v122 + 32);
                      v129 = *(v122 + 40);
                      v130 = *(v122 + 48);
                      v131 = *(v122 + 56);
                      v273 = *(v122 + 168);
                      if (*(v122 + 72))
                      {
                        LODWORD(v283) = 0;
                        LODWORD(v279) = 0;
                        if (decomposes(v123, &v283, &v279))
                        {
                          v132 = v279;
                          v133 = 2 * v279;
                          v134 = malloc_type_malloc(v133, 0x1000040BDFB0063uLL);
                          v135 = v134;
                          if (v134 && v132)
                          {
                            v136 = 0;
                            v137 = v283;
                            do
                            {
                              v138 = ds[v137];
                              if (HIWORD(v138))
                              {
                                LOWORD(v138) = 0;
                              }

                              *(v134 + v136) = v138;
                              v136 += 2;
                              ++v137;
                            }

                            while (v133 != v136);
                          }

                          else
                          {
                            v132 = 0;
                          }
                        }

                        else
                        {
                          v132 = 0;
                          v135 = 0;
                        }

                        v150 = v135;
                      }

                      else
                      {
                        v139 = v266[258];
                        v140 = v266[259];
                        v141 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v139) >> 6) + 0xFFFFFFFF;
                        if (v139 >= v140)
                        {
                          LODWORD(v141) = 0;
                        }

                        if (v140 > v122)
                        {
                          v142 = 0xAAAAAAAAAAAAAAABLL * ((v122 - v139) >> 6);
                        }

                        else
                        {
                          LODWORD(v142) = v141;
                        }

                        if (v139 <= v122)
                        {
                          v143 = v142;
                        }

                        else
                        {
                          v143 = 0;
                        }

                        v135 = v266[287];
                        if (v135)
                        {
                          v144 = v135[3];
                          if (v144)
                          {
                            Count = CFArrayGetCount(v144);
                            if (Count >= 1)
                            {
                              v146 = Count;
                              v147 = v143;
                              v148 = -1;
                              do
                              {
                                ValueAtIndex = CFArrayGetValueAtIndex(v135[3], (v146 + v148) >> 1);
                                if (!ValueAtIndex)
                                {
                                  break;
                                }

                                if (*ValueAtIndex == v147)
                                {
                                  v150 = 0;
                                  v132 = ValueAtIndex[2];
                                  v135 = ValueAtIndex[3];
                                  goto LABEL_116;
                                }

                                if (*ValueAtIndex >= v147)
                                {
                                  v146 = (v146 + v148) >> 1;
                                }

                                else
                                {
                                  v148 = (v146 + v148) >> 1;
                                }
                              }

                              while (v148 + 1 < v146);
                            }
                          }

                          v132 = 0;
                          v135 = 0;
                        }

                        else
                        {
                          v132 = 0;
                        }

                        v150 = 0;
LABEL_116:
                        v117 = a3;
                      }

                      v151 = MEMORY[0x1865EFD70](v123);
                      if (v151 == 13 || v151 == 1)
                      {
                        *(v117 + 72) = 1;
                      }

                      v158 = CGPDFCharacterCreate(v123, *(v122 + 74), v124, v125, v126, v127, v128, v129, v130, v131, v152, v153, v154, v155, v156, v157, *(v122 + 88));
                      if (!v158)
                      {
                        goto LABEL_128;
                      }

                      v159 = v158;
                      v160 = CGPDFTextStyleCreate([*(*(v122 + 160) + 64) cgPDFFont], **(v122 + 160), *(*(v122 + 160) + 96), *(*(v122 + 160) + 72), v273 * 0.0174532925, *(v122 + 88) - v269);
                      if (v160)
                      {
                        v161 = v160;
                        CGPDFLayoutAppendTextElement(v117, v159, v160, v58);
                        if (v132)
                        {
                          v162 = *(v117 + 56);
                          if (!v162)
                          {
                            v162 = CPMultiUnicodesCreate();
                            *(v117 + 56) = v162;
                          }

                          CPMultiUnicodesAppend(v162, *(v117 + 48) - 1, v132, v135);
                        }

                        CGPDFTextStyleRelease(v161);
                      }

                      v61 = (*v159)-- == 1;
                      if (v61)
                      {
                        free(v159);
                        if (v150)
                        {
LABEL_129:
                          free(v150);
                        }
                      }

                      else
                      {
LABEL_128:
                        if (v150)
                        {
                          goto LABEL_129;
                        }
                      }

                      v27 = *(v117 + 24) + 24 * *(v117 + 32) - 24;
                    }

                    v163 = *(v122 + 184);
                    if (v163 != -1)
                    {
                      if (!v121)
                      {
                        v121 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:v276];
                        v163 = *(v122 + 184);
                      }

                      [v121 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v163)}];
                    }

                    v58 = (v27 == 0) << 8;
                    ++v120;
                    v119 = v122;
                  }

                  while (v120 != v276);
                  if (!v121)
                  {
                    goto LABEL_153;
                  }

                  v281 = 0u;
                  v282 = 0u;
                  v279 = 0u;
                  v280 = 0u;
                  v164 = [v121 countByEnumeratingWithState:&v279 objects:&v283 count:16];
                  if (!v164)
                  {

LABEL_153:
                    v59 = v260;
                    v56 = v265;
                    goto LABEL_154;
                  }

                  v165 = v164;
                  v166 = 0;
                  v167 = *v280;
                  v168 = -1;
                  do
                  {
                    for (i = 0; i != v165; ++i)
                    {
                      if (*v280 != v167)
                      {
                        objc_enumerationMutation(v121);
                      }

                      v170 = *(*(&v279 + 1) + 8 * i);
                      v171 = [v121 countForObject:v170];
                      if (v171 > v166)
                      {
                        v172 = v171;
                        v168 = [v170 longLongValue];
                        v166 = v172;
                      }
                    }

                    v165 = [v121 countByEnumeratingWithState:&v279 objects:&v283 count:16];
                  }

                  while (v165);

                  v59 = v260;
                  v56 = v265;
                  if (v168 != -1)
                  {
                    v116 = v257;
                    CGPDFTaggedContextAddNode(v266[293], v168, v257);
                    v117 = a3;
                    goto LABEL_155;
                  }

                  v117 = a3;
LABEL_154:
                  v116 = v257;
LABEL_155:
                  v118 = v256;
LABEL_156:
                  v173 = *(v117 + 48) - v118;
                  *(v116 + 2) = v118;
                  *(v116 + 3) = v173;
                  *(v27 + 16) |= 2u;
                  v174 = [v271 charAtIndex:(*v272 + v272[1] - 1)];
                  v181 = CGPDFCharacterCreate(32, 0, *v174 + *(v174 + 16), *(v174 + 8), 0.0, *(v174 + 24), 0.0, 0.0, 0.0, 0.0, v175, v176, v177, v178, v179, v180, *(v174 + 88));
                  if (v181)
                  {
                    v182 = v181;
                    v183 = CGPDFTextStyleCreate([*(*(v174 + 160) + 64) cgPDFFont], **(v174 + 160), *(*(v174 + 160) + 96), *(*(v174 + 160) + 72), *(v174 + 168) * 0.0174532925, *(v174 + 88) - v269);
                    if (v183)
                    {
                      v184 = v183;
                      CGPDFLayoutAppendTextElement(a3, v182, v183, 0x400u);
                      CGPDFTextStyleRelease(v184);
                    }

                    v61 = (*v182)-- == 1;
                    if (v61)
                    {
                      free(v182);
                    }
                  }

                  v57 = v267 + 1;
                  v25 = a3;
                  v46 = v261;
LABEL_174:
                  ++v56;
                  v58 = 1;
                }

                while (v56 < v278);
LABEL_178:
                *(v27 + 16) |= 8u;
                v188 = *(v25 + 48);
                v189 = v258;
                if (v188 <= v59)
                {
                  v189 = 0;
                }

                if (v189 == 1)
                {
                  *(v264 + 16) = v59;
                  *(v264 + 24) = v188 + ~v59;
                }

                v190 = v188 - 1;
                v30 = a5;
                v37 = v252;
                v35 = v253;
                if (v59 < v188 - 1)
                {
                  while (v59 < 0 || *(v25 + 48) <= v59)
                  {
                    v192 = 0;
                    if (++v59 >= 0)
                    {
                      goto LABEL_188;
                    }

                    p_height = &CGRectNull.size.height;
                    p_size = &CGRectNull.size;
                    p_y = &CGRectNull.origin.y;
                    v196 = 1;
                    v203 = 0.0;
                    v204 = INFINITY;
                    v202 = 0.0;
                    v201 = INFINITY;
                    v210 = &CGRectNull;
LABEL_199:
                    x = v210->origin.x;
                    v55 = *p_height;
                    width = p_size->width;
                    if (p_size->width < 0.0 || v55 < 0.0)
                    {
                      v212 = *p_y;
                      v213 = v210->origin.x;
                      *(&v53 - 1) = CGRectStandardize(*(&width - 2));
                      x = v214;
                    }

                    if (v203 < 0.0 || (v52 = v201, v202 < 0.0))
                    {
                      v296.origin.x = v201;
                      v296.origin.y = v204;
                      v296.size.width = v203;
                      v296.size.height = v202;
                      *&v52 = CGRectStandardize(v296);
                    }

                    if (!v196)
                    {
                      v52 = x - v52;
                      *(v192 + 16) = v201;
                      *(v192 + 24) = v204;
                      *(v192 + 32) = v52;
                      *(v192 + 40) = v202;
                    }

                    v25 = a3;
                    if (v59 == v190)
                    {
                      goto LABEL_213;
                    }
                  }

                  v191 = *(v25 + 24);
                  if (v191)
                  {
                    v192 = *(v191 + 24 * v59);
                  }

                  else
                  {
                    v192 = 0;
                  }

                  ++v59;
LABEL_188:
                  if (*(a3 + 48) <= v59)
                  {
                    v193 = 0;
                  }

                  else
                  {
                    v193 = *(a3 + 24);
                    if (v193)
                    {
                      v193 = *(v193 + 24 * v59);
                    }
                  }

                  p_height = &CGRectNull.size.height;
                  p_size = &CGRectNull.size;
                  v196 = v192 == 0;
                  v197 = (v192 + 16);
                  v198 = (v192 + 24);
                  v199 = (v192 + 32);
                  v200 = (v192 + 40);
                  if (!v192)
                  {
                    v198 = &CGRectNull.origin.y;
                    v199 = &CGRectNull.size;
                    v200 = &CGRectNull.size.height;
                    v197 = &CGRectNull;
                  }

                  v201 = v197->origin.x;
                  v202 = *v200;
                  v203 = v199->width;
                  v204 = *v198;
                  v205 = (v193 + 16);
                  v206 = (v193 + 32);
                  v207 = (v193 + 40);
                  v208 = v193 == 0;
                  if (v193)
                  {
                    p_y = (v193 + 24);
                  }

                  else
                  {
                    p_y = &CGRectNull.origin.y;
                  }

                  if (v208)
                  {
                    v210 = &CGRectNull;
                  }

                  else
                  {
                    p_size = v206;
                    p_height = v207;
                    v210 = v205;
                  }

                  goto LABEL_199;
                }

LABEL_213:
                if ([v263 lineBreakAfter])
                {
                  *(*(*(v25 + 24) + 24 * *(v25 + 48) - 24) + 8) = 10;
                }

                v42 = v254 + 1;
                v34 = 4;
                v41 = v254 + 1 >= v251;
              }

              while (v254 + 1 != v251);
            }

            *(v27 + 16) |= 0x20u;
LABEL_218:
            *(*(*(v25 + 24) + 24 * *(v25 + 48) - 24) + 8) = 10;
            v33 = v250 + 1;
            v34 = 20;
            v32 = v250 + 1 >= v246;
          }

          while (v250 + 1 != v246);
        }

        v238 = *(v27 + 16) | 0x80;
        *(v27 + 16) = v238;
        v29 = v245 + 1;
        v28 = v245 + 1 >= v239;
        if (v245 + 1 == v239)
        {
          goto LABEL_271;
        }
      }

LABEL_269:
      if (v241)
      {
        v27 = v244;
        v238 = *(v244 + 16);
LABEL_271:
        *(v27 + 16) = v238 | 0x200;
        return 1;
      }
    }

    return 0;
  }

  return CGPDFNodePopulateFromCPGraphicObject(a1, a2, a3, a4);
}

uint64_t CGPDFNodePopulateFromCPGraphicObject(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = closestCharacter(a2, a2);
  v9 = v8;
  if (!v8 || (result = CGPDFTextStyleCreate([*(*(v8 + 20) + 64) cgPDFFont], **(v8 + 20), *(*(v8 + 20) + 96), *(*(v8 + 20) + 72), 0.0, 0.0), (v9 = result) != 0))
  {
    v11 = *(a3 + 48);
    [a2 renderedBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [a2 anchoringTextLine];
    v27 = *&v15;
    if (v20)
    {
      [v20 baseline];
    }

    v28 = CGPDFCharacterCreate(65532, 0, v13, v15, v17, v19, 0.0, 0.0, 0.0, 0.0, v21, v22, v23, v24, v25, v26, v27);
    CGPDFLayoutAppendTextElement(a3, v28, v9, *a4);
    *a4 = 0;
    if (v28)
    {
      if ((*v28)-- == 1)
      {
        free(v28);
      }
    }

    if (v9)
    {
      CGPDFTextStyleRelease(v9);
    }

    result = 1;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
  }

  return result;
}

void *closestCharacter(void *a1, uint64_t a2)
{
LABEL_1:
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 anchoringTextLine];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 inlineList];
        if (v5)
        {
          v6 = v5;
          while (*(v6 + 1) != a1)
          {
            v6 = *(v6 + 2);
            if (!v6)
            {
              goto LABEL_15;
            }
          }

          v7 = [v4 charSequence];
          v8 = [v7 length];
          if (v8)
          {
            v9 = v8;
            v10 = *v6;
            if (v10 >= [v4 wordCount])
            {
              v12 = (v9 - 1);
            }

            else
            {
              v11 = [v4 wordAtIndex:*v6];
              v12 = *v11 ? (*v11 - 1) : 0;
            }

            result = [v7 charAtIndex:v12];
            if (result)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_15:
    result = [a1 parent];
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = [result indexOf:a1];
    v16 = [v14 count];
    v17 = v16;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18 != 0;
    v20 = (v18 + 1);
    v21 = v20 < v16;
    if (!v18)
    {
      a1 = v14;
      if (v20 >= v16)
      {
        continue;
      }
    }

    LODWORD(v22) = v18;
    while (1)
    {
      if (v19)
      {
        v22 = (v22 - 1);
        v23 = [v14 childAtIndex:v22];
        result = rightDescendantCharacter(v23, v24);
        if (result)
        {
          return result;
        }

        if (v21)
        {
LABEL_27:
          v25 = [v14 childAtIndex:v20];
          result = leftDescendantCharacter(v25, v26);
          v18 = v20;
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        LODWORD(v22) = 0;
        if (v21)
        {
          goto LABEL_27;
        }
      }

      v19 = v22 != 0;
      v20 = (v18 + 1);
      v21 = v20 < v17;
      if (!v22 && v20 >= v17)
      {
        a1 = v14;
        goto LABEL_1;
      }
    }
  }
}

void *rightDescendantCharacter(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = [a1 charSequence]) != 0 && (v4 = v3, (v5 = objc_msgSend(v3, "length")) != 0))
  {

    return [v4 charAtIndex:(v5 - 1)];
  }

  else
  {
    v7 = [a1 count] - 1;
    while (v7 != -1)
    {
      v8 = [a1 childAtIndex:v7];
      result = rightDescendantCharacter(v8, v9);
      v7 = (v7 - 1);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }
}

void *leftDescendantCharacter(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = [a1 charSequence]) != 0 && (v4 = v3, objc_msgSend(v3, "length")))
  {

    return [v4 charAtIndex:0];
  }

  else
  {
    v6 = [a1 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        v9 = [a1 childAtIndex:v8];
        result = leftDescendantCharacter(v9, v10);
        if (result)
        {
          break;
        }

        v8 = (v8 + 1);
        if (v7 == v8)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFNodeTypeFromCPChunk(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 257;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 258;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 259;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 513;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 514;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1537;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 515;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 516;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 517;
  }

  else
  {
    return 0;
  }
}

unint64_t CGPDFNodeSizeFromCPChunk(void *a1, const __CFSet *a2)
{
  v4 = CGPDFNodeTypeFromCPChunk(a1, a2);
  if (v4 != 514)
  {
    v10 = v4;
    if ((v4 & 0x100) != 0)
    {
      v11 = [objc_msgSend(a1 "page")];
      for (i = [a1 clipIndex]; i; i = *(*(v11 + 16) + 52 * v13))
      {
        v13 = i;
        if (CFSetContainsValue(a2, i))
        {
          break;
        }

        CFSetAddValue(a2, v13);
      }
    }

    v14 = [a1 count];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = 0;
      v18 = v14;
      do
      {
        v19 = [a1 childAtIndex:v16];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 anchoringTextLine])
        {
          --v18;
        }

        else
        {
          v17 += CGPDFNodeSizeFromCPChunk(v19, a2);
        }

        v16 = (v16 + 1);
      }

      while (v15 != v16);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (v10 <= 513)
    {
      if (v10 > 256)
      {
        if (v10 == 257)
        {
          v20 = 200;
          goto LABEL_47;
        }

        if (v10 == 258)
        {
          v20 = 192;
          goto LABEL_47;
        }
      }

      else
      {
        if (!v10)
        {
          v20 = 0;
          goto LABEL_47;
        }

        if (v10 == 1)
        {
          v21 = 72;
          if (!v18)
          {
            v21 = 64;
          }

          return v21 + v17;
        }
      }
    }

    else if (v10 <= 516)
    {
      if (v10 == 516)
      {
        v20 = 112;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v10)
      {
        case 517:
          v20 = 144;
          goto LABEL_47;
        case 1537:
          v20 = 136;
          goto LABEL_47;
        case 1538:
          v20 = 120;
LABEL_47:
          v21 = v20 + 8 * v18;
          return v21 + v17;
      }
    }

    v20 = 112;
    if (v10 < 0x400)
    {
      v20 = 104;
    }

    if ((v10 & 0x200) == 0)
    {
      v20 = 120;
    }

    if ((v10 & 0x300) == 0)
    {
      v20 = 64;
    }

    goto LABEL_47;
  }

  v5 = [a1 wordCount];
  v6 = [a1 inlineCount];
  v7 = (v5 << 6) + 8 * (v6 + v5) + 112;
  if (v6)
  {
    v7 += 72 * v6;
    v8 = [a1 inlineList];
    if (v8)
    {
      v9 = v8;
      do
      {
        v7 += CGPDFNodeSizeFromCPChunk(*(v9 + 8), a2);
        v9 = *(v9 + 16);
      }

      while (v9);
    }
  }

  return v7;
}

const void *CGPDFNodeClipMakeFromClipIndex(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, CFDictionaryRef *a5)
{
  if (!a2)
  {
    return 0;
  }

  if (a5)
  {
    if (*a5)
    {
      Value = CFDictionaryGetValue(*a5, a2);
      if (Value)
      {
        return Value;
      }
    }

    else
    {
      *a5 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    }
  }

  v11 = (*(a1 + 16) + 52 * a2);
  if (*v11 == a2)
  {
    Value = 0;
  }

  else
  {
    Value = CGPDFNodeClipMakeFromClipIndex(a1, *v11, a3, a4, a5);
  }

  v14 = v11[2];
  v13 = v11 + 2;
  v12 = v14;
  if (v14)
  {
    v15 = v12;
    do
    {
      if (a4 && *a4 == 517)
      {
        v16 = a3 + 216 * v13[v15];
        v17 = *(v16 + 72);
        v18 = *(v16 + 96);
        v19 = *(v16 + 104);
        v20 = *(a4 + 112);
        v21 = *(a4 + 120) + 32 * v20;
        *v21 = v17;
        if (v18)
        {
          CFRetain(v18);
          LODWORD(v20) = *(a4 + 112);
        }

        *(v21 + 8) = v18;
        *(v21 + 16) = (v19 & 1) == 0;
        *(v21 + 24) = Value;
        *(a4 + 112) = v20 + 1;
        Value = v21;
      }

      else
      {
        Value = 0;
      }

      --v15;
    }

    while (v15 * 4);
  }

  if (a5 && *a5 && Value && *v13)
  {
    CFDictionaryAddValue(*a5, a2, Value);
  }

  return Value;
}

_BYTE *cmap_create_with_name(const void *a1)
{
  v2 = &off_1E6E199F8;
  v3 = 5;
  while (1)
  {
    v4 = bsearch(a1, *(v2 - 1), **v2, 0x20uLL, CMapEntry_compare);
    if (v4)
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = v4;
  v7 = *MEMORY[0x1E695E498];
  v8 = CFDataCreateWithBytesNoCopy(0, *(v4 + 2), *(v4 + 3), *MEMORY[0x1E695E498]);
  v9 = v8;
  if (v8 && (BytePtr = CFDataGetBytePtr(v8), Length = CFDataGetLength(v9), (v12 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, v7)) != 0))
  {
    v13 = v12;
    CFReadStreamOpen(v12);
    v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10300405646078BuLL);
    v5 = v14;
    if (v14)
    {
      *v14 = 1;
      v14[41] = 0;
      *(v14 + 1) = read_string(v13);
      *(v5 + 16) = read_string(v13);
      buffer[0] = 0;
      v15 = CFReadStreamRead(v13, buffer, 1);
      v16 = buffer[0];
      if (!v15)
      {
        v16 = 0;
      }

      *(v5 + 24) = v16;
      buffer[0] = 0;
      v17 = CFReadStreamRead(v13, buffer, 1);
      if (buffer[0])
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      *(v5 + 40) = v19;
      if (v18)
      {
        *buffer = 0;
        v20 = CFReadStreamRead(v13, buffer, 4);
        v21 = bswap32(*buffer);
        if (v20)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200404BE0E0E6uLL);
        if (v23)
        {
          buffer[0] = 0;
          v24 = CFReadStreamRead(v13, buffer, 1);
          v25 = buffer[0];
          if (!v24)
          {
            v25 = 0;
          }

          *v23 = v25;
          buffer[0] = 0;
          v26 = CFReadStreamRead(v13, buffer, 1);
          v27 = buffer[0];
          if (!v26)
          {
            v27 = 0;
          }

          *(v23 + 1) = v27;
          if (v22)
          {
            Mutable = CFArrayCreateMutable(0, v22, 0);
            *(v23 + 1) = Mutable;
            if (Mutable)
            {
              do
              {
                buffer[0] = 0;
                if (CFReadStreamRead(v13, buffer, 1))
                {
                  v29 = buffer[0];
                }

                else
                {
                  v29 = 0;
                }

                *buffer = 0;
                v30 = CFReadStreamRead(v13, buffer, 4);
                v31 = bswap32(*buffer);
                if (v30)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0;
                }

                *buffer = 0;
                v33 = CFReadStreamRead(v13, buffer, 4);
                v34 = bswap32(*buffer);
                if (v33)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                v36 = csr_create(v29, v32, v35);
                v36[3] = cmap_cid_set_create_with_stream(v13);
                v36[2] = cmap_cid_set_create_with_stream(v13);
                CFArrayAppendValue(*(v23 + 1), v36);
                --v22;
              }

              while (v22);
              *buffer = 0;
              if (CFReadStreamRead(v13, buffer, 4) && *buffer)
              {
                operator new();
              }

              *(v23 + 2) = 0;
            }

            else
            {
              cmap_csr_set_release(v23);
              v23 = 0;
            }
          }
        }

        *(v5 + 48) = v23;
      }
    }

    CFReadStreamClose(v13);
    CFRelease(v13);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v9);
  v37 = v6[1];
  if (v37)
  {
    v38 = cmap_create_with_name(v37);
    cmap_set_used_cmap(v5, v38);
    cmap_release(v38);
  }

  return v5;
}

void function_evaluate_float(uint64_t a1, float *a2, float *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = MEMORY[0x1EEE9AC00](8 * (v7 + v6));
  v11 = v18 - v10;
  if (v9 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v12 = v18 - v10;
  }

  else
  {
    v12 = 0;
  }

  if (v9 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v12 = malloc_type_malloc(v8, 0x4D5B39ACuLL);
  }

  v13 = &v12[8 * v6];
  if (v6)
  {
    v14 = v12;
    do
    {
      v15 = *a2++;
      *v14++ = v15;
      --v6;
    }

    while (v6);
  }

  CGFunctionEvaluate(a1, v12, v13);
  for (; v7; --v7)
  {
    v16 = *v13++;
    v17 = v16;
    *a3++ = v17;
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

BOOL __lookup_function_entry_block_invoke(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a2 + 88) == *(a1 + 64) && *(a2 + 96) >= *(a1 + 48))
  {
    v2 = *(a1 + 40);
    if (*(a2 + 112) <= *v2 && *(a2 + 116) >= v2[1] && *(a2 + 104) >= *(a1 + 56) && *(a2 + 120) <= v2[2] && *(a2 + 124) >= v2[3])
    {
      v3 = *(a1 + 32);
      if (*(a2 + 64) == *(v3 + 132))
      {
        return 1;
      }

      v5 = *(v3 + 136);
      v4 = *(v3 + 144);
      if (*(a2 + 68) == v5 && *(a2 + 76) == v4)
      {
        return 1;
      }
    }
  }

  return result;
}

void *rip_function_convert_color_components(void *a1, CGColorSpace *a2, uint64_t a3, vImagePixelCount a4, char *a5, uint64_t a6, int a7, uint64_t a8, float a9, uint64_t a10, int a11)
{
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v22 = Cache[2];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + 120);
  if (a9 >= 1.0)
  {
    v24 = *(v23 + 48);
    if (v24 > 0.0 && v24 < a9)
    {
      v26 = *(v23 + 56);
      v27 = *(v23 + 64);
      err = 0;
      v28 = CGColorConversionInfoCreateForToneMapping(a2, v22, v26, v27, &err, a9, v24);
      if (err)
      {
        v29 = CFErrorCopyDescription(err);
        CGLog(2, "convert_color_components failed: %@", v29);
        CFRelease(v29);
        CFRelease(err);
        v30 = 0;
        if (!v28)
        {
          return v30;
        }
      }

      else
      {
        *&v37 = 0x210000000000;
        *(&v37 + 1) = 32;
        v38 = a10;
        v39 = a11;
        *&v34 = 0x210000000000;
        *(&v34 + 1) = 32;
        v35 = a6;
        v36 = a7;
        v30 = CGColorConversionInfoConvertData(v28, a4, 1, a8, &v37, a5, &v34);
        if (!v28)
        {
          return v30;
        }
      }

      CFRelease(v28);
      return v30;
    }
  }

  return CGColorTransformConvertComponentData(a1, a2, 4, (*(v23 + 4) << 12) >> 28, a4, 1, v21, a5, v32, a7, a8, v33, a11);
}

char *color_space_state_create_icc_with_profile(void *a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v29 = 0;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  LODWORD(v26[0]) = -1;
  CGCMSUtilsGetICCProfileInfo(a1, v26, a2);
  if (BYTE13(v28) != a2)
  {
    return 0;
  }

  if (SLODWORD(v26[0]) <= 2)
  {
    if (!LODWORD(v26[0]))
    {
      v4 = 1;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      goto LABEL_13;
    }

    if (LODWORD(v26[0]) != 1)
    {
      if (LODWORD(v26[0]) == 2)
      {
        v4 = 4;
        DeviceGray = CGColorSpaceCreateDeviceCMYK();
LABEL_13:
        v6 = DeviceGray;
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    v4 = 3;
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    goto LABEL_13;
  }

  if (LODWORD(v26[0]) == 3)
  {
    goto LABEL_11;
  }

  if (LODWORD(v26[0]) != 4)
  {
    if (LODWORD(v26[0]) != 7)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v4 = v29;
  if ((v29 - 16) < 0xFFFFFFFFFFFFFFF1)
  {
    return 0;
  }

  v6 = 0;
LABEL_14:
  v7 = malloc_type_calloc(0x78uLL, 1uLL, 0x72249CC1uLL);
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  *v7 = 1;
  *(v7 + 4) = 0;
  v7[10] = BYTE8(v28);
  v7[12] = BYTE9(v28);
  v7[11] = 0;
  v7[14] = BYTE10(v28);
  v7[15] = BYTE14(v28);
  *(v7 + 8) = *(&v28 + 11);
  v7[13] = BYTE13(v28);
  *(v7 + 6) = 6;
  *(v7 + 6) = v4;
  *(v7 + 14) = icc_vtable;
  v9 = v26[0];
  *(v7 + 7) = v26[0];
  *(v7 + 8) = v9;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  *(v7 + 5) = icc_get_default_color_components(v4);
  v10 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F2040408F26EBuLL);
  *(v8 + 12) = v10;
  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = v10;
  *v10 = 0;
  if (color_space_state_create_icc_with_profile_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_icc_with_profile_cglibrarypredicate, &__block_literal_global_7539);
  }

  if (color_space_state_create_icc_with_profile_f() >> 17 < 0x781)
  {
    icc_with_profile_f_12 = CFRetain(a1);
  }

  else
  {
    if (color_space_state_create_icc_with_profile_cglibrarypredicate_13 != -1)
    {
      dispatch_once(&color_space_state_create_icc_with_profile_cglibrarypredicate_13, &__block_literal_global_16_7540);
    }

    icc_with_profile_f_12 = color_space_state_create_icc_with_profile_f_12(a1);
  }

  *(v11 + 1) = icc_with_profile_f_12;
  *(v11 + 6) = v6;
  v13 = malloc_type_malloc(16 * v4, 0x100004000313F17uLL);
  *(v11 + 7) = v13;
  if (!v13)
  {
    free(*(v8 + 12));
LABEL_39:
    free(v8);
    return 0;
  }

  v14 = v13 + 8;
  v15 = v27;
  do
  {
    *(v14 - 1) = *(v15 - 1);
    v16 = *v15;
    v15 += 2;
    *v14 = v16;
    v14 += 2;
    --v4;
  }

  while (v4);
  *(v11 + 1) = *(v26 + 4);
  md = 0uLL;
  if (*(v8 + 6) != 6)
  {
    _CGHandleAssert("icc_get_md5", 43, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", *(v8 + 6));
  }

  v17 = *(v8 + 12);
  v18 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v18);
  if (v18)
  {
    CC_MD5_Update(v18, v8 + 24, 4u);
    CC_MD5_Update(v18, (v17 + 16), 0x10u);
    CC_MD5_Update(v18, v8 + 18, 1u);
    CC_MD5_Update(v18, v8 + 19, 1u);
  }

  v19 = 2 * *(v8 + 6);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v21 = *(*(v17 + 56) + 8 * i);
      data = v21;
      if (v18)
      {
        CC_MD5_Update(v18, &data, 4u);
      }
    }
  }

  if (v18)
  {
    CC_MD5_Final(&md, v18);
    v22 = md;
  }

  else
  {
    v22 = 0uLL;
  }

  v24 = v22;
  free(v18);
  *(v8 + 4) = v24;
  return v8;
}

uint64_t (*__color_space_state_create_icc_with_profile_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateImmutableCopy");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_with_profile_f_12 = v1;
  return result;
}

uint64_t (*__color_space_state_create_icc_with_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncPrivateAPIVersion");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_with_profile_f = v1;
  return result;
}

CFTypeRef icc_create_icc_profile_ascii_description(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 24) != 6)
  {
    _CGHandleAssert("icc_create_icc_profile_ascii_description", 193, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased", "Colorspace must be ICC based. type = %d", *(v1 + 24));
  }

  v2 = *(v1 + 96);
  result = *(v2 + 40);
  if (result)
  {
    goto LABEL_10;
  }

  v4 = *(v2 + 8);
  if (copy_icc_profile_ascii_description_cglibrarypredicate != -1)
  {
    dispatch_once(&copy_icc_profile_ascii_description_cglibrarypredicate, &__block_literal_global_62_7554);
  }

  v5 = copy_icc_profile_ascii_description_f(v4);
  v6 = 0;
  if (!v5)
  {
    v5 = @"<no description>";
  }

  atomic_compare_exchange_strong_explicit((v2 + 40), &v6, v5, memory_order_relaxed, memory_order_relaxed);
  if (v6)
  {
    CFRelease(v5);
  }

  result = *(v2 + 40);
  if (result)
  {
LABEL_10:

    return CFRetain(result);
  }

  return result;
}

uint64_t (*__copy_icc_profile_ascii_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyASCIIDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  copy_icc_profile_ascii_description_f = v1;
  return result;
}

CGColorSpace *create_colorspace_with_colorSync_profile(const void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (create_colorspace_with_colorSync_profile_cglibrarypredicate != -1)
  {
    dispatch_once(&create_colorspace_with_colorSync_profile_cglibrarypredicate, &__block_literal_global_66_7586);
  }

  if (v4 == create_colorspace_with_colorSync_profile_f())
  {
    v5 = CFRetain(a1);
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (a2)
  {
LABEL_9:
    LODWORD(a2) = CFDictionaryGetValue(a2, @"kCGColorSpaceExtendedRange") == *MEMORY[0x1E695E4D0];
  }

LABEL_10:
  if (create_colorspace_with_colorSync_profile_cglibrarypredicate_69 != -1)
  {
    dispatch_once(&create_colorspace_with_colorSync_profile_cglibrarypredicate_69, &__block_literal_global_72_7587);
  }

  v6 = 0;
  if (create_colorspace_with_colorSync_profile_f_68(v5, 0, 0))
  {
    if (system_colorspace_for_profile_cglibrarypredicate != -1)
    {
      dispatch_once(&system_colorspace_for_profile_cglibrarypredicate, &__block_literal_global_75_7588);
    }

    switch(system_colorspace_for_profile_f(v5))
    {
      case 1:
        v7 = @"kCGColorSpaceGenericGray";
        goto LABEL_48;
      case 2:
        if (a2)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_70;
      case 3:
        if (a2)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_70;
      case 4:
        v8 = 19;
        goto LABEL_70;
      case 5:
        v8 = 14;
        goto LABEL_70;
      case 6:
        v8 = 32;
        goto LABEL_70;
      case 7:
        v8 = 31;
        goto LABEL_70;
      case 8:
        if (a2)
        {
          v8 = 8;
        }

        else
        {
          v8 = 7;
        }

        goto LABEL_70;
      case 9:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 12;
        goto LABEL_70;
      case 10:
        v8 = 13;
        goto LABEL_70;
      case 11:
        if (a2)
        {
          v8 = 10;
        }

        else
        {
          v8 = 9;
        }

        goto LABEL_70;
      case 12:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 11;
        goto LABEL_70;
      case 13:
        v7 = @"kCGColorSpaceGenericRGB";
        goto LABEL_48;
      case 14:
        v7 = @"kCGColorSpaceGenericRGBLinear";
        goto LABEL_48;
      case 15:
        if (a2)
        {
          v8 = 25;
        }

        else
        {
          v8 = 23;
        }

        goto LABEL_70;
      case 16:
        if (a2)
        {
          v8 = 26;
        }

        else
        {
          v8 = 24;
        }

        goto LABEL_70;
      case 17:
        v8 = 27;
        goto LABEL_70;
      case 18:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 29;
        goto LABEL_70;
      case 19:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 28;
        goto LABEL_70;
      case 20:
        v8 = 20;
        goto LABEL_70;
      case 21:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 22;
        goto LABEL_70;
      case 22:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 21;
        goto LABEL_70;
      case 23:
        v8 = 30;
        goto LABEL_70;
      case 24:
        if (a2)
        {
          v8 = 16;
        }

        else
        {
          v8 = 15;
        }

        goto LABEL_70;
      case 25:
        if (a2)
        {
          v8 = 18;
        }

        else
        {
          v8 = 17;
        }

        goto LABEL_70;
      case 26:
        if (a2)
        {
          goto LABEL_75;
        }

        v7 = @"kCGColorSpaceGenericCMYK";
LABEL_48:
        v9 = CGColorSpaceCreateWithName(v7);
        goto LABEL_71;
      case 27:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 5;
        goto LABEL_70;
      case 28:
        if (a2)
        {
          goto LABEL_75;
        }

        v8 = 6;
LABEL_70:
        v9 = CGColorSpaceCreateWithID(v8);
LABEL_71:
        v6 = v9;
        if (v9)
        {
          if (!CGColorSpaceUsesExtendedRange(v9) && ((a2 ^ 1) & 1) == 0)
          {
            registered_colorspace = create_registered_colorspace(v5, 1);
            CGColorSpaceRelease(v6);
            v6 = registered_colorspace;
          }
        }

        else
        {
LABEL_75:
          v6 = create_registered_colorspace(v5, a2);
        }

        break;
      default:
        goto LABEL_75;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t create_registered_colorspace(void *a1, int a2)
{
  icc_with_profile = color_space_state_create_icc_with_profile(a1, a2);
  v4 = CGColorSpaceCreateWithState(icc_with_profile);
  if (icc_with_profile && atomic_fetch_add_explicit(icc_with_profile, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(icc_with_profile);
  }

  if (create_registered_colorspace_cglibrarypredicate != -1)
  {
    dispatch_once(&create_registered_colorspace_cglibrarypredicate, &__block_literal_global_79_7589);
  }

  if ((create_registered_colorspace_f(a1, @"hdgm") & 1) == 0 && v4)
  {
    *(v4 + 24) = color_space_state_register(*(v4 + 24));
  }

  return v4;
}

uint64_t (*__create_registered_colorspace_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileContainsTag");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_registered_colorspace_f = v1;
  return result;
}

uint64_t (*__system_colorspace_for_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  system_colorspace_for_profile_f = v1;
  return result;
}

uint64_t (*__create_colorspace_with_colorSync_profile_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileVerify");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_colorspace_with_colorSync_profile_f_68 = v1;
  return result;
}

uint64_t (*__create_colorspace_with_colorSync_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_colorspace_with_colorSync_profile_f = v1;
  return result;
}

uint64_t CGColorSpaceICCGetPlatformProfile(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 24);
  if (v2 != 6)
  {
    _CGHandleAssert("CGColorSpaceICCGetPlatformProfile", 675, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", v2);
  }

  return *(*(v1 + 96) + 8);
}

CGColorSpaceRef CGColorSpaceCreateFromCICP(uint64_t a1)
{
  if ((a1 & 0xF7) != 1 && a1 != 12)
  {
    return 0;
  }

  if (a1 == 12)
  {
    if (BYTE1(a1) > 0xFu)
    {
      if (BYTE1(a1) == 16)
      {
        v2 = &kCGColorSpaceDisplayP3_PQ;
        return CGColorSpaceCreateWithName(*v2);
      }

      if (BYTE1(a1) == 18)
      {
        v2 = &kCGColorSpaceDisplayP3_HLG;
        return CGColorSpaceCreateWithName(*v2);
      }
    }

    else
    {
      if (BYTE1(a1) == 8)
      {
        v2 = &kCGColorSpaceLinearDisplayP3;
        return CGColorSpaceCreateWithName(*v2);
      }

      if (BYTE1(a1) == 13)
      {
        v2 = &kCGColorSpaceDisplayP3;
        return CGColorSpaceCreateWithName(*v2);
      }
    }

    return 0;
  }

  if (a1 == 9)
  {
    if (BYTE1(a1) - 8) < 0xBu && ((0x5E1u >> (BYTE1(a1) - 8)))
    {
      v2 = off_1E6E1A2F8[(BYTE1(a1) - 8)];
      return CGColorSpaceCreateWithName(*v2);
    }

    return 0;
  }

  if (a1 != 1)
  {
    return 0;
  }

  if (BYTE1(a1) <= 0xCu)
  {
    if (BYTE1(a1) == 1)
    {
      v2 = &kCGColorSpaceITUR_709;
      return CGColorSpaceCreateWithName(*v2);
    }

    if (BYTE1(a1) == 8)
    {
      v2 = &kCGColorSpaceLinearSRGB;
      return CGColorSpaceCreateWithName(*v2);
    }

    return 0;
  }

  if (BYTE1(a1) == 13)
  {
    v2 = &kCGColorSpaceSRGB;
    return CGColorSpaceCreateWithName(*v2);
  }

  if (BYTE1(a1) == 16)
  {
    v2 = &kCGColorSpaceITUR_709_PQ;
    return CGColorSpaceCreateWithName(*v2);
  }

  if (BYTE1(a1) != 18)
  {
    return 0;
  }

  v2 = &kCGColorSpaceITUR_709_HLG;
  return CGColorSpaceCreateWithName(*v2);
}

CGColorSpaceRef CGColorSpaceCreateFromAttachments(CGColorSpaceRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorSpaceAttachment_CICP_data"))
    {
      Value = CFDictionaryGetValue(v1, @"kCGColorSpaceAttachment_CICP_data");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDataGetTypeID() && CFDataGetLength(v4) >= 4)
        {
          BytePtr = CFDataGetBytePtr(v4);
          result = CGColorSpaceCreateFromCICP(*BytePtr);
          if (result)
          {
            return result;
          }
        }
      }
    }

    if (!CFDictionaryContainsKey(v1, @"kCGColorSpace_Attachment_ICC_Data"))
    {
      return 0;
    }

    v7 = CFDictionaryGetValue(v1, @"kCGColorSpace_Attachment_ICC_Data");

    return CGColorSpaceCreateWithICCData(v7);
  }

  return result;
}

uint64_t CGColorSpaceGetColorSyncProfile(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 24);
    if (v2 == 11)
    {
      v3 = *(v1 + 96);
    }

    else
    {
      if (v2 != 6)
      {
        return 0;
      }

      v3 = *(v1 + 96) + 8;
    }

    return *v3;
  }

  return result;
}

uint64_t xt_copy_url_for_name(uint64_t a1, const __CFString *a2)
{
  Copy = CFStringCreateCopy(0, a2);
  if (xt_copy_url_for_name_predicate != -1)
  {
    dispatch_once(&xt_copy_url_for_name_predicate, &__block_literal_global_7763);
  }

  v3 = xt_copy_url_for_name_f(Copy, 7, 0);
  CFRelease(Copy);
  return v3;
}

uint64_t (*__xt_copy_url_for_name_block_invoke())()
{
  if (CGLibraryLoadlibFontRegistryDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadlibFontRegistryDYLD_once, &__block_literal_global_13_22113);
  }

  result = CGLibraryLoadlibFontRegistryDYLD_handle;
  if (CGLibraryLoadlibFontRegistryDYLD_handle)
  {
    result = dlsym(CGLibraryLoadlibFontRegistryDYLD_handle, "XTCopyFontWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = font_registry_smart_null;
  }

  xt_copy_url_for_name_f = v1;
  return result;
}

uint64_t xt_copy_all_urls()
{
  if (xt_copy_all_urls_predicate != -1)
  {
    dispatch_once(&xt_copy_all_urls_predicate, &__block_literal_global_4_7768);
  }

  v1 = xt_copy_all_urls_f;

  return v1(7);
}

uint64_t (*__xt_copy_all_urls_block_invoke())()
{
  if (CGLibraryLoadlibFontRegistryDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadlibFontRegistryDYLD_once, &__block_literal_global_13_22113);
  }

  result = CGLibraryLoadlibFontRegistryDYLD_handle;
  if (CGLibraryLoadlibFontRegistryDYLD_handle)
  {
    result = dlsym(CGLibraryLoadlibFontRegistryDYLD_handle, "XTCopyAvailableFontURLs");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = font_registry_smart_null;
  }

  xt_copy_all_urls_f = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateIndexed(CGColorSpaceRef baseSpace, size_t lastIndex, const unsigned __int8 *colorTable)
{
  v28 = *MEMORY[0x1E69E9840];
  if (lastIndex > 0xFF)
  {
    goto LABEL_23;
  }

  if (!baseSpace)
  {
    goto LABEL_23;
  }

  if (!colorTable)
  {
    goto LABEL_23;
  }

  Type = CGColorSpaceGetType(baseSpace);
  if (Type == 7)
  {
    goto LABEL_23;
  }

  if (Type == 9)
  {
    goto LABEL_23;
  }

  v7 = malloc_type_calloc(0x78uLL, 1uLL, 0x84A4B3CEuLL);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  *v7 = 1;
  v7[4] = 0;
  *(v7 + 10) = 0;
  v9 = CGColorSpaceIgnoresIntent(baseSpace);
  *(v8 + 24) = 7;
  *(v8 + 12) = v9;
  *(v8 + 11) = 0;
  *(v8 + 14) = 0;
  *(v8 + 48) = 1;
  *(v8 + 80) = 0;
  *(v8 + 112) = color_space_state_create_indexed_indexed_vtable;
  ProcessColorModel = CGColorSpaceGetProcessColorModel(baseSpace);
  *(v8 + 28) = 5;
  *(v8 + 32) = ProcessColorModel;
  *(v8 + 88) = 0;
  *(v8 + 40) = &indexed_get_default_color_components_default_indexed;
  v11 = malloc_type_calloc(0x90uLL, 1uLL, 0xF8EFB10uLL);
  *(v8 + 96) = v11;
  if (!v11)
  {
LABEL_22:
    free(v8);
LABEL_23:
    v23 = CGColorSpaceCreateWithState(0);
    goto LABEL_24;
  }

  v12 = v11;
  CFRetain(baseSpace);
  *v12 = baseSpace;
  v12[1] = lastIndex;
  v13 = *(*(baseSpace + 3) + 48) + *(*(baseSpace + 3) + 48) * lastIndex;
  v14 = malloc_type_malloc(v13, 0xA90C8377uLL);
  v12[2] = v14;
  if (!v14)
  {
    free(*(v8 + 96));
    goto LABEL_22;
  }

  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      *(v12[2] + i) = colorTable[i];
    }
  }

  *md = 0;
  *&md[8] = 0;
  v16 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v16);
  if (v16)
  {
    CC_MD5_Update(v16, (v8 + 24), 4u);
  }

  v17 = *(v8 + 96);
  v18 = *v17;
  if (*v17)
  {
    v19 = *(v18 + 24);
    if (v19)
    {
      v20 = v16 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v22 = v17 + 1;
      v21 = v17[1];
    }

    else
    {
      CC_MD5_Update(v16, (v19 + 64), 0x10u);
      v18 = *v17;
      v22 = v17 + 1;
      v21 = v17[1];
      if (!*v17)
      {
        goto LABEL_31;
      }
    }

    v18 = *(*(v18 + 24) + 48);
  }

  else
  {
    v22 = v17 + 1;
    v21 = v17[1];
  }

  if (v16)
  {
LABEL_31:
    md5_update(v16, v17[2], v18 + v18 * v21);
    CC_MD5_Update(v16, v22, 8u);
    CC_MD5_Final(md, v16);
    v25 = *md;
    goto LABEL_33;
  }

  v25 = 0uLL;
LABEL_33:
  v26 = v25;
  free(v16);
  *(v8 + 64) = v26;
  v23 = CGColorSpaceCreateWithState(v8);
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v8);
  }

LABEL_24:
  if (v23)
  {
    *(v23 + 3) = color_space_state_register(*(v23 + 3));
  }

  return v23;
}

size_t CGColorSpaceGetColorTableCount(size_t space)
{
  if (space)
  {
    v1 = *(space + 24);
    if (*(v1 + 28) == 5)
    {
      return *(*(v1 + 96) + 8) + 1;
    }

    else
    {
      return 0;
    }
  }

  return space;
}

CFDataRef CGColorSpaceCopyColorTable(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (*(v1 + 28) != 5)
  {
    return 0;
  }

  v2 = *(v1 + 96);
  v3 = *v2;
  if (*v2)
  {
    v3 = *(*(v3 + 24) + 48);
  }

  return CFDataCreate(0, v2[2], v3 * (v2[1] + 1));
}

void CGColorSpaceGetColorTable(CGColorSpaceRef space, uint8_t *table)
{
  if (space)
  {
    if (table)
    {
      v2 = *(space + 3);
      if (*(v2 + 28) == 5)
      {
        v3 = *(v2 + 96);
        v4 = *v3;
        if (*v3)
        {
          v4 = *(*(v4 + 24) + 48);
        }

        v5 = v4 * (v3[1] + 1);
        if (v5)
        {
          for (i = 0; i != v5; ++i)
          {
            table[i] = *(v3[2] + i);
          }
        }
      }
    }
  }
}

CGFloat *CGClipCreateWithPath(CFTypeRef cf, __int16 a2, char a3, double a4)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  memset(&v13, 0, sizeof(v13));
  if (CGPathIsRect(cf, &v13))
  {
    return CGClipCreateWithRect(0, a3, v13.origin.x, v13.origin.y, v13.size.width, v13.size.height);
  }

  v10 = CGClipCreate(a2, a3);
  v9 = v10;
  if (v10)
  {
    v10[4] = a4;
    MutableCopy = CGPathCreateMutableCopy(cf);
    *(v9 + 3) = MutableCopy;
    if (!MutableCopy)
    {
      CGClipRelease(v9);
      return 0;
    }
  }

  return v9;
}

_DWORD *CGClipCreateWithStrokedPath(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    return 0;
  }

  if (CGPathDisableTypeValidation)
  {
    v4 = 1;
  }

  else
  {
    v5 = CFGetTypeID(cf);
    v4 = v5 == CGPathGetTypeID();
  }

  v6 = 0;
  if (a2)
  {
    if (v4)
    {
      v7 = *(a2 + 67);
      v8 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
      v6 = v8;
      if (v8)
      {
        *v8 = 1;
        v8[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
        *(v8 + 4) = 514;
        *(v8 + 2) = 0;
        *(v8 + 10) = v7;
        *(v8 + 4) = *(a2 + 88);
        MutableCopy = CGPathCreateMutableCopy(cf);
        *(v6 + 3) = MutableCopy;
        if (MutableCopy)
        {
          atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
          *(v6 + 2) = a2;
          return v6;
        }

        CGClipRelease(v6);
        return 0;
      }
    }
  }

  return v6;
}

atomic_uint *CGClipCreateWithTextClipping(atomic_uint *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    if (result)
    {
      *result = 1;
      result[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(result + 4) = 4;
      *(result + 2) = 0;
      *(result + 10) = 1;
      atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
      *(result + 3) = v1;
    }
  }

  return result;
}

atomic_uint *CGClipRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t CGClipEqualToClip(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    return 0;
  }

  result = CGClipStrokeEqualToClipStroke(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  v6 = v5;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        return 1;
      }

      result = CGTextClippingEqualToTextClipping(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        return 1;
      }

      return result;
    }

    return CGClipMaskEqualToClipMask(*(a1 + 24), *(a2 + 24));
  }

  if (!v5)
  {
    return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  }

  if (v6 != 2)
  {
    return 1;
  }

  result = CGPathEqualToPath(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

double CGClipGetFlatness(uint64_t a1)
{
  result = 1.0;
  if (*(a1 + 8) == 2)
  {
    return *(a1 + 32);
  }

  return result;
}

CGFloat CGClipGetRect(uint64_t a1)
{
  v1 = &CGRectNull;
  if (!*(a1 + 8))
  {
    v1 = (a1 + 24);
  }

  return v1->origin.x;
}

uint64_t CGClipGetPath(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetStroke(uint64_t a1)
{
  if (*(a1 + 9) << 8 == 512)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetTextClipping(uint64_t a1)
{
  if (*(a1 + 8) == 4)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetMask(uint64_t a1)
{
  if (*(a1 + 8) == 3)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

char *CGClipCreateClipPath(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    Path = CGPathCreateWithRect(*(a1 + 24), 0);
LABEL_10:
    v7 = Path;
    v8 = *(a1 + 16);
    if (!v8)
    {
      return v7;
    }

    StrokedPath = CGClipStrokeCreateStrokedPath(v8, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    return StrokedPath;
  }

  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    Path = CGTextClippingCreatePath(*(a1 + 24));
    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  StrokedPath = *(a1 + 24);
  if (!v3)
  {
    if (StrokedPath)
    {
      CFRetain(StrokedPath);
    }

    return StrokedPath;
  }

  return CGClipStrokeCreateStrokedPath(v3, StrokedPath);
}

uint64_t CGRenderingBufferProviderCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    CGPostError("%s: Invalid size = %jd", "CGRenderingBufferProviderCreate", 0);
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (_block_invoke_once_7898 != -1)
  {
    dispatch_once(&_block_invoke_once_7898, &__block_literal_global_14_7899);
  }

  Instance = CGTypeCreateInstance(CGRenderingBufferProviderGetTypeID_id, 128);
  if (!Instance)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13.__sig) = 136315138;
      *(&v13.__sig + 4) = "create_buffer_provider";
      _os_log_impl(&dword_183EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed", &v13, 0xCu);
    }

    return 0;
  }

  v11 = Instance;
  *(Instance + 16) = a1;
  *(Instance + 24) = -1;
  *(Instance + 120) = 1;
  v13.__sig = 0;
  *v13.__opaque = 0;
  pthread_mutexattr_init(&v13);
  pthread_mutexattr_settype(&v13, 2);
  pthread_mutex_init((v11 + 56), &v13);
  pthread_mutexattr_destroy(&v13);
  *(v11 + 24) = a2;
  *(v11 + 32) = _Block_copy(a3);
  *(v11 + 40) = _Block_copy(a4);
  *(v11 + 48) = _Block_copy(a5);
  return v11;
}

uint64_t __CGRenderingBufferProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGRenderingBufferProviderGetTypeID_runtime_class);
  CGRenderingBufferProviderGetTypeID_id = result;
  return result;
}

uint64_t buffer_provider_retain_count(uint64_t a1, atomic_uint *a2)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 30, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        buffer_provider_finalize(a2);
        v4 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v4, a2);
      }

      break;
    case 0:
      return a2[30];
    case 1:
      return atomic_fetch_add_explicit(a2 + 30, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

void buffer_provider_finalize(uint64_t a1)
{
  if (*(a1 + 128))
  {
    _CGHandleAssert("buffer_provider_finalize", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing");
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 16));
  }

  pthread_mutex_destroy((a1 + 56));
  v3 = *(a1 + 136);
  if (v3)
  {
    CFRelease(v3);
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  v4 = *(a1 + 48);

  _Block_release(v4);
}

__CFString *buffer_provider_copy_format_description(CFStringRef a1)
{
  if (!os_variant_has_internal_content())
  {
    return @"CGRenderingBufferProvider";
  }

  if (a1)
  {
    v3 = 0;
    asprintf(&v3, "CGRenderingBufferProvider: %p size: %zu retain count: %d retained pointer: %p", a1, a1->length, LODWORD(a1[3].length), a1[4].isa);
    a1 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v3, &stru_1EF244DC0);
    free(v3);
  }

  return a1;
}

uint64_t CGRenderingBufferProviderCreateWithCFData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID())
  {
    return 0;
  }

  CFRetain(a1);
  Length = CFDataGetLength(a1);

  return CGRenderingBufferProviderCreate(a1, Length, &__block_literal_global_7917, 0, &__block_literal_global_5_7918);
}

uint64_t CGRenderingBufferProviderGetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGRenderingBufferProviderGetTypeID()
{
  if (_block_invoke_once_7898 != -1)
  {
    dispatch_once(&_block_invoke_once_7898, &__block_literal_global_14_7899);
  }

  return CGRenderingBufferProviderGetTypeID_id;
}

char *CGRenderingBufferLockBytePtr(char *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    pthread_mutex_lock((v1 + 56));
    result = *(v1 + 16);
    if (*(v1 + 5))
    {
      if (result)
      {
        _CGHandleAssert("CGRenderingBufferLockBytePtr", 283, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing");
      }

      goto LABEL_4;
    }

    if (!result)
    {
LABEL_4:
      *(v1 + 16) = (*(*(v1 + 4) + 16))();
      v2 = 0;
      asprintf(&v2, "CGRenderingBufferProvider: %p\n", v1);
      qword_1ED4E0528 = v2;
      ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
      ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
      qword_1ED4E0528 = 0;
      free(v2);
      return *(v1 + 16);
    }
  }

  return result;
}

void CGRenderingBufferUnlockBytePtr(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 128))
    {
      _CGHandleAssert("CGRenderingBufferUnlockBytePtr", 306, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer != NULL", "provider byte pointer method missing");
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      (*(v2 + 16))(v2, *(a1 + 16));
    }

    *(a1 + 128) = 0;
    pthread_mutex_unlock((a1 + 56));

    CFRelease(a1);
  }
}

void op_EMC_8069(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = *v4;
    free(v4);
    *(a1 + 136) = v5;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = v6[2];
    v8 = *v6;
    free(v6);
    *(a1 + 96) = v8;
    switch(v7)
    {
      case 1:
        CGPDFDrawingContextRestoreGState(a2);

        CGPDFDrawingContextRestoreGState(a2);
        break;
      case 3:
        if (a2[12])
        {
          v12 = a2[11];

          CGPDFContextEndTag(v12);
        }

        break;
      case 2:
        free(*(a1 + 24));
        v9 = *(a1 + 32);
        if (v9 && (v10 = *v9, free(v9), (*(a1 + 32) = v10) != 0))
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        *(a1 + 24) = v11;
        break;
    }
  }
}