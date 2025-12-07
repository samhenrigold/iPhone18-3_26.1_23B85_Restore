void indexed_converter_info(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (*(a3 + 80) && (BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 200)), v30 = 0, (v9 = CGCMSConverterCreate(*(a1 + 24), BaseColorSpace, *(a1 + 84), *(a1 + 80), *(a1 + 72), &v30)) != 0))
  {
    v10 = v9;
    lookup_table = create_lookup_table(*(a1 + 200), BaseColorSpace, v9, *(a3 + 80));
    *(a4 + 24) = lookup_table;
    CFRelease(v10);
  }

  else
  {
    lookup_table = 0;
  }

  v12 = *(a2 + 80);
  if (v12)
  {
    v13 = *(a1 + 200);
    if (v13 && (v14 = *(v13 + 24), *(v14 + 28) == 5))
    {
      v15 = *(*(v14 + 96) + 8);
    }

    else
    {
      v15 = 1.84467441e19;
    }

    if (*v12 == 0.0 && v12[1] == v15)
    {
      v16 = 0;
      v17 = 0;
    }

    else if (*v12 == v15 && v12[1] == 0.0)
    {
      v16 = 1;
      v17 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 2;
    }

    v18 = lookup_table;
    if (lookup_table)
    {
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + 216);
      if (!v16)
      {
LABEL_30:
        *(a4 + 32) = v17;
        return;
      }
    }

    v19 = *(a1 + 208);
    v20 = *(a1 + 40);
    v21 = malloc_type_calloc(v20 * v19, 1uLL, 0x100004077774924uLL);
    v22 = v21;
    if (v19 && v21)
    {
      v23 = 0;
      v24 = &v18[v20 * (v19 - 1)];
      v25 = v21;
      do
      {
        v26 = v24;
        v27 = v25;
        for (i = v20; i; --i)
        {
          v29 = *v26++;
          *v27++ = v29;
        }

        ++v23;
        v25 += v20;
        v24 -= v20;
      }

      while (v23 != v19);
    }

    if (lookup_table)
    {
      free(lookup_table);
    }

    *(a4 + 24) = v22;
    goto LABEL_30;
  }
}

uint64_t convert_indexed(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = 1.0;
  if (*(a4 + 32) == 2)
  {
    v8 = (*(a2[10] + 1) - *a2[10]) / (*(a1 + 208) - 1);
    v9 = 1.0;
    v10 = v8 < 0.0 || v8 > 1.0;
    if (v8 <= 1.0 || v8 < 0.0)
    {
      v9 = 0.0;
    }

    if (v10)
    {
      v7 = v9;
    }

    else
    {
      v7 = (*(a2[10] + 1) - *a2[10]) / (*(a1 + 208) - 1);
    }
  }

  v11 = (a3 + 40);
  v12 = a2[6];
  v13 = v12 != 8 || (*(a3 + 40) - 7) > 2;
  v215 = *(a4 + 32);
  if (!v13)
  {
    v30 = *(a3 + 48);
    _ZF = v30 - 1 < 2 || v30 == 4;
    if (!_ZF)
    {
      _CGHandleAssert("convert_indexed_1_2_4_bit", 4127, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "bits_per_component == 1 || bits_per_component == 2 || bits_per_component == 4", "%lu bits per component content unhandled here", *(a3 + 48));
    }

    v32 = *(a4 + 24);
    if (!v32)
    {
      v32 = *(a1 + 216);
    }

    v34 = a2[1];
    v33 = a2[2];
    v35 = *a2;
    v36 = *a3;
    v37 = *(a1 + 40);
    memcpy(__dst, a2 + 5, 0x130uLL);
    BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
    if (v32)
    {
      v41 = *(a2 + 16);
      if (v41 == 8)
      {
        v42 = 1;
      }

      else
      {
        v42 = *(a2 + 16);
      }

      if (v41 == 9)
      {
        v43 = 3;
      }

      else
      {
        v43 = v42;
      }

      v44 = *(a3 + 64);
      if (v44 == 9)
      {
        v44 = 3;
      }

      else if (v44 == 8)
      {
        v44 = 1;
      }

      v213 = (v43 & 0xFFFFFFFD) == 4;
      v78 = flt_18439D2B8[v30 == 2];
      if (v30 == 1)
      {
        v78 = 0.0039216;
      }

      if (v33)
      {
        v79 = a2[3];
        v80 = *(a3 + 24);
        v81 = (*(a1 + 208) - 1);
        v83 = (v44 - 5) < 0xFFFFFFFC || (v43 - 5) < 0xFFFFFFFE;
        _ZF = v43 == 4;
        v84 = -1;
        if (!_ZF)
        {
          v84 = 1;
        }

        v85 = v30 - 24;
        while (!v34)
        {
LABEL_123:
          v35 += v79;
          v36 += v80;
          v33 = (v33 - 1);
          if (!v33)
          {
            return 1;
          }
        }

        LODWORD(i) = 0;
        v87 = 0;
        v88 = (v35 + v213);
        v89 = v34;
        v90 = v36;
        while (1)
        {
          v91 = *v88;
          if (v7 != 1.0)
          {
            v40 = v91 * v7 + 0.5 + *a2[10];
            v91 = v40;
          }

          if (v83)
          {
            LOBYTE(v92) = -1;
            if (!v44)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v92 = v88[v84];
            if (v215 == 2)
            {
              v40 = fmax(fmin(v92 * (*(a2[10] + 3) - *(a2[10] + 2)) + 0.5 + *(a2[10] + 2) * 255.0, 255.0), 0.0);
              v92 = v40;
            }

            else if (v215 == 1)
            {
              LOBYTE(v92) = ~v92;
            }
          }

          if (v44 == 4 || v44 == 2)
          {
            if (v30 < 0x19)
            {
              v93 = v30;
              if (i >= 8)
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (i >= 8)
              {
                for (i = i; i > 7; *v90++ = v87 >> i)
                {
                  i -= 8;
                }
              }

              v87 = (v92 >> v85) | (v87 << 24);
              LODWORD(i) = i | 0x18;
              v93 = v30 - 24;
LABEL_98:
              v94 = (i - 8);
              do
              {
                LODWORD(i) = i - 8;
                *v90++ = v87 >> v94;
                v94 -= 8;
              }

              while (i > 7);
            }

            v87 = ~(-1 << v93) & v92 | (v87 << v93);
            LODWORD(i) = i + v93;
          }

LABEL_101:
          if (v37)
          {
            v95 = 0;
            v96 = (v81 - v91) & ((v81 - v91) >> 31);
            v97 = v32 + v37 * (v91 + ((v81 - v91) & ((v81 - v91) >> 31)));
            while (1)
            {
              LOBYTE(v40) = *(v97 + v95);
              *&v40 = v78 * LODWORD(v40);
              LODWORD(v96) = llroundf(*&v40);
              if (v30 >= 0x19)
              {
                break;
              }

              v98 = v30;
              if (i >= 8)
              {
                goto LABEL_109;
              }

LABEL_111:
              v87 = ~(-1 << v98) & v96 | (v87 << v98);
              LODWORD(i) = i + v98;
              if (++v95 == v37)
              {
                goto LABEL_112;
              }
            }

            if (i >= 8)
            {
              for (i = i; i > 7; *v90++ = v87 >> i)
              {
                i -= 8;
              }
            }

            v87 = (v96 >> v85) | (v87 << 24);
            LODWORD(i) = i | 0x18;
            v98 = v30 - 24;
LABEL_109:
            v99 = (i - 8);
            do
            {
              LODWORD(i) = i - 8;
              *v90++ = v87 >> v99;
              v99 -= 8;
            }

            while (i > 7);
            goto LABEL_111;
          }

LABEL_112:
          if ((v44 & 0xFFFFFFFD) == 1)
          {
            if (v30 < 0x19)
            {
              v100 = v30;
              if (i >= 8)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (i >= 8)
              {
                for (i = i; i > 7; *v90++ = v87 >> i)
                {
                  i -= 8;
                }
              }

              v87 = (v92 >> v85) | (v87 << 24);
              LODWORD(i) = i | 0x18;
              v100 = v30 - 24;
LABEL_119:
              v101 = (i - 8);
              do
              {
                LODWORD(i) = i - 8;
                *v90++ = v87 >> v101;
                v101 -= 8;
              }

              while (i > 7);
            }

            v87 = ~(-1 << v100) & v92 | (v87 << v100);
            LODWORD(i) = i + v100;
          }

          v88 += BitsPerPixel >> 3;
          v89 = (v89 - 1);
          if (!v89)
          {
            goto LABEL_123;
          }
        }
      }

      return 1;
    }

    v61 = "convert_indexed_1_2_4_bit";
LABEL_294:
    CGPostError("%s : Unable to complete color conversion", v61);
    return 0;
  }

  if (v12 == 8)
  {
    v14 = *(a4 + 24);
    if (!v14)
    {
      v14 = *(a1 + 216);
    }

    v195 = v14;
    v15 = a2[2];
    v194 = a2[1];
    v16 = *a2;
    v17 = *a3;
    v18 = *(a1 + 40);
    memcpy(__dst, a2 + 5, 0x130uLL);
    v19 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
    memcpy(__dst, (a3 + 40), 0x130uLL);
    v20 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
    if (!v195)
    {
      v61 = "convert_indexed_8bit";
      goto LABEL_294;
    }

    v210 = v19;
    v21 = *v11;
    if (*v11 > 5 || ((1 << v21) & 0x36) == 0)
    {
      _CGHandleAssert("convert_indexed_8bit", 4224, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "unhandled component type %u", *v11);
    }

    v22 = v20;
    v192 = *(a3 + 24);
    v193 = a2[3];
    v23 = *(a1 + 208);
    Type = CGColorSpaceGetType(*(a1 + 24));
    memset(&v224, 0, sizeof(v224));
    memset(&v223, 0, sizeof(v223));
    memset(&v222, 0, sizeof(v222));
    if (Type == 5)
    {
      CGColorSpaceGetLabData(*(a1 + 24), &v222);
      *&v29 = 256.0;
    }

    else
    {
      *&v29 = 255.0;
    }

    v102 = *&v29;
    v103 = v215;
    v104 = v15;
    v106 = v194;
    v105 = v195;
    v107 = v16;
    v108 = v17;
    v109 = a2;
    v110 = *(a2 + 16);
    v112 = v192;
    v111 = v193;
    if (v110 == 9)
    {
      v110 = 3;
    }

    else if (v110 == 8)
    {
      v110 = 1;
    }

    v115 = *(a3 + 64);
    if (v115 == 9)
    {
      v116 = 3;
    }

    else if (v115 == 8)
    {
      v116 = 1;
    }

    else
    {
      v116 = *(a3 + 64);
    }

    v197 = (v110 & 0xFFFFFFFD) == 4;
    v118 = v116 == 2 || (v116 & 0xFFFFFFFD) == 4;
    v196 = v118;
    if (v15)
    {
      v119 = v210 >> 3;
      v120 = v22 >> 3;
      v121 = (v23 - 1);
      v123 = (v110 - 5) < 0xFFFFFFFE || v116 - 5 < 0xFFFFFFFC;
      if (v110 == 4)
      {
        v124 = -1;
      }

      else
      {
        v124 = 1;
      }

      v206 = v22 >> 5;
      v209 = v124;
      v214 = v22 >> 4;
      v190 = v119;
      v191 = v116;
      v189 = v22 >> 3;
      v187 = v123;
      v188 = (v23 - 1);
      while (!v106)
      {
LABEL_242:
        v107 += v111;
        v108 += v112;
        v104 = (v104 - 1);
        if (!v104)
        {
          v115 = *(a3 + 64);
          goto LABEL_244;
        }
      }

      v125 = (v108 + 4 * v196);
      v126 = (v108 + 2 * v196);
      v127 = (v108 + v196);
      v128 = (v107 + v197);
      v129 = v106;
      v130 = v126;
      while (1)
      {
        v131 = *v128;
        if (v7 != 1.0)
        {
          v131 = (v131 * v7 + 0.5 + *v109[10]);
        }

        v220 = v223;
        v221 = v224;
        _D0 = *&v222.data;
        v133 = *&v222.width;
        permuteMap = v222;
        if (v18)
        {
          v134 = 0;
          v135 = v105 + v18 * (v131 + ((v121 - v131) & ((v121 - v131) >> 31)));
          v136 = 32;
          do
          {
            if (v21 > 3)
            {
              if (v21 == 4)
              {
                __dst[1] = v220;
                __dst[2] = v221;
                v25 = *&permuteMap.width;
                v133 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v221.width), 1.0));
                __dst[0] = permuteMap;
                _D0 = 0.0;
                if (Type == 5)
                {
                  if (v134)
                  {
                    if (v134 <= 2)
                    {
                      _D0 = *(&__dst[0].data + v136);
                      v133 = *(&__dst[0].height + v136);
                      *&_D0 = _D0;
                      *&v133 = v133;
                    }
                  }

                  else
                  {
                    LODWORD(v133) = 1120403456;
                  }
                }

                LOBYTE(v25) = *(v135 + v134);
                *&v25 = LODWORD(v25);
                *&v133 = ((*&v133 - *&_D0) * *&v25) / v102;
                *&_D0 = *&_D0 + *&v133;
                *&v125[4 * v134] = LODWORD(_D0);
              }

              else
              {
                __dst[1] = v220;
                __dst[2] = v221;
                v25 = *&permuteMap.width;
                v133 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v221.width), 1.0));
                __dst[0] = permuteMap;
                _D0 = 0.0;
                if (Type == 5)
                {
                  if (v134)
                  {
                    if (v134 <= 2)
                    {
                      _D0 = *(&__dst[0].data + v136);
                      v133 = *(&__dst[0].height + v136);
                      *&_D0 = _D0;
                      *&v133 = v133;
                    }
                  }

                  else
                  {
                    LODWORD(v133) = 1120403456;
                  }
                }

                LOBYTE(v25) = *(v135 + v134);
                *&v25 = LODWORD(v25);
                *&v133 = ((*&v133 - *&_D0) * *&v25) / v102;
                *&_D0 = *&_D0 + *&v133;
                __asm { FCVT            H0, S0 }

                *&v126[2 * v134] = LOWORD(_D0);
              }
            }

            else if (v21 == 1)
            {
              v127[v134] = *(v135 + v134);
            }

            else
            {
              if (v21 != 2)
              {
                _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u");
              }

              v130[v134] = *(v135 + v134) | (*(v135 + v134) << 8);
            }

            ++v134;
            v136 += 16;
          }

          while (v18 != v134);
        }

        if (v116)
        {
          if (v123)
          {
            LOWORD(v139) = 255;
          }

          else
          {
            v139 = v128[v209];
            if (v103 == 2)
            {
              v140 = v109[10];
              v133 = *(v140 + 2);
              v25 = v139;
              _D0 = fmax(fmin(v139 * (*(v140 + 3) - v133) + 0.5 + v133 * 255.0, 255.0), 0.0);
              v139 = _D0;
            }

            else if (v103 == 1)
            {
              LOWORD(v139) = ~v139;
            }
          }

          if (v116 > 6)
          {
LABEL_340:
            _CGHandleAssert("write_out_alpha", 4062, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled alpha info %u", v116);
          }

          if (((1 << v116) & 0x2A) != 0)
          {
            v141 = &v127[v18];
            v142 = &v130[v18];
            v143 = &v126[2 * v18];
            v144 = &v125[4 * v18];
          }

          else
          {
            if (((1 << v116) & 0x54) == 0)
            {
              goto LABEL_340;
            }

            v141 = v127 - 1;
            v142 = v130 - 1;
            v143 = v126 - 2;
            v144 = v125 - 4;
          }

          if (v21 > 3)
          {
            if (v21 == 4)
            {
              if (v139 == 0xFF)
              {
                *v144 = 1065353216;
                goto LABEL_231;
              }

              _D0 = v139 / 255.0;
              *&_D0 = _D0;
              *v144 = LODWORD(_D0);
              if (v116 > 2)
              {
                goto LABEL_231;
              }

              if (!v139)
              {
                if (v18)
                {
                  v199 = v108;
                  v201 = v107;
                  v203 = v104;
                  bzero(v125, 4 * v18);
                  v123 = v187;
                  v121 = v188;
                  v120 = v189;
                  v119 = v190;
                  v116 = v191;
                  v112 = v192;
                  v111 = v193;
                  v106 = v194;
                  v108 = v199;
                  v107 = v201;
                  v104 = v203;
                  v105 = v195;
                  v103 = v215;
                  v109 = a2;
                }

LABEL_231:
                v128 += v119;
LABEL_232:
                v125 += 4 * v206;
                goto LABEL_236;
              }

              v153 = v125;
              v154 = v18;
              if (!v18)
              {
                goto LABEL_231;
              }

              do
              {
                LODWORD(v133) = *v144;
                *&_D0 = *v153 * *v144;
                *v153++ = *&_D0;
                --v154;
              }

              while (v154);
            }

            else
            {
              if (v139 == 0xFF)
              {
                *v143 = COERCE_UNSIGNED_INT(1.0);
LABEL_234:
                v128 += v119;
LABEL_235:
                v126 += 2 * v214;
                goto LABEL_236;
              }

              WORD1(v133) = 17279;
              *&_D0 = v139 / 255.0;
              __asm { FCVT            H0, S0 }

              *v143 = LOWORD(_D0);
              if (v116 > 2)
              {
                goto LABEL_234;
              }

              if (!v139)
              {
                if (v18)
                {
                  v198 = v108;
                  v200 = v107;
                  v202 = v104;
                  bzero(v126, 2 * v18);
                  v123 = v187;
                  v121 = v188;
                  v120 = v189;
                  v119 = v190;
                  v116 = v191;
                  v112 = v192;
                  v111 = v193;
                  v106 = v194;
                  v108 = v198;
                  v107 = v200;
                  v104 = v202;
                  v105 = v195;
                  v103 = v215;
                  v109 = a2;
                }

                goto LABEL_234;
              }

              v148 = v126;
              v149 = v18;
              if (!v18)
              {
                goto LABEL_234;
              }

              do
              {
                LOWORD(v133) = *v143;
                *&_D0 = *v148 * *v143;
                *v148++ = *&_D0;
                --v149;
              }

              while (v149);
            }
          }

          else if (v21 == 1)
          {
            *v141 = v139;
            if (!v18 || v116 > 2 || v139 == 0xFF)
            {
              v128 += v119;
LABEL_229:
              v127 += v120;
              goto LABEL_236;
            }

            v150 = v139 | (v139 << 8);
            v151 = v127;
            v152 = v18;
            do
            {
              *v151 = (v150 * *v151 + 0x7FFF) >> 16;
              ++v151;
              --v152;
            }

            while (v152);
          }

          else
          {
            if (v21 != 2)
            {
              _CGHandleAssert("write_out_alpha", 4080, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v21);
            }

            *v142 = v139 | (v139 << 8);
            if (!v18 || v116 > 2 || v139 == 0xFF)
            {
              v128 += v119;
              goto LABEL_227;
            }

            v145 = v139 | (v139 << 8);
            v146 = v130;
            v147 = v18;
            do
            {
              *v146 = (v145 * *v146 + 0x7FFF) >> 16;
              ++v146;
              --v147;
            }

            while (v147);
          }
        }

        v128 += v119;
        if (v21 > 3)
        {
          if (v21 != 4)
          {
            goto LABEL_235;
          }

          goto LABEL_232;
        }

        if (v21 == 1)
        {
          goto LABEL_229;
        }

        if (v21 != 2)
        {
          _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", _D0, v133, v25, v26, v27, v28);
        }

LABEL_227:
        v130 += v214;
LABEL_236:
        v129 = (v129 - 1);
        if (!v129)
        {
          goto LABEL_242;
        }
      }
    }

