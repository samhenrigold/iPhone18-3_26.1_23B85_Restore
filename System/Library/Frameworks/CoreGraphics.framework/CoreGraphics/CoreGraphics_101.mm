uint64_t RGBAf16_sample_Wf16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 24);
  v8 = *(result + 28);
  v9 = *(result + 176);
  v10 = *(result + 72);
  v130 = *(result + 80);
  v128 = *(result + 88);
  v12 = *(result + 112);
  v11 = *(result + 120);
  v127 = *(result + 188);
  v13 = (*(result + 152) - 8);
  v14 = *(result + 144) - 1;
  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = v6 + (v15 * v8) + 2 * (v16 - 1);
  v18 = v5 + (v15 * v7) + 2 * v16 - 2;
  v125 = *(result + 240);
  v126 = a4;
  v129 = *(result + 64);
  while (1)
  {
    if (a3 >= v10)
    {
      if (a3 <= v128)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        v30 = a3;
        v22 = v129;
        v31 = v130;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v128;
        v26 = v25 - a3 + (v24 >> 1);
        v22 = v129;
        if (v26 < 1)
        {
          goto LABEL_39;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v31 = v130;
        v29 = v27 | v127;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v10 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = v129;
      if (v21 < 1)
      {
        goto LABEL_39;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v31 = v130;
      v29 = v23 | v127;
      v30 = v20 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v22)
    {
      break;
    }

    v32 = *(result + 192);
    v33 = v22 - *(result + 200);
    v34 = a2 - v33 + (v32 >> 1);
    if (v34 >= 1)
    {
      if (v34 < v32)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v127;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v12;
    a3 += v11;
    v13 += 4;
    *++v14 = 0;
LABEL_40:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v31)
  {
    v36 = (a2 >> 26) & 0x3C;
    v35 = a2;
    goto LABEL_26;
  }

  v37 = v31;
  v38 = *(result + 192);
  v39 = *(result + 200) + v37;
  v40 = v39 - a2 + (v38 >> 1);
  if (v40 < 1)
  {
    goto LABEL_39;
  }

  if (v40 < v38)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v127;
  }

  v35 = v39 - 0x1000000;
  v36 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_39;
  }

  v41 = v30 >> 32;
  v42 = v5 + v41 * v7;
  v43 = v35 >> 31;
  v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
  v45 = v42 + (v43 & 0xFFFFFFFFFFFFFFFELL);
  v46 = *(result + 32);
  if (v18 >= v45)
  {
    v47 = (v42 + (v43 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v47 = v18;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  if (v6)
  {
    v48 = v6 + v41 * v8 + v44;
    v49 = *(result + 40);
    if (v17 >= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v17;
    }

    if (v50 >= v49)
    {
      v49 = v50;
    }

    _H2 = *v49;
    __asm { FCVT            S2, H2 }
  }

  else
  {
    v48 = 0;
    _S2 = 1.0;
  }

  _H3 = *v47;
  __asm { FCVT            S3, H3 }

  if (v9)
  {
    v58 = *(v9 + (v36 | v28));
LABEL_45:
    v59 = v58 & 0xF;
    v60 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      v102 = (v45 + SBYTE1(v58) * v7);
      if (v18 < v102)
      {
        v102 = v18;
      }

      if (v102 < v46)
      {
        v102 = v46;
      }

      _H4 = *v102;
      __asm { FCVT            S4, H4 }

      _S5 = 1.0;
      if (v6)
      {
        v104 = (v48 + SBYTE1(v58) * v8);
        if (v17 < v104)
        {
          v104 = v17;
        }

        if (v104 < *(result + 40))
        {
          v104 = *(result + 40);
        }

        _H5 = *v104;
        __asm { FCVT            S5, H5 }
      }

      v101 = &interpolate_waf[2 * v60];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          v61 = (v45 + 2 * SBYTE2(v58));
          if (v18 < v61)
          {
            v61 = v18;
          }

          if (v61 < v46)
          {
            v61 = v46;
          }

          _H4 = *v61;
          __asm { FCVT            S4, H4 }

          v64 = v45 + SBYTE1(v58) * v7;
          if (v18 >= v64)
          {
            v65 = (v45 + SBYTE1(v58) * v7);
          }

          else
          {
            v65 = v18;
          }

          if (v65 < v46)
          {
            v65 = v46;
          }

          _H5 = *v65;
          __asm { FCVT            S5, H5 }

          v68 = (v64 + 2 * SBYTE2(v58));
          if (v18 < v68)
          {
            v68 = v18;
          }

          if (v68 < v46)
          {
            v68 = v46;
          }

          _H6 = *v68;
          __asm { FCVT            S6, H6 }

          _S17 = 1.0;
          _S7 = 1.0;
          _S16 = 1.0;
          if (v6)
          {
            v74 = 2 * SBYTE2(v58);
            v75 = (v48 + v74);
            v76 = *(result + 40);
            if (v17 < v48 + v74)
            {
              v75 = v17;
            }

            if (v75 < v76)
            {
              v75 = *(result + 40);
            }

            _H7 = *v75;
            __asm { FCVT            S16, H7 }

            v78 = v48 + SBYTE1(v58) * v8;
            if (v17 >= v78)
            {
              v79 = (v48 + SBYTE1(v58) * v8);
            }

            else
            {
              v79 = v17;
            }

            if (v79 < v76)
            {
              v79 = *(result + 40);
            }

            _H7 = *v79;
            __asm { FCVT            S7, H7 }

            v81 = (v78 + v74);
            if (v17 < v81)
            {
              v81 = v17;
            }

            if (v81 < v76)
            {
              v81 = *(result + 40);
            }

            _H17 = *v81;
            __asm { FCVT            S17, H17 }
          }

          v83 = interpolate_waf[2 * v60 + 1];
          v84 = interpolate_waf[2 * ((v58 >> 28) & 3) + 1];
          v85 = (_S3 - (_S3 * v84)) + (_S4 * v84);
          v86 = (_S5 - (_S5 * v84)) + (_S6 * v84);
          v87 = (_S2 - (_S2 * v84)) + (_S16 * v84);
          v88 = v87 > 1.0 || v87 < 0.0;
          if (v87 < 0.0 && v87 <= 1.0)
          {
            v89 = 0.0;
          }

          else
          {
            v89 = 1.0;
          }

          if (v88)
          {
            v87 = v89;
          }

          v90 = (_S7 - (_S7 * v84)) + (_S17 * v84);
          v91 = v90 > 1.0 || v90 < 0.0;
          if (v90 < 0.0 && v90 <= 1.0)
          {
            v92 = 0.0;
          }

          else
          {
            v92 = 1.0;
          }

          if (v91)
          {
            v90 = v92;
          }

          _S3 = (v85 - (v85 * v83)) + (v86 * v83);
          _S2 = (v87 - (v87 * v83)) + (v90 * v83);
          v93 = _S2 > 1.0 || _S2 < 0.0;
          if (_S2 < 0.0 && _S2 <= 1.0)
          {
            v94 = 0.0;
          }

          else
          {
            v94 = 1.0;
          }

          if (v93)
          {
            _S2 = v94;
          }
        }

        goto LABEL_124;
      }

      v95 = (v45 + 2 * SBYTE2(v58));
      if (v18 < v95)
      {
        v95 = v18;
      }

      if (v95 < v46)
      {
        v95 = v46;
      }

      _H4 = *v95;
      __asm { FCVT            S4, H4 }

      _S5 = 1.0;
      if (v6)
      {
        v99 = (v48 + 2 * SBYTE2(v58));
        if (v17 < v99)
        {
          v99 = v17;
        }

        if (v99 < *(result + 40))
        {
          v99 = *(result + 40);
        }

        _H5 = *v99;
        __asm { FCVT            S5, H5 }
      }

      v101 = &interpolate_waf[2 * ((v58 >> 28) & 3)];
    }

    v106 = v101[1];
    _S3 = (_S3 - (_S3 * v106)) + (_S4 * v106);
    _S2 = (_S2 - (_S2 * v106)) + (_S5 * v106);
  }

LABEL_124:
  __asm { FCVT            H3, S3 }

  v13[6] = _H3;
  v13[5] = _H3;
  v13[4] = _H3;
  __asm { FCVT            H2, S2 }

  v13[7] = _H2;
  *++v14 = v29 >> 22;
  if (--a4)
  {
    v109 = v13 + 11;
    a2 += v12;
    v110 = v130 - a2;
    a3 += v11;
    v111 = v128 - a3;
    while (1)
    {
      v13 = v109 - 7;
      if ((((a2 - v129) | v110 | (a3 - v10) | v111) & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v112 = v5 + SHIDWORD(a3) * v7;
      v113 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v45 = v112 + v113;
      v46 = *(result + 32);
      if (v18 >= v112 + v113)
      {
        v114 = (v112 + v113);
      }

      else
      {
        v114 = v18;
      }

      if (v114 >= v46)
      {
        v115 = v114;
      }

      else
      {
        v115 = *(result + 32);
      }

      if (v6)
      {
        v48 = v6 + SHIDWORD(a3) * v8 + v113;
        v116 = *(result + 40);
        if (v17 >= v48)
        {
          v117 = (v6 + SHIDWORD(a3) * v8 + v113);
        }

        else
        {
          v117 = v17;
        }

        if (v117 >= v116)
        {
          v116 = v117;
        }

        _H2 = *v116;
        __asm { FCVT            S2, H2 }
      }

      else
      {
        _S2 = 1.0;
      }

      _H3 = *v115;
      if (v9)
      {
        v58 = *(v9 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        v120 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          __asm { FCVT            S3, H3 }

          v122 = *(result + 264);
          v123 = *v122;
          if (a4 != 1 && a4 + 1 != v126 && v125 != 1 && v123 == 3 && v120 < 3)
          {
            v58 |= 3u;
          }

          v29 = -1;
          if (v123 < v120)
          {
            *v122 = v120;
          }

          goto LABEL_45;
        }
      }

      *(v109 - 1) = _H3;
      *(v109 - 2) = _H3;
      *(v109 - 3) = _H3;
      __asm { FCVT            H2, S2 }

      *v109 = _H2;
      *++v14 = -1;
      v109 += 4;
      a2 += v12;
      v110 -= v12;
      a3 += v11;
      v111 -= v11;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RGBAf16_sample_RGBf16(uint64_t result, unint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, float16x4_t a10, double _D6, double _D7)
{
  v17 = *(result + 32);
  v18 = *(result + 24);
  v19 = *(result + 176);
  v20 = *(result + 64);
  v21 = *(result + 72);
  v22 = *(result + 80);
  v23 = *(result + 88);
  v24 = *(result + 112);
  v25 = *(result + 120);
  v26 = *(result + 188);
  v27 = *(result + 152) - 8;
  v28 = *(result + 144) - 1;
  v98 = *(result + 240);
  v99 = a4;
  v29 = v17 + ((*(result + 260) - 1) * v18) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
    if (a3 >= v21)
    {
      if (a3 <= v23)
      {
        v38 = (a3 >> 22) & 0x3C0;
        v39 = 0x3FFFFFFF;
        HIDWORD(v40) = HIDWORD(a3);
      }

      else
      {
        v34 = *(result + 216);
        v35 = *(result + 224) + v23;
        v36 = v35 - a3 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_67;
        }

        if (v36 >= v34)
        {
          LODWORD(v37) = 0x3FFFFFFF;
        }

        else
        {
          v37 = (*(result + 232) * v36) >> 32;
        }

        v39 = v37 | v26;
        v40 = v35 - 0x1000000;
        v38 = 448;
      }
    }

    else
    {
      v30 = *(result + 216);
      v31 = v21 - *(result + 224);
      v32 = a3 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_67;
      }

      if (v32 >= v30)
      {
        LODWORD(v33) = 0x3FFFFFFF;
      }

      else
      {
        v33 = (*(result + 232) * v32) >> 32;
      }

      v39 = v33 | v26;
      v40 = v31 + 0x1000000;
      v38 = 512;
    }

    if (a2 >= v20)
    {
      break;
    }

    v41 = *(result + 192);
    v42 = v20 - *(result + 200);
    v43 = a2 - v42 + (v41 >> 1);
    if (v43 >= 1)
    {
      if (v43 < v41)
      {
        v39 = ((v39 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v26;
      }

      v44 = v42 + 0x1000000;
      v45 = 32;
      goto LABEL_26;
    }

LABEL_67:
    --a4;
    a2 += v24;
    a3 += v25;
    v27 += 8;
    *++v28 = 0;
LABEL_68:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v22)
  {
    v45 = (a2 >> 26) & 0x3C;
    v44 = a2;
    goto LABEL_26;
  }

  v46 = *(result + 192);
  v47 = *(result + 200) + v22;
  v48 = v47 - a2 + (v46 >> 1);
  if (v48 < 1)
  {
    goto LABEL_67;
  }

  if (v48 < v46)
  {
    v39 = ((v39 >> 15) * (((*(result + 208) * v48) >> 32) >> 15)) | v26;
  }

  v44 = v47 - 0x1000000;
  v45 = 28;
LABEL_26:
  if (v39 < 0x400000)
  {
    goto LABEL_67;
  }

  v49 = v44 >> 32;
  v50 = v17 + SHIDWORD(v40) * v18;
  v51 = v50 + 6 * v49;
  v52 = *(result + 32);
  if (v29 >= v51)
  {
    v53 = v50 + 6 * v49;
  }

  else
  {
    v53 = v29;
  }

  if (v53 < v52)
  {
    v53 = *(result + 32);
  }

  _H4 = *v53;
  a10.i32[0] = *(v53 + 2);
  if (!v19)
  {
    goto LABEL_70;
  }

  v55 = *(v19 + (v45 | v38));
LABEL_34:
  v56 = v55 & 0xF;
  v57 = HIBYTE(v55) & 3;
  if (v56 == 1)
  {
    v83 = v51 + SBYTE1(v55) * v18;
    if (v29 < v83)
    {
      v83 = v29;
    }

    if (v83 < v52)
    {
      v83 = v52;
    }

    LOWORD(_D6) = *v83;
    v84 = &interpolate_rgbaf16[4 * v57];
    goto LABEL_81;
  }

  if (v56 == 2)
  {
    v83 = v51 + 6 * SBYTE2(v55);
    if (v29 < v83)
    {
      v83 = v29;
    }

    if (v83 < v52)
    {
      v83 = v52;
    }

    LOWORD(_D6) = *v83;
    v84 = &interpolate_rgbaf16[4 * ((v55 >> 28) & 3)];
LABEL_81:
    LOWORD(_D7) = v84[3];
    __asm
    {
      FCVT            S7, H7
      FCVT            S4, H4
      FCVT            S6, H6
    }

    _S4 = (_S4 - (_S4 * *&_D7)) + (*&_D6 * *&_D7);
    __asm { FCVT            H4, S4 }

    v87 = vcvtq_f32_f16(a10);
    LODWORD(_D6) = *(v83 + 2);
    *&_D6 = vcvtq_f32_f16(*&_D6).u64[0];
    *v87.f32 = vmla_n_f32(vmls_lane_f32(*v87.f32, *v87.f32, *&_D7, 0), *&_D6, *&_D7);
    a10 = vcvt_f16_f32(v87);
    *&_D6 = (1.0 - *&_D7) + *&_D7;
    __asm { FCVT            H6, S6 }

    goto LABEL_82;
  }

  if (v56 != 3)
  {
LABEL_70:
    LOWORD(_D6) = COERCE_UNSIGNED_INT(1.0);
    goto LABEL_82;
  }

  v58 = v51 + 6 * SBYTE2(v55);
  if (v29 < v58)
  {
    v58 = v29;
  }

  if (v58 < v52)
  {
    v58 = v52;
  }

  _H6 = *v58;
  v60 = v51 + SBYTE1(v55) * v18;
  if (v29 >= v60)
  {
    v61 = v51 + SBYTE1(v55) * v18;
  }

  else
  {
    v61 = v29;
  }

  if (v61 < v52)
  {
    v61 = v52;
  }

  _H7 = *v61;
  v63 = v60 + 6 * SBYTE2(v55);
  if (v29 < v63)
  {
    v63 = v29;
  }

  if (v63 < v52)
  {
    v63 = v52;
  }

  _H16 = *v63;
  _H17 = interpolate_rgbaf16[4 * v57 + 3];
  __asm { FCVT            S17, H17 }

  _H18 = interpolate_rgbaf16[4 * ((v55 >> 28) & 3) + 3];
  __asm
  {
    FCVT            S18, H18
    FCVT            S4, H4
    FCVT            S6, H6
  }

  v72 = (_S4 - (_S4 * _D18.f32[0])) + (_S6 * _D18.f32[0]);
  __asm
  {
    FCVT            S6, H7
    FCVT            S7, H16
  }

  *&_D6 = (_S6 - (_S6 * _D18.f32[0])) + (_S7 * _D18.f32[0]);
  v75 = vcvtq_f32_f16(a10);
  v76 = (1.0 - _D18.f32[0]) + _D18.f32[0];
  v77 = v76 > 1.0 || v76 < 0.0;
  if (v76 < 0.0 && v76 <= 1.0)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = 1.0;
  }

  if (v77)
  {
    v76 = v78;
  }

  _S4 = (v72 - (v72 * _D17.f32[0])) + (*&_D6 * _D17.f32[0]);
  __asm { FCVT            H4, S4 }

  LODWORD(_D6) = *(v58 + 2);
  v12.i32[0] = *(v61 + 2);
  v15.i32[0] = *(v63 + 2);
  *v75.f32 = vmla_n_f32(vmls_lane_f32(*v75.f32, *v75.f32, _D18, 0), *&vcvtq_f32_f16(*&_D6), _D18.f32[0]);
  v80 = vcvtq_f32_f16(v12).u64[0];
  v12 = vcvtq_f32_f16(v15).u64[0];
  _D6 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v80, v80, _D18, 0), v12, _D18.f32[0]));
  *v75.f32 = vmla_n_f32(vmls_lane_f32(*v75.f32, *v75.f32, _D17, 0), *&_D6, _D17.f32[0]);
  a10 = vcvt_f16_f32(v75);
  *&_D6 = (v76 - (v76 * _D17.f32[0])) + (v76 * _D17.f32[0]);
  v81 = *&_D6 > 1.0 || *&_D6 < 0.0;
  if (*&_D6 < 0.0 && *&_D6 <= 1.0)
  {
    v82 = COERCE_SHORT_FLOAT(0);
  }

  else
  {
    LOWORD(v82) = COERCE_UNSIGNED_INT(1.0);
  }

  __asm { FCVT            H6, S6 }

  if (v81)
  {
    *&_D6 = v82;
  }

LABEL_82:
  *(v27 + 8) = _H4;
  *(v27 + 10) = a10.i32[0];
  *(v27 + 14) = LOWORD(_D6);
  *++v28 = v39 >> 22;
  if (--a4)
  {
    v88 = (v27 + 22);
    a2 += v24;
    v89 = v22 - a2;
    a3 += v25;
    v90 = v23 - a3;
    while (1)
    {
      v27 = (v88 - 7);
      if ((((a2 - v20) | v89 | (a3 - v21) | v90) & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v91 = v17 + SHIDWORD(a3) * v18;
      v51 = v91 + 6 * SHIDWORD(a2);
      v52 = *(result + 32);
      if (v29 >= v51)
      {
        v92 = v91 + 6 * SHIDWORD(a2);
      }

      else
      {
        v92 = v29;
      }

      if (v92 < v52)
      {
        v92 = *(result + 32);
      }

      _H4 = *v92;
      v93 = *(v92 + 2);
      a10.i32[0] = v93;
      if (v19)
      {
        v55 = *(v19 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        v94 = v55 & 0xF;
        if ((v55 & 0xF) != 0)
        {
          v95 = *(result + 264);
          v96 = *v95;
          if (a4 != 1 && a4 + 1 != v99 && v98 != 1 && v96 == 3 && v94 < 3)
          {
            v55 |= 3u;
          }

          v39 = -1;
          if (v96 < v94)
          {
            *v95 = v94;
          }

          goto LABEL_34;
        }
      }

      *(v88 - 3) = _H4;
      *(v88 - 1) = v93;
      *v88 = COERCE_UNSIGNED_INT(1.0);
      v88 += 4;
      a2 += v24;
      v89 -= v24;
      a3 += v25;
      v90 -= v25;
      *++v28 = -1;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RGBAf16_sample_CMYKf16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *(result + 24);
  v10 = *(result + 28);
  v11 = *(result + 176);
  v12 = *(result + 72);
  v13 = *(result + 88);
  v133 = *(result + 80);
  v15 = *(result + 112);
  v14 = *(result + 120);
  v131 = *(result + 188);
  v16 = *(result + 152) - 8;
  v17 = (*(result + 144) - 1);
  v18 = *(result + 260) - 1;
  v19 = *(result + 256);
  v20 = v8 + (v18 * v10) + 2 * (v19 - 1);
  v129 = *(result + 240);
  v130 = a4;
  v21 = v7 + (v18 * v9) + 2 * (4 * v19) - 8;
  v132 = *(result + 64);
  while (1)
  {
    if (a3 >= v12)
    {
      if (a3 <= v13)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v26 = *(result + 216);
        v27 = *(result + 224) + v13;
        v28 = v27 - a3 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_39;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(result + 232) * v28) >> 32;
        }

        v31 = v29 | v131;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v22 = *(result + 216);
      v23 = v12 - *(result + 224);
      v24 = a3 - v23 + (v22 >> 1);
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

      v31 = v25 | v131;
      v32 = v23 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v132)
    {
      if (a2 <= v133)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v133;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_39;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v131;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v132 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_39;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v131;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_39:
    --a4;
    a2 += v15;
    a3 += v14;
    v16 += 8;
    *++v17 = 0;
LABEL_40:
    if (!a4)
    {
      return result;
    }
  }

  v41 = v32 >> 32;
  v42 = v36 >> 32;
  v43 = v7 + v41 * v9;
  v44 = v43 + 8 * v42;
  v45 = *(result + 32);
  if (v21 >= v44)
  {
    v46 = (v43 + 8 * v42);
  }

  else
  {
    v46 = v21;
  }

  if (v46 < v45)
  {
    v46 = *(result + 32);
  }

  if (v8)
  {
    v47 = v8 + v41 * v10 + 2 * v42;
    v48 = *(result + 40);
    if (v20 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v20;
    }

    if (v49 >= v48)
    {
      v48 = v49;
    }

    _H4 = *v48;
  }

  else
  {
    v47 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  _D5 = *v46;
  if (!v11)
  {
LABEL_100:
    v55 = v133;
    goto LABEL_124;
  }

  v52 = *(v11 + (v37 | v30));
LABEL_45:
  v53 = v52 & 0xF;
  v54 = HIBYTE(v52) & 3;
  v55 = v133;
  switch(v53)
  {
    case 1:
      v100 = (v44 + SBYTE1(v52) * v9);
      if (v21 < v100)
      {
        v100 = v21;
      }

      if (v100 < v45)
      {
        v100 = v45;
      }

      v95 = *v100;
      _S7 = 1.0;
      if (v8)
      {
        v101 = (v47 + SBYTE1(v52) * v10);
        if (v20 < v101)
        {
          v101 = v20;
        }

        if (v101 < *(result + 40))
        {
          v101 = *(result + 40);
        }

        _H7 = *v101;
        __asm { FCVT            S7, H7 }
      }

      v99 = &interpolate_cmykaf[5 * v54];
      goto LABEL_123;
    case 2:
      v93 = HIWORD(v52) << 56;
      v94 = (v44 + (v93 >> 53));
      if (v21 < v94)
      {
        v94 = v21;
      }

      if (v94 < v45)
      {
        v94 = v45;
      }

      v95 = *v94;
      _S7 = 1.0;
      if (v8)
      {
        v97 = (v47 + (v93 >> 55));
        if (v20 < v97)
        {
          v97 = v20;
        }

        if (v97 < *(result + 40))
        {
          v97 = *(result + 40);
        }

        _H7 = *v97;
        __asm { FCVT            S7, H7 }
      }

      v99 = &interpolate_cmykaf[5 * ((v52 >> 28) & 3)];
LABEL_123:
      _Q16.i16[0] = v99[4];
      __asm { FCVT            S16, H16 }

      v103 = vcvtq_f32_f16(_D5);
      _D5 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v103, v103, *_Q16.f32, 0), vcvtq_f32_f16(v95), _Q16.f32[0]));
      __asm { FCVT            S4, H4 }

      _S4 = (_S4 - (_S4 * _Q16.f32[0])) + (_S7 * _Q16.f32[0]);
      __asm { FCVT            H4, S4 }

      break;
    case 3:
      v56 = HIWORD(v52) << 56;
      v57 = (v44 + (v56 >> 53));
      if (v21 < v57)
      {
        v57 = v21;
      }

      if (v57 < v45)
      {
        v57 = v45;
      }

      v58 = (v44 + SBYTE1(v52) * v9);
      if (v21 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v21;
      }

      if (v59 < v45)
      {
        v59 = v45;
      }

      v60 = (v58 + (v56 >> 53));
      if (v21 < v60)
      {
        v60 = v21;
      }

      if (v60 < v45)
      {
        v60 = v45;
      }

      v61 = *v57;
      v62 = *v59;
      _S19 = 1.0;
      _S17 = 1.0;
      _S18 = 1.0;
      if (v8)
      {
        v66 = (v47 + (v56 >> 55));
        v67 = *(result + 40);
        if (v20 < v66)
        {
          v66 = v20;
        }

        if (v66 < v67)
        {
          v66 = *(result + 40);
        }

        _H17 = *v66;
        __asm { FCVT            S18, H17 }

        v72 = v47 + SBYTE1(v52) * v10;
        if (v20 >= v72)
        {
          v73 = (v47 + SBYTE1(v52) * v10);
        }

        else
        {
          v73 = v20;
        }

        if (v73 < v67)
        {
          v73 = *(result + 40);
        }

        _H17 = *v73;
        __asm { FCVT            S17, H17 }

        v75 = (v72 + (v56 >> 55));
        if (v20 < v75)
        {
          v75 = v20;
        }

        if (v75 < v67)
        {
          v75 = *(result + 40);
        }

        _H19 = *v75;
        __asm { FCVT            S19, H19 }
      }

      _H20 = interpolate_cmykaf[5 * v54 + 4];
      __asm { FCVT            S20, H20 }

      _H21 = interpolate_cmykaf[5 * ((v52 >> 28) & 3) + 4];
      __asm { FCVT            S21, H21 }

      v79 = vcvtq_f32_f16(_D5);
      v80 = vcvtq_f32_f16(v61);
      v81 = vcvtq_f32_f16(v62);
      _Q16 = vcvtq_f32_f16(*v60);
      __asm { FCVT            S4, H4 }

      v83 = (_S4 - (_S4 * _D21.f32[0])) + (_S18 * _D21.f32[0]);
      v84 = v83 > 1.0 || v83 < 0.0;
      if (v83 < 0.0 && v83 <= 1.0)
      {
        v85 = 0.0;
      }

      else
      {
        v85 = 1.0;
      }

      if (v84)
      {
        v83 = v85;
      }

      v86 = (_S17 - (_S17 * _D21.f32[0])) + (_S19 * _D21.f32[0]);
      v87 = v86 > 1.0 || v86 < 0.0;
      if (v86 < 0.0 && v86 <= 1.0)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = 1.0;
      }

      if (v87)
      {
        v86 = v88;
      }

      v89 = vmlaq_n_f32(vmlsq_lane_f32(v79, v79, _D21, 0), v80, _D21.f32[0]);
      _D5 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v89, v89, _D20, 0), vmlaq_n_f32(vmlsq_lane_f32(v81, v81, _D21, 0), _Q16, _D21.f32[0]), _D20.f32[0]));
      _S4 = (v83 - (v83 * _D20.f32[0])) + (v86 * _D20.f32[0]);
      v91 = _S4 > 1.0 || _S4 < 0.0;
      if (_S4 < 0.0 && _S4 <= 1.0)
      {
        v92 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        LOWORD(v92) = COERCE_UNSIGNED_INT(1.0);
      }

      __asm { FCVT            H4, S4 }

      if (v91)
      {
        _H4 = v92;
      }

      goto LABEL_100;
  }

