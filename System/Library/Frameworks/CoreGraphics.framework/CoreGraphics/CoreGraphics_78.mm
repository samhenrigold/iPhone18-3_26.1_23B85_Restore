BOOL CGRegionIsRect(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    _CGHandleAssert("assert_check_region", 46, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "r != NULL", "NULL region");
  }

  v3 = *(a1 + 16);
  if (v3 == &the_empty_shape || *(v3 + 4 * *(v3 + 4)) == 0x7FFFFFFF)
  {
    v4 = 1;
    if (!a2)
    {
      return v4;
    }
  }

  else
  {
    if (*(v3 + 12) != 4 || *(v3 + 28) != 2)
    {
      return 0;
    }

    v4 = *(v3 + 32) == 0x7FFFFFFF;
    if (!a2)
    {
      return v4;
    }
  }

  if (v4)
  {
    *a2 = CGRegionGetBoundingBox(a1);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    return 1;
  }

  return v4;
}

BOOL CGRegionIntersectsRect(_BOOL8 result, double a2, double a3, double a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = *(result + 16);
    if (v5 == &the_empty_shape || *(v5 + 4 * *(v5 + 4)) == 0x7FFFFFFF)
    {
      return 0;
    }

    if (a2 == INFINITY || a3 == INFINITY)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      result = rect_to_bounds(&v10 + 1, &v10, &v9 + 1, &v9, a2, a3, a4, a5);
      if (result)
      {
        result = 0;
        v7 = v10;
        v8 = v9;
        if (v9 >= 2147483646)
        {
          v8 = 2147483646;
        }

        if (v10 == 0x80000000 || v10 == -2147483647)
        {
          v7 = -2147483647;
        }

        if (SHIDWORD(v10) < SHIDWORD(v9) && v7 < v8)
        {
          v11 = 0x280000000;
          v12 = v7;
          v13 = 4;
          v14 = HIDWORD(v10);
          v15 = HIDWORD(v9);
          v16 = v8;
          v17 = 0x7FFFFFFF00000002;
          return shape_intersects_shape(v5, &v11) != 0;
        }
      }
    }
  }

  return result;
}

BOOL CGRegionIntersectsRegion(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return shape_intersects_shape(*(a1 + 16), *(a2 + 16)) != 0;
    }
  }

  return result;
}

CFDataRef CGRegionCopyData(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = 4 * v3;
  if (!shape_data_valid(v2, v4))
  {
    return 0;
  }

  return CFDataCreate(0, v2, v4);
}

unint64_t CGRegionGetDataLength(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = 4 * v3;
  if (shape_data_valid(v2, v4))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_DWORD *CGRegionGetDataBytePtr(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  if (shape_data_valid(v2, 4 * v3))
  {
    return v2;
  }

  return 0;
}

unint64_t rgba64_sample_RGBAf(uint64_t a1, uint64_t a2, int64_t a3, int a4, __n128 a5, __n128 a6, double a7, __n128 a8, double a9, double a10, double a11)
{
  v15 = *(a1 + 176);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v74 = *(a1 + 80);
  v75 = *(a1 + 88);
  v86 = *(a1 + 112);
  v85 = *(a1 + 120);
  v73 = *(a1 + 188);
  v18 = (*(a1 + 152) - 8);
  v78 = *(a1 + 144) - 1;
  v83 = *(a1 + 24);
  v84 = *(a1 + 40);
  v82 = *(a1 + 32);
  result = v82 + ((*(a1 + 260) - 1) * v83) + 4 * (4 * *(a1 + 256)) - 16;
  v76 = v17;
  v77 = v16;
  v80 = -v17;
  v81 = result;
  v79 = -v16;
  while (1)
  {
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        HIDWORD(v32) = HIDWORD(a3);
        v23 = a4;
        v24 = v77;
      }

      else
      {
        v26 = *(a1 + 216);
        v27 = *(a1 + 224) + v75;
        v28 = v27 - a3 + (v26 >> 1);
        v23 = a4;
        v24 = v77;
        if (v28 < 1)
        {
          goto LABEL_34;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(a1 + 232) * v28) >> 32;
        }

        v31 = v73 | v29;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v20 = *(a1 + 216);
      v21 = v76 - *(a1 + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      v24 = v77;
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(a1 + 232) * v22) >> 32;
      }

      v31 = v73 | v25;
      v32 = v21 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v24)
    {
      if (a2 <= v74)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(a1 + 192);
        v39 = *(a1 + 200) + v74;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_34;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(a1 + 208) * v40) >> 32) >> 15)) | v73;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(a1 + 192);
      v34 = v24 - *(a1 + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_34;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(a1 + 208) * v35) >> 32) >> 15)) | v73;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_34:
    v45 = v23 - 1;
    a2 += v86;
    a3 += v85;
    ++v18;
    *++v78 = 0;
LABEL_35:
    a4 = v45;
    if (!v45)
    {
      return result;
    }
  }

  v41 = v82 + SHIDWORD(v32) * v83 + 16 * (v36 >> 32);
  v42 = *(a1 + 32);
  if (result >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = result;
  }

  if (v43 < v42)
  {
    v43 = *(a1 + 32);
  }

  if (v84)
  {
    v44 = *(v43 + 12);
  }

  else
  {
    v44 = 1.0;
  }

  v46 = *v43;
  v47 = *(v43 + 4);
  if (v15)
  {
    v48 = *(v15 + (v37 | v30));
LABEL_56:
    v55 = v48 & 0xF;
    v56 = HIBYTE(v48) & 3;
    if (v55 == 1)
    {
      v69 = v41 + SBYTE1(v48) * v83;
      if (result < v69)
      {
        v69 = result;
      }

      if (v69 >= v42)
      {
        v42 = v69;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * v56];
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = SBYTE1(v48) * v83;
          v58 = 16 * SBYTE2(v48);
          v59 = v41 + v58;
          if (result < v41 + v58)
          {
            v59 = result;
          }

          if (v59 < v42)
          {
            v59 = v42;
          }

          v60 = *(v59 + 4);
          if (v84)
          {
            v61 = *(v59 + 12);
            v62 = v41 + v57 + v58;
            if (result < v62)
            {
              v62 = result;
            }

            if (v62 >= v42)
            {
              v42 = v62;
            }

            v63 = *(v42 + 12);
          }

          else
          {
            v70 = v41 + v57 + v58;
            if (result < v70)
            {
              v70 = result;
            }

            if (v70 >= v42)
            {
              v42 = v70;
            }

            v61 = 1.0;
            v63 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v56 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
          v46 = (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) - (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) * v12.f32[0])) + (((*v59 - (*v59 * v11.f32[0])) + (*v42 * v11.f32[0])) * v12.f32[0]);
          v71 = vmla_n_f32(vmls_lane_f32(v47, v47, v11, 0), v60, v11.f32[0]);
          v47 = vmla_n_f32(vmls_lane_f32(v71, v71, v12, 0), vmla_n_f32(vmls_lane_f32(v60, v60, v11, 0), *(v42 + 4), v11.f32[0]), v12.f32[0]);
          v44 = (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0])) + (((v61 - (v61 * v11.f32[0])) + (v63 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_40;
      }

      v64 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (result < v64)
      {
        v64 = result;
      }

      if (v64 >= v42)
      {
        v42 = v64;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
    }

    LODWORD(a11) = v68[3];
    v46 = (v46 - (v46 * *&a11)) + (v65 * *&a11);
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a11, 0), v66, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v67 * *&a11);
  }

LABEL_40:
  v49 = 0;
  v50 = v31 >> 22;
  ++v18;
  v72 = v23;
  v51 = v23 - 1;
  a3 += v85;
  v52 = v75 - a3;
  a2 += v86;
  v53 = v74 - a2;
  while (1)
  {
    RGBAF_15229(v18, v46, v47.f32[0], v47.f32[1], v44);
    *(v78 + 1 + v49) = v50;
    result = v81;
    if (v51 == v49)
    {
      return result;
    }

    if ((v52 | v53 | (v80 + a3) | (v79 + a2)) < 0)
    {
      v78 += v49 + 1;
      v45 = ~v49 + v72;
      goto LABEL_35;
    }

    v41 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    v42 = *(a1 + 32);
    if (v81 >= v41)
    {
      v54 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    }

    else
    {
      v54 = v81;
    }

    if (v54 < v42)
    {
      v54 = *(a1 + 32);
    }

    if (v84)
    {
      v44 = *(v54 + 12);
    }

    else
    {
      v44 = 1.0;
    }

    v46 = *v54;
    v47 = *(v54 + 4);
    if (v15)
    {
      v48 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v78 += v49 + 1;
        v23 = ~v49 + v72;
        v31 = -1;
        goto LABEL_56;
      }
    }

    ++v49;
    ++v18;
    a3 += v85;
    v52 -= v85;
    a2 += v86;
    v53 -= v86;
    LOBYTE(v50) = -1;
  }
}

unint64_t *RGBAF_15229(unint64_t *result, float a2, float a3, float a4, float a5)
{
  if (a5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    LODWORD(v5) = ((a5 * 65535.0) + 0.5);
    if (a5 <= 1.0)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0xFFFFLL;
    }

    LOWORD(v6) = v5;
    if (a5 > 1.0)
    {
      a5 = 1.0;
    }

    LOWORD(v7) = v5;
    if (a2 <= a5)
    {
      if (a2 >= 0.0)
      {
        v7 = ((a2 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v7) = 0;
      }
    }

    v9 = v5;
    if (a3 <= a5)
    {
      if (a3 >= 0.0)
      {
        v9 = ((a3 * 65535.0) + 0.5);
      }

      else
      {
        v9 = 0;
      }
    }

    if (a4 <= a5)
    {
      if (a4 >= 0.0)
      {
        v6 = ((a4 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v6) = 0;
      }
    }

    v8 = (v5 << 48) | (v6 << 32) | (v9 << 16) | v7;
  }

  *result = v8;
  return result;
}

unint64_t *rgba64_sample_RGBAF(unint64_t *result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = result[22];
  v71 = result[10];
  v72 = result[11];
  v81 = result[14];
  v80 = result[15];
  v70 = *(result + 47);
  v16 = (result[19] - 8);
  v75 = result[18] - 1;
  v79 = result[5];
  v76 = result[4];
  v77 = *(result + 6);
  v82 = result;
  v78 = v76 + ((*(result + 65) - 1) * v77) + 4 * (4 * *(result + 64)) - 16;
  v73 = result[9];
  v74 = result[8];
  while (1)
  {
    if (a3 >= v73)
    {
      if (a3 <= v72)
      {
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        HIDWORD(v29) = HIDWORD(a3);
        v20 = a4;
        v21 = v74;
      }

      else
      {
        v23 = v82[27];
        v24 = v82[28] + v72;
        v25 = v24 - a3 + (v23 >> 1);
        v20 = a4;
        v21 = v74;
        if (v25 < 1)
        {
          goto LABEL_33;
        }

        if (v25 >= v23)
        {
          LODWORD(v26) = 0x3FFFFFFF;
        }

        else
        {
          v26 = (v82[29] * v25) >> 32;
        }

        v28 = v70 | v26;
        v29 = v24 - 0x1000000;
        v27 = 448;
      }
    }

    else
    {
      v17 = v82[27];
      v18 = v73 - v82[28];
      v19 = a3 - v18 + (v17 >> 1);
      v20 = a4;
      v21 = v74;
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      if (v19 >= v17)
      {
        LODWORD(v22) = 0x3FFFFFFF;
      }

      else
      {
        v22 = (v82[29] * v19) >> 32;
      }

      v28 = v70 | v22;
      v29 = v18 + 0x1000000;
      v27 = 512;
    }

    if (a2 >= v21)
    {
      if (a2 <= v71)
      {
        v34 = (a2 >> 26) & 0x3C;
        v33 = a2;
      }

      else
      {
        v35 = v82[24];
        v36 = v82[25] + v71;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_33;
        }

        if (v37 < v35)
        {
          v28 = ((v28 >> 15) * (((v82[26] * v37) >> 32) >> 15)) | v70;
        }

        v33 = v36 - 0x1000000;
        v34 = 28;
      }
    }

    else
    {
      v30 = v82[24];
      v31 = v21 - v82[25];
      v32 = a2 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_33;
      }

      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((v82[26] * v32) >> 32) >> 15)) | v70;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
    }

    if (v28 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v42 = v20 - 1;
    a2 += v81;
    a3 += v80;
    ++v16;
    *++v75 = 0;
LABEL_34:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v38 = v76 + SHIDWORD(v29) * v77 + 16 * (v33 >> 32);
  v39 = v82[4];
  v40 = v78;
  if (v78 >= v38)
  {
    v40 = v38;
  }

  if (v40 < v39)
  {
    v40 = v82[4];
  }

  if (v79)
  {
    v41 = COERCE_FLOAT(bswap32(v40[1].u32[1]));
  }

  else
  {
    v41 = 1.0;
  }

  v43 = vrev32_s8(*v40);
  v44 = COERCE_FLOAT(bswap32(v40[1].u32[0]));
  if (v15)
  {
    v45 = *(v15 + (v34 | v27));
LABEL_54:
    v52 = v45 & 0xF;
    v53 = HIBYTE(v45) & 3;
    if (v52 == 1)
    {
      v68 = (v38 + SBYTE1(v45) * v77);
      if (v78 < v68)
      {
        v68 = v78;
      }

      if (v68 >= v39)
      {
        v39 = v68;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * v53];
    }

    else
    {
      if (v52 != 2)
      {
        if (v52 == 3)
        {
          v54 = (v38 + ((HIWORD(v45) << 56) >> 52));
          if (v78 < v54)
          {
            v54 = v78;
          }

          if (v54 < v39)
          {
            v54 = v39;
          }

          v55 = vrev32_s8(*v54);
          v56 = COERCE_FLOAT(bswap32(v54[1].u32[0]));
          v57 = 1.0;
          v58 = 1.0;
          if (v79)
          {
            v58 = COERCE_FLOAT(bswap32(v54[1].u32[1]));
          }

          v59 = v38 + SBYTE1(v45) * v77 + 16 * SBYTE2(v45);
          if (v78 < v59)
          {
            v59 = v78;
          }

          if (v59 >= v39)
          {
            v39 = v59;
          }

          v60 = vrev32_s8(*v39);
          v61 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
          if (v79)
          {
            v57 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v53 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3) + 3];
          v44 = (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) * v12.f32[0])) + (((v56 - (v56 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0]);
          v62 = vmla_n_f32(vmls_lane_f32(v43, v43, v11, 0), v55, v11.f32[0]);
          v43 = vmla_n_f32(vmls_lane_f32(v62, v62, v12, 0), vmla_n_f32(vmls_lane_f32(v55, v55, v11, 0), v60, v11.f32[0]), v12.f32[0]);
          v41 = (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) - (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) * v12.f32[0])) + (((v58 - (v58 * v11.f32[0])) + (v57 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v63 = (v38 + ((HIWORD(v45) << 56) >> 52));
      if (v78 < v63)
      {
        v63 = v78;
      }

      if (v63 >= v39)
      {
        v39 = v63;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3)];
    }

    LODWORD(a11) = v67[3];
    v43 = vmla_n_f32(vmls_lane_f32(v43, v43, *&a11, 0), v64, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v65 * *&a11);
    v41 = (v41 - (v41 * *&a11)) + (v66 * *&a11);
  }

LABEL_39:
  v46 = 0;
  v47 = v28 >> 22;
  ++v16;
  v69 = v20;
  v48 = v20 - 1;
  a3 += v80;
  v49 = v72 - a3;
  a2 += v81;
  v50 = v71 - a2;
  while (1)
  {
    result = RGBAF_15229(v16, v43.f32[0], v43.f32[1], v44, v41);
    *(v75 + 1 + v46) = v47;
    if (v48 == v46)
    {
      return result;
    }

    if (((v49 | v50 | (a3 - v73) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v75 += v46 + 1;
      v42 = ~v46 + v69;
      goto LABEL_34;
    }

    v38 = v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32);
    v39 = v82[4];
    v51 = v78;
    if (v78 >= v38)
    {
      v51 = (v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32));
    }

    if (v51 < v39)
    {
      v51 = v82[4];
    }

    if (v79)
    {
      v41 = COERCE_FLOAT(bswap32(v51[1].u32[1]));
    }

    else
    {
      v41 = 1.0;
    }

    v43 = vrev32_s8(*v51);
    v44 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
    if (v15)
    {
      v45 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v75 += v46 + 1;
        v20 = ~v46 + v69;
        v28 = -1;
        goto LABEL_54;
      }
    }

    ++v46;
    ++v16;
    a3 += v80;
    v49 -= v80;
    a2 += v81;
    v50 -= v81;
    LOBYTE(v47) = -1;
  }
}

