uint64_t CGGStateSetContentToneMappingInfo(uint64_t a1, int a2, CFTypeRef cf2)
{
  v3 = cf2;
  v6 = *(a1 + 120);
  if (*(v6 + 56) != a2 || ((result = *(v6 + 64)) == 0 ? (v8 = cf2 == 0) : (v8 = 0), !v8 && (result ? (v9 = cf2 == 0) : (v9 = 1), v9 || (result = CFEqual(result, cf2), !result))))
  {
    maybeCopyRenderingState(a1);
    v10 = *(a1 + 120);
    *(v10 + 56) = a2;
    if (v3)
    {
      v3 = CFRetain(v3);
      v10 = *(a1 + 120);
    }

    v11 = *(v10 + 64);
    if (v11)
    {
      CFRelease(v11);
      v10 = *(a1 + 120);
    }

    *(v10 + 64) = v3;
    result = calculate_tone_mapping_info_hash(*(v10 + 56), v3, *(v10 + 48));
    *(*(a1 + 120) + 72) = result;
  }

  return result;
}

void CGGStateSetRenderingIntent(uint64_t result, int a2)
{
  if (a2 != (*(*(result + 120) + 4) << 12) >> 28)
  {
    v2 = a2;
    maybeCopyRenderingState(result);
    *(*(result + 120) + 4) = *(*(result + 120) + 4) & 0xFFF0FFFF | ((v2 & 0xF) << 16);
  }
}

void CGGStateSetTextDrawingMode(uint64_t a1, int a2)
{
  if (*(*(a1 + 136) + 1) != a2)
  {
    v2 = a2;
    maybe_copy_text_state(a1);
    *(*(a1 + 136) + 1) = v2;
  }
}

void draw_glyph_bitmaps(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, __int16 *a7, uint64_t a8, uint64_t a9)
{
  v73 = a1;
  v74 = a3;
  v81 = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1EEE9AC00](8 * a9);
  v18 = &v57 - v17;
  if (v16 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v19 = &v57 - v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v15;
  if (v16 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000102)
  {
    v19 = malloc_type_malloc(v14, 0xB622E253uLL);
  }

  v79 = 0;
  v80 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  if (v19)
  {
    v71 = v18;
    v70 = a2;
    v72 = &v57;
    v21 = MEMORY[0x1EEE9AC00](4 * a9);
    v24 = &v57 - v23;
    if (v22 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v25 = &v57 - v23;
    }

    else
    {
      v25 = 0;
    }

    if (v22 - 0x3FFFFFFFFFFFFFFFLL >= 0xC000000000000102)
    {
      v25 = malloc_type_malloc(v21, 0x9D2B6113uLL);
    }

    if (v25)
    {
      v68 = v24;
      v26 = v74;
      v27 = *(v74 + 136);
      v28 = *(v27 + 16);
      v29 = *(a6 + 32);
      v30 = vmulq_n_f64(*a6, v28);
      v31 = vmulq_n_f64(*(a6 + 16), v28);
      v75 = v30;
      v76 = v31;
      v77 = v29;
      v32 = *(v27 + 88);
      v67 = v20;
      QuantizationLevelWithStyle = CGFontGetQuantizationLevelWithStyle(&v75, v20, v32);
      v78 = QuantizationLevelWithStyle;
      CGFontGetGlyphIdentifiers(a7, a6, a8, a9, &v78, v25, v19, &v79);
      v34 = *(v26 + 136);
      v35 = *(v34 + 8);
      v36 = a4[6];
      v37 = a4[7];
      v38 = a4[8];
      v39 = a4[9];
      v40 = v79.i32[0];
      v41 = v79.i32[1];
      v42 = v80;
      v43 = HIDWORD(v80);
      v44 = v80;
      v45 = SHIDWORD(v80);
      v82.origin.x = v36;
      v82.origin.y = v37;
      v82.size.width = v38;
      v82.size.height = v39;
      v96.origin.x = v79.i32[0];
      v96.origin.y = v79.i32[1];
      v96.size.width = v80;
      v96.size.height = SHIDWORD(v80);
      v46 = CGRectIntersectsRect(v82, v96);
      v47 = v67;
      v69 = v19;
      if (v46)
      {
        goto LABEL_22;
      }

      v62 = v37;
      v63 = v36;
      v57 = a4;
      v48 = QuantizationLevelWithStyle;
      v49 = v67;
      get_glyph_bounding_box(v35, &v75);
      v84 = CGRectIntegral(v83);
      x = v84.origin.x;
      y = v84.origin.y;
      width = v84.size.width;
      height = v84.size.height;
      v51 = v42 | v43;
      v52 = (v42 | v43) >> 31;
      v53 = v40;
      v54 = v41;
      if (v51 < 0)
      {
        v85.origin.x = v40;
        v85.origin.y = v41;
        v85.size.width = v44;
        v85.size.height = v43;
        *&v53 = CGRectStandardize(v85);
        v86.origin.x = v40;
        v86.origin.y = v41;
        v86.size.width = v44;
        v86.size.height = v43;
        v87 = CGRectStandardize(v86);
        v54 = v87.origin.y;
      }

      v88.origin.x = x;
      v88.origin.y = y;
      v88.size.width = width;
      v88.size.height = height;
      v89 = CGRectOffset(v88, v53, v54);
      v61 = v89.origin.x;
      v60 = v89.origin.y;
      v59 = v89.size.width;
      v58 = v89.size.height;
      if (v52)
      {
        v90.origin.x = v40;
        v90.origin.y = v41;
        v90.size.width = v44;
        v90.size.height = v43;
        v91 = CGRectStandardize(v90);
        v55 = v91.origin.x + v91.size.width;
        v91.origin.x = v40;
        v91.origin.y = v41;
        v91.size.width = v44;
        v91.size.height = v43;
        v92 = CGRectStandardize(v91);
        v41 = v92.origin.y;
        v45 = v92.size.height;
      }

      else
      {
        v55 = v40 + v44;
      }

      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      v97 = CGRectOffset(v93, v55, v41 + v45);
      v94.origin.x = v61;
      v94.origin.y = v60;
      v94.size.width = v59;
      v94.size.height = v58;
      v95 = CGRectUnion(v94, v97);
      v98.origin.x = v63;
      v98.origin.y = v62;
      v98.size.width = v38;
      v98.size.height = v39;
      if (CGRectIntersectsRect(v95, v98))
      {
        v34 = *(v74 + 136);
        v47 = v49;
        QuantizationLevelWithStyle = v48;
LABEL_22:
        CGGlyphBuilderCreate(v35, &v75, v47, QuantizationLevelWithStyle, *(v34 + 72), *(v34 + 80));
      }

      if (v25 != v68)
      {
        free(v25);
      }

      v56 = v71;
      v19 = v69;
    }

    else
    {
      v56 = v71;
    }

    if (v19 != v56)
    {
      free(v19);
    }
  }
}

