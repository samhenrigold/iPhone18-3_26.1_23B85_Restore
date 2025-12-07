void rip_adaptive_bitmap_context_update_content_info_from_image(uint64_t a1, CGImageRef image)
{
  ColorSpace = CGImageGetColorSpace(image);
  v5 = ColorSpace;
  if (image && (*(image + 39) & 2) != 0)
  {
    goto LABEL_6;
  }

  content_type_from_color_space = rip_adaptive_bitmap_context_get_content_type_from_color_space(ColorSpace);
  *(a1 + 116) |= content_type_from_color_space;
  if (content_type_from_color_space == 1)
  {
    goto LABEL_8;
  }

  if (content_type_from_color_space != 2)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 104) | CGColorSpaceIsWideGamutRGB(v5);
  }

  *(a1 + 104) = v7;
LABEL_8:
  ComponentType = CGImageGetComponentType(image);
  if (ComponentType)
  {
    *(a1 + 100) = CGPixelComponentMax(ComponentType, *(a1 + 100));
  }

  v9 = *(a1 + 108);
  if (v9 <= CGImageGetHeadroomInfo(image, 0))
  {
    HeadroomInfo = CGImageGetHeadroomInfo(image, 0);
  }

  else
  {
    HeadroomInfo = *(a1 + 108);
  }

  *(a1 + 108) = HeadroomInfo;
}

_DWORD *GRAYA8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if (!a2 || a3 <= 1)
  {
    a2 = malloc_type_malloc(0x32uLL, 0x1080040E00A32E4uLL);
    if (!a2)
    {
      return a2;
    }
  }

  v14 = (v13 + (a6 * v12));
  if (a5)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 4)
  {
    v26 = a5[4];
    v28 = *a5;
    v27 = a5[1];
    v29 = a5[2];
    if (v26 < v11)
    {
      v30 = v11;
    }

    else
    {
      v30 = a5[4];
    }

    if (v26 <= v10)
    {
      v31 = v30;
    }

    else
    {
      v31 = v10;
    }

    v32 = v10;
    if (v28 <= v10)
    {
      v32 = *a5;
      if (v28 < v11)
      {
        v32 = v11;
      }
    }

    if (v27 < v11)
    {
      v33 = v11;
    }

    else
    {
      v33 = a5[1];
    }

    if (v27 <= v10)
    {
      v34 = v33;
    }

    else
    {
      v34 = v10;
    }

    if (v29 < v11)
    {
      v35 = v11;
    }

    else
    {
      v35 = a5[2];
    }

    v36 = v29 <= v10;
    v37 = v10 - (v9[4] * v32);
    if (v36)
    {
      v38 = v35;
    }

    else
    {
      v38 = v10;
    }

    v39 = ((v37 - (v9[5] * v34)) - (v9[6] * v38)) - v31;
    if (v39 >= v11)
    {
      v25 = v13 + ((v39 * a6) * v12);
    }

    else
    {
      v25 = v11 * a6;
    }

    goto LABEL_54;
  }

  if (v15 == 3)
  {
    v18 = a5[1];
    v19 = a5[2];
    if (*a5 < v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = *a5;
    }

    if (*a5 <= v10)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = v10;
    if (v18 <= v10)
    {
      v22 = a5[1];
      if (v18 < v11)
      {
        v22 = v11;
      }
    }

    if (v19 < v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = a5[2];
    }

    if (v19 <= v10)
    {
      v24 = v23;
    }

    else
    {
      v24 = v10;
    }

    v17 = ((v22 * v9[5]) + (v9[4] * v21)) + (v9[6] * v24);
    goto LABEL_29;
  }

  v16 = 0;
  if (v15 == 1)
  {
    v17 = v10;
    if (*a5 <= v10)
    {
      v17 = *a5;
      if (*a5 < v11)
      {
        v17 = v11;
      }
    }

LABEL_29:
    v25 = v13 + (a6 * (v12 * v17));
LABEL_54:
    v16 = v25;
  }

  *a2 = xmmword_18439CB30;
  a2[6] = 0;
  if (v16 >= 255)
  {
    v16 = 255;
  }

  *(a2 + 48) = v16 & ~(v16 >> 31);
  *(a2 + 2) = 1;
  if ((v10 * v12) <= v14)
  {
    v40 = 0;
  }

  else
  {
    v40 = a2 + 12;
  }

  *(a2 + 4) = a2 + 12;
  *(a2 + 5) = v40;
  if (v14 >= 255)
  {
    v14 = 255;
  }

  *(a2 + 49) = v14 & ~(v14 >> 31);
  return a2;
}

uint64_t GRAYA8_mark_inner(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v609 = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 96);
  v8 = *(v4 + 48);
  v9 = *(v3 + 16 * *v4 + 8 * (v7 == 0) + 4 * (v8 == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v4;
  v12 = *(v4 + 4);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v4 + 8);
  v15 = (v14 - 1);
  if (v14 < 1)
  {
    return 0;
  }

  v16 = *(v4 + 136);
  v528 = *(v3 + 16 * *v4 + 8 * (v7 == 0) + 4 * (v8 == 0));
  if ((*v4 & 0xFF0000) == 0x50000 || !v16)
  {
    v18 = *v4 & 0xFF00;
    v522 = v4;
    if (v18 == 1024)
    {
      v608[0] = *(v4 + 4);
      v598[0] = v14;
      v19 = *(v4 + 88);
      v6.i8[0] = *v19;
      v6.i8[4] = v19[1];
      *v20.i8 = vdup_lane_s8(v6, 0);
      v20.u64[1] = vdup_lane_s8(v6, 4);
      v21 = vqtbl1_s8(v20, 0xF060D040B020900);
      v570 = *v19;
      v22 = v6.u8[4];
      v562 = ~v6.i8[4];
      v23 = *(v4 + 12);
      v560 = *(v4 + 28);
      v24 = v560 >> 1;
      v25 = *(v4 + 40) + 2 * (v560 >> 1) * *(v4 + 16);
      v26 = v25 + 2 * v23;
      v564 = v26;
      if (v16)
      {
        shape_enum_clip_alloc(v3, v4, v16, 1, 1, 1, *(v4 + 104), *(v4 + 108), v12, v14);
        if (!v27)
        {
          return 1;
        }

        v28 = v27;
LABEL_302:
        if (!shape_enum_clip_next(v28, &v597 + 1, &v597, v608, v598))
        {
          v58 = v28;
          goto LABEL_958;
        }

        v51 = (v26 + 2 * v24 * v597 + 2 * SHIDWORD(v597));
        LODWORD(v12) = v608[0];
      }

      else
      {
        v28 = 0;
        v51 = (v25 + 2 * v23);
      }

      v572 = v24 - v12;
      v546 = v12;
      switch(v9)
      {
        case 0:
          v66 = v598[0];
          v67 = 2 * v12;
          v68 = v560 & 0xFFFFFFFE;
          goto LABEL_306;
        case 1:
          v115 = *(v522 + 88);
          if (v115)
          {
            CGSFillDRAM64(v51, v560 & 0xFFFFFFFE, 2 * v12, v598[0], v115, 2, 2, 1, 0, 0);
            if (v28)
            {
              goto LABEL_301;
            }

            return 1;
          }

          v66 = v598[0];
          v68 = v560 & 0xFFFFFFFE;
          v67 = 2 * v12;
LABEL_306:
          CGBlt_fillBytes(v67, v66, 0, v51, v68);
          if (!v28)
          {
            return 1;
          }

LABEL_301:
          v597 = 0;
          goto LABEL_302;
        case 2:
          v100 = v598[0];
          v101 = vdupq_n_s16(v562);
          do
          {
            if (v12 < 4)
            {
              v105 = v12;
            }

            else
            {
              v102 = (v12 >> 2) + 1;
              do
              {
                v103 = vmovl_u8(*v51);
                v104 = vmull_u16(*v101.i8, *v103.i8);
                *v51++ = vadd_s8(v21, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v104, v104, 8uLL)), 0x1000100010001), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmlal_high_u16(vshrq_n_u32(vmull_high_u16(v101, v103), 8uLL), v101, v103)), 0x1000100010001), 8uLL)));
                --v102;
              }

              while (v102 > 1);
              v105 = v12 & 3;
            }

            if (v105 >= 1)
            {
              v106 = v105 + 1;
              do
              {
                v51->i8[0] = v570 + ((v51->u8[0] * v562 + ((v51->u8[0] * v562) >> 8) + 1) >> 8);
                v51->i8[1] = v22 + ((v51->u8[1] * v562 + ((v51->u8[1] * v562) >> 8) + 1) >> 8);
                v51 = (v51 + 2);
                --v106;
              }

              while (v106 > 1);
            }

            v51 = (v51 + 2 * v572);
            --v100;
          }

          while (v100);
          goto LABEL_254;
        case 3:
          v110 = v598[0];
          do
          {
            v111 = v12;
            do
            {
              v112 = v51->u8[1];
              if (v112 == 255)
              {
                v51->i8[0] = v570;
                v51->i8[1] = v22;
              }

              else if (v51->i8[1])
              {
                v51->i8[0] = (v112 * v570 + ((v112 * v570) >> 8) + 1) >> 8;
                v51->i8[1] = (v112 * v22 + ((v112 * v22) >> 8) + 1) >> 8;
              }

              else
              {
                v51->i16[0] = 0;
              }

              v51 = (v51 + 2);
              --v111;
            }

            while (v111);
            v51 = (v51 + 2 * v572);
            --v110;
          }

          while (v110);
          goto LABEL_254;
        case 4:
          v84 = v598[0];
          do
          {
            v85 = v12;
            do
            {
              v86 = v51->i8[1];
              if (~v86 == 255)
              {
                v51->i8[0] = v570;
                v51->i8[1] = v22;
              }

              else if (v86 == -1)
              {
                v51->i16[0] = 0;
              }

              else
              {
                v87 = ~v86;
                v51->i8[0] = (v87 * v570 + ((v87 * v570) >> 8) + 1) >> 8;
                v51->i8[1] = (v87 * v22 + ((v87 * v22) >> 8) + 1) >> 8;
              }

              v51 = (v51 + 2);
              --v85;
            }

            while (v85);
            v51 = (v51 + 2 * v572);
            --v84;
          }

          while (v84);
          goto LABEL_254;
        case 5:
          v122 = v598[0];
          do
          {
            v123 = v12;
            do
            {
              v124 = v51->u8[1];
              v51->i8[0] = (v124 * v570 + v51->u8[0] * v562 + ((v124 * v570 + v51->u8[0] * v562) >> 8) + 1) >> 8;
              v51->i8[1] = ((v562 + v22) * v124 + (((v562 + v22) * v124) >> 8) + 1) >> 8;
              v51 = (v51 + 2);
              --v123;
            }

            while (v123);
            v51 = (v51 + 2 * v572);
            --v122;
          }

          while (v122);
          goto LABEL_254;
        case 6:
          v131 = v598[0];
          do
          {
            v132 = v12;
            do
            {
              v133 = v51->u8[1];
              if (v133 != 0xFF)
              {
                if ((v133 ^ 0xFF) == 0xFF)
                {
                  v51->i8[0] = v570;
                  LOBYTE(v134) = v22;
                }

                else
                {
                  v51->i8[0] += (v562 * v570 + ((v562 * v570) >> 8) + 1) >> 8;
                  v134 = v133 + ((v562 * v22 + ((v562 * v22) >> 8) + 1) >> 8);
                }

                v51->i8[1] = v134;
              }

              v51 = (v51 + 2);
              --v132;
            }

            while (v132);
            v51 = (v51 + 2 * v572);
            --v131;
          }

          while (v131);
          goto LABEL_254;
        case 7:
          v113 = v598[0];
          do
          {
            v114 = v12;
            do
            {
              v51->i8[0] = (v51->u8[0] * v22 + ((v51->u8[0] * v22) >> 8) + 1) >> 8;
              v51->i8[1] = (v51->u8[1] * v22 + ((v51->u8[1] * v22) >> 8) + 1) >> 8;
              v51 = (v51 + 2);
              --v114;
            }

            while (v114);
            v51 = (v51 + 2 * v572);
            --v113;
          }

          while (v113);
          goto LABEL_254;
        case 8:
          v141 = v598[0];
          do
          {
            v142 = v12;
            do
            {
              v51->i8[0] = (v51->u8[0] * v562 + ((v51->u8[0] * v562) >> 8) + 1) >> 8;
              v51->i8[1] = (v51->u8[1] * v562 + ((v51->u8[1] * v562) >> 8) + 1) >> 8;
              v51 = (v51 + 2);
              --v142;
            }

            while (v142);
            v51 = (v51 + 2 * v572);
            --v141;
          }

          while (v141);
          goto LABEL_254;
        case 9:
          v91 = v598[0];
          do
          {
            v92 = v12;
            do
            {
              v93 = v51->u8[1];
              v51->i8[0] = ((v93 ^ 0xFF) * v570 + v51->u8[0] * v22 + (((v93 ^ 0xFF) * v570 + v51->u8[0] * v22) >> 8) + 1) >> 8;
              v51->i8[1] = ((v93 + (v93 ^ 0xFF)) * v22 + (((v93 + (v93 ^ 0xFF)) * v22) >> 8) + 1) >> 8;
              v51 = (v51 + 2);
              --v92;
            }

            while (v92);
            v51 = (v51 + 2 * v572);
            --v91;
          }

          while (v91);
          goto LABEL_254;
        case 10:
          v138 = v598[0];
          do
          {
            v139 = v12;
            do
            {
              v140 = v51->u8[1];
              v51->i8[0] = ((v140 ^ 0xFF) * v570 + v51->u8[0] * v562 + (((v140 ^ 0xFF) * v570 + v51->u8[0] * v562) >> 8) + 1) >> 8;
              v51->i8[1] = ((v140 ^ 0xFF) * v22 + v140 * v562 + (((v140 ^ 0xFF) * v22 + v140 * v562) >> 8) + 1) >> 8;
              v51 = (v51 + 2);
              --v139;
            }

            while (v139);
            v51 = (v51 + 2 * v572);
            --v138;
          }

          while (v138);
          goto LABEL_254;
        case 11:
          v79 = v598[0];
          do
          {
            v80 = v12;
            do
            {
              if (v8)
              {
                v81 = v51->u8[1];
              }

              else
              {
                v81 = 255;
              }

              v82 = ((v22 - v570) | (v22 << 16)) + (v81 - v51->i8[0]) + (v81 << 16);
              v83 = (255 * ((v82 >> 8) & 0x10001)) | v82;
              v51->i8[0] = BYTE2(v83) - v83;
              v51->i8[1] = BYTE2(v83);
              v51 = (v51 + 2);
              --v80;
            }

            while (v80);
            v51 = (v51 + 2 * v572);
            --v79;
          }

          while (v79);
LABEL_254:
          v598[0] = 0;
          if (!v28)
          {
            return 1;
          }

          goto LABEL_301;
        case 12:
          do
          {
            v88 = v608[0];
            do
            {
              v89 = (v570 | (v22 << 16)) + v51->i16[0] + ((v51->u16[0] << 8) & 0xFF0000);
              v90 = (255 * ((v89 >> 8) & 0x10001)) | v89;
              v51->i8[0] = v90;
              v51->i8[1] = BYTE2(v90);
              v51 = (v51 + 2);
              --v88;
            }

            while (v88);
            v51 = (v51 + 2 * v572);
            --v598[0];
          }

          while (v598[0]);
          goto LABEL_300;
        case 13:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v128 = v598[0];
          while (1)
          {
            v129 = v12;
            do
            {
              if (v8)
              {
                v130 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_221;
                }
              }

              else
              {
                v130 = 255;
              }

              v588 = v588 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v591 = v570 | (v22 << 8) | v591 & 0xFFFFFFFFFFFF0000;
              v51->i16[0] = PDAmultiplyPDA(v51->i16[0], v130, v570, v22);
LABEL_221:
              v51 = (v51 + 2);
              --v129;
            }

            while (v129);
            v51 = (v51 + 2 * v572);
            v598[0] = --v128;
            LODWORD(v12) = v546;
            if (!v128)
            {
              goto LABEL_299;
            }
          }

        case 14:
          if (!v22)
          {
            goto LABEL_300;
          }

          v75 = v598[0];
          while (1)
          {
            v76 = v12;
            do
            {
              if (v8)
              {
                v77 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_83;
                }
              }

              else
              {
                v77 = 255;
              }

              v78 = (v51->u8[0] ^ 0xFF) * v570 - v51->u8[0] + (v51->u8[0] << 8);
              v51->i8[0] = (v78 + (v78 >> 8) + 1) >> 8;
              v51->i8[1] = (255 * (v77 + v22) - v77 * v22 + ((255 * (v77 + v22) - v77 * v22) >> 8) + 1) >> 8;
LABEL_83:
              v51 = (v51 + 2);
              --v76;
            }

            while (v76);
            v51 = (v51 + 2 * v572);
            v598[0] = --v75;
            if (!v75)
            {
              goto LABEL_300;
            }
          }

        case 15:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v107 = v598[0];
          while (1)
          {
            v108 = v12;
            do
            {
              if (v8)
              {
                v109 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_154;
                }
              }

              else
              {
                v109 = 255;
              }

              v594 = v570 | (v22 << 8) | v594 & 0xFFFFFFFFFFFF0000;
              v595 = v595 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAoverlayPDA(v595, v109, v570, v22);
LABEL_154:
              v51 = (v51 + 2);
              --v108;
            }

            while (v108);
            v51 = (v51 + 2 * v572);
            v598[0] = --v107;
            LODWORD(v12) = v546;
            if (!v107)
            {
              goto LABEL_299;
            }
          }

        case 16:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v72 = v598[0];
          while (1)
          {
            v73 = v12;
            do
            {
              if (v8)
              {
                v74 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_72;
                }
              }

              else
              {
                v74 = 255;
              }

              v589 = v570 | (v22 << 8) | v589 & 0xFFFFFFFFFFFF0000;
              v590 = v590 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAdarkenPDA(v590, v74, v570, v22);
LABEL_72:
              v51 = (v51 + 2);
              --v73;
            }

            while (v73);
            v51 = (v51 + 2 * v572);
            v598[0] = --v72;
            LODWORD(v12) = v546;
            if (!v72)
            {
              goto LABEL_299;
            }
          }

        case 17:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v116 = v598[0];
          while (1)
          {
            v117 = v12;
            do
            {
              if (v8)
              {
                v118 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_183;
                }
              }

              else
              {
                v118 = 255;
              }

              v592 = v570 | (v22 << 8) | v592 & 0xFFFFFFFFFFFF0000;
              v593 = v593 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAlightenPDA(v593, v118, v570, v22);
LABEL_183:
              v51 = (v51 + 2);
              --v117;
            }

            while (v117);
            v51 = (v51 + 2 * v572);
            v598[0] = --v116;
            LODWORD(v12) = v546;
            if (!v116)
            {
              goto LABEL_299;
            }
          }

        case 18:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v135 = v598[0];
          while (1)
          {
            v136 = v12;
            do
            {
              if (v8)
              {
                v137 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_242;
                }
              }

              else
              {
                v137 = 255;
              }

              v586 = v570 | (v22 << 8) | v586 & 0xFFFFFFFFFFFF0000;
              v587 = v587 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAcolordodgePDA(v587, v137, v570, v22);
LABEL_242:
              v51 = (v51 + 2);
              --v136;
            }

            while (v136);
            v51 = (v51 + 2 * v572);
            v598[0] = --v135;
            LODWORD(v12) = v546;
            if (!v135)
            {
LABEL_299:
              v9 = v528;
              v26 = v564;
              v24 = v560 >> 1;
              v28 = v568;
              goto LABEL_300;
            }
          }

        case 19:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v146 = v598[0];
          while (1)
          {
            v147 = v12;
            do
            {
              if (v8)
              {
                v148 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_275;
                }
              }

              else
              {
                v148 = 255;
              }

              v584 = v570 | (v22 << 8) | v584 & 0xFFFFFFFFFFFF0000;
              v585 = v585 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAcolorburnPDA(v585, v148, v570, v22);
LABEL_275:
              v51 = (v51 + 2);
              --v147;
            }

            while (v147);
            v51 = (v51 + 2 * v572);
            v598[0] = --v146;
            LODWORD(v12) = v546;
            if (!v146)
            {
              goto LABEL_299;
            }
          }

        case 20:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v119 = v598[0];
          while (1)
          {
            v120 = v12;
            do
            {
              if (v8)
              {
                v121 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_194;
                }
              }

              else
              {
                v121 = 255;
              }

              v580 = v570 | (v22 << 8) | v580 & 0xFFFFFFFFFFFF0000;
              v581 = v581 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAsoftlightPDA(v581, v121, v570, v22);
LABEL_194:
              v51 = (v51 + 2);
              --v120;
            }

            while (v120);
            v51 = (v51 + 2 * v572);
            v598[0] = --v119;
            LODWORD(v12) = v546;
            if (!v119)
            {
              goto LABEL_299;
            }
          }

        case 21:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v125 = v598[0];
          while (1)
          {
            v126 = v12;
            do
            {
              if (v8)
              {
                v127 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_210;
                }
              }

              else
              {
                v127 = 255;
              }

              v582 = v570 | (v22 << 8) | v582 & 0xFFFFFFFFFFFF0000;
              v583 = v583 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAhardlightPDA(v583, v127, v570, v22);
LABEL_210:
              v51 = (v51 + 2);
              --v126;
            }

            while (v126);
            v51 = (v51 + 2 * v572);
            v598[0] = --v125;
            LODWORD(v12) = v546;
            if (!v125)
            {
              goto LABEL_299;
            }
          }

        case 22:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v143 = v598[0];
          while (1)
          {
            v144 = v12;
            do
            {
              if (v8)
              {
                v145 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_264;
                }
              }

              else
              {
                v145 = 255;
              }

              v578 = v570 | (v22 << 8) | v578 & 0xFFFFFFFFFFFF0000;
              v579 = v579 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAdifferencePDA(v579, v145, v570, v22);
LABEL_264:
              v51 = (v51 + 2);
              --v144;
            }

            while (v144);
            v51 = (v51 + 2 * v572);
            v598[0] = --v143;
            LODWORD(v12) = v546;
            if (!v143)
            {
              goto LABEL_299;
            }
          }

        case 23:
          if (!v22)
          {
            goto LABEL_300;
          }

          v149 = v598[0];
          while (1)
          {
            v150 = v12;
            do
            {
              if (v8)
              {
                v151 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_286;
                }
              }

              else
              {
                v151 = 255;
              }

              v152 = 255 * (v51->u8[0] + v570) - 2 * v570 * v51->u8[0];
              v51->i8[0] = (v152 + (v152 >> 8) + 1) >> 8;
              v51->i8[1] = (255 * (v151 + v22) - v151 * v22 + ((255 * (v151 + v22) - v151 * v22) >> 8) + 1) >> 8;
LABEL_286:
              v51 = (v51 + 2);
              --v150;
            }

            while (v150);
            v51 = (v51 + 2 * v572);
            v598[0] = --v149;
            if (!v149)
            {
LABEL_300:
              if (v28)
              {
                goto LABEL_301;
              }

              return 1;
            }
          }

        case 24:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v97 = v598[0];
          while (1)
          {
            v98 = v12;
            do
            {
              if (v8)
              {
                v99 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_132;
                }
              }

              else
              {
                v99 = 255;
              }

              v576 = v570 | (v22 << 8) | v576 & 0xFFFFFFFFFFFF0000;
              v577 = v577 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAhuePDA(v577, v99, v570, v22);
LABEL_132:
              v51 = (v51 + 2);
              --v98;
            }

            while (v98);
            v51 = (v51 + 2 * v572);
            v598[0] = --v97;
            LODWORD(v12) = v546;
            if (!v97)
            {
              goto LABEL_299;
            }
          }

        case 25:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v94 = v598[0];
          while (1)
          {
            v95 = v12;
            do
            {
              if (v8)
              {
                v96 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_121;
                }
              }

              else
              {
                v96 = 255;
              }

              v574 = v570 | (v22 << 8) | v574 & 0xFFFFFFFFFFFF0000;
              v575 = v575 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v51->i16[0] = PDAhuePDA(v575, v96, v570, v22);
LABEL_121:
              v51 = (v51 + 2);
              --v95;
            }

            while (v95);
            v51 = (v51 + 2 * v572);
            v598[0] = --v94;
            LODWORD(v12) = v546;
            if (!v94)
            {
              goto LABEL_299;
            }
          }

        case 26:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v153 = v598[0];
          while (1)
          {
            v154 = v12;
            do
            {
              if (v8)
              {
                v155 = v51->u8[1];
                if (!v51->i8[1])
                {
                  v51->i8[0] = v570;
                  v51->i8[1] = v22;
                  goto LABEL_297;
                }
              }

              else
              {
                v155 = 255;
              }

              v1 = v1 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
              v573 = v570 | (v22 << 8) | v573 & 0xFFFFFFFFFFFF0000;
              v51->i16[0] = PDAhuePDA(v570, v22, v1, v155);
LABEL_297:
              v51 = (v51 + 2);
              --v154;
            }

            while (v154);
            v51 = (v51 + 2 * v572);
            v598[0] = --v153;
            LODWORD(v12) = v546;
            if (!v153)
            {
              goto LABEL_299;
            }
          }

        case 27:
          if (!v22)
          {
            goto LABEL_300;
          }

          v568 = v28;
          v69 = v598[0];
          break;
        default:
          goto LABEL_300;
      }