LABEL_244:
    if ((v115 - 1) > 8)
    {
      v155 = 0;
    }

    else
    {
      v155 = qword_1844E0DE8[v115 - 1];
    }

    if (*(a3 + 68) == 0x2000 && *(a3 + 40) == 1 && v155 + *(a3 + 56) == 4)
    {
      v156 = *a3;
      v157 = *(a3 + 8) * *(a3 + 16);
      LODWORD(permuteMap.data) = 66051;
      __dst[0].data = v156;
      __dst[0].height = 1;
      __dst[0].width = v157 & 0x3FFFFFFFFFFFFFFFLL;
      __dst[0].rowBytes = 4 * v157;
      vImagePermuteChannels_ARGB8888(__dst, __dst, &permuteMap, 0);
    }

    return 1;
  }

  if (v12 == 32)
  {
    if (*(a2 + 10) == 4)
    {
      v62 = *(a4 + 24);
      memcpy(__dst, a2 + 5, 0x130uLL);
      if (CGBitmapPixelInfoGetBitsPerPixel(__dst) != 32 || a2[6] != 32)
      {
        memcpy(__dst, a2 + 5, 0x130uLL);
        v185 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
        _CGHandleAssert("convert_indexed_float", 4425, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 32 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 32", "invalid pixel type bpp %lu bpc %lu", v185, a2[6]);
      }

      if (!v62)
      {
        v62 = *(a1 + 216);
      }

      v64 = a2[1];
      v63 = a2[2];
      v65 = *a2;
      v66 = a3;
      v67 = *a3;
      v68 = *(a1 + 40);
      memcpy(__dst, a2 + 5, 0x130uLL);
      v69 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
      memcpy(__dst, v11, 0x130uLL);
      v70 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
      if (!v62)
      {
        v61 = "convert_indexed_float";
        goto LABEL_294;
      }

      v208 = v70;
      v212 = v69;
      v71 = *v11;
      if (v71 > 5 || ((1 << v71) & 0x36) == 0)
      {
        _CGHandleAssert("convert_indexed_float", 4450, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type %u", v71);
      }

      v217 = a2[3];
      v72 = *(v66 + 24);
      v205 = *(a1 + 208);
      v73 = CGColorSpaceGetType(*(a1 + 24));
      LabData.n128_u32[1] = 0;
      memset(&v224, 0, sizeof(v224));
      memset(&v223, 0, sizeof(v223));
      memset(&v222, 0, sizeof(v222));
      if (v73 == 5)
      {
        LabData = CGColorSpaceGetLabData(*(a1 + 24), &v222);
        v77 = 256.0;
      }

      else
      {
        v77 = 255.0;
      }

      LabData.n128_f32[0] = v77;
      if (v63)
      {
        *&v74 = v7;
        v158 = v208 >> 6;
        LODWORD(v75) = 1.0;
        LODWORD(_D3) = 0.5;
        v159 = 0.0;
        do
        {
          if (v64)
          {
            v160 = v64;
            v161 = v65;
            v162 = v67;
            v163 = v67;
            v164 = v67;
            v165 = v67;
            do
            {
              *&_D5 = *v161 * 255.0;
              if (*&v74 != 1.0)
              {
                _D5 = *a2[10] + ((*&_D5 * *&v74) + 0.5);
                *&_D5 = _D5;
              }

              *&_D5 = fmaxf(*&_D5, 0.0);
              if (*&_D5 > 255.0)
              {
                *&_D5 = 255.0;
              }

              v220 = v223;
              v221 = v224;
              permuteMap = v222;
              if (v68)
              {
                v166 = 0;
                v167 = v62 + v68 * (((v205 - 1 - *&_D5) & (((v205 - 1) - *&_D5) >> 31)) + *&_D5);
                v168 = 32;
                do
                {
                  if (v71 > 3)
                  {
                    if (v71 == 4)
                    {
                      __dst[1] = v220;
                      __dst[2] = v221;
                      width = permuteMap.width;
                      v172 = 1.0;
                      __dst[0] = permuteMap;
                      _D5 = 0.0;
                      if (v73 == 5)
                      {
                        if (v166)
                        {
                          if (v166 <= 2)
                          {
                            _D5 = *(&__dst[0].data + v168);
                            *&_D5 = _D5;
                            v172 = *(&__dst[0].height + v168);
                          }
                        }

                        else
                        {
                          v172 = 100.0;
                        }
                      }

                      LOBYTE(width) = *(v167 + v166);
                      *&_D5 = *&_D5 + (((v172 - *&_D5) * width) / v77);
                      *(v162 + 4 * v166) = LODWORD(_D5);
                    }

                    else
                    {
                      __dst[1] = v220;
                      __dst[2] = v221;
                      v169 = permuteMap.width;
                      v170 = 1.0;
                      __dst[0] = permuteMap;
                      _D5 = 0.0;
                      if (v73 == 5)
                      {
                        if (v166)
                        {
                          if (v166 <= 2)
                          {
                            _D5 = *(&__dst[0].data + v168);
                            *&_D5 = _D5;
                            v170 = *(&__dst[0].height + v168);
                          }
                        }

                        else
                        {
                          v170 = 100.0;
                        }
                      }

                      LOBYTE(v169) = *(v167 + v166);
                      *&_D5 = *&_D5 + (((v170 - *&_D5) * v169) / v77);
                      __asm { FCVT            H5, S5 }

                      *(v163 + 2 * v166) = LOWORD(_D5);
                    }
                  }

                  else if (v71 == 1)
                  {
                    *(v165 + v166) = *(v167 + v166);
                  }

                  else
                  {
                    if (v71 != 2)
                    {
LABEL_335:
                      _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u");
                    }

                    *(v164 + 2 * v166) = *(v167 + v166) | (*(v167 + v166) << 8);
                  }

                  ++v166;
                  v168 += 16;
                }

                while (v68 != v166);
              }

              if (v71 > 3)
              {
                if (v71 == 4)
                {
                  v162 += 4 * (v208 >> 7);
                }

                else
                {
                  v163 += 2 * v158;
                }
              }

              else if (v71 == 1)
              {
                v165 += v208 >> 5;
              }

              else
              {
                if (v71 != 2)
                {
LABEL_338:
                  _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", LabData.n128_f64[0], v74, v75, _D3, v159, _D5);
                }

                v164 += 2 * v158;
              }

              v161 += v212 >> 5;
              v160 = (v160 - 1);
            }

            while (v160);
          }

          v65 = (v217 + v65);
          v67 += v72;
          v63 = (v63 - 1);
        }

        while (v63);
      }

      return 1;
    }

LABEL_341:
    CGPostError("%s : Unable to complete color conversion", "convert_indexed");
    _CGHandleAssert("convert_indexed", 4508, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "", "Unimplemented");
  }

  if (v12 != 16)
  {
    goto LABEL_341;
  }

  v45 = *(a2 + 10);
  if (v45 != 5)
  {
    if (v45 == 2)
    {
      v46 = *(a4 + 24);
      memcpy(__dst, a2 + 5, 0x130uLL);
      if (CGBitmapPixelInfoGetBitsPerPixel(__dst) != 16 || a2[6] != 16 || *(a2 + 10) != 2)
      {
        memcpy(__dst, a2 + 5, 0x130uLL);
        v186 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
        _CGHandleAssert("convert_indexed_16bit", 4298, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 16 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 16 && CGBitmapPixelInfoGetCGPixelComponentType(src->pixel_info) == kCGPixelComponent16BitInteger", "bpp %lu  bpc %lu  type %u", v186, a2[6], *(a2 + 10));
      }

      if (!v46)
      {
        v46 = *(a1 + 216);
      }

      v48 = a2[1];
      v47 = a2[2];
      v49 = *a2;
      v50 = a3;
      v51 = *a3;
      v52 = *(a1 + 40);
      memcpy(__dst, a2 + 5, 0x130uLL);
      v53 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
      memcpy(__dst, v11, 0x130uLL);
      v54 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
      if (!v46)
      {
        v61 = "convert_indexed_16bit";
        goto LABEL_294;
      }

      v207 = v54;
      v211 = v53;
      v55 = *v11;
      if (v55 > 5 || ((1 << v55) & 0x36) == 0)
      {
        _CGHandleAssert("convert_indexed_16bit", 4323, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type = %u", v55);
      }

      v216 = a2[3];
      v56 = *(v50 + 24);
      v204 = *(a1 + 208);
      v57 = CGColorSpaceGetType(*(a1 + 24));
      LabData.n128_u32[1] = 0;
      memset(&v224, 0, sizeof(v224));
      memset(&v223, 0, sizeof(v223));
      memset(&v222, 0, sizeof(v222));
      if (v57 == 5)
      {
        LabData = CGColorSpaceGetLabData(*(a1 + 24), &v222);
        v60 = 256.0;
      }

      else
      {
        v60 = 255.0;
      }

      LabData.n128_f32[0] = v60;
      if (v47)
      {
        v173 = v207 >> 5;
        v74 = 1.0;
        v75 = 0.5;
        do
        {
          if (v48)
          {
            v174 = v48;
            v175 = v49;
            v176 = v51;
            v177 = v51;
            v178 = v51;
            v179 = v51;
            do
            {
              v180 = *v175;
              if (v7 != 1.0)
              {
                v180 = (v180 * v7 + 0.5 + *a2[10]);
              }

              v181 = v180 >> 8;
              v220 = v223;
              v221 = v224;
              _D3 = *&v222.data;
              v159 = *&v222.width;
              permuteMap = v222;
              if (v52)
              {
                v182 = 0;
                v183 = v46 + v52 * (v181 + ((v204 - 1 - v181) & (((v204 - 1) - v181) >> 31)));
                v184 = 32;
                do
                {
                  if (v55 > 3)
                  {
                    if (v55 == 4)
                    {
                      __dst[1] = v220;
                      __dst[2] = v221;
                      _D5 = *&permuteMap.width;
                      v159 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v221.width), 1.0));
                      __dst[0] = permuteMap;
                      _D3 = 0.0;
                      if (v57 == 5)
                      {
                        if (v182)
                        {
                          if (v182 <= 2)
                          {
                            _D3 = *(&__dst[0].data + v184);
                            v159 = *(&__dst[0].height + v184);
                            *&_D3 = _D3;
                            *&v159 = v159;
                          }
                        }

                        else
                        {
                          LODWORD(v159) = 1120403456;
                        }
                      }

                      LOBYTE(_D5) = *(v183 + v182);
                      *&_D5 = LODWORD(_D5);
                      *&v159 = ((*&v159 - *&_D3) * *&_D5) / v60;
                      *&_D3 = *&_D3 + *&v159;
                      *(v176 + 4 * v182) = LODWORD(_D3);
                    }

                    else
                    {
                      __dst[1] = v220;
                      __dst[2] = v221;
                      _D5 = *&permuteMap.width;
                      v159 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v221.width), 1.0));
                      __dst[0] = permuteMap;
                      _D3 = 0.0;
                      if (v57 == 5)
                      {
                        if (v182)
                        {
                          if (v182 <= 2)
                          {
                            _D3 = *(&__dst[0].data + v184);
                            v159 = *(&__dst[0].height + v184);
                            *&_D3 = _D3;
                            *&v159 = v159;
                          }
                        }

                        else
                        {
                          LODWORD(v159) = 1120403456;
                        }
                      }

                      LOBYTE(_D5) = *(v183 + v182);
                      *&_D5 = LODWORD(_D5);
                      *&v159 = ((*&v159 - *&_D3) * *&_D5) / v60;
                      *&_D3 = *&_D3 + *&v159;
                      __asm { FCVT            H3, S3 }

                      *(v177 + 2 * v182) = LOWORD(_D3);
                    }
                  }

                  else if (v55 == 1)
                  {
                    *(v179 + v182) = *(v183 + v182);
                  }

                  else
                  {
                    if (v55 != 2)
                    {
                      goto LABEL_335;
                    }

                    *(v178 + 2 * v182) = *(v183 + v182) | (*(v183 + v182) << 8);
                  }

                  ++v182;
                  v184 += 16;
                }

                while (v52 != v182);
              }

              if (v55 > 3)
              {
                if (v55 == 4)
                {
                  v176 += 4 * (v207 >> 6);
                }

                else
                {
                  v177 += 2 * v173;
                }
              }

              else if (v55 == 1)
              {
                v179 += v207 >> 4;
              }

              else
              {
                if (v55 != 2)
                {
                  goto LABEL_338;
                }

                v178 += 2 * v173;
              }

              v175 += v211 >> 4;
              v174 = (v174 - 1);
            }

            while (v174);
          }

          v49 = (v216 + v49);
          v51 += v56;
          v47 = (v47 - 1);
        }

        while (v47);
      }

      return 1;
    }

    goto LABEL_341;
  }

  v113 = *(a4 + 24);

  return convert_indexed_float16(a1, a2, a3, v113, v7);
}

uint64_t convert_indexed_float16(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v79 = a1;
  v78 = a2;
  v77 = a3;
  v76 = a4;
  v75 = a5;
  memcpy(__dst, (a2 + 40), sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  v6 = 0;
  if (BitsPerPixel == 16)
  {
    memcpy(v73, (v78 + 40), sizeof(v73));
    CGBitmapPixelInfoGetBitsPerComponent();
    v6 = 0;
    if (v7 == 16)
    {
      memcpy(v72, (v78 + 40), sizeof(v72));
      CGBitmapPixelInfoGetBitsPerComponent();
      v6 = v8 == 5;
    }
  }

  if (!v6)
  {
    memcpy(v71, (v78 + 40), sizeof(v71));
    v9 = CGBitmapPixelInfoGetBitsPerPixel(v71);
    memcpy(v70, (v78 + 40), sizeof(v70));
    v10 = v70[1];
    CGBitmapPixelInfoGetBitsPerComponent();
    memcpy(v69, (v78 + 40), sizeof(v69));
    CGBitmapPixelInfoGetBitsPerComponent();
    _CGHandleAssert("convert_indexed_float16", 4361, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 16 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 16 && CGBitmapPixelInfoGetCGPixelComponentType(src->pixel_info) == kCGPixelComponent16BitFloat", "bpp %lu  bpc %lu  type %u", v9, v10, v11);
  }

  if (!v76)
  {
    v76 = *(v79 + 216);
  }

  v68 = *(v78 + 8);
  v67 = *(v78 + 16);
  v66 = *v78;
  v65 = *v77;
  v64 = *(v79 + 40);
  memcpy(v62, (v78 + 40), sizeof(v62));
  v63 = CGBitmapPixelInfoGetBitsPerPixel(v62) >> 4;
  memcpy(v60, v77 + 5, sizeof(v60));
  v61 = CGBitmapPixelInfoGetBitsPerPixel(v60) >> 4;
  v59 = *(v78 + 24);
  v58 = v77[3];
  v57 = *(v79 + 208) - 1;
  if (v76)
  {
    memcpy(v54, v77 + 5, sizeof(v54));
    CGBitmapPixelInfoGetBitsPerComponent();
    v55 = v12;
    v13 = 1;
    if (v12 != 1)
    {
      v13 = 1;
      if (v55 != 2)
      {
        v13 = 1;
        if (v55 != 5)
        {
          v13 = v55 == 4;
        }
      }
    }

    if (!v13)
    {
      _CGHandleAssert("convert_indexed_float16", 4386, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type %u", v55);
    }

    Type = CGColorSpaceGetType(*(v79 + 24));
    memset(__b, 0, sizeof(__b));
    if (Type == 5)
    {
      CGColorSpaceGetLabData(*(v79 + 24), __b);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    v14 = 256.0;
    if (Type != 5)
    {
      v14 = 255.0;
    }

    v51 = v14;
    v15 = v75;
    v50 = v15;
    while (v67--)
    {
      v49 = v68;
      v48 = v66;
      v47 = v65;
      v46 = v65;
      v45 = v65;
      for (i = v65; v49--; increment_dest_pointer(v55, &v47, &v46, &v45, &i, v61))
      {
        _H0 = *v48;
        __asm { FCVT            S0, H0 }

        _S0 = _S0 * 255.0;
        __asm { FCVT            H0, S0 }

        v43 = LOWORD(_S0);
        if (v50 != 1.0)
        {
          v25 = **(v78 + 80);
          _H1 = v43;
          __asm { FCVT            S1, H1 }

          _S0 = v25 + ((_S1 * v50) + 0.5);
          __asm { FCVT            H0, S0 }

          v43 = LOWORD(_S0);
        }

        _H0 = v43;
        __asm { FCVT            S0, H0 }

        if (_S0 <= 0.0)
        {
          _S0 = 0.0;
        }

        else
        {
          _H0 = v43;
          __asm { FCVT            S0, H0 }
        }

        if (_S0 <= 255.0)
        {
          _H0 = v43;
          __asm { FCVT            S0, H0 }

          if (_S0 <= 0.0)
          {
            _S0 = 0;
          }

          else
          {
            _H0 = v43;
            __asm { FCVT            S0, H0 }
          }
        }

        else
        {
          _S0 = 1132396544;
        }

        __asm { FCVT            H0, S0 }

        v43 = _H0;
        __asm { FCVT            S0, H0 }

        v42 = _S0;
        pixel_ptr = get_pixel_ptr(v76, v42, v57, v64);
        memcpy(v40, __b, sizeof(v40));
        write_out_pixel(v55, v47, v46, v45, i, pixel_ptr, Type, v40, v51, v64);
        v48 += v63;
      }

      v66 = (v66 + v59);
      v65 += v58;
    }

    v80 = 1;
    v56 = 1;
  }

  else
  {
    CGPostError("%s : Unable to complete color conversion", "convert_indexed_float16");
    v80 = 0;
    v56 = 1;
  }

  return v80 & 1;
}

uint64_t write_out_pixel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, __int128 *a8, float a9, uint64_t a10)
{
  if (a10)
  {
    v10 = 0;
    v11 = 32;
    do
    {
      if (result > 3)
      {
        if (result == 4)
        {
          v17 = a8[3];
          v29 = a8[2];
          v30 = v17;
          v18 = a8[5];
          v31 = a8[4];
          v32 = v18;
          v19 = a8[1];
          v20 = 1.0;
          v27 = *a8;
          v28 = v19;
          v21 = 0.0;
          if (a7 == 5)
          {
            if (v10)
            {
              if (v10 <= 2)
              {
                v21 = *(&v27 + v11);
                v20 = *(&v27 + v11 + 8);
              }
            }

            else
            {
              v20 = 100.0;
            }
          }

          LOBYTE(v19) = *(a6 + v10);
          *(a5 + 4 * v10) = v21 + (((v20 - v21) * v19) / a9);
        }

        else
        {
          if (result != 5)
          {
LABEL_24:
            _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", result);
          }

          v12 = a8[3];
          v29 = a8[2];
          v30 = v12;
          v13 = a8[5];
          v31 = a8[4];
          v32 = v13;
          v14 = a8[1];
          v15 = 1.0;
          v27 = *a8;
          v28 = v14;
          v16 = 0.0;
          if (a7 == 5)
          {
            if (v10)
            {
              if (v10 <= 2)
              {
                v16 = *(&v27 + v11);
                v15 = *(&v27 + v11 + 8);
              }
            }

            else
            {
              v15 = 100.0;
            }
          }

          LOBYTE(v14) = *(a6 + v10);
          _S1 = v16 + (((v15 - v16) * v14) / a9);
          __asm { FCVT            H1, S1 }

          *(a4 + 2 * v10) = LOWORD(_S1);
        }
      }

      else if (result == 1)
      {
        *(a2 + v10) = *(a6 + v10);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_24;
        }

        *(a3 + 2 * v10) = *(a6 + v10) | (*(a6 + v10) << 8);
      }

      ++v10;
      v11 += 16;
    }

    while (a10 != v10);
  }

  return result;
}

uint64_t increment_dest_pointer(uint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (result > 3)
  {
    if (result == 4)
    {
      *a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      if (result != 5)
      {
        goto LABEL_10;
      }

      *a4 += a6 & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    if (result != 1)
    {
      if (result == 2)
      {
        *a3 += a6 & 0xFFFFFFFFFFFFFFFELL;
        return result;
      }

LABEL_10:
      _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", result);
    }

    *a2 += a6;
  }

  return result;
}

uint64_t convert_src_data_to_float(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 64) ? 3 : 0;
  v6 = *(a2 + 64) ? 128 : 96;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  srcs.data = *a2;
  v9 = vextq_s8(v7, v7, 8uLL);
  *&srcs.height = v9;
  if (!v8)
  {
    v12 = v7.i64[0];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    v8 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) >> 3) * v12;
    v7 = *(a2 + 8);
    v9 = vextq_s8(v7, v7, 8uLL);
  }

  srcs.rowBytes = v8;
  *__dst = *(a1 + 32);
  *&__dst[8] = v9;
  *&__dst[24] = (v7.i64[0] * v6) >> 3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (vImageConvert_AnyToAny(v2, &srcs, __dst, v10, 0x10u))
  {
    return 0xFFFFFFFFLL;
  }

  return v5;
}

BOOL convert_float_to_dst_data(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  srcs.data = *(a1 + 40);
  v5 = *(a3 + 8);
  v6 = vextq_s8(v5, v5, 8uLL);
  *&srcs.height = v6;
  v7 = 12;
  if (a2)
  {
    v7 = 16;
  }

  v8 = v5.i64[0];
  srcs.rowBytes = v7 * v5.i64[0];
  v9 = *(a3 + 24);
  v12.data = *a3;
  *&v12.height = v6;
  if (!v9)
  {
    memcpy(__dst, (a3 + 40), sizeof(__dst));
    v9 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) >> 3) * v8;
  }

  v12.rowBytes = v9;
  v10 = *(a1 + 24);
  return v10 && vImageConvert_AnyToAny(v3, &srcs, &v12, v10, 0x10u) == 0;
}

uint64_t (*__convert_using_colorsync_transform_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformConvert");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  convert_using_colorsync_transform_f = v1;
  return result;
}

uint64_t convert_Lab_to_device(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if (v3 != v4 || v3 > 5 || ((1 << v3) & 0x36) == 0)
  {
    _CGHandleAssert("convert_Lab_to_device", 3791, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "src_component == dst_component && (src_component == kCGPixelComponent8BitInteger || src_component == kCGPixelComponent16BitInteger || src_component == kCGPixelComponent16BitFloat || src_component == kCGPixelComponent32BitFloat)", "invalid src (%u) dest (%u) component types", *(a2 + 40), v4);
  }

  Type = CGColorSpaceGetType(*(a1 + 24));
  if (Type != 1)
  {
    v11 = Type;
    memcpy(__dst, a3, sizeof(__dst));
    v12 = *(a3 + 8);
    v13 = *(a3 + 16);
    if (!is_mul_ok(v12, v13) || (v14 = v12 * v13, !is_mul_ok(v14, 3uLL)) || (v15 = 3 * v14, v16 = *(a3 + 48) >> 3, !is_mul_ok(v15, v16)) || (v17 = malloc_type_calloc(v15 * v16, 1uLL, 0xB00B3B8AuLL)) == 0)
    {
      CGPostError("%s : Unable to allocate", "convert_Lab_to_device");
      return 0;
    }

    v18 = v17;
    __dst[0] = v17;
    Lab_to_rgb(a2, __dst);
    if (v11 == 2)
    {
      rgb_to_cmyk(__dst, a3);
    }

    else
    {
      if (v11)
      {
        v10 = 0;
        goto LABEL_22;
      }

      rgb_to_gray(__dst, a3);
    }

    v10 = 1;
LABEL_22:
    free(v18);
    return v10;
  }

  Lab_to_rgb(a2, a3);
  return 1;
}

void Lab_to_rgb(uint64_t *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2 + 5;
  v5 = *a2;
  memcpy(__dst, a1 + 5, sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  v7 = v4;
  v8 = v3;
  memcpy(__dst, v7, sizeof(__dst));
  v9 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  v11 = a1[2];
  if (v11)
  {
    v12 = 0;
    v13 = a1[6];
    v14 = BitsPerPixel >> 3;
    v15 = v9 >> 3;
    v16 = a1[1];
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = v5;
        v30 = v8;
        do
        {
          switch(v13)
          {
            case 32:
              pixel_Lab_to_rgb(v18, v8);
              break;
            case 16:
              LOWORD(v10) = *v8;
              v24 = *(v8 + 3) - 128;
              __dst[0] = (LODWORD(v10) * 100.0) / 65535.0;
              __dst[1] = v24;
              __dst[2] = v24;
              pixel_Lab_to_rgb(&v31, __dst);
              v25 = v32;
              v26 = (v31 * 65535.0 + 0.5);
              if (v26 >= 255)
              {
                v26 = 255;
              }

              *v18 = v26 & ~(v26 >> 31);
              v27 = (v25 * 65535.0 + 0.5);
              if (v27 >= 255)
              {
                v27 = 255;
              }

              *(v18 + 2) = v27 & ~(v27 >> 31);
              v10 = v33 * 65535.0 + 0.5;
              v28 = v10;
              if (v10 >= 255)
              {
                v28 = 255;
              }

              *(v18 + 4) = v28 & ~(v28 >> 31);
              break;
            case 8:
              LOBYTE(v10) = *v8;
              v19 = *(v8 + 1) - 128;
              __dst[0] = (LODWORD(v10) * 100.0) / 255.0;
              __dst[1] = v19;
              __dst[2] = v19;
              pixel_Lab_to_rgb(&v31, __dst);
              v20 = v32;
              v21 = (v31 * 255.0 + 0.5);
              if (v21 >= 255)
              {
                v21 = 255;
              }

              *v18 = v21 & ~(v21 >> 31);
              v22 = (v20 * 255.0 + 0.5);
              if (v22 >= 255)
              {
                v22 = 255;
              }

              *(v18 + 1) = v22 & ~(v22 >> 31);
              v10 = v33 * 255.0 + 0.5;
              v23 = v10;
              if (v10 >= 255)
              {
                v23 = 255;
              }

              *(v18 + 2) = v23 & ~(v23 >> 31);
              break;
          }

          v8 += v14;
          v18 += v15;
          ++v17;
          v16 = a1[1];
        }

        while (v17 < v16);
        v11 = a1[2];
        v8 = v30;
      }

      v8 += a1[3];
      v5 += a2[3];
      ++v12;
    }

    while (v12 < v11);
  }
}

unint64_t rgb_to_gray(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2 + 5;
  v6 = *a2;
  memcpy(v25, a1 + 5, sizeof(v25));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(v25);
  memcpy(v25, v5, sizeof(v25));
  result = CGBitmapPixelInfoGetBitsPerPixel(v25);
  v11 = a1[2];
  if (v11)
  {
    v12 = 0;
    v13 = a1[6];
    v14 = a1[1];
    v15 = v14;
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = (v4 + 4);
        v18 = v6;
        do
        {
          switch(v13)
          {
            case 32:
              v10 = v17[1];
              v9 = *v17 * 0.59 + *(v17 - 1) * 0.3 + v10 * 0.11;
              *&v9 = v9;
              if (*&v9 <= 1.0)
              {
                *&v10 = *&v9;
              }

              else
              {
                *&v10 = 1.0;
              }

              if (*&v9 >= 0.0)
              {
                *&v9 = *&v10;
              }

              else
              {
                *&v9 = 0.0;
              }

              *v18 = LODWORD(v9);
              break;
            case 16:
              LOWORD(v9) = *(v17 - 2);
              LOWORD(v10) = *(v17 - 1);
              *&v22 = *&v10 * 0.59;
              v23 = *&v22 + *&v9 * 0.3;
              LOWORD(v22) = *v17;
              v10 = v22;
              v9 = v23 + v10 * 0.11;
              v24 = v9;
              if (v9 >= 255)
              {
                v24 = 255;
              }

              *v18 = v24 & ~(v24 >> 31);
              break;
            case 8:
              LOBYTE(v9) = *(v17 - 4);
              LOBYTE(v10) = *(v17 - 3);
              *&v19 = *&v10 * 0.59;
              v20 = *&v19 + *&v9 * 0.3;
              LOBYTE(v19) = *(v17 - 2);
              v10 = v19;
              v9 = v20 + v10 * 0.11;
              v21 = v9;
              if (v9 >= 255)
              {
                v21 = 255;
              }

              *v18 = v21 & ~(v21 >> 31);
              v14 = a1[1];
              break;
          }

          v18 = (v18 + (result >> 3));
          ++v16;
          v17 = (v17 + (BitsPerPixel >> 3));
        }

        while (v16 < v14);
        v11 = a1[2];
        v15 = v14;
      }

      v4 += a1[3];
      v6 = (v6 + a2[3]);
      ++v12;
    }

    while (v12 < v11);
  }

  return result;
}