LABEL_124:
  v106 = v31 >> 22;
  ++v17;
  a2 += v15;
  v107 = v55 - a2;
  v16 += 8;
  a3 += v14;
  v108 = v13 - a3;
  while (1)
  {
    v109 = a4;
    __asm { FCVT            S6, H4 }

    _H7 = _D5.i16[3];
    __asm
    {
      FCVT            S7, H7
      FCVT            S16, H5
    }

    _H17 = _D5.i16[1];
    __asm { FCVT            S17, H17 }

    _H5 = _D5.i16[2];
    __asm { FCVT            S5, H5 }

    _S16 = (_S6 - _S16) - _S7;
    __asm { FCVT            H16, S16 }

    *v16 = LOWORD(_S16);
    _S16 = (_S6 - _S17) - _S7;
    __asm { FCVT            H16, S16 }

    *(v16 + 2) = LOWORD(_S16);
    _S5 = (_S6 - _S5) - _S7;
    __asm { FCVT            H5, S5 }

    *(v16 + 4) = LOWORD(_S5);
    *(v16 + 6) = _H4;
    *v17 = v106;
    if (!--a4)
    {
      return result;
    }

    if (((v108 | v107 | (a3 - v12) | (a2 - v132)) & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v44 = v7 + SHIDWORD(a3) * v9 + 8 * (a2 >> 32);
    v45 = *(result + 32);
    if (v21 >= v44)
    {
      v121 = v7 + SHIDWORD(a3) * v9 + 8 * (a2 >> 32);
    }

    else
    {
      v121 = v21;
    }

    if (v121 >= v45)
    {
      v122 = v121;
    }

    else
    {
      v122 = *(result + 32);
    }

    if (v8)
    {
      v47 = v8 + SHIDWORD(a3) * v10 + 2 * (a2 >> 32);
      v123 = *(result + 40);
      if (v20 >= v47)
      {
        v124 = v8 + SHIDWORD(a3) * v10 + 2 * (a2 >> 32);
      }

      else
      {
        v124 = v20;
      }

      if (v124 >= v123)
      {
        v123 = v124;
      }

      _H4 = *v123;
    }

    else
    {
      LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
    }

    _D5 = *v122;
    if (v11)
    {
      v52 = *(v11 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      v125 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        v126 = *(result + 264);
        v127 = *v126;
        if (v109 != v130 && a4 != 1 && v129 != 1 && v127 == 3 && v125 < 3)
        {
          v52 |= 3u;
        }

        v31 = -1;
        if (v127 < v125)
        {
          *v126 = v125;
        }

        goto LABEL_45;
      }
    }

    ++v17;
    v107 -= v15;
    a2 += v15;
    v16 += 8;
    a3 += v14;
    v108 -= v14;
    LOBYTE(v106) = -1;
  }
}

BOOL CPFontEnumeratorIsKnownRenderedChar(uint64_t a1, unsigned __int16 *a2)
{
  if (a1 == 2)
  {
    v3 = *a2;
    if (((v3 + 9408) >> 6) >= 0x3F3u)
    {
      v4 = a2[1];
      if ((v4 - 57344) >= 0xFFFFFC00)
      {
        return (~v3 & 0x3F | ~v4 & 0x3FE) != 0;
      }
    }

    return 0;
  }

  if (a1 != 1)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2 > 0x7F)
  {
    if (!__maskrune(*a2, 0x200uLL))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x200) != 0)
  {
    return 0;
  }

LABEL_11:
  if (v2 > 0xFFFD)
  {
    return 0;
  }

  return (v2 + 560) >= 0x20u && v2 >> 11 != 27;
}

uint64_t CPFontEnumeratorProcessMultiUnicodes(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - 1;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = v6;
    v10 = a3[v7];
    if (v10 > 0x7F)
    {
      v11 = __maskrune(a3[v7], 0x4000uLL);
    }

    else
    {
      v11 = *(v8 + 4 * v10 + 60) & 0x4000;
    }

    v6 = 1;
    if (v11 || v10 == 160)
    {
      goto LABEL_16;
    }

    v6 = 2;
    if (v10 <= 8207)
    {
      if (v10 != 45 && v10 != 173)
      {
LABEL_38:
        if (v10 == 61442 || v10 == 64258)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v10 == 8208)
    {
      goto LABEL_16;
    }

    if (v10 != 61441 && v10 != 64257)
    {
      goto LABEL_38;
    }

    v6 = 3;
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (v6 != v9)
    {
      goto LABEL_46;
    }

LABEL_18:
    if (v6 <= 2)
    {
      break;
    }

    if (v6 == 3)
    {
      v12 = v10 == 61441;
    }

    else
    {
      v12 = v10 == 61442;
    }

LABEL_31:
    if (!v12 || v9 == 0)
    {
      v5 = v10;
    }

LABEL_36:
    if (--v7 == -1)
    {
      return v5;
    }
  }

  if (v6 == 1)
  {
    if (v10 == 160 || v10 == 32)
    {
      v5 = 9;
    }

    else
    {
      v5 = v10;
    }

    goto LABEL_36;
  }

  if (v6 == 2)
  {
    v12 = v10 == 173;
    goto LABEL_31;
  }

LABEL_46:
  CPMultiUnicodesAppend(*(*(a1 + 112) + 2296), 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 112) + 2072) - *(*(a1 + 112) + 2064)) >> 6), a2, a3);
  return 0;
}

uint64_t CPFontEnumeratorGetUnicharForCID(uint64_t a1, uint64_t a2, unsigned __int16 *a3, BOOL *a4)
{
  v6 = a2;
  v8 = *(a1 + 96);
  if (!v8 || (v9 = *(*(v8 + 16) + 48)) == 0)
  {
    *a4 = CPFontEnumeratorIsKnownRenderedChar(0, a3);
LABEL_8:
    v12 = CGPDFGetUnicharGuessForCID(v6, a3);
    if (!v12)
    {
      return 0;
    }

    unichars = v12;
    if (v12 != 1)
    {
      goto LABEL_5;
    }

    return *a3;
  }

  unichars = cmap_bf_set_get_unichars(*(v9 + 16), a2, a3);
  *a4 = CPFontEnumeratorIsKnownRenderedChar(unichars, a3);
  if (!unichars)
  {
    goto LABEL_8;
  }

  if (unichars == 1)
  {
    return *a3;
  }

LABEL_5:
  v11 = CPFontEnumeratorProcessMultiUnicodes(a1, unichars, a3);
  v14 = v11;
  if (v11)
  {
    *a4 = CPFontEnumeratorIsKnownRenderedChar(1, &v14);
  }

  return v11;
}

uint64_t Wf16_sample_Wf_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 28);
  v6 = *(result + 112);
  v7 = *(result + 48);
  v8 = *(result + 56);
  if (v7)
  {
    v172 = *(result + 112);
    if (v6 > v7)
    {
      v172 = v6 % v7;
    }
  }

  else
  {
    v172 = 0;
  }

  v9 = *(result + 176);
  v11 = *(result + 32);
  v10 = *(result + 40);
  v12 = *(result + 120);
  if (v8)
  {
    v13 = v12 % v8;
    if (v12 <= v8)
    {
      v13 = *(result + 120);
    }

    v171 = v13;
  }

  else
  {
    v171 = 0;
  }

  v167 = *(result + 80);
  v168 = *(result + 64);
  v169 = *(result + 88);
  v166 = *(result + 188);
  v14 = *(result + 152) - 4;
  v15 = *(result + 144) - 1;
  v16 = *(result + 260) - 1;
  v17 = *(result + 256);
  v18 = v10 + (v16 * v5) + 2 * (v17 - 1);
  v164 = *(result + 240);
  v19 = v11 + (v16 * v4) + 2 * v17 - 2;
  v170 = *(result + 72);
  v20 = a4;
  while (1)
  {
    if (a3 >= v170)
    {
      if (a3 <= v169)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v169;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_57;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v31 = v166 | v28;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v21 = *(result + 216);
      v22 = v170 - *(result + 224);
      v23 = a3 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_57;
      }

      if (v23 >= v21)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v23) >> 32;
      }

      v31 = v166 | v24;
      v32 = v22 + 0x1000000;
      v29 = a3 - (v22 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v168)
    {
      break;
    }

    v33 = *(result + 192);
    v34 = v168 - *(result + 200);
    v35 = a2 - v34 + (v33 >> 1);
    if (v35 >= 1)
    {
      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v166;
      }

      v36 = v34 + 0x1000000;
      v37 = a2 - (v34 + 0x1000000);
      v38 = 32;
      goto LABEL_35;
    }

LABEL_57:
    --v20;
    a2 += v6;
    a3 += v12;
    v14 += 4;
    *++v15 = 0;
LABEL_58:
    if (!v20)
    {
      return result;
    }
  }

  if (a2 <= v167)
  {
    v37 = 0;
    v38 = (a2 >> 26) & 0x3C;
    v36 = a2;
    goto LABEL_35;
  }

  v39 = *(result + 192);
  v40 = *(result + 200) + v167;
  v41 = v40 - a2 + (v39 >> 1);
  if (v41 < 1)
  {
    goto LABEL_57;
  }

  if (v41 < v39)
  {
    v31 = ((v31 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v166;
  }

  v36 = v40 - 0x1000000;
  v37 = a2 - (v40 - 0x1000000);
  v38 = 28;
LABEL_35:
  if (v31 < 0x400000)
  {
    goto LABEL_57;
  }

  if (v7)
  {
    v42 = (v8 & ((v32 % v8) >> 63)) + v32 % v8;
    v43 = (v7 & ((v36 % v7) >> 63)) + v36 % v7;
    if (v42 >= v8)
    {
      v44 = v8;
    }

    else
    {
      v44 = 0;
    }

    v32 = v42 - v44;
    if (v43 >= v7)
    {
      v45 = v7;
    }

    else
    {
      v45 = 0;
    }

    v36 = v43 - v45;
    v29 += v32;
    v37 += v43 - v45;
  }

  v46 = v32 >> 32;
  v47 = v11 + SHIDWORD(v32) * v4;
  v48 = (v36 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v49 = v47 + v48;
  v50 = *(result + 32);
  if (v19 >= v47 + v48)
  {
    v51 = (v47 + v48);
  }

  else
  {
    v51 = v19;
  }

  if (v51 >= v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = *(result + 32);
  }

  if (v10)
  {
    v53 = v10 + v46 * v5 + v48;
    v54 = *(result + 40);
    if (v18 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v18;
    }

    if (v55 >= v54)
    {
      v54 = v55;
    }

    _H4 = *v54;
  }

  else
  {
    v53 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  _H5 = *v52;
  if (v9)
  {
    v58 = *(v9 + (v38 | v30));
LABEL_63:
    v59 = v58 & 0xF;
    v60 = v58 >> 8;
    v61 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      LODWORD(v130) = SBYTE1(v58);
      if (v7)
      {
        v131 = v29 + (SBYTE1(v58) << 32);
        v132 = v8 & (v131 >> 63);
        if (v132 + v131 >= v8)
        {
          v133 = v8;
        }

        else
        {
          v133 = 0;
        }

        v130 = (v132 + (v60 << 32) - v133) >> 32;
      }

      v134 = (v49 + v130 * v4);
      if (v19 < v134)
      {
        v134 = v19;
      }

      if (v134 < v50)
      {
        v134 = v50;
      }

      _H6 = *v134;
      _S7 = 1.0;
      if (v10)
      {
        v135 = (v53 + v130 * v5);
        if (v18 < v135)
        {
          v135 = v18;
        }

        if (v135 < *(result + 40))
        {
          v135 = *(result + 40);
        }

        _H7 = *v135;
        __asm { FCVT            S7, H7 }
      }

      v129 = &interpolate_waf[2 * v61];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          LODWORD(v62) = SBYTE1(v58);
          v63 = SBYTE2(v58);
          if (v7)
          {
            v64 = v60 << 56;
            v65 = HIWORD(v58) << 56;
            v66 = v29 + (SBYTE1(v58) << 32);
            v67 = v37 + (v65 >> 24);
            v68 = v31;
            v69 = v8 & (v66 >> 63);
            v163 = v5;
            v70 = v7 & (v67 >> 63);
            v71 = v70 + v67;
            if (v69 + v66 >= v8)
            {
              v72 = v8;
            }

            else
            {
              v72 = 0;
            }

            if (v71 >= v7)
            {
              v73 = v7;
            }

            else
            {
              v73 = 0;
            }

            v74 = v69 + (v64 >> 24);
            v31 = v68;
            v61 = HIBYTE(v58) & 3;
            v62 = (v74 - v72) >> 32;
            v75 = v70 + (v65 >> 24);
            v5 = v163;
            v63 = (v75 - v73) >> 32;
          }

          v76 = (v49 + 2 * v63);
          if (v19 < v76)
          {
            v76 = v19;
          }

          if (v76 < v50)
          {
            v76 = v50;
          }

          _H6 = *v76;
          v78 = v49 + v62 * v4;
          if (v19 >= v78)
          {
            v79 = (v49 + v62 * v4);
          }

          else
          {
            v79 = v19;
          }

          if (v79 < v50)
          {
            v79 = v50;
          }

          _H7 = *v79;
          v81 = (v78 + 2 * v63);
          if (v19 < v81)
          {
            v81 = v19;
          }

          if (v81 < v50)
          {
            v81 = v50;
          }

          _H16 = *v81;
          _S17 = 1.0;
          _S18 = 1.0;
          _S19 = 1.0;
          if (v10)
          {
            v86 = 2 * v63;
            v87 = (v53 + 2 * v63);
            v88 = *(result + 40);
            if (v18 < v87)
            {
              v87 = v18;
            }

            if (v87 < v88)
            {
              v87 = *(result + 40);
            }

            _H17 = *v87;
            v90 = v53 + v62 * v5;
            if (v18 >= v90)
            {
              v91 = (v53 + v62 * v5);
            }

            else
            {
              v91 = v18;
            }

            if (v91 < v88)
            {
              v91 = *(result + 40);
            }

            _H18 = *v91;
            v93 = (v90 + v86);
            if (v18 < v93)
            {
              v93 = v18;
            }

            if (v93 < v88)
            {
              v93 = *(result + 40);
            }

            _H20 = *v93;
            __asm
            {
              FCVT            S19, H17
              FCVT            S17, H18
              FCVT            S18, H20
            }
          }

          _H20 = interpolate_waf[2 * v61 + 1];
          __asm { FCVT            S20, H20 }

          _H21 = interpolate_waf[2 * ((v58 >> 28) & 3) + 1];
          __asm
          {
            FCVT            S21, H21
            FCVT            S5, H5
            FCVT            S6, H6
          }

          v104 = (_S5 - (_S5 * _S21)) + (_S6 * _S21);
          __asm
          {
            FCVT            S6, H7
            FCVT            S7, H16
          }

          v107 = (_S6 - (_S6 * _S21)) + (_S7 * _S21);
          __asm { FCVT            S4, H4 }

          v109 = (_S4 - (_S4 * _S21)) + (_S19 * _S21);
          v110 = v109 > 1.0 || v109 < 0.0;
          if (v109 < 0.0 && v109 <= 1.0)
          {
            v111 = 0.0;
          }

          else
          {
            v111 = 1.0;
          }

          if (v110)
          {
            v109 = v111;
          }

          v112 = (_S17 - (_S17 * _S21)) + (_S18 * _S21);
          v113 = v112 > 1.0 || v112 < 0.0;
          if (v112 < 0.0 && v112 <= 1.0)
          {
            v114 = 0.0;
          }

          else
          {
            v114 = 1.0;
          }

          if (v113)
          {
            v112 = v114;
          }

          _S5 = (v104 - (v104 * _S20)) + (v107 * _S20);
          __asm { FCVT            H5, S5 }

          _S4 = (v109 - (v109 * _S20)) + (v112 * _S20);
          v117 = _S4 > 1.0 || _S4 < 0.0;
          if (_S4 < 0.0 && _S4 <= 1.0)
          {
            v118 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v118) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H4, S4 }

          if (v117)
          {
            _H4 = v118;
          }
        }

        goto LABEL_160;
      }

      v119 = SBYTE2(v58);
      if (v7)
      {
        v120 = HIWORD(v58) << 56;
        v121 = v37 + (v120 >> 24);
        v122 = v7 & (v121 >> 63);
        if (v122 + v121 >= v7)
        {
          v123 = v7;
        }

        else
        {
          v123 = 0;
        }

        v119 = (v122 + (v120 >> 24) - v123) >> 32;
      }

      v124 = (v49 + 2 * v119);
      if (v19 < v124)
      {
        v124 = v19;
      }

      if (v124 < v50)
      {
        v124 = v50;
      }

      _H6 = *v124;
      _S7 = 1.0;
      if (v10)
      {
        v127 = (v53 + 2 * v119);
        if (v18 < v127)
        {
          v127 = v18;
        }

        if (v127 < *(result + 40))
        {
          v127 = *(result + 40);
        }

        _H7 = *v127;
        __asm { FCVT            S7, H7 }
      }

      v129 = &interpolate_waf[2 * ((v58 >> 28) & 3)];
    }

    _H16 = v129[1];
    __asm
    {
      FCVT            S16, H16
      FCVT            S5, H5
      FCVT            S6, H6
    }

    _S5 = (_S5 - (_S5 * _S16)) + (_S6 * _S16);
    __asm
    {
      FCVT            H5, S5
      FCVT            S4, H4
    }

    _S4 = (_S4 - (_S4 * _S16)) + (_S7 * _S16);
    __asm { FCVT            H4, S4 }
  }