unint64_t CGFontGetQuantizationLevelWithStyle(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = CGFontRenderingStyleStandardize(a2);
  if ((v5 & 4) == 0)
  {
    v6 = 1;
LABEL_5:
    v7 = v6;
    return v6 | (v7 << 32);
  }

  if ((v5 & 8) == 0)
  {
    v6 = 128;
    goto LABEL_5;
  }

  if (v5 > 0xFFF)
  {
    v7 = HIDWORD(a3);
    LODWORD(v6) = a3;
    return v6 | (v7 << 32);
  }

  if (CGFontGetQuantizationLevel_once != -1)
  {
    dispatch_once_f(&CGFontGetQuantizationLevel_once, 0, defaults_setup_21642);
  }

  v6 = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = QX;
  if (QX < 1)
  {
    goto LABEL_5;
  }

  v10 = QY;
  v7 = 0;
  if (QY >= 1)
  {
    if (*(a1 + 8) == 0.0 && *(a1 + 16) == 0.0)
    {
      v11 = *a1;
      v12 = *(a1 + 24);
      if ((*a1 == v12 || v11 == -v12) && ((v13 = v11 - 6, v11 == v11) ? (v14 = v13 > 0x12) : (v14 = 1), !v14))
      {
        v6 = scale_level[v13];
      }

      else
      {
        v15 = vcvtpd_s64_f64(1.0 / (fabs(v11) * 0.03));
        if (QX >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = QX;
        }

        if (v15 < 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = vcvtpd_s64_f64(1.0 / (fabs(v12) * 0.12));
        if (QY >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = QY;
        }

        v20 = v19 << 32;
        v14 = v18 < 1;
        v21 = 0x100000000;
        if (!v14)
        {
          v21 = v20;
        }

        v6 = v21 | v17;
      }

      v7 = HIDWORD(v6);
    }

    else
    {
      v22 = *(a1 + 16);
      *&v23.a = *a1;
      *&v23.c = v22;
      *&v23.tx = *(a1 + 32);
      CGAffineTransformInvert(&v24, &v23);
      if (v9 < 2)
      {
        LODWORD(v6) = 1;
      }

      else
      {
        LODWORD(v6) = 1;
        while ((v24.d * 0.0 + v24.b * (1.0 / v6)) * (v24.d * 0.0 + v24.b * (1.0 / v6)) + (v24.c * 0.0 + v24.a * (1.0 / v6)) * (v24.c * 0.0 + v24.a * (1.0 / v6)) >= 0.0009)
        {
          LODWORD(v6) = v6 + 1;
          if (v9 == v6)
          {
            LODWORD(v6) = v9;
            break;
          }
        }
      }

      v7 = 1;
      if (v10 >= 2)
      {
        while ((v24.d * (1.0 / v7) + v24.b * 0.0) * (v24.d * (1.0 / v7) + v24.b * 0.0) + (v24.c * (1.0 / v7) + v24.a * 0.0) * (v24.c * (1.0 / v7) + v24.a * 0.0) >= 0.0144)
        {
          v7 = (v7 + 1);
          if (v10 == v7)
          {
            v7 = v10;
            return v6 | (v7 << 32);
          }
        }
      }
    }
  }

  return v6 | (v7 << 32);
}

uint64_t ripc_GetRenderingState(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v319 = *MEMORY[0x1E69E9840];
  result = *(a1 + 48);
  if (!result)
  {
    return result;
  }

  v9 = *(v4 + 72);
  (*(*result + 88))(result, v4 + 40);
  v10 = *(a3 + 112);
  v11 = *(*(a3 + 120) + 40);
  if (v10)
  {
    v12 = *(v10 + 4);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    v13 = *(v11 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (*(v9 + 1) == v13 && *v9 == v12)
  {
    goto LABEL_425;
  }

LABEL_11:
  v295 = 0uLL;
  if (v11)
  {
    v14 = *(v11 + 16);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_16:
    v15 = 0;
    if (a2)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_13:
  v15 = *(v10 + 4);
  if (a2)
  {
LABEL_14:
    v16 = *(a2 + 1);
    goto LABEL_20;
  }

LABEL_17:
  v17 = *(v4 + 8);
  if (v17)
  {
    v16 = *(v17 + 96);
  }

  else
  {
    v16 = 3;
  }

LABEL_20:
  v282 = v16;
  cf = a2;
  v9 = *(v4 + 72);
  if (!v9)
  {
    v9 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E004069811642uLL);
    *(v9 + 3) = v9 + 24;
    *(v9 + 4) = v9 + 24;
    *v9 = ~v15;
    *(v9 + 1) = ~v14;
    RIPLayerInitialize((v9 + 48));
    *(v9 + 19) |= 0x80u;
    *(v4 + 72) = v9;
  }

  v285 = a3;
  v297 = 0u;
  v298 = 0u;
  v296 = 0u;
  v294 = 0uLL;
  v18 = (*(**(v4 + 48) + 72))(*(v4 + 48), &v294);
  v20 = (v9 + 24);
  v21 = *(v9 + 4);
  v291 = v4;
  if (v21 == (v9 + 24))
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_84;
    }

    v278 = v11;
    v283 = a4;
    v22 = 0;
    __src = 0;
    v27 = 0.0;
    v26 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
LABEL_79:
    if (v10)
    {
      v25 = *(v10 + 120);
    }

    else
    {
      v25 = 0;
    }

LABEL_86:
    if (*(v9 + 10) >= 0x11u)
    {
      v53 = *(v9 + 3);
      RIPClipStateRemoveEntry(v9, v53);
      if (v22 == v53)
      {
        v22 = 0;
      }
    }

    v54 = malloc_type_malloc(4 * v25 + 104, 0x1020040C07062A1uLL);
    v29 = v54;
    *v54 = v54;
    *(v54 + 1) = v54;
    *(v54 + 4) = v14;
    *(v54 + 5) = v15;
    *(v54 + 24) = v294;
    *(v54 + 24) = v25;
    v49 = __src;
    if (__src)
    {
      *(v54 + 7) = v23;
      *(v54 + 8) = v24;
      *(v54 + 9) = v26;
      *(v54 + 10) = v27;
      if (v25)
      {
        memcpy(v54 + 100, __src, 4 * v25);
      }

      if (!v22)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v10)
      {
        v57 = (v10 + 16);
        p_y = (v10 + 24);
        p_size = (v10 + 32);
        p_height = (v10 + 40);
      }

      else
      {
        v57 = &CGRectInfinite;
        p_height = &CGRectInfinite.size.height;
        p_y = &CGRectInfinite.origin.y;
        p_size = &CGRectInfinite.size;
      }

      v61 = *p_height;
      v62 = *p_y;
      v63 = p_size->width;
      *(v54 + 7) = *&v57->origin.x;
      *(v54 + 8) = v62;
      *(v54 + 9) = v63;
      *(v54 + 10) = v61;
      ripc_GetClipStackData(v10, v25, v54 + 25, v25);
      if (!v22)
      {
        goto LABEL_100;
      }
    }

    v64 = v22[11];
    if (v64)
    {
      if (v64 == -1)
      {
LABEL_100:
        v29[11] = 0;
        v19 = v294;
LABEL_103:
        *(v29 + 5) = v19;
        v65 = *(v9 + 4);
        v66 = *v29;
        *(v9 + 4) = v29;
        *v29 = v20;
        *v65 = v66;
        *(v66 + 8) = v65;
        ++*(v9 + 10);
        a2 = cf;
        v67 = cf[81];
        v69 = *(v29 + 7);
        v68 = *(v29 + 8);
        v70 = *(v29 + 9);
        if (v69 == -8.98846567e307 && v68 == -8.98846567e307 && v70 == 1.79769313e308 && *(v29 + 10) == 1.79769313e308)
        {
          v274 = 0;
          v71 = v4;
          v72 = &v294;
          *(&v298 + 1) = &v294;
          v19.n128_u64[0] = *(v71 + 40);
        }

        else
        {
          v19.n128_u64[0] = *(v4 + 40);
          v73 = v19.n128_f64[0] * v69;
          v74 = v73 + v19.n128_f64[0] * v70;
          v75 = -4194303.0;
          if (v73 < -4194303.0)
          {
            v73 = -4194303.0;
          }

          if (v74 > 4194303.0)
          {
            v74 = 4194303.0;
          }

          if (v73 >= v74)
          {
            goto LABEL_133;
          }

          v76 = v19.n128_f64[0] * v68;
          if (v76 >= -4194303.0)
          {
            v75 = v76;
          }

          v77 = v76 + v19.n128_f64[0] * *(v29 + 10) <= 4194303.0 ? v76 + v19.n128_f64[0] * *(v29 + 10) : 4194303.0;
          if (v75 >= v77)
          {
            goto LABEL_133;
          }

          v78 = llround(v73 * 256.0);
          v79 = llround(v75 * 256.0);
          v80 = llround(v74 * 256.0);
          v81 = llround(v77 * 256.0);
          if ((v294.n128_u32[0] << 8) > v78)
          {
            v78 = v294.n128_u32[0] << 8;
          }

          if ((v294.n128_u32[1] << 8) > v79)
          {
            v79 = v294.n128_u32[1] << 8;
          }

          v82 = ((v294.n128_u32[2] + v294.n128_u32[0]) << 8) >= v80 ? v80 : (v294.n128_u32[2] + v294.n128_u32[0]) << 8;
          v83 = ((v294.n128_u32[1] + v294.n128_u32[3]) << 8) >= v81 ? v81 : (v294.n128_u32[1] + v294.n128_u32[3]) << 8;
          if (v78 >= v82 || v79 >= v83)
          {
LABEL_133:
            v85 = v29[11];
            if (v85)
            {
              (*(*v85 + 24))(v85);
            }

            v29[11] = 0;
            v29[5] = 0;
            v29[6] = 0;
LABEL_136:
            a4 = v283;
LABEL_416:
            if (v49 && v49 != __dst)
            {
              free(v49);
            }

            *(v9 + 1) = *(v29 + 4);
            *v9 = *(v29 + 5);
            v244 = v29[11];
            *(v9 + 1) = v244;
            if (v244)
            {
              if (v244 == -1)
              {
                *(v9 + 1) = 0;
                *(v9 + 2) = 0;
              }

              else
              {
                *(v9 + 2) = v29 + 5;
              }
            }

            else
            {
              RIPLayerReplace((v9 + 48), (v29 + 5), 0, 0, 0, 0, v19);
              *(v9 + 1) = v9 + 48;
              *(v9 + 2) = v29 + 5;
              v4 = v291;
            }

            a3 = v285;
LABEL_425:
            v245 = *(v9 + 1);
            *a4 = v245;
            if (v245)
            {
              v246 = *(v9 + 2);
              v247 = v246[1];
              if (v247 < 1 || HIDWORD(v246[1]) < 1)
              {
                return 0;
              }

              v249.i64[0] = *v246;
              *(a4 + 8) = *v246;
              *(a4 + 16) = v247;
              v249.i64[1] = v247;
            }

            else
            {
              result = (*(**(v4 + 48) + 72))(*(v4 + 48), a4 + 8);
              if (!result)
              {
                return result;
              }

              v249 = *(a4 + 8);
            }

            v250 = *(v4 + 80);
            v251 = *(*(a3 + 120) + 16);
            if (!v251)
            {
              if (v250)
              {
                if (*v250)
                {
                  v293 = v249;
                  (*(*v250 + 24))(*(v4 + 80));
                  v249 = v293;
                }

                v250 = 0;
                *(v4 + 80) = 0;
              }

              goto LABEL_454;
            }

            v252 = *(v251 + 16);
            v253 = *(a2 + 40);
            *&__s2.a = *(a2 + 24);
            *&__s2.c = v253;
            v254 = *(a2 + 56);
            *&__s2.tx = v254;
            v254.n128_u64[0] = *(v4 + 40);
            if (v254.n128_f64[0] != 1.0)
            {
              *&__s2.a = vmulq_n_f64(*&__s2.a, v254.n128_f64[0]);
              *&__s2.c = vmulq_n_f64(*&__s2.c, v254.n128_f64[0]);
              *&__s2.tx = vmulq_n_f64(*&__s2.tx, v254.n128_f64[0]);
            }

            v292 = v249;
            if (v250)
            {
              if (*(v250 + 16) == v251 && *(v250 + 24) == v252)
              {
                if ((*(v250 + 12) & 1) == 0)
                {
                  goto LABEL_447;
                }

                *__srca = v254;
                v255 = memcmp((v250 + 32), &__s2, 0x30uLL);
                v254 = *__srca;
                if (!v255)
                {
                  goto LABEL_447;
                }
              }

              if (*v250)
              {
                (*(*v250 + 24))(v250, v254);
                v254.n128_u64[0] = *(v4 + 40);
              }

              *(v4 + 80) = 0;
            }

            v256 = rips_Create(v254, &_rips_class, v251);
            v250 = v256;
            if (!v256)
            {
              goto LABEL_449;
            }

            *(v4 + 80) = v256;
            *(v256 + 16) = v251;
            *(v256 + 24) = v252;
            v257 = *&__s2.c;
            v254 = *&__s2.tx;
            *(v256 + 32) = *&__s2.a;
            *(v256 + 48) = v257;
            *(v256 + 64) = v254;
LABEL_447:
            if ((*(*v250 + 40))(v250, a4 + 24, v254))
            {
              v249 = vaddq_s32(*(a4 + 24), v292);
LABEL_454:
              *(a4 + 24) = v249;
              *(a4 + 40) = v250;
              ripc_InitializeColorTransform(v4);
              if (a2)
              {
                v258 = *(v4 + 48);
                if (v258)
                {
                  *(v258 + 52) = *(a2 + 1);
                }
              }

              return 1;
            }

LABEL_449:
            v249 = v292;
            goto LABEL_454;
          }

          v86 = ((v82 + 255) >> 8) - (v78 >> 8);
          v87 = ((v83 + 255) >> 8) - (v79 >> 8);
          v88 = ((((v82 + 255) & 0xFFFF00) - v82) << 8) | (v78 << 24) | v79 | ((((v83 + 255) & 0xFF00) - v83) << 16);
          v89 = v78 >> 8;
          v90 = v79 >> 8;
          if (!cf[81])
          {
            v88 = 0;
          }

          v274 = v88;
          v295.n128_u64[0] = __PAIR64__(v90, v89);
          v295.n128_u64[1] = __PAIR64__(v87, v86);
          v72 = &v295;
          *(&v298 + 1) = &v295;
          v71 = v291;
        }

        v297 = *(v71 + 24);
        *(&v296 + 1) = v19.n128_u64[0];
        if (v25 >= 1)
        {
          v91 = 0;
          v92 = v22 + 100;
          v93 = v29 + 100;
          v94 = (v10 + 128);
          v273 = v67;
          do
          {
            if (v22 && v91 < *(v22 + 24))
            {
              if (*(v92 + 4 * v91) == *&v93[4 * v91] || v10 == 0)
              {
                goto LABEL_223;
              }
            }

            else if (!v10)
            {
              goto LABEL_223;
            }

            if (*(v10 + 120) <= v91)
            {
              goto LABEL_223;
            }

            v96 = v94;
            if (*(v10 + 112) != 3)
            {
              v96 = (*(v10 + 128) + 8 * v91);
            }

            v97 = *v96;
            if (!*v96)
            {
              goto LABEL_223;
            }

            v19.n128_u64[0] = 1.0;
            if (*(v97 + 8) == 2)
            {
              v19.n128_u64[0] = *(v97 + 32);
            }

            *&v296 = v19.n128_u64[0];
            if (v67)
            {
              v98 = *(v97 + 10);
            }

            else
            {
              v98 = 0;
            }

            LOBYTE(v298) = v98 & 1;
            v99 = *(v97 + 8);
            v100 = v99;
            if (v100 > 2)
            {
              if (v100 != 3)
              {
                if (v100 != 4 || v99 != 4)
                {
                  goto LABEL_223;
                }

                v103 = *(v97 + 24);
                if (!v103)
                {
                  goto LABEL_223;
                }

                Path = CGTextClippingCreatePath(v103);
                v105 = *(v291 + 56);
                if (!v105)
                {
                  v105 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                  *v105 = RIPRenderCreate_ripr_class;
                  v105[2] = 1;
                  *(v105 + 2) = 0;
                  *(v291 + 56) = v105;
                }

                RIPRenderPath(v105, &v296, Path, 0);
                if (Path)
                {
                  CFRelease(Path);
                }

                v107 = 0;
                v108 = v291;
LABEL_215:
                v142 = RIPRenderCoverage(*(v108 + 56), 0, *(&v298 + 1), v107, v106);
                if (v142)
                {
                  v143 = v142;
                  v144 = v29[11];
                  if (v144)
                  {
                    RIPLayerIntersect(v142, v144);
                  }
                }

                else
                {
                  v143 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v282);
                }

                ripr_Finish(*(v291 + 56));
LABEL_220:
                v145 = v29[11];
                if (v145)
                {
                  (*(*v145 + 24))(v145);
                }

                goto LABEL_222;
              }

              if (v99 != 3)
              {
                goto LABEL_223;
              }

              v113 = *(v97 + 24);
              if (!v113)
              {
                goto LABEL_223;
              }

              v114 = *(v113 + 56);
              if (v114)
              {
                v302 = 0;
                v303 = 0;
                image = v114;
                if (ripc_GetImageSize(v114, &v303, &v302))
                {
                  width = v303;
                  v300 = v302;
                  v301 = v303;
                  height = v302;
                  v313 = 0u;
                  v314 = 0u;
                  v312 = 0u;
                  v115 = *(v113 + 8);
                  v116 = *(v113 + 40);
                  v313 = *(v113 + 24);
                  v314 = v116;
                  v117 = *(v291 + 40);
                  v312 = v115;
                  if (v117 != 1.0)
                  {
                    v312 = vmulq_n_f64(v312, v117);
                    v313 = vmulq_n_f64(v313, v117);
                    v314 = vmulq_n_f64(v314, v117);
                  }

                  v118 = *(v113 + 64);
                  v119 = *(v113 + 72);
                  v120 = *(v113 + 80);
                  v121 = *(v113 + 88);
                  if (v120 < 0.0 || v121 < 0.0)
                  {
                    *&v118 = CGRectStandardize(*&v118);
                  }

                  v122 = vmlaq_n_f64(vmulq_f64(v313, 0), v312, v120);
                  v123 = vmlaq_f64(vmulq_n_f64(v313, v121), 0, v312);
                  v124 = vmlaq_n_f64(vmulq_n_f64(v313, v119), v312, v118);
                  v312 = v122;
                  v313 = v123;
                  v314 = vaddq_f64(v314, v124);
                  v305 = 0uLL;
                  v304 = 0uLL;
                  v299[0] = 0;
                  v299[1] = 0;
                  ImageTransformation = ripc_GetImageTransformation(image, v72, width, height, 0, v312.f64, &v305, &v304, v299);
                  if (ImageTransformation)
                  {
                    RenderingIntent = CGImageGetRenderingIntent(image);
                    if (!RenderingIntent)
                    {
                      v126 = *(*(v285 + 120) + 4);
                      v127 = v126 << 12;
                      if (((v126 >> 20) & 0xF) != 0)
                      {
                        v128 = v126 << 8;
                      }

                      else
                      {
                        v128 = v126 << 12;
                      }

                      if (!(v128 >> 28))
                      {
                        v128 = v127;
                      }

                      RenderingIntent = v128 >> 28;
                    }

                    v264 = RenderingIntent;
                    if (ImageTransformation < 4)
                    {
                      v263 = 1;
                      goto LABEL_226;
                    }

                    ShouldInterpolate = CGImageGetShouldInterpolate(image);
                    ImageInterpolation = ripc_GetImageInterpolation(cf, *(*(v285 + 120) + 4), ShouldInterpolate);
                    v263 = ImageInterpolation;
                    if (ImageInterpolation >= 3)
                    {
                      v151 = ImageInterpolation;
                      if ((ImageTransformation & 2) != 0)
                      {
                        v152 = 0;
                      }

                      else
                      {
                        v152 = &v305;
                      }

                      if (ripc_GetImageInterpolationSize(v312.f64, &v301, &v300, v152))
                      {
                        v150 = v151;
                      }

                      else
                      {
                        v150 = 1;
                      }
                    }

                    else
                    {
LABEL_226:
                      v150 = 1;
                    }

                    v153 = CGBitmapContextCreateWithData(0, width, height, 8uLL, 0, 0, 7u, 0, 0);
                    CGContextErase(v153);
                    Delegate = CGContextGetDelegate(v153);
                    if (Delegate)
                    {
                      Delegate = *(Delegate + 288);
                    }

                    if ((ImageTransformation & 2) != 0)
                    {
                      v155 = 0;
                    }

                    else
                    {
                      v155 = &v305;
                    }

                    v156 = ripc_AcquireRIPImageData(Delegate, image, v301, v300, v155, 0, v150, v264);
                    if (v153)
                    {
                      CFRelease(v153);
                    }

                    if (v156)
                    {
                      if (cf[81] == 1 && (*(*(v285 + 120) + 7) & 1) != 0)
                      {
                        v157 = *(v291 + 108) | 0xFF00;
                      }

                      else
                      {
                        v157 = *(v291 + 108);
                      }

                      *(v291 + 108) = v157;
                      *(v291 + 108) = v157 & 0xFF00 | cf[82];
                      *(v291 + 112) = (*(*(v285 + 120) + 4) << 12) >> 28;
                      imagea = v156;
                      if (*(v156 + 4) && !*(v156 + 11))
                      {
                        v158 = RIPGetDepthForLayerFormat(1u);
                      }

                      else
                      {
                        v158 = 0;
                      }

                      v159 = RIPLayerCreate(RIPLayer_ripl_class, v299, 0, v158, *(cf + 1));
                      if (v159)
                      {
                        v143 = v159;
                        *&v309 = 0;
                        memset(&__s2, 0, sizeof(__s2));
                        *(v291 + 104) = 1;
                        if (ImageTransformation >= 4)
                        {
                          v162 = &v312;
                        }

                        else
                        {
                          v162 = 0;
                        }

                        *(v291 + 152) = 0x3FF0000000000000;
                        ripc_InitializeImage(&__s2, &v304, imagea, v263, width, height, v162, 0, 0.0, v160, v161);
                        RIPLayerBltImage(v143, 0, v299, &__s2, v291 + 104);
                        if (v158)
                        {
                          RIPLayerCoverage(v143);
                        }

                        ripc_ReleaseRIPImageData(imagea);
                        v163 = v29[11];
                        if (v163)
                        {
                          RIPLayerIntersect(v143, v163);
                          goto LABEL_220;
                        }

LABEL_222:
                        v29[11] = v143;
                        v146 = *(*v143 + 72);
                        v147 = v143;
                        v72 = (v29 + 5);
                        v146(v147, v29 + 5);
                        *(&v298 + 1) = v29 + 5;
                        v92 = v22 + 100;
                        v93 = v29 + 100;
                        goto LABEL_223;
                      }

                      ripc_ReleaseRIPImageData(imagea);
                    }
                  }
                }
              }

              v143 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v282);
              goto LABEL_220;
            }

            if (!v99)
            {
              memset(&__s2, 0, 32);
              if (*(v97 + 8))
              {
                v109 = &CGRectNull;
                v110 = &CGRectNull.size.height;
                v111 = &CGRectNull.origin.y;
                v112 = &CGRectNull.size;
              }

              else
              {
                v109 = (v97 + 24);
                v111 = (v97 + 32);
                v112 = (v97 + 40);
                v110 = (v97 + 48);
              }

              v108 = v291;
              v136 = *v110;
              v137 = *v111;
              v138 = v112->width;
              __s2.a = v109->origin.x;
              __s2.b = v137;
              __s2.c = v138;
              __s2.d = v136;
              v139 = *(v291 + 56);
              if (!v139)
              {
                v139 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                *v139 = RIPRenderCreate_ripr_class;
                v139[2] = 1;
                *(v139 + 2) = 0;
                *(v291 + 56) = v139;
              }

              RIPRenderRectangles(v139, &v296, &CGAffineTransformIdentity.a, &__s2.a, 1, 0);
              v107 = 0;
              goto LABEL_215;
            }

            if (v100 == 2)
            {
              if (v99 == 2)
              {
                v101 = *(v97 + 24);
              }

              else
              {
                v101 = 0;
              }

              v310 = 0u;
              v311 = 0u;
              v309 = 0u;
              memset(&__s2, 0, sizeof(__s2));
              if (*(v97 + 9) << 8 == 512 && (v129 = *(v97 + 16)) != 0)
              {
                v130 = *(v129 + 8);
                v131 = *(v129 + 40);
                *&__s2.c = *(v129 + 24);
                *&__s2.tx = v131;
                *&__s2.a = v130;
                *&v309 = *(v129 + 56);
                v132 = *(v129 + 64);
                DWORD2(v309) = v132;
                HIDWORD(v309) = v132 >> 8;
                *&v310 = *(v129 + 72);
                v133 = *(v129 + 80);
                if (v133)
                {
                  v311 = *(v133 + 8);
                  v133 += 24;
                }

                *(&v310 + 1) = v133;
                if (v67)
                {
                  v134 = *(v129 + 67);
                }

                else
                {
                  v134 = 0;
                }

                LOBYTE(v298) = v134 & 1;
                *&v296 = *(v129 + 88);
                p_s2 = &__s2;
              }

              else
              {
                p_s2 = 0;
              }

              v140 = *(v291 + 56);
              if (!v140)
              {
                v141 = v101;
                v140 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                v101 = v141;
                *v140 = RIPRenderCreate_ripr_class;
                v140[2] = 1;
                *(v140 + 2) = 0;
                *(v291 + 56) = v140;
              }

              RIPRenderPath(v140, &v296, v101, p_s2);
              v107 = *(v97 + 9) << 8 == 256;
              v108 = v291;
              v67 = v273;
              goto LABEL_215;
            }

LABEL_223:
            ++v91;
            ++v94;
          }

          while (v25 != v91);
        }

        if (v274)
        {
          v164 = v29[11];
          a2 = cf;
          v49 = __src;
          a4 = v283;
          v165 = v278;
          if (v164)
          {
            v166 = *(v29 + 10);
            if (v166 <= v295.n128_i32[0] || (v167 = *(v29 + 11), v167 <= v295.n128_i32[1]) || *(v29 + 12) + v166 >= (v295.n128_u32[2] + v295.n128_u32[0]) || *(v29 + 13) + v167 >= (v295.n128_u32[3] + v295.n128_u32[1]))
            {
              v168 = RIPLayerClip(v164, &v295, v274, v282);
              if (!v168)
              {
                v168 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v282);
              }

              v169 = v29[11];
              if (v168 != v169 && v169)
              {
                (*(*v169 + 24))(v169);
              }

LABEL_270:
              v29[11] = v168;
              (*(*v168 + 72))(v168, v29 + 5);
              goto LABEL_285;
            }

            goto LABEL_285;
          }

          v29[11] = RIPLayerCreateWithData(&v295, 0, 0, 0, 0, v274, 0, v282);
        }

        else
        {
          a2 = cf;
          v49 = __src;
          a4 = v283;
          v165 = v278;
          if (v72 != &v295)
          {
            goto LABEL_285;
          }

          v170 = v29[11];
          if (v170)
          {
            v171 = *(v29 + 10);
            if (v171 < v295.n128_i32[0] || (v172 = *(v29 + 11), v172 < v295.n128_i32[1]) || *(v29 + 12) + v171 > (v295.n128_u32[2] + v295.n128_u32[0]) || *(v29 + 13) + v172 > (v295.n128_u32[3] + v295.n128_u32[1]))
            {
              v168 = RIPLayerClip(v170, &v295, 0, v282);
              if (!v168)
              {
                v168 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v282);
              }

              v173 = v29[11];
              if (v168 != v173 && v173)
              {
                (*(*v173 + 24))(v173);
              }

              goto LABEL_270;
            }

LABEL_285:
            if (!v165 || *(v29 + 12) < 1 || *(v29 + 13) < 1)
            {
LABEL_412:
              v243 = v29[11];
              v4 = v291;
              if (v243)
              {
                *(v243 + 28) |= 0x80u;
              }

              else if (*(&v298 + 1) == &v294)
              {
                v29[11] = -1;
              }

              goto LABEL_416;
            }

            v174 = a4;
            LODWORD(v301) = 1065353216;
            v175 = *(&v298 + 1);
            v305 = 0u;
            v306 = 0u;
            v304 = 0uLL;
            LODWORD(v299[0]) = 0;
            v176 = v291;
            v55.f64[0] = *(v291 + 40);
            v56.f64[0] = 1.0;
            v177 = vdupq_lane_s64(vmvnq_s8(vceqq_f64(v55, v56)).i64[0], 0);
            v178 = vbslq_s8(v177, vmulq_n_f64(*(v165 + 56), v55.f64[0]), *(v165 + 56));
            v179 = vbslq_s8(v177, vmulq_n_f64(*(v165 + 40), v55.f64[0]), *(v165 + 40));
            v180 = vbslq_s8(v177, vmulq_n_f64(*(v165 + 24), v55.f64[0]), *(v165 + 24));
            v322 = *(v165 + 72);
            v276 = v180;
            v277 = v179;
            *&__s2.a = v180;
            *&__s2.c = v179;
            v281 = v178;
            *&__s2.tx = v178;
            v323 = CGRectApplyAffineTransform(v322, &__s2);
            x = v323.origin.x;
            y = v323.origin.y;
            v183 = v323.size.width;
            v184 = v323.size.height;
            v185 = *(v165 + 104);
            v284 = v185;
            if (v185)
            {
              Components = CGColorGetComponents(v185);
              if ((v185 & 0x8000000000000000) != 0)
              {
                ColorSpace = CGTaggedColorGetColorSpace(v185);
              }

              else
              {
                ColorSpace = *(v185 + 24);
              }

              if (ColorSpace)
              {
                v189 = *(*(ColorSpace + 3) + 48);
                if (v189)
                {
                  v190 = &__s2;
                  do
                  {
                    v191 = *Components++;
                    v192 = v191;
                    *&v190->a = v192;
                    v190 = (v190 + 4);
                    --v189;
                  }

                  while (v189);
                }
              }

              DeviceGray = CGColorSpaceCreateDeviceGray();
              v188 = color_transform_create(DeviceGray, 0);
              CGColorSpaceRelease(DeviceGray);
              if ((v185 & 0x8000000000000000) != 0)
              {
                v194 = CGTaggedColorGetColorSpace(v185);
              }

              else
              {
                v194 = *(v185 + 24);
              }

              v176 = v291;
              CGColorTransformConvertColorFloatComponents(v188, v194, 0, &__s2, v299, 1);
            }

            else
            {
              v188 = 0;
              LODWORD(v299[0]) = 0;
            }

            v195 = v29 + 5;
            v279 = v165;
            v196 = *(v165 + 112);
            if (!v196 || *(v196 + 72) == evaluate_identity)
            {
              v196 = 0;
              LODWORD(v301) = v299[0];
              v275 = 1;
            }

            else
            {
              function_evaluate_float(v196, v299, &v301);
              v275 = 0;
            }

            v328.origin.x = *v175;
            v328.origin.y = v175[1];
            v328.size.width = v175[2];
            v328.size.height = v175[3];
            v324.origin.x = x;
            v324.origin.y = y;
            v324.size.width = v183;
            v324.size.height = v184;
            *v19.n128_u64 = CGRectIntersection(v324, v328);
            *&v305.f64[0] = v19.n128_u64[0];
            v305.f64[1] = v325.origin.y;
            v306.f64[0] = v325.size.width;
            v306.f64[1] = v325.size.height;
            v197 = v19.n128_f64[0] == INFINITY || v325.origin.y == INFINITY;
            if (v197 || v325.size.width == 0.0 || v325.size.height == 0.0)
            {
              if (!v188)
              {
                a4 = v174;
                v49 = __src;
                goto LABEL_405;
              }

              cfb = v188;
              v198 = 0;
              a4 = v174;
              v49 = __src;
              CFRelease(cfb);
LABEL_402:
              if (v198)
              {
                v240 = v29[11];
                if (!v240)
                {
LABEL_410:
                  v29[11] = v198;
                  (*(*v198 + 72))(v198, v195);
LABEL_411:
                  *(&v298 + 1) = v195;
                  goto LABEL_412;
                }

                RIPLayerIntersect(v198, v240);
                goto LABEL_407;
              }

LABEL_405:
              v241 = *&v301;
              if (*&v301 >= 0.0039062)
              {
                v19.n128_u32[0] = 1065287680;
                if (*&v301 >= 0.99609)
                {
                  goto LABEL_411;
                }

                v259 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
                *v259 = &ripc_class;
                v259[1] = 0;
                v259[2] = 0;
                v259[3] = 0x3F80000000000000;
                *(v259 + 39) = 1065353216;
                *(v291 + 152) = v241;
                v198 = v29[11];
                if (v198)
                {
                  v260 = 7;
                }

                else
                {
                  v198 = RIPLayerCreate(RIPLayer_ripl_class, *(&v298 + 1), 0, 0, v282);
                  v260 = 1;
                }

                *(v291 + 104) = v260;
                RIPLayerBltShape(v198, 0, 0, 0, v259, 0, v291 + 104);
                free(v259);
                v242 = v29[11];
                v49 = __src;
                if (v198 == v242)
                {
                  goto LABEL_411;
                }

                goto LABEL_408;
              }

              v198 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v282);
LABEL_407:
              v242 = v29[11];
LABEL_408:
              if (v242)
              {
                (*(*v242 + 24))(v242);
              }

              goto LABEL_410;
            }

            v199 = v19.n128_f64[0] + v325.size.width;
            if (v19.n128_f64[0] <= 1073741820.0)
            {
              v201 = vcvtmd_s64_f64(v19.n128_f64[0] + 0.0);
              if (v19.n128_f64[0] >= -1073741820.0)
              {
                v200 = v201;
              }

              else
              {
                v200 = -1073741823;
              }
            }

            else
            {
              v200 = 0x3FFFFFFF;
            }

            LODWORD(v304) = v200;
            if (v199 <= 1073741820.0)
            {
              v203 = vcvtpd_s64_f64(v199);
              if (v199 >= -1073741820.0)
              {
                v202 = v203;
              }

              else
              {
                v202 = -1073741823;
              }
            }

            else
            {
              v202 = 0x3FFFFFFF;
            }

            DWORD2(v304) = v202 - v200;
            v204 = v325.origin.y + v325.size.height;
            if (v325.origin.y <= 1073741820.0)
            {
              v206 = vcvtmd_s64_f64(v325.origin.y + 0.0);
              if (v325.origin.y >= -1073741820.0)
              {
                v205 = v206;
              }

              else
              {
                v205 = -1073741823;
              }
            }

            else
            {
              v205 = 0x3FFFFFFF;
            }

            DWORD1(v304) = v205;
            widtha = v196;
            if (v204 <= 1073741820.0)
            {
              v207 = v29 + 5;
              if (v204 >= -1073741820.0)
              {
                v208 = vcvtpd_s64_f64(v204);
              }

              else
              {
                v208 = -1073741823;
              }
            }

            else
            {
              v207 = v29 + 5;
              v208 = 0x3FFFFFFF;
            }

            HIDWORD(v304) = v208 - v205;
            v209 = *&v301;
            if (*&v301 < 0.0039062)
            {
              v210 = &v304;
            }

            else
            {
              v210 = v175;
            }

            if (v188)
            {
              v211 = RIPGetDepthForLayerFormat(1u);
            }

            else
            {
              v211 = 0;
            }

            v212 = *(v176 + 8);
            cfa = v188;
            if (v212)
            {
              v213 = *(v212 + 96);
            }

            else
            {
              v213 = 3;
            }

            a4 = v174;
            v214 = RIPLayerCreate(RIPLayer_ripl_class, v210, 16, v211, v213);
            v198 = v214;
            v49 = __src;
            v195 = v207;
            if (!v214)
            {
LABEL_400:
              if (cfa)
              {
                CFRelease(cfa);
              }

              goto LABEL_402;
            }

            memset(&v317[16], 0, 96);
            v318 = 0u;
            *v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            *&v317[24] = *(v291 + 120);
            *&v317[40] = *(v291 + 136);
            *&v317[56] = *(v291 + 152);
            *&v317[72] = *(v291 + 168);
            *&v317[8] = *(v291 + 104);
            v313.f64[0] = *(v291 + 16);
            v314.f64[1] = *(v291 + 40);
            v315 = *(v291 + 48);
            memset(v316, 0, sizeof(v316));
            *&v316[0] = *(v291 + 64);
            *(v291 + 56) = 0u;
            *(v316 + 8) = *(v291 + 72);
            *(v291 + 72) = 0u;
            DWORD2(v318) = *(v291 + 216);
            *(v291 + 216) = 1;
            *(v291 + 40) = 0x3FF0000000000000;
            *(v291 + 48) = v214;
            if (v209 >= 0.0039062 && *(v214 + 20) != *(&v304 + 1))
            {
              v215 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
              v216 = v215;
              v215[1] = 0;
              v215[2] = 0;
              *v215 = &ripc_class;
              *(v215 + 6) = 0;
              v217 = 1.0;
              if (cfa)
              {
                v218 = v209;
              }

              else
              {
                v218 = 1.0;
              }

              if (!cfa)
              {
                v217 = v209;
              }

              *(v215 + 7) = v218;
              *(v215 + 39) = v217;
              *(v291 + 104) = 1;
              *(v291 + 152) = 0x3FF0000000000000;
              RIPLayerBltShape(v198, 0, 0, 0, v215, 0, v291 + 104);
              v219 = v216;
              v195 = v207;
              free(v219);
            }

            CGRenderingStateCreateCopy(a2);
            v221 = v220;
            *(v220 + 24) = CGAffineTransformIdentity;
            Copy = CGGStateCreateCopy(v285);
            CGGStateResetClip(Copy);
            if (*(*(Copy + 15) + 8) != 1.0)
            {
              maybeCopyRenderingState(Copy);
              *(*(Copy + 15) + 8) = 0x3FF0000000000000;
            }

            CGGStateSetStyle(Copy, 0);
            CGGStateSetSoftMask(Copy, 0);
            *(Copy + 24) = CGAffineTransformIdentity;
            CGGStateSetCompositeOperation(Copy, 1);
            if (cfa)
            {
              *(v291 + 16) = cfa;
              v223.i64[0] = v304;
              v223.i64[1] = SDWORD1(v304);
              v224 = vcvtq_f64_s64(v223);
              v223.i64[0] = SDWORD2(v304);
              v223.i64[1] = SHIDWORD(v304);
              v305 = v224;
              v306 = vcvtq_f64_s64(v223);
              v266 = v306;
              heighta = v224;
              if (v284)
              {
                if ((v284 & 0x8000000000000000) != 0)
                {
                  v225 = CGTaggedColorGetColorSpace(v284);
                }

                else
                {
                  v225 = *(v284 + 24);
                }
              }

              else
              {
                v225 = 0;
              }

              if (CGColorTransformConvertRequired(cfa, v225, 0))
              {
                Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v284)
                {
                  if ((v284 & 0x8000000000000000) != 0)
                  {
                    v228 = Mutable;
                    v229 = CGTaggedColorGetColorSpace(v284);
                    Mutable = v228;
                    v230 = v229;
                  }

                  else
                  {
                    v230 = *(v284 + 24);
                  }

                  if (Mutable && v230)
                  {
                    v231 = Mutable;
                    CFDictionarySetValue(Mutable, @"kCGContextColorSpace", v230);
                    Mutable = v231;
                  }
                }

                if (*v291 && (v232 = *(*v291 + 192)) != 0)
                {
                  v233 = Mutable;
                  v234 = v232(heighta, heighta.n128_f64[1], v266, v266.n128_f64[1]);
                  Mutable = v233;
                  v226 = v234;
                }

                else
                {
                  v226 = 0;
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                CGGStateSetFillColor(Copy, v284);
                v235 = v226;
                if (v226)
                {
                  goto LABEL_381;
                }
              }

              else
              {
                CGGStateSetFillColor(Copy, v284);
              }

              v226 = 0;
              v235 = *v291;
              if (*v291)
              {
LABEL_381:
                v236 = v235[8];
                if (v236)
                {
                  v236();
                }
              }
            }

            else
            {
              v226 = 0;
              *(v291 + 16) = *(v291 + 200);
            }

            CGGStateSetFillColor(Copy, 0);
            CGGStateSetStrokeColor(Copy, 0);
            CGGStateSetCompositeOperation(Copy, 2);
            *(v221 + 24) = v276;
            *(v221 + 40) = v277;
            *(v221 + 56) = v281;
            *(Copy + 24) = v276;
            *(Copy + 40) = v277;
            *(Copy + 56) = v281;
            if (v226)
            {
              CGSoftMaskDelegateDrawSoftMask(v226, v221, Copy, v279);
              *(Copy + 24) = CGAffineTransformIdentity;
              *(v221 + 24) = CGAffineTransformIdentity;
              CGGStateSetCompositeOperation(Copy, 1);
              v237 = v226[25];
              if (v237)
              {
                v237(v226, v221, Copy);
              }
            }

            else
            {
              CGSoftMaskDelegateDrawSoftMask(*v291, v221, Copy, v279);
              *(Copy + 24) = CGAffineTransformIdentity;
              *(v221 + 24) = CGAffineTransformIdentity;
            }

            CGGStateRelease(Copy);
            if (atomic_fetch_add_explicit(v221, 0xFFFFFFFF, memory_order_relaxed) == 1)
            {
              free(v221);
            }

            ripc_ContextRestore(v291, &v312);
            *(v291 + 216) = DWORD2(v318);
            if (cfa)
            {
              RIPLayerCoverage(v198);
            }

            if ((v275 & 1) == 0)
            {
              v238 = 0;
              LODWORD(v302) = 0;
              do
              {
                *&v303 = v238 / 255.0;
                function_evaluate_float(widtha, &v303, &v302);
                if (*&v302 >= 0.0)
                {
                  if (*&v302 <= 1.0)
                  {
                    v239 = ((*&v302 * 255.0) + 0.5);
                  }

                  else
                  {
                    LOBYTE(v239) = -1;
                  }
                }

                else
                {
                  LOBYTE(v239) = 0;
                }

                *(&__s2.a + v238++) = v239;
              }

              while (v238 != 256);
              RIPLayerTransfer(v198, &v304, &__s2);
            }

            goto LABEL_400;
          }
        }

        v19 = v295;
        *(v29 + 5) = v295;
        goto LABEL_285;
      }

      (*(*v64 + 16))(v22[11]);
    }

    v29[11] = v64;
    v19 = *(v22 + 5);
    v294 = v19;
    goto LABEL_103;
  }

  v280 = v18;
  v278 = v11;
  v283 = a4;
  __src = 0;
  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = -1;
  v26 = 0.0;
  v27 = 0.0;
LABEL_24:
  v28 = v25;