unint64_t *rgba64_sample_RGBf(unint64_t *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = result[22];
  v60 = result[10];
  v63 = result[11];
  v68 = result[15];
  v69 = result[14];
  v13 = (result[19] - 8);
  v64 = result[18] - 1;
  v65 = result[4];
  v66 = *(result + 6);
  v70 = result;
  v59 = *(result + 47);
  v67 = v65 + ((*(result + 65) - 1) * v66) + 4 * (3 * *(result + 64)) - 16;
  v61 = result[9];
  v62 = result[8];
  while (1)
  {
    if (a3 >= v61)
    {
      if (a3 <= v63)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v62;
      }

      else
      {
        v20 = v70[27];
        v21 = v70[28] + v63;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v62;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (v70[29] * v22) >> 32;
        }

        v25 = v59 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = v70[27];
      v15 = v61 - v70[28];
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v62;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (v70[29] * v16) >> 32;
      }

      v25 = v59 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v60)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = v70[24];
        v33 = v70[25] + v60;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((v70[26] * v34) >> 32) >> 15)) | v59;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = v70[24];
      v28 = v18 - v70[25];
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((v70[26] * v29) >> 32) >> 15)) | v59;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v69;
    a3 += v68;
    ++v13;
    *++v64 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v65 + SHIDWORD(v26) * v66 + 12 * SHIDWORD(v30);
  v36 = v70[4];
  v37 = v67;
  if (v67 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = v70[4];
  }

  v38 = *v37;
  v39 = *(v37 + 4);
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v57 = v35 + SBYTE1(v40) * v66;
    if (v67 < v57)
    {
      v57 = v67;
    }

    if (v57 >= v36)
    {
      v36 = v57;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v54 = v35 + 12 * SBYTE2(v40);
    if (v67 < v54)
    {
      v54 = v67;
    }

    if (v54 >= v36)
    {
      v36 = v54;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v56[3];
    v38 = (v38 - (v38 * *&a8)) + (v55 * *&a8);
    v39 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a8, 0), *(v36 + 4), *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = v35 + 12 * SBYTE2(v40);
  if (v67 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v67;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = v50 + SBYTE1(v40) * v66;
  if (v67 < v52)
  {
    v52 = v67;
  }

  if (v52 >= v36)
  {
    v36 = v52;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v38 = (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) - (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) * *&a10)) + (((*v51 - (*v51 * *&a9)) + (*v36 * *&a9)) * *&a10);
  a8 = *(v51 + 4);
  v53 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a9, 0), *&a8, *&a9);
  v39 = vmla_n_f32(vmls_lane_f32(v53, v53, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), *(v36 + 4), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v58 = v17;
  v44 = v17 - 1;
  a3 += v68;
  v45 = v63 - a3;
  a2 += v69;
  v46 = v60 - a2;
  while (1)
  {
    result = RGBAF_15229(v13, v38, v39.f32[0], v39.f32[1], *&a8);
    *(v64 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v61) | (a2 - v62)) & 0x8000000000000000) != 0)
    {
      v64 += v42 + 1;
      v41 = ~v42 + v58;
      goto LABEL_34;
    }

    v35 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    v36 = v70[4];
    v47 = v67;
    if (v67 >= v35)
    {
      v47 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    }

    if (v47 < v36)
    {
      v47 = v70[4];
    }

    v38 = *v47;
    v39 = *(v47 + 4);
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v64 += v42 + 1;
        v17 = ~v42 + v58;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v68;
    v45 -= v68;
    a2 += v69;
    v46 -= v69;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

unint64_t *rgba64_sample_RGBF(unint64_t *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = result[22];
  v61 = result[10];
  v64 = result[11];
  v69 = result[15];
  v70 = result[14];
  v13 = (result[19] - 8);
  v65 = result[18] - 1;
  v66 = result[4];
  v67 = *(result + 6);
  v71 = result;
  v60 = *(result + 47);
  v68 = v66 + ((*(result + 65) - 1) * v67) + 4 * (3 * *(result + 64)) - 16;
  v62 = result[9];
  v63 = result[8];
  while (1)
  {
    if (a3 >= v62)
    {
      if (a3 <= v64)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v63;
      }

      else
      {
        v20 = v71[27];
        v21 = v71[28] + v64;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v63;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (v71[29] * v22) >> 32;
        }

        v25 = v60 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = v71[27];
      v15 = v62 - v71[28];
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v63;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (v71[29] * v16) >> 32;
      }

      v25 = v60 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v61)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = v71[24];
        v33 = v71[25] + v61;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((v71[26] * v34) >> 32) >> 15)) | v60;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = v71[24];
      v28 = v18 - v71[25];
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((v71[26] * v29) >> 32) >> 15)) | v60;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v70;
    a3 += v69;
    ++v13;
    *++v65 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v66 + SHIDWORD(v26) * v67 + 12 * SHIDWORD(v30);
  v36 = v71[4];
  v37 = v68;
  if (v68 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = v71[4];
  }

  v38 = vrev32_s8(*v37);
  v39 = COERCE_FLOAT(bswap32(v37[1].u32[0]));
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v58 = (v35 + SBYTE1(v40) * v67);
    if (v68 < v58)
    {
      v58 = v68;
    }

    if (v58 >= v36)
    {
      v36 = v58;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v55 = (v35 + 12 * SBYTE2(v40));
    if (v68 < v55)
    {
      v55 = v68;
    }

    if (v55 >= v36)
    {
      v36 = v55;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v57[3];
    v38 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a8, 0), vrev32_s8(*v36), *&a8);
    v39 = (v39 - (v39 * *&a8)) + (v56 * *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = (v35 + 12 * SBYTE2(v40));
  if (v68 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v68;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
  v53 = (v50 + SBYTE1(v40) * v67);
  if (v68 < v53)
  {
    v53 = v68;
  }

  if (v53 >= v36)
  {
    v36 = v53;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v39 = (((v39 - (v39 * *&a9)) + (v52 * *&a9)) - (((v39 - (v39 * *&a9)) + (v52 * *&a9)) * *&a10)) + (((v52 - (v52 * *&a9)) + (COERCE_FLOAT(bswap32(v36[1].u32[0])) * *&a9)) * *&a10);
  a8 = COERCE_DOUBLE(vrev32_s8(*v51));
  v54 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a9, 0), *&a8, *&a9);
  v38 = vmla_n_f32(vmls_lane_f32(v54, v54, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), vrev32_s8(*v36), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v59 = v17;
  v44 = v17 - 1;
  a3 += v69;
  v45 = v64 - a3;
  a2 += v70;
  v46 = v61 - a2;
  while (1)
  {
    result = RGBAF_15229(v13, v38.f32[0], v38.f32[1], v39, *&a8);
    *(v65 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v62) | (a2 - v63)) & 0x8000000000000000) != 0)
    {
      v65 += v42 + 1;
      v41 = ~v42 + v59;
      goto LABEL_34;
    }

    v35 = v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2);
    v36 = v71[4];
    v47 = v68;
    if (v68 >= v35)
    {
      v47 = (v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2));
    }

    if (v47 < v36)
    {
      v47 = v71[4];
    }

    v38 = vrev32_s8(*v47);
    v39 = COERCE_FLOAT(bswap32(v47[1].u32[0]));
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v65 += v42 + 1;
        v17 = ~v42 + v59;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v69;
    v45 -= v69;
    a2 += v70;
    v46 -= v70;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_cmyk64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v111 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v113 = *(result + 88);
  v114 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v109 = *(result + 188);
  v14 = v5 + (v12 * v7) + 2 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 8 * v13 - 16;
  v112 = *(result + 72);
  v110 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v112)
    {
      if (a3 <= v113)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v110;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v113;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v110;
        v25 = v109 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v112 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v110;
      v25 = v109 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v109;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v114 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v111)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v111;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v109;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + SHIDWORD(v26) * v6;
  v39 = v38 + 8 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 8 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + 2 * v37;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
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
    v45 = 0xFFFF;
  }

  v46 = *v41;
  if (!v8)
  {
    goto LABEL_44;
  }

  v47 = *(v8 + (v32 | v24));
LABEL_66:
  v59 = v47 & 0xF;
  v60 = HIBYTE(v47) & 3;
  switch(v59)
  {
    case 1:
      v98 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v98)
      {
        v98 = v15;
      }

      if (v98 < v40)
      {
        v98 = v40;
      }

      v99 = *v98;
      v100 = 0xFFFF;
      if (v5)
      {
        v101 = (v42 + SBYTE1(v47) * v7);
        if (v14 < v101)
        {
          v101 = v14;
        }

        if (v101 < *(result + 40))
        {
          v101 = *(result + 40);
        }

        v100 = *v101;
      }

      v102 = &interpolate_cmyk64 + 16 * v60;
      v103 = *v102;
      v104 = v60 + 1;
      v105 = v46 - ((*v102 & v46) >> v104);
      LODWORD(v102) = *(v102 + 4);
      v89 = v45 - ((v102 & v45) >> v104);
      v106 = (v103 & v99) >> v104;
      v90 = (v100 & v102) >> v104;
      v46 = v105 + v106;
LABEL_120:
      LOWORD(v90) = v89 + v90;
      goto LABEL_121;
    case 2:
      v91 = HIWORD(v47) << 56;
      v92 = (v39 + (v91 >> 53));
      if (v15 < v92)
      {
        v92 = v15;
      }

      if (v92 < v40)
      {
        v92 = v40;
      }

      v93 = *v92;
      v94 = -1;
      if (v5)
      {
        v95 = (v42 + (v91 >> 55));
        if (v14 < v95)
        {
          v95 = v14;
        }

        if (v95 < *(result + 40))
        {
          v95 = *(result + 40);
        }

        v94 = *v95;
      }

      v96 = (v47 >> 28) & 3;
      v97 = &interpolate_cmyk64 + 16 * v96;
      LOBYTE(v96) = v96 + 1;
      v46 = v46 - ((*v97 & v46) >> v96) + ((*v97 & v93) >> v96);
      v90 = v45 - ((*(v97 + 4) & v45) >> v96) + ((v94 & *(v97 + 4)) >> v96);
LABEL_121:
      v45 = v90;
      break;
    case 3:
      v61 = HIWORD(v47) << 56;
      v62 = (v39 + (v61 >> 53));
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v40)
      {
        v62 = v40;
      }

      v63 = *v62;
      v64 = v39 + SBYTE1(v47) * v6;
      if (v15 >= v64)
      {
        v65 = (v39 + SBYTE1(v47) * v6);
      }

      else
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v66 = (v64 + (v61 >> 53));
      if (v15 < v66)
      {
        v66 = v15;
      }

      if (v66 < v40)
      {
        v66 = v40;
      }

      v107 = *v66;
      v108 = *v65;
      v67 = 0xFFFF;
      v68 = 0xFFFF;
      v69 = 0xFFFF;
      if (v5)
      {
        v70 = (v42 + (v61 >> 55));
        v71 = *(result + 40);
        if (v14 < v70)
        {
          v70 = v14;
        }

        if (v70 < v71)
        {
          v70 = *(result + 40);
        }

        v67 = *v70;
        v72 = v42 + SBYTE1(v47) * v7;
        if (v14 >= v72)
        {
          v73 = (v42 + SBYTE1(v47) * v7);
        }

        else
        {
          v73 = v14;
        }

        if (v73 < v71)
        {
          v73 = *(result + 40);
        }

        v68 = *v73;
        v74 = (v72 + (v61 >> 55));
        if (v14 < v74)
        {
          v74 = v14;
        }

        if (v74 < v71)
        {
          v74 = *(result + 40);
        }

        v69 = *v74;
      }

      v75 = &interpolate_cmyk64 + 16 * v60;
      v76 = *v75;
      v77 = v60 + 1;
      v78 = v46 - ((*v75 & v46) >> v77);
      LODWORD(v75) = *(v75 + 4);
      v79 = v63 - ((v76 & v63) >> v77);
      v80 = v67 - ((v67 & v75) >> v77);
      v81 = v78 + ((v76 & v108) >> v77);
      v82 = v45 - ((v75 & v45) >> v77) + ((v68 & v75) >> v77);
      v83 = v79 + ((v76 & v107) >> v77);
      v84 = v80 + ((v69 & v75) >> v77);
      v85 = (v47 >> 28) & 3;
      v86 = &interpolate_cmyk64 + 16 * v85;
      v87 = *v86;
      LOBYTE(v85) = v85 + 1;
      v88 = v81 - ((v81 & *v86) >> v85);
      LODWORD(v86) = *(v86 + 4);
      v89 = v82 - ((v82 & v86) >> v85);
      v90 = (v84 & v86) >> v85;
      v46 = v88 + ((v83 & v87) >> v85);
      goto LABEL_120;
  }

LABEL_44:
  v48 = 0;
  v49 = v25 >> 22;
  a2 += v10;
  v50 = v111 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v113 - a3;
  while (1)
  {
    v53 = v45 - (HIWORD(v46) + v46);
    v54 = v45 - (HIWORD(v46) + WORD1(v46));
    v55 = v45 - (HIWORD(v46) + WORD2(v46));
    *(v51 - 1) = (v53 & ~(v53 >> 31)) + ((v54 & ~(v54 >> 31)) << 16);
    *v51 = (v55 & ~(v55 >> 31)) + (v45 << 16);
    *(v114 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v52 | v50 | (a3 - v112) | (a2 - v110)) & 0x8000000000000000) != 0)
    {
      v114 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v56 = (v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32));
    }

    else
    {
      v56 = v15;
    }

    if (v56 < v40)
    {
      v56 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      v57 = *(result + 40);
      if (v14 >= v42)
      {
        v58 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      }

      else
      {
        v58 = v14;
      }

      if (v58 >= v57)
      {
        v57 = v58;
      }

      v45 = *v57;
    }

    else
    {
      v45 = 0xFFFF;
    }

    v46 = *v56;
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v114 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v25 = -1;
        goto LABEL_66;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgba64_sample_CMYK64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v107 = *(result + 80);
  v109 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v110 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v105 = *(result + 188);
  v14 = v5 + (v12 * v7) + 2 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 8 * v13 - 16;
  v108 = *(result + 72);
  v106 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v108)
    {
      if (a3 <= v109)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v106;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v109;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v106;
        v25 = v105 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v108 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v106;
      v25 = v105 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v105;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v110 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v107)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v107;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v105;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + SHIDWORD(v26) * v6;
  v39 = v38 + 8 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 8 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + 2 * v37;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = bswap32(*v43) >> 16;
  }

  else
  {
    v42 = 0;
    v45 = 0xFFFF;
  }

  v46 = ((bswap32(v41[2]) >> 16) << 32) | ((bswap32(v41[3]) >> 16) << 48) | bswap32(v41[1]) & 0xFFFF0000 | (bswap32(*v41) >> 16);
  if (!v8)
  {
    goto LABEL_44;
  }

  v47 = *(v8 + (v32 | v24));
LABEL_67:
  v60 = v47 & 0xF;
  v61 = HIBYTE(v47) & 3;
  switch(v60)
  {
    case 1:
      v93 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v93)
      {
        v93 = v15;
      }

      if (v93 < v40)
      {
        v93 = v40;
      }

      v94 = ((bswap32(v93[2]) >> 16) << 32) | ((bswap32(v93[3]) >> 16) << 48) | bswap32(v93[1]) & 0xFFFF0000 | (bswap32(*v93) >> 16);
      v95 = 0xFFFF;
      if (v5)
      {
        v96 = (v42 + SBYTE1(v47) * v7);
        if (v14 < v96)
        {
          v96 = v14;
        }

        if (v96 < *(result + 40))
        {
          v96 = *(result + 40);
        }

        v95 = bswap32(*v96) >> 16;
      }

      v97 = &interpolate_cmyk64 + 16 * v61;
      v98 = *v97;
      v99 = v61 + 1;
      v100 = v46 - ((*v97 & v46) >> v99);
      LODWORD(v97) = *(v97 + 4);
      v84 = v45 - ((v97 & v45) >> v99);
      v85 = (v95 & v97) >> v99;
      v46 = v100 + ((v98 & v94) >> v99);
LABEL_121:
      LOWORD(v85) = v84 + v85;
      goto LABEL_122;
    case 2:
      v86 = HIWORD(v47) << 56;
      v87 = (v39 + (v86 >> 53));
      if (v15 < v87)
      {
        v87 = v15;
      }

      if (v87 < v40)
      {
        v87 = v40;
      }

      v88 = ((bswap32(v87[2]) >> 16) << 32) | ((bswap32(v87[3]) >> 16) << 48) | bswap32(v87[1]) & 0xFFFF0000 | (bswap32(*v87) >> 16);
      LOWORD(v89) = -1;
      if (v5)
      {
        v90 = (v42 + (v86 >> 55));
        if (v14 < v90)
        {
          v90 = v14;
        }

        if (v90 < *(result + 40))
        {
          v90 = *(result + 40);
        }

        v89 = bswap32(*v90) >> 16;
      }

      v91 = (v47 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      LOBYTE(v91) = v91 + 1;
      v46 = v46 - ((*v92 & v46) >> v91) + ((*v92 & v88) >> v91);
      v85 = v45 - ((*(v92 + 4) & v45) >> v91) + ((v89 & *(v92 + 4)) >> v91);
LABEL_122:
      v45 = v85;
      break;
    case 3:
      v103 = HIBYTE(v47) & 3;
      v62 = HIWORD(v47) << 56;
      v63 = (v39 + (v62 >> 53));
      if (v15 < v63)
      {
        v63 = v15;
      }

      if (v63 < v40)
      {
        v63 = v40;
      }

      v104 = ((bswap32(v63[2]) >> 16) << 32) | ((bswap32(v63[3]) >> 16) << 48) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16);
      v64 = v39 + SBYTE1(v47) * v6;
      if (v15 >= v64)
      {
        v65 = (v39 + SBYTE1(v47) * v6);
      }

      else
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v102 = ((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16);
      v66 = (v64 + (v62 >> 53));
      if (v15 < v66)
      {
        v66 = v15;
      }

      if (v66 < v40)
      {
        v66 = v40;
      }

      v101 = ((bswap32(v66[2]) >> 16) << 32) | ((bswap32(v66[3]) >> 16) << 48) | bswap32(v66[1]) & 0xFFFF0000 | (bswap32(*v66) >> 16);
      v67 = 0xFFFF;
      v68 = 0xFFFF;
      v69 = 0xFFFF;
      if (v5)
      {
        v70 = (v42 + (v62 >> 55));
        v71 = *(result + 40);
        if (v14 < v70)
        {
          v70 = v14;
        }

        if (v70 < v71)
        {
          v70 = *(result + 40);
        }

        v69 = bswap32(*v70) >> 16;
        v72 = v42 + SBYTE1(v47) * v7;
        if (v14 >= v72)
        {
          v73 = (v42 + SBYTE1(v47) * v7);
        }

        else
        {
          v73 = v14;
        }

        if (v73 < v71)
        {
          v73 = *(result + 40);
        }

        v68 = bswap32(*v73) >> 16;
        v74 = (v72 + (v62 >> 55));
        if (v14 < v74)
        {
          v74 = v14;
        }

        if (v74 < v71)
        {
          v74 = *(result + 40);
        }

        v67 = bswap32(*v74) >> 16;
      }

      v75 = &interpolate_cmyk64 + 16 * v61;
      v76 = *v75;
      v77 = v46 - ((*v75 & v46) >> (v61 + 1));
      LODWORD(v75) = *(v75 + 4);
      v78 = v69 - ((v69 & v75) >> (v61 + 1));
      v79 = v45 - ((v75 & v45) >> (v61 + 1)) + ((v68 & v75) >> (v61 + 1));
      LODWORD(v75) = v78 + ((v67 & v75) >> (v61 + 1));
      v80 = (v47 >> 28) & 3;
      v81 = &interpolate_cmyk64 + 16 * v80;
      v82 = *v81;
      LOBYTE(v80) = v80 + 1;
      v83 = v77 + ((v76 & v102) >> (v103 + 1)) - (((v77 + ((v76 & v102) >> (v103 + 1))) & *v81) >> v80);
      LODWORD(v81) = *(v81 + 4);
      v84 = v79 - ((v79 & v81) >> v80);
      v85 = (v75 & v81) >> v80;
      v46 = v83 + (((v104 - ((v76 & v104) >> (v103 + 1)) + ((v76 & v101) >> (v103 + 1))) & v82) >> v80);
      goto LABEL_121;
  }