LABEL_160:
  *(v14 + 4) = _H5;
  *(v14 + 6) = _H4;
  *++v15 = v31 >> 22;
  if (--v20)
  {
    v144 = (v14 + 10);
    a2 += v6;
    v145 = v167 - a2;
    a3 += v12;
    v146 = v169 - a3;
    while (1)
    {
      v14 = (v144 - 3);
      if (((v146 | v145 | (a3 - v170) | (a2 - v168)) & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v7)
      {
        v147 = (v8 & ((v29 + v171) >> 63)) + v29 + v171;
        v148 = (v7 & ((v37 + v172) >> 63)) + v37 + v172;
        if (v147 >= v8)
        {
          v149 = v8;
        }

        else
        {
          v149 = 0;
        }

        v29 = v147 - v149;
        if (v148 >= v7)
        {
          v150 = v7;
        }

        else
        {
          v150 = 0;
        }

        v37 = v148 - v150;
        v151 = v29;
        v152 = v37;
      }

      else
      {
        v151 = a3;
        v152 = a2;
      }

      v153 = v151 >> 32;
      v154 = v11 + SHIDWORD(v151) * v4;
      v155 = (v152 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v49 = v154 + v155;
      v50 = *(result + 32);
      if (v19 >= v154 + v155)
      {
        v156 = (v154 + v155);
      }

      else
      {
        v156 = v19;
      }

      if (v156 < v50)
      {
        v156 = *(result + 32);
      }

      if (v10)
      {
        v53 = v10 + v153 * v5 + v155;
        v157 = *(result + 40);
        if (v18 >= v53)
        {
          v158 = v53;
        }

        else
        {
          v158 = v18;
        }

        if (v158 >= v157)
        {
          v157 = v158;
        }

        _H4 = *v157;
      }

      else
      {
        LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
      }

      _H5 = *v156;
      if (v9)
      {
        v58 = *(v9 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v159 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          v160 = *(result + 264);
          v161 = *v160;
          if (v20 + 1 != a4 && v20 != 1 && v164 != 1 && v161 == 3 && v159 < 3)
          {
            v58 |= 3u;
          }

          v31 = -1;
          if (v161 < v159)
          {
            *v160 = v159;
          }

          goto LABEL_63;
        }
      }

      *(v144 - 1) = _H5;
      *v144 = _H4;
      v144 += 2;
      a2 += v6;
      v145 -= v6;
      a3 += v12;
      *++v15 = -1;
      v146 -= v12;
      if (!--v20)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t Wf16_sample_RGBf_inner(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v12 = *(result + 32);
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 4;
  v23 = *(result + 144) - 1;
  v103 = *(result + 240);
  v24 = v12 + ((*(result + 260) - 1) * v13) + 4 * (3 * *(result + 256)) - 6;
  v104 = a4;
  while (1)
  {
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        HIDWORD(v35) = HIDWORD(a3);
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v18;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_67;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v34 = v21 | v32;
        v35 = v30 - 0x1000000;
        v33 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v16 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_67;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v34 = v21 | v28;
      v35 = v26 + 0x1000000;
      v33 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v36 = *(result + 192);
    v37 = v15 - *(result + 200);
    v38 = a2 - v37 + (v36 >> 1);
    if (v38 >= 1)
    {
      if (v38 < v36)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v21;
      }

      v39 = v37 + 0x1000000;
      v40 = 32;
      goto LABEL_26;
    }

LABEL_67:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 4;
    *++v23 = 0;
LABEL_68:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v40 = (a2 >> 26) & 0x3C;
    v39 = a2;
    goto LABEL_26;
  }

  v41 = *(result + 192);
  v42 = *(result + 200) + v17;
  v43 = v42 - a2 + (v41 >> 1);
  if (v43 < 1)
  {
    goto LABEL_67;
  }

  if (v43 < v41)
  {
    v34 = ((v34 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v21;
  }

  v39 = v42 - 0x1000000;
  v40 = 28;
LABEL_26:
  if (v34 < 0x400000)
  {
    goto LABEL_67;
  }

  v44 = v39 >> 32;
  v45 = v12 + SHIDWORD(v35) * v13;
  v46 = v45 + 6 * v44;
  v47 = *(result + 32);
  if (v24 >= v46)
  {
    v48 = v45 + 6 * v44;
  }

  else
  {
    v48 = v24;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  _H7 = *v48;
  _D16.i32[0] = *(v48 + 2);
  if (!v14)
  {
    goto LABEL_70;
  }

  v50 = *(v14 + (v40 | v33));
LABEL_34:
  v51 = v50 & 0xF;
  v52 = HIBYTE(v50) & 3;
  if (v51 == 1)
  {
    v78 = v46 + SBYTE1(v50) * v13;
    if (v24 < v78)
    {
      v78 = v24;
    }

    if (v78 < v47)
    {
      v78 = v47;
    }

    _D17.i16[0] = *v78;
    v79 = &interpolate_rgbaf16[4 * v52];
    goto LABEL_81;
  }

  if (v51 == 2)
  {
    v78 = v46 + 6 * SBYTE2(v50);
    if (v24 < v78)
    {
      v78 = v24;
    }

    if (v78 < v47)
    {
      v78 = v47;
    }

    _D17.i16[0] = *v78;
    v79 = &interpolate_rgbaf16[4 * ((v50 >> 28) & 3)];
LABEL_81:
    _D18.i16[0] = v79[3];
    __asm
    {
      FCVT            S18, H18
      FCVT            S7, H7
      FCVT            S17, H17
    }

    _S7 = (_S7 - (_S7 * _D18.f32[0])) + (*_D17.i32 * _D18.f32[0]);
    __asm { FCVT            H7, S7 }

    v82 = vcvtq_f32_f16(_D16);
    _D17.i32[0] = *(v78 + 2);
    _D17 = vcvtq_f32_f16(_D17).u64[0];
    *v82.f32 = vmla_n_f32(vmls_lane_f32(*v82.f32, *v82.f32, _D18, 0), _D17, _D18.f32[0]);
    _D16 = vcvt_f16_f32(v82);
    *_D17.i32 = (1.0 - _D18.f32[0]) + _D18.f32[0];
    __asm { FCVT            H17, S17 }

    goto LABEL_82;
  }

  if (v51 != 3)
  {
LABEL_70:
    _D17.i16[0] = COERCE_UNSIGNED_INT(1.0);
    goto LABEL_82;
  }

  v53 = v46 + 6 * SBYTE2(v50);
  if (v24 < v53)
  {
    v53 = v24;
  }

  if (v53 < v47)
  {
    v53 = v47;
  }

  _H17 = *v53;
  v55 = v46 + SBYTE1(v50) * v13;
  if (v24 >= v55)
  {
    v56 = v46 + SBYTE1(v50) * v13;
  }

  else
  {
    v56 = v24;
  }

  if (v56 < v47)
  {
    v56 = v47;
  }

  _H18 = *v56;
  v58 = v55 + 6 * SBYTE2(v50);
  if (v24 < v58)
  {
    v58 = v24;
  }

  if (v58 < v47)
  {
    v58 = v47;
  }

  _H19 = *v58;
  _H20 = interpolate_rgbaf16[4 * v52 + 3];
  __asm { FCVT            S20, H20 }

  _H21 = interpolate_rgbaf16[4 * ((v50 >> 28) & 3) + 3];
  __asm
  {
    FCVT            S21, H21
    FCVT            S7, H7
    FCVT            S17, H17
  }

  v67 = (_S7 - (_S7 * _D21.f32[0])) + (_S17 * _D21.f32[0]);
  __asm
  {
    FCVT            S17, H18
    FCVT            S18, H19
  }

  *_D17.i32 = (_S17 - (_S17 * _D21.f32[0])) + (_S18 * _D21.f32[0]);
  v70 = vcvtq_f32_f16(_D16);
  v71 = (1.0 - _D21.f32[0]) + _D21.f32[0];
  v72 = v71 > 1.0 || v71 < 0.0;
  if (v71 < 0.0 && v71 <= 1.0)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = 1.0;
  }

  if (v72)
  {
    v71 = v73;
  }

  _S7 = (v67 - (v67 * _D20.f32[0])) + (*_D17.i32 * _D20.f32[0]);
  __asm { FCVT            H7, S7 }

  _D17.i32[0] = *(v53 + 2);
  v7.i32[0] = *(v56 + 2);
  v10.i32[0] = *(v58 + 2);
  *v70.f32 = vmla_n_f32(vmls_lane_f32(*v70.f32, *v70.f32, _D21, 0), *&vcvtq_f32_f16(_D17), _D21.f32[0]);
  v75 = vcvtq_f32_f16(v7).u64[0];
  v7 = vcvtq_f32_f16(v10).u64[0];
  _D17 = vmla_n_f32(vmls_lane_f32(v75, v75, _D21, 0), v7, _D21.f32[0]);
  *v70.f32 = vmla_n_f32(vmls_lane_f32(*v70.f32, *v70.f32, _D20, 0), _D17, _D20.f32[0]);
  _D16 = vcvt_f16_f32(v70);
  *_D17.i32 = (v71 - (v71 * _D20.f32[0])) + (v71 * _D20.f32[0]);
  v76 = *_D17.i32 > 1.0 || *_D17.i32 < 0.0;
  if (*_D17.i32 < 0.0 && *_D17.i32 <= 1.0)
  {
    v77 = COERCE_SHORT_FLOAT(0);
  }

  else
  {
    LOWORD(v77) = COERCE_UNSIGNED_INT(1.0);
  }

  __asm { FCVT            H17, S17 }

  if (v76)
  {
    *_D17.i16 = v77;
  }

LABEL_82:
  __asm
  {
    FCVT            S7, H7
    FCVT            S18, H16
  }

  _H16 = _D16.i16[1];
  __asm { FCVT            S16, H16 }

  _S7 = ((_S18 * 0.59) + (_S7 * 0.3)) + (_S16 * 0.11);
  __asm { FCVT            H7, S7 }

  *(v22 + 4) = LOWORD(_S7);
  *(v22 + 6) = _D17.i16[0];
  *++v23 = v34 >> 22;
  if (--a4)
  {
    v88 = (v22 + 10);
    a2 += v19;
    v89 = v17 - a2;
    a3 += v20;
    v90 = v18 - a3;
    while (1)
    {
      v22 = (v88 - 3);
      if (((v90 | v89 | (a3 - v16) | (a2 - v15)) & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v91 = v12 + SHIDWORD(a3) * v13;
      v46 = v91 + 6 * SHIDWORD(a2);
      v47 = *(result + 32);
      if (v24 >= v46)
      {
        v92 = v91 + 6 * SHIDWORD(a2);
      }

      else
      {
        v92 = v24;
      }

      if (v92 < v47)
      {
        v92 = *(result + 32);
      }

      _H7 = *v92;
      v93 = *(v92 + 2);
      _D16.i32[0] = v93;
      if (v14)
      {
        v50 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v94 = v50 & 0xF;
        if ((v50 & 0xF) != 0)
        {
          v100 = *(result + 264);
          v101 = *v100;
          if (a4 + 1 != v104 && a4 != 1 && v103 != 1 && v101 == 3 && v94 < 3)
          {
            v50 |= 3u;
          }

          v34 = -1;
          if (v101 < v94)
          {
            *v100 = v94;
          }

          goto LABEL_34;
        }
      }

      __asm
      {
        FCVT            S7, H7
        FCVT            S17, H16
      }

      _H16 = HIWORD(v93);
      __asm { FCVT            S16, H16 }

      _S7 = ((_S17 * 0.59) + (_S7 * 0.3)) + (_S16 * 0.11);
      __asm { FCVT            H7, S7 }

      *(v88 - 1) = LOWORD(_S7);
      *v88 = COERCE_UNSIGNED_INT(1.0);
      *++v23 = -1;
      v88 += 2;
      a2 += v19;
      v89 -= v19;
      a3 += v20;
      v90 -= v20;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t Wf16_sample_RGBAf_inner(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v11 = *(result + 24);
  v12 = *(result + 176);
  v13 = *(result + 64);
  v14 = *(result + 72);
  v15 = *(result + 88);
  v160 = *(result + 80);
  v16 = *(result + 112);
  v17 = *(result + 120);
  v159 = *(result + 188);
  v18 = *(result + 152) - 4;
  v19 = *(result + 144) - 1;
  v20 = *(result + 32);
  v21 = *(result + 40);
  v157 = *(result + 240);
  v22 = v20 + ((*(result + 260) - 1) * v11) + 2 * (4 * *(result + 256)) - 8;
  LOWORD(v23) = COERCE_UNSIGNED_INT(1.0);
  v24 = a4;
  while (1)
  {
    if (a3 >= v14)
    {
      if (a3 <= v15)
      {
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        HIDWORD(v35) = HIDWORD(a3);
        v36 = v160;
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v15;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_46;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v36 = v160;
        v34 = v159 | v32;
        v35 = v30 - 0x1000000;
        v33 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v14 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_46;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v36 = v160;
      v34 = v159 | v28;
      v35 = v26 + 0x1000000;
      v33 = 512;
    }

    if (a2 >= v13)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v13 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v159;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_46:
    --v24;
    a2 += v16;
    a3 += v17;
    v18 += 4;
    *++v19 = 0;
LABEL_47:
    if (!v24)
    {
      return result;
    }
  }

  if (a2 <= v36)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v36;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_46;
  }

  if (v44 < v42)
  {
    v34 = ((v34 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v159;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v34 < 0x400000)
  {
    goto LABEL_46;
  }

  v45 = v20 + SHIDWORD(v35) * v11;
  v46 = v45 + 8 * (v40 >> 32);
  v47 = *(result + 32);
  if (v22 >= v46)
  {
    v48 = v45 + 8 * (v40 >> 32);
  }

  else
  {
    v48 = v22;
  }

  if (v48 >= v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = *(result + 32);
  }

  if (v21)
  {
    __asm { FCMP            H7, #0 }

    if (_NF)
    {
      v54 = 1;
    }

    else
    {
      v54 = 0;
    }

    if (_H7 > v23)
    {
      v55 = 1;
    }

    else
    {
      v55 = v54;
    }

    if ((v54 & (_H7 <= v23)) != 0)
    {
      v56 = COERCE_SHORT_FLOAT(0);
    }

    else
    {
      LOWORD(v56) = COERCE_UNSIGNED_INT(1.0);
    }

    if (v55)
    {
      _H7 = v56;
    }
  }

  else
  {
    LOWORD(_H7) = COERCE_UNSIGNED_INT(1.0);
  }

  _H16 = *v49;
  _D17.i32[0] = *(v49 + 2);
  if (v12)
  {
    v58 = *(v12 + (v41 | v33));
LABEL_52:
    v59 = v58 & 0xF;
    v60 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      v95 = v46 + SBYTE1(v58) * v11;
      if (v22 < v95)
      {
        v95 = v22;
      }

      if (v95 >= v47)
      {
        v96 = v95;
      }

      else
      {
        v96 = v47;
      }

      _H20 = *v96;
      v5.i32[0] = *(v96 + 2);
      _S19 = 1.0;
      if (v21)
      {
        __asm { FCMP            H19, #0 }

        if (_NF)
        {
          v98 = 1;
        }

        else
        {
          v98 = 0;
        }

        if (_H19 > v23)
        {
          v99 = 1;
        }

        else
        {
          v99 = v98;
        }

        if ((v98 & (_H19 <= v23)) != 0)
        {
          v100 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v100) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v99)
        {
          _H19 = v100;
        }

        __asm { FCVT            S19, H19 }
      }

      v94 = &interpolate_rgbaf16[4 * v60];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          v61 = SBYTE1(v58) * v11;
          v62 = 8 * SBYTE2(v58);
          v63 = v46 + v62;
          if (v22 < v46 + v62)
          {
            v63 = v22;
          }

          if (v63 >= v47)
          {
            v64 = v63;
          }

          else
          {
            v64 = v47;
          }

          _H19 = *v64;
          v5.i32[0] = *(v64 + 2);
          if (v21)
          {
            __asm { FCMP            H20, #0 }

            if (_NF)
            {
              v67 = 1;
            }

            else
            {
              v67 = 0;
            }

            if (_H20 > v23)
            {
              v68 = 1;
            }

            else
            {
              v68 = v67;
            }

            if ((v67 & (_H20 <= v23)) != 0)
            {
              v69 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v69) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v68)
            {
              _H20 = v69;
            }

            __asm { FCVT            S20, H20 }

            v71 = v46 + v61;
            if (v22 >= v46 + v61)
            {
              v72 = v46 + v61;
            }

            else
            {
              v72 = v22;
            }

            if (v72 >= v47)
            {
              v73 = v72;
            }

            else
            {
              v73 = v47;
            }

            __asm { FCMP            H21, #0 }

            if (_NF)
            {
              v75 = 1;
            }

            else
            {
              v75 = 0;
            }

            if (_H21 > v23)
            {
              v76 = 1;
            }

            else
            {
              v76 = v75;
            }

            if ((v75 & (_H21 <= v23)) != 0)
            {
              v77 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v77) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v76)
            {
              _H21 = v77;
            }

            __asm { FCVT            S21, H21 }

            v79 = v71 + v62;
            if (v22 < v79)
            {
              v79 = v22;
            }

            if (v79 >= v47)
            {
              v80 = v79;
            }

            else
            {
              v80 = v47;
            }

            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              v82 = 1;
            }

            else
            {
              v82 = 0;
            }

            if (_H22 > v23)
            {
              v83 = 1;
            }

            else
            {
              v83 = v82;
            }

            if ((v82 & (_H22 <= v23)) != 0)
            {
              v84 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v84) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v83)
            {
              _H22 = v84;
            }

            __asm { FCVT            S22, H22 }
          }

          else
          {
            v107 = v46 + v61;
            if (v22 >= v46 + v61)
            {
              v108 = v46 + v61;
            }

            else
            {
              v108 = v22;
            }

            if (v108 >= v47)
            {
              v73 = v108;
            }

            else
            {
              v73 = v47;
            }

            v109 = v107 + v62;
            if (v22 < v109)
            {
              v109 = v22;
            }

            if (v109 >= v47)
            {
              v80 = v109;
            }

            else
            {
              v80 = v47;
            }

            _S21 = 1.0;
            _S20 = 1.0;
            _S22 = 1.0;
          }

          v7.i32[0] = *(v73 + 2);
          _H24 = *v73;
          _H25 = *v80;
          v8.i32[0] = *(v80 + 2);
          _H27 = interpolate_rgbaf16[4 * v60 + 3];
          __asm { FCVT            S27, H27 }

          _H28 = interpolate_rgbaf16[4 * ((v58 >> 28) & 3) + 3];
          __asm
          {
            FCVT            S28, H28
            FCVT            S16, H16
            FCVT            S19, H19
          }

          v116 = (_S16 - (_S16 * _D28.f32[0])) + (_S19 * _D28.f32[0]);
          __asm
          {
            FCVT            S19, H24
            FCVT            S24, H25
          }

          v119 = (_S19 - (_S19 * _D28.f32[0])) + (_S24 * _D28.f32[0]);
          v120 = vcvtq_f32_f16(_D17);
          v5 = vcvtq_f32_f16(v5).u64[0];
          v121 = vcvtq_f32_f16(v7).u64[0];
          v122 = vcvtq_f32_f16(v8).u64[0];
          __asm { FCVT            S7, H7 }

          v124 = (_S7 - (_S7 * _D28.f32[0])) + (_S20 * _D28.f32[0]);
          v125 = v124 > 1.0 || v124 < 0.0;
          if (v124 < 0.0 && v124 <= 1.0)
          {
            v126 = 0.0;
          }

          else
          {
            v126 = 1.0;
          }

          if (v125)
          {
            v124 = v126;
          }

          v127 = (_S21 - (_S21 * _D28.f32[0])) + (_S22 * _D28.f32[0]);
          v128 = v127 > 1.0 || v127 < 0.0;
          if (v127 < 0.0 && v127 <= 1.0)
          {
            v129 = 0.0;
          }

          else
          {
            v129 = 1.0;
          }

          if (v128)
          {
            v127 = v129;
          }

          _S16 = (v116 - (v116 * _D27.f32[0])) + (v119 * _D27.f32[0]);
          __asm { FCVT            H16, S16 }

          *v120.f32 = vmla_n_f32(vmls_lane_f32(*v120.f32, *v120.f32, _D28, 0), v5, _D28.f32[0]);
          v7 = vmla_n_f32(vmls_lane_f32(v121, v121, _D28, 0), v122, _D28.f32[0]);
          *v120.f32 = vmla_n_f32(vmls_lane_f32(*v120.f32, *v120.f32, _D27, 0), v7, _D27.f32[0]);
          _D17 = vcvt_f16_f32(v120);
          _S7 = (v124 - (v124 * _D27.f32[0])) + (v127 * _D27.f32[0]);
          v132 = _S7 > 1.0 || _S7 < 0.0;
          if (_S7 < 0.0 && _S7 <= 1.0)
          {
            v133 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v133) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H7, S7 }

          if (v132)
          {
            _H7 = v133;
          }
        }

        goto LABEL_181;
      }

      v86 = v46 + ((HIWORD(v58) << 56) >> 53);
      if (v22 < v86)
      {
        v86 = v22;
      }

      if (v86 >= v47)
      {
        v87 = v86;
      }

      else
      {
        v87 = v47;
      }

      _H20 = *v87;
      v5.i32[0] = *(v87 + 2);
      _S19 = 1.0;
      if (v21)
      {
        __asm { FCMP            H19, #0 }

        if (_NF)
        {
          v91 = 1;
        }

        else
        {
          v91 = 0;
        }

        if (_H19 > v23)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        if ((v91 & (_H19 <= v23)) != 0)
        {
          v93 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v93) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v92)
        {
          _H19 = v93;
        }

        __asm { FCVT            S19, H19 }
      }

      v94 = &interpolate_rgbaf16[4 * ((v58 >> 28) & 3)];
    }

    _D21.i16[0] = v94[3];
    __asm
    {
      FCVT            S21, H21
      FCVT            S16, H16
      FCVT            S20, H20
    }

    _S16 = (_S16 - (_S16 * _D21.f32[0])) + (_S20 * _D21.f32[0]);
    __asm { FCVT            H16, S16 }

    v104 = vcvtq_f32_f16(_D17);
    v5 = vcvtq_f32_f16(v5).u64[0];
    *v104.f32 = vmla_n_f32(vmls_lane_f32(*v104.f32, *v104.f32, _D21, 0), v5, _D21.f32[0]);
    _D17 = vcvt_f16_f32(v104);
    __asm { FCVT            S7, H7 }

    _S7 = (_S7 - (_S7 * _D21.f32[0])) + (_S19 * _D21.f32[0]);
    __asm { FCVT            H7, S7 }
  }

LABEL_181:
  __asm
  {
    FCVT            S16, H16
    FCVT            S18, H17
  }

  _H17 = _D17.i16[1];
  __asm { FCVT            S17, H17 }

  _S16 = ((_S18 * 0.59) + (_S16 * 0.3)) + (_S17 * 0.11);
  __asm { FCVT            H16, S16 }

  *(v18 + 4) = LOWORD(_S16);
  *(v18 + 6) = _H7;
  *++v19 = v34 >> 22;
  if (--v24)
  {
    v139 = (v18 + 10);
    a2 += v16;
    v140 = v160 - a2;
    a3 += v17;
    v141 = v15 - a3;
    while (1)
    {
      v18 = (v139 - 3);
      if ((v141 | v140 | (a3 - v14) | (a2 - v13)) < 0)
      {
        goto LABEL_47;
      }

      v142 = v20 + SHIDWORD(a3) * v11;
      v46 = v142 + 8 * (a2 >> 32);
      v47 = *(result + 32);
      if (v22 >= v46)
      {
        v143 = v142 + 8 * (a2 >> 32);
      }

      else
      {
        v143 = v22;
      }

      if (v143 >= v47)
      {
        v144 = v143;
      }

      else
      {
        v144 = *(result + 32);
      }

      if (v21)
      {
        __asm { FCMP            H7, #0 }

        if (_NF)
        {
          v145 = 1;
        }

        else
        {
          v145 = 0;
        }

        if (_H7 > v23)
        {
          v146 = 1;
        }

        else
        {
          v146 = v145;
        }

        if ((v145 & (_H7 <= v23)) != 0)
        {
          v147 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v147) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v146)
        {
          _H7 = v147;
        }
      }

      else
      {
        LOWORD(_H7) = COERCE_UNSIGNED_INT(1.0);
      }

      _H16 = *v144;
      _D17.i32[0] = *(v144 + 2);
      if (v12)
      {
        v58 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v148 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          v154 = *(result + 264);
          v155 = *v154;
          if (v24 + 1 != a4 && v24 != 1 && v157 != 1 && v155 == 3 && v148 < 3)
          {
            v58 |= 3u;
          }

          v34 = -1;
          if (v155 < v148)
          {
            *v154 = v148;
          }

          goto LABEL_52;
        }
      }

      __asm
      {
        FCVT            S16, H16
        FCVT            S18, H17
      }

      _H17 = _D17.i16[1];
      __asm { FCVT            S17, H17 }

      _S16 = ((_S18 * 0.59) + (_S16 * 0.3)) + (_S17 * 0.11);
      __asm { FCVT            H16, S16 }

      *(v139 - 1) = *&_S16;
      *v139 = _H7;
      *++v19 = -1;
      v139 += 2;
      a2 += v16;
      v140 -= v16;
      a3 += v17;
      v141 -= v17;
      if (!--v24)
      {
        return result;
      }
    }
  }

  return result;
}

_DWORD *Wf16_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  _S10 = *v9;
  v10 = v9[1];
  if (!a2 || a3 <= 3)
  {
    a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL);
    if (!a2)
    {
      return a2;
    }
  }

  if (_S10 <= a6)
  {
    _S0 = a6;
  }

  else
  {
    _S0 = _S10;
  }

  if (v10 < a6)
  {
    _S0 = v10;
  }

  if (a5)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  switch(v13)
  {
    case 1:
      v14 = *a5;
      goto LABEL_18;
    case 4:
      v14 = (v10 - (((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]))) - a5[3];
      goto LABEL_18;
    case 3:
      v14 = ((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]);
LABEL_18:
      _S10 = _S0 * v14;
      break;
  }

  *a2 = xmmword_18439CA20;
  a2[6] = 0;
  *(a2 + 2) = 1;
  __asm { FCVT            H1, S10 }

  *(a2 + 24) = _H1;
  __asm { FCVT            H0, S0 }

  *(a2 + 25) = _H0;
  v21 = a2 + 50;
  if (!_NF)
  {
    v21 = 0;
  }

  *(a2 + 4) = a2 + 12;
  *(a2 + 5) = v21;
  return a2;
}

uint64_t Wf16_mark_inner(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v1013 = *MEMORY[0x1E69E9840];
  v8 = *(v3 + 96);
  v9 = *(v3 + 48);
  v10 = *(v2 + 16 * *v3 + 8 * (v8 == 0) + 4 * (v9 == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v3;
  v13 = *(v3 + 4);
  v14 = v13 - 1;
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v3 + 8);
  v16 = (v15 - 1);
  if (v15 < 1)
  {
    return 0;
  }

  v17 = *(v3 + 136);
  if ((*v3 & 0xFF0000) != 0x50000 && v17)
  {
    v18 = *(v3 + 128);
    if ((v18 | 8) == 8)
    {
      if ((*v3 & 0xFF00) == 0x400)
      {
        Wf16_mark_constmask(v3, v10, _Q0, v5, v6);
      }

      else
      {
        Wf16_mark_pixelmask(v3, v10, _Q0, v5, v6);
      }

      return 1;
    }

    v26 = *(v3 + 112);
    v27 = *(v3 + 116);
    v28 = v3;
    v29 = (v26 + 15) & 0xFFFFFFF0;
    v30 = v29 * v27;
    if (v30 <= 4096)
    {
      v32 = v1012;
    }

    else
    {
      v31 = malloc_type_malloc(v30, 0x100004077774924uLL);
      if (!v31)
      {
        return 1;
      }

      v32 = v31;
      v17 = *(v28 + 136);
      v18 = *(v28 + 128);
    }

    CGSConvertBitsToMask(v17, *(v28 + 124), v32, v29, v26, v27, v18);
    v54 = *(v28 + 112);
    v1008 = *(v28 + 96);
    v1009 = v54;
    v55 = *(v28 + 144);
    v1010 = *(v28 + 128);
    v1011 = v55;
    v56 = *(v28 + 48);
    v1004 = *(v28 + 32);
    v1005 = v56;
    v57 = *(v28 + 80);
    v1006 = *(v28 + 64);
    v1007 = v57;
    v58 = *v28;
    v59 = *(v28 + 16);
    *v1002 = *v28;
    v1003 = v59;
    HIDWORD(v1009) = (v26 + 15) & 0xFFFFFFF0;
    *(&v1010 + 1) = v32;
    if (BYTE1(v1002[0]) << 8 == 1024)
    {
      Wf16_mark_constmask(v1002, v10, v58, *&v59, v53);
    }

    else
    {
      Wf16_mark_pixelmask(v1002, v10, v58, *&v59, v53);
    }

    if (v32 != v1012)
    {
LABEL_66:
      v77 = v32;
LABEL_977:
      free(v77);
      return 1;
    }

    return 1;
  }

  v19 = *v3 & 0xFF00;
  v968 = *(v2 + 16 * *v3 + 8 * (v8 == 0) + 4 * (v9 == 0));
  v966 = v3;
  if (v19 == 1024)
  {
    v1012[0] = *(v3 + 4);
    v1002[0] = v15;
    if (v8)
    {
      _H10 = *v8;
    }

    else
    {
      LOWORD(_H10) = COERCE_UNSIGNED_INT(1.0);
    }

    v33 = *(v3 + 40);
    __asm { FCVT            S8, H10 }

    _Q0.n128_u32[0] = 1.0;
    v39 = *(v3 + 28) >> 1;
    v40 = *(v3 + 12);
    v41 = *(v3 + 16);
    if (v9)
    {
      v999 = *(v3 + 32) >> 1;
      v997 = v9 + 2 * v999 * v41 + 2 * v40;
      v991 = 1;
    }

    else
    {
      v997 = 0;
      v999 = 0;
      v991 = 0;
    }

    LOWORD(_S9) = **(v3 + 88);
    *v7.i32 = 1.0 - _S8;
    v46 = v33 + 2 * v41 * v39 + 2 * v40;
    v995 = v7;
    v990 = *(v3 + 28) >> 1;
    v993 = v46;
    if (v17)
    {
      shape_enum_clip_alloc(v2, v3, v17, 1, 1, 1, *(v3 + 104), *(v3 + 108), v13, v15);
      v32 = v47;
      v48 = v997;
      v49 = v999;
      if (v47)
      {
        goto LABEL_1362;
      }

      return 1;
    }

    v32 = 0;
    if (v9)
    {
      v50 = v13;
    }

    else
    {
      v50 = 0;
    }

    v48 = v997;
    v49 = v999 - v50;
    v51 = (v33 + 2 * v41 * v39 + 2 * v40);
    v52 = v13;
LABEL_1006:
    v46 = v39 - v52;
    v691 = v13;
    switch(v10)
    {
      case 0:
        v692 = v39;
        v693 = v46 + v13;
        v694 = v1002[0];
        v695 = v13;
        v696 = v1002[0] - 1;
        v697 = v51 + 2 * ((v693 * v696) & (v693 >> 63));
        if (v693 < 0)
        {
          v693 = -v693;
        }

        CGBlt_fillBytes(2 * v695, v1002[0], 0, v697, 2 * v693);
        if (v9)
        {
          v698 = v49 + v695;
          v48 += 2 * ((v698 * v696) & (v698 >> 63));
          if (v698 >= 0)
          {
            v49 += v695;
          }

          else
          {
            v49 = -v698;
          }

          CGBlt_fillBytes(2 * v695, v694, 0, v48, 2 * v49);
        }

        goto LABEL_1192;
      case 1:
        v692 = v39;
        v840 = v46 + v13;
        if (v840 < 0)
        {
          v51 = (v51 + 2 * v840 * (v1002[0] - 1));
          v840 = -v840;
        }

        v841 = 0;
        v842 = *(v966 + 88);
        if (v842)
        {
          v841 = *v842 | (*v842 << 16);
        }

        v843 = v1002[0];
        CGBlt_fillBytes(2 * v13, v1002[0], v841, v51, 2 * v840);
        if (v9)
        {
          v844 = &_W_float16_alpha;
          if (*(v966 + 96))
          {
            v844 = *(v966 + 96);
          }

          v48 += 2 * (((v49 + v13) * (v843 - 1)) & ((v49 + v13) >> 63));
          if ((v49 + v13) >= 0)
          {
            v49 += v13;
          }

          else
          {
            v49 = -(v49 + v13);
          }

          CGBlt_fillBytes(2 * v13, v843, *v844 | (*v844 << 16), v48, 2 * v49);
        }

        v10 = v968;
LABEL_1192:
        v39 = v692;
        goto LABEL_1359;
      case 2:
        v800 = v1002[0];
        v801 = v13 >> 2;
        __asm { FCVT            S0, H9 }

        v802 = 8 * v991;
        v803 = 2 * v991;
        if (v9)
        {
          v804 = v801 + 1;
          do
          {
            if (v13 < 4)
            {
              v823 = v13;
            }

            else
            {
              v805 = v804;
              do
              {
                _H1 = v51->i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                v51->i16[0] = LOWORD(_S1);
                LOWORD(_S1) = *v48;
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                *v48 = LOWORD(_S1);
                LOWORD(_S1) = v51->i16[1];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                v51->i16[1] = LOWORD(_S1);
                LOWORD(_S1) = *(v48 + 2);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                *(v48 + 2) = LOWORD(_S1);
                LOWORD(_S1) = v51->i16[2];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                v51->i16[2] = LOWORD(_S1);
                LOWORD(_S1) = *(v48 + 4);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                *(v48 + 4) = LOWORD(_S1);
                LOWORD(_S1) = v51->i16[3];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                v51->i16[3] = LOWORD(_S1);
                LOWORD(_S1) = *(v48 + 6);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                *(v48 + 6) = LOWORD(_S1);
                ++v51;
                --v805;
                v48 += v802;
              }

              while (v805 > 1);
              v823 = v13 & 3;
            }

            if (v823 >= 1)
            {
              v824 = v823 + 1;
              do
              {
                _H1 = v51->i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                v51->i16[0] = LOWORD(_S1);
                v51 = (v51 + 2);
                LOWORD(_S1) = *v48;
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v7.i32);
                __asm { FCVT            H1, S1 }

                *v48 = LOWORD(_S1);
                v48 += v803;
                --v824;
              }

              while (v824 > 1);
            }

            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v800;
          }

          while (v800);
        }

        else
        {
          v957 = vdupq_lane_s32(v7, 0);
          v958 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
          v959 = v801 + 1;
          do
          {
            if (v13 < 4)
            {
              v961 = v13;
            }

            else
            {
              v960 = v959;
              do
              {
                *v51 = vcvt_f16_f32(vmlaq_f32(v958, v957, vcvtq_f32_f16(*v51)));
                ++v51;
                --v960;
                v48 += v802;
              }

              while (v960 > 1);
              v961 = v13 & 3;
            }

            if (v961 >= 1)
            {
              v962 = v961 + 1;
              do
              {
                _H3 = v51->i16[0];
                __asm { FCVT            S3, H3 }

                _S3 = _Q0.n128_f32[0] + (_S3 * *v7.i32);
                __asm { FCVT            H3, S3 }

                v51->i16[0] = LOWORD(_S3);
                v51 = (v51 + 2);
                v48 += v803;
                --v962;
              }

              while (v962 > 1);
            }

            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v800;
          }

          while (v800);
        }

        goto LABEL_1358;
      case 3:
        v833 = v1002[0];
        do
        {
          v834 = v13;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              if (_H2 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
              }

              else
              {
                *v51->i16 = *&_S9 * _H2;
                *v48 = _H10 * _H2;
              }
            }

            else
            {
              *v48 = 0;
              v51->i16[0] = 0;
            }

            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v834;
          }

          while (v834);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v833;
        }

        while (v833);
        goto LABEL_1358;
      case 4:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 4 }

        v752 = v1002[0];
        do
        {
          v753 = v13;
          do
          {
            _H3 = *v48;
            __asm { FCVT            S3, H3 }

            v756 = 1.0 - _S3;
            if (v756 <= 0.0)
            {
              *v48 = 0;
              v51->i16[0] = 0;
            }

            else if (v756 >= 1.0)
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }

            else
            {
              _S4 = v756 * _S0;
              __asm { FCVT            H4, S4 }

              v51->i16[0] = LOWORD(_S4);
              _S3 = v756 * _S8;
              __asm { FCVT            H3, S3 }

              *v48 = LOWORD(_S3);
            }

            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v753;
          }

          while (v753);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v752;
        }

        while (v752);
        goto LABEL_1358;
      case 5:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 5 }

        v860 = v1002[0];
        do
        {
          v861 = v13;
          do
          {
            _H1 = *v48;
            __asm { FCVT            S1, H1 }

            _H2 = v51->i16[0];
            __asm { FCVT            S2, H2 }

            _S2 = (*v7.i32 * _S2) + (_S0 * _S1);
            __asm { FCVT            H2, S2 }

            v51->i16[0] = LOWORD(_S2);
            v51 = (v51 + 2);
            _S1 = (*v7.i32 * _S1) + (_S8 * _S1);
            __asm { FCVT            H1, S1 }

            *v48 = LOWORD(_S1);
            v48 += 2 * v991;
            --v861;
          }

          while (v861);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v860;
        }

        while (v860);
        goto LABEL_1358;
      case 6:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 6 }

        v883 = v1002[0];
        while (1)
        {
          v884 = v13;
          do
          {
            _H2 = *v48;
            __asm { FCVT            S2, H2 }

            v887 = 1.0 - _S2;
            if ((1.0 - _S2) >= 1.0)
            {
              v51->i16[0] = _S9;
              _H2 = _H10;
            }

            else
            {
              if (v887 <= 0.0)
              {
                goto LABEL_1263;
              }

              _H4 = v51->i16[0];
              __asm { FCVT            S4, H4 }

              _S4 = _S4 + (_S0 * v887);
              __asm { FCVT            H4, S4 }

              v51->i16[0] = LOWORD(_S4);
              _S2 = _S2 + (_S8 * v887);
              __asm { FCVT            H2, S2 }
            }

            *v48 = _H2;
LABEL_1263:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v884;
          }

          while (v884);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v883)
          {
            goto LABEL_1358;
          }
        }

      case 7:
        v836 = v1002[0];
        v837 = 2 * v991;
        if (v9)
        {
          do
          {
            v838 = v13;
            do
            {
              *v51->i16 = _H10 * *v51->i16;
              v51 = (v51 + 2);
              *v48 = _H10 * *v48;
              v48 += v837;
              --v838;
            }

            while (v838);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v836;
          }

          while (v836);
        }

        else
        {
          do
          {
            v839 = v13;
            do
            {
              *v51->i16 = _H10 * *v51->i16;
              v51 = (v51 + 2);
              v48 += v837;
              --v839;
            }

            while (v839);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v836;
          }

          while (v836);
        }

        goto LABEL_1358;
      case 8:
        v905 = v1002[0];
        v906 = 2 * v991;
        if (v9)
        {
          do
          {
            v907 = v13;
            do
            {
              _H0 = v51->i16[0];
              __asm { FCVT            S0, H0 }

              _S0 = *v7.i32 * _S0;
              __asm { FCVT            H0, S0 }

              v51->i16[0] = LOWORD(_S0);
              v51 = (v51 + 2);
              LOWORD(_S0) = *v48;
              __asm { FCVT            S0, H0 }

              _S0 = *v7.i32 * _S0;
              __asm { FCVT            H0, S0 }

              *v48 = LOWORD(_S0);
              v48 += v906;
              --v907;
            }

            while (v907);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v905;
          }

          while (v905);
        }

        else
        {
          do
          {
            v913 = v13;
            do
            {
              _H0 = v51->i16[0];
              __asm { FCVT            S0, H0 }

              _S0 = *v7.i32 * _S0;
              __asm { FCVT            H0, S0 }

              v51->i16[0] = LOWORD(_S0);
              v51 = (v51 + 2);
              v48 += v906;
              --v913;
            }

            while (v913);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v905;
          }

          while (v905);
        }

        goto LABEL_1358;
      case 9:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 9 }

        v768 = v1002[0];
        do
        {
          v769 = v13;
          do
          {
            _H2 = *v48;
            __asm { FCVT            S2, H2 }

            _H4 = v51->i16[0];
            __asm { FCVT            S4, H4 }

            _S4 = (_S8 * _S4) + (_S0 * (1.0 - _S2));
            __asm { FCVT            H4, S4 }

            v51->i16[0] = LOWORD(_S4);
            v51 = (v51 + 2);
            _S2 = (_S8 * _S2) + (_S8 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v48 = LOWORD(_S2);
            v48 += 2 * v991;
            --v769;
          }

          while (v769);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v768;
        }

        while (v768);
        goto LABEL_1358;
      case 10:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 10 }

        v897 = v1002[0];
        do
        {
          v898 = v13;
          do
          {
            _H2 = *v48;
            __asm { FCVT            S2, H2 }

            _H4 = v51->i16[0];
            __asm { FCVT            S4, H4 }

            _S4 = (*v7.i32 * _S4) + (_S0 * (1.0 - _S2));
            __asm { FCVT            H4, S4 }

            v51->i16[0] = LOWORD(_S4);
            v51 = (v51 + 2);
            _S2 = (*v7.i32 * _S2) + (_S8 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v48 = LOWORD(_S2);
            v48 += 2 * v991;
            --v898;
          }

          while (v898);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v897;
        }

        while (v897);
        goto LABEL_1358;
      case 11:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 11 }

        v735 = _S8 - _S0;
        v736 = v1002[0];
        v737 = 2 * v991;
        if (v9)
        {
          do
          {
            v738 = v13;
            do
            {
              _H2 = *v48;
              __asm { FCVT            S2, H2 }

              _S3 = _S8 + _S2;
              _H4 = v51->i16[0];
              __asm { FCVT            S4, H4 }

              v744 = v735 + (_S2 - _S4);
              if (_S3 > 1.0)
              {
                _S3 = 1.0;
              }

              __asm { FCVT            H4, S3 }

              *v48 = _H4;
              _S2 = _S3 - v744;
              __asm { FCVT            H2, S2 }

              v51->i16[0] = LOWORD(_S2);
              v51 = (v51 + 2);
              v48 += v737;
              --v738;
            }

            while (v738);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v736;
          }

          while (v736);
        }

        else
        {
          do
          {
            v747 = v13;
            do
            {
              _H2 = v51->i16[0];
              __asm { FCVT            S2, H2 }

              _S2 = 1.0 - (v735 + (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              v51->i16[0] = LOWORD(_S2);
              v51 = (v51 + 2);
              v48 += v737;
              --v747;
            }

            while (v747);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v736;
          }

          while (v736);
        }

        goto LABEL_1358;
      case 12:
        v759 = v1002[0];
        v760 = 2 * v991;
        if (v9)
        {
          do
          {
            v761 = v13;
            do
            {
              _H1 = *v48;
              __asm { FCVT            S1, H1 }

              _S1 = _S8 + _S1;
              if (_S1 > 1.0)
              {
                _S1 = 1.0;
              }

              *v51->i16 = *&_S9 + *v51->i16;
              v51 = (v51 + 2);
              __asm { FCVT            H1, S1 }

              *v48 = _H1;
              v48 += v760;
              --v761;
            }

            while (v761);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v759;
          }

          while (v759);
        }

        else
        {
          do
          {
            v766 = v13;
            do
            {
              *v51->i16 = *&_S9 + *v51->i16;
              v51 = (v51 + 2);
              v48 += v760;
              --v766;
            }

            while (v766);
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v759;
          }

          while (v759);
        }

        goto LABEL_1358;
      case 13:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 13 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v872 = v1002[0];
        while (1)
        {
          v873 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1253;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v51->i16[0];
            __asm { FCVT            S4, H4 }

            v878 = _S0 * _S4;
            _S4 = (_S0 * _S4) + (_S4 * *v7.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v878;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v9)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v51->i16[0] = _H4;
              *v48 = LOWORD(_S3);
            }

            else
            {
              v51->i16[0] = _H4;
            }

LABEL_1253:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v873;
          }

          while (v873);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v872)
          {
            goto LABEL_1358;
          }
        }

      case 14:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 14 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v723 = v1002[0];
        do
        {
          v724 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H2, #0 }

              if (!_ZF & _CF)
              {
                __asm { FCVT            S2, H2 }

                _H3 = v51->i16[0];
                __asm { FCVT            S3, H3 }

                _S3 = _S3 + (_S0 * (1.0 - _S3));
                __asm { FCVT            H3, S3 }

                _S2 = (_S8 + _S2) - (_S2 * _S8);
                __asm { FCVT            H2, S2 }

                v51->i16[0] = LOWORD(_S3);
                *v48 = LOWORD(_S2);
              }

              else
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
              }
            }

            else
            {
              _H2 = v51->i16[0];
              __asm { FCVT            S2, H2 }

              _S2 = _S2 + (_S0 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              v51->i16[0] = LOWORD(_S2);
            }

            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v724;
          }

          while (v724);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          --v723;
        }

        while (v723);
        goto LABEL_1358;
      case 15:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 15 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v830 = v1002[0];
        while (1)
        {
          if (v9)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v51->i16[0];
              v6.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAoverlayPDA(_Q0, _S1, v6, _S8);
              v51->i16[0] = _Q0.n128_u16[0];
              *v48 = v832;
            }

            else
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v51->i16[0];
            v6.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAoverlayPDA(_Q0, 1.0, v6, _S8);
            v51->i16[0] = _Q0.n128_u16[0];
          }

          v51 = (v51 + 2);
          v48 += 2 * v991;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v830;
            LODWORD(v13) = v691;
            if (!v830)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 16:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 16 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v712 = v1002[0];
        while (1)
        {
          v713 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1050;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v51->i16[0];
            __asm { FCVT            S4, H4 }

            v718 = _S8 * _S4;
            if ((_S3 * _S0) < (_S8 * _S4))
            {
              v718 = _S3 * _S0;
            }

            _S4 = v718 + (_S4 * *v7.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v718;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v9)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v51->i16[0] = _H4;
              *v48 = LOWORD(_S3);
            }

            else
            {
              v51->i16[0] = _H4;
            }