LABEL_25:
  v29 = v21;
  while (1)
  {
    v21 = v29[1];
    if (v29[3] != v294.n128_u64[0] || v29[4] != v294.n128_u64[1])
    {
LABEL_35:
      RIPClipStateRemoveEntry(v9, v29);
      goto LABEL_36;
    }

    if (*(v29 + 5) != v15)
    {
      v25 = v28 & ~(v28 >> 31);
      if (v28 < 0 && v10)
      {
        v25 = *(v10 + 120);
      }

      v32 = *(v29 + 24);
      if (v32 > v25)
      {
        RIPClipStateRemoveEntry(v9, v29);
        v28 = v25;
        if (v21 == v20)
        {
          goto LABEL_67;
        }

        goto LABEL_25;
      }

      if (!__src)
      {
        if (v10)
        {
          v33 = (v10 + 32);
          v34 = (v10 + 24);
          v35 = (v10 + 16);
          v36 = (v10 + 40);
        }

        else
        {
          v35 = &CGRectInfinite;
          v36 = &CGRectInfinite.size.height;
          v34 = &CGRectInfinite.origin.y;
          v33 = &CGRectInfinite.size;
        }

        v27 = *v36;
        v23 = v35->origin.x;
        v24 = *v34;
        v26 = v33->width;
        __src = ripc_GetClipStackData(v10, v25, __dst, 0x20uLL);
        v32 = *(v29 + 24);
      }

      v37 = v32;
      v38 = v32;
      while (v38 >= 1)
      {
        v39 = *(v29 + v38 + 24);
        v40 = &__src[v38--];
        if (v39 != *(v40 - 1))
        {
          goto LABEL_54;
        }
      }

      v41 = *(v29 + 7);
      v42 = *(v29 + 8);
      v43 = *(v29 + 9);
      v44 = *(v29 + 10);
      v320.origin.x = v41;
      v320.origin.y = v42;
      v320.size.width = v43;
      v320.size.height = v44;
      v326.origin.x = v23;
      v326.origin.y = v24;
      v326.size.width = v26;
      v326.size.height = v27;
      if (CGRectContainsRect(v320, v326))
      {
        v45 = *(v29 + 4);
        if (v37 == v25 && v45 == v14)
        {
          v321.origin.x = v41;
          v321.origin.y = v42;
          v321.size.width = v43;
          v321.size.height = v44;
          v327.origin.x = v23;
          v327.origin.y = v24;
          v327.size.width = v26;
          v327.size.height = v27;
          v46 = CGRectEqualToRect(v321, v327);
          v45 = v14;
          if (v46)
          {
            *(v29 + 4) = v14;
            *(v29 + 5) = v15;
            v261 = *v29;
            if (*v29 != v20)
            {
              v262 = v29[1];
              *(v261 + 8) = v262;
              *v262 = v261;
LABEL_70:
              v29[1] = v29;
              v48 = *(v9 + 4);
              *(v9 + 4) = v29;
              *v29 = v20;
              *v48 = v29;
              v29[1] = v48;
            }

LABEL_71:
            a2 = cf;
            v49 = __src;
            v4 = v291;
            goto LABEL_136;
          }
        }

        if (!v45 && (!v22 || *(v22 + 24) < v37))
        {
          v22 = v29;
        }

        v4 = v291;
        if (v21 == v20)
        {
          goto LABEL_77;
        }
      }

      else
      {
LABEL_54:
        RIPClipStateRemoveEntry(v9, v29);
        if (v21 == v20)
        {
LABEL_67:
          v4 = v291;
          goto LABEL_77;
        }
      }

      goto LABEL_24;
    }

    v31 = *(v29 + 4);
    if (v31 == v14)
    {
      v47 = *v29;
      if (*v29 != v20)
      {
        *(v47 + 8) = v21;
        *v21 = v47;
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (!v31)
    {
      break;
    }

    if (v14)
    {
      goto LABEL_35;
    }

LABEL_36:
    v29 = v21;
    if (v21 == v20)
    {
      v25 = v28;
      goto LABEL_67;
    }
  }

  v23 = *(v29 + 7);
  v24 = *(v29 + 8);
  v26 = *(v29 + 9);
  v27 = *(v29 + 10);
  v50 = *(v29 + 24);
  v25 = v50;
  if (v50 >= 33)
  {
    v51 = 4 * v50;
    v52 = malloc_type_malloc(v51, 0x100004052888210uLL);
    v4 = v291;
    goto LABEL_76;
  }

  v4 = v291;
  if (v50)
  {
    v51 = 4 * v50;
    v52 = __dst;
LABEL_76:
    __src = v52;
    memcpy(v52, v29 + 100, v51);
    v22 = v29;
LABEL_77:
    if (v280)
    {
      if (v25 < 0)
      {
        goto LABEL_79;
      }

      goto LABEL_86;
    }

    if (__src && __src != __dst)
    {
      free(__src);
    }
  }

  else if (v280)
  {
    v25 = 0;
    __src = __dst;
    v22 = v29;
    goto LABEL_86;
  }

LABEL_84:
  result = 0;
  *v9 = v15;
  *(v9 + 1) = v14;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  return result;
}

_DWORD *ripc_GetClipStackData(void *a1, unint64_t a2, _DWORD *a3, unint64_t a4)
{
  if (a2)
  {
    if (a2 > a4)
    {
      a3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    }

    v6 = 0;
    v7 = a1 + 16;
    do
    {
      if (a1 && a1[15] > v6)
      {
        v8 = v7;
        if (a1[14] != 3)
        {
          v8 = (a1[16] + 8 * v6);
        }

        v9 = *v8;
        if (v9)
        {
          LODWORD(v9) = *(v9 + 4);
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      a3[v6++] = v9;
      ++v7;
    }

    while (a2 != v6);
  }

  return a3;
}

void CGGStateSetFontDilation(uint64_t a1, double a2, double a3)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 1.0;
  }

  if (a3 <= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *(a1 + 136);
  if (*(v5 + 72) != v3 || *(v5 + 80) != v4)
  {
    maybe_copy_text_state(a1);
    v8 = *(a1 + 136);
    *(v8 + 72) = v3;
    *(v8 + 80) = v4;
  }
}

uint64_t ripc_DrawGlyphs(uint64_t a1, _BYTE *a2, uint64_t a3, double *a4, unsigned __int16 *a5, uint64_t a6, unint64_t a7)
{
  if (ripc_DrawGlyphs_once != -1)
  {
    dispatch_once_f(&ripc_DrawGlyphs_once, 0, get_defaults);
  }

  v14 = *(a3 + 136);
  v15 = *v14;
  v16 = v15 >> 8;
  if ((v16 & 0xFFFFFFFB) != 3)
  {
    if (a1)
    {
      a1 = *(a1 + 288);
    }

    v17 = *(a3 + 24);
    v18 = *(a1 + 40);
    if (v18 == 1.0)
    {
      v19 = *(a3 + 32);
      v20 = *(a3 + 48);
      v21 = *(a3 + 64);
    }

    else
    {
      v17 = v18 * v17;
      v19 = vmulq_n_f64(*(a3 + 32), v18);
      v20 = vmulq_n_f64(*(a3 + 48), v18);
      v21 = v18 * *(a3 + 64);
    }

    *v76 = v17;
    *&v76[8] = v19;
    *&v76[24] = v20;
    *&v76[40] = v21;
    v22 = a4[4];
    v23 = a4[5];
    v24 = *v76;
    v25 = *&v76[16];
    v26 = vmlaq_n_f64(vmulq_n_f64(*&v76[16], a4[3]), *v76, a4[2]);
    *v76 = vmlaq_n_f64(vmulq_n_f64(*&v76[16], a4[1]), *v76, *a4);
    *&v76[16] = v26;
    v71 = vaddq_f64(*&v76[32], vmlaq_n_f64(vmulq_n_f64(v25, v23), v24, v22));
    *&v76[32] = v71;
    v74 = v26;
    v75 = *v76;
    v72 = v26.f64[1];
    v73 = *&v76[8];
    if ((v16 & 0xFFFFFFFB) != 0 || (should_use_glyph_bitmaps & 1) == 0)
    {
      if (v16 >= 7)
      {
        goto LABEL_68;
      }

      goto LABEL_28;
    }

    v27 = v14[2];
    v28 = v27 * (fabs(*v76) + fabs(*&v76[8]));
    v29 = v27 * (fabs(v26.f64[0]) + fabs(v26.f64[1]));
    if (v28 > 1024.0 || v29 > 1024.0)
    {
LABEL_28:
      v33 = v15 >> 8;
      if ((0x77u >> SBYTE1(v15)))
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v79 = 0;
        v34 = a2;
        if (ripc_GetRenderingState(a1, a2, a3, &v81))
        {
          v67 = 0x66u >> v33;
          v35 = *(a3 + 136);
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);
          v65 = vmulq_n_f64(v74, v37);
          v66 = vmulq_n_f64(*v76, v37);
          v90 = v66;
          v91 = v65;
          v92[0] = *&v76[32];
          get_glyph_bounding_box(v36, &v90);
          v69 = v39;
          v70 = v38;
          rect = v40;
          v42 = v41;
          font_info = get_font_info(v36);
          if (font_info)
          {
            v44 = font_info[2];
          }

          else
          {
            v44 = 0.0;
          }

          v45 = 1.0 / v44;
          v90 = vmulq_n_f64(v66, v45);
          v91 = vmulq_n_f64(v65, v45);
          v80 = &v82 + 8;
          v77[0] = *(*(a3 + 144) + 8);
          v78 = *(a1 + 24);
          v77[1] = 0x3FF0000000000000;
          if (a2[81] == 1)
          {
            v46 = *(*(a3 + 120) + 7) & 1;
          }

          else
          {
            v46 = 0;
          }

          LOBYTE(v79) = v46;
          if (v67)
          {
            ripc_GetRenderStroke(a3, &v84, (a3 + 24));
          }

          if (a7)
          {
            v47 = 0x5Du >> v33;
            v48 = SDWORD1(v83);
            v49 = v83;
            v50 = SHIDWORD(v82);
            v51 = SDWORD2(v82);
            if ((0x5Du >> v33))
            {
              v52 = 2;
            }

            else
            {
              v52 = 0;
            }

            v53 = v52 & 0xFFFFFFFFFFFFFFFELL | v67 & 1;
            v54 = (a6 + 8);
            do
            {
              v55 = *(v54 - 1);
              v56 = v71.f64[0] + *v54 * v74.f64[0] + v75 * v55;
              v57 = v71.f64[1] + *v54 * v72 + v73 * v55;
              v93.origin.y = v69;
              v93.origin.x = v70;
              v93.size.width = rect;
              v93.size.height = v42;
              v95 = CGRectOffset(v93, v56, v57);
              v94.origin.x = v51;
              v94.origin.y = v50;
              v94.size.width = v49;
              v94.size.height = v48;
              if (CGRectIntersectsRect(v94, v95))
              {
                *v92 = v56;
                *(v92 + 1) = v57;
                GlyphPath = CGFontCreateGlyphPath(v36, &v90);
                if (GlyphPath)
                {
                  v59 = GlyphPath;
                  if (v47)
                  {
                    v60 = *(a1 + 56);
                    if (!v60)
                    {
                      v60 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                      *v60 = RIPRenderCreate_ripr_class;
                      v60[2] = 1;
                      *(v60 + 2) = 0;
                      *(a1 + 56) = v60;
                    }

                    RIPRenderPath(v60, v77, v59, 0);
                  }

                  if (v67)
                  {
                    v61 = *(a1 + 64);
                    if (!v61)
                    {
                      v61 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                      *v61 = RIPRenderCreate_ripr_class;
                      v61[2] = 1;
                      *(v61 + 2) = 0;
                      *(a1 + 64) = v61;
                    }

                    RIPRenderPath(v61, v77, v59, &v84);
                  }

                  CFRelease(v59);
                  ripc_Render(a1, v34, a3, &v81, v53, v62);
                }
              }

              ++a5;
              v54 += 2;
              --a7;
            }

            while (a7);
          }
        }

        return 0;
      }

LABEL_68:
      abort();
    }

    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    if (ripc_GetRenderingState(a1, a2, a3, &v84))
    {
      if (a2[81] == 1 && a2[83] == 1)
      {
        if (a2[84])
        {
          v31 = 3;
        }

        else
        {
          v31 = 1;
        }

        if (a2[85] == 1)
        {
          if (a2[86])
          {
            v32 = 12;
          }

          else
          {
            v32 = 4;
          }

          v31 |= v32;
        }
      }

      else
      {
        v31 = 0;
      }

      v64 = CGGStateGetFontRenderingStyle(a3) & (v31 | 0x3DF0);
      if ((v64 & 2) != 0 && ((*(*(a1 + 48) + 29) & 1) == 0 || *(&v86 + 1) && should_enable_lcd_styles != 1 || *(*(a3 + 120) + 4) >= 768))
      {
        v64 = v64 & 0xFDFDFDFD;
      }

      if ((v64 & 1) != 0 && a7 >= 2 && (**(a3 + 136) & 0x80) != 0)
      {
        draw_glyph_bitmap_run_with_compositing(a1, a2, a3, &v84, v64, v76, a5, a6, a7);
      }

      else
      {
        draw_glyph_bitmaps(a1, a2, a3, &v84, v64, v76, a5, a6, a7);
      }
    }
  }

  return 0;
}

void CGGStateSetShouldDrawBitmapRuns(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 0x80) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 128;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFF7F | v4;
  }
}

__n128 RIPLayerReplace(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, __n128 result)
{
  if (a1 && *a1)
  {
    if (a2)
    {
      v12 = *(a2 + 8);
      if (v12 < 0 || (v13 = *(a2 + 12), v13 < 0))
      {
        v12 = 0;
        v13 = 0;
      }

      result.n128_u64[0] = *a2;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      result = 0uLL;
    }

    v17 = result;
    if (*(a1 + 72))
    {
      v14 = *(a1 + 32);
      if (v14 == RIPGetDepthForLayerFormat(0))
      {
        v15 = *(a1 + 72);
        if (v15)
        {
          if (v15 != &the_empty_shape)
          {
            free(v15);
          }
        }
      }
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      if ((*(a1 + 28) & 2) == 0)
      {
        free(v16);
      }
    }

    result = v17;
    *(a1 + 12) = v17.n128_u64[0];
    *(a1 + 20) = v12;
    *(a1 + 24) = v13;
    *(a1 + 48) = a3;
    *(a1 + 56) = a4;
    *(a1 + 64) = a5;
    *(a1 + 72) = a6;
  }

  return result;
}

void CGGlyphBuilderCreate(const void *a1, _OWORD *a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  if (CGGlyphBuilderCreate::once != -1)
  {
    dispatch_once_f(&CGGlyphBuilderCreate::once, 0, defaults_setup);
  }

  operator new();
}

int32x2_t CGFontGetGlyphIdentifiers(__int16 *a1, double *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, int32x2_t *a8)
{
  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    v14 = *a5;
    v15 = a5[1];
    v16 = (a3 + 8);
    v17 = (a7 + 4);
    v18 = (a6 + 2);
    v19 = 0x8000000080000000;
    v20 = 0x8000000080000000;
    do
    {
      v21 = *(v16 - 1);
      v22 = v12 + v10 * *v16 + v8 * v21 + 0.001;
      v23 = v13 + *v16 * v11 + v9 * v21 + 0.001;
      v24 = floor(v22);
      v25 = floor(v23);
      v26 = *a1++;
      *(v18 - 1) = v26;
      *v18 = ((v22 - v24) * v14);
      v18[1] = ((v23 - v25) * v15);
      if (v24 <= 2147483650.0)
      {
        if (v24 >= -2147483650.0)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0x80000000;
        }
      }

      else
      {
        v27 = 0x7FFFFFFF;
      }

      *(v17 - 1) = v27;
      if (v25 <= 2147483650.0)
      {
        if (v25 >= -2147483650.0)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0x80000000;
        }
      }

      else
      {
        v28 = 0x7FFFFFFF;
      }

      *v17 = v28;
      v17 += 2;
      v19 = vmin_s32(__PAIR64__(v28, v27), v19);
      v20 = vmax_s32(__PAIR64__(v28, v27), v20);
      v16 += 2;
      v18 += 4;
      --a4;
    }

    while (a4);
  }

  else
  {
    v19 = 0x8000000080000000;
    v20 = 0x8000000080000000;
  }

  result = vsub_s32(v20, v19);
  *a8 = v19;
  a8[1] = result;
  return result;
}

BOOL CGRectIntersectsRect(CGRect rect1, CGRect rect2)
{
  x = rect1.origin.x;
  if (rect1.origin.x == INFINITY || rect1.origin.y == INFINITY)
  {
    return 0;
  }

  y = rect2.origin.y;
  v5 = rect2.origin.x;
  if (rect2.origin.x == INFINITY || rect2.origin.y == INFINITY)
  {
    return 0;
  }

  height = rect2.size.height;
  width = rect2.size.width;
  v10 = rect1.size.height;
  v11 = rect1.size.width;
  v12 = rect1.origin.y;
  if (rect1.size.width < 0.0 || rect1.size.height < 0.0)
  {
    v13 = CGRectStandardize(rect1);
    x = v13.origin.x;
    v12 = v13.origin.y;
    v11 = v13.size.width;
    v10 = v13.size.height;
  }

  if (width < 0.0 || height < 0.0)
  {
    v14.origin.x = v5;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectStandardize(v14);
    v5 = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  if (x >= v5)
  {
    if (x > v5 && v5 + width <= x)
    {
      return 0;
    }
  }

  else if (x + v11 <= v5)
  {
    return 0;
  }

  if (v12 >= y)
  {
    return v12 <= y || y + height > v12;
  }

  return v12 + v10 > y;
}

void render_glyphs(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8;
  v36[1] = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1EEE9AC00](8 * a8);
  v19 = v36 - v18;
  if (v17 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v20 = v36 - v18;
  }

  else
  {
    v20 = 0;
  }

  if (v17 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000402)
  {
    v20 = malloc_type_malloc(v16, 0x13609545uLL);
  }

  if (v20)
  {
    v21 = v8 > 0x666666666666665;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v36[0] = a4;
    v22 = malloc_type_malloc(40 * v8 + 40, 0x10000400A747E1EuLL);
    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v8;
    v22[4] = 0;
    CGGlyphBuilderLockBitmaps(a2, a6, v8, v20);
    if (v8)
    {
      v23 = (a7 + 4);
      v24 = v20;
      do
      {
        v25 = *v24;
        if (*v24)
        {
          v26 = v25[5];
          if (v26)
          {
            v27 = v25[6];
            if (v27)
            {
              v28 = v25[3] + *(v23 - 1);
              v29 = v25[4] + *v23;
              v30 = (v29 - v27);
              v31 = *(a5 + 6);
              v32 = *(a5 + 7);
              v33 = v31 >= v28 + v26 || *(a5 + 8) + v31 <= v28;
              v34 = !v33 && v32 < v29;
              if (v34 && *(a5 + 9) + v32 > v30)
              {
                RIPGlyphListAppendBitmap(v22, v28, v30, v25);
              }
            }
          }
        }

        v23 += 2;
        ++v24;
        --v8;
      }

      while (v8);
    }

    render_glyph_list(a1, v22, a3, v36[0], a5);
    CGGlyphBuilderUnlockBitmaps(a2);
    if (v20 != v19)
    {
      free(v20);
    }

    free(v22);
  }
}

uint64_t CGFontRenderingStyleStandardize(int a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 115;
  }

  else
  {
    v1 = 3457;
  }

  v2 = v1 & a1;
  v3 = v1 & a1 | 4;
  v4 = (v1 | 0x100C) & a1;
  if ((a1 & 8) == 0)
  {
    v4 = v3;
  }

  if ((a1 & 4) == 0)
  {
    v4 = v2;
  }

  if ((a1 & 1) == 0)
  {
    v4 = 0;
  }

  return v4 | a1 & 0x200u;
}

uint64_t CGGlyphBuilderLockBitmaps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    os_unfair_lock_lock((v8 + 4));
    if (!*(v8 + 32))
    {
      *(v8 + 32) = CFDictionaryCreateMutable(0, 0, &get_strike_strike_key_callbacks, 0);
    }

    v79 = 0u;
    v80 = 0u;
    memset(&key, 0, sizeof(key));
    CGFontStrikeKeyInit(&key, v9, (a1 + 32), v10, v11, v12);
    Value = CFDictionaryGetValue(*(v8 + 32), &key);
    if (!Value)
    {
      Value = malloc_type_calloc(1uLL, 0x870uLL, 0x10800401BCBC891uLL);
      __CFSetLastAllocationEventName();
      Value->_os_unfair_lock_opaque = 1;
      CGFontStrikeKeyInit(&Value[2], v9, (a1 + 32), v10, v11, v12);
      *&Value[22]._os_unfair_lock_opaque = 0;
      *&Value[24]._os_unfair_lock_opaque = 0;
      Value[26]._os_unfair_lock_opaque = 0;
      v14 = *(v8 + 40);
      v15 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v15)
      {
        *v15 = Value;
        v15[1] = v14;
        v14 = v15;
      }

      *(v8 + 40) = v14;
      CFDictionarySetValue(*(v8 + 32), &Value[2], Value);
      v5 = a3;
    }

    atomic_fetch_add_explicit(Value, 1u, memory_order_relaxed);
    v16 = *(v8 + 24);
    *(v8 + 24) = v16 + 1;
    Value[1]._os_unfair_lock_opaque = v16;
    os_unfair_lock_unlock((v8 + 4));
    *(a1 + 96) = Value;
    os_unfair_lock_lock(Value + 26);
    if (!v5)
    {
      os_unfair_lock_unlock(Value + 26);
      return 1;
    }

    v17 = 0;
    v18 = 1;
    do
    {
      *(a4 + 8 * v17) = 0;
      v19 = (a2 + 4 * v17);
      v20 = *v19;
      v21 = *(&Value[28]._os_unfair_lock_opaque + ((v20 >> 5) & 0x7F8));
      if (v21 && (v22 = *(v21 + 8 * *v19)) != 0)
      {
        while (1)
        {
          v23 = *v22;
          if (*v22)
          {
            if (*(v23 + 4) == v20 && *(v23 + 6) == *(v19 + 2) && *(v23 + 7) == *(v19 + 3))
            {
              break;
            }
          }

          v22 = v22[1];
          if (!v22)
          {
            goto LABEL_17;
          }
        }

        *(a4 + 8 * v17) = v23;
      }

      else
      {
LABEL_17:
        v18 = 0;
      }

      ++v17;
    }

    while (v17 != v5);
    os_unfair_lock_unlock(Value + 26);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    if (!a3)
    {
      goto LABEL_98;
    }
  }

  v24 = 0;
  v77 = a2;
  do
  {
    if (*(a4 + 8 * v24))
    {
      goto LABEL_97;
    }

    v25 = (a2 + 4 * v24);
    v26 = *(a1 + 112);
    if (!*&v26 || ((v27 = *v25, v28 = *(v25 + 2), v29 = *(v25 + 3), v30 = (v27 << 16) | (v28 << 8) | v29, v31 = vcnt_s8(v26), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL) ? (v30 >= *&v26 ? (v32 = v30 % v26.i32[0]) : (v32 = (v27 << 16) | (v28 << 8) | v29)) : (v32 = v30 & (*&v26 + 0xFFFFFFFFLL)), (v33 = *(*(a1 + 104) + 8 * v32)) == 0 || (v34 = *v33) == 0))
    {
LABEL_44:
      v36 = *a1;
      if (!*a1)
      {
        goto LABEL_118;
      }

      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      v39 = *(a1 + 24);
      v40 = *(a1 + 80);
      v41 = *v25;
      v42 = CFGetTypeID(*a1);
      if (_block_invoke_once_3400 != -1)
      {
        dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      }

      if (v42 != CGFontGetTypeID_font_type_id)
      {
        goto LABEL_118;
      }

      font_info = get_font_info(v36);
      if (font_info)
      {
        if (font_info[104])
        {
          v37 = v37 & 0xFFFFFFFE;
        }

        else
        {
          v37 = v37;
        }
      }

      v44 = (*(*(v36 + 16) + 400))(*(v36 + 112), v37, a1 + 32, v40, v41);
      if (v44)
      {
LABEL_70:
        v56 = *(a1 + 96);
        v57 = *v25;
        if (v56)
        {
          os_unfair_lock_lock((v56 + 104));
          v58 = *(v56 + 112 + 8 * BYTE1(v57));
          if (!v58)
          {
            v58 = malloc_type_calloc(0x100uLL, 8uLL, 0x2004093837F09uLL);
            *(v56 + 112 + 8 * BYTE1(v57)) = v58;
          }

          v59 = v58[v57];
          atomic_fetch_add_explicit(v44, 1u, memory_order_relaxed);
          v60 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
          if (v60)
          {
            *v60 = v44;
            v60[1] = v59;
            v59 = v60;
          }

          v5 = a3;
          v58[v57] = v59;
          *(v56 + 88) = vaddq_s64(*(v56 + 88), vdupq_n_s64((v44[8] * v44[6]) + 48));
          os_unfair_lock_unlock((v56 + 104));
          v57 = *v25;
        }

        v61 = (v57 >> 8) & 0xFF00 | (v57 << 16) | (v57 >> 24);
        v62 = *(a1 + 112);
        if (!*&v62)
        {
          goto LABEL_93;
        }

        v63 = vcnt_s8(v62);
        v63.i16[0] = vaddlv_u8(v63);
        if (v63.u32[0] > 1uLL)
        {
          v64 = (v57 >> 8) & 0xFF00 | (v57 << 16) | (v57 >> 24);
          if (v61 >= *&v62)
          {
            v64 = ((v57 >> 8) & 0xFF00 | (v57 << 16) | (v57 >> 24)) % v62.i32[0];
          }
        }

        else
        {
          v64 = v61 & (*&v62 + 0xFFFFFFFFLL);
        }

        v65 = *(*(a1 + 104) + 8 * v64);
        if (!v65 || (v34 = *v65) == 0)
        {
LABEL_93:
          operator new();
        }

        while (1)
        {
          v66 = v34[1];
          if (v66 == v61)
          {
            if (*(v34 + 8) == v57 && __PAIR64__(*(v34 + 19), *(v34 + 18)) == __PAIR64__(v57 >> 24, BYTE2(v57)))
            {
              a2 = v77;
              goto LABEL_96;
            }
          }

          else
          {
            if (v63.u32[0] > 1uLL)
            {
              if (v66 >= *&v62)
              {
                v66 %= *&v62;
              }
            }

            else
            {
              v66 &= *&v62 - 1;
            }

            if (v66 != v64)
            {
              goto LABEL_93;
            }
          }

          v34 = *v34;
          if (!v34)
          {
            goto LABEL_93;
          }
        }
      }

      v45 = get_font_info(v36);
      if (!v45)
      {
        goto LABEL_65;
      }

      v46 = v45[2];
      if (!v46)
      {
        goto LABEL_65;
      }

      memset(&key, 0, sizeof(key));
      v47 = *(v36 + 104);
      if (v47 < 0)
      {
        v47 = (*(*(v36 + 16) + 144))(*(v36 + 112));
        *(v36 + 104) = v47;
      }

      if (v47 || (*(a1 + 40) != 0.0 || *(a1 + 48) != 0.0) && (*(a1 + 32) != 0.0 || *(a1 + 56) != 0.0))
      {
        v48 = 1.0 / v46;
        v49 = *(a1 + 32);
        v50 = *(a1 + 48);
        *&key.a = vmlaq_n_f64(vmulq_f64(v50, 0), v49, v48);
        *&key.c = vmlaq_f64(vmulq_n_f64(v50, v48), 0, v49);
        key.tx = BYTE2(v41) / v40;
        key.ty = BYTE3(v41) / SHIDWORD(v40);
        GlyphPath = CGFontCreateGlyphPath(v36, &key);
        goto LABEL_66;
      }

      v52 = *(a1 + 32);
      v53 = *(a1 + 48);
      *&key.tx = *(a1 + 64);
      v74 = (2 * v40);
      v75 = (2 * HIDWORD(v40));
      *&key.a = vmulq_n_f64(v52, v74);
      *&key.c = vmulq_n_f64(v53, v75);
      v54 = (*(*(v36 + 16) + 408))(*(v36 + 112), &key, v41);
      if (v54)
      {
        key.b = 0.0;
        key.c = 0.0;
        key.a = 1.0 / v74;
        key.d = 1.0 / v75;
        key.tx = (2 * (BYTE2(v41) & 0x7Fu)) / v74;
        key.ty = (2 * (BYTE3(v41) & 0x7Fu)) / v75;
        v55 = v54;
        GlyphPath = CGPathCreateMutableCopyByTransformingPath(v54, &key);
        CFRelease(v55);
      }

      else
      {
LABEL_65:
        GlyphPath = 0;
      }

LABEL_66:
      v44 = CGGlyphBitmapCreateWithPathAndDilation(GlyphPath, v41, v36, v37, (a1 + 32), v38, v39);
      if (v44)
      {
        if (!GlyphPath)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v44 = CGGlyphBitmapCreate(v41, v37, 0, 0, 0, 0, 0, 0);
        if (!GlyphPath)
        {
LABEL_69:
          if (v44)
          {
            goto LABEL_70;
          }

LABEL_118:
          _CGHandleAssert("create_missing_bitmaps", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGGlyphBuilder.cc", "bitmap != nullptr", "bitmap missing");
        }
      }

      CFRelease(GlyphPath);
      goto LABEL_69;
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 == v30)
      {
        break;
      }

      if (v31.u32[0] > 1uLL)
      {
        if (v35 >= *&v26)
        {
          v35 %= *&v26;
        }
      }

      else
      {
        v35 &= *&v26 - 1;
      }

      if (v35 != v32)
      {
        goto LABEL_44;
      }

LABEL_43:
      v34 = *v34;
      if (!v34)
      {
        goto LABEL_44;
      }
    }

    if (*(v34 + 8) != v27 || __PAIR64__(*(v34 + 19), *(v34 + 18)) != __PAIR64__(v29, v28))
    {
      goto LABEL_43;
    }

LABEL_96:
    *(a4 + 8 * v24) = v34[3];
LABEL_97:
    ++v24;
  }

  while (v24 != v5);