unint64_t rgb_to_cmyk(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a2 + 5;
  v6 = *a2;
  memcpy(v49, a1 + 5, sizeof(v49));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(v49);
  memcpy(v49, v5, sizeof(v49));
  result = CGBitmapPixelInfoGetBitsPerPixel(v49);
  v9 = a1[2];
  if (v9)
  {
    v10 = 0;
    v11 = a1[6];
    v12 = result >> 3;
    v13 = a1[1];
    v14 = v13;
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = (v4 + 4);
        v17 = (v6 + 12);
        do
        {
          switch(v11)
          {
            case 32:
              v27 = 1.0 - *(v16 - 1);
              v28 = 1.0 - *v16;
              v29 = 1.0 - v16[1];
              if (v28 <= v29)
              {
                v30 = 1.0 - *v16;
              }

              else
              {
                v30 = 1.0 - v16[1];
              }

              if (v27 <= v29)
              {
                v29 = 1.0 - *(v16 - 1);
              }

              if (v27 <= v28)
              {
                v31 = v29;
              }

              else
              {
                v31 = v30;
              }

              if (v27 <= 1.0)
              {
                v32 = 1.0 - *(v16 - 1);
              }

              else
              {
                v32 = 1.0;
              }

              if (v27 >= 0.0)
              {
                v33 = v32;
              }

              else
              {
                v33 = 0.0;
              }

              v34 = v33 - v31;
              if (v34 <= 1.0)
              {
                v35 = v34;
              }

              else
              {
                v35 = 1.0;
              }

              if (v34 >= 0.0)
              {
                v36 = v35;
              }

              else
              {
                v36 = 0.0;
              }

              *(v17 - 3) = v36;
              v37 = 1.0 - *v16;
              if (v37 <= 1.0)
              {
                v38 = 1.0 - *v16;
              }

              else
              {
                v38 = 1.0;
              }

              if (v37 >= 0.0)
              {
                v39 = v38;
              }

              else
              {
                v39 = 0.0;
              }

              v40 = v39 - v31;
              if (v40 <= 1.0)
              {
                v41 = v40;
              }

              else
              {
                v41 = 1.0;
              }

              if (v40 >= 0.0)
              {
                v42 = v41;
              }

              else
              {
                v42 = 0.0;
              }

              *(v17 - 2) = v42;
              v43 = 1.0 - v16[1];
              if (v43 <= 1.0)
              {
                v44 = 1.0 - v16[1];
              }

              else
              {
                v44 = 1.0;
              }

              if (v43 >= 0.0)
              {
                v45 = v44;
              }

              else
              {
                v45 = 0.0;
              }

              v46 = v45 - v31;
              if (v46 <= 1.0)
              {
                v47 = v46;
              }

              else
              {
                v47 = 1.0;
              }

              if (v46 >= 0.0)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0.0;
              }

              *(v17 - 1) = v48;
              *v17 = v31;
              break;
            case 16:
              v22 = *(v16 - 2);
              v23 = *(v16 - 1);
              if (v22 > v23)
              {
                v23 = *(v16 - 2);
              }

              if (v23 <= *v16)
              {
                LOWORD(v23) = *v16;
              }

              v24 = ~v23;
              if (v22 <= 0xFF00)
              {
                LOBYTE(v22) = 0;
              }

              *(v17 - 6) = (~v22 - v24) & ~((~v22 - v24) >> 31);
              v25 = *(v16 - 1);
              if (v25 <= 0xFF00)
              {
                LOBYTE(v25) = 0;
              }

              *(v17 - 5) = (~v25 - v24) & ~((~v25 - v24) >> 31);
              v26 = *v16;
              if (v26 <= 0xFF00)
              {
                LOBYTE(v26) = 0;
              }

              result = (~v26 - v24) & ~((~v26 - v24) >> 31);
              *(v17 - 4) = result;
              *(v17 - 3) = v24;
              break;
            case 8:
              v18 = *(v16 - 4);
              v19 = *(v16 - 3);
              if (v18 > v19)
              {
                v19 = *(v16 - 4);
              }

              if (v19 <= *(v16 - 2))
              {
                v19 = *(v16 - 2);
              }

              result = ~v19;
              *(v17 - 12) = (~v18 - result) & ~(((v18 ^ 0xFF) - result) >> 31);
              v20 = (*(v16 - 3) ^ 0xFF) - result;
              *(v17 - 11) = v20 & ~(v20 >> 31);
              v21 = (*(v16 - 2) ^ 0xFF) - result;
              *(v17 - 10) = v21 & ~(v21 >> 31);
              *(v17 - 9) = result;
              v13 = a1[1];
              break;
          }

          ++v15;
          v16 = (v16 + (BitsPerPixel >> 3));
          v17 = (v17 + v12);
        }

        while (v15 < v13);
        v9 = a1[2];
        v14 = v13;
      }

      v4 += a1[3];
      v6 += a2[3];
      ++v10;
    }

    while (v10 < v9);
  }

  return result;
}

void pixel_Lab_to_rgb(uint64_t a1, float *a2)
{
  v3 = (*a2 + 16.0) / 116.0;
  v4 = v3 + (a2[1] * 0.002);
  v5 = v3 + (a2[2] * -0.005);
  if (v4 <= 0.0008856)
  {
    v6 = (v4 + -0.13793) * 0.12842;
  }

  else
  {
    v6 = v4 * (v4 * v4);
  }

  if (v3 <= 0.0008856)
  {
    v7 = (v3 + -0.13793) * 0.12842;
  }

  else
  {
    v7 = (v3 * v3) * v3;
  }

  if (v5 <= 0.0008856)
  {
    v8 = (v5 + -0.13793) * 0.12842;
  }

  else
  {
    v8 = v5 * (v5 * v5);
  }

  v9 = v6 * 0.9642;
  v10 = v8 * 0.8249;
  v11 = ((v7 * -0.22899) + (v9 * 0.071983)) + (v10 * 1.4054);
  v12 = vmla_n_f32(vmla_n_f32(vmul_n_f32(0x3FF548AABFCF06B3, v7), 0xBF7A91CE4048954ALL, v9), 0x3D0907CEBEFB344DLL, v10);
  v22 = v12.f32[0];
  v23 = powf(v12.f32[1], 0.45455);
  v13.f32[0] = powf(v22, 0.45455);
  v13.f32[1] = v23;
  __asm { FMOV            V2.2S, #1.0 }

  *a1 = vbic_s8(vbsl_s8(vcgt_f32(v13, _D2), _D2, v13), vcltz_f32(v13));
  v19 = powf(v11, 0.45455);
  v20 = 1.0;
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  _NF = v19 < 0.0;
  v21 = 0.0;
  if (!_NF)
  {
    v21 = v20;
  }

  *(a1 + 8) = v21;
}

double null_buffer_converter_info@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t convert_device(uint64_t a1, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3, uint64_t a4)
{
  Type = CGColorSpaceGetType(*(a1 + 24));
  v9 = CGColorSpaceGetType(*(a1 + 32));
  if (v9 >= 3)
  {
    _CGHandleAssert("convert_device", 3678, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "(int)srcType >= kCGColorSpaceDeviceGray && (int)srcType <= kCGColorSpaceDeviceCMYK", "invalid src colorspace type %d", v9);
  }

  if (Type >= 3)
  {
    _CGHandleAssert("convert_device", 3679, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "(int)dstType >= kCGColorSpaceDeviceGray && (int)dstType <= kCGColorSpaceDeviceCMYK", "invalid dest colorspace type %d", Type);
  }

  v10 = *(a4 + 48);
  v13[2] = *(a4 + 32);
  v13[3] = v10;
  v13[4] = *(a4 + 64);
  v14 = *(a4 + 80);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  return convert_using_vImageConverter(a1, a2, a3, v13);
}

char *create_gray_to_RGBX8_texture(const __CFData *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc_type_calloc(4 * a2, 1uLL, 0xCCE7D5EBuLL);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (v2)
    {
      v6 = v4 + 3;
      v7 = (BytePtr + 4);
      do
      {
        v8 = (*(v7 - 2) + 128) >> 8;
        if (v8 >= 0xFF)
        {
          LOBYTE(v8) = -1;
        }

        *(v6 - 3) = v8;
        v9 = (*(v7 - 1) + 128) >> 8;
        if (v9 >= 0xFF)
        {
          LOBYTE(v9) = -1;
        }

        *(v6 - 2) = v9;
        v10 = *v7;
        v7 += 3;
        v11 = (v10 + 128) >> 8;
        if (v11 >= 0xFF)
        {
          LOBYTE(v11) = -1;
        }

        *(v6 - 1) = v11;
        *v6 = -1;
        v6 += 4;
        --v2;
      }

      while (v2);
    }
  }

  return v4;
}

char *create_RGB_to_RGBX8_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(4 * a2 * a2 * a2, 1uLL, 0x3D2C2725uLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = v5 + 3;
      v9 = BytePtr + 4;
      do
      {
        v10 = 0;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v11;
          v14 = v12;
          v15 = a2;
          do
          {
            v16 = (*(v13 - 2) + 128) >> 8;
            if (v16 >= 0xFF)
            {
              LOBYTE(v16) = -1;
            }

            *(v14 - 3) = v16;
            v17 = (*(v13 - 1) + 128) >> 8;
            if (v17 >= 0xFF)
            {
              LOBYTE(v17) = -1;
            }

            *(v14 - 2) = v17;
            v18 = (*v13 + 128) >> 8;
            if (v18 >= 0xFF)
            {
              LOBYTE(v18) = -1;
            }

            *(v14 - 1) = v18;
            *v14 = -1;
            v14 += 4;
            v13 += 6 * v4;
            --v15;
          }

          while (v15);
          ++v10;
          v12 += 4 * a2;
          v11 += 6 * a2;
        }

        while (v10 != a2);
        ++v7;
        v8 += 4 * v4;
        v9 += 6;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

char *create_RGB_to_RGBX16_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(8 * a2 * a2 * a2, 1uLL, 0x160C2EDCuLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = v5 + 4;
      v9 = BytePtr + 4;
      do
      {
        v10 = 0;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v11;
          v14 = v12;
          v15 = a2;
          do
          {
            *(v14 - 2) = *(v13 - 2);
            *(v14 - 1) = *(v13 - 1);
            *v14 = *v13;
            v14[1] = -1;
            v14 += 4;
            v13 += 6 * v4;
            --v15;
          }

          while (v15);
          ++v10;
          v12 += 4 * a2;
          v11 += 6 * a2;
        }

        while (v10 != a2);
        ++v7;
        v8 += 8 * v4;
        v9 += 6;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

int8x8_t *create_RGB_to_RGBXF_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(16 * a2 * a2 * a2, 1uLL, 0xFCBA3C72uLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = BytePtr + 4;
      v9 = v5 + 1;
      v10 = vdup_n_s32(0x477FFF00u);
      __asm { FMOV            V1.2S, #1.0 }

      do
      {
        v16 = 0;
        v17 = v9;
        v18 = v8;
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = a2;
          do
          {
            v22.i32[0] = *(v20 - 2);
            v22.i32[1] = *(v20 - 1);
            v23 = vdiv_f32(vcvt_f32_u32(v22), v10);
            v24 = vbsl_s8(vcgt_f32(v23, _D1), _D1, v23);
            v19[-1] = v24;
            v24.i16[0] = *v20;
            v25 = v24.u32[0] / 65535.0;
            if (v25 > 1.0)
            {
              v25 = 1.0;
            }

            *v19->i32 = v25;
            v19->i32[1] = 1065353216;
            v20 += 3 * v4;
            v19 += 2;
            --v21;
          }

          while (v21);
          ++v16;
          v18 += 3 * a2;
          v17 += 2 * a2;
        }

        while (v16 != a2);
        ++v7;
        v8 += 6;
        v9 += 2 * v4;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

uint64_t (*__create_calibrated_lookup_texture_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  create_calibrated_lookup_texture_f = v1;
  return result;
}

uint64_t (*__create_calibrated_parametric_data_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  create_calibrated_parametric_data_f = v1;
  return result;
}

uint64_t insertSpacesBefore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = rint((v6 - *(a4 + 16)) / *(a4 + 8));
  [*a4 setSpaces:v7 & ~(v7 >> 63) beforeWordAtIndex:a1];
  *(a4 + 16) = v6 + *(a2 + 32);
  return 1;
}

uint64_t *CGPDFSourceCreateForJBIG2(const void *a1, uint64_t a2, uint64_t a3)
{
  result = CGPDFSourceCreate(a1, a2, a3);
  if (result)
  {
    v4 = result;
    jbig2_filter = pdf_source_create_jbig2_filter(result, 0, 0);
    CFRelease(v4);
    return jbig2_filter;
  }

  return result;
}

uint64_t *pdf_source_create_jbig2_filter(const void *a1, CGPDFStream *a2, CGPDFDictionary *a3)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040169B3756uLL);
  if (result)
  {
    v7 = result;
    value = 0;
    v18 = 0;
    *(result + 24) = 0;
    if (a1)
    {
      CFRetain(a1);
    }

    *v7 = a1;
    if (CGPDFDictionaryGetStream(a3, "JBIG2Globals", &value))
    {
      if (value)
      {
        Mutable = CFSetCreateMutable(0, 0, 0);
        v17 = a2;
        if (a2)
        {
          while (!CFSetContainsValue(Mutable, a2))
          {
            CFSetAddValue(Mutable, v17);
            if (v17)
            {
              v9 = *(v17 + 6);
            }

            else
            {
              v9 = 0;
            }

            dict = 0;
            if (!CGPDFDictionaryGetDictionary(v9, "DecodeParms", &dict) && !CGPDFDictionaryGetDictionary(v9, "DP", &dict) || !dict || !CGPDFDictionaryGetStream(dict, "JBIG2Globals", &v17))
            {
              v17 = 0;
              goto LABEL_28;
            }

            a2 = v17;
            if (!v17)
            {
              goto LABEL_28;
            }
          }

          pdf_error("JBIG2Filter: JBIG2Globals reference loop");
          goto LABEL_32;
        }

LABEL_28:
        CFRelease(Mutable);
        v15 = CGPDFStreamCreateFilterChain(value, &v18);
        v7[1] = v15;
        if (!v15 || v18)
        {
LABEL_32:
          jbig2_filter_finalize(v7);
          return 0;
        }

        v10 = v15;
LABEL_19:
        v11 = *v7;
        if ((didLoadVTable & 1) == 0)
        {
          pthread_once(&loadVTable_once, doLoadVTable);
        }

        if (jbig2_vtable && (v12 = *(jbig2_vtable + 8)) != 0)
        {
          v13 = v12(v11, v10);
        }

        else
        {
          v13 = 0;
        }

        v7[2] = v13;
        result = CGPDFSourceCreateInternal(0x1000uLL);
        if (result)
        {
          *(result + 209) = 1;
          v14 = *&off_1EF238400;
          *(result + 3) = pdf_source_create_jbig2_filter_callbacks;
          *(result + 4) = v14;
          result[10] = v7;
          return result;
        }

        goto LABEL_32;
      }
    }

    else
    {
      value = 0;
    }

    v10 = 0;
    v7[1] = 0;
    goto LABEL_19;
  }

  return result;
}

void jbig2_filter_finalize(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if ((didLoadVTable & 1) == 0)
    {
      pthread_once(&loadVTable_once, doLoadVTable);
    }

    if (jbig2_vtable)
    {
      v3 = *(jbig2_vtable + 16);
      if (v3)
      {
        v3(v2);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t jbig2_filter_refill(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if ((didLoadVTable & 1) == 0)
  {
    pthread_once(&loadVTable_once, doLoadVTable);
  }

  if (!jbig2_vtable || (v8 = *(jbig2_vtable + 24)) == 0 || (result = v8(v7, a2, a3)) == 0)
  {
    result = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t jbig2_filter_rewind(uint64_t a1)
{
  *(a1 + 24) = 0;
  CGPDFSourceRewind(*a1);
  result = CGPDFSourceRewind(*(a1 + 8));
  v3 = *(a1 + 16);
  if ((didLoadVTable & 1) == 0)
  {
    result = pthread_once(&loadVTable_once, doLoadVTable);
  }

  if (jbig2_vtable)
  {
    v4 = *(jbig2_vtable + 32);
    if (v4)
    {

      return v4(v3);
    }
  }

  return result;
}

void rips_release(void *a1)
{
  v1 = *(a1 + 2) - 1;
  *(a1 + 2) = v1;
  if (!v1)
  {
    free(a1);
  }
}

uint64_t CGPDFStringCreateWithCFString(const __CFString *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v10[0] = 0;
  v11.location = 0;
  v11.length = Length;
  v3 = 0;
  if (CFStringGetBytes(a1, v11, 0x10000100u, 0, 1u, 0, 0, v10) >= Length)
  {
    v4 = MEMORY[0x1EEE9AC00](v10[0] + 2);
    v7 = v10 - v6;
    if (v4 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10 - v6;
    }

    if (v5 >= 0x402)
    {
      v8 = malloc_type_malloc(v4, 0x983DDC52uLL);
    }

    *v8 = -2;
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x10000100u, 0, 1u, v8 + 2, v10[0], 0);
    v3 = CGPDFStringCreate(0, v8, 2 * Length + 2, 1, 1);
    if (v8 != v7)
    {
      free(v8);
    }
  }

  return v3;
}

CFTypeRef CGPDFStringRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFStringRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t CGPDFStringGetLength(size_t string)
{
  if (string)
  {
    v1 = string;
    if (*(string + 24))
    {
      decrypt_string(string);
    }

    return *(v1 + 72);
  }

  return string;
}

void decrypt_string(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 64) & 1) == 0 && (*(a1 + 32) | *(a1 + 40) || *(a1 + 48) | *(a1 + 56)))
  {
    v2 = *(*(a1 + 24) + 40);
    if (!v2)
    {
      goto LABEL_25;
    }

    v3 = *(a1 + 48) | *(a1 + 56);
    v4 = v3 ? *(a1 + 48) : *(a1 + 32);
    v5 = v3 ? *(a1 + 56) : *(a1 + 40);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_25;
    }

    if (*(v6 + 184) != 1)
    {
      goto LABEL_25;
    }

    v7 = *(v2 + 40);
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = a1 + 80;
    v9 = *(a1 + 72);
    if ((*(v7 + 12) & 1) == 0)
    {
      v19 = 0;
      if (!get_object_key(v7, v4, v5, v20, &v19))
      {
        goto LABEL_25;
      }

      v10 = *(v7 + 8);
      if ((v10 - 2) >= 2)
      {
        if (v10 != 1)
        {
          goto LABEL_25;
        }

        RC4 = CGCryptorCreateRC4(v20, v19);
        if (!RC4)
        {
          goto LABEL_25;
        }

        v18 = RC4;
        CGCryptorProcessBytes(RC4, (a1 + 80), v9, (a1 + 80), v9, 0);
        CGCryptorRelease(v18);
      }

      else
      {
        v11 = pdf_aes_create(v20, v19);
        if (!v11)
        {
          goto LABEL_25;
        }

        v12 = v11;
        v13 = pdf_aes_process_buffer(v11, (a1 + 80), (a1 + 80), v9);
        pdf_aes_free(v12);
        if (!v13)
        {
          goto LABEL_25;
        }

        v14 = *(v8 + v9 - 1);
        v15 = v9 >= v14;
        v16 = v9 - v14;
        if (v15)
        {
          v9 = v16;
        }

        else
        {
          pdf_error("invalid AES padding.");
        }

        if (v9 > 0xF)
        {
          v9 -= 16;
          memmove((a1 + 80), (a1 + 96), v9);
        }

        else
        {
          pdf_error("invalid AES padding.");
          v9 = 0;
        }
      }
    }

    *(a1 + 72) = v9;
    *(v8 + v9) = 0;
LABEL_25:
    *(a1 + 64) |= 1u;
  }

  os_unfair_lock_unlock((a1 + 16));
}

const unsigned __int8 *__cdecl CGPDFStringGetBytePtr(const unsigned __int8 *string)
{
  if (string)
  {
    v1 = string;
    if (*(string + 3))
    {
      decrypt_string(string);
    }

    return v1 + 80;
  }

  return string;
}

uint64_t CGPDFStringPrint(uint64_t result, FILE *a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = *MEMORY[0x1E69E9848];
    }

    if (*(result + 24))
    {
      decrypt_string(result);
      if (*(v2 + 24))
      {
        decrypt_string(v2);
      }
    }

    v4 = *(v2 + 72);
    fputc(40, v3);
    if (v4)
    {
      v5 = (v2 + 80);
      v6 = MEMORY[0x1E69E9830];
      do
      {
        v7 = *v5++;
        v8 = v7;
        if (v7 < 0)
        {
          if (__maskrune(v8, 0x40000uLL))
          {
LABEL_12:
            if (v8 - 40 <= 0x34 && ((1 << (v8 - 40)) & 0x10000000000003) != 0)
            {
              fputc(92, v3);
            }

            fputc(v8, v3);
            goto LABEL_20;
          }
        }

        else if ((*(v6 + 4 * v8 + 60) & 0x40000) != 0)
        {
          goto LABEL_12;
        }

        fprintf(v3, "\\%03o", v8);
LABEL_20:
        --v4;
      }

      while (v4);
    }

    return fputc(41, v3);
  }

  return result;
}

void Type1CSubset::emit_font_file(Type1CSubset *this, uint64_t a2)
{
  embedded_font_data = Type1Subset::create_embedded_font_data(this);
  if (embedded_font_data)
  {
    v5 = embedded_font_data;
    v6 = **(*(this + 1) + 8);
    v7 = PDFStreamCreateWithObjectNumber(v6, a2);
    PDFDocumentBeginObject(*v7, v7[1]);
    PDFDocumentPrintf(*v7, "<<");
    PDFDocumentPrintf(v6, "/Subtype /Type1C");
    PDFStreamBeginData(v7);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    CGDataConsumerPutBytes(v7[3], BytePtr, Length);
    PDFStreamEndData(v7);
    PDFStreamEnd(v7);
    PDFStreamRelease(v7);

    CFRelease(v5);
  }
}

void Type1CSubset::~Type1CSubset(Type1CSubset *this)
{
  FontSubset::~FontSubset(this);

  JUMPOUT(0x1865EE610);
}