LABEL_1050:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v713;
          }

          while (v713);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v712)
          {
            goto LABEL_1358;
          }
        }

      case 17:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 17 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v846 = v1002[0];
        while (1)
        {
          v847 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1210;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v51->i16[0];
            __asm { FCVT            S4, H4 }

            v852 = _S8 * _S4;
            if ((_S3 * _S0) > (_S8 * _S4))
            {
              v852 = _S3 * _S0;
            }

            _S4 = v852 + (_S4 * *v7.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v852;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v9)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v51->i16[0] = _H4;
              *v48 = LOWORD(_S3);
            }

            else
            {
              v51->i16[0] = _H4;
            }

LABEL_1210:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v847;
          }

          while (v847);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v846)
          {
            goto LABEL_1358;
          }
        }

      case 18:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 18 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v893 = v1002[0];
        while (1)
        {
          if (v9)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v51->i16[0];
              v6.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAcolordodgePDA(_Q0, _S1, v6, _S8);
              v51->i16[0] = _Q0.n128_u16[0];
              *v48 = v895;
            }

            else
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v51->i16[0];
            v6.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAcolordodgePDA(_Q0, 1.0, v6, _S8);
            v51->i16[0] = _Q0.n128_u16[0];
          }

          v51 = (v51 + 2);
          v48 += 2 * v991;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v893;
            LODWORD(v13) = v691;
            if (!v893)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 19:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 19 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v932 = v1002[0];
        while (1)
        {
          if (v9)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v51->i16[0];
              v6.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAcolorburnPDA(_Q0, _S1, v6, _S8);
              v51->i16[0] = _Q0.n128_u16[0];
              *v48 = v934;
            }

            else
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v51->i16[0];
            v6.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAcolorburnPDA(_Q0, 1.0, v6, _S8);
            v51->i16[0] = _Q0.n128_u16[0];
          }

          v51 = (v51 + 2);
          v48 += 2 * v991;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v932;
            LODWORD(v13) = v691;
            if (!v932)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 20:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 20 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v856 = v1002[0];
        while (1)
        {
          if (v9)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v51->i16[0];
              v6.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAsoftlightPDA(_Q0, _S1, v6, _S8);
              v51->i16[0] = _Q0.n128_u16[0];
              *v48 = v858;
            }

            else
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v51->i16[0];
            v6.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAsoftlightPDA(_Q0, 1.0, v6, _S8);
            v51->i16[0] = _Q0.n128_u16[0];
          }

          v51 = (v51 + 2);
          v48 += 2 * v991;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v856;
            LODWORD(v13) = v691;
            if (!v856)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 21:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 21 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v868 = v1002[0];
        while (1)
        {
          if (v9)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v51->i16[0];
              v6.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAhardlightPDA(_Q0, _S1, v6, _S8);
              v51->i16[0] = _Q0.n128_u16[0];
              *v48 = v870;
            }

            else
            {
              v51->i16[0] = _S9;
              *v48 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v51->i16[0];
            v6.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAhardlightPDA(_Q0, 1.0, v6, _S8);
            v51->i16[0] = _Q0.n128_u16[0];
          }

          v51 = (v51 + 2);
          v48 += 2 * v991;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            v51 = (v51 + 2 * v46);
            v48 += 2 * v49;
            --v868;
            LODWORD(v13) = v691;
            if (!v868)
            {
              break;
            }
          }
        }