LABEL_44:
  v48 = 0;
  v49 = v25 >> 22;
  a2 += v10;
  v50 = v107 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v109 - a3;
  while (1)
  {
    v53 = v45 - (HIWORD(v46) + v46);
    v54 = v45 - (HIWORD(v46) + WORD1(v46));
    v55 = v45 - (HIWORD(v46) + WORD2(v46));
    *(v51 - 1) = (v53 & ~(v53 >> 31)) + ((v54 & ~(v54 >> 31)) << 16);
    *v51 = (v55 & ~(v55 >> 31)) + (v45 << 16);
    *(v110 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v52 | v50 | (a3 - v108) | (a2 - v106)) & 0x8000000000000000) != 0)
    {
      v110 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v56 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    }

    else
    {
      v56 = v15;
    }

    if (v56 >= v40)
    {
      v57 = v56;
    }

    else
    {
      v57 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      v58 = *(result + 40);
      if (v14 >= v42)
      {
        v59 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      }

      else
      {
        v59 = v14;
      }

      if (v59 >= v58)
      {
        v58 = v59;
      }

      v45 = bswap32(*v58) >> 16;
    }

    else
    {
      v45 = 0xFFFF;
    }

    v46 = ((bswap32(v57[2]) >> 16) << 32) | ((bswap32(v57[3]) >> 16) << 48) | bswap32(v57[1]) & 0xFFFF0000 | (bswap32(*v57) >> 16);
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v110 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v25 = -1;
        goto LABEL_67;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgba64_sample_rgba64(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFF000000000000;
  }

  v102 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 8 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 8 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = *v47;
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_16161616_21862[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (v98 & *v97) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 8 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_16161616_21862[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((interpolate_16161616_21862[(v49 >> 28) & 3] & *v91) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 8 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = *v74;
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = *v77;
        v79 = (v76 + 8 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_16161616_21862[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((v80 & *v79) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_16161616_21862[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 8) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -8;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 8 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = *v60;
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 8 * v50 + 16) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 8;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t rgba64_sample_RGBA64(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v101 = *(result + 112);
    if (v5 > v6)
    {
      v101 = v5 % v6;
    }
  }

  else
  {
    v101 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v100 = v11;
  }

  else
  {
    v100 = 0;
  }

  v99 = *(result + 80);
  v96 = *(result + 64);
  v97 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFF000000000000;
  }

  v95 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v102 = -*(result + 64);
  v98 = *(result + 72);
  while (1)
  {
    if (a3 >= v98)
    {
      v19 = a4;
      if (a3 <= v97)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v96;
        v30 = v99;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v97;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_54;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v29 = v96;
        v30 = v99;
        v27 = v95 | v24;
        v28 = v22 - 0x1000000;
        v25 = a3 - v28;
        v26 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v98 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      v19 = a4;
      if (v18 < 1)
      {
        goto LABEL_54;
      }

      if (v18 >= v16)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v18) >> 32;
      }

      v29 = v96;
      v30 = v99;
      v27 = v95 | v20;
      v28 = v17 + 0x1000000;
      v25 = a3 - v28;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      if (a2 <= v30)
      {
        v35 = 0;
        v36 = (a2 >> 26) & 0x3C;
        v34 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v30;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_54;
        }

        if (v39 < v37)
        {
          v27 = ((v27 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v95;
        }

        v34 = v38 - 0x1000000;
        v35 = a2 - (v38 - 0x1000000);
        v36 = 28;
      }
    }

    else
    {
      v31 = *(result + 192);
      v32 = v29 - *(result + 200);
      v33 = a2 - v32 + (v31 >> 1);
      if (v33 < 1)
      {
        goto LABEL_54;
      }

      if (v33 < v31)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v95;
      }

      v34 = v32 + 0x1000000;
      v35 = a2 - (v32 + 0x1000000);
      v36 = 32;
    }

    if (v27 >= 0x400000)
    {
      break;
    }

LABEL_54:
    v51 = v19 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
LABEL_55:
    a4 = v51;
    if (!v51)
    {
      return result;
    }
  }

  if (v6)
  {
    v40 = (v7 & ((v28 % v7) >> 63)) + v28 % v7;
    v41 = (v6 & ((v34 % v6) >> 63)) + v34 % v6;
    if (v40 >= v7)
    {
      v42 = v7;
    }

    else
    {
      v42 = 0;
    }

    v28 = v40 - v42;
    if (v41 >= v6)
    {
      v43 = v6;
    }

    else
    {
      v43 = 0;
    }

    v34 = v41 - v43;
    v25 += v28;
    v35 += v34;
  }

  v44 = v9 + SHIDWORD(v28) * v4;
  v45 = v34 >> 32;
  v46 = v44 + 8 * v45;
  v47 = *(result + 32);
  if (v15 >= v46)
  {
    v48 = (v44 + 8 * v45);
  }

  else
  {
    v48 = v15;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  v49 = ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
  if (!v8)
  {
    goto LABEL_57;
  }

  v50 = *(v8 + (v36 | v26));
  while (1)
  {
    v63 = v50 & 0xF;
    v64 = HIBYTE(v50) & 3;
    switch(v63)
    {
      case 1:
        LODWORD(v89) = SBYTE1(v50);
        if (v6)
        {
          v90 = v25 + (SBYTE1(v50) << 32);
          v91 = v7 & (v90 >> 63);
          if (v91 + v90 >= v7)
          {
            v92 = v7;
          }

          else
          {
            v92 = 0;
          }

          v89 = (v91 + (SBYTE1(v50) << 32) - v92) >> 32;
        }

        v93 = (v46 + v89 * v4);
        if (v15 < v93)
        {
          v93 = v15;
        }

        if (v93 < v47)
        {
          v93 = v47;
        }

        v49 = v49 - ((interpolate_16161616_21862[v64] & v49) >> (v64 + 1)) + (((((bswap32(v93[2]) >> 16) << 32) | ((bswap32(v93[3]) >> 16) << 48) | bswap32(v93[1]) & 0xFFFF0000 | (bswap32(*v93) >> 16)) & interpolate_16161616_21862[v64]) >> (v64 + 1));
        break;
      case 2:
        v83 = SBYTE2(v50);
        if (v6)
        {
          v84 = v35 + (SBYTE2(v50) << 32);
          v85 = v6 & (v84 >> 63);
          if (v85 + v84 >= v6)
          {
            v86 = v6;
          }

          else
          {
            v86 = 0;
          }

          v83 = (v85 + ((HIWORD(v50) << 56) >> 24) - v86) >> 32;
        }

        v87 = (v46 + 8 * v83);
        if (v15 < v87)
        {
          v87 = v15;
        }

        if (v87 < v47)
        {
          v87 = v47;
        }

        v88 = (v50 >> 28) & 3;
        v49 = v49 - ((interpolate_16161616_21862[v88] & v49) >> (v88 + 1)) + (((((bswap32(v87[2]) >> 16) << 32) | ((bswap32(v87[3]) >> 16) << 48) | bswap32(v87[1]) & 0xFFFF0000 | (bswap32(*v87) >> 16)) & interpolate_16161616_21862[v88]) >> (v88 + 1));
        break;
      case 3:
        v94 = v27;
        LODWORD(v65) = SBYTE1(v50);
        v66 = SBYTE2(v50);
        if (v6)
        {
          v67 = HIWORD(v50) << 56;
          v68 = v25 + (SBYTE1(v50) << 32);
          v69 = v35 + (v67 >> 24);
          v70 = v7 & (v68 >> 63);
          v71 = v6 & (v69 >> 63);
          v72 = v71 + v69;
          if (v70 + v68 >= v7)
          {
            v73 = v7;
          }

          else
          {
            v73 = 0;
          }

          if (v72 >= v6)
          {
            v74 = v6;
          }

          else
          {
            v74 = 0;
          }

          v65 = (v70 + (((v50 >> 8) << 56) >> 24) - v73) >> 32;
          v66 = (v71 + (v67 >> 24) - v74) >> 32;
        }

        v75 = (v46 + 8 * v66);
        if (v15 < v75)
        {
          v75 = v15;
        }

        if (v75 < v47)
        {
          v75 = v47;
        }

        v76 = ((bswap32(v75[2]) >> 16) << 32) | ((bswap32(v75[3]) >> 16) << 48) | bswap32(v75[1]) & 0xFFFF0000 | (bswap32(*v75) >> 16);
        v77 = (v46 + v65 * v4);
        if (v15 >= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = v15;
        }

        if (v78 < v47)
        {
          v78 = v47;
        }

        v79 = ((bswap32(v78[2]) >> 16) << 32) | ((bswap32(v78[3]) >> 16) << 48) | bswap32(v78[1]) & 0xFFFF0000 | (bswap32(*v78) >> 16);
        v80 = &v77[4 * v66];
        if (v15 < v80)
        {
          v80 = v15;
        }

        if (v80 < v47)
        {
          v80 = v47;
        }

        v81 = interpolate_16161616_21862[v64];
        v82 = v49 - ((v81 & v49) >> (v64 + 1)) + ((v79 & v81) >> (v64 + 1));
        v49 = v82 - ((v82 & interpolate_16161616_21862[(v50 >> 28) & 3]) >> (((v50 >> 28) & 3) + 1)) + (((v76 - ((v81 & v76) >> (v64 + 1)) + (((((bswap32(v80[2]) >> 16) << 32) | ((bswap32(v80[3]) >> 16) << 48) | bswap32(v80[1]) & 0xFFFF0000 | (bswap32(*v80) >> 16)) & v81) >> (v64 + 1))) & interpolate_16161616_21862[(v50 >> 28) & 3]) >> (((v50 >> 28) & 3) + 1));
        v27 = v94;
        break;
    }

LABEL_57:
    *(v12 + 8) = v49 | v14;
    *(v13 + 1) = v27 >> 22;
    if (v19 == 1)
    {
      return result;
    }

    v52 = 0;
    a2 += v5;
    v53 = v99 - a2;
    a3 += v10;
    v54 = v97 - a3;
    v55 = -8;
    while (1)
    {
      if (((v54 | v53 | (a3 - v98) | (v102 + a2)) & 0x8000000000000000) != 0)
      {
        v13 += v52 + 1;
        v12 -= v55;
        v51 = ~v52 + v19;
        goto LABEL_55;
      }

      if (v6)
      {
        v56 = (v7 & ((v25 + v100) >> 63)) + v25 + v100;
        v57 = (v6 & ((v35 + v101) >> 63)) + v35 + v101;
        v58 = v56 >= v7 ? v7 : 0;
        v25 = v56 - v58;
        v59 = v57 >= v6 ? v6 : 0;
        v35 = v57 - v59;
        v60 = HIDWORD(v25);
        v61 = v57 - v59;
      }

      else
      {
        v60 = HIDWORD(a3);
        v61 = a2;
      }

      v46 = v9 + v60 * v4 + 8 * (v61 >> 32);
      v47 = *(result + 32);
      v62 = (v15 >= v46 ? v46 : v15);
      if (v62 < v47)
      {
        v62 = *(result + 32);
      }

      v49 = ((bswap32(v62[2]) >> 16) << 32) | ((bswap32(v62[3]) >> 16) << 48) | bswap32(v62[1]) & 0xFFFF0000 | (bswap32(*v62) >> 16);
      if (v8)
      {
        v50 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v50 & 0xF) != 0)
        {
          break;
        }
      }

      *(v12 + 8 * v52 + 16) = v49 | v14;
      *(v13 + v52++ + 2) = -1;
      v55 -= 8;
      a2 += v5;
      v53 -= v5;
      a3 += v10;
      v54 -= v10;
      if (v19 - 1 == v52)
      {
        return result;
      }
    }

    v13 += v52 + 1;
    v12 -= v55;
    v19 += ~v52;
    v27 = -1;
  }
}

uint64_t rgba64_sample_rgb48(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v66 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  v65 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v65 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v8 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v65 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v7 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v65;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 8;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v66)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v66;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v65;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v29 >> 32;
  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = v35 + 6 * v34;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v35 + 6 * v34);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38 | (*(v38 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_51:
  v47 = v40 & 0xF;
  v48 = HIBYTE(v40) & 3;
  switch(v47)
  {
    case 1:
      v64 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v64)
      {
        v64 = v14;
      }

      if (v64 < v37)
      {
        v64 = v37;
      }

      v58 = *v64 | (*(v64 + 2) << 32) | 0xFFFF000000000000;
      goto LABEL_78;
    case 2:
      v63 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v58 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v48 = (v40 >> 28) & 3;
LABEL_78:
      v60 = interpolate_16161616_21862[v48];
      v61 = v48 + 1;
      v62 = v39 - ((v60 & v39) >> v61);
      goto LABEL_79;
    case 3:
      v49 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v49)
      {
        v49 = v14;
      }

      if (v49 < v37)
      {
        v49 = v37;
      }

      v50 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
      v51 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v51)
      {
        v52 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = (v51 + 6 * SBYTE2(v40));
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = interpolate_16161616_21862[v48];
      v56 = v48 + 1;
      v57 = v39 - ((v55 & v39) >> v56) + ((v53 & v55) >> v56);
      v58 = v50 - ((v55 & v50) >> v56) + (((*v54 | (*(v54 + 2) << 32) | 0xFFFF000000000000) & v55) >> v56);
      v59 = (v40 >> 28) & 3;
      v60 = interpolate_16161616_21862[v59];
      v61 = v59 + 1;
      v62 = v57 - ((v57 & v60) >> v61);
LABEL_79:
      v39 = v62 + ((v58 & v60) >> v61);
      break;
  }