void FontSubset::~FontSubset(FontSubset *this)
{
  *this = &unk_1EF244530;
  std::__tree<unsigned long>::destroy(*(this + 15));
  std::__tree<unsigned long>::destroy(*(this + 12));
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

CFMutableArrayRef CGPDFDocumentCopyOutputIntents(__CFArray *a1)
{
  Mutable = a1;
  if (a1)
  {
    dict = 0;
    value = 0;
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(Mutable + 2) + 16));
    if (CGPDFDictionaryGetArray(catalog, "OutputIntents", &value) && value && (v3 = *(value + 3) - *(value + 2)) != 0)
    {
      v4 = v3 >> 3;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v5 = 0;
      v6 = MEMORY[0x1E695E9D8];
      v7 = MEMORY[0x1E695E9E8];
      do
      {
        if (CGPDFArrayGetDictionary(value, v5, &dict))
        {
          v8 = CFDictionaryCreateMutable(0, 0, v6, v7);
          CGPDFDictionaryApplyFunction(dict, build_output_intent, v8);
          CFArrayAppendValue(Mutable, v8);
          CFRelease(v8);
        }

        ++v5;
      }

      while (v4 != v5);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void build_output_intent(const char *a1, uint64_t a2, void *cf)
{
  if (!a2)
  {
    return;
  }

  v5 = *(a2 + 8);
  if (v5 == 5)
  {
    v7 = *(a2 + 32);
    v8 = CFGetAllocator(cf);
    v6 = CFStringCreateWithCString(v8, v7, 0x600u);
LABEL_6:
    v9 = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5 == 6)
  {
    v6 = CGPDFStringCopyTextString(*(a2 + 32));
    goto LABEL_6;
  }

  format = CGPDFDataFormatRaw;
  if (v5 == 9)
  {
    v10 = CGPDFStreamCopyData(*(a2 + 32), &format);
    if (v10)
    {
      v11 = v10;
      v9 = format ? 0 : CGColorSpaceCreateWithICCData(v10);
      CFRelease(v11);
      if (v9)
      {
LABEL_13:
        v12 = CFGetAllocator(cf);
        v13 = CFStringCreateWithCString(v12, a1, 0x600u);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(cf, v13, v9);
          CFRelease(v14);
        }

        CFRelease(v9);
      }
    }
  }
}

CGFloat *CGPDFFunctionCreateFunction(CGFloat *result)
{
  if (result)
  {
    value = 0;
    v1 = *(result + 2);
    if (v1 == 9)
    {
      v2 = *(result + 4);
      if (!v2)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v3 = (v2 + 48);
    }

    else
    {
      if (v1 != 8)
      {
        pdf_error("invalid function: not a dictionary or stream.");
        return 0;
      }

      v2 = 0;
      v3 = (result + 4);
    }

    v4 = *v3;
LABEL_8:
    if (CGPDFDictionaryGetInteger(v4, "FunctionType", &value))
    {
      if (value <= 2)
      {
        if (value)
        {
          if (value == 2)
          {
            if (!v2)
            {
              return cg_function_type2_create(v4);
            }

LABEL_55:
            pdf_error("invalid function: not a dictionary.");
            return 0;
          }

LABEL_32:
          return 0;
        }

        if (!v2)
        {
          pdf_error("invalid Type 0 function: not a stream.");
          return 0;
        }

        result = malloc_type_calloc(1uLL, 0x58uLL, 0x10900401C976371uLL);
        if (!result)
        {
          return result;
        }

        v14 = result;
        v52[0] = 0;
        v50 = 0;
        v15 = *(v2 + 48);
        v16 = pdf_dictionary_copy_numbers(v15, "Domain", &v50);
        *(v14 + 1) = v16;
        if (!v16 || !v50 || (v50 & 1) != 0)
        {
          goto LABEL_100;
        }

        *v14 = v50 >> 1;
        v17 = pdf_dictionary_copy_numbers(v15, "Range", &v50);
        *(v14 + 3) = v17;
        if (!v17 || !v50 || (v50 & 1) != 0)
        {
          goto LABEL_100;
        }

        *(v14 + 2) = v50 >> 1;
        v18 = malloc_type_malloc(8 * *v14, 0x100004000313F17uLL);
        *(v14 + 6) = v18;
        if (!v18)
        {
LABEL_100:
          type0_release(v14);
          return 0;
        }

        if (!CGPDFDictionaryGetIntegers(v15, "Size", v18, *v14))
        {
          goto LABEL_100;
        }

        v19 = *v14;
        if (*v14)
        {
          v20 = *(v14 + 6);
          while (1)
          {
            v22 = *v20++;
            v21 = v22;
            if (v22 <= 0)
            {
              pdf_error("invalid function: every domain of a sampling function must have at least one sample.");
              goto LABEL_100;
            }

            if (v21 > 9.00719925e15)
            {
              break;
            }

            if (!--v19)
            {
              goto LABEL_48;
            }
          }

          pdf_error("invalid function: sample count is out of range.");
          goto LABEL_100;
        }

LABEL_48:
        if (!CGPDFDictionaryGetInteger(v15, "BitsPerSample", v52) || (v52[0] - 1) > 0x1F || (v23 = vcnt_s8(v52[0]), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] >= 2uLL))
        {
          goto LABEL_100;
        }

        v14[7] = *v52;
        if (CGPDFDictionaryGetInteger(v15, "Order", v52))
        {
          v24 = v52[0];
          if ((v52[0] & 0xFFFFFFFFFFFFFFFDLL) != 1)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v24 = 1;
        }

        *(v14 + 8) = v24;
        v28 = *v14;
        if (*v14)
        {
          v29 = *(v14 + 6);
          v30 = 1.0;
          do
          {
            v31 = *v29++;
            v30 = v30 * v31;
            --v28;
          }

          while (v28);
          v32 = v30 * 0.125;
        }

        else
        {
          v32 = 0.125;
        }

        v33 = ceil(v32 * *(v14 + 7) * *(v14 + 2));
        if (v33 > 1.12589991e15)
        {
          pdf_error("invalid function: arithmetic overflow.");
          goto LABEL_100;
        }

        v48 = v33;
        v34 = malloc_type_malloc(v33, 0x8CAB7267uLL);
        *(v14 + 10) = v34;
        if (!v34)
        {
          goto LABEL_100;
        }

        if (CGPDFStreamGetData(v2, v34, v48) != v48)
        {
          pdf_error("invalid function: failed to read %zu bytes.");
          goto LABEL_100;
        }

        *(v14 + 9) = v48;
        v35 = malloc_type_malloc(16 * *v14, 0x100004000313F17uLL);
        *(v14 + 5) = v35;
        if (!v35)
        {
          goto LABEL_100;
        }

        if (!CGPDFDictionaryGetNumbers(v15, "Encode", v35, 2 * *v14))
        {
          v36 = *v14;
          if (*v14)
          {
            v37 = *(v14 + 6);
            v38 = (*(v14 + 5) + 8);
            do
            {
              *(v38 - 1) = 0.0;
              v39 = *v37++;
              *v38 = (v39 - 1);
              v38 += 2;
              --v36;
            }

            while (v36);
          }
        }

        v40 = malloc_type_malloc(16 * *(v14 + 2), 0x100004000313F17uLL);
        *(v14 + 4) = v40;
        if (!v40)
        {
          goto LABEL_100;
        }

        Numbers = CGPDFDictionaryGetNumbers(v15, "Decode", v40, 2 * *(v14 + 2));
        v42 = *(v14 + 2);
        if (Numbers)
        {
          v43 = *(v14 + 3);
        }

        else
        {
          v43 = *(v14 + 3);
          if (v42)
          {
            v44 = (*(v14 + 4) + 8);
            v45 = (v43 + 1);
            v46 = *(v14 + 2);
            do
            {
              *(v44 - 1) = *(v45 - 1);
              v47 = *v45;
              v45 += 2;
              *v44 = v47;
              v44 += 2;
              --v46;
            }

            while (v46);
          }
        }

        result = CGFunctionCreate(v14, *v14, *(v14 + 1), v42, v43, &type0_callbacks);
        if (!result)
        {
          pdf_error("unable to create Type 0 function.");
          goto LABEL_100;
        }

        v27 = copy_pdf_description_21139;
LABEL_76:
        *(result + 11) = v27;
        return result;
      }

      if (value == 3)
      {
        if (!v2)
        {
          return cg_function_type3_create(v4);
        }

        goto LABEL_55;
      }

      if (value != 4)
      {
        goto LABEL_32;
      }

      if (!v2)
      {
        pdf_error("invalid Type 4 function: not a stream.");
        return 0;
      }

      result = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00400F0CD34FuLL);
      if (!result)
      {
        return result;
      }

      v5 = result;
      v50 = 0;
      v6 = *(v2 + 48);
      v7 = pdf_dictionary_copy_numbers(v6, "Domain", &v50);
      *(v5 + 1) = v7;
      if (!v7 || !v50 || (v50 & 1) != 0)
      {
        goto LABEL_64;
      }

      *v5 = v50 >> 1;
      v8 = pdf_dictionary_copy_numbers(v6, "Range", &v50);
      *(v5 + 3) = v8;
      if (!v8 || !v50 || (v50 & 1) != 0)
      {
        goto LABEL_64;
      }

      *(v5 + 2) = v50 >> 1;
      v51 = 0;
      v9 = CGPDFStreamCreateFilterChain(v2, &v51);
      v10 = v9;
      if (!v9 || v51)
      {
        if (!v9)
        {
LABEL_68:
          *(v5 + 4) = 0;
          goto LABEL_64;
        }
      }

      else
      {
        v11 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
        if (v11)
        {
          v12 = v11;
          v11[2] = 0;
          v11[3] = 0;
          *v11 = v10;
          v11[1] = 0;
          if (type4_lexer_scan(v11, v52) == 123)
          {
            v13 = scan(v12);
          }

          else
          {
            v13 = 0;
          }

          free(v12[1]);
          free(v12);
          CFRelease(v10);
          *(v5 + 4) = v13;
          if (v13)
          {
            v25 = evaluation_create(v5);
            *(v5 + 6) = v25;
            if (v25)
            {
              v26 = evaluation_create(v5);
              *(v5 + 5) = v26;
              if (v26)
              {
                result = CGFunctionCreate(v5, *v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), &type4_callbacks);
                if (result)
                {
                  v27 = copy_pdf_description;
                  goto LABEL_76;
                }

                pdf_error("unable to create Type 4 function.");
              }
            }
          }

LABEL_64:
          type4_release(v5);
          return 0;
        }
      }

      CFRelease(v10);
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

CGPDFReal *pdf_dictionary_copy_numbers(CGPDFDictionary *a1, const char *a2, uint64_t *a3)
{
  array = 0;
  value = 0.0;
  if (!CGPDFDictionaryGetArray(a1, a2, &array))
  {
    return 0;
  }

  if (!array)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = (*(array + 3) - *(array + 2)) >> 3;
  if (a3)
  {
LABEL_4:
    *a3 = v4;
  }

LABEL_5:
  v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  __CFSetLastAllocationEventName();
  if (v5 && v4)
  {
    v6 = 0;
    while (CGPDFArrayGetNumber(array, v6, &value))
    {
      v5[v6++] = value;
      if (v4 == v6)
      {
        return v5;
      }
    }

    free(v5);
    return 0;
  }

  return v5;
}

double *CGPDFTextStyleCreate(const void *a1, const void *a2, const void *a3, double a4, double a5, double a6)
{
  v6 = 0;
  if (a1)
  {
    if (a4 >= 0.0 && a2 != 0)
    {
      v14 = malloc_type_malloc(0x38uLL, 0x1020040AA3C56B0uLL);
      v6 = v14;
      if (v14)
      {
        *v14 = 1;
        CFRetain(a1);
        *(v6 + 1) = a1;
        v6[2] = round(a4);
        CFRetain(a2);
        *(v6 + 3) = a2;
        if (a3)
        {
          CFRetain(a3);
        }

        *(v6 + 4) = a3;
        v15 = round(a5 * 1000.0) / 1000.0;
        v6[5] = v15;
        v6[6] = round(a6);
        if (v15 < 0.001 || 6.28318531 - v15 < 0.001)
        {
          v6[5] = 0.0;
        }
      }
    }
  }

  return v6;
}

void CGPDFTextStyleRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[1];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[3];
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = a1[4];
      if (v5)
      {
        CFRelease(v5);
      }

      free(a1);
    }
  }
}

BOOL CGPDFTextStyleEqualToPDFTextStyle(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = CGColorEqualToColor(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = CGColorEqualToColor(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      return *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
    }
  }

  return result;
}

void ccitt_fax_filter_finalize(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      v3 = v2[4];
      if (v3)
      {
        free(v3);
      }

      free(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t ccitt_fax_filter_refill(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 32);
  if (*v7 != 4)
  {
    v92 = *(v7 + 4);
    if ((v92 & 6) == 4)
    {
      v93 = *(v7 + 20);
      if ((v93 & 7) != 0)
      {
        *(v7 + 16) >>= v93 & 7;
        *(v7 + 20) = v93 & 0xFFFFFFF8;
      }
    }

    if (*(v7 + 24))
    {
      m = *(v7 + 20);
LABEL_141:
      for (i = 1; ; i = *(v7 + 24) + 1)
      {
        *(v7 + 24) = i;
        while (1)
        {
          if (m <= 7)
          {
            v96 = (*(v7 + 64))(*(v7 + 72));
            if (v96 == -1)
            {
              if (!*(v7 + 20))
              {
                goto LABEL_189;
              }

              m = 8;
            }

            else
            {
              v97 = *(v7 + 20);
              *(v7 + 16) |= TIFFBitRevTable[v96] << v97;
              m = v97 + 8;
            }
          }

          v98 = *(v7 + 16);
          if (v98)
          {
            break;
          }

          m -= 8;
          *(v7 + 16) = v98 >> 8;
          *(v7 + 20) = m;
        }

        if ((v98 & 1) == 0)
        {
          do
          {
            v99 = v98;
            --m;
            v98 >>= 1;
          }

          while ((v99 & 2) == 0);
        }

        v100 = m - 1;
        v101 = v98 >> 1;
        *(v7 + 16) = v101;
        *(v7 + 20) = m - 1;
        if (*(v7 + 4))
        {
          break;
        }

        if (m <= 11)
        {
          v102 = (*(v7 + 64))(*(v7 + 72));
          if (v102 == -1)
          {
            if (!*(v7 + 20))
            {
              goto LABEL_189;
            }

            v101 = *(v7 + 16);
            goto LABEL_165;
          }

          v103 = *(v7 + 20);
          v101 = *(v7 + 16) | (TIFFBitRevTable[v102] << v103);
          v100 = v103 + 8;
          *(v7 + 16) = v101;
          *(v7 + 20) = v103 + 8;
          if (v103 <= 2)
          {
            v104 = (*(v7 + 64))(*(v7 + 72));
            v101 = *(v7 + 16);
            if (v104 != -1)
            {
              v105 = *(v7 + 20);
              v101 |= TIFFBitRevTable[v104] << v105;
              *(v7 + 16) = v101;
              v100 = v105 + 8;
LABEL_166:
              *(v7 + 20) = v100;
              goto LABEL_167;
            }

LABEL_165:
            v100 = 11;
            goto LABEL_166;
          }
        }

LABEL_167:
        if ((v101 & 0x7FF) != 0)
        {
          goto LABEL_250;
        }

        m = v100 - 11;
        *(v7 + 20) = v100 - 11;
        v110 = v101 >> 11;
LABEL_175:
        *(v7 + 16) = v110;
      }

      if (m <= 12)
      {
        v106 = (*(v7 + 64))(*(v7 + 72));
        if (v106 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_189;
          }

          v101 = *(v7 + 16);
          goto LABEL_171;
        }

        v107 = *(v7 + 20);
        v101 = *(v7 + 16) | (TIFFBitRevTable[v106] << v107);
        v100 = v107 + 8;
        *(v7 + 16) = v101;
        *(v7 + 20) = v107 + 8;
        if (v107 <= 3)
        {
          v108 = (*(v7 + 64))(*(v7 + 72));
          v101 = *(v7 + 16);
          if (v108 != -1)
          {
            v109 = *(v7 + 20);
            v101 |= TIFFBitRevTable[v108] << v109;
            *(v7 + 16) = v101;
            v100 = v109 + 8;
            goto LABEL_172;
          }

LABEL_171:
          v100 = 12;
LABEL_172:
          *(v7 + 20) = v100;
        }
      }

      if ((v101 & 0xFFE) == 0)
      {
        m = v100 - 12;
        *(v7 + 20) = v100 - 12;
        v110 = v101 >> 12;
        goto LABEL_175;
      }

LABEL_250:
      v147 = *(v7 + 24);
      if (v147 >= 2 && v147 != 6)
      {
        fprintf(*MEMORY[0x1E69E9848], "Line %d: bad RTC (%d EOLs)\n", *(v7 + 60), v147);
        v147 = *(v7 + 24);
      }

      v116 = v147 > 5;
      if (v92)
      {
LABEL_254:
        if (v116)
        {
          goto LABEL_489;
        }

        m = *(v7 + 20);
LABEL_256:
        *(v7 + 24) = 0;
        if (m <= 0)
        {
          v148 = (*(v7 + 64))(*(v7 + 72));
          if (v148 == -1)
          {
            if (!*(v7 + 20))
            {
              goto LABEL_489;
            }

            m = 1;
          }

          else
          {
            v149 = *(v7 + 20);
            *(v7 + 16) |= TIFFBitRevTable[v148] << v149;
            m = v149 + 8;
          }
        }

        v312 = a2;
        v313 = a3;
        v159 = m - 1;
        v13 = *(v7 + 12);
        v160 = *(v7 + 16);
        v161 = v160 >> 1;
        *(v7 + 16) = v160 >> 1;
        *(v7 + 20) = v159;
        v8 = *(v7 + 48);
        if ((v160 & 1) == 0)
        {
          v314 = v6;
          if (v13 < 1)
          {
            v163 = 0;
            v19 = *(v7 + 48);
            goto LABEL_558;
          }

          LOWORD(v162) = 0;
          v163 = 0;
          j = 0;
          v165 = *(v7 + 40);
          v168 = *v165;
          v167 = v165 + 1;
          v166 = v168;
          v19 = *(v7 + 48);
          while (1)
          {
            if (v159 <= 6)
            {
              v169 = (*(v7 + 64))(*(v7 + 72));
              if (v169 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
                v159 = 7;
              }

              else
              {
                v170 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v169] << v170);
                v159 = v170 + 8;
              }
            }

            v171 = &pdf_TIFFFaxMainTable + 4 * (v161 & 0x7F);
            v172 = v171[1];
            v159 -= v172;
            v161 >>= v172;
            *(v7 + 16) = v161;
            *(v7 + 20) = v159;
            v173 = *v171;
            if (v173 >= 4)
            {
              break;
            }

            if (v173 == 1)
            {
              v208 = *(v7 + 40) + 2 * *(v7 + 56);
              if (v19 != v8 && v166 <= v163)
              {
                v209 = v167 + 1;
                do
                {
                  if (v209 >= v208)
                  {
                    break;
                  }

                  v210 = *(v209 - 1);
                  v211 = *v209;
                  v209 += 2;
                  v166 += v210 + v211;
                }

                while (v166 <= v163);
                v167 = v209 - 1;
              }

              if (v167 < v208)
              {
                v212 = v166 + *v167;
                j += v212 - v163;
                if ((v167 + 1) < v208)
                {
                  v213 = v167[1];
                  v167 += 2;
                  v166 = v212 + v213;
                  v163 = v212;
                  goto LABEL_366;
                }

                v163 = v166 + *v167;
              }

              goto LABEL_555;
            }

            if (v173 != 2)
            {
              if (v173 != 3)
              {
                goto LABEL_554;
              }

              v174 = *(v7 + 56);
              if (v19 != v8 && v166 <= v163)
              {
                v175 = v167 + 1;
                do
                {
                  if (v175 >= *(v7 + 40) + 2 * v174)
                  {
                    break;
                  }

                  v176 = *(v175 - 1);
                  v177 = *v175;
                  v175 += 2;
                  v166 += v176 + v177;
                }

                while (v166 <= v163);
                v167 = v175 - 1;
              }

              v163 = v166;
              if (v19 < *(v7 + 48) + 2 * v174)
              {
                *v19++ = j + v162 + v166;
              }

              if (v167 < *(v7 + 40) + 2 * v174)
              {
                j = 0;
                v178 = *v167++;
                v166 += v178;
                goto LABEL_366;
              }

              goto LABEL_558;
            }

            if (((v19 - v8) & 2) != 0)
            {
              while (1)
              {
                if (v159 > 12)
                {
                  goto LABEL_355;
                }

                v200 = (*(v7 + 64))(*(v7 + 72));
                if (v200 == -1)
                {
                  if (!*(v7 + 20))
                  {
                    goto LABEL_635;
                  }

                  v161 = *(v7 + 16);
                }

                else
                {
                  v201 = *(v7 + 20);
                  v161 = *(v7 + 16) | (TIFFBitRevTable[v200] << v201);
                  v159 = v201 + 8;
                  *(v7 + 16) = v161;
                  *(v7 + 20) = v201 + 8;
                  if (v201 > 4)
                  {
                    goto LABEL_355;
                  }

                  v202 = (*(v7 + 64))(*(v7 + 72));
                  v161 = *(v7 + 16);
                  if (v202 != -1)
                  {
                    v203 = *(v7 + 20);
                    v161 |= TIFFBitRevTable[v202] << v203;
                    v159 = v203 + 8;
                    goto LABEL_355;
                  }
                }

                v159 = 13;
LABEL_355:
                v204 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
                v205 = v204[1];
                v159 -= v205;
                v161 >>= v205;
                *(v7 + 16) = v161;
                *(v7 + 20) = v159;
                v206 = *v204;
                if ((v206 - 10) >= 2)
                {
                  if (v206 != 8)
                  {
                    goto LABEL_554;
                  }

                  v222 = *(v204 + 1);
                  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                  {
                    *v19++ = v222 + j;
                  }

                  for (j = 0; ; j += v222)
                  {
                    v163 += v222;
                    if (v159 > 11)
                    {
                      goto LABEL_394;
                    }

                    v223 = (*(v7 + 64))(*(v7 + 72));
                    if (v223 == -1)
                    {
                      if (!*(v7 + 20))
                      {
                        goto LABEL_635;
                      }

                      v161 = *(v7 + 16);
                    }

                    else
                    {
                      v224 = *(v7 + 20);
                      v161 = *(v7 + 16) | (TIFFBitRevTable[v223] << v224);
                      v159 = v224 + 8;
                      *(v7 + 16) = v161;
                      *(v7 + 20) = v224 + 8;
                      if (v224 > 3)
                      {
                        goto LABEL_394;
                      }

                      v225 = (*(v7 + 64))(*(v7 + 72));
                      v161 = *(v7 + 16);
                      if (v225 != -1)
                      {
                        v226 = *(v7 + 20);
                        v161 |= TIFFBitRevTable[v225] << v226;
                        v159 = v226 + 8;
                        goto LABEL_394;
                      }
                    }

                    v159 = 12;
LABEL_394:
                    v219 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
                    v227 = v219[1];
                    v159 -= v227;
                    v161 >>= v227;
                    *(v7 + 16) = v161;
                    *(v7 + 20) = v159;
                    v228 = *v219;
                    if (v228 != 9 && v228 != 11)
                    {
                      if (v228 != 7)
                      {
                        goto LABEL_554;
                      }

                      goto LABEL_403;
                    }

                    v222 = *(v219 + 1);
                  }
                }

                v207 = *(v204 + 1);
                j += v207;
                v163 += v207;
              }
            }

            while (1)
            {
              if (v159 > 11)
              {
                goto LABEL_341;
              }

              v191 = (*(v7 + 64))(*(v7 + 72));
              if (v191 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v192 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v191] << v192);
                v159 = v192 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v192 + 8;
                if (v192 > 3)
                {
                  goto LABEL_341;
                }

                v193 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v193 != -1)
                {
                  v194 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v193] << v194;
                  v159 = v194 + 8;
                  goto LABEL_341;
                }
              }

              v159 = 12;
LABEL_341:
              v195 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
              v196 = v195[1];
              v159 -= v196;
              v161 >>= v196;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v197 = *v195;
              if (v197 != 9 && v197 != 11)
              {
                break;
              }

              v199 = *(v195 + 1);
              j += v199;
              v163 += v199;
            }

            if (v197 != 7)
            {
              goto LABEL_554;
            }

            v214 = *(v195 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v214 + j;
            }

            j = 0;
            while (2)
            {
              v163 += v214;
              if (v159 > 12)
              {
                goto LABEL_380;
              }

              v215 = (*(v7 + 64))(*(v7 + 72));
              if (v215 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v216 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v215] << v216);
                v159 = v216 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v216 + 8;
                if (v216 > 4)
                {
                  goto LABEL_380;
                }

                v217 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v217 != -1)
                {
                  v218 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v217] << v218;
                  v159 = v218 + 8;
                  goto LABEL_380;
                }
              }

              v159 = 13;