LABEL_98:
  if ((print_statistics & 1) == 0)
  {
    return 1;
  }

  v67 = MEMORY[0x1E69E9848];
  v68 = *MEMORY[0x1E69E9848];
  if (*a1)
  {
    v69 = (*(*(*a1 + 16) + 152))(*(*a1 + 112));
  }

  else
  {
    v69 = 0;
  }

  fprintf(v68, "%s: %s (%g, %g, %g, %g; %g, %g)\n", "note_glyph_build", v69, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v70 = "s";
  if (*(a1 + 128) == 1)
  {
    v70 = "";
  }

  fprintf(*v67, "  building %lu bitmap%s...\n", *(a1 + 128), v70);
  v71 = 1;
  fwrite("    ", 4uLL, 1uLL, *v67);
  if (*a1)
  {
    v71 = (*(*(*a1 + 16) + 296))(*(*a1 + 112)) + 1;
  }

  result = std::vector<char>::vector[abi:fe200100](&key, v71);
  v73 = *(a1 + 120);
  if (!v73)
  {
LABEL_115:
    fputc(10, *v67);
    if (*&key.a)
    {
      key.b = key.a;
      operator delete(*&key.a);
    }

    return 1;
  }

  while (*&key.b != *&key.a)
  {
    if (*a1 && (result = (*(*(*a1 + 16) + 304))(*(*a1 + 112), *(v73 + 8)), result))
    {
      if (*&key.b == *&key.a)
      {
        break;
      }

      result = fprintf(*v67, "%s(%d,%d) ");
    }

    else
    {
      result = fprintf(*v67, "%hu(%d,%d) ");
    }

    v73 = *v73;
    if (!v73)
    {
      goto LABEL_115;
    }
  }

  __break(1u);
  return result;
}

double CGFontStrikeKeyInit(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, double a5, double a6)
{
  if (a2)
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      atomic_compare_exchange_strong_explicit((a2 + 24), &v6, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
      v6 = *(a2 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  v8 = a3[1];
  v7 = a3[2];
  *(a1 + 8) = *a3;
  *(a1 + 24) = v8;
  v9 = *(a1 + 32);
  *&v8 = *(a1 + 24) + (*(a1 + 8) + *(a1 + 16)) * 10000.0;
  *(a1 + 40) = v7;
  *(a1 + 4) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  result = (a5 + a6) * 1000.0;
  *(a1 + 72) = result + (a4 << 8) + (v6 << 12) + ((*&v8 + v9) << 20);
  return result;
}

uint64_t strike_key_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *a1 != *a2 || *(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
    {
      v3 = *(a1 + 72);
      v4 = *(a2 + 72);
      if (v3 != v4)
      {
        _CGHandleAssert("CGFontStrikeKeyEqual", 72, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontStrike.c", "key1->hash == key2->hash", "hash 0x%zx 0x%zx", v3, v4);
      }

      return 1;
    }
  }

  return v2;
}

unint64_t *RIPGlyphListAppendBitmap(unint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = result[2];
  v4 = result[3];
  if (v5 >= v4)
  {
    _CGHandleAssert("RIPGlyphListAppendBitmap", 66, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPGlyphList.c", "gl->n < gl->max", "number of glyphs (%lu) out of bounds [0, %lu]", v5, v4);
  }

  v7 = result;
  v8 = *(a4 + 20);
  v9 = a2 | (a3 << 32);
  if (v5)
  {
    result = CGSBoundsUnion(*result, result[1], v9, *(a4 + 20));
    *v7 = result;
    v7[1] = v10;
  }

  else
  {
    *result = v9;
    result[1] = v8;
  }

  v11 = *(a4 + 20);
  v12 = *(v7 + 9);
  if (*(v7 + 8) > v11)
  {
    v11 = *(v7 + 8);
  }

  *(v7 + 8) = v11;
  v13 = *(a4 + 24);
  if (v12 > v13)
  {
    v13 = v12;
  }

  *(v7 + 9) = v13;
  v14 = &v7[5 * v5];
  v7[2] = v5 + 1;
  v14[5] = v9;
  v14[6] = v8;
  v14[8] = a4 + 40;
  *(v14 + 15) = *(a4 + 28);
  *(v14 + 14) = *(a4 + 32);
  *(v14 + 18) = *(a4 + 36);
  return result;
}

char *render_glyph_list(char *result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 2))
  {
    v9 = result;
    v17[0] = 0;
    v17[1] = 0;
    v10 = a5[5];
    if (v10)
    {
      if ((*(v10 + 12) & 0x10) != 0)
      {
        v11 = a5[5];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 3;
    if (!v11)
    {
      v12 = 1;
    }

    v13 = *&a5[v12];
    v18 = *a2;
    v19 = v13;
    v20 = 0;
    v21 = 0;
    result = CGSBoundsIntersection(&v19, &v18, v17);
    if (result)
    {
      *(v9 + 104) = (*(*(a4 + 120) + 4) << 16) >> 24;
      *(v9 + 108) = *(a3 + 82);
      *(v9 + 112) = (*(*(a4 + 120) + 4) << 12) >> 28;
      v14 = *(*(a4 + 136) + 40);
      *(v9 + 168) = v14;
      result = ripc_GetColor(v9, a3, a4, 2, v17, &v21, (v9 + 152));
      if (result)
      {
        v15 = result;
        Color = ripc_GetColor(v9, a3, a4, 8, v17, &v20, (v9 + 160));
        if (v11)
        {
          (*(*v11 + 64))(v11, *(v9 + 48), *a5, v17, a2, v15, &v21, Color, &v20, v9 + 104);
        }

        else
        {
          RIPLayerBltGlyph(*(v9 + 48), *a5, v17, a2, v15, &v21, Color, v9 + 104);
        }

        RIPObjectRelease(v15);
        return RIPObjectRelease(Color);
      }
    }
  }

  return result;
}

BOOL CGSBoundsIntersection(int *a1, int *a2, _DWORD *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = a1[2];
    if (v4 < 1)
    {
      return 0;
    }

    v5 = a2[2];
    if (v5 < 0)
    {
      return 0;
    }

    v6 = a1[3];
    if (v6 < 1)
    {
      return 0;
    }

    v7 = a2[3];
    if (v7 < 0)
    {
      return 0;
    }

    v8 = *a1 + v4;
    v9 = *a2 + v5;
    if (*a1 <= *a2)
    {
      v10 = *a2;
    }

    else
    {
      v10 = *a1;
    }

    if (v8 < v9)
    {
      v9 = v8;
    }

    v11 = v9 - v10;
    if (v11 < 1)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v10;
        a3[2] = v11;
      }

      v12 = a1[1];
      v13 = a2[1];
      v14 = v12 + v6;
      v15 = v13 + v7;
      if (v12 <= v13)
      {
        v16 = a2[1];
      }

      else
      {
        v16 = a1[1];
      }

      if (v14 >= v15)
      {
        v14 = v15;
      }

      v17 = v14 - v16;
      v3 = v14 > v16;
      if (a3 && v17 >= 1)
      {
        a3[1] = v16;
        a3[3] = v17;
        return 1;
      }
    }
  }

  return v3;
}

char *ripc_GetColor(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int *a6, double *a7)
{
  v12 = a1;
  v189 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    FillColor = CGGStateGetFillColor(a3);
    if (FillColor)
    {
      v15 = FillColor;
      v13 = *(v12 + 176);
      if ((FillColor & 0x8000000000000000) == 0)
      {
LABEL_10:
        Alpha = *(v15 + 8 * *(v15 + 56) + 64);
        goto LABEL_11;
      }

LABEL_7:
      Alpha = CGTaggedColorGetAlpha(v15);
LABEL_11:
      v18 = Alpha * *(*(a3 + 120) + 8);
      goto LABEL_12;
    }

LABEL_17:
    v13 = 0;
    *a7 = *(*(a3 + 120) + 8) * 0.0;
    return v13;
  }

  if (a4)
  {
    StrokeColor = CGGStateGetStrokeColor(a3);
    if (StrokeColor)
    {
      v15 = StrokeColor;
      v13 = *(v12 + 184);
      if ((StrokeColor & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if ((a4 & 8) == 0)
  {
    return 0;
  }

  v73 = *(a3 + 136);
  v15 = *(v73 + 64);
  if (!v15)
  {
    v13 = 0;
    *a7 = 0.0;
    return v13;
  }

  v13 = *(a1 + 192);
  if (v15 < 0)
  {
    v18 = CGTaggedColorGetAlpha(*(v73 + 64));
  }

  else
  {
    v18 = *(v15 + 8 * *(v15 + 56) + 64);
  }

LABEL_12:
  *a7 = v18;
  v19 = 0.0;
  if (v18 < 0.0 || (v19 = 1.0, v18 > 1.0))
  {
    *a7 = v19;
    v18 = v19;
  }

  if (v15 < 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v15 + 16);
  }

  if (*(v13 + 1) == v15 && *(v13 + 4) == v20 && *(v13 + 20) == *(*(a3 + 120) + 72))
  {
    goto LABEL_85;
  }

  v174 = a2;
  if (v15 < 1 || (v21 = *(v15 + 32)) == 0)
  {
    Cache = CGColorTransformGetCache(*(v12 + 120));
    v173 = a6;
    if (Cache)
    {
      v68 = Cache[2];
      if (v68)
      {
        v69 = *(*(v68 + 24) + 48);
        if (v69 >> 61)
        {
          v70 = v12;
          MEMORY[0x1EEE9AC00](Cache);
          v71 = &v159;
          v72 = 0;
LABEL_76:
          if (RIPColorConvertColorComponents(*(v70 + 120), v72, v15, a3))
          {
            if (v69)
            {
              v76 = (v13 + 28);
              v77 = v72;
              do
              {
                v78 = *v77++;
                v79 = v78;
                *v76++ = v79;
                --v69;
              }

              while (v69);
            }

            *(v13 + 6) = *(v70 + 128);
            *(v13 + 1) = v15;
            *(v13 + 4) = v20;
            v80 = *(*(a3 + 120) + 72);
          }

          else
          {
            v80 = 0;
            *(v13 + 3) = 0;
            *(v13 + 1) = 0;
            *(v13 + 4) = 0;
          }

          *(v13 + 20) = v80;
          if (v72 != v71)
          {
            free(v72);
          }

          *(v13 + 39) = 1065353216;
          v12 = v70;
          a6 = v173;
          a2 = v174;
LABEL_85:
          if ((*(*(v12 + 48) + 29) & 2) != 0)
          {
            v81 = *(a3 + 120);
            v82 = *(v81 + 24);
            v83 = *(v81 + 32);
            v84 = *(v12 + 40);
            v85 = v84 == 1.0;
            v86 = *(a2 + 24) * v84;
            v87 = *(a2 + 32) * v84;
            v88 = *(a2 + 40) * v84;
            v89 = *(a2 + 48) * v84;
            v90 = *(a2 + 56) * v84;
            v91 = *(a2 + 64) * v84;
            if (v85)
            {
              v86 = *(a2 + 24);
              v92 = *(a2 + 32);
            }

            else
            {
              v92 = v87;
            }

            if (v85)
            {
              v93 = *(a2 + 40);
            }

            else
            {
              v93 = v88;
            }

            if (v85)
            {
              v94 = *(a2 + 48);
            }

            else
            {
              v94 = v89;
            }

            if (v85)
            {
              v95 = *(a2 + 56);
            }

            else
            {
              v95 = v90;
            }

            if (v85)
            {
              v96 = *(a2 + 64);
            }

            else
            {
              v96 = v91;
            }

            v97 = v83 * v93 + v86 * v82 + v95;
            if (v97 <= 1073741820.0)
            {
              v99 = vcvtmd_s64_f64(v97);
              if (v97 >= -1073741820.0)
              {
                v98 = v99;
              }

              else
              {
                v98 = -1073741823;
              }
            }

            else
            {
              v98 = 0x3FFFFFFF;
            }

            *a6 = v98;
            v100 = v83 * v94 + v92 * v82 + v96;
            if (v100 <= 1073741820.0)
            {
              if (v100 >= -1073741820.0)
              {
                v101 = vcvtmd_s64_f64(v100);
              }

              else
              {
                v101 = -1073741823;
              }
            }

            else
            {
              v101 = 0x3FFFFFFF;
            }

            a6[1] = v101;
          }

          else
          {
            *a6 = 0;
          }

          return v13;
        }

        Cache = (8 * v69);
      }

      else
      {
        v69 = 0;
        Cache = 0;
      }
    }

    else
    {
      v69 = 0;
    }

    v70 = v12;
    v74 = MEMORY[0x1EEE9AC00](Cache);
    v71 = (&v160 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v69 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v72 = (&v160 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v72 = 0;
    }

    if (v69 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v72 = malloc_type_malloc(v74, 0xC3800545uLL);
    }

    goto LABEL_76;
  }

  PatternBaseColor = CGColorGetPatternBaseColor(v15);
  if (v18 < 0.0 || v18 > 1.0)
  {
    _CGHandleAssert("ripc_GetPattern", 689, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPColor.c", "alpha >= 0 && alpha <= 1", "alpha (%f) must be [0,1]", v18);
  }

  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  *a6 = 0;
  v25 = *(a2 + 40);
  v182 = *(a2 + 24);
  v183 = v25;
  v184 = *(a2 + 56);
  v26 = *(v12 + 40);
  if (v26 != 1.0)
  {
    v182 = vmulq_n_f64(v182, v26);
    v183 = vmulq_n_f64(v183, v26);
    v184 = vmulq_n_f64(v184, v26);
  }

  v27 = 0;
  v28 = a2;
  if (*(a2 + 82))
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  if (*(v28 + 81) == 1)
  {
    v27 = (*(*(a3 + 120) + 4) >> 8) & 0x10000;
  }

  v185 = 0;
  v186 = 0;
  v30 = *(v21 + 40);
  v31 = *(v21 + 24);
  *&v23 = *(v21 + 56);
  *&v22 = *(v21 + 64);
  v166 = v30;
  v167 = v31;
  v32 = vmlaq_n_f64(vmulq_laneq_f64(v183, v31, 1), v182, v31.f64[0]);
  v33 = vmlaq_n_f64(vmulq_laneq_f64(v183, v30, 1), v182, v30.f64[0]);
  v169 = v33;
  v170 = v32;
  v176 = v32;
  v177 = v33;
  v164 = v23;
  v165 = v22;
  v178 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v183, *&v22), v182, *&v23), 0);
  v34 = *(v21 + 104);
  v35 = *(v21 + 112);
  v33.f64[0] = *(v21 + 120);
  v30.f64[0] = *(v21 + 128);
  *&v187.a = v32;
  *&v187.c = v177;
  *&v187.tx = v178;
  v36 = v34;
  v37 = v35;
  v171 = v30;
  v172 = v33;
  v190 = CGRectApplyAffineTransform(*(&v30 - 24), &v187);
  x = v190.origin.x;
  y = v190.origin.y;
  width = v190.size.width;
  height = v190.size.height;
  v42 = *(v21 + 20);
  if (v42 == 1)
  {
    v43 = a3;
LABEL_37:
    v44 = a6;
LABEL_38:
    v45 = *&v12;
    v46 = 0;
    goto LABEL_39;
  }

  v13 = 0;
  if (v190.origin.x == INFINITY)
  {
    return v13;
  }

  if (v190.origin.y == INFINITY)
  {
    return v13;
  }

  v13 = 0;
  if (v190.size.width == 0.0 || v190.size.height == 0.0)
  {
    return v13;
  }

  v43 = a3;
  if (v42)
  {
    goto LABEL_37;
  }

  v44 = a6;
  if (*(v21 + 184) != 1)
  {
    goto LABEL_38;
  }

  v45 = *&v12;
  v46 = *(v21 + 80);
LABEL_39:
  v47 = v29 | vcvtpd_s64_f64(v18 * 255.0);
  v48 = &v176;
  if (!v46)
  {
    v48 = &v182;
  }

  v49 = v48[1];
  v179 = *v48;
  v180 = v49;
  v181 = v48[2];
  if (RIPGetCacheState_predicate != -1)
  {
    v146 = v46;
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    v46 = v146;
  }

  v50 = v174;
  v163 = v47 | v27;
  if (*(RIPGetCacheState_cache_state + 33) == 1 && (v51 = v46, v52 = CGColorGetPatternBaseColor(v15), v46 = v51, !v52))
  {
    v103 = *(v15 + 32);
    v53 = v45;
    if (v103)
    {
      if (!*(v103 + 20) && *(v103 + 184) == 1 && (v104 = *(v103 + 80)) != 0)
      {
        v105 = (v104 + 232);
        v106 = 2;
      }

      else
      {
        v105 = (v103 + 88);
        v106 = 1;
      }

      v54 = v44;
      v107 = *v105;
    }

    else
    {
      v107 = 0;
      v106 = 1;
      v54 = v44;
    }

    v55 = v43;
    *&v187.a = MEMORY[0x1E69E9820];
    *&v187.b = 0x40000000;
    *&v187.c = __lookup_pattern_entry_block_invoke;
    *&v187.d = &__block_descriptor_tmp_20642;
    *&v187.tx = &v179;
    v187.ty = v53;
    v188 = v163;
    Entry = RIPDataGetEntry(*&v53, v107, v106, &v187);
    v46 = v51;
    if (Entry)
    {
      v109 = Entry;
      if (!v51)
      {
        v110 = *(Entry + 16);
        v111 = *(Entry + 17);
        v112 = *(Entry + 18);
        v113 = *(Entry + 19);
        v191.origin.x = x;
        v191.origin.y = y;
        v191.size.width = width;
        v191.size.height = height;
        v198.origin.x = v110;
        v198.origin.y = v111;
        v198.size.width = v112;
        v198.size.height = v113;
        if (!CGRectEqualToRect(v191, v198))
        {
          _CGHandleAssert("ripc_GetPattern", 729, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPColor.c", "CGRectEqualToRect(bbox, p->bounds)", "bbox{o:{%f,%f}, s:{%f,%f}} != bounds{o:{%f,%f}, s:{%f,%f}}", x, y, width, height, v110, v111, v112, v113);
        }
      }

      get_pattern_phase(v182.f64, v54, *(*(v55 + 120) + 24), *(*(v55 + 120) + 32), x, y);
      v13 = v109[20];
      if (v13)
      {
        (*(*v13 + 16))(v13);
      }

      return v13;
    }
  }

  else
  {
    v53 = v45;
    v54 = v44;
    v55 = v43;
  }

  if (v34 == INFINITY || v35 == INFINITY || v172.f64[0] == 0.0 || v171.f64[0] == 0.0 || *(v21 + 136) != v172.f64[0] || *(v21 + 144) != v171.f64[0] || width * height > (*(*(*&v53 + 48) + 24) * *(*(*&v53 + 48) + 20)))
  {
    goto LABEL_60;
  }

  v56 = vabsq_f64(vmulq_n_f64(v170, v172.f64[0]));
  v57 = vabsq_f64(vmulq_n_f64(v169, v171.f64[0]));
  __asm { FMOV            V1.2D, #1.0 }

  if (vcvtd_n_s64_f64(v57.f64[0], 8uLL) || vcvtd_n_s64_f64(v56.f64[1], 8uLL))
  {
    v62 = vcvtd_n_s64_f64(v57.f64[1], 8uLL);
    if (vcvtd_n_s64_f64(v56.f64[0], 8uLL))
    {
      _ZF = 0;
    }

    else
    {
      _ZF = v62 == 0;
    }

    if (_ZF)
    {
      v57.f64[1] = v56.f64[1];
      v56 = v57;
    }

    else
    {
      v56 = vaddq_f64(v56, v57);
      v64 = vmovn_s64(vcgtq_f64(v56, _Q1));
      if (vorr_s8(v64, vdup_lane_s32(v64, 1)).u8[0])
      {
LABEL_60:
        v65 = *&v53;
        v66 = v50;
        return create_pattern_tile_pattern(v65, v66, v55, v15, a5, &v182, v18);
      }
    }
  }

  else
  {
    v56.f64[1] = v57.f64[1];
  }

  v114 = vbslq_s8(vcgtq_f64(v56, _Q1), vrndaq_f64(v56), _Q1);
  v186 = vmovn_s64(vcvtq_s64_f64(v114));
  v115 = v186.i32[1];
  v116 = v186.i32[0];
  v117 = v186.i32[0] <= 1 && v186.i32[1] < 2;
  if (!v117 && !*(v21 + 152))
  {
    v141 = vcvtd_n_s64_f64(v114.f64[1] - v56.f64[1], 8uLL);
    if (vcvtd_n_s64_f64(vsubq_f64(v114, v56).f64[0], 8uLL) || v141 != 0)
    {
      v65 = *&v53;
      v66 = v174;
      return create_pattern_tile_pattern(v65, v66, v55, v15, a5, &v182, v18);
    }
  }

  v161 = v46;
  v162 = v53;
  v176 = vmulq_n_f64(v170, vdivq_f64(v114, v56).f64[0]);
  v177 = vmulq_n_f64(v169, v114.f64[1] / v56.f64[1]);
  *&v187.a = v176;
  *&v187.c = v177;
  *&v187.tx = v178;
  v192.origin.x = v34;
  v192.origin.y = v35;
  v192.size.height = v171.f64[0];
  v192.size.width = v172.f64[0];
  v193 = CGRectApplyAffineTransform(v192, &v187);
  v118 = v193.origin.x;
  v119 = v193.origin.y;
  v170.f64[0] = v193.size.width;
  v169.f64[0] = v193.size.height;
  v120 = vcvtmd_s64_f64(v193.origin.x);
  v172.f64[0] = floor(v193.origin.x);
  v185 = __PAIR64__(vcvtmd_s64_f64(v193.origin.y), v120);
  LODWORD(v171.f64[0]) = HIDWORD(v185);
  v121 = floor(v193.origin.y);
  *&v187.a = v167;
  *&v187.c = v166;
  *&v187.tx = v164;
  *&v187.ty = v165;
  v175[0] = v176;
  v175[1] = v177;
  v175[2] = v178;
  __CGAffineTransformInverseConcat(&v176, &v187, v175);
  v122 = v121;
  v123 = v172.f64[0];
  v178.f64[0] = v178.f64[0] - (v118 - v172.f64[0]);
  v178.f64[1] = v178.f64[1] - (v119 - v121);
  if (((v18 >= 1.0) & *(v21 + 186)) != 0)
  {
    v124 = 32;
  }

  else
  {
    v124 = 33;
  }

  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    v122 = v121;
    v123 = v172.f64[0];
  }

  v125 = v115;
  if ((*(RIPGetCacheState_cache_state + 33) & (PatternBaseColor == 0)) != 0)
  {
    v126 = v124 | 4;
  }

  else
  {
    v126 = v124;
  }

  v127 = *(*(*&v162 + 48) + 32);
  v128 = v120;
  v129 = v116 | v115;
  if ((v116 | v115) < 0)
  {
    v130 = v126;
    v131 = v116;
    v132 = v125;
    v167.f64[0] = v122;
    if (COERCE_DOUBLE(CGRectStandardize(*&v123)) != v128)
    {
      return 0;
    }

    v194.origin.x = v172.f64[0];
    v194.origin.y = v167.f64[0];
    v194.size.width = v116;
    v194.size.height = v125;
    v195 = CGRectStandardize(v194);
    if (v195.origin.y != SLODWORD(v171.f64[0]))
    {
      return 0;
    }

    v196.origin.x = v172.f64[0];
    v196.origin.y = v167.f64[0];
    v196.size.width = v116;
    v196.size.height = v125;
    v197 = CGRectStandardize(v196);
    if (v197.size.width != v116)
    {
      return 0;
    }

    v133 = v129 >> 31;
    v134 = v125;
    v53 = v162;
    v123 = v172.f64[0];
    v122 = v167.f64[0];
    v126 = v130;
    if (v133)
    {
      v135 = v116;
      v136 = v125;
      *(&v134 - 3) = CGRectStandardize(*&v123);
      v126 = v130;
      v122 = v167.f64[0];
      v123 = v172.f64[0];
    }
  }

  else
  {
    v13 = 0;
    if (v123 != v128 || v122 != SLODWORD(v171.f64[0]))
    {
      return v13;
    }

    v134 = v115;
    v53 = v162;
  }

  if (v134 != v125)
  {
    return 0;
  }

  v137 = *(*&v53 + 8);
  v138 = v122;
  v139 = v123;
  if (v137)
  {
    v140 = *(v137 + 96);
  }

  else
  {
    v140 = 3;
  }

  v50 = v174;
  v143 = RIPLayerCreate(RIPLayer_ripl_class, &v185, v126 | 8u, v127, v140);
  if (!v143)
  {
    goto LABEL_60;
  }

  v13 = v143;
  build_tile(v143, *&v53, v174, v55, v15, &CGSizeZero.width, &v176, v139, v138, v170.f64[0], v169.f64[0], v18);
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  get_pattern_phase(v182.f64, v54, *(*(v55 + 120) + 24), *(*(v55 + 120) + 32), x, y);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 33) == 1 && !PatternBaseColor && ((*(v13 + 12) * *(v13 + 6)) & 0x80000000) == 0)
  {
    if (v161)
    {
      v144 = *(v161 + 232);
      if (v144)
      {
        v145 = 2;
        goto LABEL_187;
      }

      v147 = v161;
      v148 = RIPDataCreate(v161);
      v149 = 0;
      atomic_compare_exchange_strong_explicit((v161 + 232), &v149, v148, memory_order_relaxed, memory_order_relaxed);
      v144 = *(v147 + 232);
      v145 = 2;
    }

    else
    {
      v144 = *(v21 + 88);
      if (v144)
      {
        v145 = 1;
LABEL_187:
        v151 = RIPCacheEntryCreate(v145, v144);
        v151[8] = v127;
        *(v151 + 18) = v163;
        v152 = v162;
        v153 = *(*&v162 + 148);
        *(v151 + 76) = *(*&v162 + 132);
        *(v151 + 23) = v153;
        v154 = v180;
        *(v151 + 6) = v179;
        *(v151 + 7) = v154;
        (*(*v13 + 16))(v13);
        v151[20] = v13;
        *(v151 + 16) = x;
        *(v151 + 17) = y;
        *(v151 + 18) = width;
        *(v151 + 19) = height;
        RIPLockCacheState();
        v155 = v144[3];
        v156 = *v151;
        v144[3] = v151;
        *v151 = v144 + 2;
        *v155 = v156;
        *(v156 + 8) = v155;
        ++v144[5];
        ripc_AddEntry(*(*&v152 + 208), v151);
        if (v144[5] <= 0x20uLL)
        {
          RIPUnlockCacheState();
        }

        else
        {
          v157 = v144[2];
          RIPCacheEntryRemove(v157);
          v157[1] = 0;
          RIPUnlockCacheState();
          do
          {
            v158 = v157[1];
            RIPCacheEntryRelease(v157);
            v157 = v158;
          }

          while (v158);
        }

        return v13;
      }

      v148 = RIPDataCreate(v21);
      v150 = 0;
      atomic_compare_exchange_strong_explicit((v21 + 88), &v150, v148, memory_order_relaxed, memory_order_relaxed);
      v144 = *(v21 + 88);
      v145 = 1;
    }

    if (v144 != v148)
    {
      CFRelease(v148);
    }

    if (v144)
    {
      goto LABEL_187;
    }
  }

  return v13;
}