LABEL_55:
      v70 = v12;
      while (v8)
      {
        v71 = v51->u8[1];
        if (v51->i8[1])
        {
          goto LABEL_60;
        }

        v51->i8[0] = v570;
        v51->i8[1] = v22;
LABEL_61:
        v51 = (v51 + 2);
        if (!--v70)
        {
          v51 = (v51 + 2 * v572);
          v598[0] = --v69;
          LODWORD(v12) = v546;
          if (!v69)
          {
            goto LABEL_299;
          }

          goto LABEL_55;
        }
      }

      v71 = 255;
LABEL_60:
      v2 = v2 & 0xFFFFFFFFFFFF0000 | v51->u16[0];
      v11 = v570 | (v22 << 8) | v11 & 0xFFFFFFFFFFFF0000;
      v51->i16[0] = PDAhuePDA(v2, v71, v11, v22);
      goto LABEL_61;
    }

    v608[0] = *(v4 + 4);
    v598[0] = v14;
    v29 = *(v4 + 88);
    v30 = *(v4 + 28) >> 1;
    v31 = *(v4 + 40) + 2 * v30 * *(v4 + 16) + 2 * *(v4 + 12);
    v33 = *(v4 + 56);
    v32 = *(v4 + 60);
    v34 = *(v4 + 76) >> 1;
    if (v18 == 256)
    {
      v29 += 2 * v34 * v32 + 2 * v33;
      v523 = *(v4 + 60);
      if (v34 == v30)
      {
        v35 = (v31 - v29) >> 1;
        if (v35 < 1)
        {
          v42 = 1;
          v531 = *(v4 + 28) >> 1;
        }

        else if (v35 <= v12)
        {
          v31 += 2 * v13;
          v531 = *(v4 + 28) >> 1;
          v29 += 2 * v13;
          v42 = 0xFFFFFFFFLL;
        }

        else
        {
          v36 = v30 * v15;
          v37 = v29 + 2 * v30 * v15;
          v38 = v37 + 2 * v12 - 2;
          v39 = v31 + 2 * v36;
          v40 = v31 > v38;
          if (v31 > v38)
          {
            v41 = *(v4 + 28) >> 1;
          }

          else
          {
            v29 = v37;
            v31 = v39;
            v41 = -v30;
          }

          v531 = v41;
          if (!v40)
          {
            v30 = -v30;
          }

          v42 = 1;
        }
      }

      else
      {
        v42 = 1;
        v531 = *(v4 + 76) >> 1;
      }

      v524 = *(v4 + 56);
      v49 = v7 != 0;
      if (v16)
      {
        v529 = 0;
        v596 = 0;
        v50 = -1;
        v563 = 0;
        v565 = v531;
LABEL_46:
        v545 = v42;
        shape_enum_clip_alloc(v3, v4, v16, v42, v30, 1, *(v4 + 104), *(v4 + 108), v12, v14);
        if (!v63)
        {
          return 1;
        }

        v64 = v63;
        while (2)
        {
          if (!shape_enum_clip_next(v64, &v597 + 1, &v597, v608, v598))
          {
            v58 = v64;
            goto LABEL_958;
          }

          v530 = v64;
          if (v563)
          {
            v62 = (v31 + 2 * v30 * v597 + 2 * SHIDWORD(v597));
            LODWORD(v12) = v608[0];
            v515 = v29 + 2 * v565 * ((v597 + *(v11 + 60)) % v529);
            v61 = (v515 + 2 * ((HIDWORD(v597) + *(v11 + 56)) % v531));
            v50 = v515 + 2 * v531;
            v596 = v61;
            v516 = v608[0];
            v523 = (v597 + *(v11 + 60)) % v529;
            v524 = (HIDWORD(v597) + *(v11 + 56)) % v531;
          }

          else
          {
            LODWORD(v12) = v608[0];
            v516 = v608[0] * v545;
            v62 = (v31 + 2 * v30 * v597 + 2 * HIDWORD(v597) * v545);
            v61 = (v29 + 2 * v597 * v531 + 2 * HIDWORD(v597) * v545);
            v565 = v531 - v608[0] * v545;
          }

          v561 = v30 - v516;
          v42 = v545;
LABEL_308:
          v545 = v42;
          switch(v9)
          {
            case 0:
              v156 = &v62[-2 * v12 + 2];
              v157 = v561 + v12;
              if (v42 < 0)
              {
                v157 = v561 - v12;
              }

              else
              {
                v156 = v62;
              }

              v158 = (v156 + 2 * ((v157 * (v598[0] - 1)) & (v157 >> 63)));
              if (v157 < 0)
              {
                v157 = -v157;
              }

              CGBlt_fillBytes(2 * v12, v598[0], 0, v158, 2 * v157);
              goto LABEL_950;
            case 1:
              v319 = *(v11 + 1);
              if (v319 == 2)
              {
                if (v12 >= 16 && (2 * v531) <= 0x40)
                {
                  v5.i32[0] = 2 * v531;
                  v488 = vcnt_s8(v5);
                  v488.i16[0] = vaddlv_u8(v488);
                  if (v488.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v62, 2 * (v12 + v561), 2 * v12, v598[0], v29, 2 * v565, 2 * v531, v529, 2 * v524, v523);
                    goto LABEL_950;
                  }
                }

LABEL_903:
                v489 = v598[0];
                if (v8 == 0 || v49)
                {
                  do
                  {
                    v490 = v12;
                    do
                    {
                      *v62 = *v61;
                      v491 = &v61[2 * v42];
                      if (v491 >= v50)
                      {
                        v492 = -v531;
                      }

                      else
                      {
                        v492 = 0;
                      }

                      v61 = &v491[2 * v492];
                      v62 += 2 * v42;
                      --v490;
                    }

                    while (v490);
                    v62 += 2 * v561;
                    v493 = v596;
                    v494 = &v596[2 * v565];
                    if (v494 >= v563)
                    {
                      v495 = -(v565 * v529);
                    }

                    else
                    {
                      v495 = 0;
                    }

                    v496 = &v494[2 * v495];
                    v497 = v50 + 2 * v495 + 2 * v565;
                    if (v563)
                    {
                      v50 = v497;
                      v493 = v496;
                    }

                    v596 = v493;
                    if (v563)
                    {
                      v61 = v496;
                    }

                    else
                    {
                      v61 += 2 * v565;
                    }

                    --v489;
                  }

                  while (v489);
                }

                else
                {
                  do
                  {
                    v498 = v12;
                    do
                    {
                      *v62 = *v61;
                      v62[1] = -1;
                      v499 = &v61[2 * v42];
                      if (v499 >= v50)
                      {
                        v500 = -v531;
                      }

                      else
                      {
                        v500 = 0;
                      }

                      v61 = &v499[2 * v500];
                      v62 += 2 * v42;
                      --v498;
                    }

                    while (v498);
                    v62 += 2 * v561;
                    v501 = v596;
                    v502 = &v596[2 * v565];
                    if (v502 >= v563)
                    {
                      v503 = -(v565 * v529);
                    }

                    else
                    {
                      v503 = 0;
                    }

                    v504 = &v502[2 * v503];
                    v505 = v50 + 2 * v503 + 2 * v565;
                    if (v563)
                    {
                      v50 = v505;
                      v501 = v504;
                    }

                    v596 = v501;
                    if (v563)
                    {
                      v61 = v504;
                    }

                    else
                    {
                      v61 += 2 * v565;
                    }

                    --v489;
                  }

                  while (v489);
                }

                goto LABEL_949;
              }

              if (v319 != 1)
              {
                goto LABEL_903;
              }

              if (v8 != 0 && !v49)
              {
                v506 = v598[0];
                do
                {
                  v507 = v12;
                  do
                  {
                    *v62 = *v61;
                    v62[1] = -1;
                    v508 = &v61[2 * v42];
                    if (v508 >= v50)
                    {
                      v509 = -v531;
                    }

                    else
                    {
                      v509 = 0;
                    }

                    v61 = &v508[2 * v509];
                    v62 += 2 * v42;
                    --v507;
                  }

                  while (v507);
                  v62 += 2 * v561;
                  v510 = v596;
                  v511 = &v596[2 * v565];
                  if (v511 >= v563)
                  {
                    v512 = -(v565 * v529);
                  }

                  else
                  {
                    v512 = 0;
                  }

                  v513 = &v511[2 * v512];
                  v514 = v50 + 2 * v512 + 2 * v565;
                  if (v563)
                  {
                    v50 = v514;
                    v510 = v513;
                  }

                  v596 = v510;
                  if (v563)
                  {
                    v61 = v513;
                  }

                  else
                  {
                    v61 += 2 * v565;
                  }

                  --v506;
                }

                while (v506);
                goto LABEL_949;
              }

              if ((v42 & 0x80000000) != 0)
              {
                v320 = v565 - v12;
                v517 = 2 * v12 - 2;
                v61 -= v517;
                v321 = v561 - v12;
                v62 -= v517;
              }

              else
              {
                v320 = v565 + v12;
                v321 = v561 + v12;
              }

              v518 = v598[0] - 1;
              v519 = &v61[2 * ((v320 * v518) & (v320 >> 63))];
              if (v320 >= 0)
              {
                v520 = v320;
              }

              else
              {
                v520 = -v320;
              }

              if (v321 >= 0)
              {
                LODWORD(v521) = v321;
              }

              else
              {
                v521 = -v321;
              }

              v565 = v520;
              CGBlt_copyBytes(2 * v12, v598[0], v519, &v62[2 * ((v321 * v518) & (v321 >> 63))], 2 * v520, 2 * v521);
LABEL_950:
              v64 = v530;
              if (!v530)
              {
                return 1;
              }

              v597 = 0;
              continue;
            case 2:
              v274 = v598[0];
              do
              {
                v275 = v12;
                do
                {
                  v276 = v61[1];
                  if (v61[1])
                  {
                    if (v276 == 255)
                    {
                      *v62 = *v61;
                      v62[1] = -1;
                    }

                    else
                    {
                      *v62 = *v61 + ((*v62 * (v276 ^ 0xFF) + ((*v62 * (v276 ^ 0xFFu)) >> 8) + 1) >> 8);
                      v62[1] = v276 + ((v62[1] * (v276 ^ 0xFF) + ((v62[1] * (v276 ^ 0xFFu)) >> 8) + 1) >> 8);
                    }
                  }

                  v277 = &v61[2 * v42];
                  if (v277 >= v50)
                  {
                    v278 = -v531;
                  }

                  else
                  {
                    v278 = 0;
                  }

                  v61 = &v277[2 * v278];
                  v62 += 2 * v42;
                  --v275;
                }

                while (v275);
                v62 += 2 * v561;
                v279 = v596;
                v280 = &v596[2 * v565];
                if (v280 >= v563)
                {
                  v281 = -(v565 * v529);
                }

                else
                {
                  v281 = 0;
                }

                v282 = &v280[2 * v281];
                v283 = v50 + 2 * v281 + 2 * v565;
                if (v563)
                {
                  v50 = v283;
                  v279 = v282;
                }

                v596 = v279;
                if (v563)
                {
                  v61 = v282;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v274;
              }

              while (v274);
              goto LABEL_949;
            case 3:
              v297 = v598[0];
              while (1)
              {
                v298 = v12;
                do
                {
                  v299 = v62[1];
                  if (v299 == 255)
                  {
                    *v62 = *v61;
                    if (v49)
                    {
                      LOBYTE(v300) = v61[1];
                    }

                    else
                    {
                      LOBYTE(v300) = -1;
                    }
                  }

                  else
                  {
                    if (!v62[1])
                    {
                      *v62 = 0;
                      goto LABEL_572;
                    }

                    *v62 = (*v61 * v299 + ((*v61 * v299) >> 8) + 1) >> 8;
                    if (v49)
                    {
                      v301 = v61[1];
                    }

                    else
                    {
                      v301 = 255;
                    }

                    v300 = (v301 * v299 + ((v301 * v299) >> 8) + 1) >> 8;
                  }

                  v62[1] = v300;
LABEL_572:
                  v302 = &v61[2 * v42];
                  if (v302 >= v50)
                  {
                    v303 = -v531;
                  }

                  else
                  {
                    v303 = 0;
                  }

                  v61 = &v302[2 * v303];
                  v62 += 2 * v42;
                  --v298;
                }

                while (v298);
                v62 += 2 * v561;
                v304 = v596;
                v305 = &v596[2 * v565];
                if (v305 >= v563)
                {
                  v306 = -(v565 * v529);
                }

                else
                {
                  v306 = 0;
                }

                v307 = &v305[2 * v306];
                v308 = v50 + 2 * v306 + 2 * v565;
                if (v563)
                {
                  v50 = v308;
                  v304 = v307;
                }

                v596 = v304;
                if (v563)
                {
                  v61 = v307;
                }

                else
                {
                  v61 += 2 * v565;
                }

                if (!--v297)
                {
                  goto LABEL_949;
                }
              }

            case 4:
              v212 = v598[0];
              while (1)
              {
                v213 = v12;
                do
                {
                  v214 = v62[1];
                  if (~v214 == 255)
                  {
                    *v62 = *v61;
                    if (v49)
                    {
                      LOBYTE(v215) = v61[1];
                    }

                    else
                    {
                      LOBYTE(v215) = -1;
                    }
                  }

                  else
                  {
                    if (v214 == 0xFF)
                    {
                      *v62 = 0;
                      goto LABEL_421;
                    }

                    v216 = ~v214;
                    *v62 = (*v61 * v216 + ((*v61 * v216) >> 8) + 1) >> 8;
                    if (v49)
                    {
                      v217 = v61[1];
                    }

                    else
                    {
                      v217 = 255;
                    }

                    v215 = (v217 * v216 + ((v217 * v216) >> 8) + 1) >> 8;
                  }

                  v62[1] = v215;
LABEL_421:
                  v218 = &v61[2 * v42];
                  if (v218 >= v50)
                  {
                    v219 = -v531;
                  }

                  else
                  {
                    v219 = 0;
                  }

                  v61 = &v218[2 * v219];
                  v62 += 2 * v42;
                  --v213;
                }

                while (v213);
                v62 += 2 * v561;
                v220 = v596;
                v221 = &v596[2 * v565];
                if (v221 >= v563)
                {
                  v222 = -(v565 * v529);
                }

                else
                {
                  v222 = 0;
                }

                v223 = &v221[2 * v222];
                v224 = v50 + 2 * v222 + 2 * v565;
                if (v563)
                {
                  v50 = v224;
                  v220 = v223;
                }

                v596 = v220;
                if (v563)
                {
                  v61 = v223;
                }

                else
                {
                  v61 += 2 * v565;
                }

                if (!--v212)
                {
                  goto LABEL_949;
                }
              }

            case 5:
              v348 = v598[0];
              do
              {
                v349 = v12;
                do
                {
                  v350 = v62[1];
                  v351 = v61[1];
                  v352 = v350 * *v61 + (v351 ^ 0xFF) * *v62;
                  *v62 = (v352 + (v352 >> 8) + 1) >> 8;
                  v62[1] = (((v351 ^ 0xFF) + v351) * v350 + ((((v351 ^ 0xFFu) + v351) * v350) >> 8) + 1) >> 8;
                  v353 = &v61[2 * v42];
                  if (v353 >= v50)
                  {
                    v354 = -v531;
                  }

                  else
                  {
                    v354 = 0;
                  }

                  v61 = &v353[2 * v354];
                  v62 += 2 * v42;
                  --v349;
                }

                while (v349);
                v62 += 2 * v561;
                v355 = v596;
                v356 = &v596[2 * v565];
                if (v356 >= v563)
                {
                  v357 = -(v565 * v529);
                }

                else
                {
                  v357 = 0;
                }

                v358 = &v356[2 * v357];
                v359 = v50 + 2 * v357 + 2 * v565;
                if (v563)
                {
                  v50 = v359;
                  v355 = v358;
                }

                v596 = v355;
                if (v563)
                {
                  v61 = v358;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v348;
              }

              while (v348);
              goto LABEL_949;
            case 6:
              v386 = v598[0];
              do
              {
                v387 = v12;
                do
                {
                  v388 = v62[1];
                  if (v388 != 0xFF)
                  {
                    if (~v388 == 255)
                    {
                      *v62 = *v61;
                      if (v49)
                      {
                        LOBYTE(v389) = v61[1];
                      }

                      else
                      {
                        LOBYTE(v389) = -1;
                      }
                    }

                    else
                    {
                      v390 = ~v388;
                      *v62 += (*v61 * v390 + ((*v61 * v390) >> 8) + 1) >> 8;
                      if (v49)
                      {
                        v391 = v61[1];
                      }

                      else
                      {
                        v391 = 255;
                      }

                      v389 = v388 + ((v391 * v390 + ((v391 * v390) >> 8) + 1) >> 8);
                    }

                    v62[1] = v389;
                  }

                  v392 = &v61[2 * v42];
                  if (v392 >= v50)
                  {
                    v393 = -v531;
                  }

                  else
                  {
                    v393 = 0;
                  }

                  v61 = &v392[2 * v393];
                  v62 += 2 * v42;
                  --v387;
                }

                while (v387);
                v62 += 2 * v561;
                v394 = v596;
                v395 = &v596[2 * v565];
                if (v395 >= v563)
                {
                  v396 = -(v565 * v529);
                }

                else
                {
                  v396 = 0;
                }

                v397 = &v395[2 * v396];
                v398 = v50 + 2 * v396 + 2 * v565;
                if (v563)
                {
                  v50 = v398;
                  v394 = v397;
                }

                v596 = v394;
                if (v563)
                {
                  v61 = v397;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v386;
              }

              while (v386);
              goto LABEL_949;
            case 7:
              v309 = v598[0];
              do
              {
                v310 = v12;
                do
                {
                  v311 = v61[1];
                  if (v311 != 255)
                  {
                    if (v61[1])
                    {
                      *v62 = (*v62 * v311 + ((*v62 * v311) >> 8) + 1) >> 8;
                      v62[1] = (v62[1] * v311 + ((v62[1] * v311) >> 8) + 1) >> 8;
                    }

                    else
                    {
                      *v62 = 0;
                    }
                  }

                  v312 = &v61[2 * v42];
                  if (v312 >= v50)
                  {
                    v313 = -v531;
                  }

                  else
                  {
                    v313 = 0;
                  }

                  v61 = &v312[2 * v313];
                  v62 += 2 * v42;
                  --v310;
                }

                while (v310);
                v62 += 2 * v561;
                v314 = v596;
                v315 = &v596[2 * v565];
                if (v315 >= v563)
                {
                  v316 = -(v565 * v529);
                }

                else
                {
                  v316 = 0;
                }

                v317 = &v315[2 * v316];
                v318 = v50 + 2 * v316 + 2 * v565;
                if (v563)
                {
                  v50 = v318;
                  v314 = v317;
                }

                v596 = v314;
                if (v563)
                {
                  v61 = v317;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v309;
              }

              while (v309);
              goto LABEL_949;
            case 8:
              v424 = v598[0];
              do
              {
                v425 = v12;
                do
                {
                  v426 = v61[1];
                  if (~v426 != 255)
                  {
                    if (v426 == 0xFF)
                    {
                      *v62 = 0;
                    }

                    else
                    {
                      v427 = ~v426;
                      *v62 = (*v62 * v427 + ((*v62 * v427) >> 8) + 1) >> 8;
                      v62[1] = (v62[1] * v427 + ((v62[1] * v427) >> 8) + 1) >> 8;
                    }
                  }

                  v428 = &v61[2 * v42];
                  if (v428 >= v50)
                  {
                    v429 = -v531;
                  }

                  else
                  {
                    v429 = 0;
                  }

                  v61 = &v428[2 * v429];
                  v62 += 2 * v42;
                  --v425;
                }

                while (v425);
                v62 += 2 * v561;
                v430 = v596;
                v431 = &v596[2 * v565];
                if (v431 >= v563)
                {
                  v432 = -(v565 * v529);
                }

                else
                {
                  v432 = 0;
                }

                v433 = &v431[2 * v432];
                v434 = v50 + 2 * v432 + 2 * v565;
                if (v563)
                {
                  v50 = v434;
                  v430 = v433;
                }

                v596 = v430;
                if (v563)
                {
                  v61 = v433;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v424;
              }

              while (v424);
              goto LABEL_949;
            case 9:
              v236 = v598[0];
              do
              {
                v237 = v12;
                do
                {
                  v238 = v62[1];
                  v239 = v61[1];
                  v240 = (v238 ^ 0xFF) * *v61 + v239 * *v62;
                  *v62 = (v240 + (v240 >> 8) + 1) >> 8;
                  v62[1] = ((v238 + (v238 ^ 0xFF)) * v239 + (((v238 + (v238 ^ 0xFFu)) * v239) >> 8) + 1) >> 8;
                  v241 = &v61[2 * v42];
                  if (v241 >= v50)
                  {
                    v242 = -v531;
                  }

                  else
                  {
                    v242 = 0;
                  }

                  v61 = &v241[2 * v242];
                  v62 += 2 * v42;
                  --v237;
                }

                while (v237);
                v62 += 2 * v561;
                v243 = v596;
                v244 = &v596[2 * v565];
                if (v244 >= v563)
                {
                  v245 = -(v565 * v529);
                }

                else
                {
                  v245 = 0;
                }

                v246 = &v244[2 * v245];
                v247 = v50 + 2 * v245 + 2 * v565;
                if (v563)
                {
                  v50 = v247;
                  v243 = v246;
                }

                v596 = v243;
                if (v563)
                {
                  v61 = v246;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v236;
              }

              while (v236);
              goto LABEL_949;
            case 10:
              v412 = v598[0];
              do
              {
                v413 = v12;
                do
                {
                  v414 = v62[1];
                  v415 = v61[1];
                  v416 = (v414 ^ 0xFF) * *v61 + (v415 ^ 0xFF) * *v62;
                  *v62 = (v416 + (v416 >> 8) + 1) >> 8;
                  v62[1] = (v415 * (v414 ^ 0xFF) + (v415 ^ 0xFF) * v414 + ((v415 * (v414 ^ 0xFF) + (v415 ^ 0xFFu) * v414) >> 8) + 1) >> 8;
                  v417 = &v61[2 * v42];
                  if (v417 >= v50)
                  {
                    v418 = -v531;
                  }

                  else
                  {
                    v418 = 0;
                  }

                  v61 = &v417[2 * v418];
                  v62 += 2 * v42;
                  --v413;
                }

                while (v413);
                v62 += 2 * v561;
                v419 = v596;
                v420 = &v596[2 * v565];
                if (v420 >= v563)
                {
                  v421 = -(v565 * v529);
                }

                else
                {
                  v421 = 0;
                }

                v422 = &v420[2 * v421];
                v423 = v50 + 2 * v421 + 2 * v565;
                if (v563)
                {
                  v50 = v423;
                  v419 = v422;
                }

                v596 = v419;
                if (v563)
                {
                  v61 = v422;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v412;
              }

              while (v412);
              goto LABEL_949;
            case 11:
              v199 = v598[0];
              while (1)
              {
                v200 = v12;
                do
                {
                  if (v8)
                  {
                    v201 = v62[1];
                    if (v49)
                    {
                      goto LABEL_391;
                    }
                  }

                  else
                  {
                    v201 = 255;
                    if (v49)
                    {
LABEL_391:
                      v202 = v61[1];
                      goto LABEL_394;
                    }
                  }

                  v202 = 255;
LABEL_394:
                  v203 = ((v201 - *v62) | (v201 << 16)) + (v202 - *v61) + (v202 << 16);
                  v204 = (255 * ((v203 >> 8) & 0x10001)) | v203;
                  *v62 = BYTE2(v204) - v204;
                  v62[1] = BYTE2(v204);
                  v205 = &v61[2 * v42];
                  if (v205 >= v50)
                  {
                    v206 = -v531;
                  }

                  else
                  {
                    v206 = 0;
                  }

                  v61 = &v205[2 * v206];
                  v62 += 2 * v42;
                  --v200;
                }

                while (v200);
                v62 += 2 * v561;
                v207 = v596;
                v208 = &v596[2 * v565];
                if (v208 >= v563)
                {
                  v209 = -(v565 * v529);
                }

                else
                {
                  v209 = 0;
                }

                v210 = &v208[2 * v209];
                v211 = v50 + 2 * v209 + 2 * v565;
                if (v563)
                {
                  v50 = v211;
                  v207 = v210;
                }

                v596 = v207;
                if (v563)
                {
                  v61 = v210;
                }

                else
                {
                  v61 += 2 * v565;
                }

                if (!--v199)
                {
LABEL_949:
                  v598[0] = 0;
                  goto LABEL_950;
                }
              }

            case 12:
              do
              {
                v225 = v608[0];
                do
                {
                  if (v49)
                  {
                    v226 = v61[1] << 16;
                  }

                  else
                  {
                    v226 = 16711680;
                  }

                  v227 = ((*v61 + *v62) & 0xFF00FFFF | (HIBYTE(*v62) << 16)) + v226;
                  v228 = (255 * ((v227 >> 8) & 0x10001)) | v227;
                  *v62 = v228;
                  v62[1] = BYTE2(v228);
                  v229 = &v61[2 * v42];
                  if (v229 >= v50)
                  {
                    v230 = -v531;
                  }

                  else
                  {
                    v230 = 0;
                  }

                  v61 = &v229[2 * v230];
                  v62 += 2 * v42;
                  --v225;
                }

                while (v225);
                v62 += 2 * v561;
                v231 = v596;
                v232 = &v596[2 * v565];
                if (v232 >= v563)
                {
                  v233 = -(v565 * v529);
                }

                else
                {
                  v233 = 0;
                }

                v234 = &v232[2 * v233];
                v235 = v50 + 2 * v233 + 2 * v565;
                if (v563)
                {
                  v50 = v235;
                  v231 = v234;
                }

                v596 = v231;
                if (v563)
                {
                  v61 = v234;
                }

                else
                {
                  v61 += 2 * v565;
                }

                --v598[0];
              }

              while (v598[0]);
              goto LABEL_950;
            case 13:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v555 = v12;
              v373 = v42;
              v374 = v598[0];
              v375 = 2 * v42;
              while (1)
              {
                v540 = v374;
                v376 = v555;
                do
                {
                  if (v49)
                  {
                    v377 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_706;
                    }

                    if (!v8)
                    {
LABEL_704:
                      v378 = 255;
                      goto LABEL_705;
                    }
                  }

                  else
                  {
                    v377 = 255;
                    if (!v8)
                    {
                      goto LABEL_704;
                    }
                  }

                  v378 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v377;
                    goto LABEL_706;
                  }

LABEL_705:
                  v589 = v589 & 0xFFFFFFFFFFFF0000 | *v62;
                  v590 = v590 & 0xFFFFFFFFFFFF0000 | *v61;
                  *v62 = PDAmultiplyPDA(*v62, v378, *v61, v377);
LABEL_706:
                  v379 = &v61[2 * v373];
                  if (v379 >= v50)
                  {
                    v380 = -v531;
                  }

                  else
                  {
                    v380 = 0;
                  }

                  v61 = &v379[2 * v380];
                  v62 += v375;
                  --v376;
                }

                while (v376);
                v62 += 2 * v561;
                v381 = v596;
                v382 = &v596[2 * v565];
                v383 = -(v565 * v529);
                if (v382 < v563)
                {
                  v383 = 0;
                }

                v384 = &v382[2 * v383];
                v385 = v50 + 2 * v383 + 2 * v565;
                if (v563)
                {
                  v50 = v385;
                  v381 = v384;
                }

                v596 = v381;
                if (v563)
                {
                  v61 = v384;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v374 = v540 - 1;
                v598[0] = v540 - 1;
                if (v540 == 1)
                {
LABEL_898:
                  v30 = v527;
                  v9 = v528;
                  v11 = v522;
                  v31 = v525;
                  v29 = v526;
                  goto LABEL_950;
                }
              }

            case 14:
              v185 = v598[0];
              while (1)
              {
                v186 = v12;
                do
                {
                  if (v49)
                  {
                    v187 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_373;
                    }

                    if (!v8)
                    {
LABEL_370:
                      v188 = 255;
LABEL_371:
                      v190 = (*v62 ^ 0xFF) * *v61 - *v62 + (*v62 << 8);
                      v191 = 255 * (v188 + v187) - v188 * v187;
                      v189 = (v190 + (v190 >> 8) + 1) >> 8;
                      v187 = (v191 + (v191 >> 8) + 1) >> 8;
                      goto LABEL_372;
                    }
                  }

                  else
                  {
                    v187 = 255;
                    if (!v8)
                    {
                      goto LABEL_370;
                    }
                  }

                  v188 = v62[1];
                  if (v62[1])
                  {
                    goto LABEL_371;
                  }

                  LOBYTE(v189) = *v61;
LABEL_372:
                  *v62 = v189;
                  v62[1] = v187;
LABEL_373:
                  v192 = &v61[2 * v42];
                  if (v192 >= v50)
                  {
                    v193 = -v531;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  v61 = &v192[2 * v193];
                  v62 += 2 * v42;
                  --v186;
                }

                while (v186);
                v62 += 2 * v561;
                v194 = v596;
                v195 = &v596[2 * v565];
                if (v195 >= v563)
                {
                  v196 = -(v565 * v529);
                }

                else
                {
                  v196 = 0;
                }

                v197 = &v195[2 * v196];
                v198 = v50 + 2 * v196 + 2 * v565;
                if (v563)
                {
                  v50 = v198;
                  v194 = v197;
                }

                v596 = v194;
                if (v563)
                {
                  v61 = v197;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v598[0] = --v185;
                if (!v185)
                {
                  goto LABEL_950;
                }
              }

            case 15:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v551 = v12;
              v284 = v42;
              v285 = v598[0];
              v286 = 2 * v42;
              while (1)
              {
                v536 = v285;
                v287 = v551;
                do
                {
                  if (v49)
                  {
                    v288 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_546;
                    }

                    if (!v8)
                    {
LABEL_544:
                      v289 = 255;
                      goto LABEL_545;
                    }
                  }

                  else
                  {
                    v288 = 255;
                    if (!v8)
                    {
                      goto LABEL_544;
                    }
                  }

                  v289 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v288;
                    goto LABEL_546;
                  }

LABEL_545:
                  v593 = v593 & 0xFFFFFFFFFFFF0000 | *v61;
                  v594 = v594 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAoverlayPDA(v594, v289, *v61, v288);
LABEL_546:
                  v290 = &v61[2 * v284];
                  if (v290 >= v50)
                  {
                    v291 = -v531;
                  }

                  else
                  {
                    v291 = 0;
                  }

                  v61 = &v290[2 * v291];
                  v62 += v286;
                  --v287;
                }

                while (v287);
                v62 += 2 * v561;
                v292 = v596;
                v293 = &v596[2 * v565];
                v294 = -(v565 * v529);
                if (v293 < v563)
                {
                  v294 = 0;
                }

                v295 = &v293[2 * v294];
                v296 = v50 + 2 * v294 + 2 * v565;
                if (v563)
                {
                  v50 = v296;
                  v292 = v295;
                }

                v596 = v292;
                if (v563)
                {
                  v61 = v295;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v285 = v536 - 1;
                v598[0] = v536 - 1;
                if (v536 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 16:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v548 = v12;
              v172 = v42;
              v173 = v598[0];
              v174 = 2 * v42;
              while (1)
              {
                v533 = v173;
                v175 = v548;
                do
                {
                  if (v49)
                  {
                    v176 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_349;
                    }

                    if (!v8)
                    {
LABEL_347:
                      v177 = 255;
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v176 = 255;
                    if (!v8)
                    {
                      goto LABEL_347;
                    }
                  }

                  v177 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v176;
                    goto LABEL_349;
                  }

LABEL_348:
                  v587 = v587 & 0xFFFFFFFFFFFF0000 | *v61;
                  v588 = v588 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAdarkenPDA(v588, v177, *v61, v176);
LABEL_349:
                  v178 = &v61[2 * v172];
                  if (v178 >= v50)
                  {
                    v179 = -v531;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  v61 = &v178[2 * v179];
                  v62 += v174;
                  --v175;
                }

                while (v175);
                v62 += 2 * v561;
                v180 = v596;
                v181 = &v596[2 * v565];
                v182 = -(v565 * v529);
                if (v181 < v563)
                {
                  v182 = 0;
                }

                v183 = &v181[2 * v182];
                v184 = v50 + 2 * v182 + 2 * v565;
                if (v563)
                {
                  v50 = v184;
                  v180 = v183;
                }

                v596 = v180;
                if (v563)
                {
                  v61 = v183;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v173 = v533 - 1;
                v598[0] = v533 - 1;
                if (v533 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 17:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v552 = v12;
              v322 = v42;
              v323 = v598[0];
              v324 = 2 * v42;
              while (1)
              {
                v537 = v323;
                v325 = v552;
                do
                {
                  if (v49)
                  {
                    v326 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_621;
                    }

                    if (!v8)
                    {
LABEL_619:
                      v327 = 255;
                      goto LABEL_620;
                    }
                  }

                  else
                  {
                    v326 = 255;
                    if (!v8)
                    {
                      goto LABEL_619;
                    }
                  }

                  v327 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v326;
                    goto LABEL_621;
                  }

LABEL_620:
                  v591 = v591 & 0xFFFFFFFFFFFF0000 | *v61;
                  v592 = v592 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAlightenPDA(v592, v327, *v61, v326);
LABEL_621:
                  v328 = &v61[2 * v322];
                  if (v328 >= v50)
                  {
                    v329 = -v531;
                  }

                  else
                  {
                    v329 = 0;
                  }

                  v61 = &v328[2 * v329];
                  v62 += v324;
                  --v325;
                }

                while (v325);
                v62 += 2 * v561;
                v330 = v596;
                v331 = &v596[2 * v565];
                v332 = -(v565 * v529);
                if (v331 < v563)
                {
                  v332 = 0;
                }

                v333 = &v331[2 * v332];
                v334 = v50 + 2 * v332 + 2 * v565;
                if (v563)
                {
                  v50 = v334;
                  v330 = v333;
                }

                v596 = v330;
                if (v563)
                {
                  v61 = v333;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v323 = v537 - 1;
                v598[0] = v537 - 1;
                if (v537 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 18:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v556 = v12;
              v399 = v42;
              v400 = v598[0];
              v401 = 2 * v42;
              while (1)
              {
                v541 = v400;
                v402 = v556;
                do
                {
                  if (v49)
                  {
                    v403 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_755;
                    }

                    if (!v8)
                    {
LABEL_753:
                      v404 = 255;
                      goto LABEL_754;
                    }
                  }

                  else
                  {
                    v403 = 255;
                    if (!v8)
                    {
                      goto LABEL_753;
                    }
                  }

                  v404 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v403;
                    goto LABEL_755;
                  }

LABEL_754:
                  v585 = v585 & 0xFFFFFFFFFFFF0000 | *v61;
                  v586 = v586 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAcolordodgePDA(v586, v404, *v61, v403);
LABEL_755:
                  v405 = &v61[2 * v399];
                  if (v405 >= v50)
                  {
                    v406 = -v531;
                  }

                  else
                  {
                    v406 = 0;
                  }

                  v61 = &v405[2 * v406];
                  v62 += v401;
                  --v402;
                }

                while (v402);
                v62 += 2 * v561;
                v407 = v596;
                v408 = &v596[2 * v565];
                v409 = -(v565 * v529);
                if (v408 < v563)
                {
                  v409 = 0;
                }

                v410 = &v408[2 * v409];
                v411 = v50 + 2 * v409 + 2 * v565;
                if (v563)
                {
                  v50 = v411;
                  v407 = v410;
                }

                v596 = v407;
                if (v563)
                {
                  v61 = v410;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v400 = v541 - 1;
                v598[0] = v541 - 1;
                if (v541 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 19:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v558 = v12;
              v448 = v42;
              v449 = v598[0];
              v450 = 2 * v42;
              while (1)
              {
                v543 = v449;
                v451 = v558;
                do
                {
                  if (v49)
                  {
                    v452 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_837;
                    }

                    if (!v8)
                    {
LABEL_835:
                      v453 = 255;
                      goto LABEL_836;
                    }
                  }

                  else
                  {
                    v452 = 255;
                    if (!v8)
                    {
                      goto LABEL_835;
                    }
                  }

                  v453 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v452;
                    goto LABEL_837;
                  }

LABEL_836:
                  v583 = v583 & 0xFFFFFFFFFFFF0000 | *v61;
                  v584 = v584 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAcolorburnPDA(v584, v453, *v61, v452);
LABEL_837:
                  v454 = &v61[2 * v448];
                  if (v454 >= v50)
                  {
                    v455 = -v531;
                  }

                  else
                  {
                    v455 = 0;
                  }

                  v61 = &v454[2 * v455];
                  v62 += v450;
                  --v451;
                }

                while (v451);
                v62 += 2 * v561;
                v456 = v596;
                v457 = &v596[2 * v565];
                v458 = -(v565 * v529);
                if (v457 < v563)
                {
                  v458 = 0;
                }

                v459 = &v457[2 * v458];
                v460 = v50 + 2 * v458 + 2 * v565;
                if (v563)
                {
                  v50 = v460;
                  v456 = v459;
                }

                v596 = v456;
                if (v563)
                {
                  v61 = v459;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v449 = v543 - 1;
                v598[0] = v543 - 1;
                if (v543 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 20:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v553 = v12;
              v335 = v42;
              v336 = v598[0];
              v337 = 2 * v42;
              while (1)
              {
                v538 = v336;
                v338 = v553;
                do
                {
                  if (v49)
                  {
                    v339 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_644;
                    }

                    if (!v8)
                    {
LABEL_642:
                      v340 = 255;
                      goto LABEL_643;
                    }
                  }

                  else
                  {
                    v339 = 255;
                    if (!v8)
                    {
                      goto LABEL_642;
                    }
                  }

                  v340 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v339;
                    goto LABEL_644;
                  }

LABEL_643:
                  v579 = v579 & 0xFFFFFFFFFFFF0000 | *v61;
                  v580 = v580 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAsoftlightPDA(v580, v340, *v61, v339);
LABEL_644:
                  v341 = &v61[2 * v335];
                  if (v341 >= v50)
                  {
                    v342 = -v531;
                  }

                  else
                  {
                    v342 = 0;
                  }

                  v61 = &v341[2 * v342];
                  v62 += v337;
                  --v338;
                }

                while (v338);
                v62 += 2 * v561;
                v343 = v596;
                v344 = &v596[2 * v565];
                v345 = -(v565 * v529);
                if (v344 < v563)
                {
                  v345 = 0;
                }

                v346 = &v344[2 * v345];
                v347 = v50 + 2 * v345 + 2 * v565;
                if (v563)
                {
                  v50 = v347;
                  v343 = v346;
                }

                v596 = v343;
                if (v563)
                {
                  v61 = v346;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v336 = v538 - 1;
                v598[0] = v538 - 1;
                if (v538 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 21:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v554 = v12;
              v360 = v42;
              v361 = v598[0];
              v362 = 2 * v42;
              while (1)
              {
                v539 = v361;
                v363 = v554;
                do
                {
                  if (v49)
                  {
                    v364 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_683;
                    }

                    if (!v8)
                    {
LABEL_681:
                      v365 = 255;
                      goto LABEL_682;
                    }
                  }

                  else
                  {
                    v364 = 255;
                    if (!v8)
                    {
                      goto LABEL_681;
                    }
                  }

                  v365 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v364;
                    goto LABEL_683;
                  }

LABEL_682:
                  v581 = v581 & 0xFFFFFFFFFFFF0000 | *v61;
                  v582 = v582 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAhardlightPDA(v582, v365, *v61, v364);
LABEL_683:
                  v366 = &v61[2 * v360];
                  if (v366 >= v50)
                  {
                    v367 = -v531;
                  }

                  else
                  {
                    v367 = 0;
                  }

                  v61 = &v366[2 * v367];
                  v62 += v362;
                  --v363;
                }

                while (v363);
                v62 += 2 * v561;
                v368 = v596;
                v369 = &v596[2 * v565];
                v370 = -(v565 * v529);
                if (v369 < v563)
                {
                  v370 = 0;
                }

                v371 = &v369[2 * v370];
                v372 = v50 + 2 * v370 + 2 * v565;
                if (v563)
                {
                  v50 = v372;
                  v368 = v371;
                }

                v596 = v368;
                if (v563)
                {
                  v61 = v371;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v361 = v539 - 1;
                v598[0] = v539 - 1;
                if (v539 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 22:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v557 = v12;
              v435 = v42;
              v436 = v598[0];
              v437 = 2 * v42;
              while (1)
              {
                v542 = v436;
                v438 = v557;
                do
                {
                  if (v49)
                  {
                    v439 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_814;
                    }

                    if (!v8)
                    {
LABEL_812:
                      v440 = 255;
                      goto LABEL_813;
                    }
                  }

                  else
                  {
                    v439 = 255;
                    if (!v8)
                    {
                      goto LABEL_812;
                    }
                  }

                  v440 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v439;
                    goto LABEL_814;
                  }

LABEL_813:
                  v577 = v577 & 0xFFFFFFFFFFFF0000 | *v61;
                  v578 = v578 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAdifferencePDA(v578, v440, *v61, v439);
LABEL_814:
                  v441 = &v61[2 * v435];
                  if (v441 >= v50)
                  {
                    v442 = -v531;
                  }

                  else
                  {
                    v442 = 0;
                  }

                  v61 = &v441[2 * v442];
                  v62 += v437;
                  --v438;
                }

                while (v438);
                v62 += 2 * v561;
                v443 = v596;
                v444 = &v596[2 * v565];
                v445 = -(v565 * v529);
                if (v444 < v563)
                {
                  v445 = 0;
                }

                v446 = &v444[2 * v445];
                v447 = v50 + 2 * v445 + 2 * v565;
                if (v563)
                {
                  v50 = v447;
                  v443 = v446;
                }

                v596 = v443;
                if (v563)
                {
                  v61 = v446;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v436 = v542 - 1;
                v598[0] = v542 - 1;
                if (v542 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 23:
              v461 = v598[0];
              while (1)
              {
                v462 = v12;
                do
                {
                  if (v49)
                  {
                    v463 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_861;
                    }

                    if (!v8)
                    {
LABEL_858:
                      v464 = 255;
LABEL_859:
                      v466 = 255 * (*v61 + *v62) - 2 * *v62 * *v61;
                      v467 = 255 * (v464 + v463) - v464 * v463;
                      v465 = (v466 + (v466 >> 8) + 1) >> 8;
                      v463 = (v467 + (v467 >> 8) + 1) >> 8;
                      goto LABEL_860;
                    }
                  }

                  else
                  {
                    v463 = 255;
                    if (!v8)
                    {
                      goto LABEL_858;
                    }
                  }

                  v464 = v62[1];
                  if (v62[1])
                  {
                    goto LABEL_859;
                  }

                  LOBYTE(v465) = *v61;
LABEL_860:
                  *v62 = v465;
                  v62[1] = v463;
LABEL_861:
                  v468 = &v61[2 * v42];
                  if (v468 >= v50)
                  {
                    v469 = -v531;
                  }

                  else
                  {
                    v469 = 0;
                  }

                  v61 = &v468[2 * v469];
                  v62 += 2 * v42;
                  --v462;
                }

                while (v462);
                v62 += 2 * v561;
                v470 = v596;
                v471 = &v596[2 * v565];
                if (v471 >= v563)
                {
                  v472 = -(v565 * v529);
                }

                else
                {
                  v472 = 0;
                }

                v473 = &v471[2 * v472];
                v474 = v50 + 2 * v472 + 2 * v565;
                if (v563)
                {
                  v50 = v474;
                  v470 = v473;
                }

                v596 = v470;
                if (v563)
                {
                  v61 = v473;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v598[0] = --v461;
                if (!v461)
                {
                  goto LABEL_950;
                }
              }

            case 24:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v550 = v12;
              v261 = v42;
              v262 = v598[0];
              v263 = 2 * v42;
              while (1)
              {
                v535 = v262;
                v264 = v550;
                do
                {
                  if (v49)
                  {
                    v265 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_503;
                    }

                    if (!v8)
                    {
LABEL_501:
                      v266 = 255;
                      goto LABEL_502;
                    }
                  }

                  else
                  {
                    v265 = 255;
                    if (!v8)
                    {
                      goto LABEL_501;
                    }
                  }

                  v266 = v62[1];
                  if (!v62[1])
                  {
                    *v62 = *v61;
                    v62[1] = v265;
                    goto LABEL_503;
                  }

LABEL_502:
                  v575 = v575 & 0xFFFFFFFFFFFF0000 | *v61;
                  v576 = v576 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v62 = PDAhuePDA(v576, v266, *v61, v265);
LABEL_503:
                  v267 = &v61[2 * v261];
                  if (v267 >= v50)
                  {
                    v268 = -v531;
                  }

                  else
                  {
                    v268 = 0;
                  }

                  v61 = &v267[2 * v268];
                  v62 += v263;
                  --v264;
                }

                while (v264);
                v62 += 2 * v561;
                v269 = v596;
                v270 = &v596[2 * v565];
                v271 = -(v565 * v529);
                if (v270 < v563)
                {
                  v271 = 0;
                }

                v272 = &v270[2 * v271];
                v273 = v50 + 2 * v271 + 2 * v565;
                if (v563)
                {
                  v50 = v273;
                  v269 = v272;
                }

                v596 = v269;
                if (v563)
                {
                  v61 = v272;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v262 = v535 - 1;
                v598[0] = v535 - 1;
                if (v535 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 25:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v549 = v12;
              v248 = v42;
              v249 = v598[0];
              v250 = 2 * v42;
              while (1)
              {
                v534 = v249;
                v251 = v549;
                do
                {
                  if (v49)
                  {
                    v252 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_480;
                    }

                    if (!v8)
                    {
LABEL_477:
                      v253 = 255.0;
                      goto LABEL_478;
                    }
                  }

                  else
                  {
                    v252 = 255;
                    if (!v8)
                    {
                      goto LABEL_477;
                    }
                  }

                  if (v62[1])
                  {
                    v253 = v62[1];
LABEL_478:
                    v573 = v573 & 0xFFFFFFFFFFFF0000 | *v61;
                    v574 = v574 & 0xFFFFFFFFFFFF0000 | *v62;
                    *v62 = PDAhuePDA(v574, v253, *v61, v252);
                    goto LABEL_480;
                  }

                  *v62 = *v61;
                  v62[1] = v252;
LABEL_480:
                  v254 = &v61[2 * v248];
                  if (v254 >= v50)
                  {
                    v255 = -v531;
                  }

                  else
                  {
                    v255 = 0;
                  }

                  v61 = &v254[2 * v255];
                  v62 += v250;
                  --v251;
                }

                while (v251);
                v62 += 2 * v561;
                v256 = v596;
                v257 = &v596[2 * v565];
                v258 = -(v565 * v529);
                if (v257 < v563)
                {
                  v258 = 0;
                }

                v259 = &v257[2 * v258];
                v260 = v50 + 2 * v258 + 2 * v565;
                if (v563)
                {
                  v50 = v260;
                  v256 = v259;
                }

                v596 = v256;
                if (v563)
                {
                  v61 = v259;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v249 = v534 - 1;
                v598[0] = v534 - 1;
                if (v534 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 26:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v559 = v12;
              v475 = v42;
              v476 = v598[0];
              v477 = 2 * v42;
              while (1)
              {
                v544 = v476;
                v478 = v559;
                do
                {
                  if (v49)
                  {
                    v479 = v61[1];
                    if (!v61[1])
                    {
                      goto LABEL_886;
                    }

                    if (!v8)
                    {
LABEL_883:
                      v480 = 255.0;
                      goto LABEL_884;
                    }
                  }

                  else
                  {
                    v479 = 255;
                    if (!v8)
                    {
                      goto LABEL_883;
                    }
                  }

                  if (v62[1])
                  {
                    v480 = v62[1];
LABEL_884:
                    v571 = v571 & 0xFFFFFFFFFFFF0000 | *v61;
                    v569 = v569 & 0xFFFFFFFFFFFF0000 | *v62;
                    *v62 = PDAhuePDA(*v61, v479, *v62, v480);
                    goto LABEL_886;
                  }

                  *v62 = *v61;
                  v62[1] = v479;
LABEL_886:
                  v481 = &v61[2 * v475];
                  if (v481 >= v50)
                  {
                    v482 = -v531;
                  }

                  else
                  {
                    v482 = 0;
                  }

                  v61 = &v481[2 * v482];
                  v62 += v477;
                  --v478;
                }

                while (v478);
                v62 += 2 * v561;
                v483 = v596;
                v484 = &v596[2 * v565];
                v485 = -(v565 * v529);
                if (v484 < v563)
                {
                  v485 = 0;
                }

                v486 = &v484[2 * v485];
                v487 = v50 + 2 * v485 + 2 * v565;
                if (v563)
                {
                  v50 = v487;
                  v483 = v486;
                }

                v596 = v483;
                if (v563)
                {
                  v61 = v486;
                }

                else
                {
                  v61 += 2 * v565;
                }

                v476 = v544 - 1;
                v598[0] = v544 - 1;
                if (v544 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 27:
              v525 = v31;
              v526 = v29;
              v527 = v30;
              v547 = v12;
              v159 = v42;
              v160 = v598[0];
              v161 = 2 * v42;
              break;
            default:
              goto LABEL_950;
          }

          break;
        }

LABEL_316:
        v532 = v160;
        v162 = v547;
        while (v49)
        {
          v163 = v61[1];
          if (v61[1])
          {
            if (v8)
            {
              goto LABEL_320;
            }

LABEL_323:
            v164 = 255.0;
            goto LABEL_324;
          }

LABEL_326:
          v165 = &v61[2 * v159];
          if (v165 >= v50)
          {
            v166 = -v531;
          }

          else
          {
            v166 = 0;
          }

          v61 = &v165[2 * v166];
          v62 += v161;
          if (!--v162)
          {
            v62 += 2 * v561;
            v167 = v596;
            v168 = &v596[2 * v565];
            v169 = -(v565 * v529);
            if (v168 < v563)
            {
              v169 = 0;
            }

            v170 = &v168[2 * v169];
            v171 = v50 + 2 * v169 + 2 * v565;
            if (v563)
            {
              v50 = v171;
              v167 = v170;
            }

            v596 = v167;
            if (v563)
            {
              v61 = v170;
            }

            else
            {
              v61 += 2 * v565;
            }

            v160 = v532 - 1;
            v598[0] = v532 - 1;
            if (v532 == 1)
            {
              goto LABEL_898;
            }

            goto LABEL_316;
          }
        }

        v163 = 255;
        if (!v8)
        {
          goto LABEL_323;
        }

LABEL_320:
        if (!v62[1])
        {
          *v62 = *v61;
          v62[1] = v163;
          goto LABEL_326;
        }

        v164 = v62[1];
LABEL_324:
        v566 = v566 & 0xFFFFFFFFFFFF0000 | *v61;
        v567 = v567 & 0xFFFFFFFFFFFF0000 | *v62;
        *v62 = PDAhuePDA(v567, v164, *v61, v163);
        goto LABEL_326;
      }

      v529 = 0;
      v65 = v42 * v12;
      v561 = v30 - v65;
      v50 = -1;
      v34 = v531;
    }

    else
    {
      LODWORD(v531) = *(v4 + 64);
      v529 = *(v4 + 68);
      v563 = v29 + 2 * v34 * v529;
      v49 = v7 != 0;
      if (v16)
      {
        v565 = *(v4 + 76) >> 1;
        v523 = *(v4 + 60);
        v524 = *(v4 + 56);
        v42 = 1;
        v596 = *(v4 + 88);
        v50 = v596;
        goto LABEL_46;
      }

      v561 = v30 - v12;
      if (v29)
      {
        v530 = 0;
        v59 = v33 % v531;
        v565 = *(v4 + 76) >> 1;
        v60 = v29 + 2 * v34 * (v32 % v529);
        v61 = (v60 + 2 * v59);
        v50 = v60 + 2 * v531;
        v42 = 1;
        v596 = v61;
        v62 = (*(v4 + 40) + 2 * v30 * *(v4 + 16) + 2 * *(v4 + 12));
        v523 = v32 % v529;
        v524 = v59;
        goto LABEL_308;
      }

      v523 = *(v4 + 60);
      v524 = *(v4 + 56);
      v50 = 0;
      v42 = 1;
      v65 = v12;
    }

    v530 = 0;
    v596 = 0;
    v563 = 0;
    v565 = v34 - v65;
    v61 = v29;
    v62 = v31;
    goto LABEL_308;
  }

  v17 = *(v4 + 128);
  if ((v17 | 8) == 8)
  {
    if ((*v4 & 0xFF00) == 0x400)
    {
      GRAYa8_mark_constmask(v4, v9, v5);
    }

    else
    {
      GRAYa8_mark_pixelmask(v4, v9);
    }

    return 1;
  }

  v43 = *(v4 + 112);
  v44 = *(v4 + 116);
  v45 = (v43 + 15) & 0xFFFFFFF0;
  v46 = v45 * v44;
  if (v46 <= 4096)
  {
    v48 = v608;
  }

  else
  {
    v47 = malloc_type_malloc(v46, 0x100004077774924uLL);
    if (!v47)
    {
      return 1;
    }

    v48 = v47;
    v16 = *(v11 + 136);
    v17 = *(v11 + 128);
  }

  CGSConvertBitsToMask(v16, *(v11 + 124), v48, v45, v43, v44, v17);
  v52 = *(v11 + 112);
  v604 = *(v11 + 96);
  v605 = v52;
  v53 = *(v11 + 144);
  v606 = *(v11 + 128);
  v607 = v53;
  v54 = *(v11 + 48);
  v600 = *(v11 + 32);
  v601 = v54;
  v55 = *(v11 + 80);
  v602 = *(v11 + 64);
  v603 = v55;
  v56 = *v11;
  v57 = *(v11 + 16);
  *v598 = *v11;
  v599 = v57;
  HIDWORD(v605) = (v43 + 15) & 0xFFFFFFF0;
  *(&v606 + 1) = v48;
  if (BYTE1(v598[0]) << 8 == 1024)
  {
    GRAYa8_mark_constmask(v598, v528, *&v56);
  }

  else
  {
    GRAYa8_mark_pixelmask(v598, v528);
  }

  if (v48 != v608)
  {
    v58 = v48;
LABEL_958:
    free(v58);
  }

  return 1;
}

void GRAYa8_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v353 = a3;
  v362 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v6 = *(a1 + 28);
  v7 = *(a1 + 48);
  v359 = *(a1 + 40);
  v361 = v7;
  v8 = *(a2 + 184);
  v9 = *(a1 + 136);
  v10 = *(a2 + 96);
  v356 = *(a2 + 104);
  v357 = v10;
  v12 = *(a1 + 12);
  v11 = *(a1 + 16);
  v360 = *(a1 + 8);
  v352 = a2;
  v13 = *(a2 + 16);
  v14 = (v13 + 4) * v4;
  if (v14 > 65439)
  {
    v17 = malloc_type_calloc(1uLL, v14 + 96, 0xC5BCADE7uLL);
    v16 = v17;
    v19 = v17;
    v20 = v352;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v16 = &v320 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, v15);
    v19 = 0;
    v20 = v352;
  }

  v322 = v19;
  v21 = ((v8 * 255.0) + 0.5);
  v22 = v6 >> 1;
  v23 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v23 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 2 * v4 + 15;
  v26 = v25 & 0xFFFFFFFFFFFFFFF0;
  if (v13)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v27 = 0;
  }

  v28 = v24 + v27;
  v20[18] = v23;
  v20[19] = v24 + v27;
  v20[20] = v24;
  v29 = (v359 + 2 * v22 * v11 + 2 * v12);
  v323 = v3;
  v321 = v22;
  v355 = v22 - v3;
  v30 = *(a1 + 104);
  v31 = *(a1 + 108);
  v32 = *(a1 + 2);
  if (v32 == 6 || v32 == 1)
  {
    if (!v9)
    {
      goto LABEL_400;
    }

    v33 = 0;
    LODWORD(v359) = 0;
    v34 = *(a1 + 124);
    v35 = v9 + v34 * v31 + v30;
    v36 = v323;
    v354 = v34 - v323;
    v37 = v353;
    v38 = v352;
    goto LABEL_18;
  }

  if (!v9)
  {
    v354 = 0;
    v33 = 0;
    v35 = 0;
    LODWORD(v359) = 0;
    v37 = v353;
    v38 = v352;
    v36 = v323;
LABEL_18:
    v41 = v356;
    v40 = v357;
    goto LABEL_19;
  }

  shape_enum_clip_alloc(v17, v18, v9, 1, 1, 1, v30, v31, v3, v360);
  v41 = v356;
  v40 = v357;
  if (!v39)
  {
    goto LABEL_400;
  }

  v33 = v39;
  v42 = 0;
  v43 = ((v13 * v4 + 15) & 0xFFFFFFF0);
  if (!v13)
  {
    v43 = v26;
  }

  v354 = -v323;
  v35 = (v28 + v43 + 16);
  v38 = v352;
  while (1)
  {
LABEL_403:
    while (1)
    {
      v316 = *(v35 - 4);
      v317 = v316 - v42;
      if (v316 <= v42)
      {
        break;
      }

      v360 -= v317;
      if (v360 < 1)
      {
LABEL_399:
        free(v33);
        goto LABEL_400;
      }

      v40 += *(v38 + 128) * v317;
      v41 += *(v38 + 136) * v317;
      v29 += 2 * v321 * v317;
      v42 = v316;
    }

    if (v42 < *(v35 - 3) + v316)
    {
      break;
    }

    v318 = v33;
    v319 = shape_enum_clip_scan(v33, v35 - 4);
    v33 = v318;
    if (!v319)
    {
      goto LABEL_399;
    }
  }

  LODWORD(v359) = v42;
  v36 = v323;
  v37 = v353;
LABEL_19:
  v44 = v21 ^ 0xFF;
  v351 = (v3 - 1);
  v350 = -v36;
  v45 = v33;
  while (2)
  {
    v358 = v45;
    (*v38)(v38, v40, v41, v3);
    v46 = *(v38 + 160);
    v47 = *(v38 + 144);
    v48 = *(v38 + 8);
    if (v48 == *(v38 + 12))
    {
      if (v21 != 255)
      {
        v49 = v3;
        v50 = *(v38 + 144);
        do
        {
          if (*v50)
          {
            *v46 = (*v46 * v21 + ((*v46 * v21) >> 8) + 1) >> 8;
            v46[1] = (v46[1] * v21 + ((v46[1] * v21) >> 8) + 1) >> 8;
          }

          ++v50;
          v46 += 2;
          --v49;
        }

        while (v49);
        v46 += 2 * v350;
        v47 += v351 + v350 + 1;
      }
    }

    else
    {
      v51 = HIWORD(v48) & 0x3F;
      if (v51 == 32 || v51 == 16)
      {
        _CGHandleAssert("GRAYa8_image_pixel", 6877, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "bitdepth != 16 && bitdepth != 32", "Invalid bitdepth (%u)", v51);
      }

      v53 = *(v38 + 152);
      if (v21 == 255)
      {
        v57 = 0;
        v58 = v46 + 1;
        do
        {
          if (v47[v57])
          {
            *(v58 - 1) = *(v53 + 2 * v57);
          }

          ++v57;
          v58 += 2;
        }

        while (v3 != v57);
      }

      else
      {
        v54 = 0;
        v55 = v46 + 1;
        do
        {
          if (v47[v54])
          {
            v56 = *(v53 + 2 * v54) * v44;
            *(v55 - 1) = *(v53 + 2 * v54) - ((v56 + (v56 >> 8) + 1) & 0xFF00 | ((HIBYTE(*(v53 + 2 * v54)) * v44 + ((HIBYTE(*(v53 + 2 * v54)) * v44) >> 8) + 1) >> 8));
          }

          ++v54;
          v55 += 2;
        }

        while (v3 != v54);
      }
    }

    switch(v37)
    {
      case 0:
        v59 = v3;
        v60 = v35;
        do
        {
          v61 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v61 = ((*v60 * v61 + ((*v60 * v61) >> 8) + 1) >> 8);
            }

            if (v61)
            {
              if (v61 == 255)
              {
                *v29 = 0;
              }

              else
              {
                v62 = v61 ^ 0xFF;
                *v29 = (*v29 * v62 + ((*v29 * v62) >> 8) + 1) >> 8;
                v29[1] = (v29[1] * v62 + ((v29[1] * v62) >> 8) + 1) >> 8;
              }
            }
          }

          ++v47;
          v60 += v35 != 0;
          v29 += 2;
          --v59;
        }

        while (v59);
        v35 = &v60[v354];
        goto LABEL_359;
      case 1:
        v185 = *v47;
        if (v35)
        {
          v148 = v29 - 2;
          v186 = v46 + 1;
          v187 = v47 + 1;
          v188 = v3;
          v152 = v359;
          do
          {
            if (v185)
            {
              v189 = *v35 * v185 + ((*v35 * v185) >> 8) + 1;
              if (BYTE1(v189))
              {
                if (BYTE1(v189) == 255)
                {
                  *(v148 + 1) = *(v186 - 1);
                }

                else
                {
                  v190 = v189 >> 8;
                  v191 = v190 * *(v186 - 1) + (v190 ^ 0xFF) * v148[2];
                  v148[2] = (v191 + (v191 >> 8) + 1) >> 8;
                  v148[3] = (v190 * *v186 + (v190 ^ 0xFF) * v148[3] + ((v190 * *v186 + (v190 ^ 0xFF) * v148[3]) >> 8) + 1) >> 8;
                }
              }
            }

            v192 = *v187++;
            v185 = v192;
            ++v35;
            v148 += 2;
            v186 += 2;
            --v188;
          }

          while (v188);
          goto LABEL_213;
        }

        v311 = v46 + 1;
        v312 = v47 + 1;
        v148 = v29 - 2;
        v313 = v3;
        v152 = v359;
        do
        {
          if (v185)
          {
            if (v185 == 255)
            {
              *(v148 + 1) = *(v311 - 1);
            }

            else
            {
              v314 = *(v311 - 1) * v185 + v148[2] * (v185 ^ 0xFF);
              v148[2] = (v314 + (v314 >> 8) + 1) >> 8;
              v148[3] = (*v311 * v185 + v148[3] * (v185 ^ 0xFF) + ((*v311 * v185 + v148[3] * (v185 ^ 0xFFu)) >> 8) + 1) >> 8;
            }
          }

          v315 = *v312++;
          v185 = v315;
          v311 += 2;
          v148 += 2;
          --v313;
        }

        while (v313);
        goto LABEL_396;
      case 2:
        v147 = *v47;
        if (v35)
        {
          v148 = v29 - 2;
          v149 = v46 + 1;
          v150 = v47 + 1;
          v151 = v3;
          v152 = v359;
          while (1)
          {
            if (!v147)
            {
              goto LABEL_168;
            }

            v153 = *v35 * v147 + ((*v35 * v147) >> 8) + 1;
            if (!BYTE1(v153))
            {
              goto LABEL_168;
            }

            if (BYTE1(v153) == 255)
            {
              v154 = *v149;
              if (*v149)
              {
                if (v154 == 255)
                {
                  v148[2] = *(v149 - 1);
                  LOBYTE(v155) = -1;
                }

                else
                {
                  v148[2] = *(v149 - 1) + ((v148[2] * (v154 ^ 0xFF) + ((v148[2] * (v154 ^ 0xFFu)) >> 8) + 1) >> 8);
                  v155 = v154 + ((v148[3] * (v154 ^ 0xFF) + ((v148[3] * (v154 ^ 0xFFu)) >> 8) + 1) >> 8);
                }

                goto LABEL_167;
              }
            }

            else
            {
              v156 = v153 >> 8;
              v157 = v156 * *v149 + ((v156 * *v149) >> 8) + 1;
              if (v157 >= 0x100)
              {
                v148[2] = ((((v157 >> 8) ^ 0xFF) * v148[2] + ((((v157 >> 8) ^ 0xFF) * v148[2]) >> 8) + 1) >> 8) + ((v156 * *(v149 - 1) + ((v156 * *(v149 - 1)) >> 8) + 1) >> 8);
                v155 = ((((v157 >> 8) ^ 0xFF) * v148[3] + ((((v157 >> 8) ^ 0xFF) * v148[3]) >> 8) + 1) >> 8) + (v157 >> 8);
LABEL_167:
                v148[3] = v155;
              }
            }

LABEL_168:
            v158 = *v150++;
            v147 = v158;
            ++v35;
            v148 += 2;
            v149 += 2;
            if (!--v151)
            {
LABEL_213:
              v35 += v354;
              goto LABEL_397;
            }
          }
        }

        v304 = v46 + 1;
        v305 = v47 + 1;
        v148 = v29 - 2;
        v306 = v3;
        v152 = v359;
        do
        {
          if (!v147)
          {
            goto LABEL_388;
          }

          if (v147 != 255)
          {
            v309 = *v304 * v147 + ((*v304 * v147) >> 8) + 1;
            if (v309 < 0x100)
            {
              goto LABEL_388;
            }

            v148[2] = ((((v309 >> 8) ^ 0xFF) * v148[2] + ((((v309 >> 8) ^ 0xFF) * v148[2]) >> 8) + 1) >> 8) + ((*(v304 - 1) * v147 + ((*(v304 - 1) * v147) >> 8) + 1) >> 8);
            v307 = (((v309 >> 8) ^ 0xFF) * v148[3] + ((((v309 >> 8) ^ 0xFF) * v148[3]) >> 8) + 1) >> 8;
            goto LABEL_386;
          }

          v307 = *v304;
          if (!*v304)
          {
            goto LABEL_388;
          }

          if (v307 != 255)
          {
            v148[2] = *(v304 - 1) + ((v148[2] * (v307 ^ 0xFF) + ((v148[2] * (v307 ^ 0xFF)) >> 8) + 1) >> 8);
            v309 = v148[3] * (v307 ^ 0xFF) + ((v148[3] * (v307 ^ 0xFF)) >> 8) + 1;
LABEL_386:
            v308 = v307 + (v309 >> 8);
            goto LABEL_387;
          }

          v148[2] = *(v304 - 1);
          LOBYTE(v308) = -1;
LABEL_387:
          v148[3] = v308;
LABEL_388:
          v310 = *v305++;
          v147 = v310;
          v304 += 2;
          v148 += 2;
          --v306;
        }

        while (v306);
LABEL_396:
        v35 = 0;
LABEL_397:
        v29 = &v148[2 * v355 + 2];
        v292 = v360;
LABEL_361:
        v293 = v292 - 1;
        if (v293)
        {
          v360 = v293;
          v45 = 0;
          LODWORD(v359) = v152 + 1;
          v40 += *(v38 + 128);
          v41 += *(v38 + 136);
          v33 = v358;
          if (v358)
          {
            v42 = v359;
            goto LABEL_403;
          }

          continue;
        }

        v33 = v358;
        if (v358)
        {
          goto LABEL_399;
        }

LABEL_400:
        if (v322)
        {
          free(v322);
        }

        return;
      case 3:
        v168 = v46 + 1;
        v169 = v29 + 1;
        v170 = v3;
        v105 = v35;
        do
        {
          v106 = v169;
          v171 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v171 = ((*v105 * v171 + ((*v105 * v171) >> 8) + 1) >> 8);
            }

            if (v171)
            {
              if (v171 == 255)
              {
                v172 = v29 + 1;
                v173 = *v106;
                *(v106 - 1) = (v173 * *(v168 - 1) + ((v173 * *(v168 - 1)) >> 8) + 1) >> 8;
                v174 = *v168 * v173;
              }

              else
              {
                v175 = *v106;
                v176 = (v175 * v171 + ((v175 * v171) >> 8) + 1) >> 8;
                v177 = v171 ^ 0xFF;
                v178 = *(v106 - 1) * v177 + v176 * *(v168 - 1);
                *(v106 - 1) = (v178 + (v178 >> 8) + 1) >> 8;
                v174 = v175 * v177 + v176 * *v168;
                v172 = v106;
              }

              *v172 = (v174 + (v174 >> 8) + 1) >> 8;
            }
          }

          ++v47;
          v105 += v35 != 0;
          v29 += 2;
          v168 += 2;
          v169 = v106 + 2;
          --v170;
        }

        while (v170);
        goto LABEL_193;
      case 4:
        v102 = v46 + 1;
        v103 = v29 + 1;
        v104 = v3;
        v105 = v35;
        do
        {
          v106 = v103;
          v107 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v107 = ((*v105 * v107 + ((*v105 * v107) >> 8) + 1) >> 8);
            }

            if (v107)
            {
              if (v107 == 255)
              {
                v108 = v29 + 1;
                v109 = *v106 ^ 0xFF;
                *(v106 - 1) = ((*v106 ^ 0xFF) * *(v102 - 1) + ((v109 * *(v102 - 1)) >> 8) + 1) >> 8;
                v110 = *v102 * v109;
              }

              else
              {
                v111 = *v106;
                v112 = ((v111 ^ 0xFF) * v107 + (((v111 ^ 0xFFu) * v107) >> 8) + 1) >> 8;
                v113 = v107 ^ 0xFF;
                v114 = *(v106 - 1) * v113 + v112 * *(v102 - 1);
                *(v106 - 1) = (v114 + (v114 >> 8) + 1) >> 8;
                v110 = v111 * v113 + v112 * *v102;
                v108 = v106;
              }

              *v108 = (v110 + (v110 >> 8) + 1) >> 8;
            }
          }

          ++v47;
          v105 += v35 != 0;
          v29 += 2;
          v102 += 2;
          v103 = v106 + 2;
          --v104;
        }

        while (v104);
LABEL_193:
        v35 = &v105[v354];
        v29 = &v106[2 * v355 + 1];
        goto LABEL_360;
      case 5:
        v211 = v46 + 1;
        v212 = v3;
        v85 = v35;
        while (1)
        {
          v213 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_245;
            }

            v214 = *v85 * v213 + ((*v85 * v213) >> 8) + 1;
            if (v214 >= 0x100)
            {
              break;
            }
          }

LABEL_246:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v211 += 2;
          if (!--v212)
          {
            goto LABEL_358;
          }
        }

        v213 = v214 >> 8;
LABEL_245:
        v213 = v213;
        v215 = (*(v211 - 1) * v213 + ((*(v211 - 1) * v213) >> 8) + 1) >> 8;
        v216 = *v211 * v213 + ((*v211 * v213) >> 8) + 1;
        v217 = v29[1];
        *v29 = (v215 * v217 + ((v216 >> 8) ^ 0xFF) * *v29 + ((v215 * v217 + ((v216 >> 8) ^ 0xFF) * *v29) >> 8) + 1) >> 8;
        v29[1] = ((((v216 >> 8) ^ 0xFF) + (v216 >> 8)) * v217 + (((((v216 >> 8) ^ 0xFF) + (v216 >> 8)) * v217) >> 8) + 1) >> 8;
        goto LABEL_246;
      case 6:
        v236 = v46 + 1;
        v237 = v3;
        v85 = v35;
        while (1)
        {
          v238 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_279;
            }

            v239 = *v85 * v238 + ((*v85 * v238) >> 8) + 1;
            if (v239 >= 0x100)
            {
              break;
            }
          }

LABEL_284:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v236 += 2;
          if (!--v237)
          {
            goto LABEL_358;
          }
        }

        v238 = v239 >> 8;
LABEL_279:
        v240 = v29[1];
        if (v240 != 0xFF)
        {
          if (~v240 == 255)
          {
            v238 = v238;
            *v29 = (*(v236 - 1) * v238 + ((*(v236 - 1) * v238) >> 8) + 1) >> 8;
            v241 = (*v236 * v238 + ((*v236 * v238) >> 8) + 1) >> 8;
          }

          else
          {
            v242 = (~v240 * v238 + ((~v240 * v238) >> 8) + 1) >> 8;
            *v29 += (v242 * *(v236 - 1) + ((v242 * *(v236 - 1)) >> 8) + 1) >> 8;
            v241 = v240 + ((v242 * *v236 + ((v242 * *v236) >> 8) + 1) >> 8);
          }

          v29[1] = v241;
        }

        goto LABEL_284;
      case 7:
        v179 = v46 + 1;
        v180 = v3;
        v85 = v35;
        do
        {
          v181 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v181 = ((*v85 * v181 + ((*v85 * v181) >> 8) + 1) >> 8);
            }

            if (v181)
            {
              if (v181 == 255)
              {
                v182 = *v179;
                *v29 = (v182 * *v29 + ((v182 * *v29) >> 8) + 1) >> 8;
                v183 = v29 + 1;
                v184 = v29[1];
              }

              else
              {
                v184 = (v181 ^ 0xFF) + ((*v179 * v181 + ((*v179 * v181) >> 8) + 1) >> 8);
                *v29 = (v184 * *v29 + ((v184 * *v29) >> 8) + 1) >> 8;
                v183 = v29 + 1;
                v182 = v29[1];
              }

              *v183 = (v184 * v182 + ((v184 * v182) >> 8) + 1) >> 8;
            }
          }

          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v179 += 2;
          --v180;
        }

        while (v180);
        goto LABEL_358;
      case 8:
        v259 = v46 + 1;
        v260 = v3;
        v85 = v35;
        do
        {
          v261 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v261 = ((*v85 * v261 + ((*v85 * v261) >> 8) + 1) >> 8);
            }

            if (v261)
            {
              if (v261 == 255)
              {
                v262 = *v259 ^ 0xFF;
                *v29 = ((*v259 ^ 0xFF) * *v29 + ((v262 * *v29) >> 8) + 1) >> 8;
                v263 = v29 + 1;
                v264 = v29[1];
              }

              else
              {
                v264 = (v261 ^ 0xFF) + (((*v259 ^ 0xFF) * v261 + (((*v259 ^ 0xFFu) * v261) >> 8) + 1) >> 8);
                *v29 = (v264 * *v29 + ((v264 * *v29) >> 8) + 1) >> 8;
                v263 = v29 + 1;
                v262 = v29[1];
              }

              *v263 = (v264 * v262 + ((v264 * v262) >> 8) + 1) >> 8;
            }
          }

          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v259 += 2;
          --v260;
        }

        while (v260);
        goto LABEL_358;
      case 9:
        v121 = v46 + 1;
        v122 = v3;
        v85 = v35;
        while (1)
        {
          v123 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_127;
            }

            v124 = *v85 * v123 + ((*v85 * v123) >> 8) + 1;
            if (v124 >= 0x100)
            {
              break;
            }
          }

LABEL_128:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v121 += 2;
          if (!--v122)
          {
            goto LABEL_358;
          }
        }

        v123 = v124 >> 8;
LABEL_127:
        v125 = *v121 * v123;
        v126 = v29[1];
        v127 = *(v121 - 1) * v123 * ~v126;
        v128 = v125 + ~v123;
        *v29 = v127 + v128 * *v29;
        v29[1] = v125 * ~v126 + v128 * v126;
        goto LABEL_128;
      case 10:
        v252 = v46 + 1;
        v253 = v3;
        v85 = v35;
        while (1)
        {
          v254 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_304;
            }

            v255 = *v85 * v254 + ((*v85 * v254) >> 8) + 1;
            if (v255 >= 0x100)
            {
              break;
            }
          }

LABEL_305:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v252 += 2;
          if (!--v253)
          {
            goto LABEL_358;
          }
        }

        v254 = v255 >> 8;
LABEL_304:
        v254 = v254;
        v256 = (*(v252 - 1) * v254 + ((*(v252 - 1) * v254) >> 8) + 1) >> 8;
        v257 = (*v252 * v254 + ((*v252 * v254) >> 8) + 1) >> 8;
        v258 = v29[1];
        *v29 = (v256 * (v258 ^ 0xFF) + (v257 ^ 0xFF) * *v29 + ((v256 * (v258 ^ 0xFF) + (v257 ^ 0xFF) * *v29) >> 8) + 1) >> 8;
        v29[1] = (v257 * (v258 ^ 0xFF) + (v257 ^ 0xFF) * v258 + ((v257 * (v258 ^ 0xFF) + (v257 ^ 0xFF) * v258) >> 8) + 1) >> 8;
        goto LABEL_305;
      case 11:
        v93 = v46 + 1;
        v94 = v3;
        v85 = v35;
        while (1)
        {
          v95 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_97;
            }

            v96 = *v85 * v95 + ((*v85 * v95) >> 8) + 1;
            if (v96 >= 0x100)
            {
              break;
            }
          }

LABEL_101:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v93 += 2;
          if (!--v94)
          {
            goto LABEL_358;
          }
        }

        v95 = v96 >> 8;