LABEL_380:
              v219 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
              v220 = v219[1];
              v159 -= v220;
              v161 >>= v220;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v221 = *v219;
              if ((v221 - 10) < 2)
              {
                v214 = *(v219 + 1);
                j += v214;
                continue;
              }

              break;
            }

            if (v221 != 8)
            {
LABEL_554:
              *(v7 + 28) = 1;
              goto LABEL_555;
            }

LABEL_403:
            v230 = *(v219 + 1);
            v231 = *(v7 + 56);
            if (v19 < *(v7 + 48) + 2 * v231)
            {
              *v19++ = v230 + j;
            }

            v163 += v230;
            if (v19 != v8 && (v166 <= v163 ? (v232 = v166 < v13) : (v232 = 0), v232))
            {
              v233 = *(v7 + 40) + 2 * v231;
              v234 = v167 + 1;
              do
              {
                if (v234 >= v233)
                {
                  break;
                }

                v235 = *(v234 - 1);
                v236 = *v234;
                v234 += 2;
                v166 += v235 + v236;
              }

              while (v166 <= v163 && v166 < v13);
              j = 0;
              v167 = v234 - 1;
            }

            else
            {
              j = 0;
            }

LABEL_366:
            v162 = -v163;
            if (v163 >= v13)
            {
              if (j)
              {
                if (v159 <= 0)
                {
                  v281 = (*(v7 + 64))(*(v7 + 72));
                  if (v281 != -1)
                  {
                    v282 = *(v7 + 20);
                    v161 = *(v7 + 16) | (TIFFBitRevTable[v281] << v282);
                    v159 = v282 + 8;
                    *(v7 + 16) = v161;
                    *(v7 + 20) = v159;
                    goto LABEL_627;
                  }

                  if (*(v7 + 20))
                  {
                    v159 = 1;
                    *(v7 + 20) = 1;
                    v161 = *(v7 + 16);
                    goto LABEL_627;
                  }

LABEL_636:
                  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                  {
                    *v19++ = j;
                  }

LABEL_638:
                  if (v163 != v13)
                  {
                    v273 = v163 > v13;
                    v6 = v314;
                    if (v163 > v13 && v19 > v8)
                    {
                      v306 = v19 - 1;
                      v307 = v19 - 1;
                      do
                      {
                        v308 = *v307--;
                        v163 -= v308;
                        v273 = v163 > v13;
                        v309 = v163 > v13 && v306 > v8;
                        v306 = v307;
                      }

                      while (v309);
                      v19 = v307 + 1;
                    }

                    if (v163 < v13)
                    {
                      v310 = *(v7 + 48) + 2 * *(v7 + 56);
                      if (((v19 - v8) & 2) != 0 && v19 < v310)
                      {
                        *v19++ = 0;
                      }

                      if (v19 >= v310)
                      {
                        goto LABEL_489;
                      }

                      result = 0;
                      v279 = v163 & ~(v163 >> 31);
                      goto LABEL_615;
                    }

LABEL_653:
                    if (!v273)
                    {
                      goto LABEL_489;
                    }

                    v311 = *(v7 + 48) + 2 * *(v7 + 56);
                    if (v19 < v311)
                    {
                      *v19++ = v13;
                    }

                    if (v19 >= v311)
                    {
                      goto LABEL_489;
                    }

                    result = 0;
                    *v19 = 0;
                    goto LABEL_490;
                  }

LABEL_599:
                  result = 0;
LABEL_600:
                  v6 = v314;
                  goto LABEL_490;
                }

LABEL_627:
                if (v161)
                {
                  *(v7 + 16) = v161 >> 1;
                  *(v7 + 20) = v159 - 1;
                }

                else
                {
                  *(v7 + 28) = 1;
                }

LABEL_556:
                if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                {
                  *v19++ = j;
                }
              }

LABEL_558:
              if (v163 == v13)
              {
                v6 = v314;
                goto LABEL_580;
              }

              v257 = v163 > v13;
              v6 = v314;
              if (v163 > v13 && v19 > v8)
              {
                v285 = v19 - 1;
                v286 = v19 - 1;
                do
                {
                  v287 = *v286--;
                  v163 -= v287;
                  v257 = v163 > v13;
                  v288 = v163 > v13 && v285 > v8;
                  v285 = v286;
                }

                while (v288);
                v19 = v286 + 1;
              }

              if (v163 < v13)
              {
                v289 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v289)
                {
                  *v19++ = 0;
                }

                if (v19 >= v289)
                {
                  goto LABEL_580;
                }

                v263 = v163 & ~(v163 >> 31);
                goto LABEL_574;
              }

              goto LABEL_575;
            }
          }

          if (*v171 <= 4u)
          {
            v185 = *(v7 + 56);
            if (v19 != v8 && v166 <= v163)
            {
              v186 = v167 + 1;
              do
              {
                if (v186 >= *(v7 + 40) + 2 * v185)
                {
                  break;
                }

                v187 = *(v186 - 1);
                v188 = *v186;
                v186 += 2;
                v166 += v187 + v188;
              }

              while (v166 <= v163);
              v167 = v186 - 1;
            }

            v189 = *(v171 + 1);
            if (v19 < *(v7 + 48) + 2 * v185)
            {
              *v19++ = v189 + j + v162 + v166;
            }

            v163 = v166 + v189;
            if (v167 < *(v7 + 40) + 2 * v185)
            {
              j = 0;
              v190 = *v167++;
              v166 += v190;
              goto LABEL_366;
            }

            goto LABEL_558;
          }

          switch(v173)
          {
            case 5u:
              if (v19 != v8 && v166 <= v163)
              {
                v179 = v167 + 1;
                do
                {
                  if (v179 >= *(v7 + 40) + 2 * *(v7 + 56))
                  {
                    break;
                  }

                  v180 = *(v179 - 1);
                  v181 = *v179;
                  v179 += 2;
                  v166 += v180 + v181;
                }

                while (v166 <= v163);
                v167 = v179 - 1;
              }

              v182 = v163 + *(v171 + 1);
              v36 = __OFSUB__(v166, v182);
              v183 = v166 - v182;
              if (v183 < 0 == v36)
              {
                if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                {
                  *v19++ = v183 + j;
                }

                j = 0;
                v163 += v183;
                v184 = *--v167;
                v166 -= v184;
                goto LABEL_366;
              }

              break;
            case 6u:
              if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = v13 - v163;
              }

              break;
            case 0xCu:
              if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = v13 - v163;
              }

              if (v159 <= 3)
              {
                v283 = (*(v7 + 64))(*(v7 + 72));
                if (v283 == -1)
                {
                  if (!*(v7 + 20))
                  {
LABEL_635:
                    if (j)
                    {
                      goto LABEL_636;
                    }

                    goto LABEL_638;
                  }

                  v161 = *(v7 + 16);
                  v159 = 4;
                }

                else
                {
                  v284 = *(v7 + 20);
                  v161 = *(v7 + 16) | (TIFFBitRevTable[v283] << v284);
                  v159 = v284 + 8;
                }
              }

              if ((v161 & 0xF) != 0)
              {
                *(v7 + 28) = 1;
              }

              result = 0;
              *(v7 + 16) = v161 >> 4;
              *(v7 + 20) = v159 - 4;
              *(v7 + 24) = 1;
              goto LABEL_600;
            default:
              goto LABEL_554;
          }

LABEL_555:
          if (j)
          {
            goto LABEL_556;
          }

          goto LABEL_558;
        }

        v238 = 0;
        v19 = *(v7 + 48);
LABEL_419:
        for (k = 0; ; k += v247)
        {
          if (v159 > 11)
          {
            goto LABEL_428;
          }

          v240 = (*(v7 + 64))(*(v7 + 72));
          if (v240 == -1)
          {
            if (!*(v7 + 20))
            {
LABEL_511:
              if (k && v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = k;
              }

              if (v238 == v13)
              {
                goto LABEL_489;
              }

              v273 = v238 > v13;
              if (v238 > v13 && v19 > v8)
              {
                v274 = v19 - 1;
                v275 = v19 - 1;
                do
                {
                  v276 = *v275--;
                  v238 -= v276;
                  v273 = v238 > v13;
                  v277 = v238 > v13 && v274 > v8;
                  v274 = v275;
                }

                while (v277);
                v19 = v275 + 1;
              }

              if (v238 < v13)
              {
                v278 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v278)
                {
                  *v19++ = 0;
                }

                if (v19 >= v278)
                {
                  goto LABEL_489;
                }

                result = 0;
                v279 = v238 & ~(v238 >> 31);
                goto LABEL_615;
              }

              goto LABEL_653;
            }

            v161 = *(v7 + 16);
          }

          else
          {
            v241 = *(v7 + 20);
            v161 = *(v7 + 16) | (TIFFBitRevTable[v240] << v241);
            v159 = v241 + 8;
            *(v7 + 16) = v161;
            *(v7 + 20) = v241 + 8;
            if (v241 > 3)
            {
              goto LABEL_428;
            }

            v242 = (*(v7 + 64))(*(v7 + 72));
            v161 = *(v7 + 16);
            if (v242 != -1)
            {
              v243 = *(v7 + 20);
              v161 |= TIFFBitRevTable[v242] << v243;
              v159 = v243 + 8;
              goto LABEL_428;
            }
          }

          v159 = 12;
LABEL_428:
          v244 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
          v245 = v244[1];
          v159 -= v245;
          v161 >>= v245;
          *(v7 + 16) = v161;
          *(v7 + 20) = v159;
          v246 = *v244;
          if (v246 >= 0xB)
          {
            if (v246 != 11)
            {
              goto LABEL_453;
            }
          }

          else if (v246 != 9)
          {
            if (v246 != 7)
            {
              goto LABEL_455;
            }

            v248 = *(v244 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v248 + k;
            }

            v238 += v248;
            if (v238 >= v13)
            {
              goto LABEL_459;
            }

            k = 0;
            while (2)
            {
              if (v159 > 12)
              {
                goto LABEL_446;
              }

              v249 = (*(v7 + 64))(*(v7 + 72));
              if (v249 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_511;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v250 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v249] << v250);
                v159 = v250 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v250 + 8;
                if (v250 > 4)
                {
                  goto LABEL_446;
                }

                v251 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v251 != -1)
                {
                  v252 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v251] << v252;
                  v159 = v252 + 8;
                  goto LABEL_446;
                }
              }

              v159 = 13;
LABEL_446:
              v253 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
              v254 = v253[1];
              v159 -= v254;
              v161 >>= v254;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v246 = *v253;
              if (v246 - 10 < 2)
              {
                v255 = *(v253 + 1);
                v238 += v255;
                k += v255;
                continue;
              }

              break;
            }

            if (v246 != 8)
            {
LABEL_453:
              if (v246 == 12)
              {
                *(v7 + 24) = 1;
              }

              else
              {
LABEL_455:
                *(v7 + 28) = 1;
              }

              if (k && v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = k;
              }

LABEL_459:
              if (v238 == v13)
              {
                goto LABEL_580;
              }

              v257 = v238 > v13;
              if (v238 > v13 && v19 > v8)
              {
                v258 = v19 - 1;
                v259 = v19 - 1;
                do
                {
                  v260 = *v259--;
                  v238 -= v260;
                  v257 = v238 > v13;
                  v261 = v238 > v13 && v258 > v8;
                  v258 = v259;
                }

                while (v261);
                v19 = v259 + 1;
              }

              if (v238 < v13)
              {
                v262 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v262)
                {
                  *v19++ = 0;
                }

                if (v19 >= v262)
                {
                  goto LABEL_580;
                }

                v263 = v238 & ~(v238 >> 31);
LABEL_574:
                *v19++ = v13 - v263;
                goto LABEL_580;
              }

LABEL_575:
              if (v257)
              {
                v290 = *(v7 + 48) + 2 * *(v7 + 56);
                if (v19 < v290)
                {
                  *v19++ = v13;
                }

                if (v19 < v290)
                {
                  *v19++ = 0;
                }
              }

              goto LABEL_580;
            }

            v256 = *(v253 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v256 + k;
            }

            v238 += v256;
            if (v238 >= v13)
            {
              goto LABEL_459;
            }

            goto LABEL_419;
          }

          v247 = *(v244 + 1);
          v238 += v247;
        }
      }

LABEL_190:
      if (v116)
      {
        goto LABEL_489;
      }

      m = *(v7 + 20);
      goto LABEL_193;
    }

    for (m = *(v7 + 20); ; *(v7 + 20) = m)
    {
      if (m > 10)
      {
        goto LABEL_186;
      }

      v111 = (*(v7 + 64))(*(v7 + 72));
      if (v111 == -1)
      {
        break;
      }

      v112 = *(v7 + 20);
      m = v112 + 8;
      *(v7 + 16) |= TIFFBitRevTable[v111] << v112;
      *(v7 + 20) = v112 + 8;
      if (v112 > 2)
      {
        goto LABEL_186;
      }

      v113 = (*(v7 + 64))(*(v7 + 72));
      if (v113 == -1)
      {
        goto LABEL_184;
      }

      v114 = *(v7 + 20);
      *(v7 + 16) |= TIFFBitRevTable[v113] << v114;
      m = v114 + 8;
LABEL_185:
      *(v7 + 20) = m;
LABEL_186:
      v115 = *(v7 + 16);
      if ((v115 & 0x7FF) == 0)
      {
        goto LABEL_141;
      }

      if ((*(v7 + 4) & 2) == 0)
      {
        if (v92)
        {
          goto LABEL_256;
        }

LABEL_193:
        v313 = a3;
        v117 = 0;
        *(v7 + 24) = 0;
        v118 = *(v7 + 48);
        v119 = *(v7 + 12);
        v120 = v118;
LABEL_194:
        for (n = 0; ; n += v131)
        {
          if (m > 11)
          {
            goto LABEL_202;
          }

          v122 = (*(v7 + 64))(*(v7 + 72));
          if (v122 == -1)
          {
            if (!*(v7 + 20))
            {
LABEL_268:
              if (n && v120 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v120++ = n;
              }

              if (v117 == v119)
              {
                goto LABEL_489;
              }

              v153 = v117 > v119;
              if (v117 > v119 && v120 > v118)
              {
                v154 = v120 - 1;
                v155 = v120 - 1;
                do
                {
                  v156 = *v155--;
                  v117 -= v156;
                  v153 = v117 > v119;
                  v157 = v117 > v119 && v154 > v118;
                  v154 = v155;
                }

                while (v157);
                v120 = v155 + 1;
              }

              if (v117 >= v119)
              {
                if (!v153)
                {
                  goto LABEL_489;
                }

                v280 = *(v7 + 48) + 2 * *(v7 + 56);
                if (v120 < v280)
                {
                  *v120++ = v119;
                }

                if (v120 >= v280)
                {
                  goto LABEL_489;
                }

                result = 0;
                *v120 = 0;
              }

              else
              {
                v158 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v120 - v118) & 2) != 0 && v120 < v158)
                {
                  *v120++ = 0;
                }

                if (v120 >= v158)
                {
                  goto LABEL_489;
                }

                result = 0;
                *v120 = v119 - (v117 & ~(v117 >> 31));
              }

              goto LABEL_490;
            }
          }

          else
          {
            v123 = *(v7 + 20);
            m = v123 + 8;
            *(v7 + 16) |= TIFFBitRevTable[v122] << v123;
            *(v7 + 20) = v123 + 8;
            if (v123 > 3)
            {
              goto LABEL_202;
            }

            v124 = (*(v7 + 64))(*(v7 + 72));
            if (v124 != -1)
            {
              v125 = *(v7 + 20);
              *(v7 + 16) |= TIFFBitRevTable[v124] << v125;
              m = v125 + 8;
              goto LABEL_202;
            }
          }

          m = 12;
LABEL_202:
          v126 = *(v7 + 16);
          v127 = &pdf_TIFFFaxWhiteTable + 4 * (v126 & 0xFFF);
          v128 = v127[1];
          m -= v128;
          v129 = v126 >> v128;
          *(v7 + 16) = v129;
          *(v7 + 20) = m;
          v130 = *v127;
          if (v130 >= 0xB)
          {
            if (v130 != 11)
            {
              goto LABEL_227;
            }
          }

          else if (v130 != 9)
          {
            if (v130 != 7)
            {
              goto LABEL_229;
            }

            v132 = *(v127 + 1);
            if (v120 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v120++ = v132 + n;
            }

            v117 += v132;
            if (v117 >= v119)
            {
              goto LABEL_233;
            }

            n = 0;
            while (2)
            {
              if (m > 12)
              {
                goto LABEL_220;
              }

              v133 = (*(v7 + 64))(*(v7 + 72));
              if (v133 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_268;
                }

                v129 = *(v7 + 16);
              }

              else
              {
                v134 = *(v7 + 20);
                v129 = *(v7 + 16) | (TIFFBitRevTable[v133] << v134);
                m = v134 + 8;
                *(v7 + 16) = v129;
                *(v7 + 20) = v134 + 8;
                if (v134 > 4)
                {
                  goto LABEL_220;
                }

                v135 = (*(v7 + 64))(*(v7 + 72));
                v129 = *(v7 + 16);
                if (v135 != -1)
                {
                  v136 = *(v7 + 20);
                  v129 |= TIFFBitRevTable[v135] << v136;
                  m = v136 + 8;
                  goto LABEL_220;
                }
              }

              m = 13;
LABEL_220:
              v137 = &pdf_TIFFFaxBlackTable + 4 * (v129 & 0x1FFF);
              v138 = v137[1];
              m -= v138;
              v129 >>= v138;
              *(v7 + 16) = v129;
              *(v7 + 20) = m;
              v130 = *v137;
              if (v130 - 10 < 2)
              {
                v139 = *(v137 + 1);
                v117 += v139;
                n += v139;
                continue;
              }

              break;
            }

            if (v130 != 8)
            {
LABEL_227:
              if (v130 == 12)
              {
                *(v7 + 24) = 1;
              }

              else
              {
LABEL_229:
                *(v7 + 28) = 1;
              }

              if (n && v120 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v120++ = n;
              }

              goto LABEL_233;
            }

            v140 = *(v137 + 1);
            if (v120 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v120++ = v140 + n;
            }

            v117 += v140;
            if (v117 >= v119)
            {
LABEL_233:
              if (v117 != v119)
              {
                v141 = v117 > v119;
                if (v117 > v119 && v120 > v118)
                {
                  v142 = v120 - 1;
                  v143 = v120 - 1;
                  do
                  {
                    v144 = *v143--;
                    v117 -= v144;
                    v141 = v117 > v119;
                    v145 = v117 > v119 && v142 > v118;
                    v142 = v143;
                  }

                  while (v145);
                  v120 = v143 + 1;
                }

                if (v117 >= v119)
                {
                  if (v141)
                  {
                    v152 = *(v7 + 48) + 2 * *(v7 + 56);
                    if (v120 < v152)
                    {
                      *v120++ = v119;
                    }

                    if (v120 < v152)
                    {
                      *v120++ = 0;
                    }
                  }
                }

                else
                {
                  v146 = *(v7 + 48) + 2 * *(v7 + 56);
                  if (((v120 - v118) & 2) != 0 && v120 < v146)
                  {
                    *v120++ = 0;
                  }

                  if (v120 < v146)
                  {
                    *v120++ = v119 - (v117 & ~(v117 >> 31));
                  }
                }
              }

              if (*(v7 + 28))
              {
                goto LABEL_489;
              }

              fill_runs(a2, v118, v120, v119, *(v7 + 4) & 0x10);
              goto LABEL_583;
            }

            goto LABEL_194;
          }

          v131 = *(v127 + 1);
          v117 += v131;
        }
      }

      --m;
      *(v7 + 16) = v115 >> 1;
    }

    if (!*(v7 + 20))
    {
LABEL_189:
      v116 = 1;
      if (v92)
      {
        goto LABEL_254;
      }

      goto LABEL_190;
    }