LABEL_36:
  *(v12 + 8) = v39;
  *(v13 + 1) = v24 >> 22;
  if (a4 != 1)
  {
    v41 = 0;
    a2 += v10;
    v42 = v66 - a2;
    a3 += v11;
    v43 = v9 - a3;
    v44 = -8;
    while (((v43 | v42 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) == 0)
    {
      v45 = v4 + SHIDWORD(a3) * v5;
      v36 = v45 + 6 * SHIDWORD(a2);
      v37 = *(result + 32);
      if (v14 >= v36)
      {
        v46 = (v45 + 6 * SHIDWORD(a2));
      }

      else
      {
        v46 = v14;
      }

      if (v46 < v37)
      {
        v46 = *(result + 32);
      }

      v39 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
      if (v6)
      {
        v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v40 & 0xF) != 0)
        {
          v13 += v41 + 1;
          v12 -= v44;
          a4 += ~v41;
          v24 = -1;
          goto LABEL_51;
        }
      }

      *(v12 + 8 * v41 + 16) = v39;
      *(v13 + v41++ + 2) = -1;
      v44 -= 8;
      a2 += v10;
      v42 -= v10;
      a3 += v11;
      v43 -= v11;
      if (a4 - 1 == v41)
      {
        return result;
      }
    }

    v13 += v41 + 1;
    v12 -= v44;
    a4 += ~v41;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t rgba64_sample_RGB48(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v67 = *(result + 80);
  v68 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  v66 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v68)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v68;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v66 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v8 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v66 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v7 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v66;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v67)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v67;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v66;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = (bswap32(*v37) >> 16) | ((bswap32(v37[1]) >> 16) << 16) | ((bswap32(v37[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (v6)
  {
    v39 = *(v6 + (v29 | v22));
LABEL_51:
    v46 = v39 & 0xF;
    v47 = HIBYTE(v39) & 3;
    switch(v46)
    {
      case 1:
        v64 = (v35 + SBYTE1(v39) * v5);
        if (v13 < v64)
        {
          v64 = v13;
        }

        if (v64 < v36)
        {
          v64 = v36;
        }

        v65 = interpolate_16161616_21862[v47];
        v60 = v38 - ((v65 & v38) >> (v47 + 1));
        v61 = (((bswap32(*v64) >> 16) | ((bswap32(v64[1]) >> 16) << 16) | ((bswap32(v64[2]) >> 16) << 32) | 0xFFFF000000000000) & v65) >> (v47 + 1);
LABEL_78:
        v38 = v60 + v61;
        break;
      case 2:
        v62 = (v35 + 6 * SBYTE2(v39));
        if (v13 < v62)
        {
          v62 = v13;
        }

        if (v62 < v36)
        {
          v62 = v36;
        }

        v63 = (v39 >> 28) & 3;
        v38 = v38 - ((interpolate_16161616_21862[v63] & v38) >> (v63 + 1)) + ((((bswap32(*v62) >> 16) | ((bswap32(v62[1]) >> 16) << 16) | ((bswap32(v62[2]) >> 16) << 32) | 0xFFFF000000000000) & interpolate_16161616_21862[v63]) >> (v63 + 1));
        break;
      case 3:
        v48 = (v35 + 6 * SBYTE2(v39));
        if (v13 < v48)
        {
          v48 = v13;
        }

        if (v48 < v36)
        {
          v48 = v36;
        }

        v49 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
        v50 = v35 + SBYTE1(v39) * v5;
        if (v13 >= v50)
        {
          v51 = (v35 + SBYTE1(v39) * v5);
        }

        else
        {
          v51 = v13;
        }

        if (v51 < v36)
        {
          v51 = v36;
        }

        v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
        v53 = (v50 + 6 * SBYTE2(v39));
        if (v13 < v53)
        {
          v53 = v13;
        }

        if (v53 < v36)
        {
          v53 = v36;
        }

        v54 = interpolate_16161616_21862[v47];
        v55 = v47 + 1;
        v56 = v38 - ((v54 & v38) >> v55) + ((v52 & v54) >> v55);
        v57 = v49 - ((v54 & v49) >> v55) + ((((bswap32(*v53) >> 16) | ((bswap32(v53[1]) >> 16) << 16) | ((bswap32(v53[2]) >> 16) << 32) | 0xFFFF000000000000) & v54) >> v55);
        v58 = (v39 >> 28) & 3;
        v59 = interpolate_16161616_21862[v58];
        LOBYTE(v58) = v58 + 1;
        v60 = v56 - ((v56 & v59) >> v58);
        v61 = (v57 & v59) >> v58;
        goto LABEL_78;
    }
  }

  *(v11 + 8) = v38;
  *(v12 + 1) = v23 >> 22;
  if (a4 != 1)
  {
    v40 = 0;
    a2 += v9;
    v41 = v67 - a2;
    a3 += v10;
    v42 = v68 - a3;
    v43 = -8;
    while (((v42 | v41 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) == 0)
    {
      v44 = v4 + SHIDWORD(a3) * v5;
      v35 = v44 + 6 * SHIDWORD(a2);
      v36 = *(result + 32);
      if (v13 >= v35)
      {
        v45 = (v44 + 6 * SHIDWORD(a2));
      }

      else
      {
        v45 = v13;
      }

      if (v45 < v36)
      {
        v45 = *(result + 32);
      }

      v38 = (bswap32(*v45) >> 16) | ((bswap32(v45[1]) >> 16) << 16) | ((bswap32(v45[2]) >> 16) << 32) | 0xFFFF000000000000;
      if (v6)
      {
        v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v39 & 0xF) != 0)
        {
          v12 += v40 + 1;
          v11 -= v43;
          a4 += ~v40;
          v23 = -1;
          goto LABEL_51;
        }
      }

      *(v11 + 8 * v40 + 16) = v38;
      *(v12 + v40++ + 2) = -1;
      v43 -= 8;
      a2 += v9;
      v41 -= v9;
      a3 += v10;
      v42 -= v10;
      if (a4 - 1 == v40)
      {
        return result;
      }
    }

    v12 += v40 + 1;
    v11 -= v43;
    a4 += ~v40;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t rgba64_sample_w16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v87 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v89;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v89;
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
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v89;
      v27 = v87 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v88;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v87;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v4 + v38 * v6 + v39;
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v4 + v38 * v6 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v82)
        {
          v82 = v17;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = *v82;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v84)
          {
            v84 = v16;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= *v84 << 16;
        }

        v85 = interpolate_1616[v58];
        v77 = v43 - ((v85 & v43) >> (v58 + 1));
        v78 = (v85 & v83) >> (v58 + 1);
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 16;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v86 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v59)
        {
          v59 = v17;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = *v59;
        v61 = (v40 + SBYTE1(v47) * v6);
        if (v17 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        v64 = &v61[SBYTE2(v47)];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = *v64;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v16 < v44 + v66)
          {
            v67 = v16;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= *v67 << 16;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v16;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= *v70 << 16;
          v71 = (v69 + v66);
          if (v16 < v71)
          {
            v71 = v16;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= *v71 << 16;
        }

        v72 = interpolate_1616[v86];
        v73 = v43 - ((v72 & v43) >> (v86 + 1)) + ((v72 & v63) >> (v86 + 1));
        v74 = v60 - ((v72 & v60) >> (v86 + 1)) + ((v72 & v65) >> (v86 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + v39;
  v45 = *(result + 40);
  if (v16 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v16;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 8) = 65537 * v43;
  *(v11 + 12) = v43 | v13;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v11 + 20);
    a2 += v9;
    v50 = v88 - a2;
    a3 += v10;
    v51 = v90 - a3;
    while (((v51 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v52 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v52;
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v53 = (v4 + SHIDWORD(a3) * v6 + v52);
      }

      else
      {
        v53 = v17;
      }

      if (v53 < v41)
      {
        v53 = *(result + 32);
      }

      v43 = *v53;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v52;
        v54 = *(result + 40);
        if (v16 >= v44)
        {
          v55 = (v5 + SHIDWORD(a3) * v7 + v52);
        }

        else
        {
          v55 = v16;
        }

        if (v55 >= v54)
        {
          v54 = v55;
        }

        v43 |= *v54 << 16;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 = (v49 - 3);
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v49 - 1) = 65537 * v43;
      *v49 = v43 | v13;
      v56 = v12 + v48++;
      v49 += 2;
      *(v56 + 2) = -1;
      a2 += v9;
      v50 -= v9;
      a3 += v10;
      v51 -= v10;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 = (v49 - 3);
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba64_sample_W16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v87 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v89;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v89;
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
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v89;
      v27 = v87 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v88;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v87;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v4 + v38 * v6 + v39;
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v4 + v38 * v6 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = bswap32(*v42) >> 16;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v82)
        {
          v82 = v17;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = bswap32(*v82) >> 16;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v84)
          {
            v84 = v16;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= bswap32(*v84) & 0xFFFF0000;
        }

        v85 = interpolate_1616[v58];
        v77 = v43 - ((v85 & v43) >> (v58 + 1));
        v78 = (v85 & v83) >> (v58 + 1);
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = bswap32(*v79) >> 16;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= bswap32(*v81) & 0xFFFF0000;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v86 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v59)
        {
          v59 = v17;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = bswap32(*v59) >> 16;
        v61 = (v40 + SBYTE1(v47) * v6);
        if (v17 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = bswap32(*v62) >> 16;
        v64 = &v61[SBYTE2(v47)];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = bswap32(*v64) >> 16;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v16 < v44 + v66)
          {
            v67 = v16;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= bswap32(*v67) & 0xFFFF0000;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v16;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= bswap32(*v70) & 0xFFFF0000;
          v71 = (v69 + v66);
          if (v16 < v71)
          {
            v71 = v16;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= bswap32(*v71) & 0xFFFF0000;
        }

        v72 = interpolate_1616[v86];
        v73 = v43 - ((v72 & v43) >> (v86 + 1)) + ((v72 & v63) >> (v86 + 1));
        v74 = v60 - ((v72 & v60) >> (v86 + 1)) + ((v72 & v65) >> (v86 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + v39;
  v45 = *(result + 40);
  if (v16 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v16;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= bswap32(*v45) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 8) = 65537 * v43;
  *(v11 + 12) = v43 | v13;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v11 + 20);
    a2 += v9;
    v50 = v88 - a2;
    a3 += v10;
    v51 = v90 - a3;
    while (((v51 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v52 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v52;
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v53 = (v4 + SHIDWORD(a3) * v6 + v52);
      }

      else
      {
        v53 = v17;
      }

      if (v53 < v41)
      {
        v53 = *(result + 32);
      }

      v43 = bswap32(*v53) >> 16;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v52;
        v54 = *(result + 40);
        if (v16 >= v44)
        {
          v55 = (v5 + SHIDWORD(a3) * v7 + v52);
        }

        else
        {
          v55 = v16;
        }

        if (v55 >= v54)
        {
          v54 = v55;
        }

        v43 |= bswap32(*v54) & 0xFFFF0000;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 = (v49 - 3);
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v49 - 1) = 65537 * v43;
      *v49 = v43 | v13;
      v56 = v12 + v48++;
      v49 += 2;
      *(v56 + 2) = -1;
      a2 += v9;
      v50 -= v9;
      a3 += v10;
      v51 -= v10;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 = (v49 - 3);
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba64_sample_argb32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v74 = *(result + 188);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v74 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v74 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v75 - a2;
  v45 = (v11 + 12);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 1) = ((v40 | v14) << 8) & 0xFF0000 | ((v40 | v14) >> 8 << 24) | ((v40 | v14) >> 8) & 0xFF00 | ((v40 | v14) >> 16);
    *v45 = (v40 | v14) & 0xFF000000 | ((v40 | v14) >> 8) & 0xFF0000 | v40 | (v40 << 8);
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v46 | v44 | (a3 - v7) | (a2 - v6)) < 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 1);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 1);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    v45 += 2;
    a3 += v10;
    v46 -= v10;
    a2 += v9;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_ARGB32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v71 = *(result + 188);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v71 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v71 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v72;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v40 - ((v69 & v40) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_81:
      v40 = v66 + v67;
      break;
    case 2:
      v64 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v64)
      {
        v64 = v15;
      }

      if (v64 < v38)
      {
        v64 = v38;
      }

      v60 = bswap32(*v64);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v40;
LABEL_75:
      v65 = v61 + 1;
      v66 = v40 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = bswap32(*v52);
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v40 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v40 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v72 - a2;
  v45 = (v11 + 12);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 1) = ((v40 | v14) << 8) & 0xFF0000 | ((v40 | v14) >> 8 << 24) | ((v40 | v14) >> 8) & 0xFF00 | ((v40 | v14) >> 16);
    *v45 = (v40 | v14) & 0xFF000000 | ((v40 | v14) >> 8) & 0xFF0000 | v40 | (v40 << 8);
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v46 | v44 | (a3 - v7) | (a2 - v6)) < 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 1);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = bswap32(*v48);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 1);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    v45 += 2;
    a3 += v10;
    v46 -= v10;
    a2 += v9;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_rgba32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v74 = *(result + 80);
  v76 = *(result + 72);
  v77 = *(result + 88);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v73 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v75 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v76)
    {
      if (a3 <= v77)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v77;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v22 = v73 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v76 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v22 = v73 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v75)
    {
      break;
    }

    v24 = *(result + 192);
    v25 = v75 - *(result + 200);
    v26 = a2 - v25 + (v24 >> 1);
    if (v26 >= 1)
    {
      if (v26 < v24)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v26) >> 32) >> 15)) | v73;
      }

      v27 = v25 + 0x1000000;
      v28 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v74)
  {
    v28 = (a2 >> 26) & 0x3C;
    v27 = a2;
    goto LABEL_26;
  }

  v29 = *(result + 192);
  v30 = *(result + 200) + v74;
  v31 = v30 - a2 + (v29 >> 1);
  if (v31 < 1)
  {
    goto LABEL_34;
  }

  if (v31 < v29)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v73;
  }

  v27 = v30 - 0x1000000;
  v28 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v32 = v11 + SHIDWORD(v23) * v4;
  v33 = v27 >> 32;
  v34 = v32 + 4 * v33;
  v35 = *(result + 32);
  if (v12 >= v34)
  {
    v36 = (v32 + 4 * v33);
  }

  else
  {
    v36 = v12;
  }

  if (v36 < v35)
  {
    v36 = *(result + 32);
  }

  v37 = *v36;
  if (!v5)
  {
    v39 = v74;
    goto LABEL_37;
  }

  v38 = *(v5 + (v28 | v21));