LABEL_97:
        if (v361)
        {
          v97 = v29[1];
        }

        else
        {
          v97 = 255;
        }

        v95 = v95;
        v98 = (*(v93 - 1) * v95 + ((*(v93 - 1) * v95) >> 8) + 1) >> 8;
        v99 = (*v93 * v95 + ((*v93 * v95) >> 8) + 1) >> 8;
        v100 = ((v99 - v98) | (v99 << 16)) + (v97 - *v29) + (v97 << 16);
        v101 = (255 * ((v100 >> 8) & 0x10001)) | v100;
        *v29 = BYTE2(v101) - v101;
        v29[1] = BYTE2(v101);
        goto LABEL_101;
      case 12:
        v115 = v46 + 1;
        v116 = v3;
        v85 = v35;
        while (1)
        {
          v117 = *v47;
          if (*v47)
          {
            if (!v35)
            {
              goto LABEL_119;
            }

            v118 = *v85 * v117 + ((*v85 * v117) >> 8) + 1;
            if (v118 >= 0x100)
            {
              break;
            }
          }

LABEL_120:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v115 += 2;
          if (!--v116)
          {
            goto LABEL_358;
          }
        }

        v117 = v118 >> 8;
LABEL_119:
        v119 = ((*v29 | (*v29 << 8)) & 0xFF00FF) + ((*(v115 - 1) * v117 + ((*(v115 - 1) * v117) >> 8) + 1) >> 8) + ((257 * *v115 * v117 + 256) & 0xFF0000);
        v120 = (255 * ((v119 >> 8) & 0x10001)) | v119;
        *v29 = v120;
        v29[1] = BYTE2(v120);
        goto LABEL_120;
      case 13:
        v356 = v41;
        v357 = v40;
        v227 = v46 + 1;
        v228 = v3;
        v75 = v35;
        while (1)
        {
          v229 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v230 = *v75 * v229 + ((*v75 * v229) >> 8) + 1;
              if (v230 < 0x100)
              {
                goto LABEL_272;
              }

              v229 = v230 >> 8;
            }

            v231 = v229;
            v232 = *v227 * v231 + ((*v227 * v231) >> 8) + 1;
            if (v232 >= 0x100)
            {
              v233 = (*(v227 - 1) * v231 + ((*(v227 - 1) * v231) >> 8) + 1) >> 8;
              if (!v361)
              {
                v234 = 255;
LABEL_271:
                v235 = *v29;
                v342 = v342 & 0xFFFFFFFFFFFF0000 | *v29;
                v343 = v343 & 0xFFFFFFFFFFFF0000 | v232 & 0xFF00 | v233;
                *v29 = PDAmultiplyPDA(v235, v234, v343, BYTE1(v232));
                goto LABEL_272;
              }

              v234 = v29[1];
              if (v29[1])
              {
                goto LABEL_271;
              }

              *v29 = v233;
              v29[1] = BYTE1(v232);
            }
          }