LABEL_184:
    m = 11;
    goto LABEL_185;
  }

  v312 = a2;
  v313 = a3;
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v12 = *v9;
  v11 = v9 + 1;
  v10 = v12;
  v13 = *(v7 + 12);
  if ((*(v7 + 4) & 4) != 0)
  {
    v14 = *(v7 + 20);
    if ((v14 & 7) != 0)
    {
      *(v7 + 16) >>= v14 & 7;
      *(v7 + 20) = v14 & 0xFFFFFFF8;
    }
  }

  v314 = a1;
  if (v13 < 1)
  {
    v16 = 0;
    v19 = v8;
    goto LABEL_486;
  }

  LOWORD(v15) = 0;
  v16 = 0;
  ii = 0;
  v18 = *(v7 + 20);
  v19 = v8;
  do
  {
    if (v18 <= 6)
    {
      v20 = (*(v7 + 64))(*(v7 + 72));
      if (v20 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v18 = 7;
      }

      else
      {
        v21 = *(v7 + 20);
        *(v7 + 16) |= TIFFBitRevTable[v20] << v21;
        v18 = v21 + 8;
      }
    }

    v22 = *(v7 + 16);
    v23 = &pdf_TIFFFaxMainTable + 4 * (v22 & 0x7F);
    v24 = v23[1];
    v18 -= v24;
    v25 = v22 >> v24;
    *(v7 + 16) = v25;
    *(v7 + 20) = v18;
    v26 = *v23;
    if (v26 >= 4)
    {
      if (*v23 <= 4u)
      {
        v39 = *(v7 + 56);
        if (v19 != v8 && v10 <= v16)
        {
          v40 = v11 + 1;
          do
          {
            if (v40 >= *(v7 + 40) + 2 * v39)
            {
              break;
            }

            v41 = *(v40 - 1);
            v42 = *v40;
            v40 += 2;
            v10 += v41 + v42;
          }

          while (v10 <= v16);
          v11 = v40 - 1;
        }

        v43 = *(v23 + 1);
        if (v19 < *(v7 + 48) + 2 * v39)
        {
          *v19++ = v43 + ii + v15 + v10;
        }

        v16 = v10 + v43;
        if (v11 < *(v7 + 40) + 2 * v39)
        {
          ii = 0;
          v44 = *v11++;
          v10 += v44;
          goto LABEL_84;
        }

        goto LABEL_486;
      }

      if (v26 == 5)
      {
        if (v19 != v8 && v10 <= v16)
        {
          v32 = v11 + 1;
          do
          {
            if (v32 >= *(v7 + 40) + 2 * *(v7 + 56))
            {
              break;
            }

            v33 = *(v32 - 1);
            v34 = *v32;
            v32 += 2;
            v10 += v33 + v34;
          }

          while (v10 <= v16);
          v11 = v32 - 1;
        }

        v35 = v16 + *(v23 + 1);
        v36 = __OFSUB__(v10, v35);
        v37 = v10 - v35;
        if (v37 < 0 == v36)
        {
          if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
          {
            *v19++ = v37 + ii;
          }

          ii = 0;
          v16 += v37;
          v38 = *--v11;
          v10 -= v38;
          goto LABEL_84;
        }

LABEL_483:
        if (ii)
        {
          goto LABEL_484;
        }

        goto LABEL_486;
      }

      if (v26 == 6)
      {
        if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
        {
          *v19++ = v13 - v16;
        }

        goto LABEL_483;
      }

      if (v26 != 12)
      {
        goto LABEL_482;
      }

      if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
      {
        *v19++ = v13 - v16;
      }

      if (v18 <= 3)
      {
        v264 = (*(v7 + 64))(*(v7 + 72));
        if (v264 == -1)
        {
          if (!*(v7 + 20))
          {
LABEL_595:
            if (!ii)
            {
              goto LABEL_598;
            }

            goto LABEL_596;
          }

          v25 = *(v7 + 16);
          v18 = 4;
        }

        else
        {
          v265 = *(v7 + 20);
          v25 = *(v7 + 16) | (TIFFBitRevTable[v264] << v265);
          v18 = v265 + 8;
        }
      }

      if ((v25 & 0xF) != 0)
      {
        *(v7 + 28) = 1;
      }

      v295 = v25 >> 4;
      *(v7 + 16) = v295;
      *(v7 + 20) = v18 - 4;
      *(v7 + 24) = 1;
      v6 = v314;
      if (v18 <= 16)
      {
        v296 = (*(v7 + 64))(*(v7 + 72));
        if (v296 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_489;
          }

          v295 = *(v7 + 16);
          goto LABEL_618;
        }

        v297 = *(v7 + 20);
        v295 = *(v7 + 16) | (TIFFBitRevTable[v296] << v297);
        *(v7 + 16) = v295;
        *(v7 + 20) = v297 + 8;
        if (v297 <= 4)
        {
          v298 = (*(v7 + 64))(*(v7 + 72));
          v295 = *(v7 + 16);
          if (v298 != -1)
          {
            v299 = *(v7 + 20);
            v295 |= TIFFBitRevTable[v298] << v299;
            *(v7 + 16) = v295;
            v300 = v299 + 8;
LABEL_619:
            *(v7 + 20) = v300;
            goto LABEL_620;
          }

LABEL_618:
          v300 = 13;
          goto LABEL_619;
        }
      }

LABEL_620:
      if ((v295 & 0x1FFF) == 0x1001)
      {
        goto LABEL_489;
      }

      result = 0;
      *(v7 + 28) = 1;
      goto LABEL_490;
    }

    if (v26 == 1)
    {
      v62 = *(v7 + 40) + 2 * *(v7 + 56);
      if (v19 != v8 && v10 <= v16)
      {
        v63 = v11 + 1;
        do
        {
          if (v63 >= v62)
          {
            break;
          }

          v64 = *(v63 - 1);
          v65 = *v63;
          v63 += 2;
          v10 += v64 + v65;
        }

        while (v10 <= v16);
        v11 = v63 - 1;
      }

      if (v11 < v62)
      {
        v66 = v10 + *v11;
        ii += v66 - v16;
        if ((v11 + 1) < v62)
        {
          v67 = v11[1];
          v11 += 2;
          v10 = v66 + v67;
          v16 = v66;
          goto LABEL_84;
        }

        v16 = v10 + *v11;
      }

      goto LABEL_483;
    }

    if (v26 != 2)
    {
      if (v26 != 3)
      {
        goto LABEL_482;
      }

      v27 = *(v7 + 56);
      if (v19 != v8 && v10 <= v16)
      {
        v28 = v11 + 1;
        do
        {
          if (v28 >= *(v7 + 40) + 2 * v27)
          {
            break;
          }

          v29 = *(v28 - 1);
          v30 = *v28;
          v28 += 2;
          v10 += v29 + v30;
        }

        while (v10 <= v16);
        v11 = v28 - 1;
      }

      v16 = v10;
      if (v19 < *(v7 + 48) + 2 * v27)
      {
        *v19++ = ii + v15 + v10;
      }

      if (v11 < *(v7 + 40) + 2 * v27)
      {
        ii = 0;
        v31 = *v11++;
        v10 += v31;
        goto LABEL_84;
      }

      goto LABEL_486;
    }

    if (((v19 - v8) & 2) != 0)
    {
      while (1)
      {
        if (v18 > 12)
        {
          goto LABEL_73;
        }

        v54 = (*(v7 + 64))(*(v7 + 72));
        if (v54 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_595;
          }

          v25 = *(v7 + 16);
        }

        else
        {
          v55 = *(v7 + 20);
          v25 = *(v7 + 16) | (TIFFBitRevTable[v54] << v55);
          v18 = v55 + 8;
          *(v7 + 16) = v25;
          *(v7 + 20) = v55 + 8;
          if (v55 > 4)
          {
            goto LABEL_73;
          }

          v56 = (*(v7 + 64))(*(v7 + 72));
          v25 = *(v7 + 16);
          if (v56 != -1)
          {
            v57 = *(v7 + 20);
            v25 |= TIFFBitRevTable[v56] << v57;
            v18 = v57 + 8;
            goto LABEL_73;
          }
        }

        v18 = 13;
LABEL_73:
        v58 = &pdf_TIFFFaxBlackTable + 4 * (v25 & 0x1FFF);
        v59 = v58[1];
        v18 -= v59;
        v25 >>= v59;
        *(v7 + 16) = v25;
        *(v7 + 20) = v18;
        v60 = *v58;
        if ((v60 - 10) >= 2)
        {
          if (v60 != 8)
          {
            goto LABEL_482;
          }

          v76 = *(v58 + 1);
          if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
          {
            *v19++ = v76 + ii;
          }

          for (ii = 0; ; ii += v76)
          {
            v16 += v76;
            if (v18 > 11)
            {
              goto LABEL_112;
            }

            v77 = (*(v7 + 64))(*(v7 + 72));
            if (v77 == -1)
            {
              if (!*(v7 + 20))
              {
                goto LABEL_595;
              }

              v25 = *(v7 + 16);
            }

            else
            {
              v78 = *(v7 + 20);
              v25 = *(v7 + 16) | (TIFFBitRevTable[v77] << v78);
              v18 = v78 + 8;
              *(v7 + 16) = v25;
              *(v7 + 20) = v78 + 8;
              if (v78 > 3)
              {
                goto LABEL_112;
              }

              v79 = (*(v7 + 64))(*(v7 + 72));
              v25 = *(v7 + 16);
              if (v79 != -1)
              {
                v80 = *(v7 + 20);
                v25 |= TIFFBitRevTable[v79] << v80;
                v18 = v80 + 8;
                goto LABEL_112;
              }
            }

            v18 = 12;
LABEL_112:
            v73 = &pdf_TIFFFaxWhiteTable + 4 * (v25 & 0xFFF);
            v81 = v73[1];
            v18 -= v81;
            v25 >>= v81;
            *(v7 + 16) = v25;
            *(v7 + 20) = v18;
            v82 = *v73;
            if (v82 != 9 && v82 != 11)
            {
              if (v82 != 7)
              {
                goto LABEL_482;
              }

              goto LABEL_121;
            }

            v76 = *(v73 + 1);
          }
        }

        v61 = *(v58 + 1);
        ii += v61;
        v16 += v61;
      }
    }

    while (1)
    {
      if (v18 > 11)
      {
        goto LABEL_59;
      }

      v45 = (*(v7 + 64))(*(v7 + 72));
      if (v45 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v25 = *(v7 + 16);
      }

      else
      {
        v46 = *(v7 + 20);
        v25 = *(v7 + 16) | (TIFFBitRevTable[v45] << v46);
        v18 = v46 + 8;
        *(v7 + 16) = v25;
        *(v7 + 20) = v46 + 8;
        if (v46 > 3)
        {
          goto LABEL_59;
        }

        v47 = (*(v7 + 64))(*(v7 + 72));
        v25 = *(v7 + 16);
        if (v47 != -1)
        {
          v48 = *(v7 + 20);
          v25 |= TIFFBitRevTable[v47] << v48;
          v18 = v48 + 8;
          goto LABEL_59;
        }
      }

      v18 = 12;
LABEL_59:
      v49 = &pdf_TIFFFaxWhiteTable + 4 * (v25 & 0xFFF);
      v50 = v49[1];
      v18 -= v50;
      v25 >>= v50;
      *(v7 + 16) = v25;
      *(v7 + 20) = v18;
      v51 = *v49;
      if (v51 != 9 && v51 != 11)
      {
        break;
      }

      v53 = *(v49 + 1);
      ii += v53;
      v16 += v53;
    }

    if (v51 != 7)
    {
      goto LABEL_482;
    }

    v68 = *(v49 + 1);
    if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
    {
      *v19++ = v68 + ii;
    }

    ii = 0;
    while (2)
    {
      v16 += v68;
      if (v18 > 12)
      {
        goto LABEL_98;
      }

      v69 = (*(v7 + 64))(*(v7 + 72));
      if (v69 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v25 = *(v7 + 16);
      }

      else
      {
        v70 = *(v7 + 20);
        v25 = *(v7 + 16) | (TIFFBitRevTable[v69] << v70);
        v18 = v70 + 8;
        *(v7 + 16) = v25;
        *(v7 + 20) = v70 + 8;
        if (v70 > 4)
        {
          goto LABEL_98;
        }

        v71 = (*(v7 + 64))(*(v7 + 72));
        v25 = *(v7 + 16);
        if (v71 != -1)
        {
          v72 = *(v7 + 20);
          v25 |= TIFFBitRevTable[v71] << v72;
          v18 = v72 + 8;
          goto LABEL_98;
        }
      }

      v18 = 13;
LABEL_98:
      v73 = &pdf_TIFFFaxBlackTable + 4 * (v25 & 0x1FFF);
      v74 = v73[1];
      v18 -= v74;
      v25 >>= v74;
      *(v7 + 16) = v25;
      *(v7 + 20) = v18;
      v75 = *v73;
      if ((v75 - 10) < 2)
      {
        v68 = *(v73 + 1);
        ii += v68;
        continue;
      }

      break;
    }

    if (v75 != 8)
    {
LABEL_482:
      *(v7 + 28) = 1;
      goto LABEL_483;
    }

LABEL_121:
    v84 = *(v73 + 1);
    v85 = *(v7 + 56);
    if (v19 < *(v7 + 48) + 2 * v85)
    {
      *v19++ = v84 + ii;
    }

    v16 += v84;
    if (v19 != v8 && (v10 <= v16 ? (v86 = v10 < v13) : (v86 = 0), v86))
    {
      v87 = *(v7 + 40) + 2 * v85;
      v88 = v11 + 1;
      do
      {
        if (v88 >= v87)
        {
          break;
        }

        v89 = *(v88 - 1);
        v90 = *v88;
        v88 += 2;
        v10 += v89 + v90;
      }

      while (v10 <= v16 && v10 < v13);
      ii = 0;
      v11 = v88 - 1;
    }

    else
    {
      ii = 0;
    }

LABEL_84:
    v15 = -v16;
  }

  while (v16 < v13);
  if (!ii)
  {
    goto LABEL_486;
  }

  if (v18 > 0)
  {
    goto LABEL_544;
  }

  v150 = (*(v7 + 64))(*(v7 + 72));
  if (v150 != -1)
  {
    v151 = *(v7 + 20);
    v25 = *(v7 + 16) | (TIFFBitRevTable[v150] << v151);
    *(v7 + 16) = v25;
    v18 = v151 + 8;
    goto LABEL_543;
  }

  if (!*(v7 + 20))
  {
LABEL_596:
    if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
    {
      *v19++ = ii;
    }

LABEL_598:
    if (v16 != v13)
    {
      v273 = v16 > v13;
      v6 = v314;
      if (v16 > v13 && v19 > v8)
      {
        v301 = v19 - 1;
        v302 = v19 - 1;
        do
        {
          v303 = *v302--;
          v16 -= v303;
          v273 = v16 > v13;
          v304 = v16 > v13 && v301 > v8;
          v301 = v302;
        }

        while (v304);
        v19 = v302 + 1;
      }

      if (v16 < v13)
      {
        v305 = *(v7 + 48) + 2 * *(v7 + 56);
        if (((v19 - v8) & 2) != 0 && v19 < v305)
        {
          *v19++ = 0;
        }

        if (v19 >= v305)
        {
          goto LABEL_489;
        }

        result = 0;
        v279 = v16 & ~(v16 >> 31);
LABEL_615:
        *v19 = v13 - v279;
        goto LABEL_490;
      }

      goto LABEL_653;
    }

    goto LABEL_599;
  }

  v25 = *(v7 + 16);
  v18 = 1;
LABEL_543:
  *(v7 + 20) = v18;
LABEL_544:
  if (v25)
  {
    *(v7 + 16) = v25 >> 1;
    *(v7 + 20) = v18 - 1;
  }

  else
  {
    *(v7 + 28) = 1;
  }

LABEL_484:
  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
  {
    *v19++ = ii;
  }

LABEL_486:
  if (v16 == v13)
  {
    v6 = v314;
  }

  else
  {
    v266 = v16 > v13;
    v6 = v314;
    if (v16 > v13 && v19 > v8)
    {
      v267 = v19 - 1;
      v268 = v19 - 1;
      do
      {
        v269 = *v268--;
        v16 -= v269;
        v266 = v16 > v13;
        v270 = v16 > v13 && v267 > v8;
        v267 = v268;
      }

      while (v270);
      v19 = v268 + 1;
    }

    if (v16 >= v13)
    {
      if (v266)
      {
        v272 = *(v7 + 48) + 2 * *(v7 + 56);
        if (v19 < v272)
        {
          *v19++ = v13;
        }

        if (v19 < v272)
        {
          *v19++ = 0;
        }
      }
    }

    else
    {
      v271 = *(v7 + 48) + 2 * *(v7 + 56);
      if (((v19 - v8) & 2) != 0 && v19 < v271)
      {
        *v19++ = 0;
      }

      if (v19 < v271)
      {
        *v19++ = v13 - (v16 & ~(v16 >> 31));
      }
    }
  }

  if (*(v7 + 24) > 0)
  {
LABEL_489:
    result = 0;
    goto LABEL_490;
  }

LABEL_580:
  fill_runs(v312, v8, v19, v13, *(v7 + 4) & 0x10);
  v291 = *(v7 + 48);
  if (v19 < v291 + 2 * *(v7 + 56))
  {
    *v19 = 0;
  }

  v292 = *(v7 + 40);
  *(v7 + 40) = v291;
  *(v7 + 48) = v292;
LABEL_583:
  result = v313;
  ++*(v7 + 60);
  v293 = *(v6 + 16);
  v36 = __OFSUB__(v293, 1);
  v294 = v293 - 1;
  if (v294 < 0 == v36)
  {
    *(v6 + 16) = v294;
    if (!v294)
    {
LABEL_490:
      *(v6 + 8) = 1;
    }
  }

  return result;
}

CFTypeID CGLayerGetTypeID(void)
{
  if (_block_invoke_once_2327 != -1)
  {
    dispatch_once(&_block_invoke_once_2327, &__block_literal_global_5_2328);
  }

  return CGLayerGetTypeID_layer_type_id;
}

CGLayerRef CGLayerRetain(CGLayerRef layer)
{
  if (layer)
  {
    CFRetain(layer);
  }

  return layer;
}

void CGLayerRelease(CGLayerRef layer)
{
  if (layer)
  {
    CFRelease(layer);
  }
}

CGSize CGLayerGetSize(CGLayerRef layer)
{
  v1 = (layer + 24);
  p_height = (layer + 32);
  if (!layer)
  {
    v1 = &CGSizeZero;
    p_height = &CGSizeZero.height;
  }

  v3 = *p_height;
  width = v1->width;
  result.height = v3;
  result.width = width;
  return result;
}

CGContextRef CGLayerGetContext(CGContextRef layer)
{
  if (layer)
  {
    return *(layer + 2);
  }

  return layer;
}

void CGContextDrawLayerInRect(CGContextRef context, CGRect rect, CGLayerRef layer)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (layer)
      {
        v3 = *(layer + 2);
        if (v3)
        {
          v4 = *(v3 + 40);
          if (v4)
          {
            v5 = *(v4 + 216);
            if (v5)
            {
              v5(rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
            }
          }
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextDrawLayerInRect", context);
    }
  }

  else
  {
    handle_invalid_context("CGContextDrawLayerInRect", 0);
  }
}

uint64_t rip_auto_context_draw_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(v12 + 88);
  if (!v14)
  {
    v14 = *(v12 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v12, a7);
  v15 = *(v12 + 112);
  v16 = *(a7 + 120);
  if (*(v16 + 48) >= v15)
  {
    v15 = *(v16 + 48);
  }

  *(v12 + 112) = v15;
  if (v14)
  {
    v17 = *(v14 + 40);
    if (v17)
    {
      v18 = *(v17 + 216);
      if (v18)
      {
        v19 = v18(a2, a3, a4, a5);
      }

      else
      {
        v19 = 1006;
      }
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 105) |= rip_auto_context_contains_transparency(v12);
  }

  else
  {
    v19 = 0;
  }

  pthread_mutex_unlock(v13);
  return v19;
}

void update_colored_pattern_info_2365(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (cf && *(cf + 185) == 1)
  {
    if (v3 != cf)
    {
      if (v3)
      {
        CFRelease(v3);
      }

      CFRetain(cf);
      *a1 = cf;
      v5 = CGBitmapContextCreateWithCallbacks(2uLL, 2uLL, 0, 0, 0, 0, 0);
      v6 = *(cf + 21);
      if (v6)
      {
        v6(*(cf + 10), v5);
      }

      v7 = *(CGContextGetDelegate(v5) + 288);
      *(a1 + 8) = *(v7 + 104);
      v8 = *(v7 + 100);
      *(a1 + 12) = *(v7 + 116);
      *(a1 + 16) = v8;
      *(a1 + 20) = *(v7 + 108);
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t rip_auto_context_get_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  if (!a1)
  {
    v14 = 120;
    pthread_mutex_lock(0x78);
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(a1 + 288);
  v14 = v13 + 120;
  pthread_mutex_lock((v13 + 120));
  if (!v13)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = *(v13 + 88);
  if (!v15)
  {
    v15 = *(v13 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v13, a7);
  v16 = *(v13 + 112);
  v17 = *(a7 + 120);
  if (*(v17 + 48) >= v16)
  {
    v16 = *(v17 + 48);
  }

  *(v13 + 112) = v16;
  if (v15)
  {
    v18 = *(v15 + 40);
    if (v18 && (v19 = *(v18 + 208)) != 0)
    {
      v12 = v19(a2, a3, a4, a5);
    }

    else
    {
      v12 = 0;
    }

    *(v13 + 105) |= rip_auto_context_contains_transparency(v13);
  }

  pthread_mutex_unlock(v14);
  return v12;
}

uint64_t rip_auto_context_draw_display_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = 120;
    pthread_mutex_lock(0x78);
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 288);
  v5 = v4 + 120;
  pthread_mutex_lock((v4 + 120));
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 88);
  if (!v6)
  {
    v6 = *(v4 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v4, a3);
  v7 = *(v4 + 112);
  v8 = *(a3 + 120);
  if (*(v8 + 48) >= v7)
  {
    v7 = *(v8 + 48);
  }

  *(v4 + 112) = v7;
  if (v6)
  {
    v9 = *(v6 + 40);
    if (v9)
    {
      v10 = *(v9 + 128);
      if (v10)
      {
        v11 = v10();
      }

      else
      {
        v11 = 1006;
      }
    }

    else
    {
      v11 = 0;
    }

    *(v4 + 105) |= rip_auto_context_contains_transparency(v4);
  }

  else
  {
    v11 = 0;
  }

  pthread_mutex_unlock(v5);
  return v11;
}

uint64_t rip_auto_context_draw_images(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImage **a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(v12 + 88);
  if (!v14)
  {
    v14 = *(v12 + 80);
  }

LABEL_7:
  if (a7)
  {
    v15 = a5;
    v16 = a7;
    do
    {
      v17 = *v15++;
      rip_adaptive_bitmap_context_update_content_info_from_image(v12, v17);
      --v16;
    }

    while (v16);
  }

  if (v14)
  {
    v18 = CGContextDelegateDrawImages(*(v14 + 40), a2, a3, a4, a5, a6, a7);
    *(v12 + 105) |= rip_auto_context_contains_transparency(v12);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v13);
  return v18;
}

uint64_t rip_auto_context_draw_lines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (!a1)
  {
    v10 = 120;
    pthread_mutex_lock(0x78);
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 288);
  v10 = v9 + 120;
  pthread_mutex_lock((v9 + 120));
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(v9 + 88);
  if (!v11)
  {
    v11 = *(v9 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v9, a3);
  v12 = *(v9 + 112);
  v13 = *(a3 + 120);
  if (*(v13 + 48) >= v12)
  {
    v12 = *(v13 + 48);
  }

  *(v9 + 112) = v12;
  if (v11)
  {
    CGContextDelegateDrawLines(*(v11 + 40), a2, a3, a4, a5);
    *(v9 + 105) |= rip_auto_context_contains_transparency(v9);
  }

  return pthread_mutex_unlock(v10);
}

double rip_auto_context_get_bounds(uint64_t a1)
{
  if (!a1)
  {
    v2 = 120;
    pthread_mutex_lock(0x78);
    goto LABEL_9;
  }

  v1 = *(a1 + 288);
  v2 = v1 + 120;
  pthread_mutex_lock((v1 + 120));
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 88);
  if (!v3)
  {
    v3 = *(v1 + 80);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    v7 = 0x7FF0000000000000;
    goto LABEL_10;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
LABEL_9:
    v7 = 0xFFDFFFFFFFFFFFFFLL;
LABEL_10:
    v6 = *&v7;
    goto LABEL_11;
  }

  v6 = v5();
LABEL_11:
  pthread_mutex_unlock(v2);
  return v6;
}

uint64_t rip_auto_context_get_transform@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  *a2 = CGAffineTransformIdentity;
  pthread_mutex_lock((v3 + 120));
  if (v3)
  {
    v4 = *(v3 + 88);
    if (v4 || (v4 = *(v3 + 80)) != 0)
    {
      v5 = *(v4 + 40);
      if (v5 && (v6 = *(v5 + 40)) != 0)
      {
        v6();
      }

      else
      {
        *a2 = CGAffineTransformIdentity;
      }
    }
  }

  return pthread_mutex_unlock((v3 + 120));
}

uint64_t SimpleFont::emit_definitions(uint64_t this)
{
  v1 = *(this + 64);
  v2 = *(this + 72);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 16))(v3);
  }

  return this;
}

void SimpleFont::emit_references(uint64_t this)
{
  v1 = *(this + 64);
  for (i = *(this + 72); v1 != i; ++v1)
  {
    v3 = *v1;
    if (*(*v1 + 104))
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }

      PDFDocumentPrintNameReferencePair(**(*(v3 + 8) + 8), "/%N %R", v4, *(v3 + 48));
    }
  }
}

void SimpleFont::add_glyphs_to_layout(SimpleFont *this, int a2, unsigned __int16 **a3)
{
  v3 = *a3;
  if (*a3 != a3[1])
  {
    while (1)
    {
      v6 = v3;
      v7 = *v3++;
      for (i = SimpleFont::get_subset_for_glyph(this, v7); v3 != a3[1]; ++v3)
      {
        if (SimpleFont::get_subset_for_glyph(this, *v3) != i)
        {
          break;
        }
      }

      if (i)
      {
        break;
      }

      if (v3 == a3[1])
      {
        return;
      }
    }

    if (v6 != v3)
    {
      v9 = v6;
      std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((i + 88), *v6, &v9);
      operator new();
    }

    __break(1u);
  }
}