uint64_t *RIPLayerBltGlyph(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int32x2_t *a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v209 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v20 = 0;
    goto LABEL_27;
  }

  if (!*(a2 + 64))
  {
    if (*(a2 + 56))
    {
      v20 = 0;
      goto LABEL_16;
    }

    IsEnclosed = ripl_IsEnclosed(a4, (a2 + 12));
    goto LABEL_14;
  }

  v16 = *(a2 + 72);
  if (!v16)
  {
    IsEnclosed = ripl_IsContained(a4, (a2 + 12));
LABEL_14:
    v20 = 0;
    if (IsEnclosed)
    {
      v14 = 0;
    }

    goto LABEL_16;
  }

  v17 = *(a4 + 3);
  v18 = *(a2 + 24) + *(a2 + 16) - (*(a4 + 1) + v17);
  v19 = shape_enclose_with_bounds(v16, *a4 - *(a2 + 12), v18, *(a4 + 2) + *a4 - *(a2 + 12), v18 + v17);
  v20 = v19;
  if (v19)
  {
    if (v19 == &the_empty_shape)
    {
      return 0;
    }

    if (v19[v19[1]] == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  v22 = *(a4 + 9) * *(a4 + 8);
  v65 = v22 >> 31 == 0;
  v23 = v22 + 15;
  v25 = v65 && v23 >= 0;
  if (v14 && (v25 & 1) == 0)
  {
    if (v20)
    {
LABEL_25:
      free(v20);
    }

    return 0;
  }

LABEL_27:
  v208 = 0;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = a4;
  }

  v28 = *(a1 + 5);
  if (!v28)
  {
    v202 = 0uLL;
    v203 = 0uLL;
    v200 = 0uLL;
    v201 = 0uLL;
    v198 = 0uLL;
    v199 = 0uLL;
    v196 = 0uLL;
    v197 = 0uLL;
    v194 = 0uLL;
    v195 = 0uLL;
    v192 = 0uLL;
    v193 = 0uLL;
    v190 = 0uLL;
    v191 = 0uLL;
    v28 = &v190;
    *&v204 = 0;
  }

  *v186 = 0uLL;
  memset(v187, 0, 24);
  v184 = 0uLL;
  *__b = 0uLL;
  result = (*(*a1 + 32))(a1, 32, v27);
  if (result)
  {
    v181 = 0;
    v182 = 0;
    v183 = 0;
    if (!*result)
    {
      goto LABEL_65;
    }

    v179 = *result;
    if (!*(*result + 32))
    {
      goto LABEL_65;
    }

    v174 = result;
    if (!*(a1 + 7) && !ripl_CreateMask(a1, 1))
    {
      goto LABEL_65;
    }

    *(v28 + 18) = *(a8 + 64);
    *v28 = *a8;
    v30.n128_f64[0] = ripl_BltOpDestination(v28, v27, a1);
    v159 = v14;
    if (a5)
    {
      v31 = *a5;
      if (*a5 != &ripc_class)
      {
        if (v31)
        {
          v176 = a7;
          while (v31 != RIPLayer_ripl_class)
          {
            if (!*v31)
            {
              goto LABEL_65;
            }

            v31 = (*v31)(v30);
            v32 = 0;
            v33 = 0;
            v29 = 1;
            if (!v31)
            {
              goto LABEL_66;
            }
          }

          v43 = (*(*a5 + 32))(a5, 16, a5 + 12, v29, v30);
          a7 = v176;
          if (v43)
          {
            if (*(*v43 + 8) == *(v179 + 8) && (*(a5 + 56) || ripl_CreateMask(a5, 0)))
            {
              v49 = ripl_BltOpSourceLayer(v28, v27, a1, a6, a5);
              v153 = 0;
              v54 = 0;
              v150 = 0;
              if (!v176)
              {
                goto LABEL_96;
              }

LABEL_84:
              if (*a7 != &ripc_class)
              {
LABEL_96:
                v149 = v54;
                *(v28 + 2) = 1;
                v58 = *(v27 + 1);
                v173 = *v27;
                v59 = *(v27 + 3);
                v171 = *(v28 + 4);
                v172 = *(v28 + 3);
                v156 = *(v28 + 15);
                v157 = *(v28 + 14);
                LODWORD(v187[0]) = a1[7] & 0x100;
                v186[1] = 0;
                *(v187 + 12) = 4;
                *(v187 + 4) = a4[4];
                v154 = a4[2];
                if (v154)
                {
                  v170 = v27;
                  v147 = a5;
                  v148 = a1;
                  v60 = 0;
                  v32 = 0;
                  v168 = v59 + v58;
                  v61 = a4 + 5;
                  v155 = v49 << 8;
                  v151 = v28;
                  v152 = v20;
                  v62 = v153;
                  v63 = a4[2];
                  v158 = a4 + 5;
                  while (1)
                  {
                    v180 = 0uLL;
                    v64 = v186[1];
                    if (v186[1])
                    {
                      v65 = DWORD1(v187[0]) == 0;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    if (v65)
                    {
                      free(v186[1]);
                      v64 = 0;
                      v186[1] = 0;
                    }

                    v66 = &v61[5 * v60];
                    if (!v14)
                    {
                      v78 = HIDWORD(v66[1]);
                      v79 = *v66;
                      v80 = *(v66 + 1) + v78;
                      *&v81 = 0;
                      *(&v81 + 1) = v66[1];
                      v82 = DWORD2(v81);
                      goto LABEL_206;
                    }

                    if (CGSBoundsIntersection((v14 + 12), &v61[5 * v60], &v180))
                    {
                      v68 = *(v66 + 5);
                      v69 = HIDWORD(v187[0]);
                      v70 = (HIDWORD(v187[0]) - 1);
                      if (v68 != 8 && (v68 < 8 || LODWORD(v187[0]) == 0))
                      {
                        v161 = v32;
                        v184 = *v66;
                        v72 = *(v66 + 2);
                        v73 = (v72 + v70) & -HIDWORD(v187[0]);
                        __b[0] = (v73 | 0x800000000);
                        LODWORD(v186[0]) = *(v66 + 8);
                        __b[1] = v64;
                        v165 = HIDWORD(v187[0]) - 1;
                        if (v64 && (v74 = *(v66 + 3), v74 * v73 <= LODWORD(v187[1])))
                        {
                          v75 = v62;
                          v76 = HIDWORD(v187[0]);
                        }

                        else
                        {
                          v75 = v62;
                          v76 = HIDWORD(v187[0]);
                          if (DWORD1(v187[0]))
                          {
                            v77 = DWORD2(v187[0]) * ((DWORD1(v187[0]) + v70) & -HIDWORD(v187[0]));
                          }

                          else
                          {
                            v77 = *(v66 + 3) * v73;
                          }

                          LODWORD(v187[1]) = v77;
                          free(v64);
                          v83 = malloc_type_malloc((LODWORD(v187[1]) + v76), 0x83D80E65uLL);
                          v186[1] = v83;
                          __b[1] = v83;
                          if (!v83)
                          {
                            v62 = v75;
                            v32 = v161;
                            goto LABEL_210;
                          }

                          v64 = v83;
                          v73 = __b[0];
                          v72 = *(v66 + 2);
                          v74 = *(v66 + 3);
                          v68 = *(v66 + 5);
                        }

                        CGSConvertBitsToMask(v66[3], *(v66 + 4), v64, v73, v72, v74, v68);
                        v66 = &v184;
                        v69 = v76;
                        v62 = v75;
                        v32 = v161;
                        v70 = v165;
                      }

                      v84 = *(v14 + 64);
                      if (v84)
                      {
                        v85 = v20;
                        if (v20 || (v85 = *(v14 + 72)) != 0)
                        {
                          v163 = v69;
                          v166 = v70;
                          *v188 = 0;
                          v189 = 0;
                          shape_enum_clip_alloc(v70, v67, v85, 1, 1, 0, v180 - *(v14 + 12), *(v14 + 24) + *(v14 + 16) - (DWORD1(v180) + HIDWORD(v180)), SDWORD2(v180), SHIDWORD(v180));
                          if (v86)
                          {
                            v87 = v86;
                            v162 = v32;
                            v88 = *(v66 + 1);
                            v89 = *v66;
                            v90 = *(v66 + 3);
                            v91 = DWORD1(v180);
                            v92 = v180;
                            v93 = HIDWORD(v180);
                            v94 = shape_enum_clip_next(v86, &v189 + 1, &v189, &v188[1], v188);
                            if (v94)
                            {
                              v95 = v94;
                              if (*v188 == __PAIR64__(DWORD2(v180), HIDWORD(v180)))
                              {
                                free(v87);
                                v28 = v151;
                                v20 = v152;
                                v14 = v159;
                                v32 = v162;
                                v62 = v153;
                                v63 = v154;
                                if ((v95 & 0x80000000) == 0)
                                {
                                  goto LABEL_204;
                                }

                                goto LABEL_198;
                              }

                              v178 = v92 - v89;
                              v175 = v90 + v88 - (v91 + v93);
                              if (v66 == &v184)
                              {
                                LODWORD(v186[0]) = 0;
                                v28 = v151;
                                v20 = v152;
                                v14 = v159;
                                v32 = v162;
                                v62 = v153;
                                v63 = v154;
                                do
                                {
                                  if (v95 <= 0)
                                  {
                                    CGBlt_fillBytes(v188[1], v188[0], 0, __b[1] + SHIDWORD(v189) + v178 + ((v189 + v175) * LODWORD(__b[0])), __b[0]);
                                  }

                                  v95 = shape_enum_clip_next(v87, &v189 + 1, &v189, &v188[1], v188);
                                }

                                while (v95);
                                v66 = &v184;
                                goto LABEL_191;
                              }

                              v109 = *(v66 + 5);
                              v110 = v109 >> 3;
                              v111 = (((v109 >> 1) & 0x1FFFFFFF) + v166) & -v163;
                              v184 = v180;
                              v112 = (v111 - 1 + (v109 >> 3) * DWORD2(v180)) & -v111;
                              __b[0] = __PAIR64__(v109, v112);
                              LODWORD(v186[0]) = 0;
                              __b[1] = v186[1];
                              if (v186[1] && (HIDWORD(v180) * v112) <= LODWORD(v187[1]) || (!DWORD1(v187[0]) ? (v113 = HIDWORD(v180) * v112) : (v113 = DWORD2(v187[0]) * ((v111 - 1 + DWORD1(v187[0]) * v110) & -v111)), LODWORD(v187[1]) = v113, free(v186[1]), v186[1] = malloc_type_malloc((LODWORD(v187[1]) + v111), 0xABE24308uLL), (__b[1] = v186[1]) != 0))
                              {
                                v164 = 0;
                                v167 = 0;
                                v136 = 0;
                                v137 = 0;
                                v138 = 0;
                                do
                                {
                                  v139 = v189;
                                  v140 = __b[1] + (LODWORD(__b[0]) * v189);
                                  v141 = HIDWORD(v189);
                                  v142 = HIDWORD(v189) * v110;
                                  if (v95 < 1)
                                  {
                                    CGBlt_fillBytes(v188[1] * v110, v188[0], 0, &v140[v142], __b[0]);
                                  }

                                  else
                                  {
                                    v136 = v188[1];
                                    v137 = v188[0];
                                    CGBlt_copyBytes(v188[1] * v110, v188[0], (v66[3] + (*(v66 + 4) * (v189 + v175)) + (HIDWORD(v189) + v178) * v110), &v140[v142], *(v66 + 4), __b[0]);
                                    ++v138;
                                    v164 = v139;
                                    v167 = v141;
                                  }

                                  v95 = shape_enum_clip_next(v87, &v189 + 1, &v189, &v188[1], v188);
                                }

                                while (v95);
                                v28 = v151;
                                v32 = v162;
                                if (v138 == 1)
                                {
                                  LODWORD(v180) = v180 + v167;
                                  DWORD1(v180) = DWORD1(v180) - (v137 + v164) + HIDWORD(v180);
                                  *(&v180 + 1) = __PAIR64__(v137, v136);
                                }

                                else
                                {
                                  v66 = &v184;
                                }

                                v20 = v152;
                                v14 = v159;
                                v62 = v153;
                                v63 = v154;
LABEL_191:
                                v61 = v158;
                                free(v87);
                                goto LABEL_205;
                              }
                            }

                            free(v87);
                            v28 = v151;
                            v20 = v152;
                            v14 = v159;
                            v32 = v162;
LABEL_197:
                            v62 = v153;
                            v63 = v154;
                          }

LABEL_198:
                          v61 = v158;
                          goto LABEL_210;
                        }

                        v115 = *(v14 + 12);
                        v114 = *(v14 + 16);
                        if (v180 <= v115)
                        {
                          v116 = DWORD2(v180);
                          v117 = *(v14 + 20);
                        }

                        else
                        {
                          v116 = DWORD2(v180);
                          v117 = *(v14 + 20);
                          if (SDWORD1(v180) > v114 && DWORD2(v180) + v180 < v117 + v115 && HIDWORD(v180) + DWORD1(v180) < *(v14 + 24) + v114)
                          {
                            goto LABEL_204;
                          }
                        }

                        v119 = v84 & 0xFF000000;
                        if (v180 != v115)
                        {
                          v119 = 0;
                        }

                        v120 = *(v14 + 64);
                        if (DWORD1(v180) != v114)
                        {
                          v120 = 0;
                        }

                        if (v116 + v180 == v117 + v115)
                        {
                          v121 = *(v14 + 64) & 0xFF00;
                        }

                        else
                        {
                          v121 = 0;
                        }

                        v122 = v84 & 0xFF0000;
                        if (HIDWORD(v180) + DWORD1(v180) == *(v14 + 24) + v114)
                        {
                          v123 = v122;
                        }

                        else
                        {
                          v123 = 0;
                        }

                        v124 = v120 | v119 | v121;
                        v125 = v180 - *v66;
                        v126 = *(v66 + 1) - (HIDWORD(v180) + DWORD1(v180)) + *(v66 + 3);
                        if (v66 == &v184)
                        {
                          v184 = v180;
                          LODWORD(v186[0]) = 0;
                          v135 = CGSCombineMask(__b[1] + v125 + (LODWORD(__b[0]) * v126), __b[0], __b[1], __b[0], v116, SHIDWORD(v180), v124 | v123);
LABEL_201:
                          if (v135)
                          {
                            v66 = &v184;
                          }

                          v14 = v159;
                          v63 = v154;
LABEL_204:
                          v61 = v158;
LABEL_205:
                          v82 = DWORD2(v180);
                          v78 = HIDWORD(v180);
                          v79 = v180;
                          v80 = DWORD1(v180) + HIDWORD(v180);
                          LODWORD(v81) = v180 - *v66;
                          DWORD1(v81) = HIDWORD(v66[1]) - (DWORD1(v180) + HIDWORD(v180)) + *(v66 + 1);
                          *(&v81 + 1) = v66[1];
LABEL_206:
                          *(v28 + 1) = v82;
                          *(v28 + 2) = v78;
                          *(v28 + 104) = v81;
                          v145 = v79 - v173;
                          *(v28 + 17) = v66[3];
                          *(v28 + 124) = v66[2];
                          *(v28 + 30) = *(v66 + 8);
                          *(v28 + 3) = v145 + v172;
                          *(v28 + 4) = v168 - v80 + v171;
                          if (v62 || (*v28 = *v28 & 0xFFFF00FF | v155, *(v28 + 14) = v145 + v157, *(v28 + 15) = v168 - v80 + v156, CGBlt_initialize(v28)))
                          {
                            if ((*(v179 + 32))(v174, v28))
                            {
                              v32 = v170;
                            }
                          }

                          goto LABEL_210;
                        }

                        v127 = *(v66 + 5);
                        v128 = v127 >> 3;
                        v129 = (((v127 >> 1) & 0x1FFFFFFF) + v70) & -v69;
                        v184 = v180;
                        v130 = (v129 - 1 + (v127 >> 3) * v116) & -v129;
                        __b[0] = __PAIR64__(v127, v130);
                        LODWORD(v186[0]) = 0;
                        v131 = v186[1];
                        __b[1] = v186[1];
                        if (v186[1] && v130 * HIDWORD(v180) <= LODWORD(v187[1]) || (!DWORD1(v187[0]) ? (v132 = v130 * HIDWORD(v180)) : (v132 = DWORD2(v187[0]) * ((v129 - 1 + DWORD1(v187[0]) * v128) & -v129)), LODWORD(v187[1]) = v132, free(v186[1]), v131 = malloc_type_malloc((LODWORD(v187[1]) + v129), 0x7E06998CuLL), v186[1] = v131, (__b[1] = v131) != 0))
                        {
                          v143 = *(v66 + 4);
                          v144 = v66[3] + (v143 * v126);
                          if (v128 == 1)
                          {
                            v135 = CGSCombineMask((v144 + v125), v143, v131, __b[0], SDWORD2(v180), SHIDWORD(v180), v124 | v123);
                          }

                          else
                          {
                            v135 = CGSCombineDeepMask((v144 + v128 * v125), v143, v131, __b[0], SDWORD2(v180), SHIDWORD(v180), v124 | v123);
                          }

                          v20 = v152;
                          v62 = v153;
                          goto LABEL_201;
                        }

LABEL_196:
                        v20 = v152;
                        v14 = v159;
                        goto LABEL_197;
                      }

                      v96 = *(v14 + 56);
                      if (!v96)
                      {
                        goto LABEL_204;
                      }

                      v97 = *(v14 + 16);
                      v98 = v14;
                      v99 = v180 - *(v14 + 12);
                      v100 = *(v98 + 24) + v97 - (HIDWORD(v180) + DWORD1(v180));
                      v101 = v180 - *v66;
                      v102 = *(v66 + 1) - (HIDWORD(v180) + DWORD1(v180)) + *(v66 + 3);
                      if (v66 == &v184)
                      {
                        v184 = v180;
                        LODWORD(v186[0]) = 0;
                        v118 = CGSCombineMaskToMask(__b[1] + v101 + (LODWORD(__b[0]) * v102), __b[0], v96 + v99 + (*(v98 + 48) * v100), *(v98 + 48), __b[1], __b[0], SDWORD2(v180), SHIDWORD(v180));
                      }

                      else
                      {
                        v103 = *(v66 + 5);
                        v104 = v103 >> 3;
                        v105 = (((v103 >> 1) & 0x1FFFFFFF) + v70) & -v69;
                        v184 = v180;
                        v106 = (v105 - 1 + DWORD2(v180) * (v103 >> 3)) & -v105;
                        __b[0] = __PAIR64__(v103, v106);
                        LODWORD(v186[0]) = 0;
                        v107 = v186[1];
                        __b[1] = v186[1];
                        if (!v186[1] || (v106 * HIDWORD(v180)) > LODWORD(v187[1]))
                        {
                          v108 = DWORD1(v187[0]) ? DWORD2(v187[0]) * ((v105 - 1 + DWORD1(v187[0]) * v104) & -v105) : v106 * HIDWORD(v180);
                          LODWORD(v187[1]) = v108;
                          free(v186[1]);
                          v107 = malloc_type_malloc((LODWORD(v187[1]) + v105), 0x57F53348uLL);
                          v186[1] = v107;
                          __b[1] = v107;
                          if (!v107)
                          {
                            goto LABEL_196;
                          }
                        }

                        v133 = *(v66 + 4);
                        v134 = v66[3] + (v133 * v102);
                        if (v104 == 1)
                        {
                          v118 = CGSCombineMaskToMask(v134 + v101, v133, *(v159 + 56) + (*(v159 + 48) * v100) + v99, *(v159 + 48), v107, __b[0], SDWORD2(v180), SHIDWORD(v180));
                        }

                        else
                        {
                          v118 = CGSCombineDeepMaskToDeepMask(v134 + v104 * v101, v133, *(v159 + 56) + (*(v159 + 48) * v100) + v99, *(v159 + 48), v107, __b[0], SDWORD2(v180), SHIDWORD(v180));
                        }

                        v20 = v152;
                        v62 = v153;
                      }

                      v61 = v158;
                      v14 = v159;
                      v63 = v154;
                      if (!v118)
                      {
                        goto LABEL_205;
                      }

                      if ((v118 & 0x80000000) == 0)
                      {
                        v66 = &v184;
                        goto LABEL_205;
                      }
                    }

LABEL_210:
                    if (++v60 == v63)
                    {
                      v146 = v186[1];
                      a5 = v147;
                      a1 = v148;
                      goto LABEL_213;
                    }
                  }
                }

                v146 = 0;
                v32 = 0;
LABEL_213:
                free(v146);
                v33 = v150;
                LOBYTE(v29) = v149;
                goto LABEL_66;
              }

              v55 = *(a7 + 24);
              if (v55 == 2)
              {
                v56 = 4;
              }

              else if (v55 == 1)
              {
                v56 = 3;
              }

              else
              {
                if (v55)
                {
                  LODWORD(v181) = 0;
                  goto LABEL_95;
                }

                v56 = 1;
              }

              LODWORD(v181) = v56;
LABEL_95:
              v182 = a7 + 28;
              v57 = *(a8 + 56) * *(a7 + 156);
              *&v183 = v57;
              *(v28 + 19) = &v181;
              goto LABEL_96;
            }

            LOBYTE(v29) = 0;
            goto LABEL_64;
          }
        }

LABEL_65:
        v32 = 0;
        v33 = 0;
        LOBYTE(v29) = 1;
        goto LABEL_66;
      }

      v35 = *(v179 + 24);
      if (!v35)
      {
        goto LABEL_65;
      }

      v40 = *(a8 + 48);
      v41 = *(a5 + 16);
      v36 = *(a5 + 156) * v40;
      v160 = *(a5 + 8);
      if (v160 && v41 == *(v28 + 43) && v160 == *(v28 + 20) && v41 == *(v28 + 42) && v36 == *(v28 + 44))
      {
        v39 = v28 + 184;
        goto LABEL_77;
      }

      v169 = v27;
      v34 = a5 + 28;
      v42 = *(a5 + 24);
      v29 = 1;
      v37 = v174;
      if (v42)
      {
        if (v42 == 2)
        {
          v177 = *(a5 + 16);
          v29 = 4;
        }

        else
        {
          if (v42 != 1)
          {
LABEL_64:
            v32 = 0;
            v33 = 0;
            goto LABEL_66;
          }

          v177 = *(a5 + 16);
          v29 = 3;
        }
      }

      else
      {
        v177 = *(a5 + 16);
      }
    }

    else
    {
      v34 = 0;
      v35 = *(v179 + 24);
      if (!v35)
      {
        LOBYTE(v29) = 1;
        v32 = 0;
        v33 = 0;
LABEL_66:
        *(v28 + 19) = 0;
        if (v20)
        {
          v44 = v33;
          v45 = v29;
          free(v20);
          LOBYTE(v29) = v45;
          v33 = v44;
        }

        if (v33 && v33 != v28 + 184)
        {
          v46 = v29;
          free(v33);
          LOBYTE(v29) = v46;
        }

        if ((v29 & 1) == 0)
        {
          (*(*a5 + 48))(a5, 0);
        }

        (*(*a1 + 48))(a1, v32);
        return (v32 != 0);
      }

      v169 = v27;
      v177 = 0;
      v29 = 0;
      v36 = *(a8 + 48);
      v160 = 0;
      v37 = v174;
    }

    v38 = v35(v37, v28 + 184, 64, v29, v34, *(a8 + 4), v36);
    v39 = v38;
    if (v38 == (v28 + 184))
    {
      if ((*v38 & 0xFFF00000) == 0x400000)
      {
        *(v28 + 20) = v160;
        *(v28 + 42) = v177;
        *(v28 + 43) = v177;
        *(v28 + 44) = v36;
      }

      else
      {
        *(v28 + 20) = 0;
        *(v28 + 21) = 0;
      }
    }

    v27 = v169;
LABEL_77:
    v47 = a6;
    v48 = v39;
    v49 = ripl_BltOpSourcePattern(v28, a1, v47, v39);
    v150 = v48;
    v153 = !v14 && (*v48 & 0xFFF00000) == 0x400000 && (v50 = *a4, v51 = a1[3], v51 <= *a4) && (v52 = a1[4], v52 <= SHIDWORD(v50)) && (v53 = a4[1], v50 + v53 <= a1[5] + v51) && HIDWORD(v50) + HIDWORD(v53) <= a1[6] + v52;
    v54 = 1;
    if (!a7)
    {
      goto LABEL_96;
    }

    goto LABEL_84;
  }

  return result;
}

double ripl_BltOpDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 4) = *(a2 + 8);
  result = *(a3 + 20);
  *(a1 + 20) = result;
  *(a1 + 12) = *a2 - *(a3 + 12);
  *(a1 + 16) = *(a3 + 24) + *(a3 + 16) - (*(a2 + 4) + *(a2 + 12));
  v4 = *(a3 + 56);
  v5 = *(a3 + 64);
  v6 = *(a3 + 52);
  *(a1 + 28) = *(a3 + 48);
  *(a1 + 32) = v5;
  v7 = *(a3 + 72);
  *(a1 + 40) = v4;
  *(a1 + 48) = v7;
  *(a1 + 132) = v6;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateWithPropertyList(CFPropertyListRef plist)
{
  if (!plist)
  {
    return 0;
  }

  v2 = CFGetTypeID(plist);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(plist, kCFNumberSInt32Type, &valuePtr);
    return CGColorSpaceCreateWithID(valuePtr);
  }

  v5 = CFGetTypeID(plist);
  if (v5 == CFStringGetTypeID())
  {
    if (CFEqual(plist, @"kCGColorSpaceDeviceGray"))
    {
      v6 = @"kCGColorSpaceGenericGrayGamma2_2";
    }

    else if (CFEqual(plist, @"kCGColorSpaceDeviceRGB"))
    {
      v6 = @"kCGColorSpaceSRGB";
    }

    else if (CFEqual(plist, @"kCGColorSpaceDeviceCMYK"))
    {
      v6 = @"kCGColorSpaceGenericCMYK";
    }

    else
    {
      v6 = plist;
    }

    return CGColorSpaceCreateWithName(v6);
  }

  v7 = CFGetTypeID(plist);
  if (v7 != CFDataGetTypeID())
  {
    v9 = CFGetTypeID(plist);
    if (v9 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(plist, @"kCGColorSpaceExtendedRange") == 1)
      {
        Value = CFDictionaryGetValue(plist, @"kCGColorSpaceICCData");
        if (Value)
        {
          Indexed = CGColorSpaceCreateWithPropertyList(Value);
          if (CFDictionaryGetValue(plist, @"kCGColorSpaceExtendedRange") == *MEMORY[0x1E695E4D0])
          {
            Extended = CGColorSpaceCreateExtended(Indexed);
            CGColorSpaceRelease(Indexed);
            return Extended;
          }

          return Indexed;
        }
      }

      else
      {
        v12 = CFDictionaryGetValue(plist, @"kCGLastIndexKey");
        Indexed = v12;
        if (!v12)
        {
          return Indexed;
        }

        v13 = CFGetTypeID(v12);
        if (v13 == CFNumberGetTypeID())
        {
          v25 = 0;
          if (CFNumberGetValue(Indexed, kCFNumberSInt8Type, &v25) == 1)
          {
            v14 = CFDictionaryGetValue(plist, @"kCGIndexedBaseColorSpaceKey");
            if (v14)
            {
              v15 = v14;
              v16 = CFDictionaryGetValue(plist, @"kCGIndexedColorTableKey");
              if (v16)
              {
                v17 = v16;
                v18 = CFGetTypeID(v16);
                if (v18 == CFDataGetTypeID())
                {
                  Length = CFDataGetLength(v17);
                  v20 = CGColorSpaceCreateWithPropertyList(v15);
                  v21 = v25;
                  if (!v20)
                  {
                    BytePtr = CFDataGetBytePtr(v17);
                    return CGColorSpaceCreateIndexed(0, v21, BytePtr);
                  }

                  v22 = v20;
                  if (Length >= *(*(v20 + 3) + 48) + *(*(v20 + 3) + 48) * v25)
                  {
                    v24 = CFDataGetBytePtr(v17);
                    Indexed = CGColorSpaceCreateIndexed(v22, v21, v24);
                    CFRelease(v22);
                    return Indexed;
                  }

                  CFRelease(v20);
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return CGColorSpaceCreateWithICCData(plist);
}

unint64_t CGSBoundsUnion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 < 1 || SHIDWORD(a4) < 1;
  if (a2 < 1 || a2 <= 0)
  {
    v11 = !v5;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3;
    }

    if (v11)
    {
      v10 = HIDWORD(a3);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (a1 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a1;
    }

    if (SHIDWORD(a1) >= SHIDWORD(a3))
    {
      v7 = HIDWORD(a3);
    }

    else
    {
      v7 = HIDWORD(a1);
    }

    v8 = !v5;
    if (v5)
    {
      v9 = a1;
    }

    else
    {
      v9 = v6;
    }

    if (v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = HIDWORD(a1);
    }
  }

  return v9 | (v10 << 32);
}

BOOL ripl_IsEnclosed(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 >= *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 >= v3 && a1[2] + *a1 <= a2[2] + *a2 && a1[3] + v2 <= a2[3] + v3)
    {
      return 1;
    }
  }

  return result;
}

void std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a1);
    std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v2);
    }

    operator delete(a1);
  }
}