LABEL_1315:
        v1002[0] = 0;
        v10 = v968;
        v39 = v990;
        goto LABEL_1359;
      case 22:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 22 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v918 = v1002[0];
        while (1)
        {
          v919 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H1, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1303;
              }

              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = v51->i16[0];
            __asm { FCVT            S2, H2 }

            v924 = _S0 + _S2;
            v925 = _S8 * _S2;
            v926 = v924 - v925;
            v927 = v925 - (_S1 * _S0);
            v928 = v926 - (_S1 * _S0);
            if (v927 < 0.0)
            {
              v927 = -v927;
            }

            _S2 = v928 + v927;
            __asm { FCVT            H2, S2 }

            if (v9)
            {
              _S1 = (_S1 + _S8) - (_S1 * _S8);
              __asm { FCVT            H1, S1 }

              v51->i16[0] = _H2;
              *v48 = LOWORD(_S1);
            }

            else
            {
              v51->i16[0] = _H2;
            }

LABEL_1303:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v919;
          }

          while (v919);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v918)
          {
            goto LABEL_1358;
          }
        }

      case 23:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 23 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v936 = v1002[0];
        while (1)
        {
          v937 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H2, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1327;
              }

              __asm { FCVT            S2, H2 }
            }

            else
            {
              _S2 = 1.0;
            }

            _H3 = v51->i16[0];
            __asm { FCVT            S3, H3 }

            _S3 = (_S0 + _S3) + ((_S0 * _S3) * -2.0);
            __asm { FCVT            H3, S3 }

            if (v9)
            {
              _S2 = (_S2 + _S8) - (_S2 * _S8);
              __asm { FCVT            H2, S2 }

              v51->i16[0] = _H3;
              *v48 = LOWORD(_S2);
            }

            else
            {
              v51->i16[0] = _H3;
            }

LABEL_1327:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v937;
          }

          while (v937);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v936)
          {
            goto LABEL_1358;
          }
        }

      case 24:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 24 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v789 = v1002[0];
        while (1)
        {
          v790 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1136;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v51->i16[0];
            __asm { FCVT            S5, H5 }

            v795 = _S5 - (_S8 * _S5);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v796 = 0.0;
            }

            else
            {
              _S5 = _S8 * _S5;
              v796 = v795;
            }

            if (_S4 != 1.0)
            {
              v796 = (v796 + _S0) - (_S4 * _S0);
            }

            _S5 = _S5 + v796;
            __asm { FCVT            H5, S5 }

            if (v9)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v51->i16[0] = _H5;
              *v48 = LOWORD(_S4);
            }

            else
            {
              v51->i16[0] = _H5;
            }

LABEL_1136:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v790;
          }

          while (v790);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v789)
          {
            goto LABEL_1358;
          }
        }

      case 25:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 25 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v777 = v1002[0];
        while (1)
        {
          v778 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1117;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v51->i16[0];
            __asm { FCVT            S5, H5 }

            v783 = _S5 - (_S8 * _S5);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v784 = 0.0;
            }

            else
            {
              _S5 = _S8 * _S5;
              v784 = v783;
            }

            if (_S4 != 1.0)
            {
              v784 = (v784 + _S0) - (_S4 * _S0);
            }

            _S5 = _S5 + v784;
            __asm { FCVT            H5, S5 }

            if (v9)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v51->i16[0] = _H5;
              *v48 = LOWORD(_S4);
            }

            else
            {
              v51->i16[0] = _H5;
            }

LABEL_1117:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v778;
          }

          while (v778);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v777)
          {
            goto LABEL_1358;
          }
        }

      case 26:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 26 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v946 = v1002[0];
        while (1)
        {
          v947 = v13;
          do
          {
            if (v9)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v51->i16[0] = _S9;
                *v48 = _H10;
                goto LABEL_1345;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v51->i16[0];
            __asm { FCVT            S5, H5 }

            v952 = _S0 - (_S4 * _S0);
            if (_S4 == 1.0)
            {
              v952 = 0.0;
            }

            v953 = (v952 + _S5) - (_S8 * _S5);
            if (_H10 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S5 = _S8 * _S5;
              v952 = v953;
            }

            _S5 = _S5 + v952;
            __asm { FCVT            H5, S5 }

            if (v9)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v51->i16[0] = _H5;
              *v48 = LOWORD(_S4);
            }

            else
            {
              v51->i16[0] = _H5;
            }

LABEL_1345:
            v51 = (v51 + 2);
            v48 += 2 * v991;
            --v947;
          }

          while (v947);
          v51 = (v51 + 2 * v46);
          v48 += 2 * v49;
          if (!--v946)
          {
            goto LABEL_1358;
          }
        }

      case 27:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 27 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v700 = v1002[0];
        break;
      default:
        goto LABEL_1360;
    }

LABEL_1016:
    v701 = v13;
    while (v9)
    {
      __asm { FCMP            H4, #0 }

      if (!_ZF & _CF)
      {
        __asm { FCVT            S4, H4 }

LABEL_1022:
        _H5 = v51->i16[0];
        __asm { FCVT            S5, H5 }

        v706 = _S5 - (_S8 * _S5);
        if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v706 = 0.0;
        }

        v707 = _S4 * _S0;
        if (_S4 == 1.0)
        {
          v707 = _S0;
        }

        else
        {
          v706 = (v706 + _S0) - (_S4 * _S0);
        }

        _S5 = v707 + v706;
        __asm { FCVT            H5, S5 }

        if (v9)
        {
          _S4 = (_S4 + _S8) - (_S4 * _S8);
          __asm { FCVT            H4, S4 }

          v51->i16[0] = _H5;
          *v48 = LOWORD(_S4);
        }

        else
        {
          v51->i16[0] = _H5;
        }

        goto LABEL_1030;
      }

      v51->i16[0] = _S9;
      *v48 = _H10;
LABEL_1030:
      v51 = (v51 + 2);
      v48 += 2 * v991;
      if (!--v701)
      {
        v51 = (v51 + 2 * v46);
        v48 += 2 * v49;
        if (!--v700)
        {
LABEL_1358:
          v1002[0] = 0;
LABEL_1359:
          v46 = v993;
LABEL_1360:
          if (!v32)
          {
            return 1;
          }

          v1001 = 0;
LABEL_1362:
          if (!shape_enum_clip_next(v32, &v1001 + 1, &v1001, v1012, v1002))
          {
            goto LABEL_66;
          }

          v51 = (v46 + 2 * v39 * v1001 + 2 * SHIDWORD(v1001));
          v52 = v1012[0];
          if (v9)
          {
            v48 = v997 + 2 * v999 * v1001 + 2 * SHIDWORD(v1001);
            v49 = v999 - v1012[0];
          }

          LODWORD(v13) = v1012[0];
          v7 = v995;
          goto LABEL_1006;
        }

        goto LABEL_1016;
      }
    }

    _S4 = 1.0;
    goto LABEL_1022;
  }

  v1012[0] = *(v3 + 4);
  v1002[0] = v15;
  v21 = *(v3 + 88);
  v22 = *(v3 + 12);
  v23 = *(v3 + 16);
  v24 = *(v3 + 28) >> 1;
  if (v9)
  {
    v973 = *(v3 + 32) >> 1;
    v974 = v9 + 2 * v973 * v23 + 2 * v22;
    v25 = 0xFFFFFFFFLL;
  }

  else
  {
    v973 = 0;
    v974 = 0;
    v25 = 0;
  }

  v972 = *(v3 + 40) + 2 * v23 * v24 + 2 * v22;
  v42 = *(v3 + 56);
  v43 = *(v3 + 60);
  v992 = *(v3 + 76) >> 1;
  if (v19 == 256)
  {
    if (v8)
    {
      v989 = *(v3 + 80) >> 1;
      v8 += 2 * v989 * v43 + 2 * v42;
      v44 = 0xFFFFFFFFLL;
    }

    else
    {
      v989 = 0;
      v44 = 0;
    }

    v21 += v43 * v992 + v42;
    if (v992 == v24)
    {
      v60 = (v972 - v21) >> 1;
      if (v60 >= 1)
      {
        if (v60 <= v13)
        {
          v972 += 2 * v14;
          v21 += v14;
          v974 += 2 * (v25 & v14);
          v62 = -1;
          v992 = *(v3 + 28) >> 1;
          v8 += 2 * (v44 & v14);
          goto LABEL_49;
        }

        v61 = &v21[v24 * v16];
        if (v972 <= &v61[v13 - 1])
        {
          v972 += 2 * v24 * v16;
          v24 = -v24;
          v76 = v974 + 2 * v973 * v16;
          v973 = -v973;
          v974 = v76;
          v8 += 2 * v989 * v16;
          v25 &= 1u;
          v989 = -v989;
          v992 = v24;
          v44 &= 1u;
          v62 = 1;
          v21 = v61;
          goto LABEL_49;
        }
      }
    }

    v25 &= 1u;
    v44 &= 1u;
    v62 = 1;
LABEL_49:
    v969 = *(v3 + 56);
    v970 = *(v3 + 60);
    if (v17)
    {
      v998 = v44;
      v1000 = v25;
      v986 = 0;
      v988 = 0;
      v63 = -1;
      v45 = v992;
      v976 = v989;
      goto LABEL_54;
    }

    v67 = v62 * v13;
    v996 = v973 - v25 * v13;
    v63 = -1;
    v68 = v989;
    v975 = v62;
    v976 = v989;
    v69 = v992;
    v45 = v992;
LABEL_62:
    v977 = 0;
    v978 = v21;
    v73 = 0;
    v992 = v69 - v67;
    v988 = 0;
    v989 = v68 - v44 * v13;
    v74 = v8;
    v971 = v8;
    v66 = v974;
    v75 = v972;
    goto LABEL_67;
  }

  v45 = *(v3 + 64);
  v976 = *(v3 + 68);
  if (v8)
  {
    v989 = *(v3 + 80) >> 1;
    v44 = 1;
  }

  else
  {
    v989 = 0;
    v44 = 0;
  }

  v988 = &v21[v992 * v976];
  v25 &= 1u;
  if (v17)
  {
    v969 = *(v3 + 56);
    v970 = *(v3 + 60);
    v998 = v44;
    v1000 = v25;
    v62 = 1;
    v986 = *(v3 + 88);
    v63 = v986;
LABEL_54:
    v975 = v62;
    v979 = v24;
    shape_enum_clip_alloc(v2, v3, v17, v62, v24, 1, *(v3 + 104), *(v3 + 108), v13, v15);
    v65 = v64;
    v987 = v8;
    v971 = v8;
    v66 = v974;
    v996 = v973;
    if (v64)
    {
      goto LABEL_955;
    }

    return 1;
  }

  v996 = v973 - (v25 * v13);
  if (!v21)
  {
    v969 = *(v3 + 56);
    v970 = *(v3 + 60);
    v63 = 0;
    v975 = 1;
    v67 = v13;
    v68 = v989;
    v69 = *(v3 + 76) >> 1;
    goto LABEL_62;
  }

  v70 = v43 % v976;
  v970 = v43 % v976;
  v978 = *(v3 + 88);
  v71 = &v21[v992 * v70];
  v72 = v42 % v45;
  v73 = &v71[v72];
  v63 = &v71[v45];
  v969 = v72;
  if (v8)
  {
    v977 = 0;
    v971 = v8;
    v74 = &v8[2 * v989 * v70 + 2 * v72];
    v975 = 1;
    v44 = 1;
    v8 = v74;
  }

  else
  {
    v971 = 0;
    v977 = 0;
    v74 = 0;
    v975 = 1;
  }

  v21 = &v71[v72];
  v66 = v974;
  v75 = v972;
  v67 = v13;