void sub_1840449E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *SimpleFont::get_subset_for_glyph(SimpleFont *this, unsigned int a2)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  v5 = (this + 96);
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = (this + 96);
  do
  {
    v7 = *(v4 + 16);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 16) > a2)
  {
LABEL_10:
    v10 = *(this + 8);
    v11 = *(this + 9);
    if (v10 == v11)
    {
      v12 = (*(*this + 48))(this, 1);
      v13 = v12;
      v15 = *(this + 9);
      v14 = *(this + 10);
      if (v15 >= v14)
      {
        v17 = *(this + 8);
        v18 = (v15 - v17) >> 3;
        if ((v18 + 1) >> 61)
        {
          goto LABEL_58;
        }

        v19 = v14 - v17;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v21);
        }

        v22 = (8 * v18);
        *v22 = v13;
        v11 = 8 * v18 + 8;
        v23 = *(this + 8);
        v24 = *(this + 9) - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = *(this + 8);
        *(this + 8) = v25;
        *(this + 9) = v11;
        *(this + 10) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v15 = v12;
        v11 = (v15 + 1);
      }

      *(this + 9) = v11;
      v10 = *(this + 8);
    }

    if (v10 != v11)
    {
      if (FontSubset::add_glyph(*v10, a2))
      {
        if (*(this + 8) != *(this + 9))
        {
          goto LABEL_48;
        }

        goto LABEL_56;
      }

      v28 = *(this + 8);
      v27 = *(this + 9);
      if ((v27 - v28) < 9)
      {
LABEL_34:
        v29 = (*(*this + 48))(this, 0);
        if ((FontSubset::add_glyph(v29, a2) & 1) == 0)
        {
          goto LABEL_57;
        }

        v31 = *(this + 9);
        v30 = *(this + 10);
        if (v31 < v30)
        {
          *v31 = v29;
          v32 = (v31 + 1);
LABEL_47:
          *(this + 9) = v32;
LABEL_48:
          v42 = *v5;
          if (!*v5)
          {
LABEL_54:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v6 = v42;
              v43 = *(v42 + 16);
              if (v43 <= a2)
              {
                break;
              }

              v42 = *v6;
              if (!*v6)
              {
                goto LABEL_54;
              }
            }

            if (v43 >= a2)
            {
              return v6[5];
            }

            v42 = v6[1];
            if (!v42)
            {
              goto LABEL_54;
            }
          }
        }

        v33 = *(this + 8);
        v34 = (v31 - v33) >> 3;
        if (!((v34 + 1) >> 61))
        {
          v35 = v30 - v33;
          v36 = v35 >> 2;
          if (v35 >> 2 <= (v34 + 1))
          {
            v36 = v34 + 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v37);
          }

          *(8 * v34) = v29;
          v32 = 8 * v34 + 8;
          v38 = *(this + 8);
          v39 = *(this + 9) - v38;
          v40 = (8 * v34 - v39);
          memcpy(v40, v38, v39);
          v41 = *(this + 8);
          *(this + 8) = v40;
          *(this + 9) = v32;
          *(this + 10) = 0;
          if (v41)
          {
            operator delete(v41);
          }

          goto LABEL_47;
        }

LABEL_58:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      if (v28 != v27)
      {
        if (FontSubset::add_glyph(*(v27 - 8), a2))
        {
          if (*(this + 8) != *(this + 9))
          {
            goto LABEL_48;
          }

          goto LABEL_56;
        }

        goto LABEL_34;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    _CGHandleAssert("add_glyph", 65, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Fonts/SimpleFont.cc", "subset->add_glyph(glyph)", "glyph addition failed");
  }

  return v6[5];
}

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2, unsigned __int16 **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 26);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t SimpleFont::SimpleFont(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4)
{
  *a1 = &unk_1EF23EF78;
  *(a1 + 8) = a2;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
  *(a1 + 24) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_1EF238718;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  return a1;
}

void SimpleFont::~SimpleFont(SimpleFont *this)
{
  *this = &unk_1EF238718;
  v2 = *(this + 8);
  v3 = *(this + 9);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  std::__tree<unsigned long>::destroy(*(this + 12));
  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  PDFFont::~PDFFont(this);
}

void *PDFWriterCreate(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040D897577FuLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    if (a1)
    {
      CFRetain(a1);
      *v2 = a1;
      v2[1] = 0;
      v2[3] = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void PDFWriterPrintf(uint64_t *result, char *a2, ...)
{
  va_start(va, a2);
  if (result)
  {
    PDFWriterVPrintf(result, a2, va);
  }
}

void PDFWriterVPrintf(uint64_t *a1, char *a2, _DWORD *a3)
{
  v133 = a3;
  if (a1)
  {
    v5 = *a1;
    if (a1[3] > 0x48 || *(a1 + 16) == 1)
    {
      emit_whitespace(a1);
    }

    v132 = 0;
    v6 = *MEMORY[0x1E695E480];
    v130 = *MEMORY[0x1E695E480];
    bytesDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      while (1)
      {
        v7 = *a2;
        if (v7 > 0x1F)
        {
          break;
        }

        if (v7 == 10)
        {
          *(a1 + 17) = 0;
          emit_newline(a1);
          ++a2;
        }

        else
        {
          if (!*a2)
          {
            return;
          }

LABEL_15:
          v132 = *a2;
          a1[3] += CGDataConsumerPutBytes(v5, &v132, 1);
          *(a1 + 16) = 1;
          ++a2;
        }
      }

      if (v7 == 32)
      {
        emit_whitespace(a1);
        ++a2;
      }

      else
      {
        if (v7 != 37)
        {
          goto LABEL_15;
        }

        v8 = a2[1];
        if (v8 == 42)
        {
          v9 = a2[2];
          a2 += 3;
        }

        else
        {
          a2 += 2;
          v9 = v8;
        }

        if (v9 > 84)
        {
          if (v9 <= 101)
          {
            if (v9 > 97)
            {
              if (v9 != 98)
              {
                if (v9 == 99)
                {
                  v133 += 2;
                  v20 = CGDataConsumerPrintf(v5, "%c");
                  goto LABEL_133;
                }

                if (v9 == 100)
                {
                  v133 += 2;
                  goto LABEL_44;
                }

                goto LABEL_105;
              }

              v53 = v133;
              v133 += 2;
              if (*v53)
              {
                v54 = "true";
              }

              else
              {
                v54 = "false";
              }

              v55 = v5;
LABEL_78:
              v20 = CGDataConsumerPrintf(v55, v54, v124);
              goto LABEL_133;
            }

            if (v9 != 85)
            {
              if (v9 == 88)
              {
                v29 = v133;
                v133 += 2;
                v30 = *v29;
                v133 = v29 + 4;
                v31 = CFDataCreateWithBytesNoCopy(v6, *(v29 + 1), v30, bytesDeallocator);
                v32 = a1;
                v33 = v31;
                v34 = 1;
                goto LABEL_70;
              }

              goto LABEL_105;
            }

            v89 = v133;
            v133 += 2;
            v90 = CFURLCopyAbsoluteURL(*v89);
            if (v90)
            {
              v31 = v90;
              v91 = CFURLCreateData(v6, v90, 0x8000100u, 0);
              v15 = print_data(a1, v91, 0);
              if (v91)
              {
                CFRelease(v91);
              }

LABEL_72:
              CFRelease(v31);
              goto LABEL_134;
            }

LABEL_132:
            v20 = print_data(a1, 0, 0);
            goto LABEL_133;
          }

          if (v9 <= 113)
          {
            if (v9 == 102)
            {
              v93 = v133;
              v133 += 2;
              v20 = PDFWriteNumber(v5, *v93);
              goto LABEL_133;
            }

            if (v9 != 109)
            {
              goto LABEL_105;
            }

            v35 = v133;
            v133 += 2;
            v36 = *v35;
            v37 = *a1;
            if (v8 != 42)
            {
              CGDataConsumerPrintf(v37, "[");
              v37 = *a1;
            }

            v38 = PDFWriteNumber(v37, *v36);
            v39 = &v38[CGDataConsumerPrintf(*a1, " ")];
            v40 = PDFWriteNumber(*a1, v36[1]);
            v41 = &v39[&CGDataConsumerPrintf(*a1, " ")[v40]];
            v42 = PDFWriteNumber(*a1, v36[2]);
            v43 = &CGDataConsumerPrintf(*a1, " ")[v42];
            v44 = &v41[&PDFWriteNumber(*a1, v36[3])[v43]];
            v45 = CGDataConsumerPrintf(*a1, " ");
            v46 = &PDFWriteNumber(*a1, v36[4])[v45];
            v47 = &CGDataConsumerPrintf(*a1, " ")[v46];
            v15 = &v44[&PDFWriteNumber(*a1, v36[5])[v47]];
            if (v8 != 42)
            {
              v15 += CGDataConsumerPrintf(*a1, "]");
            }
          }

          else
          {
            if (v9 != 114)
            {
              if (v9 == 115)
              {
                v133 += 2;
                v20 = CGDataConsumerPrintf(v5, "%s");
                goto LABEL_133;
              }

              if (v9 == 122)
              {
                v133 += 2;
LABEL_44:
                v20 = CGDataConsumerPrintf(v5, "%d");
LABEL_133:
                v15 = v20;
                goto LABEL_134;
              }

LABEL_105:
              v132 = v9;
              goto LABEL_106;
            }

            v57 = v133;
            v133 += 2;
            v58 = *v57;
            v59 = *v58;
            if (v58[1] == INFINITY || v59 == INFINITY)
            {
              v61 = &CGRectZero;
            }

            else
            {
              v61 = v58;
            }

            v62 = *a1;
            if (v8 == 42)
            {
              x = v61->origin.x;
              width = v61->size.width;
              height = v61->size.height;
              if (width < 0.0 || height < 0.0)
              {
                y = v61->origin.y;
                *&x = CGRectStandardize(*&x);
              }

              v129 = PDFWriteNumber(v62, x);
              v127 = CGDataConsumerPrintf(*a1, " ");
              v98 = *a1;
              v99 = v61->origin.y;
              v100 = v61->size.width;
              v101 = v61->size.height;
              if (v100 < 0.0 || v101 < 0.0)
              {
                v102 = v61->origin.x;
                *(&v99 - 1) = CGRectStandardize(*(&v99 - 1));
              }

              v103 = PDFWriteNumber(v98, v99);
              v104 = CGDataConsumerPrintf(*a1, " ");
              v105 = *a1;
              v106 = v61->size.width;
              v107 = v61->size.height;
              if (v106 < 0.0 || v107 < 0.0)
              {
                v108 = v61->origin.x;
                v109 = v61->origin.y;
                *(&v106 - 2) = CGRectStandardize(*(&v106 - 2));
              }

              v110 = PDFWriteNumber(v105, v106);
              v111 = CGDataConsumerPrintf(*a1, " ");
              v112 = *a1;
              v113 = v61->size.width;
              v114 = v61->size.height;
              if (v113 < 0.0 || v114 < 0.0)
              {
                v115 = v61->origin.x;
                v116 = v61->origin.y;
                *(&v114 - 3) = CGRectStandardize(*(&v113 - 2));
              }

              v15 = &v129[v127 + &v104[v103] + &v111[v110] + PDFWriteNumber(v112, v114)];
            }

            else
            {
              v128 = CGDataConsumerPrintf(*a1, "[", v59);
              v63 = *a1;
              v64 = v61->origin.x;
              v65 = v61->size.width;
              v66 = v61->size.height;
              if (v65 < 0.0 || v66 < 0.0)
              {
                v67 = v61->origin.y;
                *&v64 = CGRectStandardize(*&v64);
              }

              v126 = PDFWriteNumber(v63, v64);
              v125 = CGDataConsumerPrintf(*a1, " ");
              v68 = *a1;
              v69 = v61->origin.y;
              v70 = v61->size.width;
              v71 = v61->size.height;
              if (v70 < 0.0 || v71 < 0.0)
              {
                v72 = v61->origin.x;
                *(&v69 - 1) = CGRectStandardize(*(&v69 - 1));
              }

              v73 = PDFWriteNumber(v68, v69);
              v74 = CGDataConsumerPrintf(*a1, " ");
              v75 = *a1;
              v76 = v61->origin.x;
              v77 = v61->size.width;
              v78 = v61->size.height;
              if (v77 < 0.0 || v78 < 0.0)
              {
                v79 = v61->origin.y;
                *&v76 = CGRectStandardize(*&v76);
              }

              v80 = PDFWriteNumber(v75, v76 + v77);
              v81 = CGDataConsumerPrintf(*a1, " ");
              v82 = *a1;
              v83 = v61->origin.y;
              v84 = v61->size.width;
              v85 = v61->size.height;
              if (v84 < 0.0 || v85 < 0.0)
              {
                v86 = v61->origin.x;
                *(&v83 - 1) = CGRectStandardize(*(&v83 - 1));
              }

              v87 = &v126[&v125[v128] + &v74[v73] + v81 + v80];
              v88 = PDFWriteNumber(v82, v83 + v85);
              v15 = &v87[&CGDataConsumerPrintf(*a1, "]")[v88]];
            }

            v6 = v130;
          }
        }

        else
        {
          if (v9 > 77)
          {
            if (v9 <= 81)
            {
              if (v9 == 78)
              {
                v92 = v133;
                v133 += 2;
                v20 = print_name(a1, *v92);
                goto LABEL_133;
              }

              if (v9 == 79)
              {
                v133 += 2;
                v20 = CGDataConsumerPrintf(v5, "%llu");
                goto LABEL_133;
              }

              goto LABEL_105;
            }

            if (v9 == 82)
            {
              v56 = v133;
              v133 += 2;
              v124 = *v56;
              v55 = v5;
              v54 = "%lu 0 R";
              goto LABEL_78;
            }

            if (v9 == 83)
            {
              v50 = v133;
              v133 += 2;
              v20 = print_ascii_string(a1, *v50);
              goto LABEL_133;
            }

            v16 = v133;
            v133 += 2;
            v17 = *v16;
            if (*v16)
            {
              ExternalRepresentation = CFStringCreateExternalRepresentation(v6, *v16, 0x600u, 0);
              if (ExternalRepresentation)
              {
                v19 = ExternalRepresentation;
LABEL_38:
                v15 = print_data(a1, v19, 0);
                CFRelease(v19);
                goto LABEL_134;
              }

              Length = CFStringGetLength(v17);
              if (Length)
              {
                v118 = Length;
                v119 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
                if (v119)
                {
                  v120 = v119;
                  v135.location = 0;
                  v135.length = v118;
                  CFStringGetCharacters(v17, v135, v119);
                  Mutable = CFDataCreateMutable(v6, 0);
                  if (Mutable)
                  {
                    v19 = Mutable;
                    *bytes = -2;
                    CFDataAppendBytes(Mutable, bytes, 2);
                    if (v118 >= 1)
                    {
                      v122 = v120;
                      do
                      {
                        v123 = *v122++;
                        *bytes = bswap32(v123) >> 16;
                        CFDataAppendBytes(v19, bytes, 2);
                        --v118;
                      }

                      while (v118);
                    }

                    free(v120);
                    goto LABEL_38;
                  }

                  free(v120);
                }
              }
            }

            goto LABEL_132;
          }

          if (v9 <= 64)
          {
            if (v9 == 37)
            {
              v132 = 37;
              *(a1 + 17) = 1;
LABEL_106:
              v20 = CGDataConsumerPutBytes(v5, &v132, 1);
              goto LABEL_133;
            }

            if (v9 != 47)
            {
              goto LABEL_105;
            }

            v21 = v133;
            v133 += 2;
            v22 = *v21;
            v23 = CFStringGetLength(*v21);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v23, 0x8000100u);
            v25 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x5C26AC41uLL);
            if (v25)
            {
              v26 = v25;
              if (CFStringGetCString(v22, v25, MaximumSizeForEncoding + 1, 0x8000100u))
              {
                v27 = CGDataConsumerPrintf(*a1, "/");
                if (v8 == 42)
                {
                  v28 = v26;
                }

                else
                {
                  v28 = v26 + 1;
                }

                v15 = &v27[print_name(a1, v28)];
              }

              else
              {
                v15 = 0;
              }

              free(v26);
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            if (v9 == 65)
            {
              v51 = v133;
              v133 += 2;
              v52 = *v51;
              v133 = v51 + 4;
              v31 = CFDataCreateWithBytesNoCopy(v6, *(v51 + 1), v52, bytesDeallocator);
              v32 = a1;
              v33 = v31;
              v34 = 0;
LABEL_70:
              v49 = print_data(v32, v33, v34);
LABEL_71:
              v15 = v49;
              if (!v31)
              {
                goto LABEL_134;
              }

              goto LABEL_72;
            }

            if (v9 == 68)
            {
              v48 = v133;
              v133 += 2;
              v31 = PDFCreateDateString(*v48);
              v49 = print_ascii_string(a1, v31);
              goto LABEL_71;
            }

            if (v9 != 71)
            {
              goto LABEL_105;
            }

            v10 = v133;
            v133 += 2;
            v11 = *v10;
            v133 = v10 + 2;
            v12 = v10[1];
            for (i = CGDataConsumerPutBytes(v5, "<", 1); v11; --v11)
            {
              v14 = *v12++;
              i += CGDataConsumerPrintf(v5, "%04x", v14);
            }

            v15 = CGDataConsumerPutBytes(v5, ">", 1) + i;
          }
        }

LABEL_134:
        a1[3] += v15;
        *(a1 + 16) = 1;
      }
    }
  }
}

uint64_t emit_whitespace(uint64_t a1)
{
  if (*(a1 + 24) < 0x49uLL)
  {
    result = CGDataConsumerPrintf(*a1, " ");
    *(a1 + 24) += result;
    *(a1 + 16) = 0;
  }

  else
  {

    return emit_newline(a1);
  }

  return result;
}

_BYTE *print_ascii_string(uint64_t *a1, const __CFString *a2)
{
  v2 = a1;
  if (a2)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a2, 0x600u, 0);
    if (ExternalRepresentation)
    {
      v4 = ExternalRepresentation;
      v5 = print_data(v2, ExternalRepresentation, 0);
      CFRelease(v4);
      return v5;
    }

    pdf_error("Warning: can't convert string to ASCII.");
    a1 = v2;
  }

  return print_data(a1, 0, 0);
}

uint64_t print_name(uint64_t *a1, unsigned __int8 *a2)
{
  for (i = 0; ; i += v9)
  {
    v6 = *a2++;
    v5 = v6;
    if (v6 <= 0x3E)
    {
      if (((1 << v5) & 0x5000832800000000) != 0)
      {
        goto LABEL_9;
      }

      if (!v5)
      {
        break;
      }
    }

    if ((v5 - 91) <= 0x22 && ((1 << (v5 - 91)) & 0x500000005) != 0)
    {
LABEL_9:
      v8 = *a1;
LABEL_10:
      v9 = CGDataConsumerPrintf(v8, "#%02x");
      continue;
    }

    v8 = *a1;
    if ((v5 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_10;
    }

    v9 = CGDataConsumerPrintf(v8, "%c");
  }

  return i;
}

_BYTE *print_data(uint64_t *a1, CFDataRef theData, int a3)
{
  v4 = theData;
  v6 = a1[1];
  if (v6)
  {
    if (theData)
    {
      v7 = *(*v6 + 280);
      if (v7)
      {
        Length = CFDataGetLength(theData);
        Value = CFDictionaryGetValue(*(v6 + 16), @"kCGPDFContextEncryptionCipher");
        if (Value && ((v10 = Value, CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2")) || CFEqual(v10, @"kCGPDFContextEncryptionCipherAESv3")))
        {
          v11 = Length + 32;
          v12 = 1;
        }

        else
        {
          v12 = 0;
          v11 = Length;
        }

        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v11);
        if (Mutable)
        {
          v15 = Mutable;
          v24 = Length;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v17 = MutableBytePtr;
          if (v12)
          {
            *MutableBytePtr = *(v6 + 108);
            v17 = MutableBytePtr + 16;
            v11 -= 16;
            v18 = 16;
          }

          else
          {
            v18 = 0;
          }

          pdf_cryptor = get_pdf_cryptor(v6, v7);
          v25 = 0;
          BytePtr = CFDataGetBytePtr(v4);
          CGCryptorProcessBytes(pdf_cryptor, BytePtr, v24, v17, v11, &v25);
          v22 = v25 + v18;
          if (v12)
          {
            CGCryptorDrain(pdf_cryptor, &v17[v25], v11 - v25, &v25);
            v22 += v25;
          }

          CFDataSetLength(v15, v22);
          CGCryptorRelease(pdf_cryptor);
          v23 = PDFWriteCFData(*a1, v15, a3);
          CFRelease(v15);
          return v23;
        }
      }
    }

    v13 = *a1;
    theData = 0;
  }

  else
  {
    v13 = *a1;
  }

  return PDFWriteCFData(v13, theData, a3);
}

_BYTE *emit_newline(_BYTE **a1)
{
  result = CGDataConsumerPrintf(*a1, "\n");
  if (*(a1 + 17) == 1)
  {
    result = CGDataConsumerPrintf(*a1, "%%%% ");
  }

  *(a1 + 16) = 0;
  a1[3] = 0;
  return result;
}

uint64_t *PDFWriterBeginObject(uint64_t *result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = result;
    if (result[3])
    {
      emit_newline(result);
    }

    v6 = *v5;
    if (a3)
    {
      if (v6)
      {
        v7 = *(v6 + 48);
      }

      else
      {
        v7 = 0;
      }

      *a3 = v7;
    }

    return CGDataConsumerPrintf(v6, "%lu 0 obj\n", a2);
  }

  return result;
}

_BYTE *PDFWriterEndObject(_BYTE *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 3))
    {
      emit_newline(result);
    }

    result = CGDataConsumerPrintf(*v3, "endobj\n");
    if (a2)
    {
      v4 = *v3;
      if (*v3)
      {
        v4 = *(v4 + 48);
      }

      *a2 = v4;
    }
  }

  return result;
}

void PDFWriterAnnotate(uint64_t *result, char *a2, ...)
{
  va_start(va, a2);
  if (result)
  {
    if ((didHandleDefaults & 1) == 0)
    {
      pthread_once(&once_16914, handleDefaults);
    }

    if (shouldAnnotate == 1)
    {
      if (result[3])
      {
        PDFWriterPrintf(result, "\n");
      }

      PDFWriterPrintf(result, "%%%% ");
      PDFWriterVPrintf(result, a2, va);
      PDFWriterPrintf(result, "\n");
    }
  }
}