void **std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void CG::DisplayListEntryStateDrawing::~DisplayListEntryStateDrawing(CG::DisplayListEntryStateDrawing *this)
{
  *this = &unk_1EF23F810;
  v1 = *(this + 14);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F810;
  v1 = *(this + 14);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceFont *,std::shared_ptr<CG::DisplayListResourceFont>::__shared_ptr_default_delete<CG::DisplayListResourceFont,CG::DisplayListResourceFont>,std::allocator<CG::DisplayListResourceFont>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void CG::DisplayListResourceFont::~DisplayListResourceFont(CG::DisplayListResourceFont *this)
{
  *this = &unk_1EF23F610;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F610;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CG::DisplayListResourceColor::~DisplayListResourceColor(CG::DisplayListResourceColor *this)
{
  *this = &unk_1EF239A90;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239A90;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CG::DisplayListResourceClip::~DisplayListResourceClip(void **this)
{
  *this = &unk_1EF23F528;
  CGClipStackRelease(this[2]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F528;
  CGClipStackRelease(this[2]);
}

uint64_t CGColorSpaceExtendedGray()
{
  if (CGColorSpaceExtendedGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedGray_predicate, &__block_literal_global_285_6553);
  }

  v0 = CGColorSpaceExtendedGray_space;
  if (CGColorSpaceExtendedGray_space)
  {
    CFRetain(CGColorSpaceExtendedGray_space);
  }

  return v0;
}

void __CGColorSpaceExtendedGray_block_invoke()
{
  CGColorSpaceExtendedGray_space = create_singleton(color_space_state_create_extended_gray);
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceGenericGrayGamma2_2");
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedGray_space);
  v0 = CGColorSpaceExtendedGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

char *color_space_state_create_extended_gray()
{
  if (color_space_state_create_extended_gray_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_gray_cglibrarypredicate, &__block_literal_global_272);
  }

  v0 = color_space_state_create_extended_gray_f;
  if (color_space_state_create_extended_gray_cglibrarypredicate_273 != -1)
  {
    dispatch_once(&color_space_state_create_extended_gray_cglibrarypredicate_273, &__block_literal_global_276);
  }

  v1 = v0(color_space_state_create_extended_gray_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedGray";
    *(icc_with_profile + 5) = 2;
    *(*(icc_with_profile + 12) + 40) = @"Generic Gray Gamma 2.2 Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_extended_gray_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_extended_gray_f = v1;
  return result;
}

uint64_t *__color_space_state_create_extended_gray_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericGrayGamma22Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_gray_s = v1;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceGray_block_invoke()
{
  result = create_singleton(color_space_state_create_device_gray);
  CGColorSpaceCreateDeviceGray_space = result;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceGray(void)
{
  if (CGColorSpaceCreateDeviceGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceGray_predicate, &__block_literal_global_6529);
  }

  v0 = CGColorSpaceCreateDeviceGray_space;
  if (CGColorSpaceCreateDeviceGray_space)
  {
    CFRetain(CGColorSpaceCreateDeviceGray_space);
  }

  return v0;
}

double color_space_state_create_device_gray()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0xD9AA5AE6uLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 256;
    *(v0 + 14) = &device_gray_vtable;
    *(v0 + 8) = 0;
    *(v0 + 3) = 0;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceGray";
    *(v0 + 5) = &xmmword_1844DF970;
    *(v0 + 6) = 1;
    result = 3.05765335e180;
    *(v0 + 4) = xmmword_18439CA30;
  }

  return result;
}

double get_size_from_dict(const __CFDictionary *a1, double *a2)
{
  result = get_number_from_dict(a1, @"Width", a2);
  if (v5)
  {

    return get_number_from_dict(a1, @"Height", a2 + 1);
  }

  return result;
}

CFURLRef CGFontURLCreate(CFStringRef filePath, const __CFString *a2, const __CFDictionary *a3)
{
  v3 = 0;
  if (filePath)
  {
    if (a2)
    {
      v6 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
      v3 = v6;
      if (v6)
      {
        v7 = CFURLGetString(v6);
        MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
        CFRelease(v3);
        if (MutableCopy)
        {
          if (!CFStringHasPrefix(MutableCopy, @"file://"))
          {
            CFStringInsert(MutableCopy, 0, @"file://");
          }

          CFStringAppend(MutableCopy, @"#postscript-name=");
          if (append_escaped_string(MutableCopy, a2))
          {
            if (a3)
            {
              append_variations(MutableCopy, a3);
            }

            v3 = CFURLCreateWithString(0, MutableCopy, 0);
          }

          else
          {
            v3 = 0;
          }

          CFRelease(MutableCopy);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t append_escaped_string(__CFString *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v8.location = 0;
  v8.length = Length;
  if (CFStringFindWithOptions(theString, @";", v8, 0, 0))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
    v9.location = 0;
    v9.length = Length;
    CFStringFindAndReplace(MutableCopy, @";", @"/", v9, 0);
    v6 = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, 0, 0x8000100u);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = CFURLCreateStringByAddingPercentEscapes(0, theString, 0, 0, 0x8000100u);
    if (v6)
    {
LABEL_6:
      CFStringAppend(a1, v6);
      CFRelease(v6);
      return 1;
    }
  }

  return 0;
}

double get_point_from_dict(const __CFDictionary *a1, double *a2)
{
  result = get_number_from_dict(a1, @"X", a2);
  if (v5)
  {

    return get_number_from_dict(a1, @"Y", a2 + 1);
  }

  return result;
}

BOOL CGRectMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGRect *rect)
{
  if (!dict)
  {
    return 0;
  }

  if (!rect)
  {
    return 0;
  }

  get_point_from_dict(dict, &rect->origin.x);
  if (!v4)
  {
    return 0;
  }

  get_size_from_dict(dict, &rect->size.width);
  return result;
}

double get_number_from_dict(const __CFDictionary *a1, const void *a2, double *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v6 = Value;
    valuePtr = 0.0;
    if (CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr))
    {
      result = valuePtr;
      *a3 = valuePtr;
    }

    else
    {
      v7 = 0.0;
      if (CFNumberGetValue(v6, kCFNumberFloatType, &v7))
      {
        result = v7;
        *a3 = v7;
      }
    }
  }

  return result;
}

char *CGFontDBCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x60uLL, 0x1020040D7707FD8uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 32), 0);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *v1 = Mutable;
    if (!Mutable || (v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0 || (CFArrayAppendValue(*v1, v3), v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v1 + 1) = v4) == 0) || (v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(v1 + 2) = v5) == 0) || (v6 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(v1 + 3) = v6) == 0))
    {
      CGFontDBRelease(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t CGFontDBGetLocal()
{
  if (CGFontDBGetLocal_once != -1)
  {
    dispatch_once_f(&CGFontDBGetLocal_once, 0, create_local_db);
  }

  return local_db;
}

char *create_local_db()
{
  result = CGFontDBCreate();
  local_db = result;
  return result;
}

_DWORD *A8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, float a4)
{
  v5 = *(*a1 + 64);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v6 = v5[1];
    if (v6 >= a4)
    {
      v6 = a4;
      if (*v5 > a4)
      {
        v6 = *v5;
      }
    }

    v7 = ((v6 * v5[2]) + v5[3]);
    *a2 = xmmword_18439CE60;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = v7 | (v7 << 8) | ((v7 | (v7 << 8)) << 16);
    if (v7 >= 255)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 + 12;
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v8;
  }

  return a2;
}

uint64_t ripl_BltOpSourcePattern(uint64_t a1, _DWORD *a2, int32x2_t *a3, uint64_t a4)
{
  if ((*a4 & 0xFFF00000) == 0x300000)
  {
    v4 = *(a4 + 4);
    v5 = *(a4 + 12);
    v6 = *(a4 + 16);
    if (a3)
    {
      v4 = vadd_s32(*a3, v4);
    }

    v7 = 3;
    *(a1 + 1) = 3;
    v8 = a2[4];
    v9 = *(a1 + 16);
    v10 = a2[6];
    *(a1 + 56) = a2[3] - v4.i32[0] + *(a1 + 12);
    v11 = v4.i32[1] + v6 - (v8 + v10) + v9;
  }

  else
  {
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 4;
    *(a1 + 1) = 4;
    *(a1 + 56) = 0;
  }

  *(a1 + 60) = v11;
  *(a1 + 64) = v5;
  *(a1 + 68) = v6;
  *(a1 + 72) = 0;
  *(a1 + 76) = *(a4 + 20);
  *(a1 + 88) = *(a4 + 32);
  return v7;
}