LABEL_67:
  v998 = v44;
  v1000 = v25;
  v979 = v24;
  v994 = v24 - v67;
  switch(v10)
  {
    case 0:
      v986 = v73;
      v987 = v74;
      v980 = v63;
      v78 = v994 - v13;
      v79 = &v75[-v13 + 1];
      if (v975 >= 0)
      {
        v79 = v75;
        v78 = v994 + v13;
      }

      v80 = v1002[0];
      v81 = v1002[0] - 1;
      v82 = (v79 + 2 * ((v78 * v81) & (v78 >> 63)));
      if (v78 < 0)
      {
        v78 = -v78;
      }

      CGBlt_fillBytes(2 * v13, v1002[0], 0, v82, 2 * v78);
      if (v25)
      {
        if (v975 < 0)
        {
          v83 = v996 - v13;
          v66 = &v66[-2 * v13 + 2];
        }

        else
        {
          v83 = v996 + v13;
        }

        v66 += 2 * ((v83 * v81) & (v83 >> 63));
        if (v83 < 0)
        {
          v83 = -v83;
        }

        v996 = v83;
        CGBlt_fillBytes(2 * v13, v80, 0, v66, 2 * v83);
      }

      v21 = v978;
      goto LABEL_1002;
    case 1:
      v314 = *(v12 + 1);
      if (v314 == 2)
      {
        if (v13 >= 16 && (2 * v45) <= 0x40)
        {
          _Q0.n128_u32[0] = 2 * v45;
          v637 = vcnt_s8(_Q0.n128_u64[0]);
          v637.i16[0] = vaddlv_u8(v637);
          if (v637.i32[0] <= 1u)
          {
            v986 = v73;
            v987 = v74;
            v638 = v75;
            v639 = v1002[0];
            CGSFillDRAM64(v638, 2 * (v13 + v994), 2 * v13, v1002[0], v978, 2 * v992, 2 * v45, v976, 2 * v969, v970);
            if (v25)
            {
              if (v998)
              {
                CGSFillDRAM64(v66, 2 * (v13 + v996), 2 * v13, v639, v971, 2 * v989, 2 * v45, v976, 2 * v969, v970);
              }

              else
              {
                CGBlt_fillBytes(2 * v13, v639, 1006648320, v66, 2 * (v13 + v996));
              }
            }

            v65 = v977;
            goto LABEL_953;
          }
        }

LABEL_894:
        if (v25)
        {
          if (v44)
          {
            v640 = v1002[0];
            do
            {
              v641 = v13;
              do
              {
                *v75 = *v21;
                *v66 = *v8;
                v642 = &v21[v975];
                if (v642 >= v63)
                {
                  v643 = -v45;
                }

                else
                {
                  v643 = 0;
                }

                v8 += 2 * v44 + 2 * v643;
                v21 = &v642[v643];
                v66 += 2 * v25;
                v75 += v975;
                --v641;
              }

              while (v641);
              if (v988)
              {
                v644 = &v73[v992];
                if (v644 >= v988)
                {
                  v645 = -(v989 * v976);
                }

                else
                {
                  v645 = 0;
                }

                v74 += 2 * v989 + 2 * v645;
                if (v644 >= v988)
                {
                  v646 = -(v992 * v976);
                }

                else
                {
                  v646 = 0;
                }

                v73 = &v644[v646];
                v63 += 2 * v646 + 2 * v992;
                v8 = v74;
                v21 = v73;
              }

              else
              {
                v21 += v992;
                v8 += 2 * v989;
              }

              v75 += v994;
              v66 += 2 * v996;
              --v640;
            }

            while (v640);
          }

          else
          {
            v654 = v1002[0];
            do
            {
              v655 = v13;
              do
              {
                *v75 = *v21;
                *v66 = COERCE_UNSIGNED_INT(1.0);
                v656 = &v21[v975];
                if (v656 >= v63)
                {
                  v657 = -v45;
                }

                else
                {
                  v657 = 0;
                }

                v8 += 2 * v657;
                v21 = &v656[v657];
                v66 += 2 * v25;
                v75 += v975;
                --v655;
              }

              while (v655);
              if (v988)
              {
                v658 = &v73[v992];
                if (v658 >= v988)
                {
                  v659 = -(v989 * v976);
                }

                else
                {
                  v659 = 0;
                }

                v74 += 2 * v989 + 2 * v659;
                if (v658 >= v988)
                {
                  v660 = -(v992 * v976);
                }

                else
                {
                  v660 = 0;
                }

                v73 = &v658[v660];
                v63 += 2 * v660 + 2 * v992;
                v8 = v74;
                v21 = v73;
              }

              else
              {
                v21 += v992;
                v8 += 2 * v989;
              }

              v75 += v994;
              v66 += 2 * v996;
              --v654;
            }

            while (v654);
          }
        }

        else
        {
          v647 = v1002[0];
          do
          {
            v648 = v13;
            do
            {
              *v75 = *v21;
              v649 = &v21[v975];
              if (v649 >= v63)
              {
                v650 = -v45;
              }

              else
              {
                v650 = 0;
              }

              v8 += 2 * v44 + 2 * v650;
              v21 = &v649[v650];
              v75 += v975;
              --v648;
            }

            while (v648);
            if (v988)
            {
              v651 = &v73[v992];
              if (v651 >= v988)
              {
                v652 = -(v989 * v976);
              }

              else
              {
                v652 = 0;
              }

              v74 += 2 * v989 + 2 * v652;
              if (v651 >= v988)
              {
                v653 = -(v992 * v976);
              }

              else
              {
                v653 = 0;
              }

              v73 = &v651[v653];
              v63 += 2 * v653 + 2 * v992;
              v8 = v74;
              v21 = v73;
            }

            else
            {
              v21 += v992;
              v8 += 2 * v989;
            }

            v75 += v994;
            v66 += 2 * v996;
            --v647;
          }

          while (v647);
        }

        goto LABEL_951;
      }

      if (v314 != 1)
      {
        goto LABEL_894;
      }

      v986 = v73;
      v987 = v74;
      v315 = v13;
      v980 = v63;
      if (v975 < 0)
      {
        v316 = v992 - v13;
        v671 = 2 * v13 - 2;
        v21 = (v21 - v671);
        v317 = v994 - v13;
        v75 = (v75 - v671);
      }

      else
      {
        v316 = v992 + v13;
        v317 = v994 + v13;
      }

      v672 = v13;
      v673 = v1002[0] - 1;
      v674 = &v21[(v316 * v673) & (v316 >> 63)];
      v675 = v1002[0];
      if (v316 >= 0)
      {
        v676 = v316;
      }

      else
      {
        v676 = -v316;
      }

      v677 = &v75[(v317 * v673) & (v317 >> 63)];
      if (v317 >= 0)
      {
        LODWORD(v678) = v317;
      }

      else
      {
        v678 = -v317;
      }

      v679 = v672;
      v680 = 2 * v672;
      v992 = v676;
      CGBlt_copyBytes(2 * v672, v1002[0], v674, v677, 2 * v676, 2 * v678);
      if (v25)
      {
        if (v998)
        {
          v681 = v989 - v315;
          v682 = 2 * v679 - 2;
          v683 = &v8[-v682];
          v684 = v996 - v315;
          v685 = &v66[-v682];
          if (v975 >= 0)
          {
            v683 = v8;
            v685 = v66;
            v681 = v989 + v315;
            v684 = v996 + v315;
          }

          v8 = &v683[2 * ((v681 * v673) & (v681 >> 63))];
          if (v681 >= 0)
          {
            v686 = v681;
          }

          else
          {
            v686 = -v681;
          }

          v66 = &v685[2 * ((v684 * v673) & (v684 >> 63))];
          if (v684 >= 0)
          {
            v687 = v684;
          }

          else
          {
            v687 = -v684;
          }

          v989 = v686;
          v996 = v687;
          CGBlt_copyBytes(v680, v675, v8, v66, 2 * v686, 2 * v687);
        }

        else
        {
          v688 = v996 - v315;
          v689 = &v66[-2 * v679 + 2];
          if (v975 >= 0)
          {
            v689 = v66;
            v688 = v996 + v315;
          }

          v690 = (v688 * v673) & (v688 >> 63);
          v66 = (v689 + 2 * v690);
          if (v688 < 0)
          {
            v688 = -v688;
          }

          v996 = v688;
          CGBlt_fillBytes(v680, v675, 1006648320, (v689 + 2 * v690), 2 * v688);
        }
      }

      v21 = v978;
LABEL_1002:
      v65 = v977;
      v63 = v980;
      if (v977)
      {
        goto LABEL_954;
      }

      return 1;
    case 2:
      v257 = 2 * v975;
      if (v25)
      {
        v258 = v1002[0];
        while (1)
        {
          v259 = v13;
          do
          {
            if (*v8 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              *v75 = *v21;
              _H2 = *v8;
            }

            else
            {
              __asm { FCMP            H2, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_335;
              }

              __asm { FCVT            S2, H2 }

              _H3 = *v21;
              __asm { FCVT            S3, H3 }

              _H4 = *v75;
              __asm { FCVT            S4, H4 }

              _S3 = _S3 + (_S4 * (1.0 - _S2));
              __asm { FCVT            H3, S3 }

              *v75 = *&_S3;
              LOWORD(_S3) = *v66;
              __asm { FCVT            S3, H3 }

              _S2 = _S2 + (_S3 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }
            }

            *v66 = _H2;
LABEL_335:
            v270 = &v21[v975];
            if (v270 >= v63)
            {
              v271 = -v45;
            }

            else
            {
              v271 = 0;
            }

            v8 += 2 * v44 + 2 * v271;
            v21 = &v270[v271];
            v66 += 2 * v25;
            v75 = (v75 + v257);
            --v259;
          }

          while (v259);
          if (v988)
          {
            v272 = &v73[v992];
            if (v272 >= v988)
            {
              v273 = -(v989 * v976);
            }

            else
            {
              v273 = 0;
            }

            v74 += 2 * v989 + 2 * v273;
            if (v272 >= v988)
            {
              v274 = -(v992 * v976);
            }

            else
            {
              v274 = 0;
            }

            v73 = &v272[v274];
            v63 += 2 * v274 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          if (!--v258)
          {
            goto LABEL_951;
          }
        }
      }

      v590 = v1002[0];
LABEL_803:
      v591 = v13;
      while (*v8 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (!(_NF ^ _VF | _ZF))
        {
          __asm { FCVT            S2, H2 }

          _H3 = *v21;
          __asm { FCVT            S3, H3 }

          _H4 = *v75;
          __asm { FCVT            S4, H4 }

          _S2 = _S3 + (_S4 * (1.0 - _S2));
          __asm { FCVT            H2, S2 }

LABEL_808:
          *v75 = _H2;
        }

        v600 = &v21[v975];
        if (v600 >= v63)
        {
          v601 = -v45;
        }

        else
        {
          v601 = 0;
        }

        v8 += 2 * v44 + 2 * v601;
        v21 = &v600[v601];
        v75 = (v75 + v257);
        if (!--v591)
        {
          if (v988)
          {
            v602 = &v73[v992];
            if (v602 >= v988)
            {
              v603 = -(v989 * v976);
            }

            else
            {
              v603 = 0;
            }

            v74 += 2 * v989 + 2 * v603;
            if (v602 >= v988)
            {
              v604 = -(v992 * v976);
            }

            else
            {
              v604 = 0;
            }

            v73 = &v602[v604];
            v63 += 2 * v604 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          if (!--v590)
          {
LABEL_951:
            v986 = v73;
            v987 = v74;
            v1002[0] = 0;
LABEL_952:
            v65 = v977;
LABEL_953:
            v21 = v978;
            if (!v65)
            {
              return 1;
            }

LABEL_954:
            v1001 = 0;
LABEL_955:
            if (!shape_enum_clip_next(v65, &v1001 + 1, &v1001, v1012, v1002))
            {
              v77 = v65;
              goto LABEL_977;
            }

            v977 = v65;
            v978 = v21;
            if (v988)
            {
              v24 = v979;
              v75 = (v972 + 2 * v979 * v1001 + 2 * SHIDWORD(v1001));
              v661 = (v1001 + *(v12 + 60)) % v976;
              v67 = v1012[0];
              v662 = (HIDWORD(v1001) + *(v12 + 56)) % v45;
              v663 = &v21[v992 * v661];
              v73 = &v663[v662];
              v63 = &v663[v45];
              v25 = v1000;
              if (v1000)
              {
                v66 = (v974 + 2 * v973 * v1001 + 2 * SHIDWORD(v1001));
              }

              v664 = v996;
              if (v1000)
              {
                v664 = v973 - v1012[0];
              }

              v996 = v664;
              if (v998)
              {
                v44 = v998;
              }

              else
              {
                v44 = 0;
              }

              v74 = v987;
              if (v998)
              {
                v74 = v971 + 2 * v989 * v661 + 2 * v662;
                v8 = v74;
              }

              LODWORD(v13) = v1012[0];
              v21 = &v663[v662];
              v969 = (HIDWORD(v1001) + *(v12 + 56)) % v45;
              v970 = (v1001 + *(v12 + 60)) % v976;
            }

            else
            {
              v988 = 0;
              v665 = HIDWORD(v1001) * v975;
              LODWORD(v13) = v1012[0];
              v666 = v1012[0] * v975;
              v24 = v979;
              v75 = (v972 + 2 * v979 * v1001 + 2 * HIDWORD(v1001) * v975);
              v67 = v1012[0] * v975;
              v21 += v1001 * v45 + HIDWORD(v1001) * v975;
              v992 = v45 - v1012[0] * v975;
              v44 = v998;
              v25 = v1000;
              if (v1000)
              {
                v66 = (v974 + 2 * v973 * v1001 + 2 * v665);
              }

              v667 = v996;
              if (v1000)
              {
                v667 = v973 - v666;
              }

              v996 = v667;
              v668 = v971 + 2 * v1001 * v976 + 2 * v665;
              v669 = v976 - v666;
              if (v998)
              {
                v8 = v668;
              }

              v670 = v989;
              if (v998)
              {
                v670 = v669;
              }

              v989 = v670;
              v73 = v986;
              v74 = v987;
            }

            goto LABEL_67;
          }

          goto LABEL_803;
        }
      }

      _H2 = *v21;
      goto LABEL_808;
    case 3:
      v294 = 2 * v25;
      v295 = 2 * v975;
      if (v44)
      {
        v296 = v1002[0];
        do
        {
          v297 = v13;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              v299 = *v21;
              if (_H2 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v75 = v299;
                v300 = *v8;
              }

              else
              {
                *v75 = _H2 * v299;
                v300 = _H2 * *v8;
              }

              *v66 = v300;
            }

            else
            {
              *v66 = 0;
              *v75 = 0;
            }

            v301 = &v21[v975];
            if (v301 >= v63)
            {
              v302 = -v45;
            }

            else
            {
              v302 = 0;
            }

            v8 += 2 * v44 + 2 * v302;
            v21 = &v301[v302];
            v66 += v294;
            v75 = (v75 + v295);
            --v297;
          }

          while (v297);
          if (v988)
          {
            v303 = &v73[v992];
            if (v303 >= v988)
            {
              v304 = -(v989 * v976);
            }

            else
            {
              v304 = 0;
            }

            v74 += 2 * v989 + 2 * v304;
            if (v303 >= v988)
            {
              v305 = -(v992 * v976);
            }

            else
            {
              v305 = 0;
            }

            v73 = &v303[v305];
            v63 += 2 * v305 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v296;
        }

        while (v296);
      }

      else
      {
        v605 = v1002[0];
        do
        {
          v606 = v13;
          do
          {
            LOWORD(v607) = 0;
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              v607 = *v21;
              if (_H2 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v607 = _H2 * v607;
              }
            }

            *v75 = v607;
            v609 = &v21[v975];
            if (v609 >= v63)
            {
              v610 = -v45;
            }

            else
            {
              v610 = 0;
            }

            v8 += 2 * v610;
            v21 = &v609[v610];
            v66 += v294;
            v75 = (v75 + v295);
            --v606;
          }

          while (v606);
          if (v988)
          {
            v611 = &v73[v992];
            if (v611 >= v988)
            {
              v612 = -(v989 * v976);
            }

            else
            {
              v612 = 0;
            }

            v74 += 2 * v989 + 2 * v612;
            if (v611 >= v988)
            {
              v613 = -(v992 * v976);
            }

            else
            {
              v613 = 0;
            }

            v73 = &v611[v613];
            v63 += 2 * v613 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v605;
        }

        while (v605);
      }

      goto LABEL_951;
    case 4:
      v166 = v1002[0];
      do
      {
        v167 = v13;
        do
        {
          _H2 = *v66;
          __asm { FCVT            S2, H2 }

          v170 = 1.0 - _S2;
          if (v170 <= 0.0)
          {
            *v66 = 0;
            *v75 = 0;
          }

          else
          {
            if (v170 >= 1.0)
            {
              if (v44)
              {
                _H2 = *v8;
              }

              else
              {
                LOWORD(_H2) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              _H3 = *v21;
              __asm { FCVT            S3, H3 }

              _S3 = v170 * _S3;
              __asm { FCVT            H3, S3 }

              *v75 = *&_S3;
              if (v44)
              {
                _H3 = *v8;
                __asm { FCVT            S3, H3 }
              }

              else
              {
                _S3 = 1.0;
              }

              _S2 = v170 * _S3;
              __asm { FCVT            H2, S2 }
            }

            *v66 = _H2;
          }

          v178 = &v21[v975];
          if (v178 >= v63)
          {
            v179 = -v45;
          }

          else
          {
            v179 = 0;
          }

          v8 += 2 * v44 + 2 * v179;
          v21 = &v178[v179];
          v66 += 2 * v25;
          v75 += v975;
          --v167;
        }

        while (v167);
        if (v988)
        {
          v180 = &v73[v992];
          if (v180 >= v988)
          {
            v181 = -(v989 * v976);
          }

          else
          {
            v181 = 0;
          }

          v74 += 2 * v989 + 2 * v181;
          if (v180 >= v988)
          {
            v182 = -(v992 * v976);
          }

          else
          {
            v182 = 0;
          }

          v73 = &v180[v182];
          v63 += 2 * v182 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        --v166;
      }

      while (v166);
      goto LABEL_951;
    case 5:
      v358 = v1002[0];
      do
      {
        v359 = v13;
        do
        {
          _H1 = *v66;
          __asm { FCVT            S1, H1 }

          _H2 = *v8;
          __asm { FCVT            S2, H2 }

          _H3 = *v21;
          __asm { FCVT            S3, H3 }

          _H4 = *v75;
          __asm { FCVT            S4, H4 }

          _S3 = ((1.0 - _S2) * _S4) + (_S3 * _S1);
          __asm { FCVT            H3, S3 }

          *v75 = *&_S3;
          _S1 = ((1.0 - _S2) * _S1) + (_S2 * _S1);
          __asm { FCVT            H1, S1 }

          *v66 = LOWORD(_S1);
          v370 = &v21[v975];
          if (v370 >= v63)
          {
            v371 = -v45;
          }

          else
          {
            v371 = 0;
          }

          v8 += 2 * v44 + 2 * v371;
          v21 = &v370[v371];
          v66 += 2 * v25;
          v75 += v975;
          --v359;
        }

        while (v359);
        if (v988)
        {
          v372 = &v73[v992];
          if (v372 >= v988)
          {
            v373 = -(v989 * v976);
          }

          else
          {
            v373 = 0;
          }

          v74 += 2 * v989 + 2 * v373;
          if (v372 >= v988)
          {
            v374 = -(v992 * v976);
          }

          else
          {
            v374 = 0;
          }

          v73 = &v372[v374];
          v63 += 2 * v374 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        --v358;
      }

      while (v358);
      goto LABEL_951;
    case 6:
      v415 = v1002[0];
      while (1)
      {
        v416 = v13;
        do
        {
          _H1 = *v66;
          __asm { FCVT            S1, H1 }

          v419 = 1.0 - _S1;
          if ((1.0 - _S1) >= 1.0)
          {
            *v75 = *v21;
            if (v44)
            {
              _H1 = *v8;
            }

            else
            {
              LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
            }
          }

          else
          {
            if (v419 <= 0.0)
            {
              goto LABEL_570;
            }

            _H3 = *v75;
            __asm { FCVT            S3, H3 }

            _H4 = *v21;
            __asm { FCVT            S4, H4 }

            _S3 = _S3 + (_S4 * v419);
            __asm { FCVT            H3, S3 }

            *v75 = *&_S3;
            if (v44)
            {
              _H3 = *v8;
              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _S1 = _S1 + (_S3 * v419);
            __asm { FCVT            H1, S1 }
          }

          *v66 = _H1;
LABEL_570:
          v429 = &v21[v975];
          if (v429 >= v63)
          {
            v430 = -v45;
          }

          else
          {
            v430 = 0;
          }

          v8 += 2 * v44 + 2 * v430;
          v21 = &v429[v430];
          v66 += 2 * v25;
          v75 += v975;
          --v416;
        }

        while (v416);
        if (v988)
        {
          v431 = &v73[v992];
          if (v431 >= v988)
          {
            v432 = -(v989 * v976);
          }

          else
          {
            v432 = 0;
          }

          v74 += 2 * v989 + 2 * v432;
          if (v431 >= v988)
          {
            v433 = -(v992 * v976);
          }

          else
          {
            v433 = 0;
          }

          v73 = &v431[v433];
          v63 += 2 * v433 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v415)
        {
          goto LABEL_951;
        }
      }

    case 7:
      if (v25)
      {
        v306 = v1002[0];
        do
        {
          v307 = v13;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              if (_H2 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v75 = _H2 * *v75;
                *v66 = _H2 * *v66;
              }
            }

            else
            {
              *v66 = 0;
              *v75 = 0;
            }

            v309 = &v21[v975];
            if (v309 >= v63)
            {
              v310 = -v45;
            }

            else
            {
              v310 = 0;
            }

            v8 += 2 * v44 + 2 * v310;
            v21 = &v309[v310];
            v66 += 2 * v25;
            v75 += v975;
            --v307;
          }

          while (v307);
          if (v988)
          {
            v311 = &v73[v992];
            if (v311 >= v988)
            {
              v312 = -(v989 * v976);
            }

            else
            {
              v312 = 0;
            }

            v74 += 2 * v989 + 2 * v312;
            if (v311 >= v988)
            {
              v313 = -(v992 * v976);
            }

            else
            {
              v313 = 0;
            }

            v73 = &v311[v313];
            v63 += 2 * v313 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v306;
        }

        while (v306);
        goto LABEL_951;
      }

      v614 = v1002[0];
LABEL_846:
      v615 = v13;
      while (1)
      {
        LOWORD(v616) = 0;
        __asm { FCMP            H1, #0 }

        if (!(!_ZF & _CF))
        {
          goto LABEL_851;
        }

        if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          break;
        }

LABEL_852:
        v618 = &v21[v975];
        if (v618 >= v63)
        {
          v619 = -v45;
        }

        else
        {
          v619 = 0;
        }

        v8 += 2 * v44 + 2 * v619;
        v21 = &v618[v619];
        v75 += v975;
        if (!--v615)
        {
          if (v988)
          {
            v620 = &v73[v992];
            if (v620 >= v988)
            {
              v621 = -(v989 * v976);
            }

            else
            {
              v621 = 0;
            }

            v74 += 2 * v989 + 2 * v621;
            if (v620 >= v988)
            {
              v622 = -(v992 * v976);
            }

            else
            {
              v622 = 0;
            }

            v73 = &v620[v622];
            v63 += 2 * v622 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          if (!--v614)
          {
            goto LABEL_951;
          }

          goto LABEL_846;
        }
      }

      v616 = _H1 * *v75;
LABEL_851:
      *v75 = v616;
      goto LABEL_852;
    case 8:
      if (v25)
      {
        v470 = v1002[0];
        do
        {
          v471 = v13;
          do
          {
            _H2 = *v8;
            __asm { FCVT            S2, H2 }

            v474 = 1.0 - _S2;
            if (v474 <= 0.0)
            {
              *v66 = 0;
              *v75 = 0;
            }

            else if (v474 < 1.0)
            {
              _H3 = *v75;
              __asm { FCVT            S3, H3 }

              _S3 = v474 * _S3;
              __asm { FCVT            H3, S3 }

              *v75 = *&_S3;
              LOWORD(_S3) = *v66;
              __asm { FCVT            S3, H3 }

              _S2 = v474 * _S3;
              __asm { FCVT            H2, S2 }

              *v66 = LOWORD(_S2);
            }

            v480 = &v21[v975];
            if (v480 >= v63)
            {
              v481 = -v45;
            }

            else
            {
              v481 = 0;
            }

            v8 += 2 * v44 + 2 * v481;
            v21 = &v480[v481];
            v66 += 2 * v25;
            v75 += v975;
            --v471;
          }

          while (v471);
          if (v988)
          {
            v482 = &v73[v992];
            if (v482 >= v988)
            {
              v483 = -(v989 * v976);
            }

            else
            {
              v483 = 0;
            }

            v74 += 2 * v989 + 2 * v483;
            if (v482 >= v988)
            {
              v484 = -(v992 * v976);
            }

            else
            {
              v484 = 0;
            }

            v73 = &v482[v484];
            v63 += 2 * v484 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v470;
        }

        while (v470);
        goto LABEL_951;
      }

      v623 = v1002[0];
LABEL_868:
      v624 = v13;
      while (1)
      {
        _H1 = *v8;
        __asm { FCVT            S1, H1 }

        v627 = 1.0 - _S1;
        _H2 = 0;
        if (v627 <= 0.0)
        {
          goto LABEL_872;
        }

        if (v627 < 1.0)
        {
          break;
        }

LABEL_873:
        v632 = &v21[v975];
        if (v632 >= v63)
        {
          v633 = -v45;
        }

        else
        {
          v633 = 0;
        }

        v8 += 2 * v44 + 2 * v633;
        v21 = &v632[v633];
        v75 += v975;
        if (!--v624)
        {
          if (v988)
          {
            v634 = &v73[v992];
            if (v634 >= v988)
            {
              v635 = -(v989 * v976);
            }

            else
            {
              v635 = 0;
            }

            v74 += 2 * v989 + 2 * v635;
            if (v634 >= v988)
            {
              v636 = -(v992 * v976);
            }

            else
            {
              v636 = 0;
            }

            v73 = &v634[v636];
            v63 += 2 * v636 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          if (!--v623)
          {
            goto LABEL_951;
          }

          goto LABEL_868;
        }
      }

      _H2 = *v75;
      __asm { FCVT            S2, H2 }

      _S1 = v627 * _S2;
      __asm { FCVT            H2, S1 }

LABEL_872:
      *v75 = _H2;
      goto LABEL_873;
    case 9:
      v196 = v1002[0];
      do
      {
        v197 = v13;
        do
        {
          _H1 = *v66;
          __asm { FCVT            S1, H1 }

          _H2 = *v8;
          __asm { FCVT            S2, H2 }

          _H3 = *v21;
          __asm { FCVT            S3, H3 }

          _H5 = *v75;
          __asm { FCVT            S5, H5 }

          _S3 = (_S2 * _S5) + (_S3 * (1.0 - _S1));
          __asm { FCVT            H3, S3 }

          *v75 = *&_S3;
          _S1 = (_S1 * _S2) + (_S2 * (1.0 - _S1));
          __asm { FCVT            H1, S1 }

          *v66 = LOWORD(_S1);
          v208 = &v21[v975];
          if (v208 >= v63)
          {
            v209 = -v45;
          }

          else
          {
            v209 = 0;
          }

          v8 += 2 * v44 + 2 * v209;
          v21 = &v208[v209];
          v66 += 2 * v25;
          v75 += v975;
          --v197;
        }

        while (v197);
        if (v988)
        {
          v210 = &v73[v992];
          if (v210 >= v988)
          {
            v211 = -(v989 * v976);
          }

          else
          {
            v211 = 0;
          }

          v74 += 2 * v989 + 2 * v211;
          if (v210 >= v988)
          {
            v212 = -(v992 * v976);
          }

          else
          {
            v212 = 0;
          }

          v73 = &v210[v212];
          v63 += 2 * v212 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        --v196;
      }

      while (v196);
      goto LABEL_951;
    case 10:
      v453 = v1002[0];
      do
      {
        v454 = v13;
        do
        {
          _H1 = *v66;
          __asm { FCVT            S1, H1 }

          _H2 = *v8;
          __asm { FCVT            S2, H2 }

          _H3 = *v21;
          __asm { FCVT            S3, H3 }

          _H5 = *v75;
          __asm { FCVT            S5, H5 }

          _S3 = ((1.0 - _S2) * _S5) + (_S3 * (1.0 - _S1));
          __asm { FCVT            H3, S3 }

          *v75 = *&_S3;
          _S1 = ((1.0 - _S2) * _S1) + (_S2 * (1.0 - _S1));
          __asm { FCVT            H1, S1 }

          *v66 = LOWORD(_S1);
          v465 = &v21[v975];
          if (v465 >= v63)
          {
            v466 = -v45;
          }

          else
          {
            v466 = 0;
          }

          v8 += 2 * v44 + 2 * v466;
          v21 = &v465[v466];
          v66 += 2 * v25;
          v75 += v975;
          --v454;
        }

        while (v454);
        if (v988)
        {
          v467 = &v73[v992];
          if (v467 >= v988)
          {
            v468 = -(v989 * v976);
          }

          else
          {
            v468 = 0;
          }

          v74 += 2 * v989 + 2 * v468;
          if (v467 >= v988)
          {
            v469 = -(v992 * v976);
          }

          else
          {
            v469 = 0;
          }

          v73 = &v467[v469];
          v63 += 2 * v469 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        --v453;
      }

      while (v453);
      goto LABEL_951;
    case 11:
      v145 = 2 * v975;
      if (v25)
      {
        v146 = v1002[0];
        do
        {
          v147 = v13;
          do
          {
            if (v44)
            {
              _H1 = *v8;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v66;
            __asm { FCVT            S2, H2 }

            v152 = _S1 + _S2;
            _H4 = *v75;
            __asm { FCVT            S4, H4 }

            v155 = _S2 - _S4;
            *&_S4 = *v21;
            __asm { FCVT            S4, H4 }

            v157 = v155 + (_S1 - _S4);
            if (v152 <= 1.0)
            {
              _S2 = v152;
            }

            else
            {
              _S2 = 1.0;
            }

            __asm { FCVT            H3, S2 }

            *v66 = _H3;
            _S1 = _S2 - v157;
            __asm { FCVT            H1, S1 }

            *v75 = *&_S1;
            v161 = &v21[v975];
            if (v161 >= v63)
            {
              v162 = -v45;
            }

            else
            {
              v162 = 0;
            }

            v8 += 2 * v44 + 2 * v162;
            v21 = &v161[v162];
            v66 += 2 * v25;
            v75 = (v75 + v145);
            --v147;
          }

          while (v147);
          if (v988)
          {
            v163 = &v73[v992];
            if (v163 >= v988)
            {
              v164 = -(v989 * v976);
            }

            else
            {
              v164 = 0;
            }

            v74 += 2 * v989 + 2 * v164;
            if (v163 >= v988)
            {
              v165 = -(v992 * v976);
            }

            else
            {
              v165 = 0;
            }

            v73 = &v163[v165];
            v63 += 2 * v165 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v146;
        }

        while (v146);
      }

      else
      {
        v569 = v1002[0];
        do
        {
          v570 = v13;
          do
          {
            _S2 = 1.0;
            if (v44)
            {
              _H2 = *v8;
              __asm { FCVT            S2, H2 }
            }

            _H3 = *v75;
            __asm { FCVT            S3, H3 }

            v575 = 1.0 - _S3;
            *&_S3 = *v21;
            __asm { FCVT            S3, H3 }

            _S1 = 1.0 - (v575 + (_S2 - _S3));
            __asm { FCVT            H1, S1 }

            *v75 = *&_S1;
            v578 = &v21[v975];
            if (v578 >= v63)
            {
              v579 = -v45;
            }

            else
            {
              v579 = 0;
            }

            v8 += 2 * v44 + 2 * v579;
            v21 = &v578[v579];
            v75 = (v75 + v145);
            --v570;
          }

          while (v570);
          if (v988)
          {
            v580 = &v73[v992];
            if (v580 >= v988)
            {
              v581 = -(v989 * v976);
            }

            else
            {
              v581 = 0;
            }

            v74 += 2 * v989 + 2 * v581;
            if (v580 >= v988)
            {
              v582 = -(v992 * v976);
            }

            else
            {
              v582 = 0;
            }

            v73 = &v580[v582];
            v63 += 2 * v582 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v569;
        }

        while (v569);
      }

      goto LABEL_951;
    case 12:
      if (v25)
      {
        v183 = v1002[0];
        do
        {
          v184 = v13;
          do
          {
            if (v44)
            {
              _H1 = *v8;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v66;
            __asm { FCVT            S2, H2 }

            _S1 = _S1 + _S2;
            if (_S1 > 1.0)
            {
              _S1 = 1.0;
            }

            *v75 = *v75 + *v21;
            __asm { FCVT            H1, S1 }

            *v66 = _H1;
            v191 = &v21[v975];
            if (v191 >= v63)
            {
              v192 = -v45;
            }

            else
            {
              v192 = 0;
            }

            v8 += 2 * v44 + 2 * v192;
            v21 = &v191[v192];
            v66 += 2 * v25;
            v75 += v975;
            --v184;
          }

          while (v184);
          if (v988)
          {
            v193 = &v73[v992];
            if (v193 >= v988)
            {
              v194 = -(v989 * v976);
            }

            else
            {
              v194 = 0;
            }

            v74 += 2 * v989 + 2 * v194;
            if (v193 >= v988)
            {
              v195 = -(v992 * v976);
            }

            else
            {
              v195 = 0;
            }

            v73 = &v193[v195];
            v63 += 2 * v195 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v183;
        }

        while (v183);
      }

      else
      {
        v583 = v1002[0];
        do
        {
          v584 = v13;
          do
          {
            *v75 = *v75 + *v21;
            v585 = &v21[v975];
            if (v585 >= v63)
            {
              v586 = -v45;
            }

            else
            {
              v586 = 0;
            }

            v8 += 2 * v44 + 2 * v586;
            v21 = &v585[v586];
            v75 += v975;
            --v584;
          }

          while (v584);
          if (v988)
          {
            v587 = &v73[v992];
            if (v587 >= v988)
            {
              v588 = -(v989 * v976);
            }

            else
            {
              v588 = 0;
            }

            v74 += 2 * v989 + 2 * v588;
            if (v587 >= v988)
            {
              v589 = -(v992 * v976);
            }

            else
            {
              v589 = 0;
            }

            v73 = &v587[v589];
            v63 += 2 * v589 + 2 * v992;
            v8 = v74;
            v21 = v73;
          }

          else
          {
            v21 += v992;
            v8 += 2 * v989;
          }

          v75 += v994;
          v66 += 2 * v996;
          --v583;
        }

        while (v583);
      }

      goto LABEL_951;
    case 13:
      v394 = v1002[0];
      while (1)
      {
        v395 = v13;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v44)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_543;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v25)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H1, S1 }

LABEL_541:
              *v66 = _H1;
              goto LABEL_543;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v75;
          _H4 = *v21;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v404 = _S3 * _S4;
          _S3 = (_S3 * _S4) + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v404;
          }

          v406 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v406;
          }

          __asm { FCVT            H3, S3 }

          if (v25)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v75 = _H3;
            goto LABEL_541;
          }

          *v75 = _H3;
LABEL_543:
          v410 = &v21[v975];
          if (v410 >= v63)
          {
            v411 = -v45;
          }

          else
          {
            v411 = 0;
          }

          v8 += 2 * v44 + 2 * v411;
          v21 = &v410[v411];
          v66 += 2 * v25;
          v75 += v975;
          --v395;
        }

        while (v395);
        if (v988)
        {
          v412 = &v73[v992];
          if (v412 >= v988)
          {
            v413 = -(v989 * v976);
          }

          else
          {
            v413 = 0;
          }

          v74 += 2 * v989 + 2 * v413;
          if (v412 >= v988)
          {
            v414 = -(v992 * v976);
          }

          else
          {
            v414 = 0;
          }

          v73 = &v412[v414];
          v63 += 2 * v414 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v394)
        {
          goto LABEL_951;
        }
      }

    case 14:
      v126 = v1002[0];
      while (1)
      {
        v127 = v13;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v44)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_154;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v25)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H1, S1 }

LABEL_152:
              *v66 = _H1;
              goto LABEL_154;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v75;
          _H4 = *v21;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _S3 = _S3 + (_S4 * (1.0 - _S3));
          __asm { FCVT            H3, S3 }

          if (v25)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v75 = _H3;
            goto LABEL_152;
          }

          *v75 = _H3;
LABEL_154:
          v140 = &v21[v975];
          if (v140 >= v63)
          {
            v141 = -v45;
          }

          else
          {
            v141 = 0;
          }

          v8 += 2 * v44 + 2 * v141;
          v21 = &v140[v141];
          v66 += 2 * v25;
          v75 += v975;
          --v127;
        }

        while (v127);
        if (v988)
        {
          v142 = &v73[v992];
          if (v142 >= v988)
          {
            v143 = -(v989 * v976);
          }

          else
          {
            v143 = 0;
          }

          v74 += 2 * v989 + 2 * v143;
          if (v142 >= v988)
          {
            v144 = -(v992 * v976);
          }

          else
          {
            v144 = 0;
          }

          v73 = &v142[v144];
          v63 += 2 * v144 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v126)
        {
          goto LABEL_951;
        }
      }

    case 15:
      v986 = v73;
      v987 = v74;
      v275 = v44;
      v276 = v1002[0];
      v277 = 2 * v25;
      v278 = 2 * v975;
      v967 = v45;
      v279 = -v45;
      while (1)
      {
        v981 = v276;
        v280 = v13;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_362;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S3 }

              *v66 = _H0;
              goto LABEL_362;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v75;
          v6.n128_u16[0] = *v21;
          LODWORD(v25) = v1000;
          *v75 = PDAoverlayPDA(_Q0, _S1, v6, _S3);
          if (v1000)
          {
            *v66 = v285;
          }

          LODWORD(v44) = v998;
          v279 = -v45;
          v278 = 2 * v975;
LABEL_362:
          v287 = &v21[v975];
          if (v287 >= v63)
          {
            v288 = v279;
          }

          else
          {
            v288 = 0;
          }

          v8 += 2 * v275 + 2 * v288;
          v21 = &v287[v288];
          v66 += v277;
          v75 = (v75 + v278);
          --v280;
        }

        while (v280);
        if (v988)
        {
          v289 = v986 + 2 * v992;
          v290 = -(v989 * v976);
          if (v289 < v988)
          {
            v290 = 0;
          }

          v291 = v987 + 2 * v989 + 2 * v290;
          v292 = -(v992 * v976);
          if (v289 < v988)
          {
            v292 = 0;
          }

          v293 = (v289 + 2 * v292);
          v63 += 2 * v292 + 2 * v992;
          v8 = (v987 + 2 * v989 + 2 * v290);
          v21 = v293;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
          v293 = v986;
          v291 = v987;
        }

        v986 = v293;
        v987 = v291;
        v75 += v994;
        v66 += 2 * v996;
        v276 = v981 - 1;
        if (v981 == 1)
        {
LABEL_703:
          v1002[0] = 0;
          v45 = v967;
          v10 = v968;
          v12 = v966;
          v65 = v977;
          v21 = v978;
          if (v977)
          {
            goto LABEL_954;
          }

          return 1;
        }
      }

    case 16:
      v105 = v1002[0];
      while (1)
      {
        v106 = v13;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v44)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_126;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v25)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H1, S1 }