LABEL_53:
  v39 = v74;
  v48 = v38 & 0xF;
  v49 = HIBYTE(v38) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v34 + SBYTE1(v38) * v4);
      if (v12 < v70)
      {
        v70 = v12;
      }

      if (v70 < v35)
      {
        v70 = v35;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v37 - ((v71 & v37) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v37 = v64 + v69;
      break;
    case 2:
      v66 = (v34 + ((HIWORD(v38) << 56) >> 54));
      if (v12 < v66)
      {
        v66 = v12;
      }

      if (v66 < v35)
      {
        v66 = v35;
      }

      v67 = (v38 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v37 - ((v68 & v37) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v38) << 56;
      v51 = (v34 + (v50 >> 54));
      if (v12 < v51)
      {
        v51 = v12;
      }

      if (v51 < v35)
      {
        v51 = v35;
      }

      v52 = *v51;
      v53 = v34 + SBYTE1(v38) * v4;
      if (v12 >= v53)
      {
        v54 = (v34 + SBYTE1(v38) * v4);
      }

      else
      {
        v54 = v12;
      }

      if (v54 < v35)
      {
        v54 = v35;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v12 < v56)
      {
        v56 = v12;
      }

      if (v56 < v35)
      {
        v56 = v35;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v37 - ((v57 & v37) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v38 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_37:
  v40 = 0;
  v41 = 0;
  v42 = v22 >> 22;
  a3 += v7;
  v43 = v77 - a3;
  a2 += v6;
  v44 = v39 - a2;
  while (1)
  {
    v45 = (v37 | (v37 << 8)) << 48;
    if (!v10)
    {
      v45 = 0xFFFF000000000000;
    }

    *(v8 + 8 + 8 * v41) = v45 | ((BYTE1(v37) | (BYTE1(v37) << 8)) << 32) | v37 & 0xFF0000 | (BYTE2(v37) << 24) | (HIBYTE(v37) | (HIBYTE(v37) << 8));
    *(v9 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if ((v43 | v44 | (a3 - v76) | (a2 - v75)) < 0)
    {
      v9 += v41 + 1;
      v8 = v8 - v40 + 8;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v34 = v46 + 4 * (a2 >> 32);
    v35 = *(result + 32);
    if (v12 >= v34)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v12;
    }

    if (v47 < v35)
    {
      v47 = *(result + 32);
    }

    v37 = *v47;
    if (v5)
    {
      v38 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v38 & 0xF) != 0)
      {
        v9 += v41 + 1;
        v8 = v8 - v40 + 8;
        a4 += ~v41;
        v22 = -1;
        goto LABEL_53;
      }
    }

    ++v41;
    v40 -= 8;
    a3 += v7;
    v43 -= v7;
    a2 += v6;
    v44 -= v6;
    LOBYTE(v42) = -1;
  }
}

uint64_t rgba64_sample_RGBA32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v73 = *(result + 80);
  v75 = *(result + 88);
  v76 = *(result + 72);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v72 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
        v24 = v74;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v75;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v24 = v74;
        v22 = v72 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v76 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v24 = v74;
      v22 = v72 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v24)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v24 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v72;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v73;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v72;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v11 + SHIDWORD(v23) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v12 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v12;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (!v5)
  {
    v40 = v73;
    goto LABEL_37;
  }

  v39 = *(v5 + (v29 | v21));
LABEL_53:
  v40 = v73;
  v49 = v39 & 0xF;
  v50 = HIBYTE(v39) & 3;
  switch(v49)
  {
    case 1:
      v69 = (v35 + SBYTE1(v39) * v4);
      if (v12 < v69)
      {
        v69 = v12;
      }

      if (v69 < v36)
      {
        v69 = v36;
      }

      v70 = interpolate_8888_21865[v50];
      v71 = v50 + 1;
      v65 = v38 - ((v70 & v38) >> v71);
      v68 = (bswap32(*v69) & v70) >> v71;
LABEL_81:
      v38 = v65 + v68;
      break;
    case 2:
      v66 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v12 < v66)
      {
        v66 = v12;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v61 = bswap32(*v66);
      v67 = (v39 >> 28) & 3;
      v63 = interpolate_8888_21865[v67];
      v64 = v67 + 1;
      v65 = v38 - ((v63 & v38) >> v64);
LABEL_75:
      v68 = (v61 & v63) >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v39) << 56;
      v52 = (v35 + (v51 >> 54));
      if (v12 < v52)
      {
        v52 = v12;
      }

      if (v52 < v36)
      {
        v52 = v36;
      }

      v53 = bswap32(*v52);
      v54 = v35 + SBYTE1(v39) * v4;
      if (v12 >= v54)
      {
        v55 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v55 = v12;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v12 < v57)
      {
        v57 = v12;
      }

      if (v57 < v36)
      {
        v57 = v36;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v38 - ((v58 & v38) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v62 = (v39 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      goto LABEL_75;
  }

LABEL_37:
  v41 = 0;
  v42 = 0;
  v43 = v22 >> 22;
  a3 += v7;
  v44 = v75 - a3;
  a2 += v6;
  v45 = v40 - a2;
  while (1)
  {
    v46 = (v38 | (v38 << 8)) << 48;
    if (!v10)
    {
      v46 = 0xFFFF000000000000;
    }

    *(v8 + 8 + 8 * v42) = v46 | ((BYTE1(v38) | (BYTE1(v38) << 8)) << 32) | v38 & 0xFF0000 | (BYTE2(v38) << 24) | (HIBYTE(v38) | (HIBYTE(v38) << 8));
    *(v9 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v76) | (a2 - v74)) < 0)
    {
      v9 += v42 + 1;
      v8 = v8 - v41 + 8;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v11 + SHIDWORD(a3) * v4;
    v35 = v47 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v12 >= v35)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v12;
    }

    if (v48 < v36)
    {
      v48 = *(result + 32);
    }

    v38 = bswap32(*v48);
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v9 += v42 + 1;
        v8 = v8 - v41 + 8;
        a4 += ~v42;
        v22 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 8;
    a3 += v7;
    v44 -= v7;
    a2 += v6;
    v45 -= v6;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_RGB24(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v73 = *(result + 64);
  v74 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v72 = *(result + 188);
  v13 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      v17 = v74;
      if (a3 <= v8)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
        v26 = v73;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v8;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v73;
        v24 = v72 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = v74;
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v16) >> 32;
      }

      v26 = v73;
      v24 = v72 | v18;
      v25 = v15 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v26 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v72;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v17;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v72;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = 3 * (v30 >> 32);
  v37 = v35 + v36;
  v38 = *(result + 32);
  if (v13 >= v35 + v36)
  {
    v39 = (v35 + v36);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (v39[1] << 16) | (*v39 << 24) | (v39[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v23));
LABEL_50:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v69 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v69)
      {
        v69 = v13;
      }

      if (v69 < v38)
      {
        v69 = v38;
      }

      v70 = interpolate_8888_21865[v51];
      v71 = v51 + 1;
      v67 = v40 - ((v70 & v40) >> v71);
      v68 = (((v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF) & v70) >> v71;
LABEL_78:
      v40 = v67 + v68;
      break;
    case 2:
      v65 = (v37 + 3 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v61 = (v65[1] << 16) | (*v65 << 24) | (v65[2] << 8) | 0xFF;
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v63 & v40;
LABEL_72:
      v66 = v62 + 1;
      v67 = v40 - (v64 >> v66);
      v68 = (v61 & v63) >> v66;
      goto LABEL_78;
    case 3:
      v52 = 3 * SBYTE2(v41);
      v53 = (v37 + v52);
      if (v13 < v37 + v52)
      {
        v53 = v13;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = (v53[1] << 16) | (*v53 << 24) | (v53[2] << 8) | 0xFF;
      v55 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = (v56[1] << 16) | (*v56 << 24) | (v56[2] << 8) | 0xFF;
      v58 = (v55 + v52);
      if (v13 < v58)
      {
        v58 = v13;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v40 = v40 - ((v59 & v40) >> v60) + ((v57 & v59) >> v60);
      v61 = v54 - ((v59 & v54) >> v60) + ((((v58[1] << 16) | (*v58 << 24) | (v58[2] << 8) | 0xFF) & v59) >> v60);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v40 & v63;
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v24 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v17 - a2;
  while (1)
  {
    *(v11 + 8 + 8 * v43) = ((v40 | (v40 << 8)) << 48) | ((BYTE1(v40) | (BYTE1(v40) << 8)) << 32) | v40 & 0xFF0000 | (BYTE2(v40) << 24) | (HIBYTE(v40) | (HIBYTE(v40) << 8));
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if ((v45 | v46 | (a3 - v7) | (a2 - v73)) < 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 8;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v48 = 3 * (a2 >> 32);
    v37 = v47 + v48;
    v38 = *(result + 32);
    if (v13 >= v47 + v48)
    {
      v49 = (v47 + v48);
    }

    else
    {
      v49 = v13;
    }

    if (v49 < v38)
    {
      v49 = *(result + 32);
    }

    v40 = (v49[1] << 16) | (*v49 << 24) | (v49[2] << 8) | 0xFF;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 8;
        a4 += ~v43;
        v24 = -1;
        v17 = v74;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 8;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgba64_shade(uint64_t a1)
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
  rgba64_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void rgba64_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v363 = a3;
  v374 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v358 = v3;
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a2 + 184);
  v373.i64[0] = *(a1 + 136);
  v8 = *(a2 + 104);
  v368 = *(a2 + 96);
  v370 = v8;
  v371 = v5;
  v10 = *(a1 + 24);
  v9 = *(a1 + 28);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = *(a1 + 12);
  v369 = *(a1 + 8);
  v362 = a1;
  v365 = a2;
  v14 = *(a2 + 16);
  v15 = (v14 + 10) * v4;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
    v17 = v18;
    v20 = v18;
    v21 = v365;
    v22 = v362;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = &v353 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
    v21 = v365;
    v22 = v362;
  }

  v355 = v20;
  v364 = ((v7 * 65535.0) + 0.5);
  v354 = v6 + (v10 - 1) * v9 + 8 * v12;
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
  v29 = v358;
  v353 = v9 >> 3;
  v361 = v23 - v358;
  v30 = *(v22 + 104);
  v31 = *(v22 + 108);
  v32 = *(v22 + 2);
  if (v32 == 6 || v32 == 1)
  {
    v33 = v368;
    v34 = v370;
    if (!v373.i64[0])
    {
      goto LABEL_484;
    }

    v35 = 0;
    v36 = 0;
    v37 = *(v22 + 124);
    v38 = (v373.i64[0] + v37 * v31 + v30);
    v29 = v358;
    v360 = v37 - v358;
    v39 = v363;
    v40 = v365;
  }

  else
  {
    v33 = v368;
    if (v373.i64[0])
    {
      shape_enum_clip_alloc(v18, v19, v373.i64[0], 1, 1, 1, v30, v31, v3, v369);
      v40 = v365;
      if (!v41)
      {
        goto LABEL_484;
      }

      v42 = ((v14 * v4 + 15) & 0xFFFFFFF0);
      if (!v14)
      {
        v42 = 8 * v4;
      }

      v43 = v27 + v42;
      v36 = 0;
      v360 = -v358;
      v38 = (v43 + 16);
      v39 = v363;
      v34 = v370;
      v35 = v41;
      while (1)
      {
LABEL_487:
        while (1)
        {
          v351 = *(v38 - 4);
          v352 = v351 - v36;
          if (v351 <= v36)
          {
            break;
          }

          v369 -= v352;
          if (v369 < 1)
          {
LABEL_483:
            free(v35);
            goto LABEL_484;
          }

          v33 += *(v40 + 128) * v352;
          v34 += *(v40 + 136) * v352;
          v28 += v353 * v352;
          v36 = v351;
        }

        if (v36 < *(v38 - 3) + v351)
        {
          break;
        }

        if (!shape_enum_clip_scan(v35, v38 - 4))
        {
          goto LABEL_483;
        }
      }

      v29 = v358;
    }

    else
    {
      v38 = 0;
      v35 = 0;
      v360 = 0;
      v36 = 0;
      v39 = v363;
      v40 = v365;
      v34 = v370;
    }
  }

  v367 = v36;
  v44 = v364 ^ 0xFFFF;
  v45 = vdup_n_s32(v364 ^ 0xFFFFu);
  v357 = (v3 - 1);
  v356 = -v29;
  v359 = v354 - 8;
  v372 = xmmword_18439CB80;
  v373 = xmmword_18439CB70;
  v46 = vdup_n_s32(0x101u);
  v47 = v35;
  while (2)
  {
    v366 = v47;
    v48 = *v40;
    v370 = v34;
    v48(v40, v33, v34, v3);
    v49 = *(v40 + 160);
    v50 = *(v40 + 144);
    v51 = *(v40 + 8);
    if (v51 == *(v40 + 12))
    {
      if (v364 != 0xFFFF)
      {
        v52 = v3;
        v53 = *(v40 + 144);
        do
        {
          if (*v53)
          {
            v54 = *v49 * v44 + 0x8000;
            v55 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v49), v372));
            v56.i32[1] = v55.i32[1];
            v56.i32[0] = v55.u16[0];
            v57 = vmla_s32(0x800000008000, v56, v45);
            v58 = vand_s8(vsub_s32(v55, vshr_n_u32(vsra_n_u32(v57, v57, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v59.i64[0] = v58.u32[0];
            v59.i64[1] = v58.u32[1];
            v60 = vshlq_u64(v59, v373);
            *v49 = vorrq_s8(v60, vdupq_laneq_s64(v60, 1)).u64[0] | ((WORD1(*v49) - ((WORD1(*v49) * v44 + 0x8000 + ((WORD1(*v49) * v44 + 0x8000) >> 16)) >> 16)) << 16) | (*v49 - ((v54 + HIWORD(v54)) >> 16));
          }

          ++v53;
          v49 += 8;
          --v52;
        }

        while (v52);
        v49 += 8 * v356;
        v50 += v357 + v356 + 1;
      }
    }

    else
    {
      v61 = *(v40 + 152);
      v62 = HIWORD(v51) & 0x3F;
      if (v62 == 16)
      {
        if (v364 == 0xFFFF)
        {
          v105 = 0;
          do
          {
            if (v50[v105])
            {
              *(v49 + 8 * v105) = *(v61 + 8 * v105);
            }

            ++v105;
          }

          while (v3 != v105);
        }

        else
        {
          v78 = 0;
          do
          {
            if (v50[v78])
            {
              v79 = *(v61 + 8 * v78);
              v80 = vmovn_s64(vshlq_u64(vdupq_n_s64(v79), v372));
              v81.i32[1] = v80.i32[1];
              v81.i32[0] = v80.u16[0];
              v82 = vmla_s32(0x800000008000, v81, v45);
              v83 = vand_s8(vsub_s32(v80, vshr_n_u32(vsra_n_u32(v82, v82, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
              v84.i64[0] = v83.u32[0];
              v84.i64[1] = v83.u32[1];
              v85 = vshlq_u64(v84, v373);
              *(v49 + 8 * v78) = vorrq_s8(v85, vdupq_laneq_s64(v85, 1)).u64[0] | ((WORD1(v79) - ((WORD1(v79) * v44 + 0x8000 + ((WORD1(v79) * v44 + 0x8000) >> 16)) >> 16)) << 16) | (v79 - ((v79 * v44 + 0x8000 + ((v79 * v44 + 0x8000) >> 16)) >> 16));
            }

            ++v78;
          }

          while (v3 != v78);
        }
      }

      else if (v62 == 32)
      {
        if (v364 == 0xFFFF)
        {
          v94 = 0;
          v95 = (v61 + 8);
          do
          {
            if (v50[v94])
            {
              v96 = v95[1];
              if (v96 <= 0.0)
              {
                v101 = 0;
              }

              else
              {
                v97 = *(v95 - 2);
                LODWORD(v98) = ((v96 * 65535.0) + 0.5);
                if (v96 <= 1.0)
                {
                  v98 = v98;
                }

                else
                {
                  v98 = 0xFFFFLL;
                }

                LOWORD(v99) = v98;
                if (v96 > 1.0)
                {
                  v96 = 1.0;
                }

                LOWORD(v100) = v98;
                if (v97 <= v96)
                {
                  if (v97 >= 0.0)
                  {
                    v100 = ((v97 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v100) = 0;
                  }
                }

                v102 = *(v95 - 1);
                v103 = v98;
                if (v102 <= v96)
                {
                  if (v102 >= 0.0)
                  {
                    v103 = ((v102 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v103 = 0;
                  }
                }

                v104 = *v95;
                if (*v95 <= v96)
                {
                  if (v104 >= 0.0)
                  {
                    v99 = ((v104 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v99) = 0;
                  }
                }

                v101 = (v98 << 48) | (v99 << 32) | (v103 << 16) | v100;
              }

              *(v49 + 8 * v94) = v101;
            }

            v95 += 4;
            ++v94;
          }

          while (v3 != v94);
        }

        else
        {
          v63 = 0;
          v64 = (v61 + 8);
          do
          {
            if (v50[v63])
            {
              v65 = v64[1];
              if (v65 <= 0.0)
              {
                v70 = 0;
              }

              else
              {
                v66 = *(v64 - 2);
                v67 = ((v65 * 65535.0) + 0.5);
                if (v65 > 1.0)
                {
                  v67 = 0xFFFF;
                }

                v68 = v67;
                if (v65 > 1.0)
                {
                  v65 = 1.0;
                }

                v69 = v67;
                if (v66 <= v65)
                {
                  if (v66 >= 0.0)
                  {
                    v69 = ((v66 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v69 = 0;
                  }
                }

                v71 = *(v64 - 1);
                v72 = v67;
                if (v71 <= v65)
                {
                  if (v71 >= 0.0)
                  {
                    v72 = ((v71 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v72 = 0;
                  }
                }

                v73 = *v64;
                if (*v64 <= v65)
                {
                  if (v73 >= 0.0)
                  {
                    v68 = ((v73 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v68 = 0;
                  }
                }

                v74 = v69 * v44;
                v75 = v72 * v44;
                v76 = v68 * v44;
                v77 = v67 * v44;
                if ((v69 * v44) >= 0xFFFE8000)
                {
                  v74 = -98304;
                }

                if (v75 >= 0xFFFE8000)
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

                v70 = ((v67 - ((v77 + 0x8000 + ((v77 + 0x8000) >> 16)) >> 16)) << 48) | ((v68 - ((v76 + 0x8000 + ((v76 + 0x8000) >> 16)) >> 16)) << 32) | ((v72 - ((v75 + 0x8000 + ((v75 + 0x8000) >> 16)) >> 16)) << 16) | (v69 - ((v74 + 0x8000 + ((v74 + 0x8000) >> 16)) >> 16));
              }

              *(v49 + 8 * v63) = v70;
            }

            v64 += 4;
            ++v63;
          }

          while (v3 != v63);
        }
      }

      else if (v364 == 0xFFFF)
      {
        v106 = 0;
        do
        {
          if (v50[v106])
          {
            v107 = *(v61 + 4 * v106);
            v108 = *(v61 + 4 * v106);
            *(v49 + 8 * v106) = ((v108 | (v108 << 8)) << 48) | ((BYTE1(v107) | (BYTE1(v107) << 8)) << 32) | v107 & 0xFF0000 | (BYTE2(v107) << 24) | (v107 >> 24) | (v107 >> 24 << 8);
          }

          ++v106;
        }

        while (v3 != v106);
      }

      else
      {
        v86 = 0;
        do
        {
          if (v50[v86])
          {
            v87 = *(v61 + 4 * v86);
            v88.i32[0] = v87 >> 8;
            v88.i32[1] = v87;
            v89 = vmul_s32(vand_s8(v88, 0xFF000000FFLL), v46);
            v90 = vmla_s32(0x800000008000, v89, v45);
            v91 = vand_s8(vsub_s32(v89, vshr_n_u32(vsra_n_u32(v90, v90, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v92.i64[0] = v91.u32[0];
            v92.i64[1] = v91.u32[1];
            v93 = vshlq_u64(v92, v373);
            *(v49 + 8 * v86) = vorrq_s8(v93, vdupq_laneq_s64(v93, 1)).u64[0] | (((BYTE2(v87) | (BYTE2(v87) << 8)) - (((BYTE2(v87) | (BYTE2(v87) << 8)) * v44 + 0x8000 + (((BYTE2(v87) | (BYTE2(v87) << 8)) * v44 + 0x8000) >> 16)) >> 16)) << 16) | ((HIBYTE(v87) | (HIBYTE(v87) << 8)) - (((HIBYTE(v87) | (HIBYTE(v87) << 8)) * v44 + 0x8000 + (((HIBYTE(v87) | (HIBYTE(v87) << 8)) * v44 + 0x8000) >> 16)) >> 16));
          }

          ++v86;
        }

        while (v3 != v86);
      }
    }

    v368 = v33;
    switch(v39)
    {
      case 0:
        v109 = v3;
        v110 = v38;
        do
        {
          v111 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v111 = ((*v110 * v111 + ((*v110 * v111) >> 8) + 1) >> 8);
            }

            if (v111)
            {
              if (v111 == 255)
              {
                *v28 = 0;
              }

              else
              {
                rgba64_DM(v28, *v28, (v111 | (v111 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v50;
          v110 += v38 != 0;
          ++v28;
          --v109;
        }

        while (v109);
        v38 = &v110[v360];
        v28 += v361;
        goto LABEL_451;
      case 1:
        v223 = *v50;
        if (v38)
        {
          v224 = v50 + 1;
          v225 = v3;
          do
          {
            if (v223)
            {
              v226 = *v38 * v223 + ((*v38 * v223) >> 8) + 1;
              v227 = v359;
              if (v359 >= v28)
              {
                v227 = v28;
              }

              if (v227 >= *(v362 + 40))
              {
                v228 = v227;
              }

              else
              {
                v228 = *(v362 + 40);
              }

              if (BYTE1(v226))
              {
                if (BYTE1(v226) == 255)
                {
                  *v228 = *v49;
                }

                else
                {
                  rgba64_DMplusDM(v228, *v49, (257 * (v226 >> 8)), *v228, ~(257 * (v226 >> 8)));
                }
              }
            }

            else
            {
              v228 = v28;
            }

            v229 = *v224++;
            v223 = v229;
            v49 += 8;
            ++v38;
            v28 = v228 + 1;
            --v225;
          }

          while (v225);
          v38 += v360;
          v35 = v366;
        }

        else
        {
          v347 = v50 + 1;
          v348 = v3;
          v35 = v366;
          do
          {
            v349 = v359;
            if (v359 >= v28)
            {
              v349 = v28;
            }

            if (v349 >= *(v362 + 40))
            {
              v228 = v349;
            }

            else
            {
              v228 = *(v362 + 40);
            }

            if (v223)
            {
              if (v223 == 255)
              {
                *v228 = *v49;
              }

              else
              {
                rgba64_DMplusDM(v228, *v49, v223 | (v223 << 8), *v228, (v223 | (v223 << 8)) ^ 0xFFFF);
              }
            }

            v350 = *v347++;
            v223 = v350;
            v49 += 8;
            v28 = v228 + 1;
            --v348;
          }

          while (v348);
          v38 = 0;
        }

        v28 = &v228[v361 + 1];
        v33 = v368;
        v336 = v370;
        goto LABEL_453;
      case 2:
        v193 = *v50;
        if (v38)
        {
          v194 = v50 + 1;
          v195 = v3;
          while (1)
          {
            v196 = v28;
            if (!v193)
            {
              goto LABEL_236;
            }

            v197 = *v38 * v193 + ((*v38 * v193) >> 8) + 1;
            if (!BYTE1(v197))
            {
              goto LABEL_236;
            }

            if (BYTE1(v197) == 255)
            {
              v198 = *v49;
              v199 = HIWORD(*v49);
              if (v199)
              {
                if (v199 != 0xFFFF)
                {
                  v203 = *v28;
                  v204 = v199 ^ 0xFFFF;
                  goto LABEL_235;
                }

                *v28 = v198;
              }
            }

            else
            {
              v201 = HIWORD(*v49);
              v202 = (257 * (v197 >> 8)) ^ 0xFFFF;
              if (v201 != (v202 * v201 + 0x8000 + ((v202 * v201 + 0x8000) >> 16)) >> 16)
              {
                v203 = *v28;
                v200 = *v49;
                v198 = ((v201 - ((v202 * v201 + 0x8000 + ((v202 * v201 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v200) - ((WORD2(v200) * v202 + 0x8000 + ((WORD2(v200) * v202 + 0x8000) >> 16)) >> 16)) << 32) | (v200 - ((v200 * v202 + 0x8000 + ((v200 * v202 + 0x8000) >> 16)) >> 16)) | ((WORD1(v200) - ((WORD1(v200) * v202 + 0x8000 + ((WORD1(v200) * v202 + 0x8000) >> 16)) >> 16)) << 16);
                v204 = ~(v201 - ((v202 * v201 + 0x8000 + ((v202 * v201 + 0x8000) >> 16)) >> 16));
LABEL_235:
                rgba64_DplusDM(v28, v198, v203, v204);
              }
            }

LABEL_236:
            v205 = *v194++;
            v193 = v205;
            v49 += 8;
            ++v38;
            ++v28;
            if (!--v195)
            {
              v38 += v360;
              v40 = v365;
              goto LABEL_468;
            }
          }
        }

        v337 = v50 + 1;
        v338 = v3;
        do
        {
          if (!v193)
          {
            goto LABEL_466;
          }

          if (v193 == 255)
          {
            v339 = *v49;
            v340 = HIWORD(*v49);
            if (!v340)
            {
              goto LABEL_466;
            }

            if (v340 == 0xFFFF)
            {
              *v28 = v339;
              goto LABEL_466;
            }

            v344 = *v28;
            v345 = v340 ^ 0xFFFF;
          }

          else
          {
            v342 = HIWORD(*v49);
            v343 = (257 * v193) ^ 0xFFFF;
            if (v342 == (v343 * v342 + 0x8000 + ((v343 * v342 + 0x8000) >> 16)) >> 16)
            {
              goto LABEL_466;
            }

            v344 = *v28;
            v341 = *v49;
            v339 = ((v342 - ((v343 * v342 + 0x8000 + ((v343 * v342 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v341) - ((WORD2(v341) * v343 + 0x8000 + ((WORD2(v341) * v343 + 0x8000) >> 16)) >> 16)) << 32) | (v341 - ((v341 * v343 + 0x8000 + ((v341 * v343 + 0x8000) >> 16)) >> 16)) | ((WORD1(v341) - ((WORD1(v341) * v343 + 0x8000 + ((WORD1(v341) * v343 + 0x8000) >> 16)) >> 16)) << 16);
            v345 = ~(v342 - ((v343 * v342 + 0x8000 + ((v343 * v342 + 0x8000) >> 16)) >> 16));
          }

          rgba64_DplusDM(v28, v339, v344, v345);
LABEL_466:
          v346 = *v337++;
          v193 = v346;
          v49 += 8;
          ++v28;
          --v338;
        }

        while (v338);
        v38 = 0;
        v196 = v28 - 1;
LABEL_468:
        v28 = &v196[v361 + 1];
LABEL_451:
        v33 = v368;
LABEL_452:
        v336 = v370;
        v35 = v366;
LABEL_453:
        if (--v369)
        {
          v47 = 0;
          ++v367;
          v33 += *(v40 + 128);
          v34 = *(v40 + 136) + v336;
          if (v35)
          {
            v36 = v367;
            goto LABEL_487;
          }

          continue;
        }

        if (v35)
        {
          goto LABEL_483;
        }

LABEL_484:
        if (v355)
        {
          free(v355);
        }

        return;
      case 3:
        v215 = v3;
        v113 = v38;
        do
        {
          v216 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v216 = ((*v113 * v216 + ((*v113 * v216) >> 8) + 1) >> 8);
            }

            if (v216)
            {
              if (v216 == 255)
              {
                rgba64_DM(v28, *v49, v28->u16[3]);
              }

              else
              {
                v217 = v216 | (v216 << 8);
                v218 = HIWORD(*v28) * v217 + 0x8000;
                rgba64_DMplusDM(v28, *v49, (v218 + HIWORD(v218)) >> 16, *v28, v217 ^ 0xFFFF);
              }
            }
          }

          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          --v215;
        }

        while (v215);
        goto LABEL_449;
      case 4:
        v151 = v3;
        v113 = v38;
        do
        {
          v152 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v152 = ((*v113 * v152 + ((*v113 * v152) >> 8) + 1) >> 8);
            }

            if (v152)
            {
              if (v152 == 255)
              {
                rgba64_DM(v28, *v49, v28->u16[3] ^ 0xFFFF);
              }

              else
              {
                v153 = v152 | (v152 << 8);
                v154 = (HIWORD(*v28) ^ 0xFFFF) * v153 + 0x8000;
                rgba64_DMplusDM(v28, *v49, (v154 + HIWORD(v154)) >> 16, *v28, v153 ^ 0xFFFF);
              }
            }
          }

          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          --v151;
        }

        while (v151);
        goto LABEL_449;
      case 5:
        v248 = v3;
        v113 = v38;
        while (1)
        {
          v249 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_320;
            }

            v250 = *v113 * v249 + ((*v113 * v249) >> 8) + 1;
            if (v250 >= 0x100)
            {
              break;
            }
          }

LABEL_321:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v248)
          {
            goto LABEL_449;
          }
        }

        v249 = v250 >> 8;
LABEL_320:
        v251 = (v249 | (v249 << 8)) ^ 0xFFFF;
        v252 = *v49 * v251 + 0x8000;
        v253 = WORD2(*v49) * v251 + 0x8000;
        v254 = *v49 - ((v252 + HIWORD(v252)) >> 16);
        LOWORD(v252) = WORD1(*v49) - ((WORD1(*v49) * v251 + 0x8000 + ((WORD1(*v49) * v251 + 0x8000) >> 16)) >> 16);
        v255 = HIWORD(*v49) - ((v251 * HIWORD(*v49) + 0x8000 + ((v251 * HIWORD(*v49) + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v28, (v255 << 48) | ((HIDWORD(*v49) - ((v253 + HIWORD(v253)) >> 16)) << 32) | v254 | (v252 << 16), HIWORD(*v28), *v28, ~v255);
        goto LABEL_321;
      case 6:
        v274 = v3;
        v275 = v38;
        while (1)
        {
          v276 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_356;
            }

            v277 = *v275 * v276 + ((*v275 * v276) >> 8) + 1;
            if (v277 >= 0x100)
            {
              break;
            }
          }

LABEL_360:
          ++v50;
          v49 += 8;
          v275 += v38 != 0;
          ++v28;
          if (!--v274)
          {
            v38 = &v275[v360];
            v28 += v361;
LABEL_450:
            v40 = v365;
            goto LABEL_451;
          }
        }

        v276 = v277 >> 8;
LABEL_356:
        v278 = HIWORD(*v28);
        if (v278 != 0xFFFF)
        {
          if (~v278 == 0xFFFF)
          {
            rgba64_DM(v28, *v49, v276 | (v276 << 8));
          }

          else
          {
            rgba64_DplusDM(v28, *v28, *v49, (257 * v276 * ~v278 + 0x8000 + ((257 * v276 * ~v278 + 0x8000) >> 16)) >> 16);
          }
        }

        goto LABEL_360;
      case 7:
        v219 = v3;
        v113 = v38;
        do
        {
          v220 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v220 = ((*v113 * v220 + ((*v113 * v220) >> 8) + 1) >> 8);
            }

            if (v220)
            {
              if (v220 == 255)
              {
                rgba64_DM(v28, *v28, *(v49 + 6));
              }

              else
              {
                v221 = v220 | (v220 << 8);
                v222 = *(v49 + 6) * v221 + 0x8000;
                rgba64_DMplusDM(v28, *v28, (v222 + HIWORD(v222)) >> 16, *v28, v221 ^ 0xFFFF);
              }
            }
          }

          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          --v219;
        }

        while (v219);
        goto LABEL_449;
      case 8:
        v296 = v3;
        v113 = v38;
        do
        {
          v297 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v297 = ((*v113 * v297 + ((*v113 * v297) >> 8) + 1) >> 8);
            }

            if (v297)
            {
              if (v297 == 255)
              {
                rgba64_DM(v28, *v28, *(v49 + 6) ^ 0xFFFF);
              }

              else
              {
                v298 = v297 | (v297 << 8);
                v299 = (*(v49 + 6) ^ 0xFFFF) * v298 + 0x8000;
                rgba64_DMplusDM(v28, *v28, (v299 + HIWORD(v299)) >> 16, *v28, v298 ^ 0xFFFF);
              }
            }
          }

          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          --v296;
        }

        while (v296);
        goto LABEL_449;
      case 9:
        v166 = v3;
        v113 = v38;
        while (1)
        {
          v167 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_193;
            }

            v168 = *v113 * v167 + ((*v113 * v167) >> 8) + 1;
            if (v168 >= 0x100)
            {
              break;
            }
          }

LABEL_194:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v166)
          {
            goto LABEL_449;
          }
        }

        v167 = v168 >> 8;
LABEL_193:
        v169 = ~(v167 | (v167 << 8));
        v170 = v169;
        v171 = *v49 * v169 + 0x8000;
        v172 = WORD2(*v49) * v169 + 0x8000;
        v173 = *v49 - ((v171 + HIWORD(v171)) >> 16);
        LOWORD(v171) = WORD1(*v49) - ((WORD1(*v49) * v170 + 0x8000 + ((WORD1(*v49) * v170 + 0x8000) >> 16)) >> 16);
        v174 = HIWORD(*v49) - ((HIWORD(*v49) * v170 + 0x8000 + ((HIWORD(*v49) * v170 + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v28, (v174 << 48) | ((HIDWORD(*v49) - ((v172 + HIWORD(v172)) >> 16)) << 32) | v173 | (v171 << 16), HIWORD(*v28) ^ 0xFFFF, *v28, (v174 + v169));
        goto LABEL_194;
      case 10:
        v288 = v3;
        v113 = v38;
        while (1)
        {
          v289 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_381;
            }

            v290 = *v113 * v289 + ((*v113 * v289) >> 8) + 1;
            if (v290 >= 0x100)
            {
              break;
            }
          }

LABEL_382:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v288)
          {
            goto LABEL_449;
          }
        }

        v289 = v290 >> 8;
LABEL_381:
        v291 = (v289 | (v289 << 8)) ^ 0xFFFF;
        v292 = *v49 * v291 + 0x8000;
        v293 = WORD2(*v49) * v291 + 0x8000;
        v294 = *v49 - ((v292 + HIWORD(v292)) >> 16);
        LOWORD(v292) = WORD1(*v49) - ((WORD1(*v49) * v291 + 0x8000 + ((WORD1(*v49) * v291 + 0x8000) >> 16)) >> 16);
        v295 = HIWORD(*v49) - ((v291 * HIWORD(*v49) + 0x8000 + ((v291 * HIWORD(*v49) + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v28, (v295 << 48) | ((HIDWORD(*v49) - ((v293 + HIWORD(v293)) >> 16)) << 32) | v294 | (v292 << 16), HIWORD(*v28) ^ 0xFFFF, *v28, ~v295);
        goto LABEL_382;
      case 11:
        v140 = v3;
        v113 = v38;
        while (1)
        {
          v141 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_165;
            }

            v142 = *v113 * v141 + ((*v113 * v141) >> 8) + 1;
            if (v142 >= 0x100)
            {
              break;
            }
          }

LABEL_168:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v140)
          {
            goto LABEL_449;
          }
        }

        v141 = v142 >> 8;
LABEL_165:
        v143 = (v141 | (v141 << 8)) ^ 0xFFFF;
        v144 = *v49 * v143 + 0x8000;
        v145 = WORD2(*v49) * v143 + 0x8000;
        v146 = v145 + HIWORD(v145);
        v147 = *v49 - ((v144 + HIWORD(v144)) >> 16);
        LOWORD(v144) = WORD1(*v49) - ((WORD1(*v49) * v143 + 0x8000 + ((WORD1(*v49) * v143 + 0x8000) >> 16)) >> 16);
        v148 = HIWORD(*v49) - ((v143 * HIWORD(*v49) + 0x8000 + ((v143 * HIWORD(*v49) + 0x8000) >> 16)) >> 16);
        v149 = v147 | (v144 << 16);
        v150 = HIWORD(*v28);
        if (!v371)
        {
          LOWORD(v150) = -1;
        }

        rgba64_DAplusdDA(v28, *v28, v150, (v148 << 48) | ((HIDWORD(*v49) - HIWORD(v146)) << 32) | v149, v148);
        goto LABEL_168;
      case 12:
        v155 = v3;
        v113 = v38;
        while (1)
        {
          v156 = *v50;
          if (*v50)
          {
            if (!v38)
            {
              goto LABEL_185;
            }

            v157 = *v113 * v156 + ((*v113 * v156) >> 8) + 1;
            if (v157 >= 0x100)
            {
              break;
            }
          }

LABEL_186:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v155)
          {
            goto LABEL_449;
          }
        }

        v156 = v157 >> 8;
LABEL_185:
        v158 = (v156 | (v156 << 8)) ^ 0xFFFF;
        v159 = *v49 * v158 + 0x8000;
        v160 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v49), v372));
        v161.i32[1] = v160.i32[1];
        v161.i32[0] = v160.u16[0];
        v162 = vmla_s32(0x800000008000, vdup_n_s32(v158), v161);
        v163 = vand_s8(vsub_s32(v160, vshr_n_u32(vsra_n_u32(v162, v162, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v164.i64[0] = v163.u32[0];
        v164.i64[1] = v163.u32[1];
        v165 = vshlq_u64(v164, v373);
        rgba64_DpluslD(v28, *v28, vorrq_s8(v165, vdupq_laneq_s64(v165, 1)).u64[0] | ((WORD1(*v49) - ((WORD1(*v49) * v158 + 0x8000 + ((WORD1(*v49) * v158 + 0x8000) >> 16)) >> 16)) << 16) | (*v49 - ((v159 + HIWORD(v159)) >> 16)));
        goto LABEL_186;
      case 13:
        v265 = v3;
        v113 = v38;
        while (1)
        {
          v266 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v267 = *v113 * v266 + ((*v113 * v266) >> 8) + 1;
              if (v267 < 0x100)
              {
                goto LABEL_349;
              }

              v266 = v267 >> 8;
            }

            v269 = HIWORD(*v49);
            v270 = (v266 | (v266 << 8)) ^ 0xFFFF;
            if (v269 != (v270 * v269 + 0x8000 + ((v270 * v269 + 0x8000) >> 16)) >> 16)
            {
              v268 = *v49;
              v271 = ((v269 - ((v270 * v269 + 0x8000 + ((v270 * v269 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v268) - ((WORD2(v268) * v270 + 0x8000 + ((WORD2(v268) * v270 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v270 + 0x8000 + ((*v49 * v270 + 0x8000) >> 16)) >> 16)) | ((WORD1(v268) - ((WORD1(v268) * v270 + 0x8000 + ((WORD1(v268) * v270 + 0x8000) >> 16)) >> 16)) << 16);
              v272 = *v28;
              if (v371)
              {
                v273 = HIWORD(v272);
                if (!HIWORD(v272))
                {
                  goto LABEL_348;
                }
              }

              else
              {
                LODWORD(v273) = 0xFFFF;
              }

              v271 = PDAmultiplyPDA_15236(v272, v273, v271, (v269 - ((v270 * v269 + 0x8000 + ((v270 * v269 + 0x8000) >> 16)) >> 16)));
LABEL_348:
              *v28 = v271;
            }
          }

LABEL_349:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v265)
          {
            goto LABEL_449;
          }
        }

      case 14:
        v131 = v3;
        v113 = v38;
        while (1)
        {
          v132 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v133 = *v113 * v132 + ((*v113 * v132) >> 8) + 1;
              if (v133 < 0x100)
              {
                goto LABEL_158;
              }

              v132 = v133 >> 8;
            }

            v135 = HIWORD(*v49);
            v136 = (v132 | (v132 << 8)) ^ 0xFFFF;
            if (v135 != (v136 * v135 + 0x8000 + ((v136 * v135 + 0x8000) >> 16)) >> 16)
            {
              v134 = *v49;
              v137 = ((v135 - ((v136 * v135 + 0x8000 + ((v136 * v135 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v134) - ((WORD2(v134) * v136 + 0x8000 + ((WORD2(v134) * v136 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v136 + 0x8000 + ((*v49 * v136 + 0x8000) >> 16)) >> 16)) | ((WORD1(v134) - ((WORD1(v134) * v136 + 0x8000 + ((WORD1(v134) * v136 + 0x8000) >> 16)) >> 16)) << 16);
              v138 = *v28;
              if (v371)
              {
                v139 = HIWORD(v138);
                if (!HIWORD(v138))
                {
                  goto LABEL_157;
                }
              }

              else
              {
                LODWORD(v139) = 0xFFFF;
              }

              v137 = PDAscreenPDA_15237(v138, v139, v137, (v135 - ((v136 * v135 + 0x8000 + ((v136 * v135 + 0x8000) >> 16)) >> 16)));
LABEL_157:
              *v28 = v137;
            }
          }

LABEL_158:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v131)
          {
            goto LABEL_449;
          }
        }

      case 15:
        v206 = v3;
        v113 = v38;
        while (1)
        {
          v207 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v208 = *v113 * v207 + ((*v113 * v207) >> 8) + 1;
              if (v208 < 0x100)
              {
                goto LABEL_250;
              }

              v207 = v208 >> 8;
            }

            v210 = HIWORD(*v49);
            v211 = (v207 | (v207 << 8)) ^ 0xFFFF;
            if (v210 != (v211 * v210 + 0x8000 + ((v211 * v210 + 0x8000) >> 16)) >> 16)
            {
              v209 = *v49;
              v212 = ((v210 - ((v211 * v210 + 0x8000 + ((v211 * v210 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v209) - ((WORD2(v209) * v211 + 0x8000 + ((WORD2(v209) * v211 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v211 + 0x8000 + ((*v49 * v211 + 0x8000) >> 16)) >> 16)) | ((WORD1(v209) - ((WORD1(v209) * v211 + 0x8000 + ((WORD1(v209) * v211 + 0x8000) >> 16)) >> 16)) << 16);
              v213 = *v28;
              if (v371)
              {
                v214 = HIWORD(v213);
                if (!HIWORD(v213))
                {
                  goto LABEL_249;
                }
              }

              else
              {
                LODWORD(v214) = 0xFFFF;
              }

              v212 = PDAoverlayPDA_15238(v213, v214, v212, (v210 - ((v211 * v210 + 0x8000 + ((v211 * v210 + 0x8000) >> 16)) >> 16)));
LABEL_249:
              *v28 = v212;
            }
          }

LABEL_250:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v206)
          {
            goto LABEL_449;
          }
        }

      case 16:
        v122 = v3;
        v113 = v38;
        while (1)
        {
          v123 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v124 = *v113 * v123 + ((*v113 * v123) >> 8) + 1;
              if (v124 < 0x100)
              {
                goto LABEL_144;
              }

              v123 = v124 >> 8;
            }

            v126 = HIWORD(*v49);
            v127 = (v123 | (v123 << 8)) ^ 0xFFFF;
            if (v126 != (v127 * v126 + 0x8000 + ((v127 * v126 + 0x8000) >> 16)) >> 16)
            {
              v125 = *v49;
              v128 = ((v126 - ((v127 * v126 + 0x8000 + ((v127 * v126 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v125) - ((WORD2(v125) * v127 + 0x8000 + ((WORD2(v125) * v127 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v127 + 0x8000 + ((*v49 * v127 + 0x8000) >> 16)) >> 16)) | ((WORD1(v125) - ((WORD1(v125) * v127 + 0x8000 + ((WORD1(v125) * v127 + 0x8000) >> 16)) >> 16)) << 16);
              v129 = *v28;
              if (v371)
              {
                v130 = HIWORD(v129);
                if (!HIWORD(v129))
                {
                  goto LABEL_143;
                }
              }

              else
              {
                LODWORD(v130) = 0xFFFF;
              }

              v128 = PDAdarkenPDA_15240(v129, v130, v128, (v126 - ((v127 * v126 + 0x8000 + ((v127 * v126 + 0x8000) >> 16)) >> 16)));
LABEL_143:
              *v28 = v128;
            }
          }

LABEL_144:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v122)
          {
            goto LABEL_449;
          }
        }

      case 17:
        v230 = v3;
        v113 = v38;
        while (1)
        {
          v231 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v232 = *v113 * v231 + ((*v113 * v231) >> 8) + 1;
              if (v232 < 0x100)
              {
                goto LABEL_299;
              }

              v231 = v232 >> 8;
            }

            v234 = HIWORD(*v49);
            v235 = (v231 | (v231 << 8)) ^ 0xFFFF;
            if (v234 != (v235 * v234 + 0x8000 + ((v235 * v234 + 0x8000) >> 16)) >> 16)
            {
              v233 = *v49;
              v236 = ((v234 - ((v235 * v234 + 0x8000 + ((v235 * v234 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v233) - ((WORD2(v233) * v235 + 0x8000 + ((WORD2(v233) * v235 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v235 + 0x8000 + ((*v49 * v235 + 0x8000) >> 16)) >> 16)) | ((WORD1(v233) - ((WORD1(v233) * v235 + 0x8000 + ((WORD1(v233) * v235 + 0x8000) >> 16)) >> 16)) << 16);
              v237 = *v28;
              if (v371)
              {
                v238 = HIWORD(v237);
                if (!HIWORD(v237))
                {
                  goto LABEL_298;
                }
              }

              else
              {
                LODWORD(v238) = 0xFFFF;
              }

              v236 = PDAlightenPDA_15239(v237, v238, v236, (v234 - ((v235 * v234 + 0x8000 + ((v235 * v234 + 0x8000) >> 16)) >> 16)));
LABEL_298:
              *v28 = v236;
            }
          }

LABEL_299:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v230)
          {
            goto LABEL_449;
          }
        }

      case 18:
        v279 = v3;
        v113 = v38;
        while (1)
        {
          v280 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v281 = *v113 * v280 + ((*v113 * v280) >> 8) + 1;
              if (v281 < 0x100)
              {
                goto LABEL_374;
              }

              v280 = v281 >> 8;
            }

            v283 = HIWORD(*v49);
            v284 = (v280 | (v280 << 8)) ^ 0xFFFF;
            if (v283 != (v284 * v283 + 0x8000 + ((v284 * v283 + 0x8000) >> 16)) >> 16)
            {
              v282 = *v49;
              v285 = ((v283 - ((v284 * v283 + 0x8000 + ((v284 * v283 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v282) - ((WORD2(v282) * v284 + 0x8000 + ((WORD2(v282) * v284 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v284 + 0x8000 + ((*v49 * v284 + 0x8000) >> 16)) >> 16)) | ((WORD1(v282) - ((WORD1(v282) * v284 + 0x8000 + ((WORD1(v282) * v284 + 0x8000) >> 16)) >> 16)) << 16);
              v286 = *v28;
              if (v371)
              {
                v287 = HIWORD(v286);
                if (!HIWORD(v286))
                {
                  goto LABEL_373;
                }
              }

              else
              {
                LODWORD(v287) = 0xFFFF;
              }

              v285 = PDAcolordodgePDA_15241(v286, v287, v285, (v283 - ((v284 * v283 + 0x8000 + ((v284 * v283 + 0x8000) >> 16)) >> 16)));
LABEL_373:
              *v28 = v285;
            }
          }

LABEL_374:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v279)
          {
            goto LABEL_449;
          }
        }

      case 19:
        v309 = v3;
        v113 = v38;
        while (1)
        {
          v310 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v311 = *v113 * v310 + ((*v113 * v310) >> 8) + 1;
              if (v311 < 0x100)
              {
                goto LABEL_420;
              }

              v310 = v311 >> 8;
            }

            v313 = HIWORD(*v49);
            v314 = (v310 | (v310 << 8)) ^ 0xFFFF;
            if (v313 != (v314 * v313 + 0x8000 + ((v314 * v313 + 0x8000) >> 16)) >> 16)
            {
              v312 = *v49;
              v315 = ((v313 - ((v314 * v313 + 0x8000 + ((v314 * v313 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v312) - ((WORD2(v312) * v314 + 0x8000 + ((WORD2(v312) * v314 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v314 + 0x8000 + ((*v49 * v314 + 0x8000) >> 16)) >> 16)) | ((WORD1(v312) - ((WORD1(v312) * v314 + 0x8000 + ((WORD1(v312) * v314 + 0x8000) >> 16)) >> 16)) << 16);
              v316 = *v28;
              if (v371)
              {
                v317 = HIWORD(v316);
                if (!HIWORD(v316))
                {
                  goto LABEL_419;
                }
              }

              else
              {
                LODWORD(v317) = 0xFFFF;
              }

              v315 = PDAcolorburnPDA_15242(v316, v317, v315, (v313 - ((v314 * v313 + 0x8000 + ((v314 * v313 + 0x8000) >> 16)) >> 16)));
LABEL_419:
              *v28 = v315;
            }
          }

LABEL_420:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v309)
          {
            goto LABEL_449;
          }
        }

      case 20:
        v239 = v3;
        v113 = v38;
        while (1)
        {
          v240 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v241 = *v113 * v240 + ((*v113 * v240) >> 8) + 1;
              if (v241 < 0x100)
              {
                goto LABEL_313;
              }

              v240 = v241 >> 8;
            }

            v243 = HIWORD(*v49);
            v244 = (v240 | (v240 << 8)) ^ 0xFFFF;
            if (v243 != (v244 * v243 + 0x8000 + ((v244 * v243 + 0x8000) >> 16)) >> 16)
            {
              v242 = *v49;
              v245 = ((v243 - ((v244 * v243 + 0x8000 + ((v244 * v243 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v242) - ((WORD2(v242) * v244 + 0x8000 + ((WORD2(v242) * v244 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v244 + 0x8000 + ((*v49 * v244 + 0x8000) >> 16)) >> 16)) | ((WORD1(v242) - ((WORD1(v242) * v244 + 0x8000 + ((WORD1(v242) * v244 + 0x8000) >> 16)) >> 16)) << 16);
              v246 = *v28;
              if (v371)
              {
                v247 = HIWORD(v246);
                if (!HIWORD(v246))
                {
                  goto LABEL_312;
                }
              }

              else
              {
                LODWORD(v247) = 0xFFFF;
              }

              v245 = PDAsoftlightPDA_15244(v246, v247, v245, (v243 - ((v244 * v243 + 0x8000 + ((v244 * v243 + 0x8000) >> 16)) >> 16)));
LABEL_312:
              *v28 = v245;
            }
          }

LABEL_313:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v239)
          {
            goto LABEL_449;
          }
        }

      case 21:
        v256 = v3;
        v113 = v38;
        while (1)
        {
          v257 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v258 = *v113 * v257 + ((*v113 * v257) >> 8) + 1;
              if (v258 < 0x100)
              {
                goto LABEL_335;
              }

              v257 = v258 >> 8;
            }

            v260 = HIWORD(*v49);
            v261 = (v257 | (v257 << 8)) ^ 0xFFFF;
            if (v260 != (v261 * v260 + 0x8000 + ((v261 * v260 + 0x8000) >> 16)) >> 16)
            {
              v259 = *v49;
              v262 = ((v260 - ((v261 * v260 + 0x8000 + ((v261 * v260 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v259) - ((WORD2(v259) * v261 + 0x8000 + ((WORD2(v259) * v261 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v261 + 0x8000 + ((*v49 * v261 + 0x8000) >> 16)) >> 16)) | ((WORD1(v259) - ((WORD1(v259) * v261 + 0x8000 + ((WORD1(v259) * v261 + 0x8000) >> 16)) >> 16)) << 16);
              v263 = *v28;
              if (v371)
              {
                v264 = HIWORD(v263);
                if (!HIWORD(v263))
                {
                  goto LABEL_334;
                }
              }

              else
              {
                LODWORD(v264) = 0xFFFF;
              }

              v262 = PDAhardlightPDA_15243(v263, v264, v262, (v260 - ((v261 * v260 + 0x8000 + ((v261 * v260 + 0x8000) >> 16)) >> 16)));
LABEL_334:
              *v28 = v262;
            }
          }

LABEL_335:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v256)
          {
            goto LABEL_449;
          }
        }

      case 22:
        v300 = v3;
        v113 = v38;
        while (1)
        {
          v301 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v302 = *v113 * v301 + ((*v113 * v301) >> 8) + 1;
              if (v302 < 0x100)
              {
                goto LABEL_406;
              }

              v301 = v302 >> 8;
            }

            v304 = HIWORD(*v49);
            v305 = (v301 | (v301 << 8)) ^ 0xFFFF;
            if (v304 != (v305 * v304 + 0x8000 + ((v305 * v304 + 0x8000) >> 16)) >> 16)
            {
              v303 = *v49;
              v306 = ((v304 - ((v305 * v304 + 0x8000 + ((v305 * v304 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v303) - ((WORD2(v303) * v305 + 0x8000 + ((WORD2(v303) * v305 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v305 + 0x8000 + ((*v49 * v305 + 0x8000) >> 16)) >> 16)) | ((WORD1(v303) - ((WORD1(v303) * v305 + 0x8000 + ((WORD1(v303) * v305 + 0x8000) >> 16)) >> 16)) << 16);
              v307 = *v28;
              if (v371)
              {
                v308 = HIWORD(v307);
                if (!HIWORD(v307))
                {
                  goto LABEL_405;
                }
              }

              else
              {
                LODWORD(v308) = 0xFFFF;
              }

              v306 = PDAdifferencePDA_15245(v307, v308, v306, (v304 - ((v305 * v304 + 0x8000 + ((v305 * v304 + 0x8000) >> 16)) >> 16)));
LABEL_405:
              *v28 = v306;
            }
          }

LABEL_406:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v300)
          {
            goto LABEL_449;
          }
        }

      case 23:
        v318 = v3;
        v113 = v38;
        while (1)
        {
          v319 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v320 = *v113 * v319 + ((*v113 * v319) >> 8) + 1;
              if (v320 < 0x100)
              {
                goto LABEL_434;
              }

              v319 = v320 >> 8;
            }

            v322 = HIWORD(*v49);
            v323 = (v319 | (v319 << 8)) ^ 0xFFFF;
            if (v322 != (v323 * v322 + 0x8000 + ((v323 * v322 + 0x8000) >> 16)) >> 16)
            {
              v321 = *v49;
              v324 = ((v322 - ((v323 * v322 + 0x8000 + ((v323 * v322 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v321) - ((WORD2(v321) * v323 + 0x8000 + ((WORD2(v321) * v323 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v323 + 0x8000 + ((*v49 * v323 + 0x8000) >> 16)) >> 16)) | ((WORD1(v321) - ((WORD1(v321) * v323 + 0x8000 + ((WORD1(v321) * v323 + 0x8000) >> 16)) >> 16)) << 16);
              v325 = *v28;
              if (v371)
              {
                v326 = HIWORD(v325);
                if (!HIWORD(v325))
                {
                  goto LABEL_433;
                }
              }

              else
              {
                LODWORD(v326) = 0xFFFF;
              }

              v324 = PDAexclusionPDA_15246(v325, v326, v324, (v322 - ((v323 * v322 + 0x8000 + ((v323 * v322 + 0x8000) >> 16)) >> 16)));
LABEL_433:
              *v28 = v324;
            }
          }

LABEL_434:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v318)
          {
            goto LABEL_449;
          }
        }

      case 24:
        v184 = v3;
        v113 = v38;
        while (1)
        {
          v185 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v186 = *v113 * v185 + ((*v113 * v185) >> 8) + 1;
              if (v186 < 0x100)
              {
                goto LABEL_222;
              }

              v185 = v186 >> 8;
            }

            v188 = HIWORD(*v49);
            v189 = (v185 | (v185 << 8)) ^ 0xFFFF;
            if (v188 != (v189 * v188 + 0x8000 + ((v189 * v188 + 0x8000) >> 16)) >> 16)
            {
              v187 = *v49;
              v190 = ((v188 - ((v189 * v188 + 0x8000 + ((v189 * v188 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v187) - ((WORD2(v187) * v189 + 0x8000 + ((WORD2(v187) * v189 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v189 + 0x8000 + ((*v49 * v189 + 0x8000) >> 16)) >> 16)) | ((WORD1(v187) - ((WORD1(v187) * v189 + 0x8000 + ((WORD1(v187) * v189 + 0x8000) >> 16)) >> 16)) << 16);
              v191 = *v28;
              if (v371)
              {
                v192 = HIWORD(v191);
                if (!HIWORD(v191))
                {
                  goto LABEL_221;
                }
              }

              else
              {
                LODWORD(v192) = 0xFFFF;
              }

              v190 = PDAhuePDA_15247(v191, v192, v190, (v188 - ((v189 * v188 + 0x8000 + ((v189 * v188 + 0x8000) >> 16)) >> 16)));
LABEL_221:
              *v28 = v190;
            }
          }

LABEL_222:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v184)
          {
            goto LABEL_449;
          }
        }

      case 25:
        v175 = v3;
        v113 = v38;
        while (1)
        {
          v176 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v177 = *v113 * v176 + ((*v113 * v176) >> 8) + 1;
              if (v177 < 0x100)
              {
                goto LABEL_208;
              }

              v176 = v177 >> 8;
            }

            v179 = HIWORD(*v49);
            v180 = (v176 | (v176 << 8)) ^ 0xFFFF;
            if (v179 != (v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16)
            {
              v178 = *v49;
              v181 = ((v179 - ((v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v178) - ((WORD2(v178) * v180 + 0x8000 + ((WORD2(v178) * v180 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v180 + 0x8000 + ((*v49 * v180 + 0x8000) >> 16)) >> 16)) | ((WORD1(v178) - ((WORD1(v178) * v180 + 0x8000 + ((WORD1(v178) * v180 + 0x8000) >> 16)) >> 16)) << 16);
              v182 = *v28;
              if (v371)
              {
                v183 = HIWORD(v182);
                if (!HIWORD(v182))
                {
                  goto LABEL_207;
                }
              }

              else
              {
                LODWORD(v183) = 0xFFFF;
              }

              v181 = PDAsaturationPDA_15248(v182, v183, v181, (v179 - ((v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16)));
LABEL_207:
              *v28 = v181;
            }
          }

LABEL_208:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v175)
          {
            goto LABEL_449;
          }
        }

      case 26:
        v327 = v3;
        v113 = v38;
        while (1)
        {
          v328 = *v50;
          if (*v50)
          {
            if (v38)
            {
              v329 = *v113 * v328 + ((*v113 * v328) >> 8) + 1;
              if (v329 < 0x100)
              {
                goto LABEL_448;
              }

              v328 = v329 >> 8;
            }

            v331 = HIWORD(*v49);
            v332 = (v328 | (v328 << 8)) ^ 0xFFFF;
            if (v331 != (v332 * v331 + 0x8000 + ((v332 * v331 + 0x8000) >> 16)) >> 16)
            {
              v330 = *v49;
              v333 = ((v331 - ((v332 * v331 + 0x8000 + ((v332 * v331 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v330) - ((WORD2(v330) * v332 + 0x8000 + ((WORD2(v330) * v332 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v332 + 0x8000 + ((*v49 * v332 + 0x8000) >> 16)) >> 16)) | ((WORD1(v330) - ((WORD1(v330) * v332 + 0x8000 + ((WORD1(v330) * v332 + 0x8000) >> 16)) >> 16)) << 16);
              v334 = *v28;
              if (v371)
              {
                v335 = HIWORD(v334);
                if (!HIWORD(v334))
                {
                  goto LABEL_447;
                }
              }

              else
              {
                LODWORD(v335) = 0xFFFF;
              }

              v333 = PDAluminosityPDA_15249(v333, (v331 - ((v332 * v331 + 0x8000 + ((v332 * v331 + 0x8000) >> 16)) >> 16)), v334, v335);
LABEL_447:
              *v28 = v333;
            }
          }

LABEL_448:
          ++v50;
          v49 += 8;
          v113 += v38 != 0;
          ++v28;
          if (!--v327)
          {
            goto LABEL_449;
          }
        }

      case 27:
        v112 = v3;
        v113 = v38;
        break;
      default:
        goto LABEL_452;
    }

    break;
  }

  while (1)
  {
    v114 = *v50;
    if (*v50)
    {
      if (v38)
      {
        v115 = *v113 * v114 + ((*v113 * v114) >> 8) + 1;
        if (v115 < 0x100)
        {
          goto LABEL_130;
        }

        v114 = v115 >> 8;
      }

      v117 = HIWORD(*v49);
      v118 = (v114 | (v114 << 8)) ^ 0xFFFF;
      if (v117 != (v118 * v117 + 0x8000 + ((v118 * v117 + 0x8000) >> 16)) >> 16)
      {
        v116 = *v49;
        v119 = ((v117 - ((v118 * v117 + 0x8000 + ((v118 * v117 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v116) - ((WORD2(v116) * v118 + 0x8000 + ((WORD2(v116) * v118 + 0x8000) >> 16)) >> 16)) << 32) | (*v49 - ((*v49 * v118 + 0x8000 + ((*v49 * v118 + 0x8000) >> 16)) >> 16)) | ((WORD1(v116) - ((WORD1(v116) * v118 + 0x8000 + ((WORD1(v116) * v118 + 0x8000) >> 16)) >> 16)) << 16);
        v120 = *v28;
        if (v371)
        {
          v121 = HIWORD(v120);
          if (!HIWORD(v120))
          {
            goto LABEL_129;
          }
        }

        else
        {
          LODWORD(v121) = 0xFFFF;
        }

        v119 = PDAluminosityPDA_15249(v120, v121, v119, (v117 - ((v118 * v117 + 0x8000 + ((v118 * v117 + 0x8000) >> 16)) >> 16)));
LABEL_129:
        *v28 = v119;
      }
    }

LABEL_130:
    ++v50;
    v49 += 8;
    v113 += v38 != 0;
    ++v28;
    if (!--v112)
    {
LABEL_449:
      v38 = &v113[v360];
      v28 += v361;
      v39 = v363;
      goto LABEL_450;
    }
  }
}

int *rgba64_DM(int *result, unint64_t a2, int a3)
{
  v3 = HIWORD(a2) * (a3 ^ 0xFFFF) + 0x8000;
  *result = (a2 - ((a2 * (a3 ^ 0xFFFF) + 0x8000 + ((a2 * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((WORD1(a2) - ((WORD1(a2) * (a3 ^ 0xFFFF) + 0x8000 + ((WORD1(a2) * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) << 16);
  result[1] = (WORD2(a2) - ((WORD2(a2) * (a3 ^ 0xFFFF) + 0x8000 + ((WORD2(a2) * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((HIWORD(a2) - ((v3 + HIWORD(v3)) >> 16)) << 16);
  return result;
}

_DWORD *rgba64_DMplusDM(_DWORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
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

  *result = (((v6 + 0x8000) >> 16) + v6 + 0x8000) & 0xFFFF0000 | ((((v5 + 0x8000) >> 16) + v5 + 0x8000) >> 16);
  result[1] = (((v8 + 0x8000) >> 16) + v8 + 0x8000) & 0xFFFF0000 | ((((v7 + 0x8000) >> 16) + v7 + 0x8000) >> 16);
  return result;
}

uint16x4_t rgba64_DplusDM(uint16x4_t *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = vqadd_u16(a2, (((HIWORD(a3) * a4 + 0x8000 + ((HIWORD(a3) * a4 + 0x8000) >> 16)) >> 16 << 48) | (((WORD2(a3) * a4 + 0x8000 + ((WORD2(a3) * a4 + 0x8000) >> 16)) >> 16) << 32) | (WORD1(a3) * a4 + 0x8000 + ((WORD1(a3) * a4 + 0x8000) >> 16)) & 0xFFFF0000 | ((a3 * a4 + 0x8000 + ((a3 * a4 + 0x8000) >> 16)) >> 16)));
  *a1 = result;
  return result;
}

int8x8_t rgba64_DAplusdDA(int8x8_t *a1, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = vshlq_u64(vdupq_n_s64(a2), xmmword_18439CD60);
  v6 = vshlq_u64(vdupq_n_s64(a4), xmmword_18439CD60);
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
    v11 = -1;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >= 0xFFFF)
  {
    v10 = 0xFFFFLL;
  }

  if (v9 >= v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v10 - v11);
  }

  v13.i64[0] = 0xFFFFLL;
  v13.i64[1] = 0xFFFFLL;
  v14 = vaddq_s64(vqsubq_u64(vdupq_n_s64(a5), vandq_s8(v6, v13)), vqsubq_u64(vdupq_n_s64(a3), vandq_s8(v5, v13)));
  v15 = vbslq_s8(vcgtq_u64(v13, v14), v14, v13);
  v16 = vdupq_n_s64(v10);
  *v14.i8 = vmovn_s64(vcgtq_u64(v16, v14));
  *v15.i8 = vmovn_s64(vsubq_s64(v16, v15));
  v16.i32[0] = vshl_n_s32(*v15.i8, 0x10uLL).u32[0];
  v16.i32[1] = v15.u16[2];
  v15.i32[0] = v12;
  v15.i32[1] = v10 << 16;
  result = vorr_s8(vand_s8(*v16.i8, *v14.i8), *v15.i8);
  *a1 = result;
  return result;
}

_DWORD *rgba64_DpluslD(_DWORD *result, unint64_t a2, unint64_t a3)
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

  *result = v3 | (v4 << 16);
  result[1] = v5 | (v6 << 16);
  return result;
}

unint64_t PDAmultiplyPDA_15236(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = ((a4 ^ 0xFFFF) + a3) * a1;
  v5 = ((a4 ^ 0xFFFF) + WORD2(a3)) * WORD2(a1);
  v6 = ((a4 ^ 0xFFFF) + WORD1(a3)) * WORD1(a1);
  if (a2 != 0xFFFF)
  {
    v6 += WORD1(a3) * (a2 ^ 0xFFFF);
    v5 += WORD2(a3) * (a2 ^ 0xFFFF);
    v4 += a3 * (a2 ^ 0xFFFF);
  }

  v7 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 0xFFFE8000)
  {
    v8 = v4 + 0x8000;
  }

  else
  {
    v8 = 4294868992;
  }

  v9 = ((v8 >> 16) + v8) >> 16;
  if (v6 <= 0xFFFE8000)
  {
    v10 = v6 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  v11 = (v10 >> 16) + v10;
  if (v7 <= 4294868992)
  {
    v12 = v7 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = ((v12 >> 16) + v12) >> 16;
  v14 = (65537 * v5 + 2147516416u) & 0xFFFF00000000;
  v15 = v5 > 0xFFFE8000;
  v16 = 0xFFFF00000000;
  if (!v15)
  {
    v16 = v14;
  }

  return v16 & 0xFFFFFFFFFFFFLL | (v13 << 48) | v11 & 0xFFFF0000 | v9;
}

unint64_t PDAscreenPDA_15237(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3 * (a1 ^ 0xFFFFu) - a1 + (a1 << 16);
  v5 = WORD1(a3) * (WORD1(a1) ^ 0xFFFFu) - WORD1(a1) + (WORD1(a1) << 16);
  v6 = WORD2(a3) * (WORD2(a1) ^ 0xFFFFu) - WORD2(a1) + (WORD2(a1) << 16);
  v7 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 0xFFFE8000)
  {
    v8 = v4 + 0x8000;
  }

  else
  {
    v8 = 4294868992;
  }

  v9 = v8 + (v8 >> 16);
  if (v5 <= 0xFFFE8000)
  {
    v10 = v5 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  v11 = (v10 >> 16) + v10;
  if (v7 <= 4294868992)
  {
    v12 = v7 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = ((v12 >> 16) + v12) >> 16;
  v14 = (65537 * v6 + 2147516416u) & 0xFFFF00000000;
  v15 = v6 > 0xFFFE8000;
  v16 = 0xFFFF00000000;
  if (!v15)
  {
    v16 = v14;
  }

  return v16 & 0xFFFFFFFFFFFFLL | (v9 >> 16) | v11 & 0xFFFF0000 | (v13 << 48);
}

unint64_t PDAoverlayPDA_15238(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = WORD1(a1);
  v5 = WORD2(a1);
  v6 = a3;
  v7 = WORD1(a3);
  v8 = WORD2(a3);
  if (a3 >= a4)
  {
    v6 = a4;
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = 2 * v9 * v6;
  if (v7 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (v4 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v4;
  }

  if (v8 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v8;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v14 = a4 * a2;
  v15 = (a2 + 1) >> 1;
  if (v9 >= v15)
  {
    v16 = (a4 + 0xFFFF) * v9 + v6 * (a2 + 0xFFFF) - (v14 + v10);
  }

  else
  {
    v16 = v6 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v9 + v10;
  }

  v17 = 2 * v12 * v11;
  if (v12 >= v15)
  {
    v18 = (a4 + 0xFFFF) * v12 + v11 * (a2 + 0xFFFF) - (v14 + v17);
  }

  else
  {
    v18 = v11 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v12 + v17;
  }

  v19 = 2 * v5 * v13;
  if (v5 >= v15)
  {
    v20 = (a4 + 0xFFFF) * v5 + v13 * (a2 + 0xFFFF) - (v14 + v19);
  }

  else
  {
    v20 = v13 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v5 + v19;
  }

  v21 = 0xFFFF * (a4 + a2) - v14;
  v22 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v22 = 4294868992;
  }

  v23 = ((v22 >> 16) + v22) >> 16;
  v24 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v21 <= 4294868992)
  {
    v26 = v21 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28 = 0xFFFF00000000;
  if (v20 <= 4294868992)
  {
    v28 = (65537 * v20 + 2147516416) & 0xFFFF00000000;
  }

  return (v23 | (v27 << 32)) & 0xFFFF00000000FFFFLL | v25 & 0xFFFF0000 | v28;
}

unint64_t PDAlightenPDA_15239(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  v8 = WORD1(a3);
  v9 = WORD2(a3);
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v7 * a2 > v10)
  {
    v10 = v7 * a2;
  }

  if (WORD1(a3) >= a4)
  {
    v8 = a4;
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = v5 * a4;
  if (v8 * a2 > v11)
  {
    v11 = v8 * a2;
  }

  if (WORD2(a3) >= a4)
  {
    v9 = a4;
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = v6 * a4;
  if (v9 * a2 > v12)
  {
    v12 = v9 * a2;
  }

  v13 = v10 + (a4 ^ 0xFFFF) * v4;
  v14 = v11 + (a4 ^ 0xFFFF) * v5;
  v15 = v12 + (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v14 = v11;
    v15 = v12;
    v13 = v10;
  }

  v16 = v13 + v7 * (a2 ^ 0xFFFF);
  v17 = v14 + v8 * (a2 ^ 0xFFFF);
  v18 = v15 + v9 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v14 = v17;
    v15 = v18;
    v13 = v16;
  }

  v19 = 0xFFFF * (a4 + a2) - a4 * a2;
  v20 = v13 + 0x8000;
  if (v13 > 0xFFFE8000)
  {
    v20 = 4294868992;
  }

  v21 = ((v20 >> 16) + v20) >> 16;
  v22 = v14 + 0x8000;
  if (v14 > 0xFFFE8000)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  if (v19 <= 4294868992)
  {
    v24 = v19 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = ((v24 >> 16) + v24) >> 16;
  v26 = (65537 * v15 + 2147516416u) & 0xFFFF00000000;
  if (v15 > 0xFFFE8000)
  {
    v26 = 0xFFFF00000000;
  }

  return v26 & 0xFFFFFFFFFFFFLL | (v25 << 48) | v23 & 0xFFFF0000 | v21;
}

unint64_t PDAdarkenPDA_15240(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  v8 = WORD1(a3);
  v9 = WORD2(a3);
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v7 * a2 < v10)
  {
    v10 = v7 * a2;
  }

  if (WORD1(a3) >= a4)
  {
    v8 = a4;
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = v5 * a4;
  if (v8 * a2 < v11)
  {
    v11 = v8 * a2;
  }

  if (WORD2(a3) >= a4)
  {
    v9 = a4;
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = v6 * a4;
  if (v9 * a2 < v12)
  {
    v12 = v9 * a2;
  }

  v13 = v10 + (a4 ^ 0xFFFF) * v4;
  v14 = v11 + (a4 ^ 0xFFFF) * v5;
  v15 = v12 + (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v14 = v11;
    v15 = v12;
    v13 = v10;
  }

  v16 = v13 + v7 * (a2 ^ 0xFFFF);
  v17 = v14 + v8 * (a2 ^ 0xFFFF);
  v18 = v15 + v9 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v14 = v17;
    v15 = v18;
    v13 = v16;
  }

  v19 = 0xFFFF * (a4 + a2) - a4 * a2;
  v20 = v13 + 0x8000;
  if (v13 > 0xFFFE8000)
  {
    v20 = 4294868992;
  }

  v21 = ((v20 >> 16) + v20) >> 16;
  v22 = v14 + 0x8000;
  if (v14 > 0xFFFE8000)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  if (v19 <= 4294868992)
  {
    v24 = v19 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = ((v24 >> 16) + v24) >> 16;
  v26 = (65537 * v15 + 2147516416u) & 0xFFFF00000000;
  if (v15 > 0xFFFE8000)
  {
    v26 = 0xFFFF00000000;
  }

  return v26 & 0xFFFFFFFFFFFFLL | (v25 << 48) | v23 & 0xFFFF0000 | v21;
}

unint64_t PDAcolordodgePDA_15241(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = WORD1(a1);
  v5 = 4294836225;
  v6 = WORD1(a3);
  v7 = a4 * a4;
  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (a3 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  if (v8)
  {
    v10 = 4294836225;
    if (a3 < a4)
    {
      v10 = (v7 * v8) / (a4 - v9);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = WORD2(a1);
  v12 = WORD2(a3);
  if (v4 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v4;
  }

  if (v6 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v6;
  }

  if (v13)
  {
    v15 = 4294836225;
    if (v6 < a4)
    {
      v15 = (v7 * v13) / (a4 - v14);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v11 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v11;
  }

  if (v12 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    if (v12 < a4)
    {
      v5 = (v7 * v16) / (a4 - v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = v10 + (a4 ^ 0xFFFF) * v8;
  v19 = v15 + (a4 ^ 0xFFFF) * v13;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
  }

  else
  {
    v5 += (a4 ^ 0xFFFF) * v16;
  }

  if (a4 == 0xFFFF)
  {
    v18 = v10;
  }

  v20 = v18 + v9 * (a2 ^ 0xFFFF);
  v21 = v19 + v14 * (a2 ^ 0xFFFF);
  if (a2 == 0xFFFF)
  {
    v21 = v19;
  }

  else
  {
    v5 += v17 * (a2 ^ 0xFFFF);
  }

  if (a2 == 0xFFFF)
  {
    v20 = v18;
  }

  v22 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v20 >= v22)
  {
    v23 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v23 = v20;
  }

  if (v21 >= v22)
  {
    v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v24 = v21;
  }

  if (v5 >= v22)
  {
    v5 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v24 <= 4294868992)
  {
    v25 = v24 + 0x8000;
  }

  else
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  if (v23 <= 4294868992)
  {
    v27 = v23 + 0x8000;
  }

  else
  {
    v27 = 4294868992;
  }

  v28 = ((v27 >> 16) + v27) >> 16;
  if (v22 <= 4294868992)
  {
    v29 = v22 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = ((v29 >> 16) + v29) >> 16;
  v31 = (65537 * v5 + 2147516416) & 0xFFFF00000000;
  v32 = v5 <= 4294868992;
  v33 = 0xFFFF00000000;
  if (v32)
  {
    v33 = v31;
  }

  return v33 & 0xFFFFFFFFFFFFLL | (v30 << 48) | v26 & 0xFFFF0000 | v28;
}