uint64_t A8_mark_inner(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v197 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 96);
  v6 = *(v2 + 48);
  v7 = *(v1 + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = *(v2 + 4);
  v11 = (v10 - 1);
  if (v10 < 1)
  {
    return 0;
  }

  v12 = *(v2 + 8);
  v13 = (v12 - 1);
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v2 + 136);
  if ((*v2 & 0xFF0000) == 0x50000 || !v14)
  {
    v16 = *v2 & 0xFF00;
    if (v16 == 1024)
    {
      v196[0] = *(v2 + 4);
      v186[0] = v12;
      v17 = *(v2 + 28);
      v18 = **(v2 + 88);
      v19 = *(v2 + 12);
      v20 = *(v2 + 40) + *(v2 + 16) * v17;
      v21 = v20 + v19;
      if (!v14)
      {
        v23 = 0;
        v43 = (v20 + v19);
        goto LABEL_45;
      }

      shape_enum_clip_alloc(v1, v2, v14, 1, 1, 1, *(v2 + 104), *(v2 + 108), v10, v12);
      v23 = v22;
      if (!v22)
      {
        return 1;
      }

      while (shape_enum_clip_next(v23, &v185 + 1, &v185, v196, v186))
      {
        v43 = (v21 + v185 * v17 + SHIDWORD(v185));
        LODWORD(v10) = v196[0];
LABEL_45:
        v52 = v17 - v10;
        switch(v7)
        {
          case 0:
            v67 = v186[0];
            v78 = (v186[0] - 1) * v17;
            if (v17 < 0)
            {
              v64 = -v17;
            }

            else
            {
              v78 = 0;
              v64 = v17;
            }

            v43 += v78;
            v68 = v10;
            v65 = 0;
            goto LABEL_79;
          case 1:
            goto LABEL_73;
          case 2:
            goto LABEL_47;
          case 3:
            do
            {
              v60 = v196[0];
              do
              {
                v61 = *v43;
                if (*v43)
                {
                  LOBYTE(v62) = v18;
                  if (v61 != 255)
                  {
                    v62 = v18 - (((v61 ^ 0xFF) * v18 + (((v61 ^ 0xFF) * v18) >> 8) + 1) >> 8);
                  }
                }

                else
                {
                  LOBYTE(v62) = *v43;
                }

                *v43++ = v62;
                --v60;
              }

              while (v60);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 4:
            do
            {
              v72 = v196[0];
              do
              {
                v73 = *v43;
                if (v73 == 0xFF)
                {
                  LOBYTE(v74) = 0;
                }

                else
                {
                  LOBYTE(v74) = v18;
                  if (~v73 != 255)
                  {
                    v74 = v18 - ((v73 * v18 + ((v73 * v18) >> 8) + 1) >> 8);
                  }
                }

                *v43++ = v74;
                --v72;
              }

              while (v72);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 5:
            do
            {
              v79 = v196[0];
              do
              {
                *v43 = ((v18 + ~v18) * *v43 + (((v18 + ~v18) * *v43) >> 8) + 1) >> 8;
                ++v43;
                --v79;
              }

              while (v79);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 6:
            do
            {
              v80 = v196[0];
              do
              {
                v81 = *v43;
                if (v81 != 0xFF)
                {
                  LOBYTE(v82) = v18;
                  if (~v81 != 255)
                  {
                    v82 = v81 + ((~v81 * v18 + ((~v81 * v18) >> 8) + 1) >> 8);
                  }

                  *v43 = v82;
                }

                ++v43;
                --v80;
              }

              while (v80);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 7:
            do
            {
              v77 = v196[0];
              do
              {
                *v43 -= (*v43 * ~v18 + ((*v43 * ~v18) >> 8) + 1) >> 8;
                ++v43;
                --v77;
              }

              while (v77);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 8:
            do
            {
              v63 = v196[0];
              do
              {
                *v43 -= (*v43 * v18 + ((*v43 * v18) >> 8) + 1) >> 8;
                ++v43;
                --v63;
              }

              while (v63);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 9:
            do
            {
              v59 = v196[0];
              do
              {
                *v43 = ((*v43 + (*v43 ^ 0xFF)) * v18 + (((*v43 + (*v43 ^ 0xFF)) * v18) >> 8) + 1) >> 8;
                ++v43;
                --v59;
              }

              while (v59);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 10:
            do
            {
              v83 = v196[0];
              do
              {
                *v43 = ((*v43 ^ 0xFF) * v18 + *v43 * ~v18 + (((*v43 ^ 0xFF) * v18 + *v43 * ~v18) >> 8) + 1) >> 8;
                ++v43;
                --v83;
              }

              while (v83);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 11:
            do
            {
              v70 = v196[0];
              do
              {
                v71 = *v43 + v18;
                if (v71 >= 0xFF)
                {
                  LOBYTE(v71) = -1;
                }

                *v43++ = v71;
                --v70;
              }

              while (v70);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 12:
            do
            {
              v75 = v196[0];
              do
              {
                v76 = *v43 + v18;
                if (v76 >= 0xFF)
                {
                  LOBYTE(v76) = -1;
                }

                *v43++ = v76;
                --v75;
              }

              while (v75);
              v43 += v52;
              --v186[0];
            }

            while (v186[0]);
            break;
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
            if (*(v9 + 96))
            {
LABEL_47:
              v53 = vdup_n_s16(v18);
              v54 = vdup_n_s16(~v18);
              do
              {
                v55 = v196[0];
                if (v196[0] >= 4)
                {
                  v56 = (v196[0] >> 2) + 1;
                  do
                  {
                    v4.i32[0] = *v43;
                    v57 = vmull_u16(v54, *&vmovl_u8(v4));
                    v4 = vuzp1_s8(vsra_n_u16(v53, vadd_s16(vmovn_s32(vsraq_n_u32(v57, v57, 8uLL)), 0x1000100010001), 8uLL), v53);
                    *v43 = v4.i32[0];
                    v43 += 4;
                    --v56;
                  }

                  while (v56 > 1);
                  v55 = v196[0] & 3;
                }

                if (v55 >= 1)
                {
                  v58 = v55 + 1;
                  do
                  {
                    *v43 = v18 + ((*v43 * ~v18 + ((*v43 * ~v18) >> 8) + 1) >> 8);
                    ++v43;
                    --v58;
                  }

                  while (v58 > 1);
                }

                v43 += v52;
                --v186[0];
              }

              while (v186[0]);
            }

            else
            {
LABEL_73:
              if (v17 < 0)
              {
                v43 += (v186[0] - 1) * v17;
                v64 = -v17;
              }

              else
              {
                v64 = v17;
              }

              v65 = 0;
              v66 = *(v9 + 88);
              if (v66)
              {
                v65 = *v66;
              }

              v67 = v186[0];
              v68 = v10;
LABEL_79:
              CGBlt_fillBytes(v68, v67, v65, v43, v64);
            }

            break;
          default:
            break;
        }

        if (!v23)
        {
          return 1;
        }

        v185 = 0;
      }

LABEL_84:
      v69 = v23;
LABEL_400:
      free(v69);
      return 1;
    }

    v196[0] = *(v2 + 4);
    v186[0] = v12;
    v24 = *(v2 + 28);
    v25 = *(v2 + 88);
    v26 = (*(v2 + 40) + *(v2 + 16) * v24 + *(v2 + 12));
    v27 = *(v2 + 56);
    v28 = *(v2 + 60);
    v29 = *(v2 + 76);
    if (v16 != 256)
    {
      v35 = *(v2 + 64);
      v181 = *(v2 + 68);
      v33 = v25 + v181 * v29;
      v179 = v5 != 0;
      if (v14)
      {
        v177 = *(v2 + 60);
        v178 = *(v2 + 56);
        v180 = *(v2 + 40) + *(v2 + 16) * v24 + *(v2 + 12);
        v32 = 1;
        v34 = *(v2 + 88);
        v30 = v34;
        goto LABEL_29;
      }

      v50 = v24 - v10;
      if (v25)
      {
        v184 = 0;
        v177 = v28 % v181;
        v178 = v27 % v35;
        v182 = *(v2 + 88);
        v51 = v25 + v29 * (v28 % v181);
        v30 = (v51 + v27 % v35);
        v25 = v51 + v35;
        v32 = 1;
        v180 = *(v2 + 40) + *(v2 + 16) * v24 + *(v2 + 12);
        v34 = v30;
        goto LABEL_129;
      }

      v177 = *(v2 + 60);
      v178 = *(v2 + 56);
      v30 = 0;
      v32 = 1;
      v49 = v10;
LABEL_43:
      v184 = 0;
      v33 = 0;
      v34 = 0;
      v29 -= v49;
      v182 = v30;
      v180 = v26;
      goto LABEL_129;
    }

    v30 = (v25 + v29 * v28 + v27);
    if (v29 == v24 && v26 - v30 >= 1)
    {
      if (v26 - v30 <= v10)
      {
        v26 += v11;
        v30 += v11;
        v32 = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      v31 = &v30[v29 * v13];
      if (v26 <= &v31[v10 - 1])
      {
        v26 += v24 * v13;
        v24 = -v24;
        v29 = -v29;
        v32 = 1;
        v30 = v31;
        goto LABEL_21;
      }
    }

    v32 = 1;
LABEL_21:
    v179 = v5 != 0;
    v177 = *(v2 + 60);
    v178 = *(v2 + 56);
    if (v14)
    {
      v180 = v26;
      v181 = 0;
      v33 = 0;
      v34 = 0;
      v25 = -1;
      v35 = v29;
LABEL_29:
      v41 = v32;
      v183 = v24;
      shape_enum_clip_alloc(v26, v2, v14, v32, v24, 1, *(v2 + 104), *(v2 + 108), v10, v12);
      if (!v42)
      {
        return 1;
      }

      while (2)
      {
        v184 = v42;
        if (!shape_enum_clip_next(v42, &v185 + 1, &v185, v196, v186))
        {
          v69 = v184;
          goto LABEL_400;
        }

        v182 = v30;
        if (v33)
        {
          v24 = v183;
          v26 = (v180 + v183 * v185 + SHIDWORD(v185));
          LODWORD(v10) = v196[0];
          v90 = &v30[v29 * ((v185 + *(v9 + 60)) % v181)];
          v30 = &v90[(HIDWORD(v185) + *(v9 + 56)) % v35];
          v25 = &v90[v35];
          v34 = v30;
          v91 = v196[0];
          v177 = (v185 + *(v9 + 60)) % v181;
          v178 = (HIDWORD(v185) + *(v9 + 56)) % v35;
          v32 = v41;
        }

        else
        {
          LODWORD(v10) = v196[0];
          v32 = v41;
          v91 = v196[0] * v41;
          v24 = v183;
          v26 = (v180 + v183 * v185 + SHIDWORD(v185) * v41);
          v30 += v185 * v35 + SHIDWORD(v185) * v41;
          v29 = v35 - v196[0] * v41;
        }

        v50 = v24 - v91;
LABEL_129:
        v183 = v24;
        switch(v7)
        {
          case 0:
            v148 = v50 - v10;
            v149 = v50 + v10;
            v41 = v32;
            if (v32 >= 0)
            {
              v150 = v26;
            }

            else
            {
              v150 = &v26[-v10 + 1];
            }

            if (v32 < 0)
            {
              v149 = v148;
            }

            if (v149 >= 0)
            {
              LODWORD(v151) = v149;
            }

            else
            {
              v151 = -v149;
            }

            CGBlt_fillBytes(v10, v186[0], 0, &v150[(v149 * (v186[0] - 1)) & (v149 >> 63)], v151);
            goto LABEL_150;
          case 1:
            goto LABEL_158;
          case 2:
            goto LABEL_131;
          case 3:
            do
            {
              v136 = v196[0];
              do
              {
                v137 = *v26;
                if (*v26)
                {
                  if (v137 == 255)
                  {
                    LOBYTE(v137) = *v30;
                  }

                  else
                  {
                    v137 = *v30 - ((*v30 * (v137 ^ 0xFF) + ((*v30 * (v137 ^ 0xFF)) >> 8) + 1) >> 8);
                  }
                }

                *v26 = v137;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v138 = -v35;
                }

                else
                {
                  v138 = 0;
                }

                v30 += v32 + v138;
                --v136;
              }

              while (v136);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v139 = -(v29 * v181);
              }

              else
              {
                v139 = 0;
              }

              v140 = &v34[v29 + v139];
              v141 = v25 + v29 + v139;
              if (v33)
              {
                v30 = v140;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v140;
                v25 = v141;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 4:
            do
            {
              v117 = v196[0];
              do
              {
                v118 = *v26;
                if (v118 == 0xFF)
                {
                  LOBYTE(v119) = 0;
                }

                else if (~v118 == 255)
                {
                  LOBYTE(v119) = *v30;
                }

                else
                {
                  v119 = *v30 - ((*v30 * v118 + ((*v30 * v118) >> 8) + 1) >> 8);
                }

                *v26 = v119;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v120 = -v35;
                }

                else
                {
                  v120 = 0;
                }

                v30 += v32 + v120;
                --v117;
              }

              while (v117);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v121 = -(v29 * v181);
              }

              else
              {
                v121 = 0;
              }

              v122 = &v34[v29 + v121];
              v123 = v25 + v29 + v121;
              if (v33)
              {
                v30 = v122;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v122;
                v25 = v123;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 5:
            do
            {
              v152 = v196[0];
              do
              {
                *v26 = (((*v30 ^ 0xFF) + *v30) * *v26 + ((((*v30 ^ 0xFF) + *v30) * *v26) >> 8) + 1) >> 8;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v153 = -v35;
                }

                else
                {
                  v153 = 0;
                }

                v30 += v32 + v153;
                --v152;
              }

              while (v152);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v154 = -(v29 * v181);
              }

              else
              {
                v154 = 0;
              }

              v155 = &v34[v29 + v154];
              v156 = v25 + v29 + v154;
              if (v33)
              {
                v30 = v155;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v155;
                v25 = v156;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 6:
            do
            {
              v157 = v196[0];
              do
              {
                v158 = *v26;
                if (v158 != 0xFF)
                {
                  if (~v158 == 255)
                  {
                    LOBYTE(v159) = *v30;
                  }

                  else
                  {
                    v159 = v158 + ((*v30 * ~v158 + ((*v30 * ~v158) >> 8) + 1) >> 8);
                  }

                  *v26 = v159;
                }

                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v160 = -v35;
                }

                else
                {
                  v160 = 0;
                }

                v30 += v32 + v160;
                --v157;
              }

              while (v157);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v161 = -(v29 * v181);
              }

              else
              {
                v161 = 0;
              }

              v162 = &v34[v29 + v161];
              v163 = v25 + v29 + v161;
              if (v33)
              {
                v30 = v162;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v162;
                v25 = v163;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 7:
            while (1)
            {
              v142 = v196[0];
              do
              {
                v143 = *v30;
                if (*v30)
                {
                  if (v143 == 255)
                  {
                    goto LABEL_306;
                  }

                  v143 = *v26 - ((*v26 * (v143 ^ 0xFF) + ((*v26 * (v143 ^ 0xFF)) >> 8) + 1) >> 8);
                }

                *v26 = v143;
LABEL_306:
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v144 = -v35;
                }

                else
                {
                  v144 = 0;
                }

                v30 += v32 + v144;
                --v142;
              }

              while (v142);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v145 = -(v29 * v181);
              }

              else
              {
                v145 = 0;
              }

              v146 = &v34[v29 + v145];
              v147 = v25 + v29 + v145;
              if (v33)
              {
                v30 = v146;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v146;
                v25 = v147;
              }

              if (!--v186[0])
              {
                goto LABEL_149;
              }
            }

          case 8:
            break;
          case 9:
            do
            {
              v130 = v196[0];
              do
              {
                v131 = *v26 + (*v26 ^ 0xFF);
                *v26 = (v131 * *v30 + ((v131 * *v30) >> 8) + 1) >> 8;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v132 = -v35;
                }

                else
                {
                  v132 = 0;
                }

                v30 += v32 + v132;
                --v130;
              }

              while (v130);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v133 = -(v29 * v181);
              }

              else
              {
                v133 = 0;
              }

              v134 = &v34[v29 + v133];
              v135 = v25 + v29 + v133;
              if (v33)
              {
                v30 = v134;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v134;
                v25 = v135;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 10:
            do
            {
              v164 = v196[0];
              do
              {
                *v26 = ((*v26 ^ 0xFF) * *v30 + *v26 * (*v30 ^ 0xFF) + (((*v26 ^ 0xFF) * *v30 + *v26 * (*v30 ^ 0xFFu)) >> 8) + 1) >> 8;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v165 = -v35;
                }

                else
                {
                  v165 = 0;
                }

                v30 += v32 + v165;
                --v164;
              }

              while (v164);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v166 = -(v29 * v181);
              }

              else
              {
                v166 = 0;
              }

              v167 = &v34[v29 + v166];
              v168 = v25 + v29 + v166;
              if (v33)
              {
                v30 = v167;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v167;
                v25 = v168;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 11:
            do
            {
              v111 = v196[0];
              do
              {
                v112 = *v30 + *v26;
                if (v112 >= 0xFF)
                {
                  LOBYTE(v112) = -1;
                }

                *v26 = v112;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v113 = -v35;
                }

                else
                {
                  v113 = 0;
                }

                v30 += v32 + v113;
                --v111;
              }

              while (v111);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v114 = -(v29 * v181);
              }

              else
              {
                v114 = 0;
              }

              v115 = &v34[v29 + v114];
              v116 = v25 + v29 + v114;
              if (v33)
              {
                v30 = v115;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v115;
                v25 = v116;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 12:
            do
            {
              v124 = v196[0];
              do
              {
                v125 = *v30 + *v26;
                if (v125 >= 0xFF)
                {
                  LOBYTE(v125) = -1;
                }

                *v26 = v125;
                v26 += v32;
                if (&v30[v32] >= v25)
                {
                  v126 = -v35;
                }

                else
                {
                  v126 = 0;
                }

                v30 += v32 + v126;
                --v124;
              }

              while (v124);
              v26 += v50;
              if (&v34[v29] >= v33)
              {
                v127 = -(v29 * v181);
              }

              else
              {
                v127 = 0;
              }

              v128 = &v34[v29 + v127];
              v129 = v25 + v29 + v127;
              if (v33)
              {
                v30 = v128;
              }

              else
              {
                v30 += v29;
              }

              if (v33)
              {
                v34 = v128;
                v25 = v129;
              }

              --v186[0];
            }

            while (v186[0]);
            goto LABEL_149;
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
            if (v179)
            {
              do
              {
LABEL_131:
                v84 = v196[0];
                do
                {
                  v85 = *v30;
                  if (*v30)
                  {
                    if (v85 != 255)
                    {
                      v85 += (*v26 * (v85 ^ 0xFF) + ((*v26 * (v85 ^ 0xFFu)) >> 8) + 1) >> 8;
                    }

                    *v26 = v85;
                  }

                  v26 += v32;
                  if (&v30[v32] >= v25)
                  {
                    v86 = -v35;
                  }

                  else
                  {
                    v86 = 0;
                  }

                  v30 += v32 + v86;
                  --v84;
                }

                while (v84);
                v26 += v50;
                if (&v34[v29] >= v33)
                {
                  v87 = -(v29 * v181);
                }

                else
                {
                  v87 = 0;
                }

                v88 = &v34[v29 + v87];
                v89 = v25 + v29 + v87;
                if (v33)
                {
                  v30 = v88;
                }

                else
                {
                  v30 += v29;
                }

                if (v33)
                {
                  v34 = v88;
                  v25 = v89;
                }

                --v186[0];
              }

              while (v186[0]);
            }

            else
            {
LABEL_158:
              v92 = *(v9 + 1);
              if (v92 == 2)
              {
                if (v10 >= 32 && v35 <= 0x40)
                {
                  v3.i32[0] = v35;
                  v95 = vcnt_s8(v3);
                  v95.i16[0] = vaddlv_u8(v95);
                  if (v95.i32[0] <= 1u)
                  {
                    v41 = v32;
                    v30 = v182;
                    CGSFillDRAM64(v26, v10 + v50, v10, v186[0], v182, v29, v35, v181, v178, v177);
                    goto LABEL_151;
                  }
                }

LABEL_167:
                if (v6 == 0 || v179)
                {
                  do
                  {
                    v96 = v196[0];
                    do
                    {
                      *v26 = *v30;
                      v26 += v32;
                      if (&v30[v32] >= v25)
                      {
                        v97 = -v35;
                      }

                      else
                      {
                        v97 = 0;
                      }

                      v30 += v32 + v97;
                      --v96;
                    }

                    while (v96);
                    v26 += v50;
                    if (&v34[v29] >= v33)
                    {
                      v98 = -(v29 * v181);
                    }

                    else
                    {
                      v98 = 0;
                    }

                    v99 = &v34[v29 + v98];
                    v100 = v25 + v29 + v98;
                    if (v33)
                    {
                      v30 = v99;
                    }

                    else
                    {
                      v30 += v29;
                    }

                    if (v33)
                    {
                      v34 = v99;
                      v25 = v100;
                    }

                    --v186[0];
                  }

                  while (v186[0]);
                }

                else
                {
                  do
                  {
                    v101 = v196[0];
                    do
                    {
                      *v26 = *v30;
                      v26 += v32;
                      if (&v30[v32] >= v25)
                      {
                        v102 = -v35;
                      }

                      else
                      {
                        v102 = 0;
                      }

                      v30 += v32 + v102;
                      --v101;
                    }

                    while (v101);
                    v26 += v50;
                    if (&v34[v29] >= v33)
                    {
                      v103 = -(v29 * v181);
                    }

                    else
                    {
                      v103 = 0;
                    }

                    v104 = &v34[v29 + v103];
                    v105 = v25 + v29 + v103;
                    if (v33)
                    {
                      v30 = v104;
                    }

                    else
                    {
                      v30 += v29;
                    }

                    if (v33)
                    {
                      v34 = v104;
                      v25 = v105;
                    }

                    --v186[0];
                  }

                  while (v186[0]);
                }

                goto LABEL_149;
              }

              if (v92 != 1)
              {
                goto LABEL_167;
              }

              if (v6 == 0 || v179)
              {
                v41 = v32;
                if ((v32 & 0x80000000) != 0)
                {
                  v93 = v29 - v10;
                  v30 += -v10 + 1;
                  v94 = v50 - v10;
                  v26 += -v10 + 1;
                }

                else
                {
                  v93 = v29 + v10;
                  v94 = v50 + v10;
                }

                if (v93 >= 0)
                {
                  v29 = v93;
                }

                else
                {
                  v29 = -v93;
                }

                if (v94 >= 0)
                {
                  LODWORD(v176) = v94;
                }

                else
                {
                  v176 = -v94;
                }

                CGBlt_copyBytes(v10, v186[0], &v30[(v93 * (v186[0] - 1)) & (v93 >> 63)], &v26[(v94 * (v186[0] - 1)) & (v94 >> 63)], v29, v176);
                goto LABEL_150;
              }

              do
              {
                v106 = v196[0];
                do
                {
                  *v26 = *v30;
                  v26 += v32;
                  if (&v30[v32] >= v25)
                  {
                    v107 = -v35;
                  }

                  else
                  {
                    v107 = 0;
                  }

                  v30 += v32 + v107;
                  --v106;
                }

                while (v106);
                v26 += v50;
                if (&v34[v29] >= v33)
                {
                  v108 = -(v29 * v181);
                }

                else
                {
                  v108 = 0;
                }

                v109 = &v34[v29 + v108];
                v110 = v25 + v29 + v108;
                if (v33)
                {
                  v30 = v109;
                }

                else
                {
                  v30 += v29;
                }

                if (v33)
                {
                  v34 = v109;
                  v25 = v110;
                }

                --v186[0];
              }

              while (v186[0]);
            }

LABEL_149:
            v41 = v32;
LABEL_150:
            v30 = v182;
LABEL_151:
            v42 = v184;
            if (!v184)
            {
              return 1;
            }

            v185 = 0;
            continue;
          default:
            goto LABEL_149;
        }

        break;
      }

LABEL_379:
      v169 = v196[0];
      while (1)
      {
        v170 = *v30;
        if (v170 == 0xFF)
        {
          break;
        }

        if (~v170 != 255)
        {
          v171 = *v26 - ((*v26 * v170 + ((*v26 * v170) >> 8) + 1) >> 8);
LABEL_384:
          *v26 = v171;
        }

        v26 += v32;
        if (&v30[v32] >= v25)
        {
          v172 = -v35;
        }

        else
        {
          v172 = 0;
        }

        v30 += v32 + v172;
        if (!--v169)
        {
          v26 += v50;
          if (&v34[v29] >= v33)
          {
            v173 = -(v29 * v181);
          }

          else
          {
            v173 = 0;
          }

          v174 = &v34[v29 + v173];
          v175 = v25 + v29 + v173;
          if (v33)
          {
            v30 = v174;
          }

          else
          {
            v30 += v29;
          }

          if (v33)
          {
            v34 = v174;
            v25 = v175;
          }

          if (!--v186[0])
          {
            goto LABEL_149;
          }

          goto LABEL_379;
        }
      }

      LOBYTE(v171) = 0;
      goto LABEL_384;
    }

    v181 = 0;
    v49 = v32 * v10;
    v50 = v24 - v49;
    v25 = -1;
    v35 = v29;
    goto LABEL_43;
  }

  v15 = *(v2 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      A8_mark_constmask(v2, v7);
    }

    else
    {
      A8_mark_pixelmask(v2, v7);
    }

    return 1;
  }

  v36 = *(v2 + 112);
  v37 = *(v2 + 116);
  v38 = (v36 + 15) & 0xFFFFFFF0;
  v39 = v38 * v37;
  if (v39 <= 4096)
  {
    v23 = v196;
LABEL_33:
    CGSConvertBitsToMask(v14, *(v9 + 124), v23, v38, v36, v37, v15);
    v44 = *(v9 + 112);
    v192 = *(v9 + 96);
    v193 = v44;
    v45 = *(v9 + 144);
    v194 = *(v9 + 128);
    v195 = v45;
    v46 = *(v9 + 48);
    v188 = *(v9 + 32);
    v189 = v46;
    v47 = *(v9 + 80);
    v190 = *(v9 + 64);
    v191 = v47;
    v48 = *(v9 + 16);
    *v186 = *v9;
    v187 = v48;
    HIDWORD(v193) = (v36 + 15) & 0xFFFFFFF0;
    *(&v194 + 1) = v23;
    if (BYTE1(v186[0]) << 8 == 1024)
    {
      A8_mark_constmask(v186, v7);
    }

    else
    {
      A8_mark_pixelmask(v186, v7);
    }

    if (v23 == v196)
    {
      return 1;
    }

    goto LABEL_84;
  }

  v40 = malloc_type_malloc(v39, 0x100004077774924uLL);
  if (v40)
  {
    v23 = v40;
    v14 = *(v9 + 136);
    v15 = *(v9 + 128);
    goto LABEL_33;
  }

  return 1;
}

uint64_t A8_mark_constmask(uint64_t result, int a2)
{
  v3 = result;
  v5 = *(result + 4);
  v4 = *(result + 8);
  v6 = *(result + 28);
  v7 = *(result + 40);
  v8 = *(result + 136);
  v9 = **(result + 88);
  if (A8_cacheColor && *(A8_cacheColor + 16) == v9)
  {
    v10 = (A8_cacheColor + 8);
  }

  else
  {
    pthread_mutex_lock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
    v11 = 0;
    v12 = A8_cacheColor;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_9;
      }

      v13 = v11;
      v11 = v12;
      if (*(v12 + 16) == v9)
      {
        break;
      }

      v12 = *v12;
      if (!*v11)
      {
        if (A8_cacheColorCount > 6)
        {
          *v13 = 0;
        }

        else
        {
LABEL_9:
          v14 = A8_cacheColorBase;
          if (A8_cacheColorBase)
          {
            v15 = A8_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x7A8uLL, 0x1020040071ED649uLL);
            v15 = 0;
            A8_cacheColorBase = v14;
          }

          v11 = &v14[24 * v15];
          *(v11 + 1) = &v14[256 * v15 + 168];
          A8_cacheColorCount = v15 + 1;
        }

        *v11 = A8_cacheColor;
        A8_cacheColor = v11;
        result = pthread_mutex_unlock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
        v16 = 0;
        v17 = xmmword_18439CF30;
        v18 = xmmword_18439CF40;
        v19 = xmmword_18439CC10;
        v20 = xmmword_18439CB90;
        v22 = *(v11 + 1);
        v10 = v11 + 8;
        v21 = v22;
        v23.i64[0] = 0xFF000000FFLL;
        v23.i64[1] = 0xFF000000FFLL;
        v10[8] = v9;
        v24 = vdupq_n_s32(v9);
        v25.i64[0] = 0x1000000010;
        v25.i64[1] = 0x1000000010;
        v26 = vdupq_n_s8(v9);
        do
        {
          v27 = vmulq_s32(veorq_s8(v20, v23), v24);
          v28 = vmulq_s32(veorq_s8(v19, v23), v24);
          v29 = vmulq_s32(veorq_s8(v18, v23), v24);
          v30 = vmulq_s32(veorq_s8(v17, v23), v24);
          *v27.i8 = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v27, v27, 8uLL)), 0x1000100010001), 8uLL);
          v27.u64[1] = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v28, v28, 8uLL)), 0x1000100010001), 8uLL);
          *v29.i8 = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v29, v29, 8uLL)), 0x1000100010001), 8uLL);
          v29.u64[1] = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v30, v30, 8uLL)), 0x1000100010001), 8uLL);
          *(v21 + v16) = vsubq_s8(v26, vuzp1q_s8(v27, v29));
          v16 += 16;
          v20 = vaddq_s32(v20, v25);
          v19 = vaddq_s32(v19, v25);
          v18 = vaddq_s32(v18, v25);
          v17 = vaddq_s32(v17, v25);
        }

        while (v16 != 256);
        goto LABEL_19;
      }
    }

    if (v13)
    {
      *v13 = *v12;
      *v12 = A8_cacheColor;
      A8_cacheColor = v12;
    }

    result = pthread_mutex_unlock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
    v10 = v11 + 8;
  }