LABEL_272:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v227 += 2;
          if (!--v228)
          {
            goto LABEL_343;
          }
        }

      case 14:
        v83 = v46 + 1;
        v84 = v3;
        v85 = v35;
        while (1)
        {
          v86 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v87 = *v85 * v86 + ((*v85 * v86) >> 8) + 1;
              if (v87 < 0x100)
              {
                goto LABEL_90;
              }

              v86 = v87 >> 8;
            }

            v86 = v86;
            v88 = *v83 * v86 + ((*v83 * v86) >> 8) + 1;
            if (v88 >= 0x100)
            {
              v89 = (*(v83 - 1) * v86 + ((*(v83 - 1) * v86) >> 8) + 1) >> 8;
              v90 = v88 >> 8;
              if (v361)
              {
                v91 = v29[1];
                if (!v29[1])
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v91 = 255;
              }

              v92 = (*v29 ^ 0xFF) * v89 - *v29 + (*v29 << 8);
              v89 = (v92 + (v92 >> 8) + 1) >> 8;
              v90 = (255 * (v90 + v91) - v90 * v91 + ((255 * (v90 + v91) - v90 * v91) >> 8) + 1) >> 8;
LABEL_89:
              *v29 = v89;
              v29[1] = v90;
            }
          }

LABEL_90:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v83 += 2;
          if (!--v84)
          {
            goto LABEL_358;
          }
        }

      case 15:
        v356 = v41;
        v357 = v40;
        v159 = v46 + 1;
        v160 = v3;
        v75 = v35;
        while (1)
        {
          v161 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v162 = *v75 * v161 + ((*v75 * v161) >> 8) + 1;
              if (v162 < 0x100)
              {
                goto LABEL_181;
              }

              v161 = v162 >> 8;
            }

            v163 = v161;
            v164 = *v159 * v163 + ((*v159 * v163) >> 8) + 1;
            if (v164 >= 0x100)
            {
              v165 = (*(v159 - 1) * v163 + ((*(v159 - 1) * v163) >> 8) + 1) >> 8;
              if (!v361)
              {
                v166 = 255;
LABEL_180:
                v167 = *v29;
                v348 = v348 & 0xFFFFFFFFFFFF0000 | *v29;
                v349 = v349 & 0xFFFFFFFFFFFF0000 | v164 & 0xFF00 | v165;
                *v29 = PDAoverlayPDA(v167, v166, v165, BYTE1(v164));
                goto LABEL_181;
              }

              v166 = v29[1];
              if (v29[1])
              {
                goto LABEL_180;
              }

              *v29 = v165;
              v29[1] = BYTE1(v164);
            }
          }