__CFString *color_copy_format_description(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CGColor %p> ", a1);
  if (a1)
  {
    if (a1 < 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(a1);
    }

    else
    {
      ColorSpace = *(a1 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  v5 = CFCopyDescription(ColorSpace);
  if (v5)
  {
    v6 = v5;
    CFStringAppend(Mutable, @"[");
    CFStringAppend(Mutable, v6);
    CFStringAppend(Mutable, @"] ");
    CFRelease(v6);
  }

  if (CGColorSpaceGetModel(*(a1 + 24)) == kCGColorSpaceModelRGB)
  {
    v7 = *(a1 + 64);
    if (v7 == 0.0)
    {
      CFStringAppend(Mutable, @"headroom unknown ");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"headroom = %f ", v7);
    }
  }

  CFStringAppend(Mutable, @"( ");
  Components = CGColorGetComponents(a1);
  v9 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (a1 < 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(a1);
  }

  else
  {
    NumberOfComponents = *(a1 + 56);
  }

  while (v9 < NumberOfComponents)
  {
    CFStringAppendFormat(Mutable, 0, @"%g ", *&Components[v9++]);
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_15:
    NumberOfComponents = 0;
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

CGColorSpaceRef CGTaggedColorGetColorSpace(unint64_t a1)
{
  v1 = *MEMORY[0x1E69E5910];
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v2 = 7;
  }

  else
  {
    v2 = *MEMORY[0x1E69E5910];
  }

  v3 = v2 ^ a1;
  if ((v3 & 0x18) == 8)
  {
    v4 = (v3 >> 5) & 0x3F;
    v5 = 0;
    switch(v4)
    {
      case 0:
        return v5;
      case 1:
        goto LABEL_16;
      case 2:
        goto LABEL_17;
      case 4:
        goto LABEL_12;
      case 5:
        goto LABEL_15;
      case 7:
        v6 = @"kCGColorSpaceSRGB";
        goto LABEL_18;
      case 8:
        v6 = @"kCGColorSpaceAdobeRGB1998";
        goto LABEL_18;
      case 9:
        v6 = @"kCGColorSpaceGenericGrayGamma2_2";
        goto LABEL_18;
      case 12:
        v6 = @"kCGColorSpaceDisplayP3";
        goto LABEL_18;
      case 13:
        v6 = @"kCGColorSpaceDCIP3";
        goto LABEL_18;
      case 14:
        v6 = @"kCGColorSpaceExtendedSRGB";
        goto LABEL_18;
      case 15:
        v6 = @"kCGColorSpaceExtendedGray";
        goto LABEL_18;
      case 16:
        v6 = @"kCGColorSpaceLinearSRGB";
        goto LABEL_18;
      case 17:
        v6 = @"kCGColorSpaceExtendedLinearSRGB";
        goto LABEL_18;
      default:
        _CGHandleAssert("CGTaggedColorGetColorSpace", 36, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointerInternal.h", "0", "Unexpected color space %d", v4);
    }
  }

  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v1 = 0;
  }

  v7 = v1 ^ a1;
  v8 = ((v1 ^ a1) >> 3) & 3;
  if (v8)
  {
    _CGHandleAssert("CGTaggedColorGetPlainSpace", 348, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "TAGGED_PAYLOAD_COLOR_TYPE(payload) == kCGTaggedColorTypePlain", "invalid tagged color payload %llu", v8);
  }

  v9 = (v7 >> 5) & 0x3F;
  if (v9 <= 1)
  {
    if (v9)
    {
LABEL_12:
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      goto LABEL_19;
    }

LABEL_16:
    v6 = @"kCGColorSpaceGenericRGB";
    goto LABEL_18;
  }

  if (v9 == 2)
  {
LABEL_17:
    v6 = @"kCGColorSpaceGenericGray";
LABEL_18:
    DeviceRGB = CGColorSpaceCreateWithName(v6);
    goto LABEL_19;
  }

  if (v9 != 3)
  {
    _CGHandleAssert("CGTaggedColorGetColorSpace", 45, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointerInternal.h", "0", "Unexpected color space %d", (v3 >> 5) & 0x3F);
  }

LABEL_15:
  DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_19:
  v5 = DeviceRGB;
  if (DeviceRGB)
  {
    CFAutorelease(DeviceRGB);
  }

  return v5;
}

uint64_t CGTaggedColorGetNumberOfComponents(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    LOWORD(v1) = 7;
  }

  v2 = (v1 ^ a1) >> 11;
  if (v2 >= 0x10 || ((0xFF0Fu >> v2) & 1) == 0)
  {
    _CGHandleAssert("CGTaggedColorGetNumberOfComponents", 376, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "0", "invalid tagged payload storage flavor (%u)", v2);
  }

  return qword_1844D5060[v2];
}

double CGTaggedColorGetComponents(unint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  v4 = (v2 ^ a1) >> 3;
  _ZF = (~(v2 ^ a1) & 7) == 0;
  v6 = 0xFFFFFFFFFF00000;
  if (_ZF)
  {
    v6 = 0xFFFFFFFF00000;
  }

  v7 = v6 & (v3 >> 3);
  v8 = v7 >> 20;
  v9 = (v4 >> 8) & 0x1F;
  if (v9 > 9)
  {
    if (v9 <= 12)
    {
      if (v9 == 10)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        result = *&v8 / 100.0;
        *(a2 + 16) = 0;
      }

      else
      {
        if (v9 != 11)
        {
          result = *&v8 / 100.0;
          *a2 = result;
          *(a2 + 8) = 0;
          return result;
        }

        *(a2 + 16) = 0x3FF0000000000000;
        __asm { FMOV            V0.2D, #1.0 }

        *a2 = _Q0;
        result = *&v8 / 100.0;
      }

LABEL_29:
      *(a2 + 24) = result;
      return result;
    }

    switch(v9)
    {
      case 13:
        result = *&v8 / 100.0;
        *a2 = result;
        *(a2 + 8) = 0x3FF0000000000000;
        return result;
      case 14:
        *a2 = 0;
        break;
      case 15:
        *a2 = 0x3FF0000000000000;
        break;
      default:
        goto LABEL_33;
    }

    result = *&v8 / 100.0;
    *(a2 + 8) = result;
  }

  else
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          result = (v3 >> 39) / 65535.0;
          *a2 = result;
          *(a2 + 8) = result;
          *(a2 + 16) = result;
          *(a2 + 24) = (v7 >> 20) / 65535.0;
          return result;
        }

        v13 = (v7 >> 20);
        v14 = (v3 >> 39);
        v15 = 65535.0;
        goto LABEL_27;
      }

      *a2 = BYTE3(v8) / 255.0;
      v11 = vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(v3), xmmword_18439C7F0)), 0xFF000000FFLL);
      v12.i64[0] = v11.u32[0];
      v12.i64[1] = v11.u32[1];
      *(a2 + 8) = vdivq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x406FE00000000000uLL));
      result = (v7 >> 20) / 255.0;
      goto LABEL_29;
    }

    if (v9 == 3)
    {
      v13 = (v7 >> 20);
      v14 = (v3 >> 39);
      v15 = 100.0;
LABEL_27:
      result = v14 / v15;
      *a2 = result;
      *(a2 + 8) = v13 / v15;
      return result;
    }

    if (v9 != 8)
    {
      if (v9 == 9)
      {
        result = *&v8 / 100.0;
        *(a2 + 8) = result;
        *(a2 + 16) = result;
        *a2 = result;
        *(a2 + 24) = 0x3FF0000000000000;
        return result;
      }

LABEL_33:
      _CGHandleAssert("CGTaggedColorGetComponents", 459, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "0", "invalid tagged payload storage flavor (%u)", v9);
    }

    result = *&v8 / 100.0;
    *(a2 + 8) = result;
    *(a2 + 16) = result;
    *a2 = result;
    *(a2 + 24) = 0;
  }

  return result;
}

os_log_t __CGTaggedColorCreate_block_invoke()
{
  result = os_log_create("com.apple.coregraphics", "color");
  CGTaggedColorCreate_log = result;
  return result;
}

CGColorRef CGColorCreateGenericCMYK(CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v12 = *MEMORY[0x1E69E9840];
  components[0] = cyan;
  components[1] = magenta;
  v9 = yellow;
  v10 = black;
  v11 = alpha;
  v5 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v6 = CGColorCreate(v5, components);
  CGColorSpaceRelease(v5);
  if (!v6)
  {
    CGPostError("Color creation failed for CMYK colorspace %p, {%f, %f, %f %f, %f}", v5, components[0], components[1], v9, v10, v11);
  }

  return v6;
}

CGColorRef CGColorCreateCopy(CGColorRef color)
{
  if (color)
  {
    CFRetain(color);
  }

  return color;
}

double CGTaggedColorGetAlpha(unint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  NumberOfComponents = CGTaggedColorGetNumberOfComponents(a1);
  MEMORY[0x1EEE9AC00](NumberOfComponents);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, v3);
  CGTaggedColorGetComponents(a1, v4);
  return *&v4[8 * NumberOfComponents - 8];
}

CGFloat CGColorGetAlpha(CGColorRef color)
{
  if (!color)
  {
    return 0.0;
  }

  if ((color & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetAlpha(color);
  }

  return *(color + *(color + 7) + 8);
}

void CGColorRelease(CGColorRef color)
{
  if (color)
  {
    CFRelease(color);
  }
}

uint64_t CGColorGetIdentifier(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return *(result + 16);
  }

  return result;
}

CGColorSpace *CGColorGetPatternBaseColor(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 185) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return *(a1 + 40);
  }

  result = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
  if (result)
  {
    v4 = CGColorCreate(result, (a1 + 72));
    v5 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    if (v5)
    {
      if (v4)
      {
        CFRelease(v4);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

CFMutableDictionaryRef CGColorCopyPropertyList(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  if (v2 != CGColorGetTypeID_color_type_id)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = CGColorSpaceCopyPropertyList(*(a1 + 24));
    if (!v4 || (v5 = v4, CFDictionarySetValue(Mutable, @"kCGColorSpace", v4), CFRelease(v5), CGCFDictionarySetFloat(Mutable, @"kCGColorContentHeadroom", *(a1 + 64)), (v6 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])) == 0) || (v7 = v6, CFDictionarySetValue(Mutable, @"kCGColorComponents", v6), CFRelease(v7), (v8 = *(a1 + 24)) == 0) || (v9 = *(*(v8 + 24) + 48)) == 0 || (Components = CGColorGetComponents(a1)) == 0)
    {
LABEL_16:
      CFRelease(Mutable);
      return 0;
    }

    if (v9 != -1)
    {
      v11 = Components;
      v12 = v9 + 1;
      while (1)
      {
        valuePtr = *v11;
        v13 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        CFArrayAppendValue(v7, v13);
        CFRelease(v14);
        ++v11;
        if (!--v12)
        {
          return Mutable;
        }
      }

      goto LABEL_16;
    }
  }

  return Mutable;
}

float *CGColorCreateWithPropertyList(const void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"kCGColorSpace");
  v4 = CGColorSpaceCreateWithPropertyList(Value);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(*(v4 + 3) + 48);
  v7 = CFDictionaryGetValue(a1, @"kCGColorComponents");
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == CFArrayGetTypeID() && (v10 = v6 + 1, CFArrayGetCount(v8) == v6 + 1))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *components = 0u;
      v19 = 0u;
      if (v6 != -1)
      {
        v11 = 0;
        v12 = components;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
          CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, v12);
          ++v11;
          ++v12;
        }

        while (v10 != v11);
      }

      v8 = CGColorCreate(v5, components);
      v17 = 0.0;
      Float = CGCFDictionaryGetFloat(a1, @"kCGColorContentHeadroom", &v17);
      v15 = v17;
      if (!Float)
      {
        v15 = 0.0;
      }

      v8[16] = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  CGColorSpaceRelease(v5);
  return v8;
}

uint64_t CGDisplayListEntryStateGetClipStack(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetClipStack", 20, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !*(v3 + 8))
  {
    return MEMORY[0x10];
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetSoftMask(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetSoftMask", 34, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStyle(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStyle", 48, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3 && (v4 = *(v3 + 24)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetBlackGeneration(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetBlackGeneration", 62, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetUndercolorRemoval(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetUndercolorRemoval", 76, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3 && (v4 = *(v3 + 40)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

double CGDisplayListEntryStateGetFlatness(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFlatness", 90, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return *(v3 + 48);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetAlpha(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAlpha", 100, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return *(v3 + 56);
  }

  else
  {
    return 1.0;
  }
}

uint64_t CGDisplayListEntryStateGetCompositeOperation(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetCompositeOperation", 110, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return ((*(v3 + 96) << 26) >> 26);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CGDisplayListEntryStateGetAntialias(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAntialias", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return (*(v3 + 96) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetAlphaIsShape(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAlphaIsShape", 130, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return *(v3 + 96) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetColorRenderingIntent(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetColorRenderingIntent", 140, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return ((*(v3 + 96) << 18) >> 26);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetFillOverprint(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFillOverprint", 150, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return (*(v3 + 97) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeOverprint(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeOverprint", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return *(v3 + 97) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetOverprintMode(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetOverprintMode", 170, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    return *(v3 + 100);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetFillColor(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFillColor", 181, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 56);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeColor(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeColor", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

double CGDisplayListEntryStateGetStrokeWidth(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeWidth", 210, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetStrokeWidthThreshold(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeWidthThreshold", 220, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    return *(v3 + 24);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetStrokeLimit(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeLimit", 230, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    return *(v3 + 32);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeDash(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeDash", 240, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3 && (v4 = *(v3 + 40)) != 0)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetLineCap(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetLineCap", 254, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    return *(v3 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetLineJoin(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetLineJoin", 264, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    return *(v3 + 49);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeAdjust(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeAdjust", 274, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 50);
  }

  return v3 & 1;
}

__n128 CGDisplayListEntryStateGetBaseCTM@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetBaseCTM", 285, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v2, v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = &CGAffineTransformIdentity;
  }

  v6 = *&v5->c;
  *a2 = *&v5->a;
  *(a2 + 16) = v6;
  result = *&v5->tx;
  *(a2 + 32) = result;
  return result;
}

CGFloat CGDisplayListEntryStateGetPatternPhase(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetPatternPhase", 295, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = (v3 + 56);
  }

  else
  {
    v4 = &CGSizeZero;
  }

  return v4->width;
}

double CGDisplayListEntryStateGetSmoothness(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetSmoothness", 305, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    return *(v3 + 72);
  }

  else
  {
    return 0.0;
  }
}

BOOL CGPDFBase14InfoGetAdvances(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 1;
  if ((a1 - 1) <= 0xD)
  {
    v6 = 0;
    v7 = *(&off_1E6E17948 + v3);
    do
    {
      v8 = *(a2 + v6);
      v9 = 0.0;
      if (v8)
      {
        v10 = bsearch(*(a2 + v6), *(v7 + 8), *v7, 0x10uLL, name_compare);
        if (v10)
        {
          v9 = v10[2];
        }

        else
        {
        }
      }

      *(a3 + v6) = v9;
      v6 += 8;
    }

    while (v6 != 2048);
  }

  return v3 < 0xE;
}

void *gmalloc_typed(size_t size, malloc_type_id_t a2)
{
  if ((size & 0x80000000) != 0)
  {
LABEL_4:
    exception = __cxa_allocate_exception(1uLL);
  }

  if (!size)
  {
    return 0;
  }

  result = malloc_type_malloc(size, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  return result;
}

void *grealloc_typed(void *a1, size_t size, malloc_type_id_t type_id)
{
  if ((size & 0x80000000) != 0)
  {
LABEL_9:
    exception = __cxa_allocate_exception(1uLL);
  }

  if (size)
  {
    if (a1)
    {
      result = malloc_type_realloc(a1, size, type_id);
      if (!result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = malloc_type_malloc(size, type_id);
      if (!result)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    free(a1);
    return 0;
  }

  return result;
}

void *gmallocn_typed(unsigned int a1, unsigned int a2, malloc_type_id_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0 || 0x7FFFFFFF / a2 <= a1)
  {
    exception = __cxa_allocate_exception(1uLL);
  }

  v4 = a2 * a1;

  return gmalloc_typed(v4, a3);
}

void *greallocn_typed(void *a1, unsigned int a2, unsigned int a3, malloc_type_id_t type_id)
{
  if (a2)
  {
    if ((a2 & 0x80000000) != 0 || 0x7FFFFFFF / a3 <= a2)
    {
      exception = __cxa_allocate_exception(1uLL);
    }

    v4 = a3 * a2;

    return grealloc_typed(a1, v4, type_id);
  }

  else
  {
    free(a1);
    return 0;
  }
}

uint64_t CPRangeUnion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 0)
  {
    v4 = a1 + a2;
  }

  else
  {
    v4 = a1;
  }

  if (a4 <= 0)
  {
    v5 = a3 + a4;
  }

  else
  {
    v5 = a3;
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v4 = a1;
    v6 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t CPRangeIntersection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + a2;
  if (a2 <= 0)
  {
    v5 = a1 + a2;
  }

  else
  {
    v5 = a1;
  }

  if (a2 <= 0)
  {
    v4 = a1;
  }

  v6 = a3 + a4;
  if (a4 <= 0)
  {
    v7 = a3 + a4;
  }

  else
  {
    v7 = a3;
  }

  if (a4 <= 0)
  {
    v6 = a3;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v4 >= v6)
  {
    v4 = v6;
  }

  if (v4 <= v5)
  {
    v5 = 0;
  }

  if (!a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

float64x2_t *CGPDFAdvancesCreate(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 200);
  if (v2 == 1)
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x828uLL, 0x1020040591B0F2BuLL);
  __CFSetLastAllocationEventName();
  if (!v3)
  {
    return v3;
  }

  if ((v2 - 2) >= 4)
  {
    if ((v2 - 6) >= 2)
    {
      CGPDFAdvancesRelease(v3);
      return 0;
    }

    v8 = *(a1 + 16);
    value[0] = 0.0;
    array = 0;
    *advances = 0;
    v75 = 0;
    v76 = 0;
    if (CGPDFDictionaryGetNumber(v8, "DW", value))
    {
      v9 = *&value[0];
    }

    else
    {
      value[0] = 1000.0;
      v9 = 0x408F400000000000;
    }

    v31 = 0;
    *&v3[128].f64[0] = v9;
    v32 = vdupq_lane_s64(v9, 0);
    do
    {
      v3[v31++] = v32;
    }

    while (v31 != 128);
    if (CGPDFDictionaryGetArray(v8, "W", advances))
    {
      if (*advances)
      {
        v33 = *(*advances + 24) - *(*advances + 16);
        if (v33)
        {
          v34 = 0;
          v35 = v33 >> 3;
          while (CGPDFArrayGetInteger(*advances, v34, &v76))
          {
            if (CGPDFArrayGetInteger(*advances, v34 + 1, &v75))
            {
              if (!CGPDFArrayGetNumber(*advances, v34 + 2, value))
              {
                break;
              }

              v37 = v76;
              if (v76 <= v75)
              {
                do
                {
                  v36.n128_f64[0] = value[0];
                  add_horizontal_advance(v3, v37, v36);
                  v38 = v37++ < v75;
                }

                while (v38);
              }

              v39 = 3;
            }

            else
            {
              if (!CGPDFArrayGetArray(*advances, v34 + 1, &array))
              {
                break;
              }

              if (array)
              {
                v40 = *(array + 3) - *(array + 2);
                if (v40)
                {
                  v41 = 0;
                  v42 = v40 >> 3;
                  while (CGPDFArrayGetNumber(array, v41, value))
                  {
                    v43.n128_f64[0] = value[0];
                    add_horizontal_advance(v3, v41 + v76, v43);
                    if (v42 == ++v41)
                    {
                      goto LABEL_62;
                    }
                  }

                  break;
                }
              }

LABEL_62:
              v39 = 2;
            }

            v34 += v39;
            if (v34 >= v35)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

LABEL_75:
    value[0] = 0.0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    *advances = 0x408B800000000000;
    array = 0xC08F400000000000;
    if (CGPDFDictionaryGetArray(v8, "DW2", &v72))
    {
      if (!v72 || *(v72 + 3) - *(v72 + 2) != 16 || !CGPDFArrayGetNumber(v72, 0, advances) || !CGPDFArrayGetNumber(v72, 1uLL, &array))
      {
        goto LABEL_107;
      }

      v45 = array;
      v46 = *advances;
    }

    else
    {
      v45 = 0xC08F400000000000;
      v46 = 880.0;
    }

    *&v3[129].f64[0] = v45;
    v3[129].f64[1] = v46;
    if (!CGPDFDictionaryGetArray(v8, "W2", &v73))
    {
      return v3;
    }

    if (!v73)
    {
      return v3;
    }

    v47 = *(v73 + 3) - *(v73 + 2);
    if (!v47)
    {
      return v3;
    }

    v48 = 0;
    v49 = v47 >> 3;
    while (CGPDFArrayGetInteger(v73, v48, &v76))
    {
      if (CGPDFArrayGetInteger(v73, v48 + 1, &v75))
      {
        if (!CGPDFArrayGetNumber(v73, v48 + 2, &array) || !CGPDFArrayGetNumber(v73, v48 + 3, value) || !CGPDFArrayGetNumber(v73, v48 + 4, advances))
        {
          break;
        }

        v52 = v76;
        if (v76 <= v75)
        {
          do
          {
            v51.n128_u64[0] = array;
            add_vertical_advance(v3, v52, v51, value[0], *advances);
            v38 = v52++ < v75;
          }

          while (v38);
        }

        v53 = 5;
      }

      else
      {
        if (!CGPDFArrayGetArray(v73, v48 + 1, &v74))
        {
          break;
        }

        if (v74)
        {
          v55 = *(v74 + 2);
          v54 = *(v74 + 3);
          v56 = (v54 - v55) >> 3;
          if (0xAAAAAAAAAAAAAAABLL * v56 > 0x5555555555555555)
          {
            break;
          }

          if (v54 != v55)
          {
            v57 = 0;
            while (CGPDFArrayGetNumber(v74, v57, &array))
            {
              v58 = v57 + 1;
              if (!CGPDFArrayGetNumber(v74, v58, value))
              {
                break;
              }

              v59 = v58 + 1;
              if (!CGPDFArrayGetNumber(v74, v59, advances))
              {
                break;
              }

              v60.n128_u64[0] = array;
              v61 = v76++;
              add_vertical_advance(v3, v61, v60, value[0], *advances);
              v57 = v59 + 1;
              if (v57 >= v56)
              {
                goto LABEL_103;
              }
            }

            break;
          }
        }

LABEL_103:
        v53 = 2;
      }

      v48 += v53;
      if (v48 >= v49)
      {
        return v3;
      }
    }

LABEL_107:
    pdf_error(v50);
    return v3;
  }

  *advances = 0;
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (FontDescriptor)
  {
    value[0] = 0.0;
    Number = CGPDFDictionaryGetNumber(*(FontDescriptor + 32), "MissingWidth", value);
    v7 = value[0];
    if (!Number)
    {
      v7 = 0.0;
    }

    *advances = v7;
  }

  else
  {
    v7 = 0.0;
  }

  v10 = 0;
  v11 = vdupq_lane_s64(*&v7, 0);
  do
  {
    v3[v10++] = v11;
  }

  while (v10 != 128);
  v76 = 0;
  array = 0;
  v75 = 0;
  v12 = *(a1 + 16);
  if (!CGPDFDictionaryGetInteger(v12, "FirstChar", &v76))
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_22:
    pdf_error(v14);
    goto LABEL_23;
  }

  if (v76 > 0xFF)
  {
LABEL_23:
    v13 = *(a1 + 40);
    goto LABEL_24;
  }

  if (!CGPDFDictionaryGetInteger(v12, "LastChar", &v75))
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v75 > 0xFF || v76 > v75)
  {
    goto LABEL_22;
  }

  if (CGPDFDictionaryGetArray(v12, "Widths", &array))
  {
    if (array)
    {
      v44 = (*(array + 3) - *(array + 2)) >> 3;
    }

    else
    {
      v44 = 0;
    }

    v69 = v75;
    v70 = v76;
    if (v44 != v75 - v76 + 1)
    {
      v70 = v76;
      v71 = v76 + v44;
      if (v76 + v44 >= 256)
      {
        v71 = 256;
      }

      v69 = v71 - 1;
      v75 = v69;
    }

    if (v70 <= v69)
    {
      do
      {
        if (CGPDFArrayGetNumber(array, v70 - v76, advances))
        {
          v3->f64[v70] = *advances;
        }

        v38 = v70++ < v75;
      }

      while (v38);
    }

    return v3;
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_24:
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  *value = 0u;
  Encoding = CGPDFFontGetEncoding(a1);
  v16 = Encoding;
  if (v13)
  {
    if (Encoding)
    {
      for (i = 0; i != 256; ++i)
      {
        *&value[i] = CGPDFEncodingGetNameForIndex(v16, i);
      }

      if (CGPDFBase14InfoGetAdvances(v13, value, v3))
      {
        return v3;
      }
    }
  }

  else
  {
    GlyphVector = CGPDFEncodingGetGlyphVector(Encoding);
    if (GlyphVector)
    {
      v19 = GlyphVector;
      Font = CGPDFFontGetFont(a1);
      if (Font)
      {
        v21 = Font;
        CGFontGetGlyphAdvances(Font, v19, 0x100uLL, advances);
        font_info = get_font_info(v21);
        if (font_info)
        {
          LODWORD(v23) = font_info[2];
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        v62 = 0;
        v63 = vdupq_lane_s64(*&v24, 0);
        v64 = vdupq_n_s64(0x408F400000000000uLL);
        v65 = v3;
        do
        {
          v66 = *&advances[v62];
          v67.i64[0] = v66;
          v67.i64[1] = SDWORD1(v66);
          v68 = vcvtq_f64_s64(v67);
          v67.i64[0] = SDWORD2(v66);
          v67.i64[1] = SHIDWORD(v66);
          *v65 = vdivq_f64(vmulq_f64(v68, v64), v63);
          v65[1] = vdivq_f64(vmulq_f64(vcvtq_f64_s64(v67), v64), v63);
          v65 += 2;
          v62 += 4;
        }

        while (v62 != 256);
        return v3;
      }
    }
  }

  v25 = CGPDFFontGetEncoding(a1);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    *value = 0u;
    do
    {
      *&value[v27] = CGPDFEncodingGetNameForIndex(v26, v27);
      ++v27;
    }

    while (v27 != 256);
    v28 = CGPDFFontGetFont(a1);
    v29 = get_font_info(v28);
    if (v29 && v29[48] == 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = 5;
    }

    CGPDFBase14InfoGetAdvances(v30, value, v3);
  }

  else
  {
    memset_pattern16(v3, &unk_18439D040, 0x800uLL);
  }

  return v3;
}