LABEL_19:
  if (v8)
  {
    v31 = *v10;
    v32 = *(*v10 + 255);
    v33 = (v7 + *(v3 + 16) * v6 + *(v3 + 12));
    v34 = *(v3 + 124);
    v35 = v8 + *(v3 + 108) * v34 + *(v3 + 104);
    v36 = v34 - v5;
    v37 = v6 - v5;
    switch(a2)
    {
      case 0:
        do
        {
          v62 = v5;
          do
          {
            v63 = *v35;
            if (*v35)
            {
              if (v63 == 255)
              {
                LOBYTE(v64) = 0;
              }

              else
              {
                v64 = *v33 - ((*v33 * v63 + ((*v33 * v63) >> 8) + 1) >> 8);
              }

              *v33 = v64;
            }

            ++v35;
            ++v33;
            --v62;
          }

          while (v62);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 1:
        goto LABEL_104;
      case 2:
        goto LABEL_22;
      case 3:
        do
        {
          v59 = v5;
          do
          {
            v60 = *v35;
            if (*v35)
            {
              if (v60 == 255)
              {
                LOBYTE(v61) = *(v31 + *v33);
              }

              else
              {
                v61 = *(v31 + ((*v33 * v60 + ((*v33 * v60) >> 8) + 1) >> 8)) + ((*v33 * (v60 ^ 0xFF) + ((*v33 * (v60 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v33 = v61;
            }

            ++v35;
            ++v33;
            --v59;
          }

          while (v59);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 4:
        do
        {
          v53 = v5;
          do
          {
            v54 = *v35;
            if (*v35)
            {
              if (v54 == 255)
              {
                LOBYTE(v55) = *(v31 + ~*v33);
              }

              else
              {
                v55 = *(v31 + (((*v33 ^ 0xFF) * v54 + (((*v33 ^ 0xFFu) * v54) >> 8) + 1) >> 8)) + ((*v33 * (v54 ^ 0xFF) + ((*v33 * (v54 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v33 = v55;
            }

            ++v35;
            ++v33;
            --v53;
          }

          while (v53);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 5:
        do
        {
          v65 = v5;
          do
          {
            if (*v35)
            {
              v66 = *(v31 + *v35);
              *v33 = (((v66 ^ 0xFF) + v66) * *v33 + ((((v66 ^ 0xFF) + v66) * *v33) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v65;
          }

          while (v65);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 6:
        do
        {
          v98 = v5;
          do
          {
            v99 = *v35;
            if (*v35)
            {
              v100 = *v33;
              if (v100 != 0xFF)
              {
                if (~v100 == 255)
                {
                  LOBYTE(v99) = *(v31 + v99);
                }

                else
                {
                  LODWORD(v99) = v100 + ((*(v31 + v99) * ~v100 + ((*(v31 + v99) * ~v100) >> 8) + 1) >> 8);
                }

                *v33 = v99;
              }
            }

            ++v35;
            ++v33;
            --v98;
          }

          while (v98);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 7:
        do
        {
          v94 = v5;
          do
          {
            v95 = *v35;
            if (*v35)
            {
              v96 = *v33;
              if (v95 == 255)
              {
                v97 = v96 * (v32 ^ 0xFF);
              }

              else
              {
                v97 = v96 * (v95 - ((v95 * v32 + ((v95 * v32) >> 8) + 1) >> 8));
              }

              *v33 = v96 - ((v97 + (v97 >> 8) + 1) >> 8);
            }

            ++v35;
            ++v33;
            --v94;
          }

          while (v94);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 8:
        do
        {
          v69 = v5;
          do
          {
            v70 = *v35;
            if (*v35)
            {
              v71 = *v33;
              if (v70 == 255)
              {
                v72 = v71 * v32;
              }

              else
              {
                v72 = ((v70 * v32 + ((v70 * v32) >> 8) + 1) >> 8) * v71;
              }

              *v33 = v71 - ((v72 + (v72 >> 8) + 1) >> 8);
            }

            ++v35;
            ++v33;
            --v69;
          }

          while (v69);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 9:
        do
        {
          v56 = v5;
          do
          {
            v57 = *v35;
            if (*v35)
            {
              v58 = *(v31 + v57);
              *v33 = ((*v33 ^ 0xFF) * v58 + (v58 + ~v57) * *v33 + (((*v33 ^ 0xFF) * v58 + (v58 + ~v57) * *v33) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v56;
          }

          while (v56);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 10:
        do
        {
          v67 = v5;
          do
          {
            if (*v35)
            {
              v68 = *(v31 + *v35);
              *v33 = ((*v33 ^ 0xFF) * v68 + *v33 * (v68 ^ 0xFF) + (((*v33 ^ 0xFF) * v68 + *v33 * (v68 ^ 0xFFu)) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v67;
          }

          while (v67);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 11:
        do
        {
          v90 = v5;
          do
          {
            if (*v35)
            {
              v91 = *v33 + *(v31 + *v35);
              if (v91 >= 0xFF)
              {
                LOBYTE(v91) = -1;
              }

              *v33 = v91;
            }

            ++v35;
            ++v33;
            --v90;
          }

          while (v90);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 12:
        do
        {
          v92 = v5;
          do
          {
            if (*v35)
            {
              v93 = *v33 + *(v31 + *v35);
              if (v93 >= 0xFF)
              {
                LOBYTE(v93) = -1;
              }

              *v33 = v93;
            }

            ++v35;
            ++v33;
            --v92;
          }

          while (v92);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
        if (*(v3 + 96))
        {
LABEL_22:
          v38 = -1;
          v39 = v35 & 3;
          if ((v35 & 3) != 0)
          {
            v5 += v39;
            v38 = -1 << (8 * v39);
            v40 = v35 & 3;
            v35 &= 0xFFFFFFFFFFFFFFFCLL;
            v33 -= v40;
          }

          v41 = (v5 + v35) & 3;
          if (((v5 + v35) & 3) != 0)
          {
            v42 = 4 - v41;
            v39 += v42;
            v41 = 0xFFFFFFFF >> (8 * v42);
            v43 = v5 >= 4 ? -1 : v41;
            v38 &= v43;
            if (v5 < 4)
            {
              v41 = 0;
            }
          }

          v44 = v36 - v39;
          v45 = ~v32;
          result = 255;
          v46 = v37 - v39;
          while (1)
          {
            v47 = *v35 & v38;
            v48 = v41;
            v49 = v5 >> 2;
            if (!v47)
            {
              goto LABEL_34;
            }

LABEL_32:
            if (v47 == -1)
            {
              break;
            }

            while (1)
            {
              if (v47)
              {
                *v33 = *(v31 + v47) + ((*v33 * ~*(v31 + v47) + ((*v33 * ~*(v31 + v47)) >> 8) + 1) >> 8);
              }

              if ((v47 & 0xFF00) != 0)
              {
                v33[1] = *(v31 + BYTE1(v47)) + ((v33[1] * ~*(v31 + BYTE1(v47)) + ((v33[1] * ~*(v31 + BYTE1(v47))) >> 8) + 1) >> 8);
              }

              if ((v47 & 0xFF0000) != 0)
              {
                v33[2] = *(v31 + BYTE2(v47)) + ((v33[2] * ~*(v31 + BYTE2(v47)) + ((v33[2] * ~*(v31 + BYTE2(v47))) >> 8) + 1) >> 8);
              }

              if (HIBYTE(v47))
              {
                v51 = *(v31 + (v47 >> 24));
                v50 = v33[3] * (v51 ^ 0xFF);
                goto LABEL_47;
              }

LABEL_34:
              while (1)
              {
                v52 = v49;
                v33 += 4;
                --v49;
                v35 += 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = *v35;
                if (*v35)
                {
                  goto LABEL_32;
                }
              }

              if (!v48)
              {
                break;
              }

              v48 = 0;
              v47 = *v35 & v41;
            }

            v35 += v44;
            v33 += v46;
            if (!--v4)
            {
              return result;
            }
          }

          *v33 = v32 + ((*v33 * v45 + ((*v33 * v45) >> 8) + 1) >> 8);
          v33[1] = v32 + ((v33[1] * v45 + ((v33[1] * v45) >> 8) + 1) >> 8);
          v33[2] = v32 + ((v33[2] * v45 + ((v33[2] * v45) >> 8) + 1) >> 8);
          v50 = v33[3] * v45;
          LOBYTE(v51) = v32;
LABEL_47:
          v33[3] = v51 + ((v50 + (v50 >> 8) + 1) >> 8);
          goto LABEL_34;
        }

LABEL_104:
        v73 = -1;
        v74 = v35 & 3;
        if ((v35 & 3) != 0)
        {
          v5 += v74;
          v73 = -1 << (8 * v74);
          v75 = v35 & 3;
          v35 &= 0xFFFFFFFFFFFFFFFCLL;
          v33 -= v75;
        }

        v76 = (v5 + v35) & 3;
        if (((v5 + v35) & 3) != 0)
        {
          v77 = 4 - v76;
          v74 += v77;
          v78 = 0xFFFFFFFF >> (8 * v77);
          if (v5 >= 4)
          {
            v76 = v78;
          }

          else
          {
            v76 = 0;
          }

          if (v5 >= 4)
          {
            v78 = -1;
          }

          v73 &= v78;
        }

        v79 = v36 - v74;
        v80 = v37 - v74;
        v81 = vdup_n_s16(v32);
        v82 = vuzp1_s8(v81, v81).u32[0];
        break;
      default:
        return result;
    }

    do
    {
      v83 = *v35 & v73;
      v84 = v5 >> 2;
      result = v76;
      if (!v83)
      {
        goto LABEL_117;
      }

LABEL_115:
      if (v83 == -1)
      {
        *v33 = v82;
        goto LABEL_117;
      }

      while (1)
      {
        if (v83)
        {
          LOBYTE(v86) = v32;
          if (v83 != 255)
          {
            v86 = *(v31 + v83) + (((v83 ^ 0xFF) * *v33 + (((v83 ^ 0xFF) * *v33) >> 8) + 1) >> 8);
          }

          *v33 = v86;
        }

        if (BYTE1(v83))
        {
          LOBYTE(v87) = v32;
          if (BYTE1(v83) != 255)
          {
            v87 = *(v31 + BYTE1(v83)) + (((BYTE1(v83) ^ 0xFF) * v33[1] + (((BYTE1(v83) ^ 0xFF) * v33[1]) >> 8) + 1) >> 8);
          }

          v33[1] = v87;
        }

        if (BYTE2(v83))
        {
          LOBYTE(v88) = v32;
          if (BYTE2(v83) != 255)
          {
            v88 = *(v31 + BYTE2(v83)) + (((BYTE2(v83) ^ 0xFF) * v33[2] + (((BYTE2(v83) ^ 0xFF) * v33[2]) >> 8) + 1) >> 8);
          }

          v33[2] = v88;
        }

        v89 = v83 >> 24;
        if (v89 == 255)
        {
          v33[3] = v32;
        }

        else if (HIBYTE(v83))
        {
          v33[3] = *(v31 + v89) + (((v89 ^ 0xFF) * v33[3] + (((v89 ^ 0xFF) * v33[3]) >> 8) + 1) >> 8);
        }

LABEL_117:
        while (1)
        {
          v85 = v84;
          v33 += 4;
          --v84;
          v35 += 4;
          if (v85 < 2)
          {
            break;
          }

          v83 = *v35;
          if (*v35)
          {
            goto LABEL_115;
          }
        }

        if (!result)
        {
          break;
        }

        result = 0;
        v83 = *v35 & v76;
      }

      v35 += v79;
      v33 += v80;
      --v4;
    }

    while (v4);
  }

  return result;
}

const void *RIPObjectRelease(const void *result)
{
  if (result)
  {
    if (!*result)
    {
      _CGHandleAssert("RIPObjectRelease", 19, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPClass.c", "RIPObjectValid(object)", "Release of invalid RIP object %p", result);
    }

    v2 = *(*result + 24);
    if (v2)
    {

      return v2();
    }
  }

  return result;
}

void CGGlyphBuilderUnlockBitmaps(void *a1)
{
  for (i = a1[15]; i; i = *i)
  {
    v3 = i[3];
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v3);
    }
  }

  if (a1[16])
  {
    v4 = a1[15];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    a1[15] = 0;
    v6 = a1[14];
    if (v6)
    {
      for (j = 0; j != v6; ++j)
      {
        *(a1[13] + 8 * j) = 0;
      }
    }

    a1[16] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    v9 = a1[11];
    if (v9)
    {
      os_unfair_lock_lock((v9 + 4));
      os_unfair_lock_lock((v8 + 104));
      v10 = *(v8 + 96);
      os_unfair_lock_unlock((v8 + 104));
      CGFontStrikeRelease(v8);
      os_unfair_lock_unlock((v9 + 4));
      if (v10)
      {
        if (atomic_fetch_add_explicit((v9 + 16), v10, memory_order_relaxed) + v10 > *(v9 + 8))
        {
          os_unfair_lock_lock((v9 + 4));
          v12 = (v9 + 40);
          v11 = *(v9 + 40);
          if (v11)
          {
            v13 = 0;
            do
            {
              v13 += CGFontStrikeGetSize(*v11);
              v11 = v11[1];
            }

            while (v11);
          }

          else
          {
            v13 = 0;
          }

          if (v13 >= *(v9 + 8))
          {
            if (!*v12)
            {
              goto LABEL_31;
            }

            v14 = 0;
            v15 = *v12;
            do
            {
              ++v14;
              v15 = *(v15 + 8);
            }

            while (v15);
            v16 = list_sort_1(*v12, v14);
            *(v9 + 40) = v16;
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = 7 * *(v9 + 8) / 0xAuLL;
              while (1)
              {
                Size = CGFontStrikeGetSize(*v17);
                v13 = Size + v18;
                if (Size + v18 > v19)
                {
                  break;
                }

                v21 = *v12;
                v22 = *(v21 + 8);
                v12 = (v21 + 8);
                v17 = v22;
                v18 += Size;
                if (!v22)
                {
                  goto LABEL_39;
                }
              }

              v23 = v17;
              do
              {
                v24 = *v23;
                if (*v23)
                {
                  v25 = (*v23 + 8);
                }

                else
                {
                  v25 = 0;
                }

                CFDictionaryRemoveValue(*(v9 + 32), v25);
                CGFontStrikeRelease(v24);
                v23 = v23[1];
              }

              while (v23);
              do
              {
                v26 = v17[1];
                free(v17);
                v17 = v26;
              }

              while (v26);
              *v12 = 0;
              v13 = v18;
            }

            else
            {
LABEL_31:
              v13 = 0;
            }
          }

LABEL_39:
          *(v9 + 16) = v13;
          os_unfair_lock_unlock((v9 + 4));
        }
      }
    }

    a1[12] = 0;
  }
}

void CGFontStrikeRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    for (i = 0; i != 256; ++i)
    {
      v3 = a1[i + 14];
      if (v3)
      {
        for (j = 0; j != 256; ++j)
        {
          v5 = v3[j];
          if (v5)
          {
            do
            {
              v6 = *v5;
              if (*v5 && atomic_fetch_add_explicit(v6, 0xFFFFFFFF, memory_order_relaxed) == 1)
              {
                free(v6);
              }

              v5 = *(v5 + 8);
            }

            while (v5);
            v7 = v3[j];
            if (v7)
            {
              do
              {
                v8 = v7[1];
                free(v7);
                v7 = v8;
              }

              while (v8);
            }
          }
        }

        free(v3);
      }
    }

    free(a1);
  }
}

CFTypeRef *CGGlyphBuilderRelease(CFTypeRef *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = CFGetTypeID(*result);
      if (_block_invoke_once_3400 != -1)
      {
        dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      }

      if (v3 == CGFontGetTypeID_font_type_id)
      {
        CFRelease(v2);
      }
    }

    v4 = v1[15];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = v1[13];
    v1[13] = 0;
    if (v6)
    {
      operator delete(v6);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

uint64_t CGGStackRestore(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 == a1 || (v3 = v2[1], v3 == a1))
  {
    CGPostError("%s: CG GState restored too many times", "CGGStackRestore");
  }

  else
  {
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *v2 = v2;
    v2[1] = v2;
    CGGStateRelease(v2);
  }

  return a1[1];
}

void CGContextResetState(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStackReset(*(a1 + 104));
      v2 = *(a1 + 104);
      v3 = *(v2 + 8);
      if (v3 == v2)
      {
        v4 = CGGStateCreate();
        v5 = *(v2 + 8);
        *(v2 + 8) = v4;
        *v4 = v2;
        *v5 = v4;
        *(v4 + 1) = v5;
        v3 = *(v2 + 8);
      }

      *(a1 + 96) = v3;
      CGRenderingStateReset(*(a1 + 112));
      *(a1 + 120) = CGAffineTransformIdentity;
      v6 = *(a1 + 168);
      if (v6)
      {
        CFRelease(v6);
      }

      *(a1 + 168) = 0;
      return;
    }

    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  handle_invalid_context("CGContextResetState", v7);
}

void dl_Finalize(char *a1)
{
  *(a1 + 2) = &unk_1EF23F3D0;
  v4 = (a1 + 688);
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 84));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 81));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 78));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 75));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 72));
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(a1 + 66);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 64));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 61));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 58));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 55));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 52));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 49));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 46));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 43));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 40));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 37));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 34));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 31));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:fe200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TextLine>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<TextLine>>::clear[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
    }
  }

  a1[1] = v2;
}

void CG::DisplayListEntryGlyphs::~DisplayListEntryGlyphs(void **this)
{
  *this = &unk_1EF23ACC8;
  free(this[29]);
  free(this[30]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23ACC8;
  free(this[29]);
  free(this[30]);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntry const*,std::shared_ptr<CG::DisplayListEntry const>::__shared_ptr_default_delete<CG::DisplayListEntry const,CG::DisplayListEntry const>,std::allocator<CG::DisplayListEntry>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateFill *,std::shared_ptr<CG::DisplayListEntryStateFill const>::__shared_ptr_default_delete<CG::DisplayListEntryStateFill const,CG::DisplayListEntryStateFill>,std::allocator<CG::DisplayListEntryStateFill>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateDrawing *,std::shared_ptr<CG::DisplayListEntryStateDrawing const>::__shared_ptr_default_delete<CG::DisplayListEntryStateDrawing const,CG::DisplayListEntryStateDrawing>,std::allocator<CG::DisplayListEntryStateDrawing>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceColorSpace::~DisplayListResourceColorSpace(CGColorSpaceRef *this)
{
  *this = &unk_1EF23F580;
  CGColorSpaceRelease(this[2]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F580;
  CGColorSpaceRelease(this[2]);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColorSpace *,std::shared_ptr<CG::DisplayListResourceColorSpace>::__shared_ptr_default_delete<CG::DisplayListResourceColorSpace,CG::DisplayListResourceColorSpace>,std::allocator<CG::DisplayListResourceColorSpace>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColor *,std::shared_ptr<CG::DisplayListResourceColor>::__shared_ptr_default_delete<CG::DisplayListResourceColor,CG::DisplayListResourceColor>,std::allocator<CG::DisplayListResourceColor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceClip *,std::shared_ptr<CG::DisplayListResourceClip>::__shared_ptr_default_delete<CG::DisplayListResourceClip,CG::DisplayListResourceClip>,std::allocator<CG::DisplayListResourceClip>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListShape::~DisplayListShape(CG::DisplayListShape *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 == &the_empty_shape;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  if (*this)
  {
    free(*this);
  }

  std::mutex::~mutex((this + 56));
}

BOOL CGImageGetHeadroom(CGImage *a1, float *a2)
{
  v5 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v5);
  if (a2)
  {
    *a2 = HeadroomInfo;
  }

  return v5 == 1;
}

uint64_t CGImageTextureDataCreate(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4)
{
  v4 = 0;
  if (a2 && a4)
  {
    if (_block_invoke_once_9015 != -1)
    {
      dispatch_once(&_block_invoke_once_9015, &__block_literal_global_33);
    }

    Instance = CGTypeCreateInstance(CGImageTextureDataGetTypeID_texture_data_type_id, 128);
    v4 = Instance;
    if (Instance)
    {
      *(Instance + 24) = a3;
      *(Instance + 16) = CFRetain(a2);
      v9 = a4[1];
      *(v4 + 32) = *a4;
      *(v4 + 48) = v9;
      v22 = 0;
      valuePtr = 0;
      *(v4 + 72) = 0u;
      *(v4 + 88) = 0u;
      *(v4 + 104) = 0u;
      *(v4 + 120) = 0u;
      *(v4 + 136) = 0;
      Value = CFDictionaryGetValue(a2, @"width");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
        *(v4 + 72) = valuePtr;
      }

      v11 = CFDictionaryGetValue(a2, @"height");
      if (v11)
      {
        CFNumberGetValue(v11, kCFNumberLongType, &valuePtr);
        *(v4 + 80) = valuePtr;
      }

      v12 = CFDictionaryGetValue(a2, @"rowBytes");
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberLongType, &valuePtr);
        *(v4 + 88) = valuePtr;
      }

      v13 = CFDictionaryGetValue(a2, @"mipmapLevelCount");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberLongType, &valuePtr);
        *(v4 + 120) = valuePtr;
      }

      v14 = CFDictionaryGetValue(a2, @"faceCount");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberLongType, &valuePtr);
        *(v4 + 128) = valuePtr;
      }

      v15 = CFDictionaryGetValue(a2, @"colorSpace");
      if (v15)
      {
        *(v4 + 96) = CFRetain(v15);
      }

      v16 = CFDictionaryGetValue(a2, @"pixelFormatMetal");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberSInt64Type, &v22);
        *(v4 + 104) = v22;
      }

      v17 = CFDictionaryGetValue(a2, @"pixelFormatGL");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberSInt64Type, &v22);
        *(v4 + 112) = v22;
      }

      v18 = CFDictionaryGetValue(a2, @"isCompressed");
      v19 = MEMORY[0x1E695E4D0];
      if (v18)
      {
        *(v4 + 136) = v18 == *MEMORY[0x1E695E4D0];
      }

      v20 = CFDictionaryGetValue(a2, @"supportsTiledLayout");
      if (v20)
      {
        *(v4 + 137) = v20 == *v19;
      }
    }
  }

  return v4;
}

uint64_t CGImageTextureDataGetOffsetWithBlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a5)
    {
      v6 = result;
      v7 = *(result + 40);
      if (v7)
      {
        v8 = a2;
        v9 = *(result + 72);
        v10 = *(result + 80);
        v11 = *(result + 88);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        v12 = v7(*(result + 24), a2, a3, &v17, &v16, &v15, a4);
        if (v12)
        {
          v13 = v12;
          ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
          if (v15)
          {
            ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
            v14 = v15;
          }

          else
          {
            v14 = 0;
          }

          (*(a5 + 16))(a5, v9 >> v8, v10 >> v8, v11 >> v8, v13, v17, v16, v14);
        }

        return (*(v6 + 48))(*(v6 + 24));
      }
    }
  }

  return result;
}

uint64_t get_average_light_level_nits(CGImage *a1, char a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace || CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    valuePtr = 0;
    cf = 0;
    if (evaluate_average_nits_predicate != -1)
    {
      dispatch_once(&evaluate_average_nits_predicate, &__block_literal_global_382);
    }

    if (!evaluate_average_nits_f(a1, 0, &cf))
    {
      if (!cf)
      {
LABEL_16:
        v16 = 0;
        v9 = calculate_image_stats(a1, &v16);
        v10 = v16;
        if (!v9)
        {
          v10 = 0;
        }

        valuePtr = v10;
LABEL_19:
        LOWORD(v6) = valuePtr;
        return v6;
      }

      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(cf, @"kCGContentBrightness");
        if (CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr) == 1)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_19;
        }

        CGLog(2, "Failiure to get avergae nits from CGImageComputeImageStatistics");
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 26);
  if (!v5)
  {
    v11 = *(a1 + 28);
    if (v11)
    {
      Property = CGPropertiesGetProperty(v11, @"kCGImageContentAverageLightLevelNits");
      if (Property)
      {
        v13 = Property;
        v14 = CFGetTypeID(Property);
        if (v14 == CFNumberGetTypeID())
        {
          LODWORD(cf) = 0;
          CFNumberGetValue(v13, kCFNumberIntType, &cf);
          LOWORD(v6) = cf;
          return v6;
        }
      }
    }

LABEL_24:
    LOWORD(v6) = 0;
    return v6;
  }

  return *(v5 + 136);
}

void __CGFontGetVTable_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  string = 0;
  if (copy_string_property("CGFontLibrary", copy_local_domain_value, &string))
  {
    v0 = string == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    verbose = 1;
    if (CFStringGetFileSystemRepresentation(string, buffer, 1025))
    {
      library = load_library(buffer);
      CFRelease(string);
      if (library)
      {
        goto LABEL_11;
      }
    }

    else
    {
      CFRelease(string);
    }
  }

  v2 = load_library("CGXType");
  if (v2)
  {
    library = v2;
LABEL_11:
    CGFontGetVTable_vtable = (library)();
    if (CGFontGetVTable_vtable)
    {
      return;
    }
  }

  CGPostError("No available font implementation.");
}

void *CGFontCreateWithPathAndName(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CGFontCreate();
  if (v4)
  {
    VTable = CGFontGetVTable();
    v6 = (*(VTable + 72))(a1, a2);
    v4[14] = v6;
    if (!v6)
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t copy_string_property(const char *a1, const void *(*a2)(const char *), const __CFString **a3)
{
  result = a2(a1);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      if (a3)
      {
        *a3 = v5;
      }

      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

char *load_library(const char *a1)
{
  Function = CGLibraryLoadFunction(a1, "cg_font_library_link_symbol");
  if (Function && verbose == 1)
  {
  }

  return Function;
}

uint64_t CGFontGetVTable()
{
  if (CGFontGetVTable_predicate != -1)
  {
    dispatch_once(&CGFontGetVTable_predicate, &__block_literal_global_22164);
  }

  result = CGFontGetVTable_vtable;
  if (!CGFontGetVTable_vtable)
  {
    _CGHandleAssert("CGFontGetVTable", 85, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontVTable.c", "vtable != NULL", "missing vtable");
  }

  return result;
}

CFStringRef copy_local_domain_value(const char *a1)
{
  if (copy_local_domain_value(char const*)::once != -1)
  {
    dispatch_once_f(&copy_local_domain_value(char const*)::once, 0, load_allow_debugging_defaults);
  }

  if (allow_debugging_defaults != 1)
  {
    return 0;
  }

  v2 = getenv(a1);
  if (!v2)
  {
    if (a1)
    {
      v4 = CFStringCreateWithCString(0, a1, 0x600u);
      if (v4)
      {
        v5 = v4;
        v6 = *MEMORY[0x1E695E8B8];
        v7 = *MEMORY[0x1E695E898];
        v8 = CFPreferencesCopyValue(v4, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        if (!v8)
        {
          v8 = CFPreferencesCopyValue(v5, *MEMORY[0x1E695E890], v6, v7);
          if (!v8)
          {
            v8 = CFPreferencesCopyValue(v5, @"com.apple.CoreGraphics", v6, v7);
          }
        }

        v9 = v8;
        CFRelease(v5);
        return v9;
      }
    }

    return 0;
  }

  return CFStringCreateWithCString(0, v2, 0x600u);
}

void load_allow_debugging_defaults(void *a1)
{
  v1 = getenv("CGAllowDebuggingDefaults");
  if (v1)
  {
    v3 = 0;
    allow_debugging_defaults = sscanf(v1, "%i", &v3) > 0;
  }

  else
  {
    v2 = CFPreferencesCopyValue(@"CGAllowDebuggingDefaults", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if ((get_BOOL(v2, &allow_debugging_defaults) & 1) == 0)
    {
      allow_debugging_defaults = 0;
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t get_BOOL(uint64_t result, BOOL *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      if (a2)
      {
        v5 = CFBooleanGetValue(v3) == 0;
        goto LABEL_5;
      }

      return 1;
    }

    if (v4 == CFStringGetTypeID())
    {
      if (CFStringCompare(v3, @"Yes", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"True", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"1", 1uLL) == kCFCompareEqualTo)
      {
        result = 1;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (CFStringCompare(v3, @"No", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"False", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"0", 1uLL) == kCFCompareEqualTo)
      {
        if (!a2)
        {
          return 1;
        }

        LOBYTE(result) = 0;
        goto LABEL_20;
      }
    }

    if (v4 != CFNumberGetTypeID())
    {
      return 0;
    }

    valuePtr = 0;
    result = CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    if (result)
    {
      if (a2)
      {
        v5 = valuePtr == 0;
LABEL_5:
        LOBYTE(result) = !v5;
LABEL_20:
        *a2 = result;
      }

      return 1;
    }
  }

  return result;
}

char *CGLibraryLoadFunction(uint64_t a1, char *__s1)
{
  result = 0;
  if (a1 && __s1)
  {
    v5 = &links;
    v6 = 6;
    while (strcmp(__s1, *v5))
    {
      v5 += 2;
      if (!--v6)
      {
        return 0;
      }
    }

    return v5[1];
  }

  return result;
}