LABEL_124:
              *v66 = _H1;
              goto LABEL_126;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v75;
          _H4 = *v21;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v115 = _S1 * _S3;
          if ((_S2 * _S4) < (_S1 * _S3))
          {
            v115 = _S2 * _S4;
          }

          _S3 = v115 + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v115;
          }

          v117 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v117;
          }

          __asm { FCVT            H3, S3 }

          if (v25)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v75 = _H3;
            goto LABEL_124;
          }

          *v75 = _H3;
LABEL_126:
          v121 = &v21[v975];
          if (v121 >= v63)
          {
            v122 = -v45;
          }

          else
          {
            v122 = 0;
          }

          v8 += 2 * v44 + 2 * v122;
          v21 = &v121[v122];
          v66 += 2 * v25;
          v75 += v975;
          --v106;
        }

        while (v106);
        if (v988)
        {
          v123 = &v73[v992];
          if (v123 >= v988)
          {
            v124 = -(v989 * v976);
          }

          else
          {
            v124 = 0;
          }

          v74 += 2 * v989 + 2 * v124;
          if (v123 >= v988)
          {
            v125 = -(v992 * v976);
          }

          else
          {
            v125 = 0;
          }

          v73 = &v123[v125];
          v63 += 2 * v125 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v105)
        {
          goto LABEL_951;
        }
      }

    case 17:
      v318 = v1002[0];
      while (1)
      {
        v319 = v13;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v44)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_444;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v25)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H1, S1 }