LABEL_181:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v159 += 2;
          if (!--v160)
          {
            goto LABEL_343;
          }
        }

      case 16:
        v356 = v41;
        v357 = v40;
        v73 = v46 + 1;
        v74 = v3;
        v75 = v35;
        while (1)
        {
          v76 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v77 = *v75 * v76 + ((*v75 * v76) >> 8) + 1;
              if (v77 < 0x100)
              {
                goto LABEL_76;
              }

              v76 = v77 >> 8;
            }

            v78 = v76;
            v79 = *v73 * v78 + ((*v73 * v78) >> 8) + 1;
            if (v79 >= 0x100)
            {
              v80 = (*(v73 - 1) * v78 + ((*(v73 - 1) * v78) >> 8) + 1) >> 8;
              if (!v361)
              {
                v81 = 255;
LABEL_75:
                v82 = v345 & 0xFFFFFFFFFFFF0000 | *v29;
                v344 = v344 & 0xFFFFFFFFFFFF0000 | v79 & 0xFF00 | v80;
                v345 = v82;
                *v29 = PDAdarkenPDA(v82, v81, v80, BYTE1(v79));
                goto LABEL_76;
              }

              v81 = v29[1];
              if (v29[1])
              {
                goto LABEL_75;
              }

              *v29 = v80;
              v29[1] = BYTE1(v79);
            }
          }

LABEL_76:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v73 += 2;
          if (!--v74)
          {
            goto LABEL_343;
          }
        }

      case 17:
        v356 = v41;
        v357 = v40;
        v193 = v46 + 1;
        v194 = v3;
        v75 = v35;
        while (1)
        {
          v195 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v196 = *v75 * v195 + ((*v75 * v195) >> 8) + 1;
              if (v196 < 0x100)
              {
                goto LABEL_225;
              }

              v195 = v196 >> 8;
            }

            v197 = v195;
            v198 = *v193 * v197 + ((*v193 * v197) >> 8) + 1;
            if (v198 >= 0x100)
            {
              v199 = (*(v193 - 1) * v197 + ((*(v193 - 1) * v197) >> 8) + 1) >> 8;
              if (!v361)
              {
                v200 = 255;
LABEL_224:
                v201 = v347 & 0xFFFFFFFFFFFF0000 | *v29;
                v346 = v346 & 0xFFFFFFFFFFFF0000 | v198 & 0xFF00 | v199;
                v347 = v201;
                *v29 = PDAlightenPDA(v201, v200, v199, BYTE1(v198));
                goto LABEL_225;
              }

              v200 = v29[1];
              if (v29[1])
              {
                goto LABEL_224;
              }

              *v29 = v199;
              v29[1] = BYTE1(v198);
            }
          }

LABEL_225:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v193 += 2;
          if (!--v194)
          {
            goto LABEL_343;
          }
        }

      case 18:
        v356 = v41;
        v357 = v40;
        v243 = v46 + 1;
        v244 = v3;
        v75 = v35;
        while (1)
        {
          v245 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v246 = *v75 * v245 + ((*v75 * v245) >> 8) + 1;
              if (v246 < 0x100)
              {
                goto LABEL_297;
              }

              v245 = v246 >> 8;
            }

            v247 = v245;
            v248 = *v243 * v247 + ((*v243 * v247) >> 8) + 1;
            if (v248 >= 0x100)
            {
              v249 = (*(v243 - 1) * v247 + ((*(v243 - 1) * v247) >> 8) + 1) >> 8;
              if (!v361)
              {
                v250 = 255;
LABEL_296:
                v251 = *v29;
                v341 = v341 & 0xFFFFFFFFFFFF0000 | *v29;
                v340 = v340 & 0xFFFFFFFFFFFF0000 | v248 & 0xFF00 | v249;
                *v29 = PDAcolordodgePDA(v251, v250, v340, BYTE1(v248));
                goto LABEL_297;
              }

              v250 = v29[1];
              if (v29[1])
              {
                goto LABEL_296;
              }

              *v29 = v249;
              v29[1] = BYTE1(v248);
            }
          }

LABEL_297:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v243 += 2;
          if (!--v244)
          {
            goto LABEL_343;
          }
        }

      case 19:
        v356 = v41;
        v357 = v40;
        v274 = v46 + 1;
        v275 = v3;
        v75 = v35;
        while (1)
        {
          v276 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v277 = *v75 * v276 + ((*v75 * v276) >> 8) + 1;
              if (v277 < 0x100)
              {
                goto LABEL_342;
              }

              v276 = v277 >> 8;
            }

            v278 = v276;
            v279 = *v274 * v278 + ((*v274 * v278) >> 8) + 1;
            if (v279 >= 0x100)
            {
              v280 = (*(v274 - 1) * v278 + ((*(v274 - 1) * v278) >> 8) + 1) >> 8;
              if (!v361)
              {
                v281 = 255;
LABEL_341:
                v282 = *v29;
                v339 = v339 & 0xFFFFFFFFFFFF0000 | *v29;
                v338 = v338 & 0xFFFFFFFFFFFF0000 | v279 & 0xFF00 | v280;
                *v29 = PDAcolorburnPDA(v282, v281, v338, BYTE1(v279));
                goto LABEL_342;
              }

              v281 = v29[1];
              if (v29[1])
              {
                goto LABEL_341;
              }

              *v29 = v280;
              v29[1] = BYTE1(v279);
            }
          }

LABEL_342:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v274 += 2;
          if (!--v275)
          {
            goto LABEL_343;
          }
        }

      case 20:
        v356 = v41;
        v357 = v40;
        v202 = v46 + 1;
        v203 = v3;
        v75 = v35;
        while (1)
        {
          v204 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v205 = *v75 * v204 + ((*v75 * v204) >> 8) + 1;
              if (v205 < 0x100)
              {
                goto LABEL_238;
              }

              v204 = v205 >> 8;
            }

            v206 = v204;
            v207 = *v202 * v206 + ((*v202 * v206) >> 8) + 1;
            if (v207 >= 0x100)
            {
              v208 = (*(v202 - 1) * v206 + ((*(v202 - 1) * v206) >> 8) + 1) >> 8;
              if (!v361)
              {
                v209 = 255;
LABEL_237:
                v210 = *v29;
                v335 = v335 & 0xFFFFFFFFFFFF0000 | *v29;
                v334 = v334 & 0xFFFFFFFFFFFF0000 | v207 & 0xFF00 | v208;
                *v29 = PDAsoftlightPDA(v210, v209, v334, BYTE1(v207));
                goto LABEL_238;
              }

              v209 = v29[1];
              if (v29[1])
              {
                goto LABEL_237;
              }

              *v29 = v208;
              v29[1] = BYTE1(v207);
            }
          }

LABEL_238:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v202 += 2;
          if (!--v203)
          {
            goto LABEL_343;
          }
        }

      case 21:
        v356 = v41;
        v357 = v40;
        v218 = v46 + 1;
        v219 = v3;
        v75 = v35;
        while (1)
        {
          v220 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v221 = *v75 * v220 + ((*v75 * v220) >> 8) + 1;
              if (v221 < 0x100)
              {
                goto LABEL_259;
              }

              v220 = v221 >> 8;
            }

            v222 = v220;
            v223 = *v218 * v222 + ((*v218 * v222) >> 8) + 1;
            if (v223 >= 0x100)
            {
              v224 = (*(v218 - 1) * v222 + ((*(v218 - 1) * v222) >> 8) + 1) >> 8;
              if (!v361)
              {
                v225 = 255;
LABEL_258:
                v226 = *v29;
                v337 = v337 & 0xFFFFFFFFFFFF0000 | *v29;
                v336 = v336 & 0xFFFFFFFFFFFF0000 | v223 & 0xFF00 | v224;
                *v29 = PDAhardlightPDA(v226, v225, v336, BYTE1(v223));
                goto LABEL_259;
              }

              v225 = v29[1];
              if (v29[1])
              {
                goto LABEL_258;
              }

              *v29 = v224;
              v29[1] = BYTE1(v223);
            }
          }

LABEL_259:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v218 += 2;
          if (!--v219)
          {
            goto LABEL_343;
          }
        }

      case 22:
        v356 = v41;
        v357 = v40;
        v265 = v46 + 1;
        v266 = v3;
        v75 = v35;
        while (1)
        {
          v267 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v268 = *v75 * v267 + ((*v75 * v267) >> 8) + 1;
              if (v268 < 0x100)
              {
                goto LABEL_329;
              }

              v267 = v268 >> 8;
            }

            v269 = v267;
            v270 = *v265 * v269 + ((*v265 * v269) >> 8) + 1;
            if (v270 >= 0x100)
            {
              v271 = (*(v265 - 1) * v269 + ((*(v265 - 1) * v269) >> 8) + 1) >> 8;
              if (!v361)
              {
                v272 = 255;
LABEL_328:
                v273 = *v29;
                v333 = v333 & 0xFFFFFFFFFFFF0000 | *v29;
                v332 = v332 & 0xFFFFFFFFFFFF0000 | v270 & 0xFF00 | v271;
                *v29 = PDAdifferencePDA(v273, v272, v332, BYTE1(v270));
                goto LABEL_329;
              }

              v272 = v29[1];
              if (v29[1])
              {
                goto LABEL_328;
              }

              *v29 = v271;
              v29[1] = BYTE1(v270);
            }
          }

LABEL_329:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v265 += 2;
          if (!--v266)
          {
            goto LABEL_343;
          }
        }

      case 23:
        v283 = v46 + 1;
        v284 = v3;
        v85 = v35;
        while (1)
        {
          v285 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v286 = *v85 * v285 + ((*v85 * v285) >> 8) + 1;
              if (v286 < 0x100)
              {
                goto LABEL_357;
              }

              v285 = v286 >> 8;
            }

            v285 = v285;
            v287 = *v283 * v285 + ((*v283 * v285) >> 8) + 1;
            if (v287 >= 0x100)
            {
              v288 = (*(v283 - 1) * v285 + ((*(v283 - 1) * v285) >> 8) + 1) >> 8;
              v289 = v287 >> 8;
              if (v361)
              {
                v290 = v29[1];
                if (!v29[1])
                {
                  goto LABEL_356;
                }
              }

              else
              {
                v290 = 255;
              }

              v291 = 255 * (v288 + *v29) - 2 * v288 * *v29;
              v288 = (v291 + (v291 >> 8) + 1) >> 8;
              v289 = (255 * (v289 + v290) - v289 * v290 + ((255 * (v289 + v290) - v289 * v290) >> 8) + 1) >> 8;
LABEL_356:
              *v29 = v288;
              v29[1] = v289;
            }
          }

LABEL_357:
          ++v47;
          v85 += v35 != 0;
          v29 += 2;
          v283 += 2;
          if (!--v284)
          {
LABEL_358:
            v35 = &v85[v354];
LABEL_359:
            v29 += 2 * v355;
            goto LABEL_360;
          }
        }

      case 24:
        v356 = v41;
        v357 = v40;
        v138 = v46 + 1;
        v139 = v3;
        v75 = v35;
        while (1)
        {
          v140 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v141 = *v75 * v140 + ((*v75 * v140) >> 8) + 1;
              if (v141 < 0x100)
              {
                goto LABEL_154;
              }

              v140 = v141 >> 8;
            }

            v142 = v140;
            v143 = *v138 * v142 + ((*v138 * v142) >> 8) + 1;
            if (v143 >= 0x100)
            {
              v144 = (*(v138 - 1) * v142 + ((*(v138 - 1) * v142) >> 8) + 1) >> 8;
              if (!v361)
              {
                v145 = 255;
LABEL_153:
                v146 = *v29;
                v331 = v331 & 0xFFFFFFFFFFFF0000 | *v29;
                v330 = v330 & 0xFFFFFFFFFFFF0000 | v143 & 0xFF00 | v144;
                *v29 = PDAhuePDA(v146, v145, v330, BYTE1(v143));
                goto LABEL_154;
              }

              v145 = v29[1];
              if (v29[1])
              {
                goto LABEL_153;
              }

              *v29 = v144;
              v29[1] = BYTE1(v143);
            }
          }

LABEL_154:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v138 += 2;
          if (!--v139)
          {
            goto LABEL_343;
          }
        }

      case 25:
        v356 = v41;
        v357 = v40;
        v129 = v46 + 1;
        v130 = v3;
        v75 = v35;
        while (1)
        {
          v131 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v132 = *v75 * v131 + ((*v75 * v131) >> 8) + 1;
              if (v132 < 0x100)
              {
                goto LABEL_141;
              }

              v131 = v132 >> 8;
            }

            v133 = v131;
            v134 = *v129 * v133 + ((*v129 * v133) >> 8) + 1;
            if (v134 >= 0x100)
            {
              v135 = (*(v129 - 1) * v133 + ((*(v129 - 1) * v133) >> 8) + 1) >> 8;
              if (!v361)
              {
                v136 = 255;
LABEL_140:
                v137 = *v29;
                v329 = v329 & 0xFFFFFFFFFFFF0000 | *v29;
                v328 = v328 & 0xFFFFFFFFFFFF0000 | v134 & 0xFF00 | v135;
                *v29 = PDAhuePDA(v137, v136, v328, BYTE1(v134));
                goto LABEL_141;
              }

              v136 = v29[1];
              if (v29[1])
              {
                goto LABEL_140;
              }

              *v29 = v135;
              v29[1] = BYTE1(v134);
            }
          }

LABEL_141:
          ++v47;
          v75 += v35 != 0;
          v29 += 2;
          v129 += 2;
          if (!--v130)
          {
LABEL_343:
            v35 = &v75[v354];
LABEL_344:
            v41 = v356;
            v29 += 2 * v355;
            v37 = v353;
            v38 = v352;
            v40 = v357;
LABEL_360:
            v292 = v360;
            v152 = v359;
            goto LABEL_361;
          }
        }

      case 26:
        v356 = v41;
        v357 = v40;
        v294 = v46 + 1;
        v295 = v3;
        v64 = v35;
        while (1)
        {
          v296 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v297 = *v64 * v296 + ((*v64 * v296) >> 8) + 1;
              if (v297 < 0x100)
              {
                goto LABEL_375;
              }

              v296 = v297 >> 8;
            }

            v298 = v296;
            v299 = *v294 * v298 + ((*v294 * v298) >> 8) + 1;
            if (v299 >= 0x100)
            {
              v300 = (*(v294 - 1) * v298 + ((*(v294 - 1) * v298) >> 8) + 1) >> 8;
              if (!v361)
              {
                v301 = 255;
LABEL_374:
                v302 = *v29;
                v303 = *v29;
                v327 = v327 & 0xFFFFFFFFFFFF0000 | v299 & 0xFF00 | v300;
                v326 = v326 & 0xFFFFFFFFFFFF0000 | v302;
                *v29 = PDAhuePDA(v327, BYTE1(v299), v303, v301);
                goto LABEL_375;
              }

              v301 = v29[1];
              if (v29[1])
              {
                goto LABEL_374;
              }

              *v29 = v300;
              v29[1] = BYTE1(v299);
            }
          }

LABEL_375:
          ++v47;
          v64 += v35 != 0;
          v29 += 2;
          v294 += 2;
          if (!--v295)
          {
            goto LABEL_376;
          }
        }

      case 27:
        v356 = v41;
        v357 = v40;
        v63 = v46 + 1;
        v64 = v35;
        v65 = v3;
        while (1)
        {
          v66 = *v47;
          if (*v47)
          {
            if (v35)
            {
              v67 = *v64 * v66 + ((*v64 * v66) >> 8) + 1;
              if (v67 < 0x100)
              {
                goto LABEL_63;
              }

              v66 = v67 >> 8;
            }

            v68 = v66;
            v69 = *v63 * v68 + ((*v63 * v68) >> 8) + 1;
            if (v69 >= 0x100)
            {
              v70 = (*(v63 - 1) * v68 + ((*(v63 - 1) * v68) >> 8) + 1) >> 8;
              if (!v361)
              {
                v71 = 255;
LABEL_62:
                v72 = *v29;
                v325 = v325 & 0xFFFFFFFFFFFF0000 | *v29;
                v324 = v324 & 0xFFFFFFFFFFFF0000 | v69 & 0xFF00 | v70;
                *v29 = PDAhuePDA(v72, v71, v324, BYTE1(v69));
                goto LABEL_63;
              }

              v71 = v29[1];
              if (v29[1])
              {
                goto LABEL_62;
              }

              *v29 = v70;
              v29[1] = BYTE1(v69);
            }
          }

LABEL_63:
          ++v47;
          v64 += v35 != 0;
          v29 += 2;
          v63 += 2;
          if (!--v65)
          {
LABEL_376:
            v35 = &v64[v354];
            goto LABEL_344;
          }
        }

      default:
        goto LABEL_360;
    }
  }
}