LABEL_442:
              *v66 = _H1;
              goto LABEL_444;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v75;
          _H4 = *v21;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v328 = _S1 * _S3;
          if ((_S2 * _S4) > (_S1 * _S3))
          {
            v328 = _S2 * _S4;
          }

          _S3 = v328 + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v328;
          }

          v330 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v330;
          }

          __asm { FCVT            H3, S3 }

          if (v25)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v75 = _H3;
            goto LABEL_442;
          }

          *v75 = _H3;
LABEL_444:
          v334 = &v21[v975];
          if (v334 >= v63)
          {
            v335 = -v45;
          }

          else
          {
            v335 = 0;
          }

          v8 += 2 * v44 + 2 * v335;
          v21 = &v334[v335];
          v66 += 2 * v25;
          v75 += v975;
          --v319;
        }

        while (v319);
        if (v988)
        {
          v336 = &v73[v992];
          if (v336 >= v988)
          {
            v337 = -(v989 * v976);
          }

          else
          {
            v337 = 0;
          }

          v74 += 2 * v989 + 2 * v337;
          if (v336 >= v988)
          {
            v338 = -(v992 * v976);
          }

          else
          {
            v338 = 0;
          }

          v73 = &v336[v338];
          v63 += 2 * v338 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v318)
        {
          goto LABEL_951;
        }
      }

    case 18:
      v986 = v73;
      v987 = v74;
      v434 = v44;
      v435 = v1002[0];
      v436 = 2 * v25;
      v437 = 2 * v975;
      v967 = v45;
      v438 = -v45;
      while (1)
      {
        v984 = v435;
        v439 = v13;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_597;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S3 }

              *v66 = _H0;
              goto LABEL_597;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v75;
          v6.n128_u16[0] = *v21;
          LODWORD(v25) = v1000;
          *v75 = PDAcolordodgePDA(_Q0, _S1, v6, _S3);
          if (v1000)
          {
            *v66 = v444;
          }

          LODWORD(v44) = v998;
          v438 = -v45;
          v437 = 2 * v975;
LABEL_597:
          v446 = &v21[v975];
          if (v446 >= v63)
          {
            v447 = v438;
          }

          else
          {
            v447 = 0;
          }

          v8 += 2 * v434 + 2 * v447;
          v21 = &v446[v447];
          v66 += v436;
          v75 = (v75 + v437);
          --v439;
        }

        while (v439);
        if (v988)
        {
          v448 = v986 + 2 * v992;
          v449 = -(v989 * v976);
          if (v448 < v988)
          {
            v449 = 0;
          }

          v450 = v987 + 2 * v989 + 2 * v449;
          v451 = -(v992 * v976);
          if (v448 < v988)
          {
            v451 = 0;
          }

          v452 = (v448 + 2 * v451);
          v63 += 2 * v451 + 2 * v992;
          v8 = (v987 + 2 * v989 + 2 * v449);
          v21 = v452;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
          v452 = v986;
          v450 = v987;
        }

        v986 = v452;
        v987 = v450;
        v75 += v994;
        v66 += 2 * v996;
        v435 = v984 - 1;
        if (v984 == 1)
        {
          goto LABEL_703;
        }
      }

    case 19:
      v986 = v73;
      v987 = v74;
      v510 = v44;
      v511 = v1002[0];
      v512 = 2 * v25;
      v513 = 2 * v975;
      v967 = v45;
      v514 = -v45;
      while (1)
      {
        v985 = v511;
        v515 = v13;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_691;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S3 }

              *v66 = _H0;
              goto LABEL_691;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v75;
          v6.n128_u16[0] = *v21;
          LODWORD(v25) = v1000;
          *v75 = PDAcolorburnPDA(_Q0, _S1, v6, _S3);
          if (v1000)
          {
            *v66 = v520;
          }

          LODWORD(v44) = v998;
          v514 = -v45;
          v513 = 2 * v975;
LABEL_691:
          v522 = &v21[v975];
          if (v522 >= v63)
          {
            v523 = v514;
          }

          else
          {
            v523 = 0;
          }

          v8 += 2 * v510 + 2 * v523;
          v21 = &v522[v523];
          v66 += v512;
          v75 = (v75 + v513);
          --v515;
        }

        while (v515);
        if (v988)
        {
          v524 = v986 + 2 * v992;
          v525 = -(v989 * v976);
          if (v524 < v988)
          {
            v525 = 0;
          }

          v526 = v987 + 2 * v989 + 2 * v525;
          v527 = -(v992 * v976);
          if (v524 < v988)
          {
            v527 = 0;
          }

          v528 = (v524 + 2 * v527);
          v63 += 2 * v527 + 2 * v992;
          v8 = (v987 + 2 * v989 + 2 * v525);
          v21 = v528;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
          v528 = v986;
          v526 = v987;
        }

        v986 = v528;
        v987 = v526;
        v75 += v994;
        v66 += 2 * v996;
        v511 = v985 - 1;
        if (v985 == 1)
        {
          goto LABEL_703;
        }
      }

    case 20:
      v986 = v73;
      v987 = v74;
      v339 = v44;
      v340 = v1002[0];
      v341 = 2 * v25;
      v342 = 2 * v975;
      v967 = v45;
      v343 = -v45;
      while (1)
      {
        v982 = v340;
        v344 = v13;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_471;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S3 }

              *v66 = _H0;
              goto LABEL_471;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v75;
          v6.n128_u16[0] = *v21;
          LODWORD(v25) = v1000;
          *v75 = PDAsoftlightPDA(_Q0, _S1, v6, _S3);
          if (v1000)
          {
            *v66 = v349;
          }

          LODWORD(v44) = v998;
          v343 = -v45;
          v342 = 2 * v975;
LABEL_471:
          v351 = &v21[v975];
          if (v351 >= v63)
          {
            v352 = v343;
          }

          else
          {
            v352 = 0;
          }

          v8 += 2 * v339 + 2 * v352;
          v21 = &v351[v352];
          v66 += v341;
          v75 = (v75 + v342);
          --v344;
        }

        while (v344);
        if (v988)
        {
          v353 = v986 + 2 * v992;
          v354 = -(v989 * v976);
          if (v353 < v988)
          {
            v354 = 0;
          }

          v355 = v987 + 2 * v989 + 2 * v354;
          v356 = -(v992 * v976);
          if (v353 < v988)
          {
            v356 = 0;
          }

          v357 = (v353 + 2 * v356);
          v63 += 2 * v356 + 2 * v992;
          v8 = (v987 + 2 * v989 + 2 * v354);
          v21 = v357;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
          v357 = v986;
          v355 = v987;
        }

        v986 = v357;
        v987 = v355;
        v75 += v994;
        v66 += 2 * v996;
        v340 = v982 - 1;
        if (v982 == 1)
        {
          goto LABEL_703;
        }
      }

    case 21:
      v986 = v73;
      v987 = v74;
      v375 = v44;
      v376 = v1002[0];
      v377 = 2 * v25;
      v378 = 2 * v975;
      v967 = v45;
      v379 = -v45;
      while (1)
      {
        v983 = v376;
        v380 = v13;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_513;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S3 }

              *v66 = _H0;
              goto LABEL_513;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v75;
          v6.n128_u16[0] = *v21;
          LODWORD(v25) = v1000;
          *v75 = PDAhardlightPDA(_Q0, _S1, v6, _S3);
          if (v1000)
          {
            *v66 = v385;
          }

          LODWORD(v44) = v998;
          v379 = -v45;
          v378 = 2 * v975;
LABEL_513:
          v387 = &v21[v975];
          if (v387 >= v63)
          {
            v388 = v379;
          }

          else
          {
            v388 = 0;
          }

          v8 += 2 * v375 + 2 * v388;
          v21 = &v387[v388];
          v66 += v377;
          v75 = (v75 + v378);
          --v380;
        }

        while (v380);
        if (v988)
        {
          v389 = v986 + 2 * v992;
          v390 = -(v989 * v976);
          if (v389 < v988)
          {
            v390 = 0;
          }

          v391 = v987 + 2 * v989 + 2 * v390;
          v392 = -(v992 * v976);
          if (v389 < v988)
          {
            v392 = 0;
          }

          v393 = (v389 + 2 * v392);
          v63 += 2 * v392 + 2 * v992;
          v8 = (v987 + 2 * v989 + 2 * v390);
          v21 = v393;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
          v393 = v986;
          v391 = v987;
        }

        v986 = v393;
        v987 = v391;
        v75 += v994;
        v66 += 2 * v996;
        v376 = v983 - 1;
        if (v983 == 1)
        {
          goto LABEL_703;
        }
      }

    case 22:
      v485 = v1002[0];
      while (1)
      {
        v486 = v13;
        do
        {
          _S1 = 1.0;
          _S0 = 1.0;
          if (v44)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_664;
            }

            __asm { FCVT            S0, H0 }
          }

          if (v25)
          {
            __asm { FCMP            H1, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H0, S0 }

LABEL_662:
              *v66 = _H0;
              goto LABEL_664;
            }

            __asm { FCVT            S1, H1 }
          }

          _H2 = *v75;
          _H3 = *v21;
          __asm
          {
            FCVT            S2, H2
            FCVT            S3, H3
          }

          v495 = _S2 + _S3;
          v496 = _S0 * _S2;
          v497 = _S1 * _S3;
          v498 = v495 - v496;
          v499 = v496 - v497;
          v500 = v498 - v497;
          if (v499 < 0.0)
          {
            v499 = -v499;
          }

          _S2 = v500 + v499;
          __asm { FCVT            H2, S2 }

          if (v25)
          {
            _S0 = (_S0 + _S1) - (_S1 * _S0);
            __asm { FCVT            H0, S0 }

            *v75 = _H2;
            goto LABEL_662;
          }

          *v75 = _H2;
LABEL_664:
          v505 = &v21[v975];
          if (v505 >= v63)
          {
            v506 = -v45;
          }

          else
          {
            v506 = 0;
          }

          v8 += 2 * v44 + 2 * v506;
          v21 = &v505[v506];
          v66 += 2 * v25;
          v75 += v975;
          --v486;
        }

        while (v486);
        if (v988)
        {
          v507 = &v73[v992];
          if (v507 >= v988)
          {
            v508 = -(v989 * v976);
          }

          else
          {
            v508 = 0;
          }

          v74 += 2 * v989 + 2 * v508;
          if (v507 >= v988)
          {
            v509 = -(v992 * v976);
          }

          else
          {
            v509 = 0;
          }

          v73 = &v507[v509];
          v63 += 2 * v509 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v485)
        {
          goto LABEL_951;
        }
      }

    case 23:
      v529 = v1002[0];
      while (1)
      {
        v530 = v13;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v44)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_718;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v25)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H1, S1 }

LABEL_716:
              *v66 = _H1;
              goto LABEL_718;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v75;
          _H4 = *v21;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _S3 = (_S3 + _S4) + ((_S3 * _S4) * -2.0);
          __asm { FCVT            H3, S3 }

          if (v25)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v75 = _H3;
            goto LABEL_716;
          }

          *v75 = _H3;
LABEL_718:
          v543 = &v21[v975];
          if (v543 >= v63)
          {
            v544 = -v45;
          }

          else
          {
            v544 = 0;
          }

          v8 += 2 * v44 + 2 * v544;
          v21 = &v543[v544];
          v66 += 2 * v25;
          v75 += v975;
          --v530;
        }

        while (v530);
        if (v988)
        {
          v545 = &v73[v992];
          if (v545 >= v988)
          {
            v546 = -(v989 * v976);
          }

          else
          {
            v546 = 0;
          }

          v74 += 2 * v989 + 2 * v546;
          if (v545 >= v988)
          {
            v547 = -(v992 * v976);
          }

          else
          {
            v547 = 0;
          }

          v73 = &v545[v547];
          v63 += 2 * v547 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v529)
        {
          goto LABEL_951;
        }
      }

    case 24:
      v235 = v1002[0];
      while (1)
      {
        v236 = v13;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v44)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_312;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v25)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H2, S2 }

LABEL_310:
              *v66 = _H2;
              goto LABEL_312;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v75;
          _H5 = *v21;
          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H5
          }

          v245 = _S4 - (_S2 * _S4);
          if (_S2 == 1.0)
          {
            v246 = 0.0;
          }

          else
          {
            _S4 = _S2 * _S4;
            v246 = v245;
          }

          v247 = (v246 + _S5) - (_S3 * _S5);
          if (_S3 == 1.0)
          {
            v247 = v246;
          }

          _S4 = _S4 + v247;
          __asm { FCVT            H4, S4 }

          if (v25)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v75 = _H4;
            goto LABEL_310;
          }

          *v75 = _H4;
LABEL_312:
          v252 = &v21[v975];
          if (v252 >= v63)
          {
            v253 = -v45;
          }

          else
          {
            v253 = 0;
          }

          v8 += 2 * v44 + 2 * v253;
          v21 = &v252[v253];
          v66 += 2 * v25;
          v75 += v975;
          --v236;
        }

        while (v236);
        if (v988)
        {
          v254 = &v73[v992];
          if (v254 >= v988)
          {
            v255 = -(v989 * v976);
          }

          else
          {
            v255 = 0;
          }

          v74 += 2 * v989 + 2 * v255;
          if (v254 >= v988)
          {
            v256 = -(v992 * v976);
          }

          else
          {
            v256 = 0;
          }

          v73 = &v254[v256];
          v63 += 2 * v256 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v235)
        {
          goto LABEL_951;
        }
      }

    case 25:
      v213 = v1002[0];
      while (1)
      {
        v214 = v13;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v44)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_279;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v25)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H2, S2 }

LABEL_277:
              *v66 = _H2;
              goto LABEL_279;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v75;
          _H5 = *v21;
          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H5
          }

          v223 = _S4 - (_S2 * _S4);
          if (_S2 == 1.0)
          {
            v224 = 0.0;
          }

          else
          {
            _S4 = _S2 * _S4;
            v224 = v223;
          }

          v225 = (v224 + _S5) - (_S3 * _S5);
          if (_S3 == 1.0)
          {
            v225 = v224;
          }

          _S4 = _S4 + v225;
          __asm { FCVT            H4, S4 }

          if (v25)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v75 = _H4;
            goto LABEL_277;
          }

          *v75 = _H4;
LABEL_279:
          v230 = &v21[v975];
          if (v230 >= v63)
          {
            v231 = -v45;
          }

          else
          {
            v231 = 0;
          }

          v8 += 2 * v44 + 2 * v231;
          v21 = &v230[v231];
          v66 += 2 * v25;
          v75 += v975;
          --v214;
        }

        while (v214);
        if (v988)
        {
          v232 = &v73[v992];
          if (v232 >= v988)
          {
            v233 = -(v989 * v976);
          }

          else
          {
            v233 = 0;
          }

          v74 += 2 * v989 + 2 * v233;
          if (v232 >= v988)
          {
            v234 = -(v992 * v976);
          }

          else
          {
            v234 = 0;
          }

          v73 = &v232[v234];
          v63 += 2 * v234 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v213)
        {
          goto LABEL_951;
        }
      }

    case 26:
      v548 = v1002[0];
      while (1)
      {
        v549 = v13;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v44)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_751;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v25)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v75 = *v21;
              __asm { FCVT            H2, S2 }

LABEL_749:
              *v66 = _H2;
              goto LABEL_751;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v21;
          _H5 = *v75;
          __asm
          {
            FCVT            S5, H5
            FCVT            S4, H4
          }

          v558 = _S4 - (_S3 * _S4);
          if (_S3 == 1.0)
          {
            v558 = 0.0;
          }

          v559 = (v558 + _S5) - (_S2 * _S5);
          if (_S2 != 1.0)
          {
            _S5 = _S2 * _S5;
            v558 = v559;
          }

          _S4 = _S5 + v558;
          __asm { FCVT            H4, S4 }

          if (v25)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v75 = _H4;
            goto LABEL_749;
          }

          *v75 = _H4;
LABEL_751:
          v564 = &v21[v975];
          if (v564 >= v63)
          {
            v565 = -v45;
          }

          else
          {
            v565 = 0;
          }

          v8 += 2 * v44 + 2 * v565;
          v21 = &v564[v565];
          v66 += 2 * v25;
          v75 += v975;
          --v549;
        }

        while (v549);
        if (v988)
        {
          v566 = &v73[v992];
          if (v566 >= v988)
          {
            v567 = -(v989 * v976);
          }

          else
          {
            v567 = 0;
          }

          v74 += 2 * v989 + 2 * v567;
          if (v566 >= v988)
          {
            v568 = -(v992 * v976);
          }

          else
          {
            v568 = 0;
          }

          v73 = &v566[v568];
          v63 += 2 * v568 + 2 * v992;
          v8 = v74;
          v21 = v73;
        }

        else
        {
          v21 += v992;
          v8 += 2 * v989;
        }

        v75 += v994;
        v66 += 2 * v996;
        if (!--v548)
        {
          goto LABEL_951;
        }
      }

    case 27:
      v84 = v1002[0];
      break;
    default:
      v986 = v73;
      v987 = v74;
      goto LABEL_952;
  }

LABEL_76:
  v85 = v13;
  while (1)
  {
    _S3 = 1.0;
    _S2 = 1.0;
    if (!v44)
    {
      goto LABEL_80;
    }

    __asm { FCMP            H2, #0 }

    if (!(_NF ^ _VF | _ZF))
    {
      break;
    }

LABEL_92:
    v100 = &v21[v975];
    if (v100 >= v63)
    {
      v101 = -v45;
    }

    else
    {
      v101 = 0;
    }

    v8 += 2 * v44 + 2 * v101;
    v21 = &v100[v101];
    v66 += 2 * v25;
    v75 += v975;
    if (!--v85)
    {
      if (v988)
      {
        v102 = &v73[v992];
        if (v102 >= v988)
        {
          v103 = -(v989 * v976);
        }

        else
        {
          v103 = 0;
        }

        v74 += 2 * v989 + 2 * v103;
        if (v102 >= v988)
        {
          v104 = -(v992 * v976);
        }

        else
        {
          v104 = 0;
        }

        v73 = &v102[v104];
        v63 += 2 * v104 + 2 * v992;
        v8 = v74;
        v21 = v73;
      }

      else
      {
        v21 += v992;
        v8 += 2 * v989;
      }

      v75 += v994;
      v66 += 2 * v996;
      if (!--v84)
      {
        goto LABEL_951;
      }

      goto LABEL_76;
    }
  }

  __asm { FCVT            S2, H2 }

LABEL_80:
  if (v25)
  {
    __asm { FCMP            H3, #0 }

    if (!(!_ZF & _CF))
    {
      *v75 = *v21;
      __asm { FCVT            H2, S2 }

LABEL_90:
      *v66 = _H2;
      goto LABEL_92;
    }

    __asm { FCVT            S3, H3 }
  }

  _H4 = *v75;
  _H5 = *v21;
  __asm
  {
    FCVT            S5, H5
    FCVT            S4, H4
  }

  v94 = _S4 - (_S2 * _S4);
  if (_S2 == 1.0)
  {
    v94 = 0.0;
  }

  v95 = (v94 + _S5) - (_S3 * _S5);
  if (_S3 != 1.0)
  {
    _S5 = _S3 * _S5;
    v94 = v95;
  }

  _S4 = _S5 + v94;
  __asm { FCVT            H4, S4 }

  if (!v25)
  {
    *v75 = _H4;
    goto LABEL_92;
  }

  _S2 = (_S2 + _S3) - (_S2 * _S3);
  __asm { FCVT            H2, S2 }

  *v75 = _H4;
  goto LABEL_90;
}