unint64_t GRAYa8_mark_constmask(unint64_t result, int a2, int8x8_t a3)
{
  v5 = *(result + 136);
  if (v5)
  {
    v7 = *(result + 4);
    v6 = *(result + 8);
    v8 = *(result + 48);
    v9 = *(result + 88);
    a3.i8[0] = *v9;
    a3.i8[4] = v9[1];
    v10 = *(result + 28) >> 1;
    v11 = (*(result + 40) + 2 * v10 * *(result + 16) + 2 * *(result + 12));
    v12 = *(result + 124);
    v13 = v5 + *(result + 108) * v12 + *(result + 104);
    v14 = v12 - v7;
    result = v10 - v7;
    v227 = v14;
    v228 = result;
    switch(a2)
    {
      case 0:
        do
        {
          v15 = v7;
          do
          {
            v16 = *v13;
            if (*v13)
            {
              if (v16 == 255)
              {
                v11->i16[0] = 0;
              }

              else
              {
                v17 = v16 ^ 0xFF;
                v11->i8[0] = (v11->u8[0] * v17 + ((v11->u8[0] * v17) >> 8) + 1) >> 8;
                v11->i8[1] = (v11->u8[1] * v17 + ((v11->u8[1] * v17) >> 8) + 1) >> 8;
              }
            }

            ++v13;
            v11 = (v11 + 2);
            --v15;
          }

          while (v15);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 1:
        v121 = -1;
        v122 = v13 & 3;
        if ((v13 & 3) != 0)
        {
          v7 += v122;
          v121 = -1 << (8 * v122);
          v123 = v13 & 3;
          v13 &= 0xFFFFFFFFFFFFFFFCLL;
          v11 = (v11 - 2 * v123);
        }

        v124 = (v7 + v13) & 3;
        if (((v7 + v13) & 3) != 0)
        {
          v125 = 4 - v124;
          v122 += v125;
          v126 = 0xFFFFFFFF >> (8 * v125);
          if (v7 >= 4)
          {
            v124 = v126;
          }

          else
          {
            v124 = 0;
          }

          if (v7 >= 4)
          {
            v126 = -1;
          }

          v121 &= v126;
        }

        v127 = v14 - v122;
        v128 = result - v122;
        v129 = *v9;
        v130 = v9[1];
        do
        {
          v131 = *v13 & v121;
          v132 = v7 >> 2;
          result = v124;
          if (!v131)
          {
            goto LABEL_173;
          }

LABEL_171:
          if (v131 == -1)
          {
            v11->i8[0] = a3.i8[0];
            v11->i8[1] = a3.i8[4];
            v11->i8[2] = a3.i8[0];
            v11->i8[3] = a3.i8[4];
            v11->i8[4] = a3.i8[0];
            v11->i8[5] = a3.i8[4];
LABEL_191:
            v11->i8[6] = a3.i8[0];
            v11->i8[7] = a3.i8[4];
            goto LABEL_173;
          }

          while (1)
          {
            if (v131)
            {
              if (v131 == 255)
              {
                v11->i8[0] = a3.i8[0];
                v11->i8[1] = a3.i8[4];
              }

              else
              {
                v134 = v131 ^ 0xFF;
                v11->i8[0] = ((v134 * v11->u8[0] + ((v134 * v11->u8[0]) >> 8) + 1) >> 8) + ((v131 * v129 + ((v131 * v129) >> 8) + 1) >> 8);
                v11->i8[1] = ((v134 * v11->u8[1] + ((v134 * v11->u8[1]) >> 8) + 1) >> 8) + ((v131 * v130 + ((v131 * v130) >> 8) + 1) >> 8);
              }
            }

            if (BYTE1(v131))
            {
              if (BYTE1(v131) == 255)
              {
                v11->i8[2] = a3.i8[0];
                v11->i8[3] = a3.i8[4];
              }

              else
              {
                v135 = BYTE1(v131) ^ 0xFF;
                v11->i8[2] = ((v135 * v11->u8[2] + ((v135 * v11->u8[2]) >> 8) + 1) >> 8) + ((BYTE1(v131) * v129 + ((BYTE1(v131) * v129) >> 8) + 1) >> 8);
                v11->i8[3] = ((v135 * v11->u8[3] + ((v135 * v11->u8[3]) >> 8) + 1) >> 8) + ((BYTE1(v131) * v130 + ((BYTE1(v131) * v130) >> 8) + 1) >> 8);
              }
            }

            if (BYTE2(v131))
            {
              if (BYTE2(v131) == 255)
              {
                v11->i8[4] = a3.i8[0];
                v11->i8[5] = a3.i8[4];
              }

              else
              {
                v136 = BYTE2(v131) ^ 0xFF;
                v11->i8[4] = ((v136 * v11->u8[4] + ((v136 * v11->u8[4]) >> 8) + 1) >> 8) + ((BYTE2(v131) * v129 + ((BYTE2(v131) * v129) >> 8) + 1) >> 8);
                v11->i8[5] = ((v136 * v11->u8[5] + ((v136 * v11->u8[5]) >> 8) + 1) >> 8) + ((BYTE2(v131) * v130 + ((BYTE2(v131) * v130) >> 8) + 1) >> 8);
              }
            }

            v137 = HIBYTE(v131);
            if (v137 == 255)
            {
              goto LABEL_191;
            }

            if (v137)
            {
              v138 = v137 * v129 + ((v137 * v129) >> 8) + 1;
              v139 = v137 * v130 + ((v137 * v130) >> 8) + 1;
              v140 = v137 ^ 0xFF;
              v11->i8[6] = ((v140 * v11->u8[6] + ((v140 * v11->u8[6]) >> 8) + 1) >> 8) + BYTE1(v138);
              v11->i8[7] = ((v140 * v11->u8[7] + ((v140 * v11->u8[7]) >> 8) + 1) >> 8) + BYTE1(v139);
            }

LABEL_173:
            while (1)
            {
              v133 = v132;
              ++v11;
              --v132;
              v13 += 4;
              if (v133 < 2)
              {
                break;
              }

              v131 = *v13;
              if (*v13)
              {
                goto LABEL_171;
              }
            }

            if (!result)
            {
              break;
            }

            result = 0;
            v131 = *v13 & v124;
          }

          v13 += v127;
          v11 = (v11 + 2 * v128);
          v101 = __OFSUB__(v6--, 1);
        }

        while (!((v6 < 0) ^ v101 | (v6 == 0)));
        return result;
      case 2:
        v76 = vdup_lane_s8(a3, 4);
        *v77.i8 = vdup_lane_s8(a3, 0);
        v78 = -1;
        v79 = v13 & 3;
        if ((v13 & 3) != 0)
        {
          v7 += v79;
          v78 = -1 << (8 * v79);
          v80 = v13 & 3;
          v13 &= 0xFFFFFFFFFFFFFFFCLL;
          v11 = (v11 - 2 * v80);
        }

        v77.u64[1] = v76;
        v81 = (v7 + v13) & 3;
        if (((v7 + v13) & 3) != 0)
        {
          v82 = 4 - v81;
          v79 += v82;
          v83 = 0xFFFFFFFF >> (8 * v82);
          if (v7 >= 4)
          {
            v81 = 0xFFFFFFFF >> (8 * v82);
          }

          else
          {
            v81 = 0;
          }

          if (v7 >= 4)
          {
            v83 = -1;
          }

          v78 &= v83;
        }

        v84 = vqtbl1_s8(v77, 0xF060D040B020900);
        v85 = v14 - v79;
        v86 = a3.u8[0];
        v87 = a3.u8[4];
        v88 = vdupq_n_s16(~a3.i8[4]);
        v89 = result - v79;
        do
        {
          v90 = *v13 & v78;
          v91 = (v7 >> 2);
          v92 = v81;
          if (!v90)
          {
            goto LABEL_114;
          }

LABEL_112:
          if (v90 == -1)
          {
            v93 = vmovl_u8(*v11);
            v94 = vmull_u16(*v88.i8, *v93.i8);
            *v11 = vadd_s8(v84, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v94, v94, 8uLL)), 0x1000100010001), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmlal_high_u16(vshrq_n_u32(vmull_high_u16(v88, v93), 8uLL), v88, v93)), 0x1000100010001), 8uLL)));
            goto LABEL_114;
          }

          while (1)
          {
            if (v90)
            {
              v95 = v90 * v87 + ((v90 * v87) >> 8) + 1;
              v11->i8[0] = ((~(v95 >> 8) * v11->u8[0] + ((~(v95 >> 8) * v11->u8[0]) >> 8) + 1) >> 8) + ((v90 * v86 + ((v90 * v86) >> 8) + 1) >> 8);
              v11->i8[1] = ((~(v95 >> 8) * v11->u8[1] + ((~(v95 >> 8) * v11->u8[1]) >> 8) + 1) >> 8) + BYTE1(v95);
            }

            if ((v90 & 0xFF00) != 0)
            {
              v96 = BYTE1(v90) * v87 + ((BYTE1(v90) * v87) >> 8) + 1;
              v11->i8[2] = ((~(v96 >> 8) * v11->u8[2] + ((~(v96 >> 8) * v11->u8[2]) >> 8) + 1) >> 8) + ((BYTE1(v90) * v86 + ((BYTE1(v90) * v86) >> 8) + 1) >> 8);
              v11->i8[3] = ((~(v96 >> 8) * v11->u8[3] + ((~(v96 >> 8) * v11->u8[3]) >> 8) + 1) >> 8) + BYTE1(v96);
            }

            if ((v90 & 0xFF0000) != 0)
            {
              v97 = BYTE2(v90) * v87 + ((BYTE2(v90) * v87) >> 8) + 1;
              v11->i8[4] = ((~(v97 >> 8) * v11->u8[4] + ((~(v97 >> 8) * v11->u8[4]) >> 8) + 1) >> 8) + ((BYTE2(v90) * v86 + ((BYTE2(v90) * v86) >> 8) + 1) >> 8);
              v11->i8[5] = ((~(v97 >> 8) * v11->u8[5] + ((~(v97 >> 8) * v11->u8[5]) >> 8) + 1) >> 8) + BYTE1(v97);
            }

            v98 = HIBYTE(v90);
            if (v98)
            {
              v99 = v98 * v86 + ((v98 * v86) >> 8) + 1;
              v100 = v98 * v87 + ((v98 * v87) >> 8) + 1;
              v11->i8[6] = ((~(v100 >> 8) * v11->u8[6] + ((~(v100 >> 8) * v11->u8[6]) >> 8) + 1) >> 8) + BYTE1(v99);
              v11->i8[7] = ((~(v100 >> 8) * v11->u8[7] + ((~(v100 >> 8) * v11->u8[7]) >> 8) + 1) >> 8) + BYTE1(v100);
            }

LABEL_114:
            while (1)
            {
              result = v91;
              ++v11;
              v91 = (v91 - 1);
              v13 += 4;
              if (result < 2)
              {
                break;
              }

              v90 = *v13;
              if (*v13)
              {
                goto LABEL_112;
              }
            }

            if (!v92)
            {
              break;
            }

            v92 = 0;
            v90 = *v13 & v81;
          }

          v13 += v85;
          v11 = (v11 + 2 * v89);
          v101 = __OFSUB__(v6--, 1);
        }

        while (!((v6 < 0) ^ v101 | (v6 == 0)));
        return result;
      case 3:
        do
        {
          v109 = v7;
          do
          {
            v110 = *v13;
            if (*v13)
            {
              if (v110 == 255)
              {
                v111 = v11->u8[1];
                v112 = (v111 * a3.u8[0] + ((v111 * a3.u8[0]) >> 8) + 1) >> 8;
                v113 = (v111 * a3.u8[4] + ((v111 * a3.u8[4]) >> 8) + 1) >> 8;
                v11->i8[0] = v112;
              }

              else
              {
                v114 = v11->u8[1];
                v115 = (v114 * v110 + ((v114 * v110) >> 8) + 1) >> 8;
                v116 = v110 ^ 0xFF;
                v11->i8[0] = ((v115 * a3.u8[0] + ((v115 * a3.u8[0]) >> 8) + 1) >> 8) + ((v11->u8[0] * v116 + ((v11->u8[0] * v116) >> 8) + 1) >> 8);
                v113 = ((v115 * a3.u8[4] + ((v115 * a3.u8[4]) >> 8) + 1) >> 8) + ((v114 * v116 + ((v114 * v116) >> 8) + 1) >> 8);
              }

              v11->i8[1] = v113;
            }

            ++v13;
            v11 = (v11 + 2);
            --v109;
          }

          while (v109);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 4:
        do
        {
          v45 = v7;
          do
          {
            v46 = *v13;
            if (*v13)
            {
              if (v46 == 255)
              {
                v47 = v11->u8[1] ^ 0xFF;
                v48 = (v47 * a3.u8[0] + ((v47 * a3.u8[0]) >> 8) + 1) >> 8;
                v49 = (v47 * a3.u8[4] + ((v47 * a3.u8[4]) >> 8) + 1) >> 8;
                v11->i8[0] = v48;
              }

              else
              {
                v50 = v11->u8[1];
                v51 = ((v50 ^ 0xFF) * v46 + (((v50 ^ 0xFFu) * v46) >> 8) + 1) >> 8;
                v52 = v46 ^ 0xFF;
                v11->i8[0] = ((v51 * a3.u8[0] + ((v51 * a3.u8[0]) >> 8) + 1) >> 8) + ((v11->u8[0] * v52 + ((v11->u8[0] * v52) >> 8) + 1) >> 8);
                v49 = ((v51 * a3.u8[4] + ((v51 * a3.u8[4]) >> 8) + 1) >> 8) + ((v50 * v52 + ((v50 * v52) >> 8) + 1) >> 8);
              }

              v11->i8[1] = v49;
            }

            ++v13;
            v11 = (v11 + 2);
            --v45;
          }

          while (v45);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 5:
        do
        {
          v155 = v7;
          do
          {
            v156 = *v13;
            if (*v13)
            {
              v157 = v156 * a3.u8[0] + ((v156 * a3.u8[0]) >> 8) + 1;
              v158 = v156 * a3.u8[4] + ((v156 * a3.u8[4]) >> 8) + 1;
              v159 = v158 >> 8;
              v160 = v11->u8[1];
              v161 = BYTE1(v158) ^ 0xFF;
              v11->i8[0] = (BYTE1(v157) * v160 + v161 * v11->u8[0] + ((BYTE1(v157) * v160 + v161 * v11->u8[0]) >> 8) + 1) >> 8;
              v11->i8[1] = ((v161 + v159) * v160 + (((v161 + v159) * v160) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v155;
          }

          while (v155);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 6:
        do
        {
          v176 = v7;
          do
          {
            v177 = *v13;
            if (*v13)
            {
              v178 = v11->u8[1];
              if (v178 != 0xFF)
              {
                if (~v178 == 255)
                {
                  v179 = (v177 * a3.u8[4] + ((v177 * a3.u8[4]) >> 8) + 1) >> 8;
                  v11->i8[0] = (v177 * a3.u8[0] + ((v177 * a3.u8[0]) >> 8) + 1) >> 8;
                }

                else
                {
                  v180 = v177 * a3.u8[0] + ((v177 * a3.u8[0]) >> 8) + 1;
                  v181 = ~v178;
                  v11->i8[0] += (BYTE1(v180) * v181 + ((BYTE1(v180) * v181) >> 8) + 1) >> 8;
                  v182 = ((v177 * a3.u8[4] + ((v177 * a3.u8[4]) >> 8) + 1) >> 8) * v181;
                  v179 = v178 + ((v182 + (v182 >> 8) + 1) >> 8);
                }

                v11->i8[1] = v179;
              }
            }

            ++v13;
            v11 = (v11 + 2);
            --v176;
          }

          while (v176);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 7:
        do
        {
          v117 = v7;
          do
          {
            v118 = *v13;
            if (*v13)
            {
              if (v118 == 255)
              {
                v119 = v11->u8[0] * a3.u8[4];
                v120 = a3.u8[4];
              }

              else
              {
                v120 = (~v118 + ((v118 * a3.u8[4] + ((v118 * a3.u8[4]) >> 8) + 1) >> 8));
                v119 = v11->u8[0] * v120;
              }

              v11->i8[0] = (v119 + (v119 >> 8) + 1) >> 8;
              v11->i8[1] = (v120 * v11->u8[1] + ((v120 * v11->u8[1]) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v117;
          }

          while (v117);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 8:
        v195 = ~a3.i8[4];
        do
        {
          v196 = v7;
          do
          {
            v197 = *v13;
            if (*v13)
            {
              if (v197 == 255)
              {
                v11->i8[0] = (v11->u8[0] * v195 + ((v11->u8[0] * v195) >> 8) + 1) >> 8;
                v198 = v11 + 1;
                v199 = v11->u8[1] * v195;
              }

              else
              {
                v200 = ~((v197 * a3.u8[4] + ((v197 * a3.u8[4]) >> 8) + 1) >> 8);
                v11->i8[0] = (v200 * v11->u8[0] + ((v200 * v11->u8[0]) >> 8) + 1) >> 8;
                v198 = v11 + 1;
                v199 = v200 * v11->u8[1];
              }

              *v198 = (v199 + (v199 >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v196;
          }

          while (v196);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 9:
        do
        {
          v56 = v7;
          do
          {
            v57 = *v13;
            if (*v13)
            {
              v58 = v57 * a3.u8[0] + ((v57 * a3.u8[0]) >> 8) + 1;
              v59 = v57 * a3.u8[4] + ((v57 * a3.u8[4]) >> 8) + 1;
              v60 = v11->u8[1];
              v61 = (~v57 + BYTE1(v59));
              v11->i8[0] = (BYTE1(v58) * (v60 ^ 0xFF) + v11->u8[0] * v61 + ((BYTE1(v58) * (v60 ^ 0xFF) + v11->u8[0] * v61) >> 8) + 1) >> 8;
              v11->i8[1] = (BYTE1(v59) * (v60 ^ 0xFF) + v60 * v61 + ((BYTE1(v59) * (v60 ^ 0xFFu) + v60 * v61) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v56;
          }

          while (v56);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 10:
        do
        {
          v190 = v7;
          do
          {
            v191 = *v13;
            if (*v13)
            {
              v192 = v191 * a3.u8[0] + ((v191 * a3.u8[0]) >> 8) + 1;
              v193 = v11->u8[1];
              v194 = ((v191 * a3.u8[4] + ((v191 * a3.u8[4]) >> 8) + 1) >> 8);
              v11->i8[0] = (BYTE1(v192) * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v11->u8[0] + ((BYTE1(v192) * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v11->u8[0]) >> 8) + 1) >> 8;
              v11->i8[1] = (v194 * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v193 + ((v194 * (v193 ^ 0xFF) + (v194 ^ 0xFFu) * v193) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v190;
          }

          while (v190);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 11:
        do
        {
          v41 = v7;
          do
          {
            if (*v13)
            {
              if (v8)
              {
                v42 = v11->u8[1];
              }

              else
              {
                v42 = 255;
              }

              v43 = ((*v13 * (a3.i8[4] - a3.i8[0])) | ((*v13 * a3.i8[4]) << 16)) + (v42 - v11->i8[0]) + (v42 << 16);
              v44 = (255 * ((v43 >> 8) & 0x10001)) | v43;
              v11->i8[0] = BYTE2(v44) - v44;
              v11->i8[1] = BYTE2(v44);
            }

            ++v13;
            v11 = (v11 + 2);
            --v41;
          }

          while (v41);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 12:
        do
        {
          v53 = v7;
          do
          {
            if (*v13)
            {
              v54 = ((*v13 * a3.i8[0]) | ((*v13 * a3.i8[4]) << 16)) + v11->i16[0] + ((v11->u16[0] << 8) & 0xFF0000);
              v55 = (255 * ((v54 >> 8) & 0x10001)) | v54;
              v11->i8[0] = v55;
              v11->i8[1] = BYTE2(v55);
            }

            ++v13;
            v11 = (v11 + 2);
            --v53;
          }

          while (v53);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 13:
        v169 = a3.u8[0];
        v170 = v9[1];
        while (1)
        {
          v171 = v7;
          do
          {
            v172 = *v13;
            if (*v13)
            {
              v173 = v172 * v170 + ((v172 * v170) >> 8) + 1;
              if (v173 >= 0x100)
              {
                v174 = v172 * v169 + ((v172 * v169) >> 8) + 1;
                if (v8)
                {
                  v175 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v174);
                    v11->i8[1] = BYTE1(v173);
                    goto LABEL_248;
                  }
                }

                else
                {
                  v175 = 255;
                }

                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v3 = v3 & 0xFFFFFFFFFFFF0000 | v173 & 0xFF00 | BYTE1(v174);
                result = PDAmultiplyPDA(v4, v175, v3, BYTE1(v173));
                v11->i16[0] = result;
              }
            }

LABEL_248:
            ++v13;
            v11 = (v11 + 2);
            --v171;
          }

          while (v171);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 14:
        while (1)
        {
          v32 = v7;
          do
          {
            v33 = *v13;
            if (*v13)
            {
              v34 = v33 * a3.u8[4] + ((v33 * a3.u8[4]) >> 8) + 1;
              if (v34 >= 0x100)
              {
                v35 = v33 * a3.u8[0] + ((v33 * a3.u8[0]) >> 8) + 1;
                if (v8)
                {
                  v36 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v37 = v34 >> 8;
                    v38 = v35 >> 8;
LABEL_43:
                    v11->i8[0] = v38;
                    v11->i8[1] = v37;
                    goto LABEL_44;
                  }
                }

                else
                {
                  v36 = 255;
                }

                v39 = (v11->u8[0] ^ 0xFF) * BYTE1(v35) - v11->u8[0] + (v11->u8[0] << 8);
                v40 = 255 * (v36 + BYTE1(v34)) - BYTE1(v34) * v36;
                v38 = (v39 + (v39 >> 8) + 1) >> 8;
                v37 = (v40 + (v40 >> 8) + 1) >> 8;
                goto LABEL_43;
              }
            }

LABEL_44:
            ++v13;
            v11 = (v11 + 2);
            --v32;
          }

          while (v32);
          v13 += v14;
          v11 = (v11 + 2 * result);
          if (!--v6)
          {
            return result;
          }
        }

      case 15:
        v102 = a3.u8[0];
        v103 = v9[1];
        while (1)
        {
          v104 = v7;
          do
          {
            v105 = *v13;
            if (*v13)
            {
              v106 = v105 * v103 + ((v105 * v103) >> 8) + 1;
              if (v106 >= 0x100)
              {
                v107 = v105 * v102 + ((v105 * v102) >> 8) + 1;
                if (v8)
                {
                  v108 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v107);
                    v11->i8[1] = BYTE1(v106);
                    goto LABEL_139;
                  }
                }

                else
                {
                  v108 = 255;
                }

                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v3 = v3 & 0xFFFFFFFFFFFF0000 | v106 & 0xFF00 | BYTE1(v107);
                result = PDAoverlayPDA(v4, v108, v3, BYTE1(v106));
                v11->i16[0] = result;
              }
            }

LABEL_139:
            ++v13;
            v11 = (v11 + 2);
            --v104;
          }

          while (v104);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 16:
        v25 = a3.u8[0];
        v26 = v9[1];
        while (1)
        {
          v27 = v7;
          do
          {
            v28 = *v13;
            if (*v13)
            {
              v29 = v28 * v26 + ((v28 * v26) >> 8) + 1;
              if (v29 >= 0x100)
              {
                v30 = v28 * v25 + ((v28 * v25) >> 8) + 1;
                if (v8)
                {
                  v31 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v30);
                    v11->i8[1] = BYTE1(v29);
                    goto LABEL_32;
                  }
                }

                else
                {
                  v31 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v29 & 0xFF00 | BYTE1(v30);
                result = PDAdarkenPDA(v3, v31, v4, BYTE1(v29));
                v11->i16[0] = result;
              }
            }

LABEL_32:
            ++v13;
            v11 = (v11 + 2);
            --v27;
          }

          while (v27);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 17:
        v141 = a3.u8[0];
        v142 = v9[1];
        while (1)
        {
          v143 = v7;
          do
          {
            v144 = *v13;
            if (*v13)
            {
              v145 = v144 * v142 + ((v144 * v142) >> 8) + 1;
              if (v145 >= 0x100)
              {
                v146 = v144 * v141 + ((v144 * v141) >> 8) + 1;
                if (v8)
                {
                  v147 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v146);
                    v11->i8[1] = BYTE1(v145);
                    goto LABEL_206;
                  }
                }

                else
                {
                  v147 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v145 & 0xFF00 | BYTE1(v146);
                result = PDAlightenPDA(v3, v147, v4, BYTE1(v145));
                v11->i16[0] = result;
              }
            }

LABEL_206:
            ++v13;
            v11 = (v11 + 2);
            --v143;
          }

          while (v143);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 18:
        v183 = a3.u8[0];
        v184 = v9[1];
        while (1)
        {
          v185 = v7;
          do
          {
            v186 = *v13;
            if (*v13)
            {
              v187 = v186 * v184 + ((v186 * v184) >> 8) + 1;
              if (v187 >= 0x100)
              {
                v188 = v186 * v183 + ((v186 * v183) >> 8) + 1;
                if (v8)
                {
                  v189 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v188);
                    v11->i8[1] = BYTE1(v187);
                    goto LABEL_270;
                  }
                }

                else
                {
                  v189 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v187 & 0xFF00 | BYTE1(v188);
                result = PDAcolordodgePDA(v3, v189, v4, BYTE1(v187));
                v11->i16[0] = result;
              }
            }

LABEL_270:
            ++v13;
            v11 = (v11 + 2);
            --v185;
          }

          while (v185);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 19:
        v208 = *v9;
        v209 = v9[1];
        while (1)
        {
          v210 = v7;
          do
          {
            v211 = *v13 * v209;
            if (*v13)
            {
              v212 = (*v13 * v209) == 0;
            }

            else
            {
              v212 = 1;
            }

            if (!v212)
            {
              if (v8)
              {
                v213 = v11->u8[1];
                if (!v11->i8[1])
                {
                  v11->i8[0] = *v13 * v208;
                  v11->i8[1] = v211;
                  goto LABEL_312;
                }
              }

              else
              {
                v213 = 255;
              }

              v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
              v4 = (*v13 * v208) | ((*v13 * v209) << 8) | v4 & 0xFFFFFFFFFFFF0000;
              result = PDAcolorburnPDA(v3, v213, v4, (*v13 * v209));
              v11->i16[0] = result;
            }

LABEL_312:
            ++v13;
            v11 = (v11 + 2);
            --v210;
          }

          while (v210);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 20:
        v148 = a3.u8[0];
        v149 = v9[1];
        while (1)
        {
          v150 = v7;
          do
          {
            v151 = *v13;
            if (*v13)
            {
              v152 = v151 * v149 + ((v151 * v149) >> 8) + 1;
              if (v152 >= 0x100)
              {
                v153 = v151 * v148 + ((v151 * v148) >> 8) + 1;
                if (v8)
                {
                  v154 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v153);
                    v11->i8[1] = BYTE1(v152);
                    goto LABEL_218;
                  }
                }

                else
                {
                  v154 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v152 & 0xFF00 | BYTE1(v153);
                result = PDAsoftlightPDA(v3, v154, v4, BYTE1(v152));
                v11->i16[0] = result;
              }
            }

LABEL_218:
            ++v13;
            v11 = (v11 + 2);
            --v150;
          }

          while (v150);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 21:
        v162 = a3.u8[0];
        v163 = v9[1];
        while (1)
        {
          v164 = v7;
          do
          {
            v165 = *v13;
            if (*v13)
            {
              v166 = v165 * v163 + ((v165 * v163) >> 8) + 1;
              if (v166 >= 0x100)
              {
                v167 = v165 * v162 + ((v165 * v162) >> 8) + 1;
                if (v8)
                {
                  v168 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v167);
                    v11->i8[1] = BYTE1(v166);
                    goto LABEL_236;
                  }
                }

                else
                {
                  v168 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v166 & 0xFF00 | BYTE1(v167);
                result = PDAhardlightPDA(v3, v168, v4, BYTE1(v166));
                v11->i16[0] = result;
              }
            }

LABEL_236:
            ++v13;
            v11 = (v11 + 2);
            --v164;
          }

          while (v164);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 22:
        v201 = a3.u8[0];
        v202 = v9[1];
        while (1)
        {
          v203 = v7;
          do
          {
            v204 = *v13;
            if (*v13)
            {
              v205 = v204 * v202 + ((v204 * v202) >> 8) + 1;
              if (v205 >= 0x100)
              {
                v206 = v204 * v201 + ((v204 * v201) >> 8) + 1;
                if (v8)
                {
                  v207 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v206);
                    v11->i8[1] = BYTE1(v205);
                    goto LABEL_298;
                  }
                }

                else
                {
                  v207 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v205 & 0xFF00 | BYTE1(v206);
                result = PDAdifferencePDA(v3, v207, v4, BYTE1(v205));
                v11->i16[0] = result;
              }
            }

LABEL_298:
            ++v13;
            v11 = (v11 + 2);
            --v203;
          }

          while (v203);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 23:
        while (1)
        {
          v214 = v7;
          do
          {
            LOBYTE(v215) = *v13 * a3.i8[4];
            if (*v13)
            {
              v216 = (*v13 * a3.i8[4]) == 0;
            }

            else
            {
              v216 = 1;
            }

            if (!v216)
            {
              if (v8)
              {
                v217 = v11->u8[1];
                if (!v11->i8[1])
                {
                  v11->i8[0] = *v13 * a3.i8[0];
LABEL_325:
                  v11->i8[1] = v215;
                  goto LABEL_326;
                }
              }

              else
              {
                v217 = 255;
              }

              v218 = 255 * (v11->u8[0] + (*v13 * a3.i8[0])) - 2 * (*v13 * a3.i8[0]) * v11->u8[0];
              v219 = 255 * (v217 + (*v13 * a3.i8[4])) - v217 * (*v13 * a3.i8[4]);
              v215 = (v219 + (v219 >> 8) + 1) >> 8;
              v11->i8[0] = (v218 + (v218 >> 8) + 1) >> 8;
              goto LABEL_325;
            }

LABEL_326:
            ++v13;
            v11 = (v11 + 2);
            --v214;
          }

          while (v214);
          v13 += v14;
          v11 = (v11 + 2 * result);
          if (!--v6)
          {
            return result;
          }
        }

      case 24:
        v69 = a3.u8[0];
        v70 = v9[1];
        while (1)
        {
          v71 = v7;
          do
          {
            v72 = *v13;
            if (*v13)
            {
              v73 = v72 * v70 + ((v72 * v70) >> 8) + 1;
              if (v73 >= 0x100)
              {
                v74 = v72 * v69 + ((v72 * v69) >> 8) + 1;
                if (v8)
                {
                  v75 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v74);
                    v11->i8[1] = BYTE1(v73);
                    goto LABEL_98;
                  }
                }

                else
                {
                  v75 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v73 & 0xFF00 | BYTE1(v74);
                result = PDAhuePDA(v3, v75, v4, BYTE1(v73));
                v11->i16[0] = result;
              }
            }

LABEL_98:
            ++v13;
            v11 = (v11 + 2);
            --v71;
          }

          while (v71);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 25:
        v62 = a3.u8[0];
        v63 = v9[1];
        while (1)
        {
          v64 = v7;
          do
          {
            v65 = *v13;
            if (*v13)
            {
              v66 = v65 * v63 + ((v65 * v63) >> 8) + 1;
              if (v66 >= 0x100)
              {
                v67 = v65 * v62 + ((v65 * v62) >> 8) + 1;
                if (v8)
                {
                  v68 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v67);
                    v11->i8[1] = BYTE1(v66);
                    goto LABEL_86;
                  }
                }

                else
                {
                  v68 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v66 & 0xFF00 | BYTE1(v67);
                result = PDAhuePDA(v3, v68, v4, BYTE1(v66));
                v11->i16[0] = result;
              }
            }

LABEL_86:
            ++v13;
            v11 = (v11 + 2);
            --v64;
          }

          while (v64);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 26:
        v220 = a3.u8[0];
        v221 = v9[1];
        while (1)
        {
          v222 = v7;
          do
          {
            v223 = *v13;
            if (*v13)
            {
              v224 = v223 * v221 + ((v223 * v221) >> 8) + 1;
              if (v224 >= 0x100)
              {
                v225 = v223 * v220 + ((v223 * v220) >> 8) + 1;
                if (v8)
                {
                  v226 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v225);
                    v11->i8[1] = BYTE1(v224);
                    goto LABEL_338;
                  }
                }

                else
                {
                  v226 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v224 & 0xFF00 | BYTE1(v225);
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                result = PDAhuePDA(v3, BYTE1(v224), v4, v226);
                v11->i16[0] = result;
              }
            }

LABEL_338:
            ++v13;
            v11 = (v11 + 2);
            --v222;
          }

          while (v222);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 27:
        v18 = a3.u8[0];
        v19 = v9[1];
        break;
      default:
        return result;
    }

LABEL_12:
    v20 = v7;
    while (1)
    {
      v21 = *v13;
      if (!*v13)
      {
        goto LABEL_20;
      }

      v22 = v21 * v19 + ((v21 * v19) >> 8) + 1;
      if (v22 < 0x100)
      {
        goto LABEL_20;
      }

      v23 = v21 * v18 + ((v21 * v18) >> 8) + 1;
      if (!v8)
      {
        break;
      }

      v24 = v11->u8[1];
      if (v11->i8[1])
      {
        goto LABEL_19;
      }

      v11->i8[0] = BYTE1(v23);
      v11->i8[1] = BYTE1(v22);
LABEL_20:
      ++v13;
      v11 = (v11 + 2);
      if (!--v20)
      {
        v13 += v227;
        v11 = (v11 + 2 * v228);
        if (!--v6)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    v24 = 255;
LABEL_19:
    v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
    v4 = v4 & 0xFFFFFFFFFFFF0000 | v22 & 0xFF00 | BYTE1(v23);
    result = PDAhuePDA(v3, v24, v4, BYTE1(v22));
    v11->i16[0] = result;
    goto LABEL_20;
  }

  return result;
}

uint64_t GRAYA8_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v18, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *v6;
  v11 = *a3;
  v14 = v11;
  v15 = v10;
  if (v11 != 67637672)
  {
    v12 = SAMPLEINDEX(v11);
    if (v12)
    {
      v13 = GRAYa8_image_sample[v12 + 1];
      if (v13)
      {
        goto LABEL_18;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!v17 && (~v16 & 0xC3) == 0 && *(a3 + 8) >= 1.0 && !*(a3 + 24))
  {
    if ((v16 & 4) != 0)
    {
      *(a2 + 8) = *(a3 + 32);
    }

    GRAYA8_mark_inner(*(*a1 + 56));
    return 1;
  }

  v13 = GRAYA8_sample_W8_inner;
LABEL_18:
  GRAYa8_image_mark(a2, &v13, v8);
  return 1;
}

uint64_t GRAYA8_sample_GRAYA8(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 8);
  if (v4 >> 6 != 2)
  {
    _CGHandleAssert("GRAYA8_sample_GRAYA8_inner", 10201, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "skip == LAST_SKIP", "skip = %d", v4 >> 6);
  }

  if (((v4 >> 4) & 3) != 0)
  {
    _CGHandleAssert("GRAYA8_sample_GRAYA8_inner", 10202, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "reverse == NO_REVERSE", "reverse = %d", (v4 >> 4) & 3);
  }

  v5 = *(result + 24);
  v6 = *(result + 112);
  v7 = *(result + 48);
  v8 = *(result + 56);
  if (v7)
  {
    v131 = *(result + 112);
    if (v6 > v7)
    {
      v131 = v6 % v7;
    }
  }

  else
  {
    v131 = 0;
  }

  v9 = *(result + 176);
  v10 = *(result + 120);
  v11 = *(result + 32);
  if (v8)
  {
    v130 = *(result + 120);
    if (v10 > v8)
    {
      v130 = v10 % v8;
    }
  }

  else
  {
    v130 = 0;
  }

  v126 = *(result + 80);
  v127 = *(result + 64);
  v128 = *(result + 88);
  v129 = *(result + 72);
  v125 = *(result + 188);
  v12 = *(result + 152) - 2;
  v13 = *(result + 144) - 1;
  v14 = *(result + 40);
  v15 = v11 + (2 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 2;
  do
  {
    if (a3 >= v129)
    {
      v19 = a4;
      if (a3 <= v128)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v128;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_52;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v27 = v24 | v125;
        v28 = v22 - 0x1000000;
        v25 = a3 - (v22 - 0x1000000);
        v26 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v129 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      v19 = a4;
      if (v18 < 1)
      {
        goto LABEL_52;
      }

      if (v18 >= v16)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v18) >> 32;
      }

      v27 = v20 | v125;
      v28 = v17 + 0x1000000;
      v25 = a3 - (v17 + 0x1000000);
      v26 = 512;
    }

    if (a2 >= v127)
    {
      if (a2 <= v126)
      {
        v33 = 0;
        v34 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v35 = *(result + 192);
        v36 = *(result + 200) + v126;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_52;
        }

        if (v37 < v35)
        {
          v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v125;
        }

        v32 = v36 - 0x1000000;
        v33 = a2 - (v36 - 0x1000000);
        v34 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v127 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_52;
      }

      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v125;
      }

      v32 = v30 + 0x1000000;
      v33 = a2 - (v30 + 0x1000000);
      v34 = 32;
    }

    if (v27 >= 0x400000)
    {
      if (v7)
      {
        v38 = (v8 & ((v28 % v8) >> 63)) + v28 % v8;
        v39 = (v7 & ((v32 % v7) >> 63)) + v32 % v7;
        if (v38 >= v8)
        {
          v40 = v8;
        }

        else
        {
          v40 = 0;
        }

        v28 = v38 - v40;
        if (v39 >= v7)
        {
          v41 = v7;
        }

        else
        {
          v41 = 0;
        }

        v32 = v39 - v41;
        v25 += v28;
        v33 += v32;
      }

      v42 = v11 + SHIDWORD(v28) * v5 + 2 * (v32 >> 32);
      v43 = *(result + 32);
      if (v15 >= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v15;
      }

      if (v44 < v43)
      {
        v44 = *(result + 32);
      }

      if (v14)
      {
        v45 = v44[1];
      }

      else
      {
        v45 = 255;
      }

      v47 = *v44;
      if (!v9)
      {
        goto LABEL_58;
      }

      v48 = *(v9 + (v34 | v26));
      while (1)
      {
        v64 = v48 & 0xF;
        v65 = v48 >> 8;
        v66 = HIBYTE(v48) & 3;
        if (v64 == 1)
        {
          break;
        }

        if (v64 == 2)
        {
          v90 = SBYTE2(v48);
          if (v7)
          {
            v91 = v33 + (SBYTE2(v48) << 32);
            v92 = v7 & (v91 >> 63);
            if (v92 + v91 >= v7)
            {
              v93 = v7;
            }

            else
            {
              v93 = 0;
            }

            v90 = (v92 + ((HIWORD(v48) << 56) >> 24) - v93) >> 32;
          }

          v94 = (v42 + 2 * v90);
          if (v15 < v94)
          {
            v94 = v15;
          }

          if (v94 >= v43)
          {
            v95 = v94;
          }

          else
          {
            v95 = v43;
          }

          v96 = *v95;
          v97 = 255;
          if (v14)
          {
            v97 = v95[1];
          }

          v98 = (v48 >> 28) & 3;
          v99 = interpolate_graya[2 * v98 + 1];
          LOBYTE(v98) = v98 + 1;
          v100 = v47 - ((v99 & v47) >> v98);
          v101 = v45 - ((v99 & v45) >> v98);
          v102 = (v99 & v96) >> v98;
          v103 = (v99 & v97) >> v98;
LABEL_139:
          LOBYTE(v47) = v100 + v102;
          LOBYTE(v45) = v101 + v103;
          goto LABEL_58;
        }

        if (v64 == 3)
        {
          v124 = v19;
          LODWORD(v67) = SBYTE1(v48);
          v68 = SBYTE2(v48);
          if (v7)
          {
            v69 = v65 << 56;
            v70 = HIWORD(v48) << 56;
            v71 = v25 + (SBYTE1(v48) << 32);
            v72 = v33 + (v70 >> 24);
            v73 = v8 & (v71 >> 63);
            v74 = v7 & (v72 >> 63);
            v75 = v74 + v72;
            if (v73 + v71 >= v8)
            {
              v76 = v8;
            }

            else
            {
              v76 = 0;
            }

            if (v75 >= v7)
            {
              v77 = v7;
            }

            else
            {
              v77 = 0;
            }

            v78 = v73 + (v69 >> 24);
            v66 = HIBYTE(v48) & 3;
            v67 = (v78 - v76) >> 32;
            v68 = (v74 + (v70 >> 24) - v77) >> 32;
          }

          v79 = v67 * v5;
          v80 = 2 * v68;
          v81 = (v42 + 2 * v68);
          if (v15 < v81)
          {
            v81 = v15;
          }

          if (v81 >= v43)
          {
            v82 = v81;
          }

          else
          {
            v82 = v43;
          }

          v123 = *v82;
          if (v14)
          {
            v83 = v82[1];
            v84 = v42 + v79;
            if (v15 >= v84)
            {
              v85 = v84;
            }

            else
            {
              v85 = v15;
            }

            if (v85 >= v43)
            {
              v86 = v85;
            }

            else
            {
              v86 = v43;
            }

            v122 = v86[1];
            v87 = (v84 + v80);
            if (v15 < v87)
            {
              v87 = v15;
            }

            if (v87 >= v43)
            {
              v88 = v87;
            }

            else
            {
              v88 = v43;
            }

            v89 = v88[1];
          }

          else
          {
            v113 = v42 + v79;
            if (v15 >= v113)
            {
              v114 = v113;
            }

            else
            {
              v114 = v15;
            }

            if (v114 >= v43)
            {
              v86 = v114;
            }

            else
            {
              v86 = v43;
            }

            v115 = (v113 + v80);
            if (v15 < v115)
            {
              v115 = v15;
            }

            if (v115 >= v43)
            {
              v88 = v115;
            }

            else
            {
              v88 = v43;
            }

            v89 = 255;
            v122 = 255;
            v83 = 255;
          }

          v121 = v89;
          v116 = (v48 >> 28) & 3;
          v117 = interpolate_graya[2 * v66 + 1];
          v118 = v66 + 1;
          v119 = interpolate_graya[2 * v116 + 1];
          LOBYTE(v116) = v116 + 1;
          v47 = v47 - ((v117 & v47) >> v118) + ((v117 & *v86) >> v118) - (((v47 - ((v117 & v47) >> v118) + ((v117 & *v86) >> v118)) & v119) >> v116) + (((v123 - ((v117 & v123) >> v118) + ((v117 & *v88) >> v118)) & v119) >> v116);
          v120 = v45 - ((v117 & v45) >> v118) + ((v117 & v122) >> v118);
          v45 = v120 - ((v120 & v119) >> v116) + (((v83 - ((v117 & v83) >> v118) + ((v117 & v121) >> v118)) & v119) >> v116);
          v19 = v124;
        }

LABEL_58:
        *(v12 + 2) = v47;
        v12 += 2;
        *(v12 + 1) = v45;
        *(v13 + 1) = v27 >> 22;
        if (v19 == 1)
        {
          return result;
        }

        v49 = v19;
        v50 = 0;
        v51 = v19 - 1;
        a2 += v6;
        v52 = v126 - a2;
        a3 += v10;
        v53 = v128 - a3;
        while (1)
        {
          if ((((a2 - v127) | v52 | (a3 - v129) | v53) & 0x8000000000000000) != 0)
          {
            v13 += v50 + 1;
            v46 = ~v50 + v49;
            goto LABEL_53;
          }

          if (v7)
          {
            v54 = (v8 & ((v25 + v130) >> 63)) + v25 + v130;
            v55 = (v7 & ((v33 + v131) >> 63)) + v33 + v131;
            v56 = v54 >= v8 ? v8 : 0;
            v25 = v54 - v56;
            v57 = v55 >= v7 ? v7 : 0;
            v33 = v55 - v57;
            v58 = HIDWORD(v25);
            v59 = v55 - v57;
          }

          else
          {
            v58 = HIDWORD(a3);
            v59 = a2;
          }

          v60 = v11 + v58 * v5;
          v61 = v59 >> 32;
          v42 = v60 + 2 * v61;
          v43 = *(result + 32);
          if (v15 >= v42)
          {
            v62 = (v60 + 2 * v61);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v43)
          {
            v62 = *(result + 32);
          }

          v45 = v14 ? v62[1] : 255;
          v47 = *v62;
          if (v9)
          {
            v48 = *(v9 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
            if ((v48 & 0xF) != 0)
            {
              break;
            }
          }

          *(v12 + 2) = v47;
          v12 += 2;
          v63 = v13 + v50++;
          a2 += v6;
          *(v12 + 1) = v45;
          *(v63 + 2) = -1;
          v52 -= v6;
          a3 += v10;
          v53 -= v10;
          if (v51 == v50)
          {
            return result;
          }
        }

        v13 += v50 + 1;
        v19 = ~v50 + v49;
        v27 = -1;
      }

      LODWORD(v104) = SBYTE1(v48);
      if (v7)
      {
        v105 = v65 << 56;
        v106 = v25 + (v105 >> 24);
        v107 = v8 & (v106 >> 63);
        if (v107 + v106 >= v8)
        {
          v108 = v8;
        }

        else
        {
          v108 = 0;
        }

        v104 = (v107 + (v105 >> 24) - v108) >> 32;
      }

      v109 = (v42 + v104 * v5);
      if (v15 < v109)
      {
        v109 = v15;
      }

      if (v109 >= v43)
      {
        v110 = v109;
      }

      else
      {
        v110 = v43;
      }

      v111 = 255;
      if (v14)
      {
        v111 = v110[1];
      }

      v112 = interpolate_graya[2 * interpolate_graya[2 * v66 + 1] + 1];
      v100 = v47 - ((v112 & v47) >> (interpolate_graya[2 * v66 + 1] + 1));
      v101 = v45 - ((v112 & v45) >> (interpolate_graya[2 * v66 + 1] + 1));
      v102 = (v112 & *v110) >> (interpolate_graya[2 * v66 + 1] + 1);
      v103 = (v112 & v111) >> (interpolate_graya[2 * v66 + 1] + 1);
      goto LABEL_139;
    }

LABEL_52:
    v46 = v19 - 1;
    a2 += v6;
    a3 += v10;
    v12 += 2;
    *++v13 = 0;
LABEL_53:
    a4 = v46;
  }

  while (v46);
  return result;
}

int *shape_union(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 1)
  {
    return 0;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v6 = a3[1];
  if (v6 < 1)
  {
    return 0;
  }

  if (a2[v5] == 0x7FFFFFFF)
  {
    v7 = a3;
LABEL_11:

    return shape_copy(v7);
  }

  if (a3[v6] == 0x7FFFFFFF)
  {
    v7 = a2;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v47 = 0;
  v48 = 0;
  v12 = 512;
  v13 = v9;
  while (1)
  {
    v14 = v4;
    if (*v3 == 0x7FFFFFFF && *v4 == 0x7FFFFFFF)
    {
      break;
    }

    if (v10 - v13 + 4 <= v12)
    {
      v50 = v11;
    }

    else
    {
      v15 = 2 * v12;
      v16 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
      v17 = (v11 + v16 - v13);
      if (!v11)
      {
        v17 = 0;
      }

      if (v16 != v13)
      {
        v10 = (v10 + v16 - v13);
        v11 = v17;
      }

      v50 = v11;
      if (v16 != v13)
      {
        v13 = v16;
      }

      v12 = v15;
    }

    if (!v13)
    {
      return 0;
    }

    v18 = *v3;
    v19 = *v14;
    if (*v14 >= *v3)
    {
      if (v18 == 0x7FFFFFFF)
      {
        v20 = v3;
        v3 = v48;
      }

      else
      {
        *v10 = v18;
        v20 = &v3[v3[1]];
      }

      if (v18 < v19 || (v19 = *v14, *v14 == 0x7FFFFFFF))
      {
        v21 = v3;
        v3 = v20;
        v4 = v14;
        v14 = v47;
        goto LABEL_37;
      }
    }

    else
    {
      v20 = v3;
      v3 = v48;
    }

    *v10 = v19;
    v4 = &v14[v14[1]];
    v21 = v3;
    v3 = v20;
LABEL_37:
    v47 = v14;
    v48 = v21;
    v22 = v21 + 2;
    v23 = v14 + 2;
    v49 = v10 + 1;
    v10 += 2;
    v24 = v14 + 2 != v4;
    v25 = v21 + 2 != v3;
    if (v21 + 2 != v3 || v23 != v4)
    {
      v26 = 0;
      while (1)
      {
        if (v10 - v13 + 4 > v12)
        {
          v27 = 2 * v12;
          v28 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
          v29 = v28 - v13;
          if (v28 == v13)
          {
            v12 = v27;
          }

          else
          {
            v30 = (v50 + v29);
            if (!v50)
            {
              v30 = 0;
            }

            v50 = v30;
            if (!v28)
            {
              return 0;
            }

            v10 = (v10 + v29);
            v49 = (v49 + v29);
            v12 = v27;
            v13 = v28;
          }
        }

        v31 = *v22;
        v32 = *v23;
        v34 = *v22 <= *v23 || v23 == v4;
        if (v25 && v34)
        {
          v35 = v26 ^ 1;
          *v10 = v31;
          v36 = v22 + 1;
          v31 = *v22;
          v32 = *v23;
        }

        else
        {
          v35 = v26;
          v36 = v22;
        }

        v38 = v22 == v3 || v32 <= v31;
        if (v38 && v24)
        {
          v35 = v35 ^ 2;
          ++v23;
          *v10 = v32;
        }

        if (v26)
        {
          v39 = v35 == 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = v39;
        v10 += v40;
        v24 = v23 != v4;
        v22 = v36;
        v26 = v35;
        v25 = v36 != v3;
        if (v36 == v3)
        {
          v22 = v36;
          v26 = v35;
          if (v23 == v4)
          {
            break;
          }
        }
      }
    }

    v11 = v50;
    v41 = ((v10 - v49) >> 2) + 1;
    *v49 = v41;
    if (v50 && v41 == *v50)
    {
      if (((v10 - v49) >> 2) != 1)
      {
        v42 = v50 + 1;
        v43 = v49 + 1;
        while (v43 != v10)
        {
          v45 = *v42++;
          v44 = v45;
          v46 = *v43++;
          if (v44 != v46)
          {
            goto LABEL_79;
          }
        }
      }

      v10 = v49 - 1;
      v41 = (((v49 - 1) - v50) >> 2) + 1;
    }

    else
    {
LABEL_79:
      v11 = v49;
    }

    *v11 = v41;
  }

  *v10 = 0x7FFFFFFF;

  return final_check(v13, v12, v10 - v13 + 1);
}

int *final_check(int *result, uint64_t a2, uint64_t a3)
{
  if (result == &the_empty_shape)
  {
    return &the_empty_shape;
  }

  if (result[result[1]] == 0x7FFFFFFF)
  {
    if (result)
    {
      free(result);
    }

    return &the_empty_shape;
  }

  else if ((a2 - a3) >= 0x400)
  {

    return malloc_type_realloc(result, (4 * a3 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
  }

  return result;
}

uint64_t rip_auto_context_draw_glyphs(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v10 = *(v9 + 88);
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

void std::__hash_table<std::__hash_value_type<CGPDFFont *,unsigned long>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fe200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t dlRecorder_BeginLayer(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, CGFloat x, double a7, CGFloat a8, CGFloat a9)
{
  if (!a1 || (v9 = a1, (v10 = *(a1 + 288)) == 0))
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_BeginLayer");
    return 0;
  }

  v19 = CG::DisplayListRecorder::currentDisplayList(*(a1 + 288));
  if (!v19)
  {
    return 0;
  }

  v21 = v19;
  if (!a5 || *(v10 + 16) || CFArrayGetCount(*(v10 + 8)) > 1)
  {
    Bounds = CGClipStackGetBounds(*(a3 + 112), v20);
    y = v23;
    width = v24;
    height = v25;
    v30 = *(v21 + 40);
    v31 = *(v21 + 56);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v30, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v31, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v32 = *(v21 + 48);
      v33 = *(v21 + 64);
      v34 = Bounds;
      v62 = CGRectIntersection(*(&v23 - 1), *v30.f64);
      Bounds = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
    }

    v35 = *(*(a3 + 120) + 16);
    if (v35)
    {
      v36 = *(a2 + 40);
      *&v60.a = *(a2 + 24);
      *&v60.c = v36;
      *&v60.tx = *(a2 + 56);
      Bounds = CGStyleGetDrawBoundingBoxWithMatrix(v35, &v60, Bounds, y, width, height);
      y = v37;
      width = v38;
      height = v39;
    }

    if (a4 && CGCFDictionaryGetRect(a4, @"kCGContextBoundingBox", &v61))
    {
      v63.origin.x = x;
      v63.origin.y = a7;
      v63.size.width = a8;
      v63.size.height = a9;
      v64 = CGRectIntersection(v63, v61);
      x = v64.origin.x;
      a7 = v64.origin.y;
      a8 = v64.size.width;
      a9 = v64.size.height;
      v61 = v64;
    }

    else
    {
      v61.origin.x = x;
      v61.origin.y = a7;
      v61.size.width = a8;
      v61.size.height = a9;
    }

    if (x != -8.98846567e307 || a7 != -8.98846567e307 || a8 != 1.79769313e308 || a9 != 1.79769313e308)
    {
      v40 = *(a3 + 40);
      *&v60.a = *(a3 + 24);
      *&v60.c = v40;
      *&v60.tx = *(a3 + 56);
      v41 = x;
      *&v40 = a7;
      v42 = a8;
      v43 = a9;
      v65 = CGRectApplyAffineTransform(*(&v40 - 8), &v60);
      DrawBoundingBoxWithMatrix = v65.origin.x;
      v45 = v65.origin.y;
      v46 = v65.size.width;
      v47 = v65.size.height;
      v61 = v65;
      v48 = *(*(a3 + 120) + 16);
      if (v48)
      {
        v49 = *(a2 + 40);
        *&v60.a = *(a2 + 24);
        *&v60.c = v49;
        *&v60.tx = *(a2 + 56);
        DrawBoundingBoxWithMatrix = CGStyleGetDrawBoundingBoxWithMatrix(v48, &v60, v65.origin.x, v45, v65.size.width, v65.size.height);
        v45 = v50;
        v46 = v51;
        v47 = v52;
        v61.origin.x = DrawBoundingBoxWithMatrix;
        v61.origin.y = v50;
        v61.size.width = v51;
        v61.size.height = v52;
      }

      v66.origin.x = Bounds;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v67 = CGRectIntersection(v66, *&DrawBoundingBoxWithMatrix);
      Bounds = v67.origin.x;
      y = v67.origin.y;
      width = v67.size.width;
      height = v67.size.height;
    }

    v68.origin.x = Bounds;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v69 = CGRectIntegral(v68);
    v53 = v69.origin.x;
    v54 = v69.origin.y;
    v55 = v69.size.width;
    v56 = v69.size.height;
    v57 = CG::DisplayListRecorder::initializeGroupInfoDictionary(v21, a4);
    v60.a = v53;
    v60.b = v54;
    v60.c = v55;
    v60.d = v56;
    CGDisplayList = CG::DisplayList::createCGDisplayList(v57, &v60, v58);
    if (v57)
    {
      CFRelease(v57);
    }

    if (CGDisplayList)
    {
      CFArrayAppendValue(*(v10 + 8), CGDisplayList);
      CFRelease(CGDisplayList);
      return v9;
    }

    return 0;
  }

  CG::DisplayListResourceColor::setColor(v10, a5);
  return v9;
}

uint64_t CGContextDelegateBeginLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

__CFDictionary *CG::DisplayListRecorder::initializeGroupInfoDictionary(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = 0;
      v11[0] = @"trackGlyphs";
      v11[1] = @"decodeImages";
      v11[2] = @"clipRecordingToFrame";
      v11[3] = @"evaluateShadingsOnRecord";
      do
      {
        v7 = v11[v6];
        Value = CFDictionaryGetValue(v5, v7);
        if (Value)
        {
          CFDictionarySetValue(Mutable, v7, Value);
        }

        ++v6;
      }

      while (v6 != 4);
    }

    if (a2)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = ___ZN2CG19DisplayListRecorder29initializeGroupInfoDictionaryEP13CGDisplayListPK14__CFDictionary_block_invoke;
      context[3] = &__block_descriptor_tmp_4951;
      context[4] = Mutable;
      CFDictionaryApplyFunction(a2, call_dict_block, context);
      CFDictionaryRemoveValue(Mutable, @"kCGContextBoundingBox");
    }

    if (!CFDictionaryContainsKey(Mutable, @"kCGContextGroup") && !CFDictionaryContainsKey(Mutable, @"kCGContextColorSpace") && *MEMORY[0x1E695E4D0])
    {
      CFDictionarySetValue(Mutable, @"kCGContextGroup", *MEMORY[0x1E695E4D0]);
    }
  }

  return Mutable;
}

double *dlRecorder_EndLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v4 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_EndLayer");
    return 0;
  }

  result = CG::DisplayListRecorder::currentDisplayList(*(a1 + 288));
  if (!result)
  {
    return result;
  }

  v8 = result;
  CFRetain(result);
  if (CFArrayGetCount(*(v4 + 8)) >= 2)
  {
    Count = CFArrayGetCount(*(v4 + 8));
    if (Count)
    {
      CFArrayRemoveValueAtIndex(*(v4 + 8), Count - 1);
    }

    else
    {
      CGPostError("%s: displayListStack underflow", "void CG::DisplayListRecorder::popDisplayListStack()");
    }

    v10 = 0;
    goto LABEL_13;
  }

  v10 = *(v4 + 16);
  if (!v10)
  {
    return 0;
  }

  CFRelease(*(v4 + 16));
  *(v4 + 16) = 0;
LABEL_13:
  if (*(v8 + 86) != *(v8 + 87) && v8[11] != INFINITY && v8[12] != INFINITY)
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 40);
    v14 = *(a3 + 56);
    *(a3 + 24) = CGAffineTransformIdentity;
    if (v10)
    {
      CGDisplayListDelegateDrawDisplayList(v10, a2, a3, v8, *&CGAffineTransformIdentity.tx);
    }

    else
    {
      CG::DisplayListRecorder::DrawDisplayList(v4, a2, a3, v8);
    }

    *(a3 + 24) = v12;
    *(a3 + 40) = v13;
    *(a3 + 56) = v14;
  }

  CFRelease(v8);
  if (v10)
  {
    return v10;
  }

  else
  {
    return a1;
  }
}

uint64_t CGContextDelegateEndLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 200)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CG::DisplayListRecorder::DrawDisplayList(CFArrayRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v8)
  {
    return 1000;
  }

  v9 = v8;
  if (v8[5] == INFINITY || v8[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v9[7] != 0.0 && v9[8] != 0.0)
  {
    if (a4)
    {
      v12 = *(a4 + 32);
      v13 = *(a3 + 40);
      *&v44.a = *(a3 + 24);
      *&v44.c = v13;
      *&v44.tx = *(a3 + 56);
      if (*(v9 + 73))
      {
        p_size = &CGRectNull.size;
        v15 = (a4 + 88);
        p_y = (a4 + 96);
        if (*(a4 + 688) == *(a4 + 696))
        {
          p_y = &CGRectNull.origin.y;
        }

        else
        {
          p_size = (a4 + 104);
        }

        if (*(a4 + 688) == *(a4 + 696))
        {
          v15 = &CGRectNull;
          p_height = &CGRectNull.size.height;
        }

        else
        {
          p_height = (a4 + 112);
        }

        height = *p_height;
        x = v15->origin.x;
        y = *p_y;
        width = p_size->width;
        if (v12 && CGCFDictionaryGetRect(v12, @"kCGContextBoundingBox", &v42))
        {
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v46 = CGRectIntersection(v45, v42);
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
          v43.origin.x = v46.origin.x;
        }

LABEL_23:
        v41 = v44;
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        v48 = CGRectApplyAffineTransform(v47, &v41);
        v43 = v48;
        v43.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v43.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v48.origin);
        v43.origin.y = v23;
        v43.size.width = v24;
        v43.size.height = v25;
        if (v43.origin.x != INFINITY && v23 != INFINITY)
        {
          result = 0;
          if (v24 == 0.0 || v25 == 0.0)
          {
            return result;
          }

          goto LABEL_29;
        }

        return 0;
      }
    }

    else
    {
      v22 = *(a3 + 40);
      *&v44.a = *(a3 + 24);
      *&v44.c = v22;
      *&v44.tx = *(a3 + 56);
      if (*(v9 + 73) == 1)
      {
        v12 = 0;
        height = 0.0;
        y = INFINITY;
        width = 0.0;
        x = INFINITY;
        goto LABEL_23;
      }

      v12 = 0;
    }

LABEL_29:
    v26 = *(a4 + 688);
    v27 = *(a4 + 696);
    while (v26 != v27)
    {
      if (*(*v26 + 8) == 7 && (v28 = *(*v26 + 80)) != 0 && (v29 = *(v28 + 16)) != 0)
      {
        if (v29 == v9)
        {
          Image = CG::DisplayList::createImage((a4 + 16));
          if (!Image)
          {
            return 1000;
          }

          v40 = Image;
          CG::DisplayListRecorder::DrawImage(a1, a2, a3, Image, *(a4 + 40), *(a4 + 48), *(a4 + 56), *(a4 + 64));
          CFRelease(v40);
          return 0;
        }

        v26 = *(v29 + 688);
        v27 = *(v29 + 696);
      }

      else
      {
        v26 += 16;
      }
    }

    if (!CG::DisplayList::displayListResourceForDisplayList(v9 + 2, a4))
    {
      return 1000;
    }

    EntryDrawingState = CG::DisplayList::getEntryDrawingState(v9 + 2, a3, a2);
    v31 = EntryDrawingState[1];
    if (!v31)
    {
      return 1000;
    }

    v32 = *(v31 + 8);
    v33 = EntryDrawingState[2];
    if (v33)
    {
      v32 |= *(v33 + 8);
    }

    v34 = v32 & 0x1000;
    v35 = EntryDrawingState[3];
    if (v35)
    {
      v34 |= *(v35 + 8) & 0x3400;
    }

    v36 = *(a3 + 120);
    if (*(v36 + 8) >= 1.0)
    {
      if (a4)
      {
        v38 = *(a4 + 80) & 0x1000;
      }

      else
      {
        LOWORD(v38) = 0;
      }

      v37 = v38 | v34;
    }

    else
    {
      v37 = v34 | 0x1000;
    }

    if ((v37 & 0x1000) == 0 && (((*(v36 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
    {
      v37 |= 0x1000u;
    }

    if ((v37 & 0x1000) == 0 && v12 && (CFDictionaryContainsKey(v12, @"kCGContextGroup") || CFDictionaryContainsKey(v12, @"kCGContextColorSpace")))
    {
      v37 |= 0x1000u;
    }

    if ((v37 & 0x3000) != 0)
    {
      *(v9 + 20) |= v37 & 0x3000;
    }

    if (*(v9 + 74) == 1)
    {
      if ((v37 & 0x400) != 0)
      {
        CG::DisplayList::getEntryPatternState((v9 + 2), a3, a2);
      }

      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t CG::DisplayList::displayListResourceForDisplayList(int8x8_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*&a1[99];
  v18 = a1 + 64;
  CG::DisplayList::getHash((a2 + 16));
  v5 = a1[65];
  if (!*&v5)
  {
    goto LABEL_27;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v11 = *(*v18 + 8 * v9);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_27:
    CG::DisplayList::createCGDisplayList(a2, 0);
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v13 >= *&v5)
      {
        v13 %= *&v5;
      }
    }

    else
    {
      v13 &= *&v5 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_27;
    }

LABEL_26:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v14 = v12[2];
  v15 = v12[3];
  if (!v15)
  {
    v16 = *(v14 + 16);
    if (v16 == a2)
    {
      return v12[2];
    }

    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_23:
    isEqualTo = CG::DisplayList::isEqualTo((v16 + 16), (a2 + 16), 0);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
    }

    if (isEqualTo)
    {
      return v12[2];
    }

    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = *(v14 + 16);
  if (v16 != a2)
  {
    if (!v16)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  return v12[2];
}

void sub_183F30580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<CG::DisplayListResourceDisplayList>,void *>>>::operator()[abi:fe200100](1, v11);
  applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CG::DisplayList::createCGDisplayList(uint64_t a1, __CFDictionary *a2)
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  Instance = CGTypeCreateInstance(CGDisplayListGetTypeID::display_list2_type_id, 920);
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = &unk_1EF23F3D0;
    *(Instance + 24) = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRetain(*(a1 + 32));
    }

    *(v5 + 32) = v6;
    *(v5 + 40) = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 72);
    v9 = *(a1 + 88);
    *(v5 + 104) = *(a1 + 104);
    *(v5 + 88) = v9;
    *(v5 + 72) = v8;
    *(v5 + 56) = v7;
    *(v5 + 120) = *(a1 + 120);
    v10 = *(a1 + 128);
    *(v5 + 128) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 136);
    *(v5 + 152) = *(a1 + 152);
    *(v5 + 136) = v11;
    v12 = *(a1 + 168);
    v13 = *(a1 + 184);
    v14 = *(a1 + 200);
    *(v5 + 216) = *(a1 + 216);
    *(v5 + 200) = v14;
    *(v5 + 184) = v13;
    *(v5 + 168) = v12;
    v15 = *(a1 + 224);
    *(v5 + 248) = 0;
    *(v5 + 224) = v15;
    *(v5 + 232) = 0;
    *(v5 + 256) = 0;
    *(v5 + 240) = v5 + 248;
    v16 = *(a1 + 240);
    if (v16 != (a1 + 248))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>((v5 + 240), (v5 + 248), &v106, &v105, v16 + 4))
        {
          operator new();
        }

        v17 = v16[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v16[2];
            v71 = *v18 == v16;
            v16 = v18;
          }

          while (!v71);
        }

        v16 = v18;
      }

      while (v18 != (a1 + 248));
    }

    v103 = a2;
    *(v5 + 272) = 0;
    *(v5 + 280) = 0;
    *(v5 + 264) = v5 + 272;
    v19 = *(a1 + 264);
    if (v19 != (a1 + 272))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>((v5 + 264), (v5 + 272), &v106, &v105, (v19 + 4)))
        {
          operator new();
        }

        v20 = v19[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v71 = *v21 == v19;
            v19 = v21;
          }

          while (!v71);
        }

        v19 = v21;
      }

      while (v21 != (a1 + 272));
    }

    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
    *(v5 + 288) = v5 + 296;
    v22 = *(a1 + 288);
    if (v22 != (a1 + 296))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 288), (v5 + 296), &v106, &v105, v22 + 4))
        {
          operator new();
        }

        v23 = v22[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v71 = *v24 == v22;
            v22 = v24;
          }

          while (!v71);
        }

        v22 = v24;
      }

      while (v24 != (a1 + 296));
    }

    *(v5 + 320) = 0;
    *(v5 + 328) = 0;
    *(v5 + 312) = v5 + 320;
    v25 = *(a1 + 312);
    if (v25 != (a1 + 320))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceDash>,CG::CompareResourceDash,std::allocator<std::shared_ptr<CG::DisplayListResourceDash>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceDash>>((v5 + 312), (v5 + 320), &v106, &v105, v25 + 4))
        {
          operator new();
        }

        v26 = v25[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v25[2];
            v71 = *v27 == v25;
            v25 = v27;
          }

          while (!v71);
        }

        v25 = v27;
      }

      while (v27 != (a1 + 320));
    }

    *(v5 + 344) = 0;
    *(v5 + 352) = 0;
    *(v5 + 336) = v5 + 344;
    v28 = *(a1 + 336);
    if (v28 != (a1 + 344))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 336), (v5 + 344), &v106, &v105, v28 + 4))
        {
          operator new();
        }

        v29 = v28[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v28[2];
            v71 = *v30 == v28;
            v28 = v30;
          }

          while (!v71);
        }

        v28 = v30;
      }

      while (v30 != (a1 + 344));
    }

    *(v5 + 368) = 0;
    *(v5 + 376) = 0;
    *(v5 + 360) = v5 + 368;
    v31 = *(a1 + 360);
    if (v31 != (a1 + 368))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 360), (v5 + 368), &v106, &v105, v31 + 4))
        {
          operator new();
        }

        v32 = v31[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v31[2];
            v71 = *v33 == v31;
            v31 = v33;
          }

          while (!v71);
        }

        v31 = v33;
      }

      while (v33 != (a1 + 368));
    }

    *(v5 + 392) = 0;
    *(v5 + 400) = 0;
    *(v5 + 384) = v5 + 392;
    v34 = *(a1 + 384);
    if (v34 != (a1 + 392))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 384), (v5 + 392), &v106, &v105, v34 + 4))
        {
          operator new();
        }

        v35 = v34[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v34[2];
            v71 = *v36 == v34;
            v34 = v36;
          }

          while (!v71);
        }

        v34 = v36;
      }

      while (v36 != (a1 + 392));
    }

    *(v5 + 416) = 0;
    *(v5 + 424) = 0;
    *(v5 + 408) = v5 + 416;
    v37 = *(a1 + 408);
    if (v37 != (a1 + 416))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 408), (v5 + 416), &v106, &v105, v37 + 4))
        {
          operator new();
        }

        v38 = v37[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v37[2];
            v71 = *v39 == v37;
            v37 = v39;
          }

          while (!v71);
        }

        v37 = v39;
      }

      while (v39 != (a1 + 416));
    }

    *(v5 + 440) = 0;
    *(v5 + 448) = 0;
    *(v5 + 432) = v5 + 440;
    v40 = *(a1 + 432);
    if (v40 != (a1 + 440))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 432), (v5 + 440), &v106, &v105, v40 + 4))
        {
          operator new();
        }

        v41 = v40[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v40[2];
            v71 = *v42 == v40;
            v40 = v42;
          }

          while (!v71);
        }

        v40 = v42;
      }

      while (v42 != (a1 + 440));
    }

    *(v5 + 464) = 0;
    *(v5 + 472) = 0;
    *(v5 + 456) = v5 + 464;
    v43 = *(a1 + 456);
    if (v43 != (a1 + 464))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 456), (v5 + 464), &v106, &v105, v43 + 4))
        {
          operator new();
        }

        v44 = v43[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v43[2];
            v71 = *v45 == v43;
            v43 = v45;
          }

          while (!v71);
        }

        v43 = v45;
      }

      while (v45 != (a1 + 464));
    }

    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
    *(v5 + 480) = v5 + 488;
    v46 = *(a1 + 480);
    if (v46 != (a1 + 488))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 480), (v5 + 488), &v106, &v105, v46 + 4))
        {
          operator new();
        }

        v47 = v46[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v46[2];
            v71 = *v48 == v46;
            v46 = v48;
          }

          while (!v71);
        }

        v46 = v48;
      }

      while (v48 != (a1 + 488));
    }

    *(v5 + 512) = 0u;
    *(v5 + 504) = v5 + 512;
    v49 = *(a1 + 504);
    if (v49 != (a1 + 512))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 504), (v5 + 512), &v106, &v105, v49 + 4))
        {
          operator new();
        }

        v50 = v49[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v49[2];
            v71 = *v51 == v49;
            v49 = v51;
          }

          while (!v71);
        }

        v49 = v51;
      }

      while (v51 != (a1 + 512));
    }

    *(v5 + 528) = 0u;
    *(v5 + 544) = 0u;
    *(v5 + 560) = *(a1 + 560);
    std::__hash_table<std::__hash_value_type<CGPDFFont *,unsigned long>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,unsigned long>>>::__rehash<true>(v5 + 528, *(a1 + 536));
    v104 = a1;
    v52 = *(a1 + 544);
    if (v52)
    {
      while (1)
      {
        v53 = v52[2];
        v54 = v52[3];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v55 = *(v53 + 16);
        if (!v55)
        {
          break;
        }

        CG::DisplayList::getHash((v55 + 16));
        v57 = v56;
        if (v54)
        {
          goto LABEL_121;
        }

LABEL_122:
        v58 = *(v5 + 536);
        if (!*&v58)
        {
          goto LABEL_159;
        }

        v59 = vcnt_s8(v58);
        v59.i16[0] = vaddlv_u8(v59);
        v60 = v59.u32[0];
        if (v59.u32[0] > 1uLL)
        {
          v61 = v57;
          if (v57 >= *&v58)
          {
            v61 = v57 % *&v58;
          }
        }

        else
        {
          v61 = (*&v58 - 1) & v57;
        }

        v62 = *(*(v5 + 528) + 8 * v61);
        if (!v62 || (v63 = *v62) == 0)
        {
LABEL_159:
          operator new();
        }

        while (1)
        {
          v64 = v63[1];
          if (v64 == v57)
          {
            break;
          }

          if (v60 > 1)
          {
            if (v64 >= *&v58)
            {
              v64 %= *&v58;
            }
          }

          else
          {
            v64 &= *&v58 - 1;
          }

          if (v64 != v61)
          {
            goto LABEL_159;
          }

LABEL_155:
          v63 = *v63;
          if (!v63)
          {
            goto LABEL_159;
          }
        }

        v65 = v63[2];
        v66 = v63[3];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = v52[2];
        v68 = v52[3];
        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v69 = *(v65 + 16);
        v70 = *(v67 + 16);
        if (v69 == v70)
        {
          v72 = 1;
          if (!v68)
          {
            goto LABEL_152;
          }

LABEL_151:
          std::__shared_weak_count::__release_shared[abi:fe200100](v68);
          goto LABEL_152;
        }

        if (v69)
        {
          v71 = v70 == 0;
        }

        else
        {
          v71 = 1;
        }

        if (v71)
        {
          v72 = 0;
          if (v68)
          {
            goto LABEL_151;
          }
        }

        else
        {
          isEqualTo = CG::DisplayList::isEqualTo((v69 + 16), (v70 + 16), 0);
          v72 = isEqualTo;
          if (v68)
          {
            goto LABEL_151;
          }
        }

LABEL_152:
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v66);
        }

        if ((v72 & 1) == 0)
        {
          goto LABEL_155;
        }

        v52 = *v52;
        if (!v52)
        {
          goto LABEL_161;
        }
      }

      v57 = 0;
      if (!v54)
      {
        goto LABEL_122;
      }

LABEL_121:
      std::__shared_weak_count::__release_shared[abi:fe200100](v54);
      goto LABEL_122;
    }

LABEL_161:
    *(v5 + 576) = 0u;
    *(v5 + 568) = v5 + 576;
    v74 = *(v104 + 568);
    if (v74 != (v104 + 576))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v5 + 568), (v5 + 576), &v106, &v105, v74 + 4))
        {
          operator new();
        }

        v75 = v74[1];
        if (v75)
        {
          do
          {
            v76 = v75;
            v75 = *v75;
          }

          while (v75);
        }

        else
        {
          do
          {
            v76 = v74[2];
            v71 = *v76 == v74;
            v74 = v76;
          }

          while (!v71);
        }

        v74 = v76;
      }

      while (v76 != (v104 + 576));
    }

    *(v5 + 600) = 0u;
    *(v5 + 592) = v5 + 600;
    v77 = *(v104 + 592);
    if (v77 != (v104 + 600))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>((v5 + 592), (v5 + 600), &v106, &v105, v77 + 4))
        {
          operator new();
        }

        v78 = v77[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v77[2];
            v71 = *v79 == v77;
            v77 = v79;
          }

          while (!v71);
        }

        v77 = v79;
      }

      while (v79 != (v104 + 600));
    }

    *(v5 + 624) = 0u;
    *(v5 + 616) = v5 + 624;
    v80 = *(v104 + 616);
    if (v80 != (v104 + 624))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>((v5 + 616), (v5 + 624), &v106, &v105, v80 + 4))
        {
          operator new();
        }

        v81 = v80[1];
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = *v81;
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = v80[2];
            v71 = *v82 == v80;
            v80 = v82;
          }

          while (!v71);
        }

        v80 = v82;
      }

      while (v82 != (v104 + 624));
    }

    *(v5 + 648) = 0u;
    *(v5 + 640) = v5 + 648;
    v83 = *(v104 + 640);
    if (v83 != (v104 + 648))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>((v5 + 640), (v5 + 648), &v106, &v105, v83 + 4))
        {
          operator new();
        }

        v84 = v83[1];
        if (v84)
        {
          do
          {
            v85 = v84;
            v84 = *v84;
          }

          while (v84);
        }

        else
        {
          do
          {
            v85 = v83[2];
            v71 = *v85 == v83;
            v83 = v85;
          }

          while (!v71);
        }

        v83 = v85;
      }

      while (v85 != (v104 + 648));
    }

    *(v5 + 672) = 0u;
    *(v5 + 664) = v5 + 672;
    v86 = *(v104 + 664);
    if (v86 != (v104 + 672))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStatePattern const>,CG::CompareEntryStatePattern,std::allocator<std::shared_ptr<CG::DisplayListEntryStatePattern const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStatePattern const>>((v5 + 664), (v5 + 672), &v106, &v105, v86 + 4))
        {
          operator new();
        }

        v87 = v86[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v86[2];
            v71 = *v88 == v86;
            v86 = v88;
          }

          while (!v71);
        }

        v86 = v88;
      }

      while (v88 != (v104 + 672));
    }

    *(v5 + 704) = 0;
    *(v5 + 688) = 0u;
    v89 = *(v104 + 688);
    v90 = *(v104 + 696);
    v106 = v5 + 688;
    v107 = 0;
    v91 = v90 - v89;
    if (v90 != v89)
    {
      if (!((v91 >> 4) >> 60))
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(v91 >> 4);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v92 = *(v104 + 728);
    *(v5 + 712) = *(v104 + 712);
    *(v5 + 728) = v92;
    v93 = *(v104 + 744);
    v94 = *(v104 + 760);
    v95 = *(v104 + 792);
    *(v5 + 776) = *(v104 + 776);
    *(v5 + 792) = v95;
    *(v5 + 744) = v93;
    *(v5 + 760) = v94;
    v96 = *(v104 + 808);
    v97 = *(v104 + 824);
    v98 = *(v104 + 856);
    *(v5 + 840) = *(v104 + 840);
    *(v5 + 856) = v98;
    *(v5 + 808) = v96;
    *(v5 + 824) = v97;
    v99 = *(v104 + 872);
    v100 = *(v104 + 888);
    v101 = *(v104 + 920);
    *(v5 + 904) = *(v104 + 904);
    *(v5 + 920) = v101;
    *(v5 + 872) = v99;
    *(v5 + 888) = v100;
    *(v5 + 24) = v5;
    if (v103)
    {
      CG::DisplayList::setAuxInfo((v5 + 16), v103);
    }
  }

  return v5;
}